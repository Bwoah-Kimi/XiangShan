module FusionDecoder(
  input         clock,
  input         reset,
  input         io_in_0_valid,
  input  [31:0] io_in_0_bits,
  input         io_in_1_valid,
  input  [31:0] io_in_1_bits,
  input         io_inReady_0,
  input  [6:0]  io_dec_0_fuOpType,
  output        io_out_0_valid,
  output        io_out_0_bits_fuType_valid,
  output        io_out_0_bits_fuOpType_valid,
  output [6:0]  io_out_0_bits_fuOpType_bits,
  output        io_out_0_bits_lsrc2_valid,
  output [4:0]  io_out_0_bits_lsrc2_bits,
  output        io_out_0_bits_src2Type_valid,
  output        io_info_0_rs2FromRs1,
  output        io_info_0_rs2FromRs2,
  output        io_info_0_rs2FromZero,
  output        io_clear_0,
  output        io_clear_1
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
`endif // RANDOMIZE_REG_INIT
  wire  fire = io_in_0_valid & io_inReady_0; // @[FusionDecoder.scala 536:31]
  wire [1:0] _instrPairValid_T = {io_in_1_valid,io_in_0_valid}; // @[FusionDecoder.scala 537:63]
  wire  _instrPairValid_T_1 = &_instrPairValid_T; // @[FusionDecoder.scala 537:70]
  reg  instrPairValid; // @[Reg.scala 28:20]
  wire [31:0] _fusionVec_T = io_in_0_bits & 32'hfc00707f; // @[FusionDecoder.scala 89:28]
  wire  _fusionVec_T_1 = 32'h1013 == _fusionVec_T; // @[FusionDecoder.scala 89:28]
  wire  _fusionVec_T_3 = io_in_0_bits[25:20] == 6'h20; // @[FusionDecoder.scala 89:70]
  wire  _fusionVec_T_4 = 32'h1013 == _fusionVec_T & io_in_0_bits[25:20] == 6'h20; // @[FusionDecoder.scala 89:50]
  wire [31:0] _fusionVec_T_5 = io_in_1_bits & 32'hfc00707f; // @[FusionDecoder.scala 90:28]
  wire  _fusionVec_T_6 = 32'h5013 == _fusionVec_T_5; // @[FusionDecoder.scala 90:28]
  wire  _fusionVec_T_9 = 32'h5013 == _fusionVec_T_5 & io_in_1_bits[25:20] == 6'h20; // @[FusionDecoder.scala 90:50]
  wire  _fusionVec_T_13 = io_in_0_bits[11:7] == io_in_1_bits[11:7]; // @[FusionDecoder.scala 39:47]
  wire  _fusionVec_T_17 = io_in_0_bits[11:7] == io_in_1_bits[19:15]; // @[FusionDecoder.scala 40:34]
  wire  _fusionVec_T_18 = _fusionVec_T_4 & _fusionVec_T_9 & _fusionVec_T_13 & _fusionVec_T_17; // @[FusionDecoder.scala 92:62]
  wire  _fusionVec_T_23 = _fusionVec_T_1 & io_in_0_bits[25:20] == 6'h30; // @[FusionDecoder.scala 104:50]
  wire  _fusionVec_T_28 = _fusionVec_T_6 & io_in_1_bits[25:20] == 6'h30; // @[FusionDecoder.scala 105:50]
  wire  _fusionVec_T_37 = _fusionVec_T_23 & _fusionVec_T_28 & _fusionVec_T_13 & _fusionVec_T_17; // @[FusionDecoder.scala 107:62]
  wire [31:0] _fusionVec_T_38 = io_in_0_bits & 32'hfe00707f; // @[FusionDecoder.scala 119:43]
  wire  _fusionVec_T_42 = 32'h101b == _fusionVec_T_38 & io_in_0_bits[24:20] == 5'h10; // @[FusionDecoder.scala 119:66]
  wire [31:0] _fusionVec_T_43 = io_in_1_bits & 32'hfe00707f; // @[FusionDecoder.scala 120:43]
  wire  _fusionVec_T_46 = io_in_1_bits[24:20] == 5'h10; // @[FusionDecoder.scala 120:86]
  wire  _fusionVec_T_47 = 32'h501b == _fusionVec_T_43 & io_in_1_bits[24:20] == 5'h10; // @[FusionDecoder.scala 120:66]
  wire  _fusionVec_T_56 = _fusionVec_T_42 & _fusionVec_T_47 & _fusionVec_T_13 & _fusionVec_T_17; // @[FusionDecoder.scala 107:62]
  wire  _fusionVec_T_66 = 32'h4000501b == _fusionVec_T_43 & _fusionVec_T_46; // @[FusionDecoder.scala 132:51]
  wire  _fusionVec_T_75 = _fusionVec_T_42 & _fusionVec_T_66 & _fusionVec_T_13 & _fusionVec_T_17; // @[FusionDecoder.scala 134:62]
  wire  _fusionVec_T_80 = _fusionVec_T_1 & io_in_0_bits[25:20] == 6'h1; // @[FusionDecoder.scala 146:50]
  wire  _fusionVec_T_82 = 32'h33 == _fusionVec_T_43; // @[FusionDecoder.scala 147:28]
  wire  _fusionVec_T_93 = io_in_0_bits[11:7] == io_in_1_bits[24:20]; // @[FusionDecoder.scala 41:44]
  wire  _fusionVec_T_94 = _fusionVec_T_17 | _fusionVec_T_93; // @[FusionDecoder.scala 149:76]
  wire  _fusionVec_T_95 = _fusionVec_T_80 & _fusionVec_T_82 & _fusionVec_T_13 & (_fusionVec_T_17 | _fusionVec_T_93); // @[FusionDecoder.scala 149:62]
  wire  _fusionVec_T_100 = _fusionVec_T_1 & io_in_0_bits[25:20] == 6'h2; // @[FusionDecoder.scala 161:50]
  wire  _fusionVec_T_115 = _fusionVec_T_100 & _fusionVec_T_82 & _fusionVec_T_13 & _fusionVec_T_94; // @[FusionDecoder.scala 164:62]
  wire  _fusionVec_T_120 = _fusionVec_T_1 & io_in_0_bits[25:20] == 6'h3; // @[FusionDecoder.scala 176:50]
  wire  _fusionVec_T_135 = _fusionVec_T_120 & _fusionVec_T_82 & _fusionVec_T_13 & _fusionVec_T_94; // @[FusionDecoder.scala 179:62]
  wire  _fusionVec_T_145 = _fusionVec_T_6 & io_in_1_bits[25:20] == 6'h1f; // @[FusionDecoder.scala 192:50]
  wire  _fusionVec_T_154 = _fusionVec_T_4 & _fusionVec_T_145 & _fusionVec_T_13 & _fusionVec_T_17; // @[FusionDecoder.scala 194:62]
  wire  _fusionVec_T_164 = _fusionVec_T_6 & io_in_1_bits[25:20] == 6'h1e; // @[FusionDecoder.scala 205:50]
  wire  _fusionVec_T_173 = _fusionVec_T_4 & _fusionVec_T_164 & _fusionVec_T_13 & _fusionVec_T_17; // @[FusionDecoder.scala 207:62]
  wire  _fusionVec_T_183 = _fusionVec_T_6 & io_in_1_bits[25:20] == 6'h1d; // @[FusionDecoder.scala 218:50]
  wire  _fusionVec_T_192 = _fusionVec_T_4 & _fusionVec_T_183 & _fusionVec_T_13 & _fusionVec_T_17; // @[FusionDecoder.scala 220:62]
  wire  _fusionVec_T_194 = 32'h5013 == _fusionVec_T; // @[FusionDecoder.scala 230:28]
  wire  _fusionVec_T_197 = 32'h5013 == _fusionVec_T & io_in_0_bits[25:20] == 6'h8; // @[FusionDecoder.scala 230:50]
  wire [31:0] _fusionVec_T_198 = io_in_1_bits & 32'h707f; // @[FusionDecoder.scala 231:28]
  wire  _fusionVec_T_199 = 32'h7013 == _fusionVec_T_198; // @[FusionDecoder.scala 231:28]
  wire  _fusionVec_T_202 = 32'h7013 == _fusionVec_T_198 & io_in_1_bits[31:20] == 12'hff; // @[FusionDecoder.scala 231:50]
  wire  _fusionVec_T_211 = _fusionVec_T_197 & _fusionVec_T_202 & _fusionVec_T_13 & _fusionVec_T_17; // @[FusionDecoder.scala 233:62]
  wire  _fusionVec_T_216 = _fusionVec_T_1 & io_in_0_bits[25:20] == 6'h4; // @[FusionDecoder.scala 243:50]
  wire  _fusionVec_T_231 = _fusionVec_T_216 & _fusionVec_T_82 & _fusionVec_T_13 & _fusionVec_T_94; // @[FusionDecoder.scala 246:62]
  wire  _fusionVec_T_236 = _fusionVec_T_194 & io_in_0_bits[25:20] == 6'h1d; // @[FusionDecoder.scala 259:50]
  wire  _fusionVec_T_251 = _fusionVec_T_236 & _fusionVec_T_82 & _fusionVec_T_13 & _fusionVec_T_94; // @[FusionDecoder.scala 262:62]
  wire  _fusionVec_T_256 = _fusionVec_T_194 & io_in_0_bits[25:20] == 6'h1e; // @[FusionDecoder.scala 275:50]
  wire  _fusionVec_T_271 = _fusionVec_T_256 & _fusionVec_T_82 & _fusionVec_T_13 & _fusionVec_T_94; // @[FusionDecoder.scala 278:62]
  wire  _fusionVec_T_276 = _fusionVec_T_194 & io_in_0_bits[25:20] == 6'h1f; // @[FusionDecoder.scala 291:50]
  wire  _fusionVec_T_291 = _fusionVec_T_276 & _fusionVec_T_82 & _fusionVec_T_13 & _fusionVec_T_94; // @[FusionDecoder.scala 294:62]
  wire  _fusionVec_T_296 = _fusionVec_T_194 & _fusionVec_T_3; // @[FusionDecoder.scala 307:50]
  wire  _fusionVec_T_311 = _fusionVec_T_296 & _fusionVec_T_82 & _fusionVec_T_13 & _fusionVec_T_94; // @[FusionDecoder.scala 310:62]
  wire [31:0] _fusionVec_T_312 = io_in_0_bits & 32'h707f; // @[FusionDecoder.scala 323:28]
  wire  _fusionVec_T_313 = 32'h7013 == _fusionVec_T_312; // @[FusionDecoder.scala 323:28]
  wire  _fusionVec_T_316 = 32'h7013 == _fusionVec_T_312 & io_in_0_bits[31:20] == 12'h1; // @[FusionDecoder.scala 323:50]
  wire  _fusionVec_T_331 = _fusionVec_T_316 & _fusionVec_T_82 & _fusionVec_T_13 & _fusionVec_T_94; // @[FusionDecoder.scala 326:62]
  wire  _fusionVec_T_338 = 32'h3b == _fusionVec_T_43; // @[FusionDecoder.scala 340:28]
  wire  _fusionVec_T_351 = _fusionVec_T_316 & _fusionVec_T_338 & _fusionVec_T_13 & _fusionVec_T_94; // @[FusionDecoder.scala 342:62]
  wire  _fusionVec_T_356 = _fusionVec_T_313 & io_in_0_bits[31:20] == 12'hf00; // @[FusionDecoder.scala 433:50]
  wire  _fusionVec_T_358 = 32'h6033 == _fusionVec_T_43; // @[FusionDecoder.scala 434:28]
  wire  _fusionVec_T_371 = _fusionVec_T_356 & _fusionVec_T_358 & _fusionVec_T_13 & _fusionVec_T_94; // @[FusionDecoder.scala 436:62]
  wire  _fusionVec_T_376 = _fusionVec_T_313 & io_in_0_bits[31:20] == 12'h7f; // @[FusionDecoder.scala 450:50]
  wire  _fusionVec_T_378 = 32'h200003b == _fusionVec_T_43; // @[FusionDecoder.scala 451:28]
  wire  _fusionVec_T_391 = _fusionVec_T_376 & _fusionVec_T_378 & _fusionVec_T_13 & _fusionVec_T_94; // @[FusionDecoder.scala 453:62]
  wire  _fusionVec_T_396 = 32'h1b == _fusionVec_T_312 | 32'h3b == _fusionVec_T_38; // @[FusionDecoder.scala 356:51]
  wire  _fusionVec_T_410 = _fusionVec_T_396 & _fusionVec_T_202 & _fusionVec_T_13 & _fusionVec_T_17; // @[FusionDecoder.scala 359:62]
  wire  _fusionVec_T_420 = _fusionVec_T_199 & io_in_1_bits[31:20] == 12'h1; // @[FusionDecoder.scala 369:59]
  wire  _fusionVec_T_429 = _fusionVec_T_396 & _fusionVec_T_420 & _fusionVec_T_13 & _fusionVec_T_17; // @[FusionDecoder.scala 359:62]
  wire [31:0] _fusionVec_T_435 = io_in_1_bits & 32'hfff0707f; // @[FusionDecoder.scala 380:37]
  wire  _fusionVec_T_436 = 32'h800403b == _fusionVec_T_435; // @[FusionDecoder.scala 380:37]
  wire  _fusionVec_T_445 = _fusionVec_T_396 & _fusionVec_T_436 & _fusionVec_T_13 & _fusionVec_T_17; // @[FusionDecoder.scala 359:62]
  wire  _fusionVec_T_452 = 32'h60501013 == _fusionVec_T_435; // @[FusionDecoder.scala 391:37]
  wire  _fusionVec_T_461 = _fusionVec_T_396 & _fusionVec_T_452 & _fusionVec_T_13 & _fusionVec_T_17; // @[FusionDecoder.scala 359:62]
  wire [31:0] _fusionVec_T_474 = io_in_0_bits & 32'hfff0707f; // @[FusionDecoder.scala 412:48]
  wire [6:0] _fusionVec_T_476 = {32'h28705013 == _fusionVec_T_474,32'h4033 == _fusionVec_T_38,32'h4013 ==
    _fusionVec_T_312,32'h6033 == _fusionVec_T_38,32'h6013 == _fusionVec_T_312,32'h7033 == _fusionVec_T_38,
    _fusionVec_T_313}; // @[FusionDecoder.scala 412:63]
  wire  _fusionVec_T_477 = |_fusionVec_T_476; // @[FusionDecoder.scala 412:70]
  wire  _fusionVec_T_491 = _fusionVec_T_477 & _fusionVec_T_420 & _fusionVec_T_13 & _fusionVec_T_17; // @[FusionDecoder.scala 415:62]
  wire  _fusionVec_T_518 = _fusionVec_T_477 & _fusionVec_T_436 & _fusionVec_T_13 & _fusionVec_T_17; // @[FusionDecoder.scala 415:62]
  reg  fusionVec_0; // @[Reg.scala 16:16]
  reg  fusionVec_1; // @[Reg.scala 16:16]
  reg  fusionVec_2; // @[Reg.scala 16:16]
  reg  fusionVec_3; // @[Reg.scala 16:16]
  reg  fusionVec_4; // @[Reg.scala 16:16]
  reg  fusionVec_5; // @[Reg.scala 16:16]
  reg  fusionVec_6; // @[Reg.scala 16:16]
  reg  fusionVec_7; // @[Reg.scala 16:16]
  reg  fusionVec_8; // @[Reg.scala 16:16]
  reg  fusionVec_9; // @[Reg.scala 16:16]
  reg  fusionVec_10; // @[Reg.scala 16:16]
  reg  fusionVec_11; // @[Reg.scala 16:16]
  reg  fusionVec_12; // @[Reg.scala 16:16]
  reg  fusionVec_13; // @[Reg.scala 16:16]
  reg  fusionVec_14; // @[Reg.scala 16:16]
  reg  fusionVec_15; // @[Reg.scala 16:16]
  reg  fusionVec_16; // @[Reg.scala 16:16]
  reg  fusionVec_17; // @[Reg.scala 16:16]
  reg  fusionVec_18; // @[Reg.scala 16:16]
  reg  fusionVec_19; // @[Reg.scala 16:16]
  reg  fusionVec_20; // @[Reg.scala 16:16]
  reg  fusionVec_21; // @[Reg.scala 16:16]
  reg  fusionVec_22; // @[Reg.scala 16:16]
  reg  fusionVec_23; // @[Reg.scala 16:16]
  reg  fusionVec_24; // @[Reg.scala 16:16]
  reg  fusionVec_25; // @[Reg.scala 16:16]
  wire [1:0] io_out_0_valid_lo_lo_lo_hi = {fusionVec_2,fusionVec_1}; // @[FusionDecoder.scala 540:62]
  wire [5:0] io_out_0_valid_lo_lo = {fusionVec_5,fusionVec_4,fusionVec_3,fusionVec_2,fusionVec_1,fusionVec_0}; // @[FusionDecoder.scala 540:62]
  wire [12:0] io_out_0_valid_lo = {fusionVec_12,fusionVec_11,fusionVec_10,fusionVec_9,fusionVec_8,fusionVec_7,
    fusionVec_6,io_out_0_valid_lo_lo}; // @[FusionDecoder.scala 540:62]
  wire [5:0] io_out_0_valid_hi_lo = {fusionVec_18,fusionVec_17,fusionVec_16,fusionVec_15,fusionVec_14,fusionVec_13}; // @[FusionDecoder.scala 540:62]
  wire [1:0] io_out_0_valid_hi_hi_hi_hi = {fusionVec_25,fusionVec_24}; // @[FusionDecoder.scala 540:62]
  wire [25:0] _io_out_0_valid_T_2 = {fusionVec_25,fusionVec_24,fusionVec_23,fusionVec_22,fusionVec_21,fusionVec_20,
    fusionVec_19,io_out_0_valid_hi_lo,io_out_0_valid_lo}; // @[FusionDecoder.scala 540:62]
  wire  replEnable = |fusionVec_19; // @[FusionDecoder.scala 548:63]
  wire [6:0] _T_53 = {3'h6,io_dec_0_fuOpType[3:1],1'h0}; // @[Cat.scala 31:58]
  wire [6:0] _T_55 = {3'h6,io_dec_0_fuOpType[3:1],1'h1}; // @[Cat.scala 31:58]
  wire  constReplEnable_0 = |fusionVec_0; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_1 = |io_out_0_valid_lo_lo_lo_hi; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_2 = |fusionVec_3; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_3 = |fusionVec_4; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_4 = |fusionVec_5; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_5 = |fusionVec_6; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_6 = |fusionVec_7; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_7 = |fusionVec_8; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_8 = |fusionVec_9; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_9 = |fusionVec_10; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_10 = |fusionVec_11; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_11 = |fusionVec_12; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_12 = |fusionVec_13; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_13 = |fusionVec_14; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_14 = |fusionVec_15; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_15 = |fusionVec_16; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_16 = |fusionVec_17; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_17 = |fusionVec_18; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_19 = |fusionVec_20; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_20 = |fusionVec_21; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_21 = |fusionVec_22; // @[FusionDecoder.scala 568:112]
  wire  constReplEnable_22 = |fusionVec_23; // @[FusionDecoder.scala 568:112]
  wire [5:0] _constReplResult_T = constReplEnable_0 ? 6'h20 : 6'h0; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_1 = constReplEnable_1 ? 7'h4b : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_2 = constReplEnable_2 ? 7'h4a : 7'h0; // @[Mux.scala 27:73]
  wire [5:0] _constReplResult_T_3 = constReplEnable_3 ? 6'h29 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _constReplResult_T_4 = constReplEnable_4 ? 6'h2b : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _constReplResult_T_5 = constReplEnable_5 ? 6'h2d : 6'h0; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_6 = constReplEnable_6 ? 7'h58 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_7 = constReplEnable_7 ? 7'h59 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_8 = constReplEnable_8 ? 7'h5a : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_9 = constReplEnable_9 ? 7'h5b : 7'h0; // @[Mux.scala 27:73]
  wire [5:0] _constReplResult_T_10 = constReplEnable_10 ? 6'h2f : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _constReplResult_T_11 = constReplEnable_11 ? 6'h24 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _constReplResult_T_12 = constReplEnable_12 ? 6'h25 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _constReplResult_T_13 = constReplEnable_13 ? 6'h26 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _constReplResult_T_14 = constReplEnable_14 ? 6'h27 : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _constReplResult_T_15 = constReplEnable_15 ? 6'h22 : 6'h0; // @[Mux.scala 27:73]
  wire [4:0] _constReplResult_T_16 = constReplEnable_16 ? 5'h11 : 5'h0; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_17 = constReplEnable_17 ? 7'h53 : 7'h0; // @[Mux.scala 27:73]
  wire [3:0] _constReplResult_T_18 = replEnable ? 4'hc : 4'h0; // @[Mux.scala 27:73]
  wire [4:0] _constReplResult_T_19 = constReplEnable_19 ? 5'h15 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _constReplResult_T_20 = constReplEnable_20 ? 5'h14 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _constReplResult_T_21 = constReplEnable_21 ? 5'h16 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _constReplResult_T_22 = constReplEnable_22 ? 5'h17 : 5'h0; // @[Mux.scala 27:73]
  wire [6:0] _GEN_39 = {{1'd0}, _constReplResult_T}; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_23 = _GEN_39 | _constReplResult_T_1; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_24 = _constReplResult_T_23 | _constReplResult_T_2; // @[Mux.scala 27:73]
  wire [6:0] _GEN_40 = {{1'd0}, _constReplResult_T_3}; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_25 = _constReplResult_T_24 | _GEN_40; // @[Mux.scala 27:73]
  wire [6:0] _GEN_41 = {{1'd0}, _constReplResult_T_4}; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_26 = _constReplResult_T_25 | _GEN_41; // @[Mux.scala 27:73]
  wire [6:0] _GEN_42 = {{1'd0}, _constReplResult_T_5}; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_27 = _constReplResult_T_26 | _GEN_42; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_28 = _constReplResult_T_27 | _constReplResult_T_6; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_29 = _constReplResult_T_28 | _constReplResult_T_7; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_30 = _constReplResult_T_29 | _constReplResult_T_8; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_31 = _constReplResult_T_30 | _constReplResult_T_9; // @[Mux.scala 27:73]
  wire [6:0] _GEN_43 = {{1'd0}, _constReplResult_T_10}; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_32 = _constReplResult_T_31 | _GEN_43; // @[Mux.scala 27:73]
  wire [6:0] _GEN_44 = {{1'd0}, _constReplResult_T_11}; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_33 = _constReplResult_T_32 | _GEN_44; // @[Mux.scala 27:73]
  wire [6:0] _GEN_45 = {{1'd0}, _constReplResult_T_12}; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_34 = _constReplResult_T_33 | _GEN_45; // @[Mux.scala 27:73]
  wire [6:0] _GEN_46 = {{1'd0}, _constReplResult_T_13}; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_35 = _constReplResult_T_34 | _GEN_46; // @[Mux.scala 27:73]
  wire [6:0] _GEN_47 = {{1'd0}, _constReplResult_T_14}; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_36 = _constReplResult_T_35 | _GEN_47; // @[Mux.scala 27:73]
  wire [6:0] _GEN_48 = {{1'd0}, _constReplResult_T_15}; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_37 = _constReplResult_T_36 | _GEN_48; // @[Mux.scala 27:73]
  wire [6:0] _GEN_49 = {{2'd0}, _constReplResult_T_16}; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_38 = _constReplResult_T_37 | _GEN_49; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_39 = _constReplResult_T_38 | _constReplResult_T_17; // @[Mux.scala 27:73]
  wire [6:0] _GEN_50 = {{3'd0}, _constReplResult_T_18}; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_40 = _constReplResult_T_39 | _GEN_50; // @[Mux.scala 27:73]
  wire [6:0] _GEN_51 = {{2'd0}, _constReplResult_T_19}; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_41 = _constReplResult_T_40 | _GEN_51; // @[Mux.scala 27:73]
  wire [6:0] _GEN_52 = {{2'd0}, _constReplResult_T_20}; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_42 = _constReplResult_T_41 | _GEN_52; // @[Mux.scala 27:73]
  wire [6:0] _GEN_53 = {{2'd0}, _constReplResult_T_21}; // @[Mux.scala 27:73]
  wire [6:0] _constReplResult_T_43 = _constReplResult_T_42 | _GEN_53; // @[Mux.scala 27:73]
  wire [6:0] _GEN_54 = {{2'd0}, _constReplResult_T_22}; // @[Mux.scala 27:73]
  wire [6:0] constReplResult = _constReplResult_T_43 | _GEN_54; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_fuOpType_bits_T_2 = fusionVec_24 ? _T_53 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_fuOpType_bits_T_3 = fusionVec_25 ? _T_55 : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_0_bits_fuOpType_bits_T_4 = _io_out_0_bits_fuOpType_bits_T_2 | _io_out_0_bits_fuOpType_bits_T_3; // @[Mux.scala 27:73]
  wire [6:0] replEnable_lo_1 = {fusionVec_11,fusionVec_6,fusionVec_5,fusionVec_4,fusionVec_2,fusionVec_1,fusionVec_0}; // @[FusionDecoder.scala 548:56]
  wire [14:0] _replEnable_T_1 = {fusionVec_19,fusionVec_18,fusionVec_17,fusionVec_16,fusionVec_15,fusionVec_14,
    fusionVec_13,fusionVec_12,replEnable_lo_1}; // @[FusionDecoder.scala 548:56]
  wire [3:0] _src2WithZero_T = {fusionVec_3,fusionVec_2,fusionVec_1,fusionVec_0}; // @[FusionDecoder.scala 579:103]
  wire  src2WithZero = |_src2WithZero_T; // @[FusionDecoder.scala 579:110]
  wire [5:0] src2WithMux_lo = {fusionVec_13,fusionVec_12,fusionVec_11,fusionVec_6,fusionVec_5,fusionVec_4}; // @[FusionDecoder.scala 580:101]
  wire [11:0] _src2WithMux_T = {fusionVec_19,fusionVec_18,fusionVec_17,fusionVec_16,fusionVec_15,fusionVec_14,
    src2WithMux_lo}; // @[FusionDecoder.scala 580:101]
  wire  src2WithMux = |_src2WithMux_T; // @[FusionDecoder.scala 580:108]
  reg  io_info_0_rs2FromRs1_r; // @[Reg.scala 16:16]
  reg  io_info_0_rs2FromRs2_r; // @[Reg.scala 16:16]
  reg [4:0] io_out_0_bits_lsrc2_bits_r; // @[Reg.scala 16:16]
  assign io_out_0_valid = instrPairValid & ~io_clear_0 & |_io_out_0_valid_T_2; // @[FusionDecoder.scala 540:49]
  assign io_out_0_bits_fuType_valid = |fusionVec_19; // @[FusionDecoder.scala 548:63]
  assign io_out_0_bits_fuOpType_valid = |_io_out_0_valid_T_2; // @[FusionDecoder.scala 564:63]
  assign io_out_0_bits_fuOpType_bits = |io_out_0_valid_hi_hi_hi_hi ? _io_out_0_bits_fuOpType_bits_T_4 : constReplResult; // @[FusionDecoder.scala 573:36]
  assign io_out_0_bits_lsrc2_valid = src2WithMux | src2WithZero; // @[FusionDecoder.scala 584:41]
  assign io_out_0_bits_lsrc2_bits = src2WithMux ? io_out_0_bits_lsrc2_bits_r : 5'h0; // @[FusionDecoder.scala 585:24 586:27 588:27]
  assign io_out_0_bits_src2Type_valid = |_replEnable_T_1; // @[FusionDecoder.scala 548:63]
  assign io_info_0_rs2FromRs1 = src2WithMux & ~io_info_0_rs2FromRs1_r; // @[FusionDecoder.scala 582:42]
  assign io_info_0_rs2FromRs2 = src2WithMux & io_info_0_rs2FromRs2_r; // @[FusionDecoder.scala 583:42]
  assign io_info_0_rs2FromZero = |_src2WithZero_T; // @[FusionDecoder.scala 579:110]
  assign io_clear_0 = 1'h0; // @[FusionDecoder.scala 504:17]
  assign io_clear_1 = io_out_0_valid; // @[FusionDecoder.scala 591:21]
  always @(posedge clock) begin
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_0 <= _fusionVec_T_18; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_1 <= _fusionVec_T_37; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_2 <= _fusionVec_T_56; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_3 <= _fusionVec_T_75; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_4 <= _fusionVec_T_95; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_5 <= _fusionVec_T_115; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_6 <= _fusionVec_T_135; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_7 <= _fusionVec_T_154; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_8 <= _fusionVec_T_173; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_9 <= _fusionVec_T_192; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_10 <= _fusionVec_T_211; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_11 <= _fusionVec_T_231; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_12 <= _fusionVec_T_251; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_13 <= _fusionVec_T_271; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_14 <= _fusionVec_T_291; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_15 <= _fusionVec_T_311; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_16 <= _fusionVec_T_331; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_17 <= _fusionVec_T_351; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_18 <= _fusionVec_T_371; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_19 <= _fusionVec_T_391; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_20 <= _fusionVec_T_410; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_21 <= _fusionVec_T_429; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_22 <= _fusionVec_T_445; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_23 <= _fusionVec_T_461; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_24 <= _fusionVec_T_491; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      fusionVec_25 <= _fusionVec_T_518; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      io_info_0_rs2FromRs1_r <= _fusionVec_T_17; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      io_info_0_rs2FromRs2_r <= _fusionVec_T_17; // @[Reg.scala 17:22]
    end
    if (fire) begin // @[Reg.scala 17:18]
      if (_fusionVec_T_17) begin // @[FusionDecoder.scala 76:33]
        io_out_0_bits_lsrc2_bits_r <= io_in_1_bits[24:20];
      end else begin
        io_out_0_bits_lsrc2_bits_r <= io_in_1_bits[19:15];
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      instrPairValid <= 1'h0; // @[Reg.scala 29:22]
    end else if (io_inReady_0) begin // @[Reg.scala 28:20]
      instrPairValid <= _instrPairValid_T_1;
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
  instrPairValid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  fusionVec_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  fusionVec_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  fusionVec_2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  fusionVec_3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  fusionVec_4 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  fusionVec_5 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  fusionVec_6 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  fusionVec_7 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  fusionVec_8 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  fusionVec_9 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  fusionVec_10 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  fusionVec_11 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  fusionVec_12 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  fusionVec_13 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  fusionVec_14 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  fusionVec_15 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  fusionVec_16 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  fusionVec_17 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  fusionVec_18 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  fusionVec_19 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  fusionVec_20 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  fusionVec_21 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  fusionVec_22 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  fusionVec_23 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  fusionVec_24 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  fusionVec_25 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_info_0_rs2FromRs1_r = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  io_info_0_rs2FromRs2_r = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  io_out_0_bits_lsrc2_bits_r = _RAND_29[4:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    instrPairValid = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

