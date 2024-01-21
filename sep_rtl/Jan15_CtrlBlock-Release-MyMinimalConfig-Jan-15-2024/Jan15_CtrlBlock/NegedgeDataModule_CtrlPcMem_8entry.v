module NegedgeDataModule_CtrlPcMem_8entry(
  input         clock,
  input  [2:0]  io_raddr_0,
  input  [2:0]  io_raddr_2,
  input  [2:0]  io_raddr_3,
  input  [2:0]  io_raddr_4,
  input  [2:0]  io_raddr_7,
  output [38:0] io_rdata_0_startAddr,
  output [38:0] io_rdata_0_nextLineAddr,
  output        io_rdata_0_isNextMask_0,
  output        io_rdata_0_isNextMask_1,
  output        io_rdata_0_isNextMask_2,
  output        io_rdata_0_isNextMask_3,
  output        io_rdata_0_isNextMask_4,
  output        io_rdata_0_isNextMask_5,
  output        io_rdata_0_isNextMask_6,
  output        io_rdata_0_isNextMask_7,
  output [38:0] io_rdata_2_startAddr,
  output [38:0] io_rdata_2_nextLineAddr,
  output        io_rdata_2_isNextMask_0,
  output        io_rdata_2_isNextMask_1,
  output        io_rdata_2_isNextMask_2,
  output        io_rdata_2_isNextMask_3,
  output        io_rdata_2_isNextMask_4,
  output        io_rdata_2_isNextMask_5,
  output        io_rdata_2_isNextMask_6,
  output        io_rdata_2_isNextMask_7,
  output [38:0] io_rdata_3_startAddr,
  output [38:0] io_rdata_3_nextLineAddr,
  output        io_rdata_3_isNextMask_0,
  output        io_rdata_3_isNextMask_1,
  output        io_rdata_3_isNextMask_2,
  output        io_rdata_3_isNextMask_3,
  output        io_rdata_3_isNextMask_4,
  output        io_rdata_3_isNextMask_5,
  output        io_rdata_3_isNextMask_6,
  output        io_rdata_3_isNextMask_7,
  output [38:0] io_rdata_4_startAddr,
  output [38:0] io_rdata_7_startAddr,
  output [38:0] io_rdata_7_nextLineAddr,
  output        io_rdata_7_isNextMask_0,
  output        io_rdata_7_isNextMask_1,
  output        io_rdata_7_isNextMask_2,
  output        io_rdata_7_isNextMask_3,
  output        io_rdata_7_isNextMask_4,
  output        io_rdata_7_isNextMask_5,
  output        io_rdata_7_isNextMask_6,
  output        io_rdata_7_isNextMask_7,
  input         io_wen_0,
  input  [2:0]  io_waddr_0,
  input  [38:0] io_wdata_0_startAddr,
  input  [38:0] io_wdata_0_nextLineAddr,
  input         io_wdata_0_isNextMask_0,
  input         io_wdata_0_isNextMask_1,
  input         io_wdata_0_isNextMask_2,
  input         io_wdata_0_isNextMask_3,
  input         io_wdata_0_isNextMask_4,
  input         io_wdata_0_isNextMask_5,
  input         io_wdata_0_isNextMask_6,
  input         io_wdata_0_isNextMask_7
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [63:0] _RAND_40;
  reg [63:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [63:0] _RAND_50;
  reg [63:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [63:0] _RAND_60;
  reg [63:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [63:0] _RAND_70;
  reg [63:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
`endif // RANDOMIZE_REG_INIT
  reg [38:0] data_0_startAddr; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_0_nextLineAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_isNextMask_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_isNextMask_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_isNextMask_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_isNextMask_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_isNextMask_4; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_isNextMask_5; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_isNextMask_6; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_isNextMask_7; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_1_startAddr; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_1_nextLineAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_isNextMask_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_isNextMask_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_isNextMask_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_isNextMask_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_isNextMask_4; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_isNextMask_5; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_isNextMask_6; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_isNextMask_7; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_2_startAddr; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_2_nextLineAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_isNextMask_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_isNextMask_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_isNextMask_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_isNextMask_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_isNextMask_4; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_isNextMask_5; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_isNextMask_6; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_isNextMask_7; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_3_startAddr; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_3_nextLineAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_isNextMask_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_isNextMask_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_isNextMask_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_isNextMask_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_isNextMask_4; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_isNextMask_5; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_isNextMask_6; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_isNextMask_7; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_4_startAddr; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_4_nextLineAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_isNextMask_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_isNextMask_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_isNextMask_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_isNextMask_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_isNextMask_4; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_isNextMask_5; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_isNextMask_6; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_isNextMask_7; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_5_startAddr; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_5_nextLineAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_isNextMask_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_isNextMask_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_isNextMask_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_isNextMask_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_isNextMask_4; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_isNextMask_5; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_isNextMask_6; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_isNextMask_7; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_6_startAddr; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_6_nextLineAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_isNextMask_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_isNextMask_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_isNextMask_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_isNextMask_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_isNextMask_4; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_isNextMask_5; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_isNextMask_6; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_isNextMask_7; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_7_startAddr; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_7_nextLineAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_isNextMask_0; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_isNextMask_1; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_isNextMask_2; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_isNextMask_3; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_isNextMask_4; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_isNextMask_5; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_isNextMask_6; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_isNextMask_7; // @[DataModuleTemplate.scala 168:17]
  wire  read_by_0 = io_wen_0 & io_waddr_0 == io_raddr_0; // @[DataModuleTemplate.scala 176:54]
  wire [7:0] addr_dec = 8'h1 << io_raddr_0; // @[OneHot.scala 64:12]
  wire  _io_rdata_0_T_37 = addr_dec[0] & data_0_isNextMask_0 | addr_dec[1] & data_1_isNextMask_0 | addr_dec[2] &
    data_2_isNextMask_0 | addr_dec[3] & data_3_isNextMask_0 | addr_dec[4] & data_4_isNextMask_0 | addr_dec[5] &
    data_5_isNextMask_0 | addr_dec[6] & data_6_isNextMask_0 | addr_dec[7] & data_7_isNextMask_0; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_52 = addr_dec[0] & data_0_isNextMask_1 | addr_dec[1] & data_1_isNextMask_1 | addr_dec[2] &
    data_2_isNextMask_1 | addr_dec[3] & data_3_isNextMask_1 | addr_dec[4] & data_4_isNextMask_1 | addr_dec[5] &
    data_5_isNextMask_1 | addr_dec[6] & data_6_isNextMask_1 | addr_dec[7] & data_7_isNextMask_1; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_67 = addr_dec[0] & data_0_isNextMask_2 | addr_dec[1] & data_1_isNextMask_2 | addr_dec[2] &
    data_2_isNextMask_2 | addr_dec[3] & data_3_isNextMask_2 | addr_dec[4] & data_4_isNextMask_2 | addr_dec[5] &
    data_5_isNextMask_2 | addr_dec[6] & data_6_isNextMask_2 | addr_dec[7] & data_7_isNextMask_2; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_82 = addr_dec[0] & data_0_isNextMask_3 | addr_dec[1] & data_1_isNextMask_3 | addr_dec[2] &
    data_2_isNextMask_3 | addr_dec[3] & data_3_isNextMask_3 | addr_dec[4] & data_4_isNextMask_3 | addr_dec[5] &
    data_5_isNextMask_3 | addr_dec[6] & data_6_isNextMask_3 | addr_dec[7] & data_7_isNextMask_3; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_97 = addr_dec[0] & data_0_isNextMask_4 | addr_dec[1] & data_1_isNextMask_4 | addr_dec[2] &
    data_2_isNextMask_4 | addr_dec[3] & data_3_isNextMask_4 | addr_dec[4] & data_4_isNextMask_4 | addr_dec[5] &
    data_5_isNextMask_4 | addr_dec[6] & data_6_isNextMask_4 | addr_dec[7] & data_7_isNextMask_4; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_112 = addr_dec[0] & data_0_isNextMask_5 | addr_dec[1] & data_1_isNextMask_5 | addr_dec[2] &
    data_2_isNextMask_5 | addr_dec[3] & data_3_isNextMask_5 | addr_dec[4] & data_4_isNextMask_5 | addr_dec[5] &
    data_5_isNextMask_5 | addr_dec[6] & data_6_isNextMask_5 | addr_dec[7] & data_7_isNextMask_5; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_127 = addr_dec[0] & data_0_isNextMask_6 | addr_dec[1] & data_1_isNextMask_6 | addr_dec[2] &
    data_2_isNextMask_6 | addr_dec[3] & data_3_isNextMask_6 | addr_dec[4] & data_4_isNextMask_6 | addr_dec[5] &
    data_5_isNextMask_6 | addr_dec[6] & data_6_isNextMask_6 | addr_dec[7] & data_7_isNextMask_6; // @[Mux.scala 27:73]
  wire  _io_rdata_0_T_142 = addr_dec[0] & data_0_isNextMask_7 | addr_dec[1] & data_1_isNextMask_7 | addr_dec[2] &
    data_2_isNextMask_7 | addr_dec[3] & data_3_isNextMask_7 | addr_dec[4] & data_4_isNextMask_7 | addr_dec[5] &
    data_5_isNextMask_7 | addr_dec[6] & data_6_isNextMask_7 | addr_dec[7] & data_7_isNextMask_7; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_143 = addr_dec[0] ? data_0_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_144 = addr_dec[1] ? data_1_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_145 = addr_dec[2] ? data_2_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_146 = addr_dec[3] ? data_3_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_147 = addr_dec[4] ? data_4_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_148 = addr_dec[5] ? data_5_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_149 = addr_dec[6] ? data_6_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_150 = addr_dec[7] ? data_7_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_151 = _io_rdata_0_T_143 | _io_rdata_0_T_144; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_152 = _io_rdata_0_T_151 | _io_rdata_0_T_145; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_153 = _io_rdata_0_T_152 | _io_rdata_0_T_146; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_154 = _io_rdata_0_T_153 | _io_rdata_0_T_147; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_155 = _io_rdata_0_T_154 | _io_rdata_0_T_148; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_156 = _io_rdata_0_T_155 | _io_rdata_0_T_149; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_157 = _io_rdata_0_T_156 | _io_rdata_0_T_150; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_158 = addr_dec[0] ? data_0_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_159 = addr_dec[1] ? data_1_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_160 = addr_dec[2] ? data_2_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_161 = addr_dec[3] ? data_3_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_162 = addr_dec[4] ? data_4_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_163 = addr_dec[5] ? data_5_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_164 = addr_dec[6] ? data_6_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_165 = addr_dec[7] ? data_7_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_166 = _io_rdata_0_T_158 | _io_rdata_0_T_159; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_167 = _io_rdata_0_T_166 | _io_rdata_0_T_160; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_168 = _io_rdata_0_T_167 | _io_rdata_0_T_161; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_169 = _io_rdata_0_T_168 | _io_rdata_0_T_162; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_170 = _io_rdata_0_T_169 | _io_rdata_0_T_163; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_171 = _io_rdata_0_T_170 | _io_rdata_0_T_164; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_0_T_172 = _io_rdata_0_T_171 | _io_rdata_0_T_165; // @[Mux.scala 27:73]
  wire  read_by_0_2 = io_wen_0 & io_waddr_0 == io_raddr_2; // @[DataModuleTemplate.scala 176:54]
  wire [7:0] addr_dec_2 = 8'h1 << io_raddr_2; // @[OneHot.scala 64:12]
  wire  _io_rdata_2_T_37 = addr_dec_2[0] & data_0_isNextMask_0 | addr_dec_2[1] & data_1_isNextMask_0 | addr_dec_2[2] &
    data_2_isNextMask_0 | addr_dec_2[3] & data_3_isNextMask_0 | addr_dec_2[4] & data_4_isNextMask_0 | addr_dec_2[5] &
    data_5_isNextMask_0 | addr_dec_2[6] & data_6_isNextMask_0 | addr_dec_2[7] & data_7_isNextMask_0; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_52 = addr_dec_2[0] & data_0_isNextMask_1 | addr_dec_2[1] & data_1_isNextMask_1 | addr_dec_2[2] &
    data_2_isNextMask_1 | addr_dec_2[3] & data_3_isNextMask_1 | addr_dec_2[4] & data_4_isNextMask_1 | addr_dec_2[5] &
    data_5_isNextMask_1 | addr_dec_2[6] & data_6_isNextMask_1 | addr_dec_2[7] & data_7_isNextMask_1; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_67 = addr_dec_2[0] & data_0_isNextMask_2 | addr_dec_2[1] & data_1_isNextMask_2 | addr_dec_2[2] &
    data_2_isNextMask_2 | addr_dec_2[3] & data_3_isNextMask_2 | addr_dec_2[4] & data_4_isNextMask_2 | addr_dec_2[5] &
    data_5_isNextMask_2 | addr_dec_2[6] & data_6_isNextMask_2 | addr_dec_2[7] & data_7_isNextMask_2; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_82 = addr_dec_2[0] & data_0_isNextMask_3 | addr_dec_2[1] & data_1_isNextMask_3 | addr_dec_2[2] &
    data_2_isNextMask_3 | addr_dec_2[3] & data_3_isNextMask_3 | addr_dec_2[4] & data_4_isNextMask_3 | addr_dec_2[5] &
    data_5_isNextMask_3 | addr_dec_2[6] & data_6_isNextMask_3 | addr_dec_2[7] & data_7_isNextMask_3; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_97 = addr_dec_2[0] & data_0_isNextMask_4 | addr_dec_2[1] & data_1_isNextMask_4 | addr_dec_2[2] &
    data_2_isNextMask_4 | addr_dec_2[3] & data_3_isNextMask_4 | addr_dec_2[4] & data_4_isNextMask_4 | addr_dec_2[5] &
    data_5_isNextMask_4 | addr_dec_2[6] & data_6_isNextMask_4 | addr_dec_2[7] & data_7_isNextMask_4; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_112 = addr_dec_2[0] & data_0_isNextMask_5 | addr_dec_2[1] & data_1_isNextMask_5 | addr_dec_2[2] &
    data_2_isNextMask_5 | addr_dec_2[3] & data_3_isNextMask_5 | addr_dec_2[4] & data_4_isNextMask_5 | addr_dec_2[5] &
    data_5_isNextMask_5 | addr_dec_2[6] & data_6_isNextMask_5 | addr_dec_2[7] & data_7_isNextMask_5; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_127 = addr_dec_2[0] & data_0_isNextMask_6 | addr_dec_2[1] & data_1_isNextMask_6 | addr_dec_2[2] &
    data_2_isNextMask_6 | addr_dec_2[3] & data_3_isNextMask_6 | addr_dec_2[4] & data_4_isNextMask_6 | addr_dec_2[5] &
    data_5_isNextMask_6 | addr_dec_2[6] & data_6_isNextMask_6 | addr_dec_2[7] & data_7_isNextMask_6; // @[Mux.scala 27:73]
  wire  _io_rdata_2_T_142 = addr_dec_2[0] & data_0_isNextMask_7 | addr_dec_2[1] & data_1_isNextMask_7 | addr_dec_2[2] &
    data_2_isNextMask_7 | addr_dec_2[3] & data_3_isNextMask_7 | addr_dec_2[4] & data_4_isNextMask_7 | addr_dec_2[5] &
    data_5_isNextMask_7 | addr_dec_2[6] & data_6_isNextMask_7 | addr_dec_2[7] & data_7_isNextMask_7; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_143 = addr_dec_2[0] ? data_0_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_144 = addr_dec_2[1] ? data_1_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_145 = addr_dec_2[2] ? data_2_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_146 = addr_dec_2[3] ? data_3_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_147 = addr_dec_2[4] ? data_4_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_148 = addr_dec_2[5] ? data_5_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_149 = addr_dec_2[6] ? data_6_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_150 = addr_dec_2[7] ? data_7_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_151 = _io_rdata_2_T_143 | _io_rdata_2_T_144; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_152 = _io_rdata_2_T_151 | _io_rdata_2_T_145; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_153 = _io_rdata_2_T_152 | _io_rdata_2_T_146; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_154 = _io_rdata_2_T_153 | _io_rdata_2_T_147; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_155 = _io_rdata_2_T_154 | _io_rdata_2_T_148; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_156 = _io_rdata_2_T_155 | _io_rdata_2_T_149; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_157 = _io_rdata_2_T_156 | _io_rdata_2_T_150; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_158 = addr_dec_2[0] ? data_0_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_159 = addr_dec_2[1] ? data_1_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_160 = addr_dec_2[2] ? data_2_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_161 = addr_dec_2[3] ? data_3_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_162 = addr_dec_2[4] ? data_4_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_163 = addr_dec_2[5] ? data_5_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_164 = addr_dec_2[6] ? data_6_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_165 = addr_dec_2[7] ? data_7_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_166 = _io_rdata_2_T_158 | _io_rdata_2_T_159; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_167 = _io_rdata_2_T_166 | _io_rdata_2_T_160; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_168 = _io_rdata_2_T_167 | _io_rdata_2_T_161; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_169 = _io_rdata_2_T_168 | _io_rdata_2_T_162; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_170 = _io_rdata_2_T_169 | _io_rdata_2_T_163; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_171 = _io_rdata_2_T_170 | _io_rdata_2_T_164; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_2_T_172 = _io_rdata_2_T_171 | _io_rdata_2_T_165; // @[Mux.scala 27:73]
  wire  read_by_0_3 = io_wen_0 & io_waddr_0 == io_raddr_3; // @[DataModuleTemplate.scala 176:54]
  wire [7:0] addr_dec_3 = 8'h1 << io_raddr_3; // @[OneHot.scala 64:12]
  wire  _io_rdata_3_T_37 = addr_dec_3[0] & data_0_isNextMask_0 | addr_dec_3[1] & data_1_isNextMask_0 | addr_dec_3[2] &
    data_2_isNextMask_0 | addr_dec_3[3] & data_3_isNextMask_0 | addr_dec_3[4] & data_4_isNextMask_0 | addr_dec_3[5] &
    data_5_isNextMask_0 | addr_dec_3[6] & data_6_isNextMask_0 | addr_dec_3[7] & data_7_isNextMask_0; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_52 = addr_dec_3[0] & data_0_isNextMask_1 | addr_dec_3[1] & data_1_isNextMask_1 | addr_dec_3[2] &
    data_2_isNextMask_1 | addr_dec_3[3] & data_3_isNextMask_1 | addr_dec_3[4] & data_4_isNextMask_1 | addr_dec_3[5] &
    data_5_isNextMask_1 | addr_dec_3[6] & data_6_isNextMask_1 | addr_dec_3[7] & data_7_isNextMask_1; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_67 = addr_dec_3[0] & data_0_isNextMask_2 | addr_dec_3[1] & data_1_isNextMask_2 | addr_dec_3[2] &
    data_2_isNextMask_2 | addr_dec_3[3] & data_3_isNextMask_2 | addr_dec_3[4] & data_4_isNextMask_2 | addr_dec_3[5] &
    data_5_isNextMask_2 | addr_dec_3[6] & data_6_isNextMask_2 | addr_dec_3[7] & data_7_isNextMask_2; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_82 = addr_dec_3[0] & data_0_isNextMask_3 | addr_dec_3[1] & data_1_isNextMask_3 | addr_dec_3[2] &
    data_2_isNextMask_3 | addr_dec_3[3] & data_3_isNextMask_3 | addr_dec_3[4] & data_4_isNextMask_3 | addr_dec_3[5] &
    data_5_isNextMask_3 | addr_dec_3[6] & data_6_isNextMask_3 | addr_dec_3[7] & data_7_isNextMask_3; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_97 = addr_dec_3[0] & data_0_isNextMask_4 | addr_dec_3[1] & data_1_isNextMask_4 | addr_dec_3[2] &
    data_2_isNextMask_4 | addr_dec_3[3] & data_3_isNextMask_4 | addr_dec_3[4] & data_4_isNextMask_4 | addr_dec_3[5] &
    data_5_isNextMask_4 | addr_dec_3[6] & data_6_isNextMask_4 | addr_dec_3[7] & data_7_isNextMask_4; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_112 = addr_dec_3[0] & data_0_isNextMask_5 | addr_dec_3[1] & data_1_isNextMask_5 | addr_dec_3[2] &
    data_2_isNextMask_5 | addr_dec_3[3] & data_3_isNextMask_5 | addr_dec_3[4] & data_4_isNextMask_5 | addr_dec_3[5] &
    data_5_isNextMask_5 | addr_dec_3[6] & data_6_isNextMask_5 | addr_dec_3[7] & data_7_isNextMask_5; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_127 = addr_dec_3[0] & data_0_isNextMask_6 | addr_dec_3[1] & data_1_isNextMask_6 | addr_dec_3[2] &
    data_2_isNextMask_6 | addr_dec_3[3] & data_3_isNextMask_6 | addr_dec_3[4] & data_4_isNextMask_6 | addr_dec_3[5] &
    data_5_isNextMask_6 | addr_dec_3[6] & data_6_isNextMask_6 | addr_dec_3[7] & data_7_isNextMask_6; // @[Mux.scala 27:73]
  wire  _io_rdata_3_T_142 = addr_dec_3[0] & data_0_isNextMask_7 | addr_dec_3[1] & data_1_isNextMask_7 | addr_dec_3[2] &
    data_2_isNextMask_7 | addr_dec_3[3] & data_3_isNextMask_7 | addr_dec_3[4] & data_4_isNextMask_7 | addr_dec_3[5] &
    data_5_isNextMask_7 | addr_dec_3[6] & data_6_isNextMask_7 | addr_dec_3[7] & data_7_isNextMask_7; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_143 = addr_dec_3[0] ? data_0_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_144 = addr_dec_3[1] ? data_1_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_145 = addr_dec_3[2] ? data_2_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_146 = addr_dec_3[3] ? data_3_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_147 = addr_dec_3[4] ? data_4_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_148 = addr_dec_3[5] ? data_5_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_149 = addr_dec_3[6] ? data_6_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_150 = addr_dec_3[7] ? data_7_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_151 = _io_rdata_3_T_143 | _io_rdata_3_T_144; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_152 = _io_rdata_3_T_151 | _io_rdata_3_T_145; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_153 = _io_rdata_3_T_152 | _io_rdata_3_T_146; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_154 = _io_rdata_3_T_153 | _io_rdata_3_T_147; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_155 = _io_rdata_3_T_154 | _io_rdata_3_T_148; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_156 = _io_rdata_3_T_155 | _io_rdata_3_T_149; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_157 = _io_rdata_3_T_156 | _io_rdata_3_T_150; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_158 = addr_dec_3[0] ? data_0_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_159 = addr_dec_3[1] ? data_1_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_160 = addr_dec_3[2] ? data_2_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_161 = addr_dec_3[3] ? data_3_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_162 = addr_dec_3[4] ? data_4_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_163 = addr_dec_3[5] ? data_5_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_164 = addr_dec_3[6] ? data_6_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_165 = addr_dec_3[7] ? data_7_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_166 = _io_rdata_3_T_158 | _io_rdata_3_T_159; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_167 = _io_rdata_3_T_166 | _io_rdata_3_T_160; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_168 = _io_rdata_3_T_167 | _io_rdata_3_T_161; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_169 = _io_rdata_3_T_168 | _io_rdata_3_T_162; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_170 = _io_rdata_3_T_169 | _io_rdata_3_T_163; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_171 = _io_rdata_3_T_170 | _io_rdata_3_T_164; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_3_T_172 = _io_rdata_3_T_171 | _io_rdata_3_T_165; // @[Mux.scala 27:73]
  wire  read_by_0_4 = io_wen_0 & io_waddr_0 == io_raddr_4; // @[DataModuleTemplate.scala 176:54]
  wire [7:0] addr_dec_4 = 8'h1 << io_raddr_4; // @[OneHot.scala 64:12]
  wire [38:0] _io_rdata_4_T_158 = addr_dec_4[0] ? data_0_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_4_T_159 = addr_dec_4[1] ? data_1_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_4_T_160 = addr_dec_4[2] ? data_2_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_4_T_161 = addr_dec_4[3] ? data_3_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_4_T_162 = addr_dec_4[4] ? data_4_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_4_T_163 = addr_dec_4[5] ? data_5_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_4_T_164 = addr_dec_4[6] ? data_6_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_4_T_165 = addr_dec_4[7] ? data_7_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_4_T_166 = _io_rdata_4_T_158 | _io_rdata_4_T_159; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_4_T_167 = _io_rdata_4_T_166 | _io_rdata_4_T_160; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_4_T_168 = _io_rdata_4_T_167 | _io_rdata_4_T_161; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_4_T_169 = _io_rdata_4_T_168 | _io_rdata_4_T_162; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_4_T_170 = _io_rdata_4_T_169 | _io_rdata_4_T_163; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_4_T_171 = _io_rdata_4_T_170 | _io_rdata_4_T_164; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_4_T_172 = _io_rdata_4_T_171 | _io_rdata_4_T_165; // @[Mux.scala 27:73]
  wire  read_by_0_7 = io_wen_0 & io_waddr_0 == io_raddr_7; // @[DataModuleTemplate.scala 176:54]
  wire [7:0] addr_dec_7 = 8'h1 << io_raddr_7; // @[OneHot.scala 64:12]
  wire  _io_rdata_7_T_37 = addr_dec_7[0] & data_0_isNextMask_0 | addr_dec_7[1] & data_1_isNextMask_0 | addr_dec_7[2] &
    data_2_isNextMask_0 | addr_dec_7[3] & data_3_isNextMask_0 | addr_dec_7[4] & data_4_isNextMask_0 | addr_dec_7[5] &
    data_5_isNextMask_0 | addr_dec_7[6] & data_6_isNextMask_0 | addr_dec_7[7] & data_7_isNextMask_0; // @[Mux.scala 27:73]
  wire  _io_rdata_7_T_52 = addr_dec_7[0] & data_0_isNextMask_1 | addr_dec_7[1] & data_1_isNextMask_1 | addr_dec_7[2] &
    data_2_isNextMask_1 | addr_dec_7[3] & data_3_isNextMask_1 | addr_dec_7[4] & data_4_isNextMask_1 | addr_dec_7[5] &
    data_5_isNextMask_1 | addr_dec_7[6] & data_6_isNextMask_1 | addr_dec_7[7] & data_7_isNextMask_1; // @[Mux.scala 27:73]
  wire  _io_rdata_7_T_67 = addr_dec_7[0] & data_0_isNextMask_2 | addr_dec_7[1] & data_1_isNextMask_2 | addr_dec_7[2] &
    data_2_isNextMask_2 | addr_dec_7[3] & data_3_isNextMask_2 | addr_dec_7[4] & data_4_isNextMask_2 | addr_dec_7[5] &
    data_5_isNextMask_2 | addr_dec_7[6] & data_6_isNextMask_2 | addr_dec_7[7] & data_7_isNextMask_2; // @[Mux.scala 27:73]
  wire  _io_rdata_7_T_82 = addr_dec_7[0] & data_0_isNextMask_3 | addr_dec_7[1] & data_1_isNextMask_3 | addr_dec_7[2] &
    data_2_isNextMask_3 | addr_dec_7[3] & data_3_isNextMask_3 | addr_dec_7[4] & data_4_isNextMask_3 | addr_dec_7[5] &
    data_5_isNextMask_3 | addr_dec_7[6] & data_6_isNextMask_3 | addr_dec_7[7] & data_7_isNextMask_3; // @[Mux.scala 27:73]
  wire  _io_rdata_7_T_97 = addr_dec_7[0] & data_0_isNextMask_4 | addr_dec_7[1] & data_1_isNextMask_4 | addr_dec_7[2] &
    data_2_isNextMask_4 | addr_dec_7[3] & data_3_isNextMask_4 | addr_dec_7[4] & data_4_isNextMask_4 | addr_dec_7[5] &
    data_5_isNextMask_4 | addr_dec_7[6] & data_6_isNextMask_4 | addr_dec_7[7] & data_7_isNextMask_4; // @[Mux.scala 27:73]
  wire  _io_rdata_7_T_112 = addr_dec_7[0] & data_0_isNextMask_5 | addr_dec_7[1] & data_1_isNextMask_5 | addr_dec_7[2] &
    data_2_isNextMask_5 | addr_dec_7[3] & data_3_isNextMask_5 | addr_dec_7[4] & data_4_isNextMask_5 | addr_dec_7[5] &
    data_5_isNextMask_5 | addr_dec_7[6] & data_6_isNextMask_5 | addr_dec_7[7] & data_7_isNextMask_5; // @[Mux.scala 27:73]
  wire  _io_rdata_7_T_127 = addr_dec_7[0] & data_0_isNextMask_6 | addr_dec_7[1] & data_1_isNextMask_6 | addr_dec_7[2] &
    data_2_isNextMask_6 | addr_dec_7[3] & data_3_isNextMask_6 | addr_dec_7[4] & data_4_isNextMask_6 | addr_dec_7[5] &
    data_5_isNextMask_6 | addr_dec_7[6] & data_6_isNextMask_6 | addr_dec_7[7] & data_7_isNextMask_6; // @[Mux.scala 27:73]
  wire  _io_rdata_7_T_142 = addr_dec_7[0] & data_0_isNextMask_7 | addr_dec_7[1] & data_1_isNextMask_7 | addr_dec_7[2] &
    data_2_isNextMask_7 | addr_dec_7[3] & data_3_isNextMask_7 | addr_dec_7[4] & data_4_isNextMask_7 | addr_dec_7[5] &
    data_5_isNextMask_7 | addr_dec_7[6] & data_6_isNextMask_7 | addr_dec_7[7] & data_7_isNextMask_7; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_143 = addr_dec_7[0] ? data_0_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_144 = addr_dec_7[1] ? data_1_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_145 = addr_dec_7[2] ? data_2_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_146 = addr_dec_7[3] ? data_3_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_147 = addr_dec_7[4] ? data_4_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_148 = addr_dec_7[5] ? data_5_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_149 = addr_dec_7[6] ? data_6_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_150 = addr_dec_7[7] ? data_7_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_151 = _io_rdata_7_T_143 | _io_rdata_7_T_144; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_152 = _io_rdata_7_T_151 | _io_rdata_7_T_145; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_153 = _io_rdata_7_T_152 | _io_rdata_7_T_146; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_154 = _io_rdata_7_T_153 | _io_rdata_7_T_147; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_155 = _io_rdata_7_T_154 | _io_rdata_7_T_148; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_156 = _io_rdata_7_T_155 | _io_rdata_7_T_149; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_157 = _io_rdata_7_T_156 | _io_rdata_7_T_150; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_158 = addr_dec_7[0] ? data_0_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_159 = addr_dec_7[1] ? data_1_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_160 = addr_dec_7[2] ? data_2_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_161 = addr_dec_7[3] ? data_3_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_162 = addr_dec_7[4] ? data_4_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_163 = addr_dec_7[5] ? data_5_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_164 = addr_dec_7[6] ? data_6_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_165 = addr_dec_7[7] ? data_7_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_166 = _io_rdata_7_T_158 | _io_rdata_7_T_159; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_167 = _io_rdata_7_T_166 | _io_rdata_7_T_160; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_168 = _io_rdata_7_T_167 | _io_rdata_7_T_161; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_169 = _io_rdata_7_T_168 | _io_rdata_7_T_162; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_170 = _io_rdata_7_T_169 | _io_rdata_7_T_163; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_171 = _io_rdata_7_T_170 | _io_rdata_7_T_164; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_7_T_172 = _io_rdata_7_T_171 | _io_rdata_7_T_165; // @[Mux.scala 27:73]
  wire [7:0] waddr_dec_0 = 8'h1 << io_waddr_0; // @[OneHot.scala 57:35]
  wire  write_wen_0 = io_wen_0 & waddr_dec_0[0]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_0_1 = io_wen_0 & waddr_dec_0[1]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_0_2 = io_wen_0 & waddr_dec_0[2]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_0_3 = io_wen_0 & waddr_dec_0[3]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_0_4 = io_wen_0 & waddr_dec_0[4]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_0_5 = io_wen_0 & waddr_dec_0[5]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_0_6 = io_wen_0 & waddr_dec_0[6]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_0_7 = io_wen_0 & waddr_dec_0[7]; // @[DataModuleTemplate.scala 188:57]
  assign io_rdata_0_startAddr = |read_by_0 ? io_wdata_0_startAddr : _io_rdata_0_T_172; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_nextLineAddr = |read_by_0 ? io_wdata_0_nextLineAddr : _io_rdata_0_T_157; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_isNextMask_0 = |read_by_0 ? io_wdata_0_isNextMask_0 : _io_rdata_0_T_37; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_isNextMask_1 = |read_by_0 ? io_wdata_0_isNextMask_1 : _io_rdata_0_T_52; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_isNextMask_2 = |read_by_0 ? io_wdata_0_isNextMask_2 : _io_rdata_0_T_67; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_isNextMask_3 = |read_by_0 ? io_wdata_0_isNextMask_3 : _io_rdata_0_T_82; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_isNextMask_4 = |read_by_0 ? io_wdata_0_isNextMask_4 : _io_rdata_0_T_97; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_isNextMask_5 = |read_by_0 ? io_wdata_0_isNextMask_5 : _io_rdata_0_T_112; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_isNextMask_6 = |read_by_0 ? io_wdata_0_isNextMask_6 : _io_rdata_0_T_127; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_0_isNextMask_7 = |read_by_0 ? io_wdata_0_isNextMask_7 : _io_rdata_0_T_142; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_startAddr = |read_by_0_2 ? io_wdata_0_startAddr : _io_rdata_2_T_172; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_nextLineAddr = |read_by_0_2 ? io_wdata_0_nextLineAddr : _io_rdata_2_T_157; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_isNextMask_0 = |read_by_0_2 ? io_wdata_0_isNextMask_0 : _io_rdata_2_T_37; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_isNextMask_1 = |read_by_0_2 ? io_wdata_0_isNextMask_1 : _io_rdata_2_T_52; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_isNextMask_2 = |read_by_0_2 ? io_wdata_0_isNextMask_2 : _io_rdata_2_T_67; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_isNextMask_3 = |read_by_0_2 ? io_wdata_0_isNextMask_3 : _io_rdata_2_T_82; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_isNextMask_4 = |read_by_0_2 ? io_wdata_0_isNextMask_4 : _io_rdata_2_T_97; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_isNextMask_5 = |read_by_0_2 ? io_wdata_0_isNextMask_5 : _io_rdata_2_T_112; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_isNextMask_6 = |read_by_0_2 ? io_wdata_0_isNextMask_6 : _io_rdata_2_T_127; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_isNextMask_7 = |read_by_0_2 ? io_wdata_0_isNextMask_7 : _io_rdata_2_T_142; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_startAddr = |read_by_0_3 ? io_wdata_0_startAddr : _io_rdata_3_T_172; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_nextLineAddr = |read_by_0_3 ? io_wdata_0_nextLineAddr : _io_rdata_3_T_157; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_isNextMask_0 = |read_by_0_3 ? io_wdata_0_isNextMask_0 : _io_rdata_3_T_37; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_isNextMask_1 = |read_by_0_3 ? io_wdata_0_isNextMask_1 : _io_rdata_3_T_52; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_isNextMask_2 = |read_by_0_3 ? io_wdata_0_isNextMask_2 : _io_rdata_3_T_67; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_isNextMask_3 = |read_by_0_3 ? io_wdata_0_isNextMask_3 : _io_rdata_3_T_82; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_isNextMask_4 = |read_by_0_3 ? io_wdata_0_isNextMask_4 : _io_rdata_3_T_97; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_isNextMask_5 = |read_by_0_3 ? io_wdata_0_isNextMask_5 : _io_rdata_3_T_112; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_isNextMask_6 = |read_by_0_3 ? io_wdata_0_isNextMask_6 : _io_rdata_3_T_127; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_isNextMask_7 = |read_by_0_3 ? io_wdata_0_isNextMask_7 : _io_rdata_3_T_142; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_startAddr = |read_by_0_4 ? io_wdata_0_startAddr : _io_rdata_4_T_172; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_startAddr = |read_by_0_7 ? io_wdata_0_startAddr : _io_rdata_7_T_172; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_nextLineAddr = |read_by_0_7 ? io_wdata_0_nextLineAddr : _io_rdata_7_T_157; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_isNextMask_0 = |read_by_0_7 ? io_wdata_0_isNextMask_0 : _io_rdata_7_T_37; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_isNextMask_1 = |read_by_0_7 ? io_wdata_0_isNextMask_1 : _io_rdata_7_T_52; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_isNextMask_2 = |read_by_0_7 ? io_wdata_0_isNextMask_2 : _io_rdata_7_T_67; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_isNextMask_3 = |read_by_0_7 ? io_wdata_0_isNextMask_3 : _io_rdata_7_T_82; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_isNextMask_4 = |read_by_0_7 ? io_wdata_0_isNextMask_4 : _io_rdata_7_T_97; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_isNextMask_5 = |read_by_0_7 ? io_wdata_0_isNextMask_5 : _io_rdata_7_T_112; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_isNextMask_6 = |read_by_0_7 ? io_wdata_0_isNextMask_6 : _io_rdata_7_T_127; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_7_isNextMask_7 = |read_by_0_7 ? io_wdata_0_isNextMask_7 : _io_rdata_7_T_142; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  always @(negedge clock) begin
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_startAddr <= io_wdata_0_startAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_nextLineAddr <= io_wdata_0_nextLineAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_isNextMask_0 <= io_wdata_0_isNextMask_0; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_isNextMask_1 <= io_wdata_0_isNextMask_1; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_isNextMask_2 <= io_wdata_0_isNextMask_2; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_isNextMask_3 <= io_wdata_0_isNextMask_3; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_isNextMask_4 <= io_wdata_0_isNextMask_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_isNextMask_5 <= io_wdata_0_isNextMask_5; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_isNextMask_6 <= io_wdata_0_isNextMask_6; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_isNextMask_7 <= io_wdata_0_isNextMask_7; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_startAddr <= io_wdata_0_startAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_nextLineAddr <= io_wdata_0_nextLineAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_isNextMask_0 <= io_wdata_0_isNextMask_0; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_isNextMask_1 <= io_wdata_0_isNextMask_1; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_isNextMask_2 <= io_wdata_0_isNextMask_2; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_isNextMask_3 <= io_wdata_0_isNextMask_3; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_isNextMask_4 <= io_wdata_0_isNextMask_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_isNextMask_5 <= io_wdata_0_isNextMask_5; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_isNextMask_6 <= io_wdata_0_isNextMask_6; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_isNextMask_7 <= io_wdata_0_isNextMask_7; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_startAddr <= io_wdata_0_startAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_nextLineAddr <= io_wdata_0_nextLineAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_isNextMask_0 <= io_wdata_0_isNextMask_0; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_isNextMask_1 <= io_wdata_0_isNextMask_1; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_isNextMask_2 <= io_wdata_0_isNextMask_2; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_isNextMask_3 <= io_wdata_0_isNextMask_3; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_isNextMask_4 <= io_wdata_0_isNextMask_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_isNextMask_5 <= io_wdata_0_isNextMask_5; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_isNextMask_6 <= io_wdata_0_isNextMask_6; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_isNextMask_7 <= io_wdata_0_isNextMask_7; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_startAddr <= io_wdata_0_startAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_nextLineAddr <= io_wdata_0_nextLineAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_isNextMask_0 <= io_wdata_0_isNextMask_0; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_isNextMask_1 <= io_wdata_0_isNextMask_1; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_isNextMask_2 <= io_wdata_0_isNextMask_2; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_isNextMask_3 <= io_wdata_0_isNextMask_3; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_isNextMask_4 <= io_wdata_0_isNextMask_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_isNextMask_5 <= io_wdata_0_isNextMask_5; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_isNextMask_6 <= io_wdata_0_isNextMask_6; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_isNextMask_7 <= io_wdata_0_isNextMask_7; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_startAddr <= io_wdata_0_startAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_nextLineAddr <= io_wdata_0_nextLineAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_isNextMask_0 <= io_wdata_0_isNextMask_0; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_isNextMask_1 <= io_wdata_0_isNextMask_1; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_isNextMask_2 <= io_wdata_0_isNextMask_2; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_isNextMask_3 <= io_wdata_0_isNextMask_3; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_isNextMask_4 <= io_wdata_0_isNextMask_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_isNextMask_5 <= io_wdata_0_isNextMask_5; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_isNextMask_6 <= io_wdata_0_isNextMask_6; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_isNextMask_7 <= io_wdata_0_isNextMask_7; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_startAddr <= io_wdata_0_startAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_nextLineAddr <= io_wdata_0_nextLineAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_isNextMask_0 <= io_wdata_0_isNextMask_0; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_isNextMask_1 <= io_wdata_0_isNextMask_1; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_isNextMask_2 <= io_wdata_0_isNextMask_2; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_isNextMask_3 <= io_wdata_0_isNextMask_3; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_isNextMask_4 <= io_wdata_0_isNextMask_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_isNextMask_5 <= io_wdata_0_isNextMask_5; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_isNextMask_6 <= io_wdata_0_isNextMask_6; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_isNextMask_7 <= io_wdata_0_isNextMask_7; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_startAddr <= io_wdata_0_startAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_nextLineAddr <= io_wdata_0_nextLineAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_isNextMask_0 <= io_wdata_0_isNextMask_0; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_isNextMask_1 <= io_wdata_0_isNextMask_1; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_isNextMask_2 <= io_wdata_0_isNextMask_2; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_isNextMask_3 <= io_wdata_0_isNextMask_3; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_isNextMask_4 <= io_wdata_0_isNextMask_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_isNextMask_5 <= io_wdata_0_isNextMask_5; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_isNextMask_6 <= io_wdata_0_isNextMask_6; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_isNextMask_7 <= io_wdata_0_isNextMask_7; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_startAddr <= io_wdata_0_startAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_nextLineAddr <= io_wdata_0_nextLineAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_isNextMask_0 <= io_wdata_0_isNextMask_0; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_isNextMask_1 <= io_wdata_0_isNextMask_1; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_isNextMask_2 <= io_wdata_0_isNextMask_2; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_isNextMask_3 <= io_wdata_0_isNextMask_3; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_isNextMask_4 <= io_wdata_0_isNextMask_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_isNextMask_5 <= io_wdata_0_isNextMask_5; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_isNextMask_6 <= io_wdata_0_isNextMask_6; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_isNextMask_7 <= io_wdata_0_isNextMask_7; // @[DataModuleTemplate.scala 190:15]
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
  _RAND_0 = {2{`RANDOM}};
  data_0_startAddr = _RAND_0[38:0];
  _RAND_1 = {2{`RANDOM}};
  data_0_nextLineAddr = _RAND_1[38:0];
  _RAND_2 = {1{`RANDOM}};
  data_0_isNextMask_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  data_0_isNextMask_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  data_0_isNextMask_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  data_0_isNextMask_3 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  data_0_isNextMask_4 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  data_0_isNextMask_5 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  data_0_isNextMask_6 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  data_0_isNextMask_7 = _RAND_9[0:0];
  _RAND_10 = {2{`RANDOM}};
  data_1_startAddr = _RAND_10[38:0];
  _RAND_11 = {2{`RANDOM}};
  data_1_nextLineAddr = _RAND_11[38:0];
  _RAND_12 = {1{`RANDOM}};
  data_1_isNextMask_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  data_1_isNextMask_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  data_1_isNextMask_2 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  data_1_isNextMask_3 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  data_1_isNextMask_4 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  data_1_isNextMask_5 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  data_1_isNextMask_6 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  data_1_isNextMask_7 = _RAND_19[0:0];
  _RAND_20 = {2{`RANDOM}};
  data_2_startAddr = _RAND_20[38:0];
  _RAND_21 = {2{`RANDOM}};
  data_2_nextLineAddr = _RAND_21[38:0];
  _RAND_22 = {1{`RANDOM}};
  data_2_isNextMask_0 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  data_2_isNextMask_1 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  data_2_isNextMask_2 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  data_2_isNextMask_3 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  data_2_isNextMask_4 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  data_2_isNextMask_5 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  data_2_isNextMask_6 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  data_2_isNextMask_7 = _RAND_29[0:0];
  _RAND_30 = {2{`RANDOM}};
  data_3_startAddr = _RAND_30[38:0];
  _RAND_31 = {2{`RANDOM}};
  data_3_nextLineAddr = _RAND_31[38:0];
  _RAND_32 = {1{`RANDOM}};
  data_3_isNextMask_0 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  data_3_isNextMask_1 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  data_3_isNextMask_2 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  data_3_isNextMask_3 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  data_3_isNextMask_4 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  data_3_isNextMask_5 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  data_3_isNextMask_6 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  data_3_isNextMask_7 = _RAND_39[0:0];
  _RAND_40 = {2{`RANDOM}};
  data_4_startAddr = _RAND_40[38:0];
  _RAND_41 = {2{`RANDOM}};
  data_4_nextLineAddr = _RAND_41[38:0];
  _RAND_42 = {1{`RANDOM}};
  data_4_isNextMask_0 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  data_4_isNextMask_1 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  data_4_isNextMask_2 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  data_4_isNextMask_3 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  data_4_isNextMask_4 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  data_4_isNextMask_5 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  data_4_isNextMask_6 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  data_4_isNextMask_7 = _RAND_49[0:0];
  _RAND_50 = {2{`RANDOM}};
  data_5_startAddr = _RAND_50[38:0];
  _RAND_51 = {2{`RANDOM}};
  data_5_nextLineAddr = _RAND_51[38:0];
  _RAND_52 = {1{`RANDOM}};
  data_5_isNextMask_0 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  data_5_isNextMask_1 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  data_5_isNextMask_2 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  data_5_isNextMask_3 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  data_5_isNextMask_4 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  data_5_isNextMask_5 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  data_5_isNextMask_6 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  data_5_isNextMask_7 = _RAND_59[0:0];
  _RAND_60 = {2{`RANDOM}};
  data_6_startAddr = _RAND_60[38:0];
  _RAND_61 = {2{`RANDOM}};
  data_6_nextLineAddr = _RAND_61[38:0];
  _RAND_62 = {1{`RANDOM}};
  data_6_isNextMask_0 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  data_6_isNextMask_1 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  data_6_isNextMask_2 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  data_6_isNextMask_3 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  data_6_isNextMask_4 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  data_6_isNextMask_5 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  data_6_isNextMask_6 = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  data_6_isNextMask_7 = _RAND_69[0:0];
  _RAND_70 = {2{`RANDOM}};
  data_7_startAddr = _RAND_70[38:0];
  _RAND_71 = {2{`RANDOM}};
  data_7_nextLineAddr = _RAND_71[38:0];
  _RAND_72 = {1{`RANDOM}};
  data_7_isNextMask_0 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  data_7_isNextMask_1 = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  data_7_isNextMask_2 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  data_7_isNextMask_3 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  data_7_isNextMask_4 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  data_7_isNextMask_5 = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  data_7_isNextMask_6 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  data_7_isNextMask_7 = _RAND_79[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

