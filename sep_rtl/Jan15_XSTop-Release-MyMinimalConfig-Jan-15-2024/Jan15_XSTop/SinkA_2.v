module SinkA_2(
  input          clock,
  input          reset,
  output         io_a_ready,
  input          io_a_valid,
  input  [2:0]   io_a_bits_opcode,
  input  [2:0]   io_a_bits_param,
  input  [2:0]   io_a_bits_size,
  input  [9:0]   io_a_bits_source,
  input  [35:0]  io_a_bits_address,
  input  [31:0]  io_a_bits_mask,
  input  [255:0] io_a_bits_data,
  input          io_alloc_ready,
  output         io_alloc_valid,
  output [2:0]   io_alloc_bits_opcode,
  output [2:0]   io_alloc_bits_param,
  output [2:0]   io_alloc_bits_size,
  output [9:0]   io_alloc_bits_source,
  output [7:0]   io_alloc_bits_set,
  output [21:0]  io_alloc_bits_tag,
  output [5:0]   io_alloc_bits_off,
  output [31:0]  io_alloc_bits_mask,
  output [2:0]   io_alloc_bits_bufIdx,
  output         io_d_pb_pop_ready,
  input          io_d_pb_pop_valid,
  input  [2:0]   io_d_pb_pop_bits_bufIdx,
  input          io_d_pb_pop_bits_count,
  input          io_d_pb_pop_bits_last,
  output [255:0] io_d_pb_beat_data,
  output [31:0]  io_d_pb_beat_mask,
  output         io_a_pb_pop_ready,
  input          io_a_pb_pop_valid,
  input  [2:0]   io_a_pb_pop_bits_bufIdx,
  input          io_a_pb_pop_bits_count,
  input          io_a_pb_pop_bits_last,
  output [255:0] io_a_pb_beat_data,
  output [31:0]  io_a_pb_beat_mask
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [255:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [255:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [255:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [255:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [255:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [255:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [255:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [255:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [255:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [255:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [255:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [255:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [255:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [255:0] _RAND_27;
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
  reg [255:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [255:0] _RAND_47;
  reg [31:0] _RAND_48;
`endif // RANDOMIZE_REG_INIT
  wire  _T = io_a_ready & io_a_valid; // @[Decoupled.scala 50:35]
  wire [12:0] _beats1_decode_T_1 = 13'h3f << io_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _beats1_decode_T_3 = ~_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  beats1_decode = _beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  beats1_opdata = ~io_a_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  beats1 = beats1_opdata & beats1_decode; // @[Edges.scala 220:14]
  reg  counter; // @[Edges.scala 228:27]
  wire  counter1 = counter - 1'h1; // @[Edges.scala 229:28]
  wire  first = ~counter; // @[Edges.scala 230:25]
  wire  count = beats1 & ~counter1; // @[Edges.scala 233:25]
  reg [255:0] putBuffer_0_0_data; // @[SinkA.scala 49:22]
  reg [31:0] putBuffer_0_0_mask; // @[SinkA.scala 49:22]
  reg [255:0] putBuffer_0_1_data; // @[SinkA.scala 49:22]
  reg [31:0] putBuffer_0_1_mask; // @[SinkA.scala 49:22]
  reg [255:0] putBuffer_1_0_data; // @[SinkA.scala 49:22]
  reg [31:0] putBuffer_1_0_mask; // @[SinkA.scala 49:22]
  reg [255:0] putBuffer_1_1_data; // @[SinkA.scala 49:22]
  reg [31:0] putBuffer_1_1_mask; // @[SinkA.scala 49:22]
  reg [255:0] putBuffer_2_0_data; // @[SinkA.scala 49:22]
  reg [31:0] putBuffer_2_0_mask; // @[SinkA.scala 49:22]
  reg [255:0] putBuffer_2_1_data; // @[SinkA.scala 49:22]
  reg [31:0] putBuffer_2_1_mask; // @[SinkA.scala 49:22]
  reg [255:0] putBuffer_3_0_data; // @[SinkA.scala 49:22]
  reg [31:0] putBuffer_3_0_mask; // @[SinkA.scala 49:22]
  reg [255:0] putBuffer_3_1_data; // @[SinkA.scala 49:22]
  reg [31:0] putBuffer_3_1_mask; // @[SinkA.scala 49:22]
  reg [255:0] putBuffer_4_0_data; // @[SinkA.scala 49:22]
  reg [31:0] putBuffer_4_0_mask; // @[SinkA.scala 49:22]
  reg [255:0] putBuffer_4_1_data; // @[SinkA.scala 49:22]
  reg [31:0] putBuffer_4_1_mask; // @[SinkA.scala 49:22]
  reg [255:0] putBuffer_5_0_data; // @[SinkA.scala 49:22]
  reg [31:0] putBuffer_5_0_mask; // @[SinkA.scala 49:22]
  reg [255:0] putBuffer_5_1_data; // @[SinkA.scala 49:22]
  reg [31:0] putBuffer_5_1_mask; // @[SinkA.scala 49:22]
  reg [255:0] putBuffer_6_0_data; // @[SinkA.scala 49:22]
  reg [31:0] putBuffer_6_0_mask; // @[SinkA.scala 49:22]
  reg [255:0] putBuffer_6_1_data; // @[SinkA.scala 49:22]
  reg [31:0] putBuffer_6_1_mask; // @[SinkA.scala 49:22]
  reg  beatVals_0_0; // @[SinkA.scala 50:25]
  reg  beatVals_0_1; // @[SinkA.scala 50:25]
  reg  beatVals_1_0; // @[SinkA.scala 50:25]
  reg  beatVals_1_1; // @[SinkA.scala 50:25]
  reg  beatVals_2_0; // @[SinkA.scala 50:25]
  reg  beatVals_2_1; // @[SinkA.scala 50:25]
  reg  beatVals_3_0; // @[SinkA.scala 50:25]
  reg  beatVals_3_1; // @[SinkA.scala 50:25]
  reg  beatVals_4_0; // @[SinkA.scala 50:25]
  reg  beatVals_4_1; // @[SinkA.scala 50:25]
  reg  beatVals_5_0; // @[SinkA.scala 50:25]
  reg  beatVals_5_1; // @[SinkA.scala 50:25]
  reg  beatVals_6_0; // @[SinkA.scala 50:25]
  reg  beatVals_6_1; // @[SinkA.scala 50:25]
  wire [1:0] _bufVals_T = {beatVals_0_1,beatVals_0_0}; // @[SinkA.scala 53:46]
  wire [1:0] _bufVals_T_2 = {beatVals_1_1,beatVals_1_0}; // @[SinkA.scala 53:46]
  wire [1:0] _bufVals_T_4 = {beatVals_2_1,beatVals_2_0}; // @[SinkA.scala 53:46]
  wire [1:0] _bufVals_T_6 = {beatVals_3_1,beatVals_3_0}; // @[SinkA.scala 53:46]
  wire [1:0] _bufVals_T_8 = {beatVals_4_1,beatVals_4_0}; // @[SinkA.scala 53:46]
  wire [1:0] _bufVals_T_10 = {beatVals_5_1,beatVals_5_0}; // @[SinkA.scala 53:46]
  wire [1:0] _bufVals_T_12 = {beatVals_6_1,beatVals_6_0}; // @[SinkA.scala 53:46]
  wire [6:0] bufVals = {|_bufVals_T_12,|_bufVals_T_10,|_bufVals_T_8,|_bufVals_T_6,|_bufVals_T_4,|_bufVals_T_2,|
    _bufVals_T}; // @[SinkA.scala 53:63]
  wire  full = &bufVals; // @[SinkA.scala 54:26]
  wire  noSpace = full & beats1_opdata; // @[SinkA.scala 55:22]
  wire [6:0] _insertIdx_T = ~bufVals; // @[SinkA.scala 56:35]
  wire [2:0] _insertIdx_T_8 = _insertIdx_T[5] ? 3'h5 : 3'h6; // @[Mux.scala 47:70]
  wire [2:0] _insertIdx_T_9 = _insertIdx_T[4] ? 3'h4 : _insertIdx_T_8; // @[Mux.scala 47:70]
  wire [2:0] _insertIdx_T_10 = _insertIdx_T[3] ? 3'h3 : _insertIdx_T_9; // @[Mux.scala 47:70]
  wire [2:0] _insertIdx_T_11 = _insertIdx_T[2] ? 3'h2 : _insertIdx_T_10; // @[Mux.scala 47:70]
  wire [2:0] _insertIdx_T_12 = _insertIdx_T[1] ? 3'h1 : _insertIdx_T_11; // @[Mux.scala 47:70]
  wire [2:0] insertIdx = _insertIdx_T[0] ? 3'h0 : _insertIdx_T_12; // @[Mux.scala 47:70]
  wire  _insertIdxReg_T_1 = _T & first; // @[SinkA.scala 57:52]
  reg [2:0] insertIdxReg; // @[Reg.scala 16:16]
  wire  _GEN_401 = 3'h0 == insertIdx; // @[SinkA.scala 49:22 61:{40,40}]
  wire  _GEN_402 = ~count; // @[SinkA.scala 49:22 61:{40,40}]
  wire  _GEN_404 = 3'h1 == insertIdx; // @[SinkA.scala 49:22 61:{40,40}]
  wire  _GEN_407 = 3'h2 == insertIdx; // @[SinkA.scala 49:22 61:{40,40}]
  wire  _GEN_410 = 3'h3 == insertIdx; // @[SinkA.scala 49:22 61:{40,40}]
  wire  _GEN_413 = 3'h4 == insertIdx; // @[SinkA.scala 49:22 61:{40,40}]
  wire  _GEN_416 = 3'h5 == insertIdx; // @[SinkA.scala 49:22 61:{40,40}]
  wire  _GEN_419 = 3'h6 == insertIdx; // @[SinkA.scala 49:22 61:{40,40}]
  wire  _GEN_44 = _GEN_401 & _GEN_402 | beatVals_0_0; // @[SinkA.scala 50:25 64:{34,34}]
  wire  _GEN_45 = _GEN_401 & count | beatVals_0_1; // @[SinkA.scala 50:25 64:{34,34}]
  wire  _GEN_46 = _GEN_404 & _GEN_402 | beatVals_1_0; // @[SinkA.scala 50:25 64:{34,34}]
  wire  _GEN_47 = _GEN_404 & count | beatVals_1_1; // @[SinkA.scala 50:25 64:{34,34}]
  wire  _GEN_48 = _GEN_407 & _GEN_402 | beatVals_2_0; // @[SinkA.scala 50:25 64:{34,34}]
  wire  _GEN_49 = _GEN_407 & count | beatVals_2_1; // @[SinkA.scala 50:25 64:{34,34}]
  wire  _GEN_50 = _GEN_410 & _GEN_402 | beatVals_3_0; // @[SinkA.scala 50:25 64:{34,34}]
  wire  _GEN_51 = _GEN_410 & count | beatVals_3_1; // @[SinkA.scala 50:25 64:{34,34}]
  wire  _GEN_52 = _GEN_413 & _GEN_402 | beatVals_4_0; // @[SinkA.scala 50:25 64:{34,34}]
  wire  _GEN_53 = _GEN_413 & count | beatVals_4_1; // @[SinkA.scala 50:25 64:{34,34}]
  wire  _GEN_54 = _GEN_416 & _GEN_402 | beatVals_5_0; // @[SinkA.scala 50:25 64:{34,34}]
  wire  _GEN_55 = _GEN_416 & count | beatVals_5_1; // @[SinkA.scala 50:25 64:{34,34}]
  wire  _GEN_56 = _GEN_419 & _GEN_402 | beatVals_6_0; // @[SinkA.scala 50:25 64:{34,34}]
  wire  _GEN_57 = _GEN_419 & count | beatVals_6_1; // @[SinkA.scala 50:25 64:{34,34}]
  wire  _GEN_499 = 3'h0 == insertIdxReg; // @[SinkA.scala 49:22 66:{43,43}]
  wire  _GEN_502 = 3'h1 == insertIdxReg; // @[SinkA.scala 49:22 66:{43,43}]
  wire  _GEN_505 = 3'h2 == insertIdxReg; // @[SinkA.scala 49:22 66:{43,43}]
  wire  _GEN_508 = 3'h3 == insertIdxReg; // @[SinkA.scala 49:22 66:{43,43}]
  wire  _GEN_511 = 3'h4 == insertIdxReg; // @[SinkA.scala 49:22 66:{43,43}]
  wire  _GEN_514 = 3'h5 == insertIdxReg; // @[SinkA.scala 49:22 66:{43,43}]
  wire  _GEN_517 = 3'h6 == insertIdxReg; // @[SinkA.scala 49:22 66:{43,43}]
  wire  _GEN_100 = _GEN_499 & _GEN_402 | beatVals_0_0; // @[SinkA.scala 50:25 69:{37,37}]
  wire  _GEN_101 = _GEN_499 & count | beatVals_0_1; // @[SinkA.scala 50:25 69:{37,37}]
  wire  _GEN_102 = _GEN_502 & _GEN_402 | beatVals_1_0; // @[SinkA.scala 50:25 69:{37,37}]
  wire  _GEN_103 = _GEN_502 & count | beatVals_1_1; // @[SinkA.scala 50:25 69:{37,37}]
  wire  _GEN_104 = _GEN_505 & _GEN_402 | beatVals_2_0; // @[SinkA.scala 50:25 69:{37,37}]
  wire  _GEN_105 = _GEN_505 & count | beatVals_2_1; // @[SinkA.scala 50:25 69:{37,37}]
  wire  _GEN_106 = _GEN_508 & _GEN_402 | beatVals_3_0; // @[SinkA.scala 50:25 69:{37,37}]
  wire  _GEN_107 = _GEN_508 & count | beatVals_3_1; // @[SinkA.scala 50:25 69:{37,37}]
  wire  _GEN_108 = _GEN_511 & _GEN_402 | beatVals_4_0; // @[SinkA.scala 50:25 69:{37,37}]
  wire  _GEN_109 = _GEN_511 & count | beatVals_4_1; // @[SinkA.scala 50:25 69:{37,37}]
  wire  _GEN_110 = _GEN_514 & _GEN_402 | beatVals_5_0; // @[SinkA.scala 50:25 69:{37,37}]
  wire  _GEN_111 = _GEN_514 & count | beatVals_5_1; // @[SinkA.scala 50:25 69:{37,37}]
  wire  _GEN_112 = _GEN_517 & _GEN_402 | beatVals_6_0; // @[SinkA.scala 50:25 69:{37,37}]
  wire  _GEN_113 = _GEN_517 & count | beatVals_6_1; // @[SinkA.scala 50:25 69:{37,37}]
  wire  _GEN_156 = first ? _GEN_44 : _GEN_100; // @[SinkA.scala 60:17]
  wire  _GEN_157 = first ? _GEN_45 : _GEN_101; // @[SinkA.scala 60:17]
  wire  _GEN_158 = first ? _GEN_46 : _GEN_102; // @[SinkA.scala 60:17]
  wire  _GEN_159 = first ? _GEN_47 : _GEN_103; // @[SinkA.scala 60:17]
  wire  _GEN_160 = first ? _GEN_48 : _GEN_104; // @[SinkA.scala 60:17]
  wire  _GEN_161 = first ? _GEN_49 : _GEN_105; // @[SinkA.scala 60:17]
  wire  _GEN_162 = first ? _GEN_50 : _GEN_106; // @[SinkA.scala 60:17]
  wire  _GEN_163 = first ? _GEN_51 : _GEN_107; // @[SinkA.scala 60:17]
  wire  _GEN_164 = first ? _GEN_52 : _GEN_108; // @[SinkA.scala 60:17]
  wire  _GEN_165 = first ? _GEN_53 : _GEN_109; // @[SinkA.scala 60:17]
  wire  _GEN_166 = first ? _GEN_54 : _GEN_110; // @[SinkA.scala 60:17]
  wire  _GEN_167 = first ? _GEN_55 : _GEN_111; // @[SinkA.scala 60:17]
  wire  _GEN_168 = first ? _GEN_56 : _GEN_112; // @[SinkA.scala 60:17]
  wire  _GEN_169 = first ? _GEN_57 : _GEN_113; // @[SinkA.scala 60:17]
  wire  _GEN_212 = _T & beats1_opdata ? _GEN_156 : beatVals_0_0; // @[SinkA.scala 50:25 59:29]
  wire  _GEN_213 = _T & beats1_opdata ? _GEN_157 : beatVals_0_1; // @[SinkA.scala 50:25 59:29]
  wire  _GEN_214 = _T & beats1_opdata ? _GEN_158 : beatVals_1_0; // @[SinkA.scala 50:25 59:29]
  wire  _GEN_215 = _T & beats1_opdata ? _GEN_159 : beatVals_1_1; // @[SinkA.scala 50:25 59:29]
  wire  _GEN_216 = _T & beats1_opdata ? _GEN_160 : beatVals_2_0; // @[SinkA.scala 50:25 59:29]
  wire  _GEN_217 = _T & beats1_opdata ? _GEN_161 : beatVals_2_1; // @[SinkA.scala 50:25 59:29]
  wire  _GEN_218 = _T & beats1_opdata ? _GEN_162 : beatVals_3_0; // @[SinkA.scala 50:25 59:29]
  wire  _GEN_219 = _T & beats1_opdata ? _GEN_163 : beatVals_3_1; // @[SinkA.scala 50:25 59:29]
  wire  _GEN_220 = _T & beats1_opdata ? _GEN_164 : beatVals_4_0; // @[SinkA.scala 50:25 59:29]
  wire  _GEN_221 = _T & beats1_opdata ? _GEN_165 : beatVals_4_1; // @[SinkA.scala 50:25 59:29]
  wire  _GEN_222 = _T & beats1_opdata ? _GEN_166 : beatVals_5_0; // @[SinkA.scala 50:25 59:29]
  wire  _GEN_223 = _T & beats1_opdata ? _GEN_167 : beatVals_5_1; // @[SinkA.scala 50:25 59:29]
  wire  _GEN_224 = _T & beats1_opdata ? _GEN_168 : beatVals_6_0; // @[SinkA.scala 50:25 59:29]
  wire  _GEN_225 = _T & beats1_opdata ? _GEN_169 : beatVals_6_1; // @[SinkA.scala 50:25 59:29]
  reg [11:0] bufferLeakCnt; // @[SinkA.scala 73:30]
  wire [11:0] _bufferLeakCnt_T_1 = bufferLeakCnt + 12'h1; // @[SinkA.scala 76:36]
  wire [29:0] set = io_a_bits_address[35:6]; // @[HuanCun.scala 145:22]
  wire  _io_alloc_valid_T_1 = ~noSpace; // @[SinkA.scala 87:41]
  wire  _GEN_597 = 3'h0 == io_d_pb_pop_bits_bufIdx; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_228 = 3'h0 == io_d_pb_pop_bits_bufIdx & io_d_pb_pop_bits_count ? beatVals_0_1 : beatVals_0_0; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_598 = 3'h1 == io_d_pb_pop_bits_bufIdx; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_599 = ~io_d_pb_pop_bits_count; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_229 = 3'h1 == io_d_pb_pop_bits_bufIdx & ~io_d_pb_pop_bits_count ? beatVals_1_0 : _GEN_228; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_230 = 3'h1 == io_d_pb_pop_bits_bufIdx & io_d_pb_pop_bits_count ? beatVals_1_1 : _GEN_229; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_601 = 3'h2 == io_d_pb_pop_bits_bufIdx; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_231 = 3'h2 == io_d_pb_pop_bits_bufIdx & ~io_d_pb_pop_bits_count ? beatVals_2_0 : _GEN_230; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_232 = 3'h2 == io_d_pb_pop_bits_bufIdx & io_d_pb_pop_bits_count ? beatVals_2_1 : _GEN_231; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_604 = 3'h3 == io_d_pb_pop_bits_bufIdx; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_233 = 3'h3 == io_d_pb_pop_bits_bufIdx & ~io_d_pb_pop_bits_count ? beatVals_3_0 : _GEN_232; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_234 = 3'h3 == io_d_pb_pop_bits_bufIdx & io_d_pb_pop_bits_count ? beatVals_3_1 : _GEN_233; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_607 = 3'h4 == io_d_pb_pop_bits_bufIdx; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_235 = 3'h4 == io_d_pb_pop_bits_bufIdx & ~io_d_pb_pop_bits_count ? beatVals_4_0 : _GEN_234; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_236 = 3'h4 == io_d_pb_pop_bits_bufIdx & io_d_pb_pop_bits_count ? beatVals_4_1 : _GEN_235; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_610 = 3'h5 == io_d_pb_pop_bits_bufIdx; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_237 = 3'h5 == io_d_pb_pop_bits_bufIdx & ~io_d_pb_pop_bits_count ? beatVals_5_0 : _GEN_236; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_238 = 3'h5 == io_d_pb_pop_bits_bufIdx & io_d_pb_pop_bits_count ? beatVals_5_1 : _GEN_237; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_613 = 3'h6 == io_d_pb_pop_bits_bufIdx; // @[SinkA.scala 118:{21,21}]
  wire  _GEN_239 = 3'h6 == io_d_pb_pop_bits_bufIdx & ~io_d_pb_pop_bits_count ? beatVals_6_0 : _GEN_238; // @[SinkA.scala 118:{21,21}]
  wire  _io_d_pb_beat_T = io_d_pb_pop_ready & io_d_pb_pop_valid; // @[Decoupled.scala 50:35]
  reg [255:0] io_d_pb_beat_rdata; // @[Reg.scala 16:16]
  reg [31:0] io_d_pb_beat_rmask; // @[Reg.scala 16:16]
  wire [255:0] _GEN_242 = _GEN_597 & io_d_pb_pop_bits_count ? putBuffer_0_1_data : putBuffer_0_0_data; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_243 = _GEN_598 & _GEN_599 ? putBuffer_1_0_data : _GEN_242; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_244 = _GEN_598 & io_d_pb_pop_bits_count ? putBuffer_1_1_data : _GEN_243; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_245 = _GEN_601 & _GEN_599 ? putBuffer_2_0_data : _GEN_244; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_246 = _GEN_601 & io_d_pb_pop_bits_count ? putBuffer_2_1_data : _GEN_245; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_247 = _GEN_604 & _GEN_599 ? putBuffer_3_0_data : _GEN_246; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_248 = _GEN_604 & io_d_pb_pop_bits_count ? putBuffer_3_1_data : _GEN_247; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_249 = _GEN_607 & _GEN_599 ? putBuffer_4_0_data : _GEN_248; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_250 = _GEN_607 & io_d_pb_pop_bits_count ? putBuffer_4_1_data : _GEN_249; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_251 = _GEN_610 & _GEN_599 ? putBuffer_5_0_data : _GEN_250; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_256 = _GEN_597 & io_d_pb_pop_bits_count ? putBuffer_0_1_mask : putBuffer_0_0_mask; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_257 = _GEN_598 & _GEN_599 ? putBuffer_1_0_mask : _GEN_256; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_258 = _GEN_598 & io_d_pb_pop_bits_count ? putBuffer_1_1_mask : _GEN_257; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_259 = _GEN_601 & _GEN_599 ? putBuffer_2_0_mask : _GEN_258; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_260 = _GEN_601 & io_d_pb_pop_bits_count ? putBuffer_2_1_mask : _GEN_259; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_261 = _GEN_604 & _GEN_599 ? putBuffer_3_0_mask : _GEN_260; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_262 = _GEN_604 & io_d_pb_pop_bits_count ? putBuffer_3_1_mask : _GEN_261; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_263 = _GEN_607 & _GEN_599 ? putBuffer_4_0_mask : _GEN_262; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_264 = _GEN_607 & io_d_pb_pop_bits_count ? putBuffer_4_1_mask : _GEN_263; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_265 = _GEN_610 & _GEN_599 ? putBuffer_5_0_mask : _GEN_264; // @[Reg.scala 17:{22,22}]
  wire  _GEN_286 = 3'h0 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_212; // @[SinkA.scala 121:{49,49}]
  wire  _GEN_287 = 3'h1 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_214; // @[SinkA.scala 121:{49,49}]
  wire  _GEN_288 = 3'h2 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_216; // @[SinkA.scala 121:{49,49}]
  wire  _GEN_289 = 3'h3 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_218; // @[SinkA.scala 121:{49,49}]
  wire  _GEN_290 = 3'h4 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_220; // @[SinkA.scala 121:{49,49}]
  wire  _GEN_291 = 3'h5 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_222; // @[SinkA.scala 121:{49,49}]
  wire  _GEN_292 = 3'h6 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_224; // @[SinkA.scala 121:{49,49}]
  wire  _GEN_293 = 3'h0 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_213; // @[SinkA.scala 121:{49,49}]
  wire  _GEN_294 = 3'h1 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_215; // @[SinkA.scala 121:{49,49}]
  wire  _GEN_295 = 3'h2 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_217; // @[SinkA.scala 121:{49,49}]
  wire  _GEN_296 = 3'h3 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_219; // @[SinkA.scala 121:{49,49}]
  wire  _GEN_297 = 3'h4 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_221; // @[SinkA.scala 121:{49,49}]
  wire  _GEN_298 = 3'h5 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_223; // @[SinkA.scala 121:{49,49}]
  wire  _GEN_299 = 3'h6 == io_d_pb_pop_bits_bufIdx ? 1'h0 : _GEN_225; // @[SinkA.scala 121:{49,49}]
  wire  _GEN_300 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_286 : _GEN_212; // @[SinkA.scala 120:53]
  wire  _GEN_301 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_287 : _GEN_214; // @[SinkA.scala 120:53]
  wire  _GEN_302 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_288 : _GEN_216; // @[SinkA.scala 120:53]
  wire  _GEN_303 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_289 : _GEN_218; // @[SinkA.scala 120:53]
  wire  _GEN_304 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_290 : _GEN_220; // @[SinkA.scala 120:53]
  wire  _GEN_305 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_291 : _GEN_222; // @[SinkA.scala 120:53]
  wire  _GEN_306 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_292 : _GEN_224; // @[SinkA.scala 120:53]
  wire  _GEN_307 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_293 : _GEN_213; // @[SinkA.scala 120:53]
  wire  _GEN_308 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_294 : _GEN_215; // @[SinkA.scala 120:53]
  wire  _GEN_309 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_295 : _GEN_217; // @[SinkA.scala 120:53]
  wire  _GEN_310 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_296 : _GEN_219; // @[SinkA.scala 120:53]
  wire  _GEN_311 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_297 : _GEN_221; // @[SinkA.scala 120:53]
  wire  _GEN_312 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_298 : _GEN_223; // @[SinkA.scala 120:53]
  wire  _GEN_313 = _io_d_pb_beat_T & io_d_pb_pop_bits_last ? _GEN_299 : _GEN_225; // @[SinkA.scala 120:53]
  wire  _GEN_673 = 3'h0 == io_a_pb_pop_bits_bufIdx; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_315 = 3'h0 == io_a_pb_pop_bits_bufIdx & io_a_pb_pop_bits_count ? beatVals_0_1 : beatVals_0_0; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_674 = 3'h1 == io_a_pb_pop_bits_bufIdx; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_675 = ~io_a_pb_pop_bits_count; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_316 = 3'h1 == io_a_pb_pop_bits_bufIdx & ~io_a_pb_pop_bits_count ? beatVals_1_0 : _GEN_315; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_317 = 3'h1 == io_a_pb_pop_bits_bufIdx & io_a_pb_pop_bits_count ? beatVals_1_1 : _GEN_316; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_677 = 3'h2 == io_a_pb_pop_bits_bufIdx; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_318 = 3'h2 == io_a_pb_pop_bits_bufIdx & ~io_a_pb_pop_bits_count ? beatVals_2_0 : _GEN_317; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_319 = 3'h2 == io_a_pb_pop_bits_bufIdx & io_a_pb_pop_bits_count ? beatVals_2_1 : _GEN_318; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_680 = 3'h3 == io_a_pb_pop_bits_bufIdx; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_320 = 3'h3 == io_a_pb_pop_bits_bufIdx & ~io_a_pb_pop_bits_count ? beatVals_3_0 : _GEN_319; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_321 = 3'h3 == io_a_pb_pop_bits_bufIdx & io_a_pb_pop_bits_count ? beatVals_3_1 : _GEN_320; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_683 = 3'h4 == io_a_pb_pop_bits_bufIdx; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_322 = 3'h4 == io_a_pb_pop_bits_bufIdx & ~io_a_pb_pop_bits_count ? beatVals_4_0 : _GEN_321; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_323 = 3'h4 == io_a_pb_pop_bits_bufIdx & io_a_pb_pop_bits_count ? beatVals_4_1 : _GEN_322; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_686 = 3'h5 == io_a_pb_pop_bits_bufIdx; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_324 = 3'h5 == io_a_pb_pop_bits_bufIdx & ~io_a_pb_pop_bits_count ? beatVals_5_0 : _GEN_323; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_325 = 3'h5 == io_a_pb_pop_bits_bufIdx & io_a_pb_pop_bits_count ? beatVals_5_1 : _GEN_324; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_689 = 3'h6 == io_a_pb_pop_bits_bufIdx; // @[SinkA.scala 124:{21,21}]
  wire  _GEN_326 = 3'h6 == io_a_pb_pop_bits_bufIdx & ~io_a_pb_pop_bits_count ? beatVals_6_0 : _GEN_325; // @[SinkA.scala 124:{21,21}]
  wire  _io_a_pb_beat_T = io_a_pb_pop_ready & io_a_pb_pop_valid; // @[Decoupled.scala 50:35]
  reg [255:0] io_a_pb_beat_rdata; // @[Reg.scala 16:16]
  reg [31:0] io_a_pb_beat_rmask; // @[Reg.scala 16:16]
  wire [255:0] _GEN_329 = _GEN_673 & io_a_pb_pop_bits_count ? putBuffer_0_1_data : putBuffer_0_0_data; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_330 = _GEN_674 & _GEN_675 ? putBuffer_1_0_data : _GEN_329; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_331 = _GEN_674 & io_a_pb_pop_bits_count ? putBuffer_1_1_data : _GEN_330; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_332 = _GEN_677 & _GEN_675 ? putBuffer_2_0_data : _GEN_331; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_333 = _GEN_677 & io_a_pb_pop_bits_count ? putBuffer_2_1_data : _GEN_332; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_334 = _GEN_680 & _GEN_675 ? putBuffer_3_0_data : _GEN_333; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_335 = _GEN_680 & io_a_pb_pop_bits_count ? putBuffer_3_1_data : _GEN_334; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_336 = _GEN_683 & _GEN_675 ? putBuffer_4_0_data : _GEN_335; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_337 = _GEN_683 & io_a_pb_pop_bits_count ? putBuffer_4_1_data : _GEN_336; // @[Reg.scala 17:{22,22}]
  wire [255:0] _GEN_338 = _GEN_686 & _GEN_675 ? putBuffer_5_0_data : _GEN_337; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_343 = _GEN_673 & io_a_pb_pop_bits_count ? putBuffer_0_1_mask : putBuffer_0_0_mask; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_344 = _GEN_674 & _GEN_675 ? putBuffer_1_0_mask : _GEN_343; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_345 = _GEN_674 & io_a_pb_pop_bits_count ? putBuffer_1_1_mask : _GEN_344; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_346 = _GEN_677 & _GEN_675 ? putBuffer_2_0_mask : _GEN_345; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_347 = _GEN_677 & io_a_pb_pop_bits_count ? putBuffer_2_1_mask : _GEN_346; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_348 = _GEN_680 & _GEN_675 ? putBuffer_3_0_mask : _GEN_347; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_349 = _GEN_680 & io_a_pb_pop_bits_count ? putBuffer_3_1_mask : _GEN_348; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_350 = _GEN_683 & _GEN_675 ? putBuffer_4_0_mask : _GEN_349; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_351 = _GEN_683 & io_a_pb_pop_bits_count ? putBuffer_4_1_mask : _GEN_350; // @[Reg.scala 17:{22,22}]
  wire [31:0] _GEN_352 = _GEN_686 & _GEN_675 ? putBuffer_5_0_mask : _GEN_351; // @[Reg.scala 17:{22,22}]
  assign io_a_ready = first ? io_alloc_ready & _io_alloc_valid_T_1 : 1'h1; // @[SinkA.scala 88:17]
  assign io_alloc_valid = io_a_valid & first & ~noSpace; // @[SinkA.scala 87:38]
  assign io_alloc_bits_opcode = io_a_bits_opcode; // @[SinkA.scala 92:20]
  assign io_alloc_bits_param = io_a_bits_param; // @[SinkA.scala 93:19]
  assign io_alloc_bits_size = io_a_bits_size; // @[SinkA.scala 94:18]
  assign io_alloc_bits_source = io_a_bits_source; // @[SinkA.scala 95:20]
  assign io_alloc_bits_set = set[7:0]; // @[HuanCun.scala 147:30]
  assign io_alloc_bits_tag = set[29:8]; // @[HuanCun.scala 146:19]
  assign io_alloc_bits_off = io_a_bits_address[5:0]; // @[HuanCun.scala 147:54]
  assign io_alloc_bits_mask = io_a_bits_mask; // @[SinkA.scala 99:18]
  assign io_alloc_bits_bufIdx = _insertIdx_T[0] ? 3'h0 : _insertIdx_T_12; // @[Mux.scala 47:70]
  assign io_d_pb_pop_ready = 3'h6 == io_d_pb_pop_bits_bufIdx & io_d_pb_pop_bits_count ? beatVals_6_1 : _GEN_239; // @[SinkA.scala 118:{21,21}]
  assign io_d_pb_beat_data = io_d_pb_beat_rdata; // @[SinkA.scala 119:16]
  assign io_d_pb_beat_mask = io_d_pb_beat_rmask; // @[SinkA.scala 119:16]
  assign io_a_pb_pop_ready = 3'h6 == io_a_pb_pop_bits_bufIdx & io_a_pb_pop_bits_count ? beatVals_6_1 : _GEN_326; // @[SinkA.scala 124:{21,21}]
  assign io_a_pb_beat_data = io_a_pb_beat_rdata; // @[SinkA.scala 125:16]
  assign io_a_pb_beat_mask = io_a_pb_beat_rmask; // @[SinkA.scala 125:16]
  always @(posedge clock) begin
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (3'h0 == insertIdx & ~count) begin // @[SinkA.scala 61:40]
          putBuffer_0_0_data <= io_a_bits_data; // @[SinkA.scala 61:40]
        end
      end else if (3'h0 == insertIdxReg & _GEN_402) begin // @[SinkA.scala 66:43]
        putBuffer_0_0_data <= io_a_bits_data; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (_GEN_401 & _GEN_402) begin // @[SinkA.scala 62:40]
          putBuffer_0_0_mask <= io_a_bits_mask; // @[SinkA.scala 62:40]
        end
      end else if (_GEN_499 & _GEN_402) begin // @[SinkA.scala 67:43]
        putBuffer_0_0_mask <= io_a_bits_mask; // @[SinkA.scala 67:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (3'h0 == insertIdx & count) begin // @[SinkA.scala 61:40]
          putBuffer_0_1_data <= io_a_bits_data; // @[SinkA.scala 61:40]
        end
      end else if (3'h0 == insertIdxReg & count) begin // @[SinkA.scala 66:43]
        putBuffer_0_1_data <= io_a_bits_data; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (_GEN_401 & count) begin // @[SinkA.scala 62:40]
          putBuffer_0_1_mask <= io_a_bits_mask; // @[SinkA.scala 62:40]
        end
      end else if (_GEN_499 & count) begin // @[SinkA.scala 67:43]
        putBuffer_0_1_mask <= io_a_bits_mask; // @[SinkA.scala 67:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (3'h1 == insertIdx & ~count) begin // @[SinkA.scala 61:40]
          putBuffer_1_0_data <= io_a_bits_data; // @[SinkA.scala 61:40]
        end
      end else if (3'h1 == insertIdxReg & _GEN_402) begin // @[SinkA.scala 66:43]
        putBuffer_1_0_data <= io_a_bits_data; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (_GEN_404 & _GEN_402) begin // @[SinkA.scala 62:40]
          putBuffer_1_0_mask <= io_a_bits_mask; // @[SinkA.scala 62:40]
        end
      end else if (_GEN_502 & _GEN_402) begin // @[SinkA.scala 67:43]
        putBuffer_1_0_mask <= io_a_bits_mask; // @[SinkA.scala 67:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (3'h1 == insertIdx & count) begin // @[SinkA.scala 61:40]
          putBuffer_1_1_data <= io_a_bits_data; // @[SinkA.scala 61:40]
        end
      end else if (3'h1 == insertIdxReg & count) begin // @[SinkA.scala 66:43]
        putBuffer_1_1_data <= io_a_bits_data; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (_GEN_404 & count) begin // @[SinkA.scala 62:40]
          putBuffer_1_1_mask <= io_a_bits_mask; // @[SinkA.scala 62:40]
        end
      end else if (_GEN_502 & count) begin // @[SinkA.scala 67:43]
        putBuffer_1_1_mask <= io_a_bits_mask; // @[SinkA.scala 67:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (3'h2 == insertIdx & ~count) begin // @[SinkA.scala 61:40]
          putBuffer_2_0_data <= io_a_bits_data; // @[SinkA.scala 61:40]
        end
      end else if (3'h2 == insertIdxReg & _GEN_402) begin // @[SinkA.scala 66:43]
        putBuffer_2_0_data <= io_a_bits_data; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (_GEN_407 & _GEN_402) begin // @[SinkA.scala 62:40]
          putBuffer_2_0_mask <= io_a_bits_mask; // @[SinkA.scala 62:40]
        end
      end else if (_GEN_505 & _GEN_402) begin // @[SinkA.scala 67:43]
        putBuffer_2_0_mask <= io_a_bits_mask; // @[SinkA.scala 67:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (3'h2 == insertIdx & count) begin // @[SinkA.scala 61:40]
          putBuffer_2_1_data <= io_a_bits_data; // @[SinkA.scala 61:40]
        end
      end else if (3'h2 == insertIdxReg & count) begin // @[SinkA.scala 66:43]
        putBuffer_2_1_data <= io_a_bits_data; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (_GEN_407 & count) begin // @[SinkA.scala 62:40]
          putBuffer_2_1_mask <= io_a_bits_mask; // @[SinkA.scala 62:40]
        end
      end else if (_GEN_505 & count) begin // @[SinkA.scala 67:43]
        putBuffer_2_1_mask <= io_a_bits_mask; // @[SinkA.scala 67:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (3'h3 == insertIdx & ~count) begin // @[SinkA.scala 61:40]
          putBuffer_3_0_data <= io_a_bits_data; // @[SinkA.scala 61:40]
        end
      end else if (3'h3 == insertIdxReg & _GEN_402) begin // @[SinkA.scala 66:43]
        putBuffer_3_0_data <= io_a_bits_data; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (_GEN_410 & _GEN_402) begin // @[SinkA.scala 62:40]
          putBuffer_3_0_mask <= io_a_bits_mask; // @[SinkA.scala 62:40]
        end
      end else if (_GEN_508 & _GEN_402) begin // @[SinkA.scala 67:43]
        putBuffer_3_0_mask <= io_a_bits_mask; // @[SinkA.scala 67:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (3'h3 == insertIdx & count) begin // @[SinkA.scala 61:40]
          putBuffer_3_1_data <= io_a_bits_data; // @[SinkA.scala 61:40]
        end
      end else if (3'h3 == insertIdxReg & count) begin // @[SinkA.scala 66:43]
        putBuffer_3_1_data <= io_a_bits_data; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (_GEN_410 & count) begin // @[SinkA.scala 62:40]
          putBuffer_3_1_mask <= io_a_bits_mask; // @[SinkA.scala 62:40]
        end
      end else if (_GEN_508 & count) begin // @[SinkA.scala 67:43]
        putBuffer_3_1_mask <= io_a_bits_mask; // @[SinkA.scala 67:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (3'h4 == insertIdx & ~count) begin // @[SinkA.scala 61:40]
          putBuffer_4_0_data <= io_a_bits_data; // @[SinkA.scala 61:40]
        end
      end else if (3'h4 == insertIdxReg & _GEN_402) begin // @[SinkA.scala 66:43]
        putBuffer_4_0_data <= io_a_bits_data; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (_GEN_413 & _GEN_402) begin // @[SinkA.scala 62:40]
          putBuffer_4_0_mask <= io_a_bits_mask; // @[SinkA.scala 62:40]
        end
      end else if (_GEN_511 & _GEN_402) begin // @[SinkA.scala 67:43]
        putBuffer_4_0_mask <= io_a_bits_mask; // @[SinkA.scala 67:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (3'h4 == insertIdx & count) begin // @[SinkA.scala 61:40]
          putBuffer_4_1_data <= io_a_bits_data; // @[SinkA.scala 61:40]
        end
      end else if (3'h4 == insertIdxReg & count) begin // @[SinkA.scala 66:43]
        putBuffer_4_1_data <= io_a_bits_data; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (_GEN_413 & count) begin // @[SinkA.scala 62:40]
          putBuffer_4_1_mask <= io_a_bits_mask; // @[SinkA.scala 62:40]
        end
      end else if (_GEN_511 & count) begin // @[SinkA.scala 67:43]
        putBuffer_4_1_mask <= io_a_bits_mask; // @[SinkA.scala 67:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (3'h5 == insertIdx & ~count) begin // @[SinkA.scala 61:40]
          putBuffer_5_0_data <= io_a_bits_data; // @[SinkA.scala 61:40]
        end
      end else if (3'h5 == insertIdxReg & _GEN_402) begin // @[SinkA.scala 66:43]
        putBuffer_5_0_data <= io_a_bits_data; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (_GEN_416 & _GEN_402) begin // @[SinkA.scala 62:40]
          putBuffer_5_0_mask <= io_a_bits_mask; // @[SinkA.scala 62:40]
        end
      end else if (_GEN_514 & _GEN_402) begin // @[SinkA.scala 67:43]
        putBuffer_5_0_mask <= io_a_bits_mask; // @[SinkA.scala 67:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (3'h5 == insertIdx & count) begin // @[SinkA.scala 61:40]
          putBuffer_5_1_data <= io_a_bits_data; // @[SinkA.scala 61:40]
        end
      end else if (3'h5 == insertIdxReg & count) begin // @[SinkA.scala 66:43]
        putBuffer_5_1_data <= io_a_bits_data; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (_GEN_416 & count) begin // @[SinkA.scala 62:40]
          putBuffer_5_1_mask <= io_a_bits_mask; // @[SinkA.scala 62:40]
        end
      end else if (_GEN_514 & count) begin // @[SinkA.scala 67:43]
        putBuffer_5_1_mask <= io_a_bits_mask; // @[SinkA.scala 67:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (3'h6 == insertIdx & ~count) begin // @[SinkA.scala 61:40]
          putBuffer_6_0_data <= io_a_bits_data; // @[SinkA.scala 61:40]
        end
      end else if (3'h6 == insertIdxReg & _GEN_402) begin // @[SinkA.scala 66:43]
        putBuffer_6_0_data <= io_a_bits_data; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (_GEN_419 & _GEN_402) begin // @[SinkA.scala 62:40]
          putBuffer_6_0_mask <= io_a_bits_mask; // @[SinkA.scala 62:40]
        end
      end else if (_GEN_517 & _GEN_402) begin // @[SinkA.scala 67:43]
        putBuffer_6_0_mask <= io_a_bits_mask; // @[SinkA.scala 67:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (3'h6 == insertIdx & count) begin // @[SinkA.scala 61:40]
          putBuffer_6_1_data <= io_a_bits_data; // @[SinkA.scala 61:40]
        end
      end else if (3'h6 == insertIdxReg & count) begin // @[SinkA.scala 66:43]
        putBuffer_6_1_data <= io_a_bits_data; // @[SinkA.scala 66:43]
      end
    end
    if (_T & beats1_opdata) begin // @[SinkA.scala 59:29]
      if (first) begin // @[SinkA.scala 60:17]
        if (_GEN_419 & count) begin // @[SinkA.scala 62:40]
          putBuffer_6_1_mask <= io_a_bits_mask; // @[SinkA.scala 62:40]
        end
      end else if (_GEN_517 & count) begin // @[SinkA.scala 67:43]
        putBuffer_6_1_mask <= io_a_bits_mask; // @[SinkA.scala 67:43]
      end
    end
    if (_insertIdxReg_T_1) begin // @[Reg.scala 17:18]
      if (_insertIdx_T[0]) begin // @[Mux.scala 47:70]
        insertIdxReg <= 3'h0;
      end else if (_insertIdx_T[1]) begin // @[Mux.scala 47:70]
        insertIdxReg <= 3'h1;
      end else if (_insertIdx_T[2]) begin // @[Mux.scala 47:70]
        insertIdxReg <= 3'h2;
      end else begin
        insertIdxReg <= _insertIdx_T_10;
      end
    end
    if (_io_d_pb_beat_T) begin // @[Reg.scala 17:18]
      if (_GEN_613 & io_d_pb_pop_bits_count) begin // @[Reg.scala 17:22]
        io_d_pb_beat_rdata <= putBuffer_6_1_data; // @[Reg.scala 17:22]
      end else if (_GEN_613 & _GEN_599) begin // @[Reg.scala 17:22]
        io_d_pb_beat_rdata <= putBuffer_6_0_data; // @[Reg.scala 17:22]
      end else if (_GEN_610 & io_d_pb_pop_bits_count) begin // @[Reg.scala 17:22]
        io_d_pb_beat_rdata <= putBuffer_5_1_data; // @[Reg.scala 17:22]
      end else begin
        io_d_pb_beat_rdata <= _GEN_251;
      end
    end
    if (_io_d_pb_beat_T) begin // @[Reg.scala 17:18]
      if (_GEN_613 & io_d_pb_pop_bits_count) begin // @[Reg.scala 17:22]
        io_d_pb_beat_rmask <= putBuffer_6_1_mask; // @[Reg.scala 17:22]
      end else if (_GEN_613 & _GEN_599) begin // @[Reg.scala 17:22]
        io_d_pb_beat_rmask <= putBuffer_6_0_mask; // @[Reg.scala 17:22]
      end else if (_GEN_610 & io_d_pb_pop_bits_count) begin // @[Reg.scala 17:22]
        io_d_pb_beat_rmask <= putBuffer_5_1_mask; // @[Reg.scala 17:22]
      end else begin
        io_d_pb_beat_rmask <= _GEN_265;
      end
    end
    if (_io_a_pb_beat_T) begin // @[Reg.scala 17:18]
      if (_GEN_689 & io_a_pb_pop_bits_count) begin // @[Reg.scala 17:22]
        io_a_pb_beat_rdata <= putBuffer_6_1_data; // @[Reg.scala 17:22]
      end else if (_GEN_689 & _GEN_675) begin // @[Reg.scala 17:22]
        io_a_pb_beat_rdata <= putBuffer_6_0_data; // @[Reg.scala 17:22]
      end else if (_GEN_686 & io_a_pb_pop_bits_count) begin // @[Reg.scala 17:22]
        io_a_pb_beat_rdata <= putBuffer_5_1_data; // @[Reg.scala 17:22]
      end else begin
        io_a_pb_beat_rdata <= _GEN_338;
      end
    end
    if (_io_a_pb_beat_T) begin // @[Reg.scala 17:18]
      if (_GEN_689 & io_a_pb_pop_bits_count) begin // @[Reg.scala 17:22]
        io_a_pb_beat_rmask <= putBuffer_6_1_mask; // @[Reg.scala 17:22]
      end else if (_GEN_689 & _GEN_675) begin // @[Reg.scala 17:22]
        io_a_pb_beat_rmask <= putBuffer_6_0_mask; // @[Reg.scala 17:22]
      end else if (_GEN_686 & io_a_pb_pop_bits_count) begin // @[Reg.scala 17:22]
        io_a_pb_beat_rmask <= putBuffer_5_1_mask; // @[Reg.scala 17:22]
      end else begin
        io_a_pb_beat_rmask <= _GEN_352;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Edges.scala 234:17]
      counter <= 1'h0; // @[Edges.scala 235:21]
    end else if (_T) begin // @[Edges.scala 228:27]
      if (first) begin
        counter <= beats1;
      end else begin
        counter <= counter1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkA.scala 126:53]
      beatVals_0_0 <= 1'h0; // @[SinkA.scala 127:{49,49}]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin
      if (3'h0 == io_a_pb_pop_bits_bufIdx) begin
        beatVals_0_0 <= 1'h0;
      end else begin
        beatVals_0_0 <= _GEN_300;
      end
    end else begin
      beatVals_0_0 <= _GEN_300;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkA.scala 126:53]
      beatVals_0_1 <= 1'h0; // @[SinkA.scala 127:{49,49}]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin
      if (3'h0 == io_a_pb_pop_bits_bufIdx) begin
        beatVals_0_1 <= 1'h0;
      end else begin
        beatVals_0_1 <= _GEN_307;
      end
    end else begin
      beatVals_0_1 <= _GEN_307;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkA.scala 126:53]
      beatVals_1_0 <= 1'h0; // @[SinkA.scala 127:{49,49}]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin
      if (3'h1 == io_a_pb_pop_bits_bufIdx) begin
        beatVals_1_0 <= 1'h0;
      end else begin
        beatVals_1_0 <= _GEN_301;
      end
    end else begin
      beatVals_1_0 <= _GEN_301;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkA.scala 126:53]
      beatVals_1_1 <= 1'h0; // @[SinkA.scala 127:{49,49}]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin
      if (3'h1 == io_a_pb_pop_bits_bufIdx) begin
        beatVals_1_1 <= 1'h0;
      end else begin
        beatVals_1_1 <= _GEN_308;
      end
    end else begin
      beatVals_1_1 <= _GEN_308;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkA.scala 126:53]
      beatVals_2_0 <= 1'h0; // @[SinkA.scala 127:{49,49}]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin
      if (3'h2 == io_a_pb_pop_bits_bufIdx) begin
        beatVals_2_0 <= 1'h0;
      end else begin
        beatVals_2_0 <= _GEN_302;
      end
    end else begin
      beatVals_2_0 <= _GEN_302;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkA.scala 126:53]
      beatVals_2_1 <= 1'h0; // @[SinkA.scala 127:{49,49}]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin
      if (3'h2 == io_a_pb_pop_bits_bufIdx) begin
        beatVals_2_1 <= 1'h0;
      end else begin
        beatVals_2_1 <= _GEN_309;
      end
    end else begin
      beatVals_2_1 <= _GEN_309;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkA.scala 126:53]
      beatVals_3_0 <= 1'h0; // @[SinkA.scala 127:{49,49}]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin
      if (3'h3 == io_a_pb_pop_bits_bufIdx) begin
        beatVals_3_0 <= 1'h0;
      end else begin
        beatVals_3_0 <= _GEN_303;
      end
    end else begin
      beatVals_3_0 <= _GEN_303;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkA.scala 126:53]
      beatVals_3_1 <= 1'h0; // @[SinkA.scala 127:{49,49}]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin
      if (3'h3 == io_a_pb_pop_bits_bufIdx) begin
        beatVals_3_1 <= 1'h0;
      end else begin
        beatVals_3_1 <= _GEN_310;
      end
    end else begin
      beatVals_3_1 <= _GEN_310;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkA.scala 126:53]
      beatVals_4_0 <= 1'h0; // @[SinkA.scala 127:{49,49}]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin
      if (3'h4 == io_a_pb_pop_bits_bufIdx) begin
        beatVals_4_0 <= 1'h0;
      end else begin
        beatVals_4_0 <= _GEN_304;
      end
    end else begin
      beatVals_4_0 <= _GEN_304;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkA.scala 126:53]
      beatVals_4_1 <= 1'h0; // @[SinkA.scala 127:{49,49}]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin
      if (3'h4 == io_a_pb_pop_bits_bufIdx) begin
        beatVals_4_1 <= 1'h0;
      end else begin
        beatVals_4_1 <= _GEN_311;
      end
    end else begin
      beatVals_4_1 <= _GEN_311;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkA.scala 126:53]
      beatVals_5_0 <= 1'h0; // @[SinkA.scala 127:{49,49}]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin
      if (3'h5 == io_a_pb_pop_bits_bufIdx) begin
        beatVals_5_0 <= 1'h0;
      end else begin
        beatVals_5_0 <= _GEN_305;
      end
    end else begin
      beatVals_5_0 <= _GEN_305;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkA.scala 126:53]
      beatVals_5_1 <= 1'h0; // @[SinkA.scala 127:{49,49}]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin
      if (3'h5 == io_a_pb_pop_bits_bufIdx) begin
        beatVals_5_1 <= 1'h0;
      end else begin
        beatVals_5_1 <= _GEN_312;
      end
    end else begin
      beatVals_5_1 <= _GEN_312;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkA.scala 126:53]
      beatVals_6_0 <= 1'h0; // @[SinkA.scala 127:{49,49}]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin
      if (3'h6 == io_a_pb_pop_bits_bufIdx) begin
        beatVals_6_0 <= 1'h0;
      end else begin
        beatVals_6_0 <= _GEN_306;
      end
    end else begin
      beatVals_6_0 <= _GEN_306;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkA.scala 126:53]
      beatVals_6_1 <= 1'h0; // @[SinkA.scala 127:{49,49}]
    end else if (_io_a_pb_beat_T & io_a_pb_pop_bits_last) begin
      if (3'h6 == io_a_pb_pop_bits_bufIdx) begin
        beatVals_6_1 <= 1'h0;
      end else begin
        beatVals_6_1 <= _GEN_313;
      end
    end else begin
      beatVals_6_1 <= _GEN_313;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SinkA.scala 75:20]
      bufferLeakCnt <= 12'h0; // @[SinkA.scala 76:19]
    end else if (bufVals[0]) begin // @[SinkA.scala 78:19]
      bufferLeakCnt <= _bufferLeakCnt_T_1;
    end else begin
      bufferLeakCnt <= 12'h0;
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
  counter = _RAND_0[0:0];
  _RAND_1 = {8{`RANDOM}};
  putBuffer_0_0_data = _RAND_1[255:0];
  _RAND_2 = {1{`RANDOM}};
  putBuffer_0_0_mask = _RAND_2[31:0];
  _RAND_3 = {8{`RANDOM}};
  putBuffer_0_1_data = _RAND_3[255:0];
  _RAND_4 = {1{`RANDOM}};
  putBuffer_0_1_mask = _RAND_4[31:0];
  _RAND_5 = {8{`RANDOM}};
  putBuffer_1_0_data = _RAND_5[255:0];
  _RAND_6 = {1{`RANDOM}};
  putBuffer_1_0_mask = _RAND_6[31:0];
  _RAND_7 = {8{`RANDOM}};
  putBuffer_1_1_data = _RAND_7[255:0];
  _RAND_8 = {1{`RANDOM}};
  putBuffer_1_1_mask = _RAND_8[31:0];
  _RAND_9 = {8{`RANDOM}};
  putBuffer_2_0_data = _RAND_9[255:0];
  _RAND_10 = {1{`RANDOM}};
  putBuffer_2_0_mask = _RAND_10[31:0];
  _RAND_11 = {8{`RANDOM}};
  putBuffer_2_1_data = _RAND_11[255:0];
  _RAND_12 = {1{`RANDOM}};
  putBuffer_2_1_mask = _RAND_12[31:0];
  _RAND_13 = {8{`RANDOM}};
  putBuffer_3_0_data = _RAND_13[255:0];
  _RAND_14 = {1{`RANDOM}};
  putBuffer_3_0_mask = _RAND_14[31:0];
  _RAND_15 = {8{`RANDOM}};
  putBuffer_3_1_data = _RAND_15[255:0];
  _RAND_16 = {1{`RANDOM}};
  putBuffer_3_1_mask = _RAND_16[31:0];
  _RAND_17 = {8{`RANDOM}};
  putBuffer_4_0_data = _RAND_17[255:0];
  _RAND_18 = {1{`RANDOM}};
  putBuffer_4_0_mask = _RAND_18[31:0];
  _RAND_19 = {8{`RANDOM}};
  putBuffer_4_1_data = _RAND_19[255:0];
  _RAND_20 = {1{`RANDOM}};
  putBuffer_4_1_mask = _RAND_20[31:0];
  _RAND_21 = {8{`RANDOM}};
  putBuffer_5_0_data = _RAND_21[255:0];
  _RAND_22 = {1{`RANDOM}};
  putBuffer_5_0_mask = _RAND_22[31:0];
  _RAND_23 = {8{`RANDOM}};
  putBuffer_5_1_data = _RAND_23[255:0];
  _RAND_24 = {1{`RANDOM}};
  putBuffer_5_1_mask = _RAND_24[31:0];
  _RAND_25 = {8{`RANDOM}};
  putBuffer_6_0_data = _RAND_25[255:0];
  _RAND_26 = {1{`RANDOM}};
  putBuffer_6_0_mask = _RAND_26[31:0];
  _RAND_27 = {8{`RANDOM}};
  putBuffer_6_1_data = _RAND_27[255:0];
  _RAND_28 = {1{`RANDOM}};
  putBuffer_6_1_mask = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  beatVals_0_0 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  beatVals_0_1 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  beatVals_1_0 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  beatVals_1_1 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  beatVals_2_0 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  beatVals_2_1 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  beatVals_3_0 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  beatVals_3_1 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  beatVals_4_0 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  beatVals_4_1 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  beatVals_5_0 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  beatVals_5_1 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  beatVals_6_0 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  beatVals_6_1 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  insertIdxReg = _RAND_43[2:0];
  _RAND_44 = {1{`RANDOM}};
  bufferLeakCnt = _RAND_44[11:0];
  _RAND_45 = {8{`RANDOM}};
  io_d_pb_beat_rdata = _RAND_45[255:0];
  _RAND_46 = {1{`RANDOM}};
  io_d_pb_beat_rmask = _RAND_46[31:0];
  _RAND_47 = {8{`RANDOM}};
  io_a_pb_beat_rdata = _RAND_47[255:0];
  _RAND_48 = {1{`RANDOM}};
  io_a_pb_beat_rmask = _RAND_48[31:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    counter = 1'h0;
  end
  if (reset) begin
    beatVals_0_0 = 1'h0;
  end
  if (reset) begin
    beatVals_0_1 = 1'h0;
  end
  if (reset) begin
    beatVals_1_0 = 1'h0;
  end
  if (reset) begin
    beatVals_1_1 = 1'h0;
  end
  if (reset) begin
    beatVals_2_0 = 1'h0;
  end
  if (reset) begin
    beatVals_2_1 = 1'h0;
  end
  if (reset) begin
    beatVals_3_0 = 1'h0;
  end
  if (reset) begin
    beatVals_3_1 = 1'h0;
  end
  if (reset) begin
    beatVals_4_0 = 1'h0;
  end
  if (reset) begin
    beatVals_4_1 = 1'h0;
  end
  if (reset) begin
    beatVals_5_0 = 1'h0;
  end
  if (reset) begin
    beatVals_5_1 = 1'h0;
  end
  if (reset) begin
    beatVals_6_0 = 1'h0;
  end
  if (reset) begin
    beatVals_6_1 = 1'h0;
  end
  if (reset) begin
    bufferLeakCnt = 12'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

