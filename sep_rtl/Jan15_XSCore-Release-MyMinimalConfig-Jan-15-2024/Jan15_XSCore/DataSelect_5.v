module DataSelect_5(
  input         io_doOverride_0,
  input  [63:0] io_readData_0_0,
  input  [63:0] io_readData_1_0,
  input  [63:0] io_readData_2_0,
  input  [8:0]  io_fromSlowPorts_0_0,
  input  [8:0]  io_fromSlowPorts_1_0,
  input  [8:0]  io_fromSlowPorts_2_0,
  input  [8:0]  io_fromSlowPorts_3_0,
  input  [8:0]  io_fromSlowPorts_4_0,
  input  [63:0] io_slowData_0,
  input  [63:0] io_slowData_1,
  input  [63:0] io_slowData_2,
  input  [63:0] io_slowData_3,
  input  [63:0] io_slowData_4,
  input  [63:0] io_slowData_5,
  input  [63:0] io_slowData_6,
  input  [63:0] io_slowData_7,
  input  [63:0] io_slowData_8,
  input         io_enqBypass_0_0,
  input         io_enqBypass_1_1,
  input  [63:0] io_enqData_0_0_bits,
  input  [63:0] io_enqData_1_0_bits,
  output [63:0] io_deqData_0_0,
  output [63:0] io_deqData_1_0
);
  wire  _T = |io_fromSlowPorts_0_0; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_10 = io_fromSlowPorts_0_0[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_11 = io_fromSlowPorts_0_0[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_12 = io_fromSlowPorts_0_0[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_13 = io_fromSlowPorts_0_0[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_14 = io_fromSlowPorts_0_0[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_15 = io_fromSlowPorts_0_0[5] ? io_slowData_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_16 = io_fromSlowPorts_0_0[6] ? io_slowData_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_17 = io_fromSlowPorts_0_0[7] ? io_slowData_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_18 = io_fromSlowPorts_0_0[8] ? io_slowData_8 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_19 = _T_10 | _T_11; // @[Mux.scala 27:73]
  wire [63:0] _T_20 = _T_19 | _T_12; // @[Mux.scala 27:73]
  wire [63:0] _T_21 = _T_20 | _T_13; // @[Mux.scala 27:73]
  wire [63:0] _T_22 = _T_21 | _T_14; // @[Mux.scala 27:73]
  wire [63:0] _T_23 = _T_22 | _T_15; // @[Mux.scala 27:73]
  wire [63:0] _T_24 = _T_23 | _T_16; // @[Mux.scala 27:73]
  wire [63:0] _T_25 = _T_24 | _T_17; // @[Mux.scala 27:73]
  wire [63:0] _T_26 = _T_25 | _T_18; // @[Mux.scala 27:73]
  wire  _T_27 = |io_fromSlowPorts_1_0; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_37 = io_fromSlowPorts_1_0[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_38 = io_fromSlowPorts_1_0[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_39 = io_fromSlowPorts_1_0[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_40 = io_fromSlowPorts_1_0[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_41 = io_fromSlowPorts_1_0[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_42 = io_fromSlowPorts_1_0[5] ? io_slowData_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_43 = io_fromSlowPorts_1_0[6] ? io_slowData_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_44 = io_fromSlowPorts_1_0[7] ? io_slowData_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_45 = io_fromSlowPorts_1_0[8] ? io_slowData_8 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_46 = _T_37 | _T_38; // @[Mux.scala 27:73]
  wire [63:0] _T_47 = _T_46 | _T_39; // @[Mux.scala 27:73]
  wire [63:0] _T_48 = _T_47 | _T_40; // @[Mux.scala 27:73]
  wire [63:0] _T_49 = _T_48 | _T_41; // @[Mux.scala 27:73]
  wire [63:0] _T_50 = _T_49 | _T_42; // @[Mux.scala 27:73]
  wire [63:0] _T_51 = _T_50 | _T_43; // @[Mux.scala 27:73]
  wire [63:0] _T_52 = _T_51 | _T_44; // @[Mux.scala 27:73]
  wire [63:0] _T_53 = _T_52 | _T_45; // @[Mux.scala 27:73]
  wire  _T_54 = |io_fromSlowPorts_2_0; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_64 = io_fromSlowPorts_2_0[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_65 = io_fromSlowPorts_2_0[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_66 = io_fromSlowPorts_2_0[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_67 = io_fromSlowPorts_2_0[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_68 = io_fromSlowPorts_2_0[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_69 = io_fromSlowPorts_2_0[5] ? io_slowData_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_70 = io_fromSlowPorts_2_0[6] ? io_slowData_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_71 = io_fromSlowPorts_2_0[7] ? io_slowData_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_72 = io_fromSlowPorts_2_0[8] ? io_slowData_8 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_73 = _T_64 | _T_65; // @[Mux.scala 27:73]
  wire [63:0] _T_74 = _T_73 | _T_66; // @[Mux.scala 27:73]
  wire [63:0] _T_75 = _T_74 | _T_67; // @[Mux.scala 27:73]
  wire [63:0] _T_76 = _T_75 | _T_68; // @[Mux.scala 27:73]
  wire [63:0] _T_77 = _T_76 | _T_69; // @[Mux.scala 27:73]
  wire [63:0] _T_78 = _T_77 | _T_70; // @[Mux.scala 27:73]
  wire [63:0] _T_79 = _T_78 | _T_71; // @[Mux.scala 27:73]
  wire [63:0] _T_80 = _T_79 | _T_72; // @[Mux.scala 27:73]
  wire  _T_81 = |io_fromSlowPorts_3_0; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_91 = io_fromSlowPorts_3_0[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_92 = io_fromSlowPorts_3_0[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_93 = io_fromSlowPorts_3_0[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_94 = io_fromSlowPorts_3_0[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_95 = io_fromSlowPorts_3_0[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_96 = io_fromSlowPorts_3_0[5] ? io_slowData_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_97 = io_fromSlowPorts_3_0[6] ? io_slowData_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_98 = io_fromSlowPorts_3_0[7] ? io_slowData_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_99 = io_fromSlowPorts_3_0[8] ? io_slowData_8 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_100 = _T_91 | _T_92; // @[Mux.scala 27:73]
  wire [63:0] _T_101 = _T_100 | _T_93; // @[Mux.scala 27:73]
  wire [63:0] _T_102 = _T_101 | _T_94; // @[Mux.scala 27:73]
  wire [63:0] _T_103 = _T_102 | _T_95; // @[Mux.scala 27:73]
  wire [63:0] _T_104 = _T_103 | _T_96; // @[Mux.scala 27:73]
  wire [63:0] _T_105 = _T_104 | _T_97; // @[Mux.scala 27:73]
  wire [63:0] _T_106 = _T_105 | _T_98; // @[Mux.scala 27:73]
  wire [63:0] _T_107 = _T_106 | _T_99; // @[Mux.scala 27:73]
  wire  _T_108 = |io_fromSlowPorts_4_0; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_118 = io_fromSlowPorts_4_0[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_119 = io_fromSlowPorts_4_0[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_120 = io_fromSlowPorts_4_0[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_121 = io_fromSlowPorts_4_0[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_122 = io_fromSlowPorts_4_0[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_123 = io_fromSlowPorts_4_0[5] ? io_slowData_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_124 = io_fromSlowPorts_4_0[6] ? io_slowData_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_125 = io_fromSlowPorts_4_0[7] ? io_slowData_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_126 = io_fromSlowPorts_4_0[8] ? io_slowData_8 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_127 = _T_118 | _T_119; // @[Mux.scala 27:73]
  wire [63:0] _T_128 = _T_127 | _T_120; // @[Mux.scala 27:73]
  wire [63:0] _T_129 = _T_128 | _T_121; // @[Mux.scala 27:73]
  wire [63:0] _T_130 = _T_129 | _T_122; // @[Mux.scala 27:73]
  wire [63:0] _T_131 = _T_130 | _T_123; // @[Mux.scala 27:73]
  wire [63:0] _T_132 = _T_131 | _T_124; // @[Mux.scala 27:73]
  wire [63:0] _T_133 = _T_132 | _T_125; // @[Mux.scala 27:73]
  wire [63:0] _T_134 = _T_133 | _T_126; // @[Mux.scala 27:73]
  wire [63:0] realEnqData_0_0 = _T_81 ? _T_107 : io_enqData_0_0_bits; // @[ReservationStation.scala 662:28]
  wire [63:0] realEnqData_1_0 = _T_108 ? _T_134 : io_enqData_1_0_bits; // @[ReservationStation.scala 662:28]
  wire [63:0] normalData = _T ? _T_26 : io_readData_0_0; // @[ReservationStation.scala 668:29]
  wire [63:0] oldestData = _T_54 ? _T_80 : io_readData_2_0; // @[ReservationStation.scala 669:29]
  wire [63:0] _io_deqData_0_0_T = io_doOverride_0 ? oldestData : normalData; // @[ReservationStation.scala 670:22]
  wire [1:0] _T_135 = {1'h0,io_enqBypass_0_0}; // @[ReservationStation.scala 672:31]
  wire [63:0] _io_deqData_0_0_T_1 = io_enqBypass_0_0 ? realEnqData_0_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] normalData_1 = _T_27 ? _T_53 : io_readData_1_0; // @[ReservationStation.scala 668:29]
  wire [1:0] _T_137 = {io_enqBypass_1_1,1'h0}; // @[ReservationStation.scala 672:31]
  wire [63:0] _io_deqData_1_0_T_2 = io_enqBypass_1_1 ? realEnqData_1_0 : 64'h0; // @[Mux.scala 27:73]
  assign io_deqData_0_0 = |_T_135 ? _io_deqData_0_0_T_1 : _io_deqData_0_0_T; // @[ReservationStation.scala 670:16 672:43 673:18]
  assign io_deqData_1_0 = |_T_137 ? _io_deqData_1_0_T_2 : normalData_1; // @[ReservationStation.scala 670:16 672:43 673:18]
endmodule

