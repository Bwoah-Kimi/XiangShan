module SqrtIterModule_1(
  input         clock,
  input  [53:0] io_a,
  input  [1:0]  io_state,
  output [55:0] io_rem,
  output [54:0] io_res,
  output [54:0] io_resM1
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] signs_csa_sel_0_io_in_0; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_0_io_in_1; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_0_io_in_2; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_0_io_out_0; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_0_io_out_1; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_1_io_in_0; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_1_io_in_1; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_1_io_in_2; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_1_io_out_0; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_1_io_out_1; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_2_io_in_0; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_2_io_in_1; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_2_io_in_2; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_2_io_out_0; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_2_io_out_1; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_3_io_in_0; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_3_io_in_1; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_3_io_in_2; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_3_io_out_0; // @[FDIV.scala 570:21]
  wire [7:0] signs_csa_sel_3_io_out_1; // @[FDIV.scala 570:21]
  wire [55:0] csa_iter_io_in_0; // @[FDIV.scala 600:23]
  wire [55:0] csa_iter_io_in_1; // @[FDIV.scala 600:23]
  wire [55:0] csa_iter_io_in_2; // @[FDIV.scala 600:23]
  wire [55:0] csa_iter_io_out_0; // @[FDIV.scala 600:23]
  wire [55:0] csa_iter_io_out_1; // @[FDIV.scala 600:23]
  wire [55:0] wsInit = {2'h3,io_a}; // @[Cat.scala 31:58]
  wire [7:0] _signs_T_16 = {signs_csa_sel_3_io_out_1[6:0], 1'h0}; // @[FDIV.scala 589:43]
  wire [7:0] _signs_T_18 = signs_csa_sel_3_io_out_0 + _signs_T_16; // @[FDIV.scala 589:20]
  wire  signs_3 = _signs_T_18[7]; // @[FDIV.scala 589:49]
  wire [7:0] _signs_T_11 = {signs_csa_sel_2_io_out_1[6:0], 1'h0}; // @[FDIV.scala 589:43]
  wire [7:0] _signs_T_13 = signs_csa_sel_2_io_out_0 + _signs_T_11; // @[FDIV.scala 589:20]
  wire  signs_2 = _signs_T_13[7]; // @[FDIV.scala 589:49]
  wire [7:0] _signs_T_6 = {signs_csa_sel_1_io_out_1[6:0], 1'h0}; // @[FDIV.scala 589:43]
  wire [7:0] _signs_T_8 = signs_csa_sel_1_io_out_0 + _signs_T_6; // @[FDIV.scala 589:20]
  wire  signs_1 = _signs_T_8[7]; // @[FDIV.scala 589:49]
  wire [7:0] _signs_T_1 = {signs_csa_sel_0_io_out_1[6:0], 1'h0}; // @[FDIV.scala 589:43]
  wire [7:0] _signs_T_3 = signs_csa_sel_0_io_out_0 + _signs_T_1; // @[FDIV.scala 589:20]
  wire  signs_0 = _signs_T_3[7]; // @[FDIV.scala 589:49]
  wire [3:0] _s_T = {signs_3,signs_2,signs_1,signs_0}; // @[FDIV.scala 591:25]
  wire  _s_sel_q_4_T_3 = ~_s_T[2]; // @[FDIV.scala 642:32]
  wire  _s_sel_q_4_T_6 = ~_s_T[1]; // @[FDIV.scala 642:47]
  wire  s_sel_q_4 = ~_s_T[3] & ~_s_T[2] & ~_s_T[1]; // @[FDIV.scala 642:44]
  wire  s_sel_q_3 = _s_T[3] & _s_sel_q_4_T_3 & _s_sel_q_4_T_6; // @[FDIV.scala 641:42]
  wire  s_sel_q_2 = _s_T[2] & _s_sel_q_4_T_6; // @[FDIV.scala 640:27]
  wire  s_sel_q_1 = ~_s_T[0] & _s_T[1] & _s_T[2]; // @[FDIV.scala 639:42]
  wire  s_sel_q_0 = _s_T[0] & _s_T[1] & _s_T[2]; // @[FDIV.scala 638:40]
  wire [4:0] s = {s_sel_q_4,s_sel_q_3,s_sel_q_2,s_sel_q_1,s_sel_q_0}; // @[FDIV.scala 643:10]
  reg [54:0] aReg; // @[Reg.scala 16:16]
  wire [56:0] _aIter_quotNext_T_1 = {aReg, 2'h0}; // @[FDIV.scala 650:21]
  wire [56:0] _aIter_quotNext_T_2 = _aIter_quotNext_T_1 | 57'h2; // @[FDIV.scala 650:26]
  wire [56:0] _aIter_quotNext_T_15 = s[4] ? _aIter_quotNext_T_2 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _aIter_quotNext_T_5 = _aIter_quotNext_T_1 | 57'h1; // @[FDIV.scala 651:26]
  wire [56:0] _aIter_quotNext_T_16 = s[3] ? _aIter_quotNext_T_5 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _aIter_quotNext_T_20 = _aIter_quotNext_T_15 | _aIter_quotNext_T_16; // @[Mux.scala 27:73]
  wire [56:0] _aIter_quotNext_T_17 = s[2] ? _aIter_quotNext_T_1 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _aIter_quotNext_T_21 = _aIter_quotNext_T_20 | _aIter_quotNext_T_17; // @[Mux.scala 27:73]
  reg [54:0] bReg; // @[Reg.scala 16:16]
  wire [56:0] _aIter_quotNext_T_10 = {bReg, 2'h0}; // @[FDIV.scala 653:23]
  wire [56:0] _aIter_quotNext_T_11 = _aIter_quotNext_T_10 | 57'h3; // @[FDIV.scala 653:28]
  wire [56:0] _aIter_quotNext_T_18 = s[1] ? _aIter_quotNext_T_11 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _aIter_quotNext_T_22 = _aIter_quotNext_T_21 | _aIter_quotNext_T_18; // @[Mux.scala 27:73]
  wire [56:0] _aIter_quotNext_T_14 = _aIter_quotNext_T_10 | 57'h2; // @[FDIV.scala 654:28]
  wire [56:0] _aIter_quotNext_T_19 = s[0] ? _aIter_quotNext_T_14 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] aIter_quotNext = _aIter_quotNext_T_22 | _aIter_quotNext_T_19; // @[Mux.scala 27:73]
  wire [54:0] aIter = aIter_quotNext[54:0]; // @[FDIV.scala 663:14]
  wire  _aReg_T_4 = io_state[0] | io_state[1]; // @[FDIV.scala 537:74]
  wire [56:0] _bIter_quotM1Next_T_15 = s[4] ? _aIter_quotNext_T_5 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _bIter_quotM1Next_T_16 = s[3] ? _aIter_quotNext_T_1 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _bIter_quotM1Next_T_20 = _bIter_quotM1Next_T_15 | _bIter_quotM1Next_T_16; // @[Mux.scala 27:73]
  wire [56:0] _bIter_quotM1Next_T_17 = s[2] ? _aIter_quotNext_T_11 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _bIter_quotM1Next_T_21 = _bIter_quotM1Next_T_20 | _bIter_quotM1Next_T_17; // @[Mux.scala 27:73]
  wire [56:0] _bIter_quotM1Next_T_18 = s[1] ? _aIter_quotNext_T_14 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _bIter_quotM1Next_T_22 = _bIter_quotM1Next_T_21 | _bIter_quotM1Next_T_18; // @[Mux.scala 27:73]
  wire [56:0] _bIter_quotM1Next_T_14 = _aIter_quotNext_T_10 | 57'h1; // @[FDIV.scala 661:28]
  wire [56:0] _bIter_quotM1Next_T_19 = s[0] ? _bIter_quotM1Next_T_14 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] bIter_quotM1Next = _bIter_quotM1Next_T_22 | _bIter_quotM1Next_T_19; // @[Mux.scala 27:73]
  wire [54:0] bIter = bIter_quotM1Next[54:0]; // @[FDIV.scala 663:38]
  reg [2:0] aHeadReg; // @[FDIV.scala 539:21]
  wire [55:0] wsIter = csa_iter_io_out_0; // @[FDIV.scala 604:30]
  reg [55:0] wsReg; // @[Reg.scala 16:16]
  wire [55:0] wcIter = {csa_iter_io_out_1[54:0], 1'h0}; // @[FDIV.scala 605:41]
  reg [55:0] wcReg; // @[Reg.scala 16:16]
  reg [31:0] jReg; // @[Reg.scala 16:16]
  wire [31:0] _jReg_T_2 = jReg + 32'h1; // @[FDIV.scala 544:50]
  wire  _lookup_T = jReg == 32'h1; // @[FDIV.scala 547:22]
  wire [2:0] lookup = jReg == 32'h1 ? 3'h5 : aHeadReg; // @[FDIV.scala 547:19]
  wire [5:0] _mNeg_T_2 = 3'h1 == lookup ? 6'he : 6'hd; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_4 = 3'h2 == lookup ? 6'h10 : _mNeg_T_2; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_6 = 3'h3 == lookup ? 6'h11 : _mNeg_T_4; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_8 = 3'h4 == lookup ? 6'h12 : _mNeg_T_6; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_10 = 3'h5 == lookup ? 6'h14 : _mNeg_T_8; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_12 = 3'h6 == lookup ? 6'h16 : _mNeg_T_10; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_14 = 3'h7 == lookup ? 6'h17 : _mNeg_T_12; // @[Mux.scala 81:58]
  wire  mNeg_signBit = _mNeg_T_14[5]; // @[FDIV.scala 130:20]
  wire [6:0] _mNeg_T_15 = {mNeg_signBit,_mNeg_T_14}; // @[Cat.scala 31:58]
  wire [5:0] _mNeg_T_19 = 3'h1 == lookup ? 6'h5 : 6'h4; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_21 = 3'h2 == lookup ? 6'h6 : _mNeg_T_19; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_23 = 3'h3 == lookup ? 6'h6 : _mNeg_T_21; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_25 = 3'h4 == lookup ? 6'h6 : _mNeg_T_23; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_27 = 3'h5 == lookup ? 6'h8 : _mNeg_T_25; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_29 = 3'h6 == lookup ? 6'h8 : _mNeg_T_27; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_31 = 3'h7 == lookup ? 6'h8 : _mNeg_T_29; // @[Mux.scala 81:58]
  wire  mNeg_signBit_1 = _mNeg_T_31[5]; // @[FDIV.scala 130:20]
  wire [6:0] _mNeg_T_32 = {mNeg_signBit_1,_mNeg_T_31}; // @[Cat.scala 31:58]
  wire [5:0] _mNeg_T_42 = 3'h4 == lookup ? 6'h3a : 6'h3c; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_44 = 3'h5 == lookup ? 6'h3a : _mNeg_T_42; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_46 = 3'h6 == lookup ? 6'h38 : _mNeg_T_44; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_48 = 3'h7 == lookup ? 6'h38 : _mNeg_T_46; // @[Mux.scala 81:58]
  wire  mNeg_signBit_2 = _mNeg_T_48[5]; // @[FDIV.scala 130:20]
  wire [6:0] _mNeg_T_49 = {mNeg_signBit_2,_mNeg_T_48}; // @[Cat.scala 31:58]
  wire [5:0] _mNeg_T_53 = 3'h1 == lookup ? 6'h32 : 6'h34; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_55 = 3'h2 == lookup ? 6'h30 : _mNeg_T_53; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_57 = 3'h3 == lookup ? 6'h30 : _mNeg_T_55; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_59 = 3'h4 == lookup ? 6'h2e : _mNeg_T_57; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_61 = 3'h5 == lookup ? 6'h2c : _mNeg_T_59; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_63 = 3'h6 == lookup ? 6'h2c : _mNeg_T_61; // @[Mux.scala 81:58]
  wire [5:0] _mNeg_T_65 = 3'h7 == lookup ? 6'h2a : _mNeg_T_63; // @[Mux.scala 81:58]
  wire  mNeg_signBit_3 = _mNeg_T_65[5]; // @[FDIV.scala 130:20]
  wire [6:0] _mNeg_T_66 = {mNeg_signBit_3,_mNeg_T_65}; // @[Cat.scala 31:58]
  wire [58:0] _f_T = {bReg, 4'h0}; // @[FDIV.scala 593:11]
  wire [58:0] _f_T_1 = _f_T | 59'hc; // @[FDIV.scala 593:16]
  wire [57:0] _f_T_2 = {bReg, 3'h0}; // @[FDIV.scala 594:11]
  wire [57:0] _f_T_3 = _f_T_2 | 58'h7; // @[FDIV.scala 594:16]
  wire [54:0] _f_T_4 = ~aReg; // @[FDIV.scala 596:6]
  wire [57:0] _f_T_5 = {_f_T_4, 3'h0}; // @[FDIV.scala 596:12]
  wire [57:0] _f_T_6 = _f_T_5 | 58'h7; // @[FDIV.scala 596:17]
  wire [58:0] _f_T_8 = {_f_T_4, 4'h0}; // @[FDIV.scala 597:12]
  wire [58:0] _f_T_9 = _f_T_8 | 59'hc; // @[FDIV.scala 597:17]
  wire [58:0] _f_T_15 = s[0] ? _f_T_1 : 59'h0; // @[Mux.scala 27:73]
  wire [57:0] _f_T_16 = s[1] ? _f_T_3 : 58'h0; // @[Mux.scala 27:73]
  wire [57:0] _f_T_18 = s[3] ? _f_T_6 : 58'h0; // @[Mux.scala 27:73]
  wire [58:0] _f_T_19 = s[4] ? _f_T_9 : 59'h0; // @[Mux.scala 27:73]
  wire [58:0] _GEN_5 = {{1'd0}, _f_T_16}; // @[Mux.scala 27:73]
  wire [58:0] _f_T_20 = _f_T_15 | _GEN_5; // @[Mux.scala 27:73]
  wire [58:0] _GEN_6 = {{1'd0}, _f_T_18}; // @[Mux.scala 27:73]
  wire [58:0] _f_T_22 = _f_T_20 | _GEN_6; // @[Mux.scala 27:73]
  wire [58:0] _f_T_23 = _f_T_22 | _f_T_19; // @[Mux.scala 27:73]
  wire [57:0] _csa_iter_io_in_0_T = {wsReg, 2'h0}; // @[FDIV.scala 601:29]
  wire [57:0] _csa_iter_io_in_1_T = {wcReg, 2'h0}; // @[FDIV.scala 602:29]
  wire [57:0] f = _f_T_23[57:0]; // @[FDIV.scala 534:15 592:5]
  wire [111:0] _GEN_7 = {f, 54'h0}; // @[FDIV.scala 603:26]
  wire [120:0] _csa_iter_io_in_2_T = {{9'd0}, _GEN_7}; // @[FDIV.scala 603:26]
  wire [32:0] _csa_iter_io_in_2_T_1 = {jReg, 1'h0}; // @[FDIV.scala 603:46]
  wire [120:0] _csa_iter_io_in_2_T_2 = _csa_iter_io_in_2_T >> _csa_iter_io_in_2_T_1; // @[FDIV.scala 603:40]
  wire [54:0] _aHeadReg_T_1 = aIter >> _csa_iter_io_in_2_T_1; // @[FDIV.scala 624:24]
  wire [2:0] _aHeadReg_T_5 = {aIter[0],2'h0}; // @[Cat.scala 31:58]
  wire [31:0] _aHeadReg_T_7 = jReg - 32'h2; // @[FDIV.scala 628:20]
  wire [32:0] _aHeadReg_T_8 = {_aHeadReg_T_7, 1'h0}; // @[FDIV.scala 628:27]
  wire [54:0] _aHeadReg_T_9 = aIter >> _aHeadReg_T_8; // @[FDIV.scala 628:13]
  wire [54:0] _aHeadReg_T_10 = _lookup_T ? {{52'd0}, _aHeadReg_T_5} : _aHeadReg_T_9; // @[FDIV.scala 626:8]
  wire [54:0] _aHeadReg_T_11 = _aHeadReg_T_1[0] ? 55'h7 : _aHeadReg_T_10; // @[FDIV.scala 624:18]
  CSA3_2_3358 signs_csa_sel_0 ( // @[FDIV.scala 570:21]
    .io_in_0(signs_csa_sel_0_io_in_0),
    .io_in_1(signs_csa_sel_0_io_in_1),
    .io_in_2(signs_csa_sel_0_io_in_2),
    .io_out_0(signs_csa_sel_0_io_out_0),
    .io_out_1(signs_csa_sel_0_io_out_1)
  );
  CSA3_2_3358 signs_csa_sel_1 ( // @[FDIV.scala 570:21]
    .io_in_0(signs_csa_sel_1_io_in_0),
    .io_in_1(signs_csa_sel_1_io_in_1),
    .io_in_2(signs_csa_sel_1_io_in_2),
    .io_out_0(signs_csa_sel_1_io_out_0),
    .io_out_1(signs_csa_sel_1_io_out_1)
  );
  CSA3_2_3358 signs_csa_sel_2 ( // @[FDIV.scala 570:21]
    .io_in_0(signs_csa_sel_2_io_in_0),
    .io_in_1(signs_csa_sel_2_io_in_1),
    .io_in_2(signs_csa_sel_2_io_in_2),
    .io_out_0(signs_csa_sel_2_io_out_0),
    .io_out_1(signs_csa_sel_2_io_out_1)
  );
  CSA3_2_3358 signs_csa_sel_3 ( // @[FDIV.scala 570:21]
    .io_in_0(signs_csa_sel_3_io_in_0),
    .io_in_1(signs_csa_sel_3_io_in_1),
    .io_in_2(signs_csa_sel_3_io_in_2),
    .io_out_0(signs_csa_sel_3_io_out_0),
    .io_out_1(signs_csa_sel_3_io_out_1)
  );
  CSA3_2_3398 csa_iter ( // @[FDIV.scala 600:23]
    .io_in_0(csa_iter_io_in_0),
    .io_in_1(csa_iter_io_in_1),
    .io_in_2(csa_iter_io_in_2),
    .io_out_0(csa_iter_io_out_0),
    .io_out_1(csa_iter_io_out_1)
  );
  assign io_rem = wsReg + wcReg; // @[FDIV.scala 630:19]
  assign io_res = aReg; // @[FDIV.scala 631:10]
  assign io_resM1 = bReg; // @[FDIV.scala 632:12]
  assign signs_csa_sel_0_io_in_0 = wsReg[55:48]; // @[FDIV.scala 571:31]
  assign signs_csa_sel_0_io_in_1 = wcReg[55:48]; // @[FDIV.scala 572:31]
  assign signs_csa_sel_0_io_in_2 = {_mNeg_T_15,1'h0}; // @[Cat.scala 31:58]
  assign signs_csa_sel_1_io_in_0 = wsReg[55:48]; // @[FDIV.scala 571:31]
  assign signs_csa_sel_1_io_in_1 = wcReg[55:48]; // @[FDIV.scala 572:31]
  assign signs_csa_sel_1_io_in_2 = {_mNeg_T_32,1'h0}; // @[Cat.scala 31:58]
  assign signs_csa_sel_2_io_in_0 = wsReg[55:48]; // @[FDIV.scala 571:31]
  assign signs_csa_sel_2_io_in_1 = wcReg[55:48]; // @[FDIV.scala 572:31]
  assign signs_csa_sel_2_io_in_2 = {_mNeg_T_49,1'h0}; // @[Cat.scala 31:58]
  assign signs_csa_sel_3_io_in_0 = wsReg[55:48]; // @[FDIV.scala 571:31]
  assign signs_csa_sel_3_io_in_1 = wcReg[55:48]; // @[FDIV.scala 572:31]
  assign signs_csa_sel_3_io_in_2 = {_mNeg_T_66,1'h0}; // @[Cat.scala 31:58]
  assign csa_iter_io_in_0 = _csa_iter_io_in_0_T[55:0]; // @[FDIV.scala 601:20]
  assign csa_iter_io_in_1 = _csa_iter_io_in_1_T[55:0]; // @[FDIV.scala 602:20]
  assign csa_iter_io_in_2 = _csa_iter_io_in_2_T_2[55:0]; // @[FDIV.scala 603:20]
  always @(posedge clock) begin
    if (_aReg_T_4) begin // @[Reg.scala 17:18]
      if (io_state[0]) begin // @[FDIV.scala 537:27]
        aReg <= 55'h1;
      end else begin
        aReg <= aIter;
      end
    end
    if (_aReg_T_4) begin // @[Reg.scala 17:18]
      if (io_state[0]) begin // @[FDIV.scala 538:27]
        bReg <= 55'h0;
      end else begin
        bReg <= bIter;
      end
    end
    aHeadReg <= _aHeadReg_T_11[2:0]; // @[FDIV.scala 624:12]
    if (_aReg_T_4) begin // @[Reg.scala 17:18]
      if (io_state[0]) begin // @[FDIV.scala 541:28]
        wsReg <= wsInit;
      end else begin
        wsReg <= wsIter;
      end
    end
    if (_aReg_T_4) begin // @[Reg.scala 17:18]
      if (io_state[0]) begin // @[FDIV.scala 542:28]
        wcReg <= 56'h0;
      end else begin
        wcReg <= wcIter;
      end
    end
    if (_aReg_T_4) begin // @[Reg.scala 17:18]
      if (io_state[0]) begin // @[FDIV.scala 544:27]
        jReg <= 32'h1;
      end else begin
        jReg <= _jReg_T_2;
      end
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
  aReg = _RAND_0[54:0];
  _RAND_1 = {2{`RANDOM}};
  bReg = _RAND_1[54:0];
  _RAND_2 = {1{`RANDOM}};
  aHeadReg = _RAND_2[2:0];
  _RAND_3 = {2{`RANDOM}};
  wsReg = _RAND_3[55:0];
  _RAND_4 = {2{`RANDOM}};
  wcReg = _RAND_4[55:0];
  _RAND_5 = {1{`RANDOM}};
  jReg = _RAND_5[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

