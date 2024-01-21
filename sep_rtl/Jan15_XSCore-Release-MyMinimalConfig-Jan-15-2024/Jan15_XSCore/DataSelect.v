module DataSelect(
  input         io_doOverride_0,
  input  [63:0] io_readData_0_0,
  input  [63:0] io_readData_0_1,
  input  [63:0] io_readData_1_0,
  input  [63:0] io_readData_1_1,
  input  [63:0] io_readData_2_0,
  input  [63:0] io_readData_2_1,
  input  [4:0]  io_fromSlowPorts_0_0,
  input  [4:0]  io_fromSlowPorts_0_1,
  input  [4:0]  io_fromSlowPorts_1_0,
  input  [4:0]  io_fromSlowPorts_1_1,
  input  [4:0]  io_fromSlowPorts_2_0,
  input  [4:0]  io_fromSlowPorts_2_1,
  input  [4:0]  io_fromSlowPorts_3_0,
  input  [4:0]  io_fromSlowPorts_3_1,
  input  [4:0]  io_fromSlowPorts_4_0,
  input  [4:0]  io_fromSlowPorts_4_1,
  input  [63:0] io_slowData_0,
  input  [63:0] io_slowData_1,
  input  [63:0] io_slowData_2,
  input  [63:0] io_slowData_3,
  input  [63:0] io_slowData_4,
  input         io_enqBypass_0_0,
  input         io_enqBypass_1_1,
  input  [63:0] io_enqData_0_0_bits,
  input  [63:0] io_enqData_0_1_bits,
  input  [63:0] io_enqData_1_0_bits,
  input  [63:0] io_enqData_1_1_bits,
  output [63:0] io_deqData_0_0,
  output [63:0] io_deqData_0_1,
  output [63:0] io_deqData_1_0,
  output [63:0] io_deqData_1_1
);
  wire  _T = |io_fromSlowPorts_0_0; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_6 = io_fromSlowPorts_0_0[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_7 = io_fromSlowPorts_0_0[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_8 = io_fromSlowPorts_0_0[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_9 = io_fromSlowPorts_0_0[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_10 = io_fromSlowPorts_0_0[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_11 = _T_6 | _T_7; // @[Mux.scala 27:73]
  wire [63:0] _T_12 = _T_11 | _T_8; // @[Mux.scala 27:73]
  wire [63:0] _T_13 = _T_12 | _T_9; // @[Mux.scala 27:73]
  wire [63:0] _T_14 = _T_13 | _T_10; // @[Mux.scala 27:73]
  wire  _T_15 = |io_fromSlowPorts_0_1; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_21 = io_fromSlowPorts_0_1[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_22 = io_fromSlowPorts_0_1[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_23 = io_fromSlowPorts_0_1[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_24 = io_fromSlowPorts_0_1[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_25 = io_fromSlowPorts_0_1[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_26 = _T_21 | _T_22; // @[Mux.scala 27:73]
  wire [63:0] _T_27 = _T_26 | _T_23; // @[Mux.scala 27:73]
  wire [63:0] _T_28 = _T_27 | _T_24; // @[Mux.scala 27:73]
  wire [63:0] _T_29 = _T_28 | _T_25; // @[Mux.scala 27:73]
  wire  _T_30 = |io_fromSlowPorts_1_0; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_36 = io_fromSlowPorts_1_0[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_37 = io_fromSlowPorts_1_0[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_38 = io_fromSlowPorts_1_0[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_39 = io_fromSlowPorts_1_0[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_40 = io_fromSlowPorts_1_0[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_41 = _T_36 | _T_37; // @[Mux.scala 27:73]
  wire [63:0] _T_42 = _T_41 | _T_38; // @[Mux.scala 27:73]
  wire [63:0] _T_43 = _T_42 | _T_39; // @[Mux.scala 27:73]
  wire [63:0] _T_44 = _T_43 | _T_40; // @[Mux.scala 27:73]
  wire  _T_45 = |io_fromSlowPorts_1_1; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_51 = io_fromSlowPorts_1_1[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_52 = io_fromSlowPorts_1_1[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_53 = io_fromSlowPorts_1_1[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_54 = io_fromSlowPorts_1_1[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_55 = io_fromSlowPorts_1_1[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_56 = _T_51 | _T_52; // @[Mux.scala 27:73]
  wire [63:0] _T_57 = _T_56 | _T_53; // @[Mux.scala 27:73]
  wire [63:0] _T_58 = _T_57 | _T_54; // @[Mux.scala 27:73]
  wire [63:0] _T_59 = _T_58 | _T_55; // @[Mux.scala 27:73]
  wire  _T_60 = |io_fromSlowPorts_2_0; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_66 = io_fromSlowPorts_2_0[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_67 = io_fromSlowPorts_2_0[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_68 = io_fromSlowPorts_2_0[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_69 = io_fromSlowPorts_2_0[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_70 = io_fromSlowPorts_2_0[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_71 = _T_66 | _T_67; // @[Mux.scala 27:73]
  wire [63:0] _T_72 = _T_71 | _T_68; // @[Mux.scala 27:73]
  wire [63:0] _T_73 = _T_72 | _T_69; // @[Mux.scala 27:73]
  wire [63:0] _T_74 = _T_73 | _T_70; // @[Mux.scala 27:73]
  wire  _T_75 = |io_fromSlowPorts_2_1; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_81 = io_fromSlowPorts_2_1[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_82 = io_fromSlowPorts_2_1[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_83 = io_fromSlowPorts_2_1[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_84 = io_fromSlowPorts_2_1[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_85 = io_fromSlowPorts_2_1[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_86 = _T_81 | _T_82; // @[Mux.scala 27:73]
  wire [63:0] _T_87 = _T_86 | _T_83; // @[Mux.scala 27:73]
  wire [63:0] _T_88 = _T_87 | _T_84; // @[Mux.scala 27:73]
  wire [63:0] _T_89 = _T_88 | _T_85; // @[Mux.scala 27:73]
  wire  _T_90 = |io_fromSlowPorts_3_0; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_96 = io_fromSlowPorts_3_0[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_97 = io_fromSlowPorts_3_0[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_98 = io_fromSlowPorts_3_0[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_99 = io_fromSlowPorts_3_0[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_100 = io_fromSlowPorts_3_0[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_101 = _T_96 | _T_97; // @[Mux.scala 27:73]
  wire [63:0] _T_102 = _T_101 | _T_98; // @[Mux.scala 27:73]
  wire [63:0] _T_103 = _T_102 | _T_99; // @[Mux.scala 27:73]
  wire [63:0] _T_104 = _T_103 | _T_100; // @[Mux.scala 27:73]
  wire  _T_105 = |io_fromSlowPorts_3_1; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_111 = io_fromSlowPorts_3_1[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_112 = io_fromSlowPorts_3_1[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_113 = io_fromSlowPorts_3_1[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_114 = io_fromSlowPorts_3_1[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_115 = io_fromSlowPorts_3_1[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_116 = _T_111 | _T_112; // @[Mux.scala 27:73]
  wire [63:0] _T_117 = _T_116 | _T_113; // @[Mux.scala 27:73]
  wire [63:0] _T_118 = _T_117 | _T_114; // @[Mux.scala 27:73]
  wire [63:0] _T_119 = _T_118 | _T_115; // @[Mux.scala 27:73]
  wire  _T_120 = |io_fromSlowPorts_4_0; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_126 = io_fromSlowPorts_4_0[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_127 = io_fromSlowPorts_4_0[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_128 = io_fromSlowPorts_4_0[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_129 = io_fromSlowPorts_4_0[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_130 = io_fromSlowPorts_4_0[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_131 = _T_126 | _T_127; // @[Mux.scala 27:73]
  wire [63:0] _T_132 = _T_131 | _T_128; // @[Mux.scala 27:73]
  wire [63:0] _T_133 = _T_132 | _T_129; // @[Mux.scala 27:73]
  wire [63:0] _T_134 = _T_133 | _T_130; // @[Mux.scala 27:73]
  wire  _T_135 = |io_fromSlowPorts_4_1; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_141 = io_fromSlowPorts_4_1[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_142 = io_fromSlowPorts_4_1[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_143 = io_fromSlowPorts_4_1[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_144 = io_fromSlowPorts_4_1[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_145 = io_fromSlowPorts_4_1[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_146 = _T_141 | _T_142; // @[Mux.scala 27:73]
  wire [63:0] _T_147 = _T_146 | _T_143; // @[Mux.scala 27:73]
  wire [63:0] _T_148 = _T_147 | _T_144; // @[Mux.scala 27:73]
  wire [63:0] _T_149 = _T_148 | _T_145; // @[Mux.scala 27:73]
  wire [63:0] realEnqData_0_0 = _T_90 ? _T_104 : io_enqData_0_0_bits; // @[ReservationStation.scala 662:28]
  wire [63:0] realEnqData_0_1 = _T_105 ? _T_119 : io_enqData_0_1_bits; // @[ReservationStation.scala 662:28]
  wire [63:0] realEnqData_1_0 = _T_120 ? _T_134 : io_enqData_1_0_bits; // @[ReservationStation.scala 662:28]
  wire [63:0] realEnqData_1_1 = _T_135 ? _T_149 : io_enqData_1_1_bits; // @[ReservationStation.scala 662:28]
  wire [63:0] normalData = _T ? _T_14 : io_readData_0_0; // @[ReservationStation.scala 668:29]
  wire [63:0] oldestData = _T_60 ? _T_74 : io_readData_2_0; // @[ReservationStation.scala 669:29]
  wire [63:0] _io_deqData_0_0_T = io_doOverride_0 ? oldestData : normalData; // @[ReservationStation.scala 670:22]
  wire [1:0] _T_150 = {1'h0,io_enqBypass_0_0}; // @[ReservationStation.scala 672:31]
  wire [63:0] _io_deqData_0_0_T_1 = io_enqBypass_0_0 ? realEnqData_0_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] normalData_1 = _T_15 ? _T_29 : io_readData_0_1; // @[ReservationStation.scala 668:29]
  wire [63:0] oldestData_1 = _T_75 ? _T_89 : io_readData_2_1; // @[ReservationStation.scala 669:29]
  wire [63:0] _io_deqData_0_1_T = io_doOverride_0 ? oldestData_1 : normalData_1; // @[ReservationStation.scala 670:22]
  wire [63:0] _io_deqData_0_1_T_1 = io_enqBypass_0_0 ? realEnqData_0_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] normalData_2 = _T_30 ? _T_44 : io_readData_1_0; // @[ReservationStation.scala 668:29]
  wire [1:0] _T_154 = {io_enqBypass_1_1,1'h0}; // @[ReservationStation.scala 672:31]
  wire [63:0] _io_deqData_1_0_T_2 = io_enqBypass_1_1 ? realEnqData_1_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] normalData_3 = _T_45 ? _T_59 : io_readData_1_1; // @[ReservationStation.scala 668:29]
  wire [63:0] _io_deqData_1_1_T_2 = io_enqBypass_1_1 ? realEnqData_1_1 : 64'h0; // @[Mux.scala 27:73]
  assign io_deqData_0_0 = |_T_150 ? _io_deqData_0_0_T_1 : _io_deqData_0_0_T; // @[ReservationStation.scala 670:16 672:43 673:18]
  assign io_deqData_0_1 = |_T_150 ? _io_deqData_0_1_T_1 : _io_deqData_0_1_T; // @[ReservationStation.scala 670:16 672:43 673:18]
  assign io_deqData_1_0 = |_T_154 ? _io_deqData_1_0_T_2 : normalData_2; // @[ReservationStation.scala 670:16 672:43 673:18]
  assign io_deqData_1_1 = |_T_154 ? _io_deqData_1_1_T_2 : normalData_3; // @[ReservationStation.scala 670:16 672:43 673:18]
endmodule

