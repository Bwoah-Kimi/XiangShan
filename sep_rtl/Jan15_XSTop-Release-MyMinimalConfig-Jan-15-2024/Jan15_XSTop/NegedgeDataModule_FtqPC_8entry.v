module NegedgeDataModule_FtqPC_8entry(
  input         clock,
  input  [2:0]  io_raddr_0,
  input  [2:0]  io_raddr_1,
  input  [2:0]  io_raddr_2,
  input  [2:0]  io_raddr_3,
  input  [2:0]  io_raddr_4,
  input  [2:0]  io_raddr_5,
  output [38:0] io_rdata_0_startAddr,
  output [38:0] io_rdata_1_startAddr,
  output [38:0] io_rdata_1_nextLineAddr,
  output        io_rdata_1_fallThruError,
  output [38:0] io_rdata_2_startAddr,
  output [38:0] io_rdata_2_nextLineAddr,
  output        io_rdata_2_fallThruError,
  output [38:0] io_rdata_3_startAddr,
  output [38:0] io_rdata_4_startAddr,
  output [38:0] io_rdata_5_startAddr,
  input         io_wen_0,
  input  [2:0]  io_waddr_0,
  input  [38:0] io_wdata_0_startAddr,
  input  [38:0] io_wdata_0_nextLineAddr,
  input         io_wdata_0_fallThruError
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [31:0] _RAND_23;
`endif // RANDOMIZE_REG_INIT
  reg [38:0] data_0_startAddr; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_0_nextLineAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_0_fallThruError; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_1_startAddr; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_1_nextLineAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_1_fallThruError; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_2_startAddr; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_2_nextLineAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_2_fallThruError; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_3_startAddr; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_3_nextLineAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_3_fallThruError; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_4_startAddr; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_4_nextLineAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_4_fallThruError; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_5_startAddr; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_5_nextLineAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_5_fallThruError; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_6_startAddr; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_6_nextLineAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_6_fallThruError; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_7_startAddr; // @[DataModuleTemplate.scala 168:17]
  reg [38:0] data_7_nextLineAddr; // @[DataModuleTemplate.scala 168:17]
  reg  data_7_fallThruError; // @[DataModuleTemplate.scala 168:17]
  wire  read_by_0 = io_wen_0 & io_waddr_0 == io_raddr_0; // @[DataModuleTemplate.scala 176:54]
  wire [7:0] addr_dec = 8'h1 << io_raddr_0; // @[OneHot.scala 64:12]
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
  wire  read_by_0_1 = io_wen_0 & io_waddr_0 == io_raddr_1; // @[DataModuleTemplate.scala 176:54]
  wire [7:0] addr_dec_1 = 8'h1 << io_raddr_1; // @[OneHot.scala 64:12]
  wire  _io_rdata_1_T_22 = addr_dec_1[0] & data_0_fallThruError | addr_dec_1[1] & data_1_fallThruError | addr_dec_1[2]
     & data_2_fallThruError | addr_dec_1[3] & data_3_fallThruError | addr_dec_1[4] & data_4_fallThruError | addr_dec_1[5
    ] & data_5_fallThruError | addr_dec_1[6] & data_6_fallThruError | addr_dec_1[7] & data_7_fallThruError; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_143 = addr_dec_1[0] ? data_0_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_144 = addr_dec_1[1] ? data_1_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_145 = addr_dec_1[2] ? data_2_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_146 = addr_dec_1[3] ? data_3_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_147 = addr_dec_1[4] ? data_4_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_148 = addr_dec_1[5] ? data_5_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_149 = addr_dec_1[6] ? data_6_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_150 = addr_dec_1[7] ? data_7_nextLineAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_151 = _io_rdata_1_T_143 | _io_rdata_1_T_144; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_152 = _io_rdata_1_T_151 | _io_rdata_1_T_145; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_153 = _io_rdata_1_T_152 | _io_rdata_1_T_146; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_154 = _io_rdata_1_T_153 | _io_rdata_1_T_147; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_155 = _io_rdata_1_T_154 | _io_rdata_1_T_148; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_156 = _io_rdata_1_T_155 | _io_rdata_1_T_149; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_157 = _io_rdata_1_T_156 | _io_rdata_1_T_150; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_158 = addr_dec_1[0] ? data_0_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_159 = addr_dec_1[1] ? data_1_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_160 = addr_dec_1[2] ? data_2_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_161 = addr_dec_1[3] ? data_3_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_162 = addr_dec_1[4] ? data_4_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_163 = addr_dec_1[5] ? data_5_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_164 = addr_dec_1[6] ? data_6_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_165 = addr_dec_1[7] ? data_7_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_166 = _io_rdata_1_T_158 | _io_rdata_1_T_159; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_167 = _io_rdata_1_T_166 | _io_rdata_1_T_160; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_168 = _io_rdata_1_T_167 | _io_rdata_1_T_161; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_169 = _io_rdata_1_T_168 | _io_rdata_1_T_162; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_170 = _io_rdata_1_T_169 | _io_rdata_1_T_163; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_171 = _io_rdata_1_T_170 | _io_rdata_1_T_164; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_1_T_172 = _io_rdata_1_T_171 | _io_rdata_1_T_165; // @[Mux.scala 27:73]
  wire  read_by_0_2 = io_wen_0 & io_waddr_0 == io_raddr_2; // @[DataModuleTemplate.scala 176:54]
  wire [7:0] addr_dec_2 = 8'h1 << io_raddr_2; // @[OneHot.scala 64:12]
  wire  _io_rdata_2_T_22 = addr_dec_2[0] & data_0_fallThruError | addr_dec_2[1] & data_1_fallThruError | addr_dec_2[2]
     & data_2_fallThruError | addr_dec_2[3] & data_3_fallThruError | addr_dec_2[4] & data_4_fallThruError | addr_dec_2[5
    ] & data_5_fallThruError | addr_dec_2[6] & data_6_fallThruError | addr_dec_2[7] & data_7_fallThruError; // @[Mux.scala 27:73]
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
  wire  read_by_0_5 = io_wen_0 & io_waddr_0 == io_raddr_5; // @[DataModuleTemplate.scala 176:54]
  wire [7:0] addr_dec_5 = 8'h1 << io_raddr_5; // @[OneHot.scala 64:12]
  wire [38:0] _io_rdata_5_T_158 = addr_dec_5[0] ? data_0_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_5_T_159 = addr_dec_5[1] ? data_1_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_5_T_160 = addr_dec_5[2] ? data_2_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_5_T_161 = addr_dec_5[3] ? data_3_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_5_T_162 = addr_dec_5[4] ? data_4_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_5_T_163 = addr_dec_5[5] ? data_5_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_5_T_164 = addr_dec_5[6] ? data_6_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_5_T_165 = addr_dec_5[7] ? data_7_startAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_5_T_166 = _io_rdata_5_T_158 | _io_rdata_5_T_159; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_5_T_167 = _io_rdata_5_T_166 | _io_rdata_5_T_160; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_5_T_168 = _io_rdata_5_T_167 | _io_rdata_5_T_161; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_5_T_169 = _io_rdata_5_T_168 | _io_rdata_5_T_162; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_5_T_170 = _io_rdata_5_T_169 | _io_rdata_5_T_163; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_5_T_171 = _io_rdata_5_T_170 | _io_rdata_5_T_164; // @[Mux.scala 27:73]
  wire [38:0] _io_rdata_5_T_172 = _io_rdata_5_T_171 | _io_rdata_5_T_165; // @[Mux.scala 27:73]
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
  assign io_rdata_1_startAddr = |read_by_0_1 ? io_wdata_0_startAddr : _io_rdata_1_T_172; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_nextLineAddr = |read_by_0_1 ? io_wdata_0_nextLineAddr : _io_rdata_1_T_157; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1_fallThruError = |read_by_0_1 ? io_wdata_0_fallThruError : _io_rdata_1_T_22; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_startAddr = |read_by_0_2 ? io_wdata_0_startAddr : _io_rdata_2_T_172; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_nextLineAddr = |read_by_0_2 ? io_wdata_0_nextLineAddr : _io_rdata_2_T_157; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_2_fallThruError = |read_by_0_2 ? io_wdata_0_fallThruError : _io_rdata_2_T_22; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_3_startAddr = |read_by_0_3 ? io_wdata_0_startAddr : _io_rdata_3_T_172; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_4_startAddr = |read_by_0_4 ? io_wdata_0_startAddr : _io_rdata_4_T_172; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_5_startAddr = |read_by_0_5 ? io_wdata_0_startAddr : _io_rdata_5_T_172; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  always @(negedge clock) begin
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_startAddr <= io_wdata_0_startAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_nextLineAddr <= io_wdata_0_nextLineAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0) begin // @[DataModuleTemplate.scala 189:42]
      data_0_fallThruError <= io_wdata_0_fallThruError; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_startAddr <= io_wdata_0_startAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_nextLineAddr <= io_wdata_0_nextLineAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_1) begin // @[DataModuleTemplate.scala 189:42]
      data_1_fallThruError <= io_wdata_0_fallThruError; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_startAddr <= io_wdata_0_startAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_nextLineAddr <= io_wdata_0_nextLineAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_2) begin // @[DataModuleTemplate.scala 189:42]
      data_2_fallThruError <= io_wdata_0_fallThruError; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_startAddr <= io_wdata_0_startAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_nextLineAddr <= io_wdata_0_nextLineAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_3) begin // @[DataModuleTemplate.scala 189:42]
      data_3_fallThruError <= io_wdata_0_fallThruError; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_startAddr <= io_wdata_0_startAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_nextLineAddr <= io_wdata_0_nextLineAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_4) begin // @[DataModuleTemplate.scala 189:42]
      data_4_fallThruError <= io_wdata_0_fallThruError; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_startAddr <= io_wdata_0_startAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_nextLineAddr <= io_wdata_0_nextLineAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_5) begin // @[DataModuleTemplate.scala 189:42]
      data_5_fallThruError <= io_wdata_0_fallThruError; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_startAddr <= io_wdata_0_startAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_nextLineAddr <= io_wdata_0_nextLineAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_6) begin // @[DataModuleTemplate.scala 189:42]
      data_6_fallThruError <= io_wdata_0_fallThruError; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_startAddr <= io_wdata_0_startAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_nextLineAddr <= io_wdata_0_nextLineAddr; // @[DataModuleTemplate.scala 190:15]
    end
    if (|write_wen_0_7) begin // @[DataModuleTemplate.scala 189:42]
      data_7_fallThruError <= io_wdata_0_fallThruError; // @[DataModuleTemplate.scala 190:15]
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
  data_0_fallThruError = _RAND_2[0:0];
  _RAND_3 = {2{`RANDOM}};
  data_1_startAddr = _RAND_3[38:0];
  _RAND_4 = {2{`RANDOM}};
  data_1_nextLineAddr = _RAND_4[38:0];
  _RAND_5 = {1{`RANDOM}};
  data_1_fallThruError = _RAND_5[0:0];
  _RAND_6 = {2{`RANDOM}};
  data_2_startAddr = _RAND_6[38:0];
  _RAND_7 = {2{`RANDOM}};
  data_2_nextLineAddr = _RAND_7[38:0];
  _RAND_8 = {1{`RANDOM}};
  data_2_fallThruError = _RAND_8[0:0];
  _RAND_9 = {2{`RANDOM}};
  data_3_startAddr = _RAND_9[38:0];
  _RAND_10 = {2{`RANDOM}};
  data_3_nextLineAddr = _RAND_10[38:0];
  _RAND_11 = {1{`RANDOM}};
  data_3_fallThruError = _RAND_11[0:0];
  _RAND_12 = {2{`RANDOM}};
  data_4_startAddr = _RAND_12[38:0];
  _RAND_13 = {2{`RANDOM}};
  data_4_nextLineAddr = _RAND_13[38:0];
  _RAND_14 = {1{`RANDOM}};
  data_4_fallThruError = _RAND_14[0:0];
  _RAND_15 = {2{`RANDOM}};
  data_5_startAddr = _RAND_15[38:0];
  _RAND_16 = {2{`RANDOM}};
  data_5_nextLineAddr = _RAND_16[38:0];
  _RAND_17 = {1{`RANDOM}};
  data_5_fallThruError = _RAND_17[0:0];
  _RAND_18 = {2{`RANDOM}};
  data_6_startAddr = _RAND_18[38:0];
  _RAND_19 = {2{`RANDOM}};
  data_6_nextLineAddr = _RAND_19[38:0];
  _RAND_20 = {1{`RANDOM}};
  data_6_fallThruError = _RAND_20[0:0];
  _RAND_21 = {2{`RANDOM}};
  data_7_startAddr = _RAND_21[38:0];
  _RAND_22 = {2{`RANDOM}};
  data_7_nextLineAddr = _RAND_22[38:0];
  _RAND_23 = {1{`RANDOM}};
  data_7_fallThruError = _RAND_23[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

