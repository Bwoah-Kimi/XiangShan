module SQData8Module(
  input         clock,
  input  [3:0]  io_raddr_0,
  input  [3:0]  io_raddr_1,
  output        io_rdata_0_valid,
  output [7:0]  io_rdata_0_data,
  output        io_rdata_1_valid,
  output [7:0]  io_rdata_1_data,
  input         io_data_wen_0,
  input         io_data_wen_1,
  input  [3:0]  io_data_waddr_0,
  input  [3:0]  io_data_waddr_1,
  input  [7:0]  io_data_wdata_0,
  input  [7:0]  io_data_wdata_1,
  input         io_mask_wen_0,
  input         io_mask_wen_1,
  input  [3:0]  io_mask_waddr_0,
  input  [3:0]  io_mask_waddr_1,
  input         io_mask_wdata_0,
  input         io_mask_wdata_1,
  input  [11:0] io_needForward_0_0,
  input  [11:0] io_needForward_0_1,
  input  [11:0] io_needForward_1_0,
  input  [11:0] io_needForward_1_1,
  output        io_forwardValid_0,
  output        io_forwardValid_1,
  output [7:0]  io_forwardData_0,
  output [7:0]  io_forwardData_1
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
`endif // RANDOMIZE_REG_INIT
  reg  data_0_valid; // @[StoreQueueData.scala 130:17]
  reg [7:0] data_0_data; // @[StoreQueueData.scala 130:17]
  reg  data_1_valid; // @[StoreQueueData.scala 130:17]
  reg [7:0] data_1_data; // @[StoreQueueData.scala 130:17]
  reg  data_2_valid; // @[StoreQueueData.scala 130:17]
  reg [7:0] data_2_data; // @[StoreQueueData.scala 130:17]
  reg  data_3_valid; // @[StoreQueueData.scala 130:17]
  reg [7:0] data_3_data; // @[StoreQueueData.scala 130:17]
  reg  data_4_valid; // @[StoreQueueData.scala 130:17]
  reg [7:0] data_4_data; // @[StoreQueueData.scala 130:17]
  reg  data_5_valid; // @[StoreQueueData.scala 130:17]
  reg [7:0] data_5_data; // @[StoreQueueData.scala 130:17]
  reg  data_6_valid; // @[StoreQueueData.scala 130:17]
  reg [7:0] data_6_data; // @[StoreQueueData.scala 130:17]
  reg  data_7_valid; // @[StoreQueueData.scala 130:17]
  reg [7:0] data_7_data; // @[StoreQueueData.scala 130:17]
  reg  data_8_valid; // @[StoreQueueData.scala 130:17]
  reg [7:0] data_8_data; // @[StoreQueueData.scala 130:17]
  reg  data_9_valid; // @[StoreQueueData.scala 130:17]
  reg [7:0] data_9_data; // @[StoreQueueData.scala 130:17]
  reg  data_10_valid; // @[StoreQueueData.scala 130:17]
  reg [7:0] data_10_data; // @[StoreQueueData.scala 130:17]
  reg  data_11_valid; // @[StoreQueueData.scala 130:17]
  reg [7:0] data_11_data; // @[StoreQueueData.scala 130:17]
  wire  data_s0_wen_0_bank_0 = io_data_wen_0 & io_data_waddr_0[1:0] == 2'h0; // @[StoreQueueData.scala 149:35]
  reg  data_s1_wen_0_bank_0; // @[StoreQueueData.scala 150:27]
  reg [7:0] data_s1_wdata_0_bank_0; // @[Reg.scala 16:16]
  reg [1:0] data_s1_waddr_0_bank_0; // @[Reg.scala 16:16]
  wire  data_s0_wen_0_bank_1 = io_data_wen_0 & io_data_waddr_0[1:0] == 2'h1; // @[StoreQueueData.scala 149:35]
  reg  data_s1_wen_0_bank_1; // @[StoreQueueData.scala 150:27]
  reg [7:0] data_s1_wdata_0_bank_1; // @[Reg.scala 16:16]
  reg [1:0] data_s1_waddr_0_bank_1; // @[Reg.scala 16:16]
  wire  data_s0_wen_0_bank_2 = io_data_wen_0 & io_data_waddr_0[1:0] == 2'h2; // @[StoreQueueData.scala 149:35]
  reg  data_s1_wen_0_bank_2; // @[StoreQueueData.scala 150:27]
  reg [7:0] data_s1_wdata_0_bank_2; // @[Reg.scala 16:16]
  reg [1:0] data_s1_waddr_0_bank_2; // @[Reg.scala 16:16]
  wire  data_s0_wen_0_bank_3 = io_data_wen_0 & io_data_waddr_0[1:0] == 2'h3; // @[StoreQueueData.scala 149:35]
  reg  data_s1_wen_0_bank_3; // @[StoreQueueData.scala 150:27]
  reg [7:0] data_s1_wdata_0_bank_3; // @[Reg.scala 16:16]
  reg [1:0] data_s1_waddr_0_bank_3; // @[Reg.scala 16:16]
  wire  data_s0_wen_1_bank_0 = io_data_wen_1 & io_data_waddr_1[1:0] == 2'h0; // @[StoreQueueData.scala 149:35]
  reg  data_s1_wen_1_bank_0; // @[StoreQueueData.scala 150:27]
  reg [7:0] data_s1_wdata_1_bank_0; // @[Reg.scala 16:16]
  reg [1:0] data_s1_waddr_1_bank_0; // @[Reg.scala 16:16]
  wire  data_s0_wen_1_bank_1 = io_data_wen_1 & io_data_waddr_1[1:0] == 2'h1; // @[StoreQueueData.scala 149:35]
  reg  data_s1_wen_1_bank_1; // @[StoreQueueData.scala 150:27]
  reg [7:0] data_s1_wdata_1_bank_1; // @[Reg.scala 16:16]
  reg [1:0] data_s1_waddr_1_bank_1; // @[Reg.scala 16:16]
  wire  data_s0_wen_1_bank_2 = io_data_wen_1 & io_data_waddr_1[1:0] == 2'h2; // @[StoreQueueData.scala 149:35]
  reg  data_s1_wen_1_bank_2; // @[StoreQueueData.scala 150:27]
  reg [7:0] data_s1_wdata_1_bank_2; // @[Reg.scala 16:16]
  reg [1:0] data_s1_waddr_1_bank_2; // @[Reg.scala 16:16]
  wire  data_s0_wen_1_bank_3 = io_data_wen_1 & io_data_waddr_1[1:0] == 2'h3; // @[StoreQueueData.scala 149:35]
  reg  data_s1_wen_1_bank_3; // @[StoreQueueData.scala 150:27]
  reg [7:0] data_s1_wdata_1_bank_3; // @[Reg.scala 16:16]
  reg [1:0] data_s1_waddr_1_bank_3; // @[Reg.scala 16:16]
  wire  mask_s0_wen_0_bank_0 = io_mask_wen_0 & io_mask_waddr_0[1:0] == 2'h0; // @[StoreQueueData.scala 173:35]
  reg  mask_s1_wen_0_bank_0; // @[StoreQueueData.scala 174:27]
  reg  mask_s1_wdata_0_bank_0; // @[Reg.scala 16:16]
  reg [1:0] mask_s1_waddr_0_bank_0; // @[Reg.scala 16:16]
  wire  mask_s0_wen_0_bank_1 = io_mask_wen_0 & io_mask_waddr_0[1:0] == 2'h1; // @[StoreQueueData.scala 173:35]
  reg  mask_s1_wen_0_bank_1; // @[StoreQueueData.scala 174:27]
  reg  mask_s1_wdata_0_bank_1; // @[Reg.scala 16:16]
  reg [1:0] mask_s1_waddr_0_bank_1; // @[Reg.scala 16:16]
  wire  mask_s0_wen_0_bank_2 = io_mask_wen_0 & io_mask_waddr_0[1:0] == 2'h2; // @[StoreQueueData.scala 173:35]
  reg  mask_s1_wen_0_bank_2; // @[StoreQueueData.scala 174:27]
  reg  mask_s1_wdata_0_bank_2; // @[Reg.scala 16:16]
  reg [1:0] mask_s1_waddr_0_bank_2; // @[Reg.scala 16:16]
  wire  mask_s0_wen_0_bank_3 = io_mask_wen_0 & io_mask_waddr_0[1:0] == 2'h3; // @[StoreQueueData.scala 173:35]
  reg  mask_s1_wen_0_bank_3; // @[StoreQueueData.scala 174:27]
  reg  mask_s1_wdata_0_bank_3; // @[Reg.scala 16:16]
  reg [1:0] mask_s1_waddr_0_bank_3; // @[Reg.scala 16:16]
  wire  mask_s0_wen_1_bank_0 = io_mask_wen_1 & io_mask_waddr_1[1:0] == 2'h0; // @[StoreQueueData.scala 173:35]
  reg  mask_s1_wen_1_bank_0; // @[StoreQueueData.scala 174:27]
  reg  mask_s1_wdata_1_bank_0; // @[Reg.scala 16:16]
  reg [1:0] mask_s1_waddr_1_bank_0; // @[Reg.scala 16:16]
  wire  mask_s0_wen_1_bank_1 = io_mask_wen_1 & io_mask_waddr_1[1:0] == 2'h1; // @[StoreQueueData.scala 173:35]
  reg  mask_s1_wen_1_bank_1; // @[StoreQueueData.scala 174:27]
  reg  mask_s1_wdata_1_bank_1; // @[Reg.scala 16:16]
  reg [1:0] mask_s1_waddr_1_bank_1; // @[Reg.scala 16:16]
  wire  mask_s0_wen_1_bank_2 = io_mask_wen_1 & io_mask_waddr_1[1:0] == 2'h2; // @[StoreQueueData.scala 173:35]
  reg  mask_s1_wen_1_bank_2; // @[StoreQueueData.scala 174:27]
  reg  mask_s1_wdata_1_bank_2; // @[Reg.scala 16:16]
  reg [1:0] mask_s1_waddr_1_bank_2; // @[Reg.scala 16:16]
  wire  mask_s0_wen_1_bank_3 = io_mask_wen_1 & io_mask_waddr_1[1:0] == 2'h3; // @[StoreQueueData.scala 173:35]
  reg  mask_s1_wen_1_bank_3; // @[StoreQueueData.scala 174:27]
  reg  mask_s1_wdata_1_bank_3; // @[Reg.scala 16:16]
  reg [1:0] mask_s1_waddr_1_bank_3; // @[Reg.scala 16:16]
  reg [3:0] io_rdata_0_REG; // @[StoreQueueData.scala 192:34]
  wire  _GEN_81 = 4'h1 == io_rdata_0_REG ? data_1_valid : data_0_valid; // @[StoreQueueData.scala 192:{19,19}]
  wire  _GEN_82 = 4'h2 == io_rdata_0_REG ? data_2_valid : _GEN_81; // @[StoreQueueData.scala 192:{19,19}]
  wire  _GEN_83 = 4'h3 == io_rdata_0_REG ? data_3_valid : _GEN_82; // @[StoreQueueData.scala 192:{19,19}]
  wire  _GEN_84 = 4'h4 == io_rdata_0_REG ? data_4_valid : _GEN_83; // @[StoreQueueData.scala 192:{19,19}]
  wire  _GEN_85 = 4'h5 == io_rdata_0_REG ? data_5_valid : _GEN_84; // @[StoreQueueData.scala 192:{19,19}]
  wire  _GEN_86 = 4'h6 == io_rdata_0_REG ? data_6_valid : _GEN_85; // @[StoreQueueData.scala 192:{19,19}]
  wire  _GEN_87 = 4'h7 == io_rdata_0_REG ? data_7_valid : _GEN_86; // @[StoreQueueData.scala 192:{19,19}]
  wire  _GEN_88 = 4'h8 == io_rdata_0_REG ? data_8_valid : _GEN_87; // @[StoreQueueData.scala 192:{19,19}]
  wire  _GEN_89 = 4'h9 == io_rdata_0_REG ? data_9_valid : _GEN_88; // @[StoreQueueData.scala 192:{19,19}]
  wire  _GEN_90 = 4'ha == io_rdata_0_REG ? data_10_valid : _GEN_89; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_93 = 4'h1 == io_rdata_0_REG ? data_1_data : data_0_data; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_94 = 4'h2 == io_rdata_0_REG ? data_2_data : _GEN_93; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_95 = 4'h3 == io_rdata_0_REG ? data_3_data : _GEN_94; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_96 = 4'h4 == io_rdata_0_REG ? data_4_data : _GEN_95; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_97 = 4'h5 == io_rdata_0_REG ? data_5_data : _GEN_96; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_98 = 4'h6 == io_rdata_0_REG ? data_6_data : _GEN_97; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_99 = 4'h7 == io_rdata_0_REG ? data_7_data : _GEN_98; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_100 = 4'h8 == io_rdata_0_REG ? data_8_data : _GEN_99; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_101 = 4'h9 == io_rdata_0_REG ? data_9_data : _GEN_100; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_102 = 4'ha == io_rdata_0_REG ? data_10_data : _GEN_101; // @[StoreQueueData.scala 192:{19,19}]
  reg [3:0] io_rdata_1_REG; // @[StoreQueueData.scala 192:34]
  wire  _GEN_105 = 4'h1 == io_rdata_1_REG ? data_1_valid : data_0_valid; // @[StoreQueueData.scala 192:{19,19}]
  wire  _GEN_106 = 4'h2 == io_rdata_1_REG ? data_2_valid : _GEN_105; // @[StoreQueueData.scala 192:{19,19}]
  wire  _GEN_107 = 4'h3 == io_rdata_1_REG ? data_3_valid : _GEN_106; // @[StoreQueueData.scala 192:{19,19}]
  wire  _GEN_108 = 4'h4 == io_rdata_1_REG ? data_4_valid : _GEN_107; // @[StoreQueueData.scala 192:{19,19}]
  wire  _GEN_109 = 4'h5 == io_rdata_1_REG ? data_5_valid : _GEN_108; // @[StoreQueueData.scala 192:{19,19}]
  wire  _GEN_110 = 4'h6 == io_rdata_1_REG ? data_6_valid : _GEN_109; // @[StoreQueueData.scala 192:{19,19}]
  wire  _GEN_111 = 4'h7 == io_rdata_1_REG ? data_7_valid : _GEN_110; // @[StoreQueueData.scala 192:{19,19}]
  wire  _GEN_112 = 4'h8 == io_rdata_1_REG ? data_8_valid : _GEN_111; // @[StoreQueueData.scala 192:{19,19}]
  wire  _GEN_113 = 4'h9 == io_rdata_1_REG ? data_9_valid : _GEN_112; // @[StoreQueueData.scala 192:{19,19}]
  wire  _GEN_114 = 4'ha == io_rdata_1_REG ? data_10_valid : _GEN_113; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_117 = 4'h1 == io_rdata_1_REG ? data_1_data : data_0_data; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_118 = 4'h2 == io_rdata_1_REG ? data_2_data : _GEN_117; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_119 = 4'h3 == io_rdata_1_REG ? data_3_data : _GEN_118; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_120 = 4'h4 == io_rdata_1_REG ? data_4_data : _GEN_119; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_121 = 4'h5 == io_rdata_1_REG ? data_5_data : _GEN_120; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_122 = 4'h6 == io_rdata_1_REG ? data_6_data : _GEN_121; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_123 = 4'h7 == io_rdata_1_REG ? data_7_data : _GEN_122; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_124 = 4'h8 == io_rdata_1_REG ? data_8_data : _GEN_123; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_125 = 4'h9 == io_rdata_1_REG ? data_9_data : _GEN_124; // @[StoreQueueData.scala 192:{19,19}]
  wire [7:0] _GEN_126 = 4'ha == io_rdata_1_REG ? data_10_data : _GEN_125; // @[StoreQueueData.scala 192:{19,19}]
  wire  needCheck0 = io_needForward_0_0[0]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1 = io_needForward_0_1[0]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_0_validFast_T = needCheck0 & data_0_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_0_valid_T = needCheck0Reg & data_0_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_12_validFast_T = needCheck1 & data_0_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_12_valid_T = needCheck1Reg & data_0_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_1 = io_needForward_0_0[1]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_1 = io_needForward_0_1[1]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_1; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_1; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_1_validFast_T = needCheck0_1 & data_1_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_1_valid_T = needCheck0Reg_1 & data_1_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_13_validFast_T = needCheck1_1 & data_1_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_13_valid_T = needCheck1Reg_1 & data_1_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_2 = io_needForward_0_0[2]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_2 = io_needForward_0_1[2]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_2; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_2; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_2_validFast_T = needCheck0_2 & data_2_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_2_valid_T = needCheck0Reg_2 & data_2_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_14_validFast_T = needCheck1_2 & data_2_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_14_valid_T = needCheck1Reg_2 & data_2_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_3 = io_needForward_0_0[3]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_3 = io_needForward_0_1[3]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_3; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_3; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_3_validFast_T = needCheck0_3 & data_3_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_3_valid_T = needCheck0Reg_3 & data_3_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_15_validFast_T = needCheck1_3 & data_3_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_15_valid_T = needCheck1Reg_3 & data_3_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_4 = io_needForward_0_0[4]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_4 = io_needForward_0_1[4]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_4; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_4; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_4_validFast_T = needCheck0_4 & data_4_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_4_valid_T = needCheck0Reg_4 & data_4_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_16_validFast_T = needCheck1_4 & data_4_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_16_valid_T = needCheck1Reg_4 & data_4_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_5 = io_needForward_0_0[5]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_5 = io_needForward_0_1[5]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_5; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_5; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_5_validFast_T = needCheck0_5 & data_5_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_5_valid_T = needCheck0Reg_5 & data_5_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_17_validFast_T = needCheck1_5 & data_5_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_17_valid_T = needCheck1Reg_5 & data_5_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_6 = io_needForward_0_0[6]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_6 = io_needForward_0_1[6]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_6; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_6; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_6_validFast_T = needCheck0_6 & data_6_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_6_valid_T = needCheck0Reg_6 & data_6_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_18_validFast_T = needCheck1_6 & data_6_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_18_valid_T = needCheck1Reg_6 & data_6_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_7 = io_needForward_0_0[7]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_7 = io_needForward_0_1[7]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_7; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_7; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_7_validFast_T = needCheck0_7 & data_7_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_7_valid_T = needCheck0Reg_7 & data_7_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_19_validFast_T = needCheck1_7 & data_7_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_19_valid_T = needCheck1Reg_7 & data_7_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_8 = io_needForward_0_0[8]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_8 = io_needForward_0_1[8]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_8; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_8; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_8_validFast_T = needCheck0_8 & data_8_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_8_valid_T = needCheck0Reg_8 & data_8_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_20_validFast_T = needCheck1_8 & data_8_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_20_valid_T = needCheck1Reg_8 & data_8_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_9 = io_needForward_0_0[9]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_9 = io_needForward_0_1[9]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_9; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_9; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_9_validFast_T = needCheck0_9 & data_9_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_9_valid_T = needCheck0Reg_9 & data_9_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_21_validFast_T = needCheck1_9 & data_9_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_21_valid_T = needCheck1Reg_9 & data_9_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_10 = io_needForward_0_0[10]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_10 = io_needForward_0_1[10]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_10; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_10; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_10_validFast_T = needCheck0_10 & data_10_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_10_valid_T = needCheck0Reg_10 & data_10_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_22_validFast_T = needCheck1_10 & data_10_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_22_valid_T = needCheck1Reg_10 & data_10_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_11 = io_needForward_0_0[11]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_11 = io_needForward_0_1[11]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_11; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_11; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_11_validFast_T = needCheck0_11 & data_11_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_11_valid_T = needCheck0Reg_11 & data_11_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_23_validFast_T = needCheck1_11 & data_11_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_23_valid_T = needCheck1Reg_11 & data_11_valid; // @[StoreQueueData.scala 244:63]
  wire [9:0] _parallelFwdResult_l_T = {_matchResultVec_1_validFast_T,_matchResultVec_1_valid_T,data_1_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_data = _parallelFwdResult_l_T[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_valid = _parallelFwdResult_l_T[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_validFast = _parallelFwdResult_l_T[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT = {_matchResultVec_2_validFast_T,_matchResultVec_2_valid_T,data_2_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_rdata = _parallelFwdResult_rT[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_rvalid = _parallelFwdResult_rT[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_rvalidFast = _parallelFwdResult_rT[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_validFast = parallelFwdResult_l_validFast | parallelFwdResult_rvalidFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_valid = parallelFwdResult_l_valid | parallelFwdResult_rvalid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_data = parallelFwdResult_rvalid ? parallelFwdResult_rdata :
    parallelFwdResult_l_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_4 = {_matchResultVec_0_validFast_T,_matchResultVec_0_valid_T,data_0_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_1_data = _parallelFwdResult_l_T_4[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_1_valid = _parallelFwdResult_l_T_4[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_1_validFast = _parallelFwdResult_l_T_4[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_4 = {parallelFwdResult_res_validFast,parallelFwdResult_res_valid,
    parallelFwdResult_res_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r1_data = _parallelFwdResult_rT_4[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r1_valid = _parallelFwdResult_rT_4[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r1_validFast = _parallelFwdResult_rT_4[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_1_validFast = parallelFwdResult_l_1_validFast | parallelFwdResult_r1_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_1_valid = parallelFwdResult_l_1_valid | parallelFwdResult_r1_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_1_data = parallelFwdResult_r1_valid ? parallelFwdResult_r1_data :
    parallelFwdResult_l_1_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_8 = {_matchResultVec_4_validFast_T,_matchResultVec_4_valid_T,data_4_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_2_data = _parallelFwdResult_l_T_8[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_2_valid = _parallelFwdResult_l_T_8[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_2_validFast = _parallelFwdResult_l_T_8[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_8 = {_matchResultVec_5_validFast_T,_matchResultVec_5_valid_T,data_5_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r2_data = _parallelFwdResult_rT_8[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r2_valid = _parallelFwdResult_rT_8[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r2_validFast = _parallelFwdResult_rT_8[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_2_validFast = parallelFwdResult_l_2_validFast | parallelFwdResult_r2_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_2_valid = parallelFwdResult_l_2_valid | parallelFwdResult_r2_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_2_data = parallelFwdResult_r2_valid ? parallelFwdResult_r2_data :
    parallelFwdResult_l_2_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_12 = {_matchResultVec_3_validFast_T,_matchResultVec_3_valid_T,data_3_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_3_data = _parallelFwdResult_l_T_12[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_3_valid = _parallelFwdResult_l_T_12[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_3_validFast = _parallelFwdResult_l_T_12[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_12 = {parallelFwdResult_res_2_validFast,parallelFwdResult_res_2_valid,
    parallelFwdResult_res_2_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r3_data = _parallelFwdResult_rT_12[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r3_valid = _parallelFwdResult_rT_12[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r3_validFast = _parallelFwdResult_rT_12[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_3_validFast = parallelFwdResult_l_3_validFast | parallelFwdResult_r3_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_3_valid = parallelFwdResult_l_3_valid | parallelFwdResult_r3_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_3_data = parallelFwdResult_r3_valid ? parallelFwdResult_r3_data :
    parallelFwdResult_l_3_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_16 = {parallelFwdResult_res_1_validFast,parallelFwdResult_res_1_valid,
    parallelFwdResult_res_1_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_4_data = _parallelFwdResult_l_T_16[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_4_valid = _parallelFwdResult_l_T_16[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_4_validFast = _parallelFwdResult_l_T_16[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_16 = {parallelFwdResult_res_3_validFast,parallelFwdResult_res_3_valid,
    parallelFwdResult_res_3_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r4_data = _parallelFwdResult_rT_16[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r4_valid = _parallelFwdResult_rT_16[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r4_validFast = _parallelFwdResult_rT_16[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_4_validFast = parallelFwdResult_l_4_validFast | parallelFwdResult_r4_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_4_valid = parallelFwdResult_l_4_valid | parallelFwdResult_r4_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_4_data = parallelFwdResult_r4_valid ? parallelFwdResult_r4_data :
    parallelFwdResult_l_4_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_20 = {_matchResultVec_7_validFast_T,_matchResultVec_7_valid_T,data_7_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_5_data = _parallelFwdResult_l_T_20[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_5_valid = _parallelFwdResult_l_T_20[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_5_validFast = _parallelFwdResult_l_T_20[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_20 = {_matchResultVec_8_validFast_T,_matchResultVec_8_valid_T,data_8_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r5_data = _parallelFwdResult_rT_20[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r5_valid = _parallelFwdResult_rT_20[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r5_validFast = _parallelFwdResult_rT_20[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_5_validFast = parallelFwdResult_l_5_validFast | parallelFwdResult_r5_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_5_valid = parallelFwdResult_l_5_valid | parallelFwdResult_r5_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_5_data = parallelFwdResult_r5_valid ? parallelFwdResult_r5_data :
    parallelFwdResult_l_5_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_24 = {_matchResultVec_6_validFast_T,_matchResultVec_6_valid_T,data_6_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_6_data = _parallelFwdResult_l_T_24[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_6_valid = _parallelFwdResult_l_T_24[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_6_validFast = _parallelFwdResult_l_T_24[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_24 = {parallelFwdResult_res_5_validFast,parallelFwdResult_res_5_valid,
    parallelFwdResult_res_5_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r6_data = _parallelFwdResult_rT_24[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r6_valid = _parallelFwdResult_rT_24[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r6_validFast = _parallelFwdResult_rT_24[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_6_validFast = parallelFwdResult_l_6_validFast | parallelFwdResult_r6_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_6_valid = parallelFwdResult_l_6_valid | parallelFwdResult_r6_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_6_data = parallelFwdResult_r6_valid ? parallelFwdResult_r6_data :
    parallelFwdResult_l_6_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_28 = {_matchResultVec_10_validFast_T,_matchResultVec_10_valid_T,data_10_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_7_data = _parallelFwdResult_l_T_28[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_7_valid = _parallelFwdResult_l_T_28[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_7_validFast = _parallelFwdResult_l_T_28[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_28 = {_matchResultVec_11_validFast_T,_matchResultVec_11_valid_T,data_11_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r7_data = _parallelFwdResult_rT_28[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r7_valid = _parallelFwdResult_rT_28[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r7_validFast = _parallelFwdResult_rT_28[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_7_validFast = parallelFwdResult_l_7_validFast | parallelFwdResult_r7_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_7_valid = parallelFwdResult_l_7_valid | parallelFwdResult_r7_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_7_data = parallelFwdResult_r7_valid ? parallelFwdResult_r7_data :
    parallelFwdResult_l_7_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_32 = {_matchResultVec_9_validFast_T,_matchResultVec_9_valid_T,data_9_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_8_data = _parallelFwdResult_l_T_32[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_8_valid = _parallelFwdResult_l_T_32[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_8_validFast = _parallelFwdResult_l_T_32[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_32 = {parallelFwdResult_res_7_validFast,parallelFwdResult_res_7_valid,
    parallelFwdResult_res_7_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r8_data = _parallelFwdResult_rT_32[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r8_valid = _parallelFwdResult_rT_32[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r8_validFast = _parallelFwdResult_rT_32[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_8_validFast = parallelFwdResult_l_8_validFast | parallelFwdResult_r8_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_8_valid = parallelFwdResult_l_8_valid | parallelFwdResult_r8_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_8_data = parallelFwdResult_r8_valid ? parallelFwdResult_r8_data :
    parallelFwdResult_l_8_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_36 = {parallelFwdResult_res_6_validFast,parallelFwdResult_res_6_valid,
    parallelFwdResult_res_6_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_9_data = _parallelFwdResult_l_T_36[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_9_valid = _parallelFwdResult_l_T_36[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_9_validFast = _parallelFwdResult_l_T_36[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_36 = {parallelFwdResult_res_8_validFast,parallelFwdResult_res_8_valid,
    parallelFwdResult_res_8_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r9_data = _parallelFwdResult_rT_36[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r9_valid = _parallelFwdResult_rT_36[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r9_validFast = _parallelFwdResult_rT_36[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_9_validFast = parallelFwdResult_l_9_validFast | parallelFwdResult_r9_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_9_valid = parallelFwdResult_l_9_valid | parallelFwdResult_r9_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_9_data = parallelFwdResult_r9_valid ? parallelFwdResult_r9_data :
    parallelFwdResult_l_9_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_40 = {parallelFwdResult_res_4_validFast,parallelFwdResult_res_4_valid,
    parallelFwdResult_res_4_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_10_data = _parallelFwdResult_l_T_40[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_10_valid = _parallelFwdResult_l_T_40[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_10_validFast = _parallelFwdResult_l_T_40[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_40 = {parallelFwdResult_res_9_validFast,parallelFwdResult_res_9_valid,
    parallelFwdResult_res_9_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r10_data = _parallelFwdResult_rT_40[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r10_valid = _parallelFwdResult_rT_40[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r10_validFast = _parallelFwdResult_rT_40[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_10_validFast = parallelFwdResult_l_10_validFast | parallelFwdResult_r10_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_10_valid = parallelFwdResult_l_10_valid | parallelFwdResult_r10_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_10_data = parallelFwdResult_r10_valid ? parallelFwdResult_r10_data :
    parallelFwdResult_l_10_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_44 = {_matchResultVec_13_validFast_T,_matchResultVec_13_valid_T,data_1_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_11_data = _parallelFwdResult_l_T_44[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_11_valid = _parallelFwdResult_l_T_44[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_11_validFast = _parallelFwdResult_l_T_44[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_44 = {_matchResultVec_14_validFast_T,_matchResultVec_14_valid_T,data_2_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r11_data = _parallelFwdResult_rT_44[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r11_valid = _parallelFwdResult_rT_44[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r11_validFast = _parallelFwdResult_rT_44[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_11_validFast = parallelFwdResult_l_11_validFast | parallelFwdResult_r11_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_11_valid = parallelFwdResult_l_11_valid | parallelFwdResult_r11_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_11_data = parallelFwdResult_r11_valid ? parallelFwdResult_r11_data :
    parallelFwdResult_l_11_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_48 = {_matchResultVec_12_validFast_T,_matchResultVec_12_valid_T,data_0_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_12_data = _parallelFwdResult_l_T_48[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_12_valid = _parallelFwdResult_l_T_48[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_12_validFast = _parallelFwdResult_l_T_48[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_48 = {parallelFwdResult_res_11_validFast,parallelFwdResult_res_11_valid,
    parallelFwdResult_res_11_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r12_data = _parallelFwdResult_rT_48[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r12_valid = _parallelFwdResult_rT_48[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r12_validFast = _parallelFwdResult_rT_48[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_12_validFast = parallelFwdResult_l_12_validFast | parallelFwdResult_r12_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_12_valid = parallelFwdResult_l_12_valid | parallelFwdResult_r12_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_12_data = parallelFwdResult_r12_valid ? parallelFwdResult_r12_data :
    parallelFwdResult_l_12_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_52 = {_matchResultVec_16_validFast_T,_matchResultVec_16_valid_T,data_4_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_13_data = _parallelFwdResult_l_T_52[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_13_valid = _parallelFwdResult_l_T_52[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_13_validFast = _parallelFwdResult_l_T_52[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_52 = {_matchResultVec_17_validFast_T,_matchResultVec_17_valid_T,data_5_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r13_data = _parallelFwdResult_rT_52[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r13_valid = _parallelFwdResult_rT_52[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r13_validFast = _parallelFwdResult_rT_52[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_13_validFast = parallelFwdResult_l_13_validFast | parallelFwdResult_r13_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_13_valid = parallelFwdResult_l_13_valid | parallelFwdResult_r13_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_13_data = parallelFwdResult_r13_valid ? parallelFwdResult_r13_data :
    parallelFwdResult_l_13_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_56 = {_matchResultVec_15_validFast_T,_matchResultVec_15_valid_T,data_3_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_14_data = _parallelFwdResult_l_T_56[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_14_valid = _parallelFwdResult_l_T_56[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_14_validFast = _parallelFwdResult_l_T_56[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_56 = {parallelFwdResult_res_13_validFast,parallelFwdResult_res_13_valid,
    parallelFwdResult_res_13_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r14_data = _parallelFwdResult_rT_56[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r14_valid = _parallelFwdResult_rT_56[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r14_validFast = _parallelFwdResult_rT_56[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_14_validFast = parallelFwdResult_l_14_validFast | parallelFwdResult_r14_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_14_valid = parallelFwdResult_l_14_valid | parallelFwdResult_r14_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_14_data = parallelFwdResult_r14_valid ? parallelFwdResult_r14_data :
    parallelFwdResult_l_14_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_60 = {parallelFwdResult_res_12_validFast,parallelFwdResult_res_12_valid,
    parallelFwdResult_res_12_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_15_data = _parallelFwdResult_l_T_60[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_15_valid = _parallelFwdResult_l_T_60[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_15_validFast = _parallelFwdResult_l_T_60[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_60 = {parallelFwdResult_res_14_validFast,parallelFwdResult_res_14_valid,
    parallelFwdResult_res_14_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r15_data = _parallelFwdResult_rT_60[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r15_valid = _parallelFwdResult_rT_60[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r15_validFast = _parallelFwdResult_rT_60[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_15_validFast = parallelFwdResult_l_15_validFast | parallelFwdResult_r15_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_15_valid = parallelFwdResult_l_15_valid | parallelFwdResult_r15_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_15_data = parallelFwdResult_r15_valid ? parallelFwdResult_r15_data :
    parallelFwdResult_l_15_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_64 = {_matchResultVec_19_validFast_T,_matchResultVec_19_valid_T,data_7_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_16_data = _parallelFwdResult_l_T_64[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_16_valid = _parallelFwdResult_l_T_64[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_16_validFast = _parallelFwdResult_l_T_64[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_64 = {_matchResultVec_20_validFast_T,_matchResultVec_20_valid_T,data_8_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r16_data = _parallelFwdResult_rT_64[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r16_valid = _parallelFwdResult_rT_64[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r16_validFast = _parallelFwdResult_rT_64[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_16_validFast = parallelFwdResult_l_16_validFast | parallelFwdResult_r16_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_16_valid = parallelFwdResult_l_16_valid | parallelFwdResult_r16_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_16_data = parallelFwdResult_r16_valid ? parallelFwdResult_r16_data :
    parallelFwdResult_l_16_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_68 = {_matchResultVec_18_validFast_T,_matchResultVec_18_valid_T,data_6_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_17_data = _parallelFwdResult_l_T_68[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_17_valid = _parallelFwdResult_l_T_68[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_17_validFast = _parallelFwdResult_l_T_68[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_68 = {parallelFwdResult_res_16_validFast,parallelFwdResult_res_16_valid,
    parallelFwdResult_res_16_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r17_data = _parallelFwdResult_rT_68[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r17_valid = _parallelFwdResult_rT_68[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r17_validFast = _parallelFwdResult_rT_68[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_17_validFast = parallelFwdResult_l_17_validFast | parallelFwdResult_r17_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_17_valid = parallelFwdResult_l_17_valid | parallelFwdResult_r17_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_17_data = parallelFwdResult_r17_valid ? parallelFwdResult_r17_data :
    parallelFwdResult_l_17_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_72 = {_matchResultVec_22_validFast_T,_matchResultVec_22_valid_T,data_10_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_18_data = _parallelFwdResult_l_T_72[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_18_valid = _parallelFwdResult_l_T_72[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_18_validFast = _parallelFwdResult_l_T_72[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_72 = {_matchResultVec_23_validFast_T,_matchResultVec_23_valid_T,data_11_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r18_data = _parallelFwdResult_rT_72[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r18_valid = _parallelFwdResult_rT_72[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r18_validFast = _parallelFwdResult_rT_72[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_18_validFast = parallelFwdResult_l_18_validFast | parallelFwdResult_r18_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_18_valid = parallelFwdResult_l_18_valid | parallelFwdResult_r18_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_18_data = parallelFwdResult_r18_valid ? parallelFwdResult_r18_data :
    parallelFwdResult_l_18_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_76 = {_matchResultVec_21_validFast_T,_matchResultVec_21_valid_T,data_9_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_19_data = _parallelFwdResult_l_T_76[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_19_valid = _parallelFwdResult_l_T_76[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_19_validFast = _parallelFwdResult_l_T_76[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_76 = {parallelFwdResult_res_18_validFast,parallelFwdResult_res_18_valid,
    parallelFwdResult_res_18_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r19_data = _parallelFwdResult_rT_76[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r19_valid = _parallelFwdResult_rT_76[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r19_validFast = _parallelFwdResult_rT_76[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_19_validFast = parallelFwdResult_l_19_validFast | parallelFwdResult_r19_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_19_valid = parallelFwdResult_l_19_valid | parallelFwdResult_r19_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_19_data = parallelFwdResult_r19_valid ? parallelFwdResult_r19_data :
    parallelFwdResult_l_19_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_80 = {parallelFwdResult_res_17_validFast,parallelFwdResult_res_17_valid,
    parallelFwdResult_res_17_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_20_data = _parallelFwdResult_l_T_80[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_20_valid = _parallelFwdResult_l_T_80[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_20_validFast = _parallelFwdResult_l_T_80[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_80 = {parallelFwdResult_res_19_validFast,parallelFwdResult_res_19_valid,
    parallelFwdResult_res_19_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r20_data = _parallelFwdResult_rT_80[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r20_valid = _parallelFwdResult_rT_80[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r20_validFast = _parallelFwdResult_rT_80[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_20_validFast = parallelFwdResult_l_20_validFast | parallelFwdResult_r20_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_20_valid = parallelFwdResult_l_20_valid | parallelFwdResult_r20_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_20_data = parallelFwdResult_r20_valid ? parallelFwdResult_r20_data :
    parallelFwdResult_l_20_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_84 = {parallelFwdResult_res_15_validFast,parallelFwdResult_res_15_valid,
    parallelFwdResult_res_15_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_21_data = _parallelFwdResult_l_T_84[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_21_valid = _parallelFwdResult_l_T_84[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_21_validFast = _parallelFwdResult_l_T_84[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_84 = {parallelFwdResult_res_20_validFast,parallelFwdResult_res_20_valid,
    parallelFwdResult_res_20_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r21_data = _parallelFwdResult_rT_84[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r21_valid = _parallelFwdResult_rT_84[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r21_validFast = _parallelFwdResult_rT_84[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_21_validFast = parallelFwdResult_l_21_validFast | parallelFwdResult_r21_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_21_valid = parallelFwdResult_l_21_valid | parallelFwdResult_r21_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_21_data = parallelFwdResult_r21_valid ? parallelFwdResult_r21_data :
    parallelFwdResult_l_21_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_88 = {parallelFwdResult_res_10_validFast,parallelFwdResult_res_10_valid,
    parallelFwdResult_res_10_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_22_data = _parallelFwdResult_l_T_88[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_22_valid = _parallelFwdResult_l_T_88[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_22_validFast = _parallelFwdResult_l_T_88[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_88 = {parallelFwdResult_res_21_validFast,parallelFwdResult_res_21_valid,
    parallelFwdResult_res_21_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r22_data = _parallelFwdResult_rT_88[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r22_valid = _parallelFwdResult_rT_88[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r22_validFast = _parallelFwdResult_rT_88[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_22_validFast = parallelFwdResult_l_22_validFast | parallelFwdResult_r22_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_22_valid = parallelFwdResult_l_22_valid | parallelFwdResult_r22_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_22_data = parallelFwdResult_r22_valid ? parallelFwdResult_r22_data :
    parallelFwdResult_l_22_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_T = {parallelFwdResult_res_22_validFast,parallelFwdResult_res_22_valid,
    parallelFwdResult_res_22_data}; // @[StoreQueueData.scala 249:65]
  wire  needCheck0_12 = io_needForward_1_0[0]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_12 = io_needForward_1_1[0]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_12; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_12; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_0_validFast_T_8 = needCheck0_12 & data_0_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_0_valid_T_8 = needCheck0Reg_12 & data_0_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_12_validFast_T_8 = needCheck1_12 & data_0_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_12_valid_T_8 = needCheck1Reg_12 & data_0_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_13 = io_needForward_1_0[1]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_13 = io_needForward_1_1[1]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_13; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_13; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_1_validFast_T_8 = needCheck0_13 & data_1_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_1_valid_T_8 = needCheck0Reg_13 & data_1_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_13_validFast_T_8 = needCheck1_13 & data_1_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_13_valid_T_8 = needCheck1Reg_13 & data_1_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_14 = io_needForward_1_0[2]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_14 = io_needForward_1_1[2]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_14; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_14; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_2_validFast_T_8 = needCheck0_14 & data_2_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_2_valid_T_8 = needCheck0Reg_14 & data_2_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_14_validFast_T_8 = needCheck1_14 & data_2_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_14_valid_T_8 = needCheck1Reg_14 & data_2_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_15 = io_needForward_1_0[3]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_15 = io_needForward_1_1[3]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_15; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_15; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_3_validFast_T_8 = needCheck0_15 & data_3_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_3_valid_T_8 = needCheck0Reg_15 & data_3_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_15_validFast_T_8 = needCheck1_15 & data_3_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_15_valid_T_8 = needCheck1Reg_15 & data_3_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_16 = io_needForward_1_0[4]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_16 = io_needForward_1_1[4]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_16; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_16; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_4_validFast_T_8 = needCheck0_16 & data_4_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_4_valid_T_8 = needCheck0Reg_16 & data_4_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_16_validFast_T_8 = needCheck1_16 & data_4_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_16_valid_T_8 = needCheck1Reg_16 & data_4_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_17 = io_needForward_1_0[5]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_17 = io_needForward_1_1[5]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_17; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_17; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_5_validFast_T_8 = needCheck0_17 & data_5_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_5_valid_T_8 = needCheck0Reg_17 & data_5_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_17_validFast_T_8 = needCheck1_17 & data_5_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_17_valid_T_8 = needCheck1Reg_17 & data_5_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_18 = io_needForward_1_0[6]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_18 = io_needForward_1_1[6]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_18; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_18; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_6_validFast_T_8 = needCheck0_18 & data_6_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_6_valid_T_8 = needCheck0Reg_18 & data_6_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_18_validFast_T_8 = needCheck1_18 & data_6_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_18_valid_T_8 = needCheck1Reg_18 & data_6_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_19 = io_needForward_1_0[7]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_19 = io_needForward_1_1[7]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_19; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_19; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_7_validFast_T_8 = needCheck0_19 & data_7_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_7_valid_T_8 = needCheck0Reg_19 & data_7_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_19_validFast_T_8 = needCheck1_19 & data_7_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_19_valid_T_8 = needCheck1Reg_19 & data_7_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_20 = io_needForward_1_0[8]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_20 = io_needForward_1_1[8]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_20; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_20; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_8_validFast_T_8 = needCheck0_20 & data_8_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_8_valid_T_8 = needCheck0Reg_20 & data_8_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_20_validFast_T_8 = needCheck1_20 & data_8_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_20_valid_T_8 = needCheck1Reg_20 & data_8_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_21 = io_needForward_1_0[9]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_21 = io_needForward_1_1[9]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_21; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_21; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_9_validFast_T_8 = needCheck0_21 & data_9_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_9_valid_T_8 = needCheck0Reg_21 & data_9_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_21_validFast_T_8 = needCheck1_21 & data_9_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_21_valid_T_8 = needCheck1Reg_21 & data_9_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_22 = io_needForward_1_0[10]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_22 = io_needForward_1_1[10]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_22; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_22; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_10_validFast_T_8 = needCheck0_22 & data_10_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_10_valid_T_8 = needCheck0Reg_22 & data_10_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_22_validFast_T_8 = needCheck1_22 & data_10_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_22_valid_T_8 = needCheck1Reg_22 & data_10_valid; // @[StoreQueueData.scala 244:63]
  wire  needCheck0_23 = io_needForward_1_0[11]; // @[StoreQueueData.scala 235:44]
  wire  needCheck1_23 = io_needForward_1_1[11]; // @[StoreQueueData.scala 236:44]
  reg  needCheck0Reg_23; // @[StoreQueueData.scala 237:34]
  reg  needCheck1Reg_23; // @[StoreQueueData.scala 238:34]
  wire  _matchResultVec_11_validFast_T_8 = needCheck0_23 & data_11_valid; // @[StoreQueueData.scala 240:51]
  wire  _matchResultVec_11_valid_T_8 = needCheck0Reg_23 & data_11_valid; // @[StoreQueueData.scala 241:50]
  wire  _matchResultVec_23_validFast_T_8 = needCheck1_23 & data_11_valid; // @[StoreQueueData.scala 243:64]
  wire  _matchResultVec_23_valid_T_8 = needCheck1Reg_23 & data_11_valid; // @[StoreQueueData.scala 244:63]
  wire [9:0] _parallelFwdResult_l_T_92 = {_matchResultVec_1_validFast_T_8,_matchResultVec_1_valid_T_8,data_1_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_23_data = _parallelFwdResult_l_T_92[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_23_valid = _parallelFwdResult_l_T_92[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_23_validFast = _parallelFwdResult_l_T_92[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_92 = {_matchResultVec_2_validFast_T_8,_matchResultVec_2_valid_T_8,data_2_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r23_data = _parallelFwdResult_rT_92[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r23_valid = _parallelFwdResult_rT_92[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r23_validFast = _parallelFwdResult_rT_92[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_23_validFast = parallelFwdResult_l_23_validFast | parallelFwdResult_r23_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_23_valid = parallelFwdResult_l_23_valid | parallelFwdResult_r23_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_23_data = parallelFwdResult_r23_valid ? parallelFwdResult_r23_data :
    parallelFwdResult_l_23_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_96 = {_matchResultVec_0_validFast_T_8,_matchResultVec_0_valid_T_8,data_0_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_24_data = _parallelFwdResult_l_T_96[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_24_valid = _parallelFwdResult_l_T_96[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_24_validFast = _parallelFwdResult_l_T_96[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_96 = {parallelFwdResult_res_23_validFast,parallelFwdResult_res_23_valid,
    parallelFwdResult_res_23_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r24_data = _parallelFwdResult_rT_96[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r24_valid = _parallelFwdResult_rT_96[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r24_validFast = _parallelFwdResult_rT_96[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_24_validFast = parallelFwdResult_l_24_validFast | parallelFwdResult_r24_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_24_valid = parallelFwdResult_l_24_valid | parallelFwdResult_r24_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_24_data = parallelFwdResult_r24_valid ? parallelFwdResult_r24_data :
    parallelFwdResult_l_24_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_100 = {_matchResultVec_4_validFast_T_8,_matchResultVec_4_valid_T_8,data_4_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_25_data = _parallelFwdResult_l_T_100[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_25_valid = _parallelFwdResult_l_T_100[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_25_validFast = _parallelFwdResult_l_T_100[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_100 = {_matchResultVec_5_validFast_T_8,_matchResultVec_5_valid_T_8,data_5_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r25_data = _parallelFwdResult_rT_100[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r25_valid = _parallelFwdResult_rT_100[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r25_validFast = _parallelFwdResult_rT_100[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_25_validFast = parallelFwdResult_l_25_validFast | parallelFwdResult_r25_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_25_valid = parallelFwdResult_l_25_valid | parallelFwdResult_r25_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_25_data = parallelFwdResult_r25_valid ? parallelFwdResult_r25_data :
    parallelFwdResult_l_25_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_104 = {_matchResultVec_3_validFast_T_8,_matchResultVec_3_valid_T_8,data_3_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_26_data = _parallelFwdResult_l_T_104[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_26_valid = _parallelFwdResult_l_T_104[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_26_validFast = _parallelFwdResult_l_T_104[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_104 = {parallelFwdResult_res_25_validFast,parallelFwdResult_res_25_valid,
    parallelFwdResult_res_25_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r26_data = _parallelFwdResult_rT_104[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r26_valid = _parallelFwdResult_rT_104[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r26_validFast = _parallelFwdResult_rT_104[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_26_validFast = parallelFwdResult_l_26_validFast | parallelFwdResult_r26_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_26_valid = parallelFwdResult_l_26_valid | parallelFwdResult_r26_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_26_data = parallelFwdResult_r26_valid ? parallelFwdResult_r26_data :
    parallelFwdResult_l_26_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_108 = {parallelFwdResult_res_24_validFast,parallelFwdResult_res_24_valid,
    parallelFwdResult_res_24_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_27_data = _parallelFwdResult_l_T_108[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_27_valid = _parallelFwdResult_l_T_108[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_27_validFast = _parallelFwdResult_l_T_108[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_108 = {parallelFwdResult_res_26_validFast,parallelFwdResult_res_26_valid,
    parallelFwdResult_res_26_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r27_data = _parallelFwdResult_rT_108[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r27_valid = _parallelFwdResult_rT_108[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r27_validFast = _parallelFwdResult_rT_108[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_27_validFast = parallelFwdResult_l_27_validFast | parallelFwdResult_r27_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_27_valid = parallelFwdResult_l_27_valid | parallelFwdResult_r27_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_27_data = parallelFwdResult_r27_valid ? parallelFwdResult_r27_data :
    parallelFwdResult_l_27_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_112 = {_matchResultVec_7_validFast_T_8,_matchResultVec_7_valid_T_8,data_7_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_28_data = _parallelFwdResult_l_T_112[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_28_valid = _parallelFwdResult_l_T_112[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_28_validFast = _parallelFwdResult_l_T_112[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_112 = {_matchResultVec_8_validFast_T_8,_matchResultVec_8_valid_T_8,data_8_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r28_data = _parallelFwdResult_rT_112[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r28_valid = _parallelFwdResult_rT_112[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r28_validFast = _parallelFwdResult_rT_112[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_28_validFast = parallelFwdResult_l_28_validFast | parallelFwdResult_r28_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_28_valid = parallelFwdResult_l_28_valid | parallelFwdResult_r28_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_28_data = parallelFwdResult_r28_valid ? parallelFwdResult_r28_data :
    parallelFwdResult_l_28_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_116 = {_matchResultVec_6_validFast_T_8,_matchResultVec_6_valid_T_8,data_6_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_29_data = _parallelFwdResult_l_T_116[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_29_valid = _parallelFwdResult_l_T_116[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_29_validFast = _parallelFwdResult_l_T_116[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_116 = {parallelFwdResult_res_28_validFast,parallelFwdResult_res_28_valid,
    parallelFwdResult_res_28_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r29_data = _parallelFwdResult_rT_116[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r29_valid = _parallelFwdResult_rT_116[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r29_validFast = _parallelFwdResult_rT_116[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_29_validFast = parallelFwdResult_l_29_validFast | parallelFwdResult_r29_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_29_valid = parallelFwdResult_l_29_valid | parallelFwdResult_r29_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_29_data = parallelFwdResult_r29_valid ? parallelFwdResult_r29_data :
    parallelFwdResult_l_29_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_120 = {_matchResultVec_10_validFast_T_8,_matchResultVec_10_valid_T_8,data_10_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_30_data = _parallelFwdResult_l_T_120[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_30_valid = _parallelFwdResult_l_T_120[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_30_validFast = _parallelFwdResult_l_T_120[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_120 = {_matchResultVec_11_validFast_T_8,_matchResultVec_11_valid_T_8,data_11_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r30_data = _parallelFwdResult_rT_120[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r30_valid = _parallelFwdResult_rT_120[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r30_validFast = _parallelFwdResult_rT_120[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_30_validFast = parallelFwdResult_l_30_validFast | parallelFwdResult_r30_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_30_valid = parallelFwdResult_l_30_valid | parallelFwdResult_r30_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_30_data = parallelFwdResult_r30_valid ? parallelFwdResult_r30_data :
    parallelFwdResult_l_30_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_124 = {_matchResultVec_9_validFast_T_8,_matchResultVec_9_valid_T_8,data_9_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_31_data = _parallelFwdResult_l_T_124[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_31_valid = _parallelFwdResult_l_T_124[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_31_validFast = _parallelFwdResult_l_T_124[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_124 = {parallelFwdResult_res_30_validFast,parallelFwdResult_res_30_valid,
    parallelFwdResult_res_30_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r31_data = _parallelFwdResult_rT_124[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r31_valid = _parallelFwdResult_rT_124[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r31_validFast = _parallelFwdResult_rT_124[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_31_validFast = parallelFwdResult_l_31_validFast | parallelFwdResult_r31_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_31_valid = parallelFwdResult_l_31_valid | parallelFwdResult_r31_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_31_data = parallelFwdResult_r31_valid ? parallelFwdResult_r31_data :
    parallelFwdResult_l_31_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_128 = {parallelFwdResult_res_29_validFast,parallelFwdResult_res_29_valid,
    parallelFwdResult_res_29_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_32_data = _parallelFwdResult_l_T_128[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_32_valid = _parallelFwdResult_l_T_128[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_32_validFast = _parallelFwdResult_l_T_128[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_128 = {parallelFwdResult_res_31_validFast,parallelFwdResult_res_31_valid,
    parallelFwdResult_res_31_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r32_data = _parallelFwdResult_rT_128[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r32_valid = _parallelFwdResult_rT_128[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r32_validFast = _parallelFwdResult_rT_128[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_32_validFast = parallelFwdResult_l_32_validFast | parallelFwdResult_r32_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_32_valid = parallelFwdResult_l_32_valid | parallelFwdResult_r32_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_32_data = parallelFwdResult_r32_valid ? parallelFwdResult_r32_data :
    parallelFwdResult_l_32_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_132 = {parallelFwdResult_res_27_validFast,parallelFwdResult_res_27_valid,
    parallelFwdResult_res_27_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_33_data = _parallelFwdResult_l_T_132[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_33_valid = _parallelFwdResult_l_T_132[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_33_validFast = _parallelFwdResult_l_T_132[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_132 = {parallelFwdResult_res_32_validFast,parallelFwdResult_res_32_valid,
    parallelFwdResult_res_32_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r33_data = _parallelFwdResult_rT_132[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r33_valid = _parallelFwdResult_rT_132[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r33_validFast = _parallelFwdResult_rT_132[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_33_validFast = parallelFwdResult_l_33_validFast | parallelFwdResult_r33_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_33_valid = parallelFwdResult_l_33_valid | parallelFwdResult_r33_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_33_data = parallelFwdResult_r33_valid ? parallelFwdResult_r33_data :
    parallelFwdResult_l_33_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_136 = {_matchResultVec_13_validFast_T_8,_matchResultVec_13_valid_T_8,data_1_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_34_data = _parallelFwdResult_l_T_136[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_34_valid = _parallelFwdResult_l_T_136[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_34_validFast = _parallelFwdResult_l_T_136[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_136 = {_matchResultVec_14_validFast_T_8,_matchResultVec_14_valid_T_8,data_2_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r34_data = _parallelFwdResult_rT_136[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r34_valid = _parallelFwdResult_rT_136[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r34_validFast = _parallelFwdResult_rT_136[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_34_validFast = parallelFwdResult_l_34_validFast | parallelFwdResult_r34_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_34_valid = parallelFwdResult_l_34_valid | parallelFwdResult_r34_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_34_data = parallelFwdResult_r34_valid ? parallelFwdResult_r34_data :
    parallelFwdResult_l_34_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_140 = {_matchResultVec_12_validFast_T_8,_matchResultVec_12_valid_T_8,data_0_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_35_data = _parallelFwdResult_l_T_140[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_35_valid = _parallelFwdResult_l_T_140[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_35_validFast = _parallelFwdResult_l_T_140[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_140 = {parallelFwdResult_res_34_validFast,parallelFwdResult_res_34_valid,
    parallelFwdResult_res_34_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r35_data = _parallelFwdResult_rT_140[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r35_valid = _parallelFwdResult_rT_140[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r35_validFast = _parallelFwdResult_rT_140[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_35_validFast = parallelFwdResult_l_35_validFast | parallelFwdResult_r35_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_35_valid = parallelFwdResult_l_35_valid | parallelFwdResult_r35_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_35_data = parallelFwdResult_r35_valid ? parallelFwdResult_r35_data :
    parallelFwdResult_l_35_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_144 = {_matchResultVec_16_validFast_T_8,_matchResultVec_16_valid_T_8,data_4_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_36_data = _parallelFwdResult_l_T_144[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_36_valid = _parallelFwdResult_l_T_144[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_36_validFast = _parallelFwdResult_l_T_144[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_144 = {_matchResultVec_17_validFast_T_8,_matchResultVec_17_valid_T_8,data_5_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r36_data = _parallelFwdResult_rT_144[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r36_valid = _parallelFwdResult_rT_144[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r36_validFast = _parallelFwdResult_rT_144[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_36_validFast = parallelFwdResult_l_36_validFast | parallelFwdResult_r36_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_36_valid = parallelFwdResult_l_36_valid | parallelFwdResult_r36_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_36_data = parallelFwdResult_r36_valid ? parallelFwdResult_r36_data :
    parallelFwdResult_l_36_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_148 = {_matchResultVec_15_validFast_T_8,_matchResultVec_15_valid_T_8,data_3_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_37_data = _parallelFwdResult_l_T_148[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_37_valid = _parallelFwdResult_l_T_148[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_37_validFast = _parallelFwdResult_l_T_148[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_148 = {parallelFwdResult_res_36_validFast,parallelFwdResult_res_36_valid,
    parallelFwdResult_res_36_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r37_data = _parallelFwdResult_rT_148[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r37_valid = _parallelFwdResult_rT_148[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r37_validFast = _parallelFwdResult_rT_148[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_37_validFast = parallelFwdResult_l_37_validFast | parallelFwdResult_r37_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_37_valid = parallelFwdResult_l_37_valid | parallelFwdResult_r37_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_37_data = parallelFwdResult_r37_valid ? parallelFwdResult_r37_data :
    parallelFwdResult_l_37_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_152 = {parallelFwdResult_res_35_validFast,parallelFwdResult_res_35_valid,
    parallelFwdResult_res_35_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_38_data = _parallelFwdResult_l_T_152[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_38_valid = _parallelFwdResult_l_T_152[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_38_validFast = _parallelFwdResult_l_T_152[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_152 = {parallelFwdResult_res_37_validFast,parallelFwdResult_res_37_valid,
    parallelFwdResult_res_37_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r38_data = _parallelFwdResult_rT_152[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r38_valid = _parallelFwdResult_rT_152[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r38_validFast = _parallelFwdResult_rT_152[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_38_validFast = parallelFwdResult_l_38_validFast | parallelFwdResult_r38_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_38_valid = parallelFwdResult_l_38_valid | parallelFwdResult_r38_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_38_data = parallelFwdResult_r38_valid ? parallelFwdResult_r38_data :
    parallelFwdResult_l_38_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_156 = {_matchResultVec_19_validFast_T_8,_matchResultVec_19_valid_T_8,data_7_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_39_data = _parallelFwdResult_l_T_156[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_39_valid = _parallelFwdResult_l_T_156[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_39_validFast = _parallelFwdResult_l_T_156[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_156 = {_matchResultVec_20_validFast_T_8,_matchResultVec_20_valid_T_8,data_8_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r39_data = _parallelFwdResult_rT_156[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r39_valid = _parallelFwdResult_rT_156[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r39_validFast = _parallelFwdResult_rT_156[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_39_validFast = parallelFwdResult_l_39_validFast | parallelFwdResult_r39_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_39_valid = parallelFwdResult_l_39_valid | parallelFwdResult_r39_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_39_data = parallelFwdResult_r39_valid ? parallelFwdResult_r39_data :
    parallelFwdResult_l_39_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_160 = {_matchResultVec_18_validFast_T_8,_matchResultVec_18_valid_T_8,data_6_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_40_data = _parallelFwdResult_l_T_160[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_40_valid = _parallelFwdResult_l_T_160[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_40_validFast = _parallelFwdResult_l_T_160[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_160 = {parallelFwdResult_res_39_validFast,parallelFwdResult_res_39_valid,
    parallelFwdResult_res_39_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r40_data = _parallelFwdResult_rT_160[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r40_valid = _parallelFwdResult_rT_160[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r40_validFast = _parallelFwdResult_rT_160[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_40_validFast = parallelFwdResult_l_40_validFast | parallelFwdResult_r40_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_40_valid = parallelFwdResult_l_40_valid | parallelFwdResult_r40_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_40_data = parallelFwdResult_r40_valid ? parallelFwdResult_r40_data :
    parallelFwdResult_l_40_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_164 = {_matchResultVec_22_validFast_T_8,_matchResultVec_22_valid_T_8,data_10_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_41_data = _parallelFwdResult_l_T_164[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_41_valid = _parallelFwdResult_l_T_164[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_41_validFast = _parallelFwdResult_l_T_164[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_164 = {_matchResultVec_23_validFast_T_8,_matchResultVec_23_valid_T_8,data_11_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r41_data = _parallelFwdResult_rT_164[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r41_valid = _parallelFwdResult_rT_164[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r41_validFast = _parallelFwdResult_rT_164[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_41_validFast = parallelFwdResult_l_41_validFast | parallelFwdResult_r41_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_41_valid = parallelFwdResult_l_41_valid | parallelFwdResult_r41_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_41_data = parallelFwdResult_r41_valid ? parallelFwdResult_r41_data :
    parallelFwdResult_l_41_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_168 = {_matchResultVec_21_validFast_T_8,_matchResultVec_21_valid_T_8,data_9_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_42_data = _parallelFwdResult_l_T_168[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_42_valid = _parallelFwdResult_l_T_168[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_42_validFast = _parallelFwdResult_l_T_168[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_168 = {parallelFwdResult_res_41_validFast,parallelFwdResult_res_41_valid,
    parallelFwdResult_res_41_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r42_data = _parallelFwdResult_rT_168[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r42_valid = _parallelFwdResult_rT_168[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r42_validFast = _parallelFwdResult_rT_168[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_42_validFast = parallelFwdResult_l_42_validFast | parallelFwdResult_r42_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_42_valid = parallelFwdResult_l_42_valid | parallelFwdResult_r42_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_42_data = parallelFwdResult_r42_valid ? parallelFwdResult_r42_data :
    parallelFwdResult_l_42_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_172 = {parallelFwdResult_res_40_validFast,parallelFwdResult_res_40_valid,
    parallelFwdResult_res_40_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_43_data = _parallelFwdResult_l_T_172[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_43_valid = _parallelFwdResult_l_T_172[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_43_validFast = _parallelFwdResult_l_T_172[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_172 = {parallelFwdResult_res_42_validFast,parallelFwdResult_res_42_valid,
    parallelFwdResult_res_42_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r43_data = _parallelFwdResult_rT_172[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r43_valid = _parallelFwdResult_rT_172[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r43_validFast = _parallelFwdResult_rT_172[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_43_validFast = parallelFwdResult_l_43_validFast | parallelFwdResult_r43_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_43_valid = parallelFwdResult_l_43_valid | parallelFwdResult_r43_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_43_data = parallelFwdResult_r43_valid ? parallelFwdResult_r43_data :
    parallelFwdResult_l_43_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_176 = {parallelFwdResult_res_38_validFast,parallelFwdResult_res_38_valid,
    parallelFwdResult_res_38_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_44_data = _parallelFwdResult_l_T_176[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_44_valid = _parallelFwdResult_l_T_176[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_44_validFast = _parallelFwdResult_l_T_176[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_176 = {parallelFwdResult_res_43_validFast,parallelFwdResult_res_43_valid,
    parallelFwdResult_res_43_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r44_data = _parallelFwdResult_rT_176[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r44_valid = _parallelFwdResult_rT_176[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r44_validFast = _parallelFwdResult_rT_176[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_44_validFast = parallelFwdResult_l_44_validFast | parallelFwdResult_r44_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_44_valid = parallelFwdResult_l_44_valid | parallelFwdResult_r44_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_44_data = parallelFwdResult_r44_valid ? parallelFwdResult_r44_data :
    parallelFwdResult_l_44_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_l_T_180 = {parallelFwdResult_res_33_validFast,parallelFwdResult_res_33_valid,
    parallelFwdResult_res_33_data}; // @[StoreQueueData.scala 223:27]
  wire [7:0] parallelFwdResult_l_45_data = _parallelFwdResult_l_T_180[7:0]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_45_valid = _parallelFwdResult_l_T_180[8]; // @[StoreQueueData.scala 223:27]
  wire  parallelFwdResult_l_45_validFast = _parallelFwdResult_l_T_180[9]; // @[StoreQueueData.scala 223:27]
  wire [9:0] _parallelFwdResult_rT_180 = {parallelFwdResult_res_44_validFast,parallelFwdResult_res_44_valid,
    parallelFwdResult_res_44_data}; // @[StoreQueueData.scala 224:27]
  wire [7:0] parallelFwdResult_r45_data = _parallelFwdResult_rT_180[7:0]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r45_valid = _parallelFwdResult_rT_180[8]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_r45_validFast = _parallelFwdResult_rT_180[9]; // @[StoreQueueData.scala 224:27]
  wire  parallelFwdResult_res_45_validFast = parallelFwdResult_l_45_validFast | parallelFwdResult_r45_validFast; // @[StoreQueueData.scala 226:38]
  wire  parallelFwdResult_res_45_valid = parallelFwdResult_l_45_valid | parallelFwdResult_r45_valid; // @[StoreQueueData.scala 227:30]
  wire [7:0] parallelFwdResult_res_45_data = parallelFwdResult_r45_valid ? parallelFwdResult_r45_data :
    parallelFwdResult_l_45_data; // @[StoreQueueData.scala 229:24]
  wire [9:0] _parallelFwdResult_T_4 = {parallelFwdResult_res_45_validFast,parallelFwdResult_res_45_valid,
    parallelFwdResult_res_45_data}; // @[StoreQueueData.scala 249:65]
  assign io_rdata_0_valid = 4'hb == io_rdata_0_REG ? data_11_valid : _GEN_90; // @[StoreQueueData.scala 192:{19,19}]
  assign io_rdata_0_data = 4'hb == io_rdata_0_REG ? data_11_data : _GEN_102; // @[StoreQueueData.scala 192:{19,19}]
  assign io_rdata_1_valid = 4'hb == io_rdata_1_REG ? data_11_valid : _GEN_114; // @[StoreQueueData.scala 192:{19,19}]
  assign io_rdata_1_data = 4'hb == io_rdata_1_REG ? data_11_data : _GEN_126; // @[StoreQueueData.scala 192:{19,19}]
  assign io_forwardValid_0 = _parallelFwdResult_T[8]; // @[StoreQueueData.scala 249:65]
  assign io_forwardValid_1 = _parallelFwdResult_T_4[8]; // @[StoreQueueData.scala 249:65]
  assign io_forwardData_0 = _parallelFwdResult_T[7:0]; // @[StoreQueueData.scala 249:65]
  assign io_forwardData_1 = _parallelFwdResult_T_4[7:0]; // @[StoreQueueData.scala 249:65]
  always @(posedge clock) begin
    if (mask_s1_wen_1_bank_0 & mask_s1_waddr_1_bank_0 == 2'h0) begin // @[StoreQueueData.scala 179:45]
      data_0_valid <= mask_s1_wdata_1_bank_0; // @[StoreQueueData.scala 180:50]
    end else if (mask_s1_wen_0_bank_0 & mask_s1_waddr_0_bank_0 == 2'h0) begin // @[StoreQueueData.scala 179:45]
      data_0_valid <= mask_s1_wdata_0_bank_0; // @[StoreQueueData.scala 180:50]
    end
    if (data_s1_wen_1_bank_0 & data_s1_waddr_1_bank_0 == 2'h0) begin // @[StoreQueueData.scala 155:45]
      data_0_data <= data_s1_wdata_1_bank_0; // @[StoreQueueData.scala 156:49]
    end else if (data_s1_wen_0_bank_0 & data_s1_waddr_0_bank_0 == 2'h0) begin // @[StoreQueueData.scala 155:45]
      data_0_data <= data_s1_wdata_0_bank_0; // @[StoreQueueData.scala 156:49]
    end
    if (mask_s1_wen_1_bank_1 & mask_s1_waddr_1_bank_1 == 2'h0) begin // @[StoreQueueData.scala 179:45]
      data_1_valid <= mask_s1_wdata_1_bank_1; // @[StoreQueueData.scala 180:50]
    end else if (mask_s1_wen_0_bank_1 & mask_s1_waddr_0_bank_1 == 2'h0) begin // @[StoreQueueData.scala 179:45]
      data_1_valid <= mask_s1_wdata_0_bank_1; // @[StoreQueueData.scala 180:50]
    end
    if (data_s1_wen_1_bank_1 & data_s1_waddr_1_bank_1 == 2'h0) begin // @[StoreQueueData.scala 155:45]
      data_1_data <= data_s1_wdata_1_bank_1; // @[StoreQueueData.scala 156:49]
    end else if (data_s1_wen_0_bank_1 & data_s1_waddr_0_bank_1 == 2'h0) begin // @[StoreQueueData.scala 155:45]
      data_1_data <= data_s1_wdata_0_bank_1; // @[StoreQueueData.scala 156:49]
    end
    if (mask_s1_wen_1_bank_2 & mask_s1_waddr_1_bank_2 == 2'h0) begin // @[StoreQueueData.scala 179:45]
      data_2_valid <= mask_s1_wdata_1_bank_2; // @[StoreQueueData.scala 180:50]
    end else if (mask_s1_wen_0_bank_2 & mask_s1_waddr_0_bank_2 == 2'h0) begin // @[StoreQueueData.scala 179:45]
      data_2_valid <= mask_s1_wdata_0_bank_2; // @[StoreQueueData.scala 180:50]
    end
    if (data_s1_wen_1_bank_2 & data_s1_waddr_1_bank_2 == 2'h0) begin // @[StoreQueueData.scala 155:45]
      data_2_data <= data_s1_wdata_1_bank_2; // @[StoreQueueData.scala 156:49]
    end else if (data_s1_wen_0_bank_2 & data_s1_waddr_0_bank_2 == 2'h0) begin // @[StoreQueueData.scala 155:45]
      data_2_data <= data_s1_wdata_0_bank_2; // @[StoreQueueData.scala 156:49]
    end
    if (mask_s1_wen_1_bank_3 & mask_s1_waddr_1_bank_3 == 2'h0) begin // @[StoreQueueData.scala 179:45]
      data_3_valid <= mask_s1_wdata_1_bank_3; // @[StoreQueueData.scala 180:50]
    end else if (mask_s1_wen_0_bank_3 & mask_s1_waddr_0_bank_3 == 2'h0) begin // @[StoreQueueData.scala 179:45]
      data_3_valid <= mask_s1_wdata_0_bank_3; // @[StoreQueueData.scala 180:50]
    end
    if (data_s1_wen_1_bank_3 & data_s1_waddr_1_bank_3 == 2'h0) begin // @[StoreQueueData.scala 155:45]
      data_3_data <= data_s1_wdata_1_bank_3; // @[StoreQueueData.scala 156:49]
    end else if (data_s1_wen_0_bank_3 & data_s1_waddr_0_bank_3 == 2'h0) begin // @[StoreQueueData.scala 155:45]
      data_3_data <= data_s1_wdata_0_bank_3; // @[StoreQueueData.scala 156:49]
    end
    if (mask_s1_wen_1_bank_0 & mask_s1_waddr_1_bank_0 == 2'h1) begin // @[StoreQueueData.scala 179:45]
      data_4_valid <= mask_s1_wdata_1_bank_0; // @[StoreQueueData.scala 180:50]
    end else if (mask_s1_wen_0_bank_0 & mask_s1_waddr_0_bank_0 == 2'h1) begin // @[StoreQueueData.scala 179:45]
      data_4_valid <= mask_s1_wdata_0_bank_0; // @[StoreQueueData.scala 180:50]
    end
    if (data_s1_wen_1_bank_0 & data_s1_waddr_1_bank_0 == 2'h1) begin // @[StoreQueueData.scala 155:45]
      data_4_data <= data_s1_wdata_1_bank_0; // @[StoreQueueData.scala 156:49]
    end else if (data_s1_wen_0_bank_0 & data_s1_waddr_0_bank_0 == 2'h1) begin // @[StoreQueueData.scala 155:45]
      data_4_data <= data_s1_wdata_0_bank_0; // @[StoreQueueData.scala 156:49]
    end
    if (mask_s1_wen_1_bank_1 & mask_s1_waddr_1_bank_1 == 2'h1) begin // @[StoreQueueData.scala 179:45]
      data_5_valid <= mask_s1_wdata_1_bank_1; // @[StoreQueueData.scala 180:50]
    end else if (mask_s1_wen_0_bank_1 & mask_s1_waddr_0_bank_1 == 2'h1) begin // @[StoreQueueData.scala 179:45]
      data_5_valid <= mask_s1_wdata_0_bank_1; // @[StoreQueueData.scala 180:50]
    end
    if (data_s1_wen_1_bank_1 & data_s1_waddr_1_bank_1 == 2'h1) begin // @[StoreQueueData.scala 155:45]
      data_5_data <= data_s1_wdata_1_bank_1; // @[StoreQueueData.scala 156:49]
    end else if (data_s1_wen_0_bank_1 & data_s1_waddr_0_bank_1 == 2'h1) begin // @[StoreQueueData.scala 155:45]
      data_5_data <= data_s1_wdata_0_bank_1; // @[StoreQueueData.scala 156:49]
    end
    if (mask_s1_wen_1_bank_2 & mask_s1_waddr_1_bank_2 == 2'h1) begin // @[StoreQueueData.scala 179:45]
      data_6_valid <= mask_s1_wdata_1_bank_2; // @[StoreQueueData.scala 180:50]
    end else if (mask_s1_wen_0_bank_2 & mask_s1_waddr_0_bank_2 == 2'h1) begin // @[StoreQueueData.scala 179:45]
      data_6_valid <= mask_s1_wdata_0_bank_2; // @[StoreQueueData.scala 180:50]
    end
    if (data_s1_wen_1_bank_2 & data_s1_waddr_1_bank_2 == 2'h1) begin // @[StoreQueueData.scala 155:45]
      data_6_data <= data_s1_wdata_1_bank_2; // @[StoreQueueData.scala 156:49]
    end else if (data_s1_wen_0_bank_2 & data_s1_waddr_0_bank_2 == 2'h1) begin // @[StoreQueueData.scala 155:45]
      data_6_data <= data_s1_wdata_0_bank_2; // @[StoreQueueData.scala 156:49]
    end
    if (mask_s1_wen_1_bank_3 & mask_s1_waddr_1_bank_3 == 2'h1) begin // @[StoreQueueData.scala 179:45]
      data_7_valid <= mask_s1_wdata_1_bank_3; // @[StoreQueueData.scala 180:50]
    end else if (mask_s1_wen_0_bank_3 & mask_s1_waddr_0_bank_3 == 2'h1) begin // @[StoreQueueData.scala 179:45]
      data_7_valid <= mask_s1_wdata_0_bank_3; // @[StoreQueueData.scala 180:50]
    end
    if (data_s1_wen_1_bank_3 & data_s1_waddr_1_bank_3 == 2'h1) begin // @[StoreQueueData.scala 155:45]
      data_7_data <= data_s1_wdata_1_bank_3; // @[StoreQueueData.scala 156:49]
    end else if (data_s1_wen_0_bank_3 & data_s1_waddr_0_bank_3 == 2'h1) begin // @[StoreQueueData.scala 155:45]
      data_7_data <= data_s1_wdata_0_bank_3; // @[StoreQueueData.scala 156:49]
    end
    if (mask_s1_wen_1_bank_0 & mask_s1_waddr_1_bank_0 == 2'h2) begin // @[StoreQueueData.scala 179:45]
      data_8_valid <= mask_s1_wdata_1_bank_0; // @[StoreQueueData.scala 180:50]
    end else if (mask_s1_wen_0_bank_0 & mask_s1_waddr_0_bank_0 == 2'h2) begin // @[StoreQueueData.scala 179:45]
      data_8_valid <= mask_s1_wdata_0_bank_0; // @[StoreQueueData.scala 180:50]
    end
    if (data_s1_wen_1_bank_0 & data_s1_waddr_1_bank_0 == 2'h2) begin // @[StoreQueueData.scala 155:45]
      data_8_data <= data_s1_wdata_1_bank_0; // @[StoreQueueData.scala 156:49]
    end else if (data_s1_wen_0_bank_0 & data_s1_waddr_0_bank_0 == 2'h2) begin // @[StoreQueueData.scala 155:45]
      data_8_data <= data_s1_wdata_0_bank_0; // @[StoreQueueData.scala 156:49]
    end
    if (mask_s1_wen_1_bank_1 & mask_s1_waddr_1_bank_1 == 2'h2) begin // @[StoreQueueData.scala 179:45]
      data_9_valid <= mask_s1_wdata_1_bank_1; // @[StoreQueueData.scala 180:50]
    end else if (mask_s1_wen_0_bank_1 & mask_s1_waddr_0_bank_1 == 2'h2) begin // @[StoreQueueData.scala 179:45]
      data_9_valid <= mask_s1_wdata_0_bank_1; // @[StoreQueueData.scala 180:50]
    end
    if (data_s1_wen_1_bank_1 & data_s1_waddr_1_bank_1 == 2'h2) begin // @[StoreQueueData.scala 155:45]
      data_9_data <= data_s1_wdata_1_bank_1; // @[StoreQueueData.scala 156:49]
    end else if (data_s1_wen_0_bank_1 & data_s1_waddr_0_bank_1 == 2'h2) begin // @[StoreQueueData.scala 155:45]
      data_9_data <= data_s1_wdata_0_bank_1; // @[StoreQueueData.scala 156:49]
    end
    if (mask_s1_wen_1_bank_2 & mask_s1_waddr_1_bank_2 == 2'h2) begin // @[StoreQueueData.scala 179:45]
      data_10_valid <= mask_s1_wdata_1_bank_2; // @[StoreQueueData.scala 180:50]
    end else if (mask_s1_wen_0_bank_2 & mask_s1_waddr_0_bank_2 == 2'h2) begin // @[StoreQueueData.scala 179:45]
      data_10_valid <= mask_s1_wdata_0_bank_2; // @[StoreQueueData.scala 180:50]
    end
    if (data_s1_wen_1_bank_2 & data_s1_waddr_1_bank_2 == 2'h2) begin // @[StoreQueueData.scala 155:45]
      data_10_data <= data_s1_wdata_1_bank_2; // @[StoreQueueData.scala 156:49]
    end else if (data_s1_wen_0_bank_2 & data_s1_waddr_0_bank_2 == 2'h2) begin // @[StoreQueueData.scala 155:45]
      data_10_data <= data_s1_wdata_0_bank_2; // @[StoreQueueData.scala 156:49]
    end
    if (mask_s1_wen_1_bank_3 & mask_s1_waddr_1_bank_3 == 2'h2) begin // @[StoreQueueData.scala 179:45]
      data_11_valid <= mask_s1_wdata_1_bank_3; // @[StoreQueueData.scala 180:50]
    end else if (mask_s1_wen_0_bank_3 & mask_s1_waddr_0_bank_3 == 2'h2) begin // @[StoreQueueData.scala 179:45]
      data_11_valid <= mask_s1_wdata_0_bank_3; // @[StoreQueueData.scala 180:50]
    end
    if (data_s1_wen_1_bank_3 & data_s1_waddr_1_bank_3 == 2'h2) begin // @[StoreQueueData.scala 155:45]
      data_11_data <= data_s1_wdata_1_bank_3; // @[StoreQueueData.scala 156:49]
    end else if (data_s1_wen_0_bank_3 & data_s1_waddr_0_bank_3 == 2'h2) begin // @[StoreQueueData.scala 155:45]
      data_11_data <= data_s1_wdata_0_bank_3; // @[StoreQueueData.scala 156:49]
    end
    data_s1_wen_0_bank_0 <= io_data_wen_0 & io_data_waddr_0[1:0] == 2'h0; // @[StoreQueueData.scala 149:35]
    if (data_s0_wen_0_bank_0) begin // @[Reg.scala 17:18]
      data_s1_wdata_0_bank_0 <= io_data_wdata_0; // @[Reg.scala 17:22]
    end
    if (data_s0_wen_0_bank_0) begin // @[Reg.scala 17:18]
      data_s1_waddr_0_bank_0 <= io_data_waddr_0[3:2]; // @[Reg.scala 17:22]
    end
    data_s1_wen_0_bank_1 <= io_data_wen_0 & io_data_waddr_0[1:0] == 2'h1; // @[StoreQueueData.scala 149:35]
    if (data_s0_wen_0_bank_1) begin // @[Reg.scala 17:18]
      data_s1_wdata_0_bank_1 <= io_data_wdata_0; // @[Reg.scala 17:22]
    end
    if (data_s0_wen_0_bank_1) begin // @[Reg.scala 17:18]
      data_s1_waddr_0_bank_1 <= io_data_waddr_0[3:2]; // @[Reg.scala 17:22]
    end
    data_s1_wen_0_bank_2 <= io_data_wen_0 & io_data_waddr_0[1:0] == 2'h2; // @[StoreQueueData.scala 149:35]
    if (data_s0_wen_0_bank_2) begin // @[Reg.scala 17:18]
      data_s1_wdata_0_bank_2 <= io_data_wdata_0; // @[Reg.scala 17:22]
    end
    if (data_s0_wen_0_bank_2) begin // @[Reg.scala 17:18]
      data_s1_waddr_0_bank_2 <= io_data_waddr_0[3:2]; // @[Reg.scala 17:22]
    end
    data_s1_wen_0_bank_3 <= io_data_wen_0 & io_data_waddr_0[1:0] == 2'h3; // @[StoreQueueData.scala 149:35]
    if (data_s0_wen_0_bank_3) begin // @[Reg.scala 17:18]
      data_s1_wdata_0_bank_3 <= io_data_wdata_0; // @[Reg.scala 17:22]
    end
    if (data_s0_wen_0_bank_3) begin // @[Reg.scala 17:18]
      data_s1_waddr_0_bank_3 <= io_data_waddr_0[3:2]; // @[Reg.scala 17:22]
    end
    data_s1_wen_1_bank_0 <= io_data_wen_1 & io_data_waddr_1[1:0] == 2'h0; // @[StoreQueueData.scala 149:35]
    if (data_s0_wen_1_bank_0) begin // @[Reg.scala 17:18]
      data_s1_wdata_1_bank_0 <= io_data_wdata_1; // @[Reg.scala 17:22]
    end
    if (data_s0_wen_1_bank_0) begin // @[Reg.scala 17:18]
      data_s1_waddr_1_bank_0 <= io_data_waddr_1[3:2]; // @[Reg.scala 17:22]
    end
    data_s1_wen_1_bank_1 <= io_data_wen_1 & io_data_waddr_1[1:0] == 2'h1; // @[StoreQueueData.scala 149:35]
    if (data_s0_wen_1_bank_1) begin // @[Reg.scala 17:18]
      data_s1_wdata_1_bank_1 <= io_data_wdata_1; // @[Reg.scala 17:22]
    end
    if (data_s0_wen_1_bank_1) begin // @[Reg.scala 17:18]
      data_s1_waddr_1_bank_1 <= io_data_waddr_1[3:2]; // @[Reg.scala 17:22]
    end
    data_s1_wen_1_bank_2 <= io_data_wen_1 & io_data_waddr_1[1:0] == 2'h2; // @[StoreQueueData.scala 149:35]
    if (data_s0_wen_1_bank_2) begin // @[Reg.scala 17:18]
      data_s1_wdata_1_bank_2 <= io_data_wdata_1; // @[Reg.scala 17:22]
    end
    if (data_s0_wen_1_bank_2) begin // @[Reg.scala 17:18]
      data_s1_waddr_1_bank_2 <= io_data_waddr_1[3:2]; // @[Reg.scala 17:22]
    end
    data_s1_wen_1_bank_3 <= io_data_wen_1 & io_data_waddr_1[1:0] == 2'h3; // @[StoreQueueData.scala 149:35]
    if (data_s0_wen_1_bank_3) begin // @[Reg.scala 17:18]
      data_s1_wdata_1_bank_3 <= io_data_wdata_1; // @[Reg.scala 17:22]
    end
    if (data_s0_wen_1_bank_3) begin // @[Reg.scala 17:18]
      data_s1_waddr_1_bank_3 <= io_data_waddr_1[3:2]; // @[Reg.scala 17:22]
    end
    mask_s1_wen_0_bank_0 <= io_mask_wen_0 & io_mask_waddr_0[1:0] == 2'h0; // @[StoreQueueData.scala 173:35]
    if (mask_s0_wen_0_bank_0) begin // @[Reg.scala 17:18]
      mask_s1_wdata_0_bank_0 <= io_mask_wdata_0; // @[Reg.scala 17:22]
    end
    if (mask_s0_wen_0_bank_0) begin // @[Reg.scala 17:18]
      mask_s1_waddr_0_bank_0 <= io_mask_waddr_0[3:2]; // @[Reg.scala 17:22]
    end
    mask_s1_wen_0_bank_1 <= io_mask_wen_0 & io_mask_waddr_0[1:0] == 2'h1; // @[StoreQueueData.scala 173:35]
    if (mask_s0_wen_0_bank_1) begin // @[Reg.scala 17:18]
      mask_s1_wdata_0_bank_1 <= io_mask_wdata_0; // @[Reg.scala 17:22]
    end
    if (mask_s0_wen_0_bank_1) begin // @[Reg.scala 17:18]
      mask_s1_waddr_0_bank_1 <= io_mask_waddr_0[3:2]; // @[Reg.scala 17:22]
    end
    mask_s1_wen_0_bank_2 <= io_mask_wen_0 & io_mask_waddr_0[1:0] == 2'h2; // @[StoreQueueData.scala 173:35]
    if (mask_s0_wen_0_bank_2) begin // @[Reg.scala 17:18]
      mask_s1_wdata_0_bank_2 <= io_mask_wdata_0; // @[Reg.scala 17:22]
    end
    if (mask_s0_wen_0_bank_2) begin // @[Reg.scala 17:18]
      mask_s1_waddr_0_bank_2 <= io_mask_waddr_0[3:2]; // @[Reg.scala 17:22]
    end
    mask_s1_wen_0_bank_3 <= io_mask_wen_0 & io_mask_waddr_0[1:0] == 2'h3; // @[StoreQueueData.scala 173:35]
    if (mask_s0_wen_0_bank_3) begin // @[Reg.scala 17:18]
      mask_s1_wdata_0_bank_3 <= io_mask_wdata_0; // @[Reg.scala 17:22]
    end
    if (mask_s0_wen_0_bank_3) begin // @[Reg.scala 17:18]
      mask_s1_waddr_0_bank_3 <= io_mask_waddr_0[3:2]; // @[Reg.scala 17:22]
    end
    mask_s1_wen_1_bank_0 <= io_mask_wen_1 & io_mask_waddr_1[1:0] == 2'h0; // @[StoreQueueData.scala 173:35]
    if (mask_s0_wen_1_bank_0) begin // @[Reg.scala 17:18]
      mask_s1_wdata_1_bank_0 <= io_mask_wdata_1; // @[Reg.scala 17:22]
    end
    if (mask_s0_wen_1_bank_0) begin // @[Reg.scala 17:18]
      mask_s1_waddr_1_bank_0 <= io_mask_waddr_1[3:2]; // @[Reg.scala 17:22]
    end
    mask_s1_wen_1_bank_1 <= io_mask_wen_1 & io_mask_waddr_1[1:0] == 2'h1; // @[StoreQueueData.scala 173:35]
    if (mask_s0_wen_1_bank_1) begin // @[Reg.scala 17:18]
      mask_s1_wdata_1_bank_1 <= io_mask_wdata_1; // @[Reg.scala 17:22]
    end
    if (mask_s0_wen_1_bank_1) begin // @[Reg.scala 17:18]
      mask_s1_waddr_1_bank_1 <= io_mask_waddr_1[3:2]; // @[Reg.scala 17:22]
    end
    mask_s1_wen_1_bank_2 <= io_mask_wen_1 & io_mask_waddr_1[1:0] == 2'h2; // @[StoreQueueData.scala 173:35]
    if (mask_s0_wen_1_bank_2) begin // @[Reg.scala 17:18]
      mask_s1_wdata_1_bank_2 <= io_mask_wdata_1; // @[Reg.scala 17:22]
    end
    if (mask_s0_wen_1_bank_2) begin // @[Reg.scala 17:18]
      mask_s1_waddr_1_bank_2 <= io_mask_waddr_1[3:2]; // @[Reg.scala 17:22]
    end
    mask_s1_wen_1_bank_3 <= io_mask_wen_1 & io_mask_waddr_1[1:0] == 2'h3; // @[StoreQueueData.scala 173:35]
    if (mask_s0_wen_1_bank_3) begin // @[Reg.scala 17:18]
      mask_s1_wdata_1_bank_3 <= io_mask_wdata_1; // @[Reg.scala 17:22]
    end
    if (mask_s0_wen_1_bank_3) begin // @[Reg.scala 17:18]
      mask_s1_waddr_1_bank_3 <= io_mask_waddr_1[3:2]; // @[Reg.scala 17:22]
    end
    io_rdata_0_REG <= io_raddr_0; // @[StoreQueueData.scala 192:34]
    io_rdata_1_REG <= io_raddr_1; // @[StoreQueueData.scala 192:34]
    needCheck0Reg <= io_needForward_0_0[0]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg <= io_needForward_0_1[0]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_1 <= io_needForward_0_0[1]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_1 <= io_needForward_0_1[1]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_2 <= io_needForward_0_0[2]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_2 <= io_needForward_0_1[2]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_3 <= io_needForward_0_0[3]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_3 <= io_needForward_0_1[3]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_4 <= io_needForward_0_0[4]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_4 <= io_needForward_0_1[4]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_5 <= io_needForward_0_0[5]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_5 <= io_needForward_0_1[5]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_6 <= io_needForward_0_0[6]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_6 <= io_needForward_0_1[6]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_7 <= io_needForward_0_0[7]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_7 <= io_needForward_0_1[7]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_8 <= io_needForward_0_0[8]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_8 <= io_needForward_0_1[8]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_9 <= io_needForward_0_0[9]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_9 <= io_needForward_0_1[9]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_10 <= io_needForward_0_0[10]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_10 <= io_needForward_0_1[10]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_11 <= io_needForward_0_0[11]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_11 <= io_needForward_0_1[11]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_12 <= io_needForward_1_0[0]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_12 <= io_needForward_1_1[0]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_13 <= io_needForward_1_0[1]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_13 <= io_needForward_1_1[1]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_14 <= io_needForward_1_0[2]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_14 <= io_needForward_1_1[2]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_15 <= io_needForward_1_0[3]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_15 <= io_needForward_1_1[3]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_16 <= io_needForward_1_0[4]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_16 <= io_needForward_1_1[4]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_17 <= io_needForward_1_0[5]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_17 <= io_needForward_1_1[5]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_18 <= io_needForward_1_0[6]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_18 <= io_needForward_1_1[6]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_19 <= io_needForward_1_0[7]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_19 <= io_needForward_1_1[7]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_20 <= io_needForward_1_0[8]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_20 <= io_needForward_1_1[8]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_21 <= io_needForward_1_0[9]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_21 <= io_needForward_1_1[9]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_22 <= io_needForward_1_0[10]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_22 <= io_needForward_1_1[10]; // @[StoreQueueData.scala 236:44]
    needCheck0Reg_23 <= io_needForward_1_0[11]; // @[StoreQueueData.scala 235:44]
    needCheck1Reg_23 <= io_needForward_1_1[11]; // @[StoreQueueData.scala 236:44]
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
  data_0_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  data_0_data = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  data_1_valid = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  data_1_data = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  data_2_valid = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  data_2_data = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  data_3_valid = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  data_3_data = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  data_4_valid = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  data_4_data = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  data_5_valid = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  data_5_data = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  data_6_valid = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  data_6_data = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  data_7_valid = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  data_7_data = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  data_8_valid = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  data_8_data = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  data_9_valid = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  data_9_data = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  data_10_valid = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  data_10_data = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  data_11_valid = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  data_11_data = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  data_s1_wen_0_bank_0 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  data_s1_wdata_0_bank_0 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  data_s1_waddr_0_bank_0 = _RAND_26[1:0];
  _RAND_27 = {1{`RANDOM}};
  data_s1_wen_0_bank_1 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  data_s1_wdata_0_bank_1 = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  data_s1_waddr_0_bank_1 = _RAND_29[1:0];
  _RAND_30 = {1{`RANDOM}};
  data_s1_wen_0_bank_2 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  data_s1_wdata_0_bank_2 = _RAND_31[7:0];
  _RAND_32 = {1{`RANDOM}};
  data_s1_waddr_0_bank_2 = _RAND_32[1:0];
  _RAND_33 = {1{`RANDOM}};
  data_s1_wen_0_bank_3 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  data_s1_wdata_0_bank_3 = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  data_s1_waddr_0_bank_3 = _RAND_35[1:0];
  _RAND_36 = {1{`RANDOM}};
  data_s1_wen_1_bank_0 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  data_s1_wdata_1_bank_0 = _RAND_37[7:0];
  _RAND_38 = {1{`RANDOM}};
  data_s1_waddr_1_bank_0 = _RAND_38[1:0];
  _RAND_39 = {1{`RANDOM}};
  data_s1_wen_1_bank_1 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  data_s1_wdata_1_bank_1 = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  data_s1_waddr_1_bank_1 = _RAND_41[1:0];
  _RAND_42 = {1{`RANDOM}};
  data_s1_wen_1_bank_2 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  data_s1_wdata_1_bank_2 = _RAND_43[7:0];
  _RAND_44 = {1{`RANDOM}};
  data_s1_waddr_1_bank_2 = _RAND_44[1:0];
  _RAND_45 = {1{`RANDOM}};
  data_s1_wen_1_bank_3 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  data_s1_wdata_1_bank_3 = _RAND_46[7:0];
  _RAND_47 = {1{`RANDOM}};
  data_s1_waddr_1_bank_3 = _RAND_47[1:0];
  _RAND_48 = {1{`RANDOM}};
  mask_s1_wen_0_bank_0 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  mask_s1_wdata_0_bank_0 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  mask_s1_waddr_0_bank_0 = _RAND_50[1:0];
  _RAND_51 = {1{`RANDOM}};
  mask_s1_wen_0_bank_1 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  mask_s1_wdata_0_bank_1 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  mask_s1_waddr_0_bank_1 = _RAND_53[1:0];
  _RAND_54 = {1{`RANDOM}};
  mask_s1_wen_0_bank_2 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  mask_s1_wdata_0_bank_2 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  mask_s1_waddr_0_bank_2 = _RAND_56[1:0];
  _RAND_57 = {1{`RANDOM}};
  mask_s1_wen_0_bank_3 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  mask_s1_wdata_0_bank_3 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  mask_s1_waddr_0_bank_3 = _RAND_59[1:0];
  _RAND_60 = {1{`RANDOM}};
  mask_s1_wen_1_bank_0 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  mask_s1_wdata_1_bank_0 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  mask_s1_waddr_1_bank_0 = _RAND_62[1:0];
  _RAND_63 = {1{`RANDOM}};
  mask_s1_wen_1_bank_1 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  mask_s1_wdata_1_bank_1 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  mask_s1_waddr_1_bank_1 = _RAND_65[1:0];
  _RAND_66 = {1{`RANDOM}};
  mask_s1_wen_1_bank_2 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  mask_s1_wdata_1_bank_2 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  mask_s1_waddr_1_bank_2 = _RAND_68[1:0];
  _RAND_69 = {1{`RANDOM}};
  mask_s1_wen_1_bank_3 = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  mask_s1_wdata_1_bank_3 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  mask_s1_waddr_1_bank_3 = _RAND_71[1:0];
  _RAND_72 = {1{`RANDOM}};
  io_rdata_0_REG = _RAND_72[3:0];
  _RAND_73 = {1{`RANDOM}};
  io_rdata_1_REG = _RAND_73[3:0];
  _RAND_74 = {1{`RANDOM}};
  needCheck0Reg = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  needCheck1Reg = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  needCheck0Reg_1 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  needCheck1Reg_1 = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  needCheck0Reg_2 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  needCheck1Reg_2 = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  needCheck0Reg_3 = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  needCheck1Reg_3 = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  needCheck0Reg_4 = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  needCheck1Reg_4 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  needCheck0Reg_5 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  needCheck1Reg_5 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  needCheck0Reg_6 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  needCheck1Reg_6 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  needCheck0Reg_7 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  needCheck1Reg_7 = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  needCheck0Reg_8 = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  needCheck1Reg_8 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  needCheck0Reg_9 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  needCheck1Reg_9 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  needCheck0Reg_10 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  needCheck1Reg_10 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  needCheck0Reg_11 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  needCheck1Reg_11 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  needCheck0Reg_12 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  needCheck1Reg_12 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  needCheck0Reg_13 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  needCheck1Reg_13 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  needCheck0Reg_14 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  needCheck1Reg_14 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  needCheck0Reg_15 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  needCheck1Reg_15 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  needCheck0Reg_16 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  needCheck1Reg_16 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  needCheck0Reg_17 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  needCheck1Reg_17 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  needCheck0Reg_18 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  needCheck1Reg_18 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  needCheck0Reg_19 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  needCheck1Reg_19 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  needCheck0Reg_20 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  needCheck1Reg_20 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  needCheck0Reg_21 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  needCheck1Reg_21 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  needCheck0Reg_22 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  needCheck1Reg_22 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  needCheck0Reg_23 = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  needCheck1Reg_23 = _RAND_121[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

