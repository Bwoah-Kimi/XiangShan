module DataSelect_6(
  input         io_doOverride_0,
  input  [63:0] io_readData_0_0,
  input  [63:0] io_readData_0_1,
  input  [63:0] io_readData_0_2,
  input  [63:0] io_readData_1_0,
  input  [63:0] io_readData_1_1,
  input  [63:0] io_readData_1_2,
  input  [3:0]  io_fromSlowPorts_0_0,
  input  [3:0]  io_fromSlowPorts_0_1,
  input  [3:0]  io_fromSlowPorts_0_2,
  input  [3:0]  io_fromSlowPorts_1_0,
  input  [3:0]  io_fromSlowPorts_1_1,
  input  [3:0]  io_fromSlowPorts_1_2,
  input  [3:0]  io_fromSlowPorts_2_0,
  input  [3:0]  io_fromSlowPorts_2_1,
  input  [3:0]  io_fromSlowPorts_2_2,
  input  [63:0] io_slowData_0,
  input  [63:0] io_slowData_1,
  input  [63:0] io_slowData_2,
  input  [63:0] io_slowData_3,
  input         io_enqBypass_0_0,
  input  [63:0] io_enqData_0_0_bits,
  input  [63:0] io_enqData_0_1_bits,
  input  [63:0] io_enqData_0_2_bits,
  output [63:0] io_deqData_0_0,
  output [63:0] io_deqData_0_1,
  output [63:0] io_deqData_0_2
);
  wire  _T = |io_fromSlowPorts_0_0; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_5 = io_fromSlowPorts_0_0[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_6 = io_fromSlowPorts_0_0[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_7 = io_fromSlowPorts_0_0[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_8 = io_fromSlowPorts_0_0[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_9 = _T_5 | _T_6; // @[Mux.scala 27:73]
  wire [63:0] _T_10 = _T_9 | _T_7; // @[Mux.scala 27:73]
  wire [63:0] _T_11 = _T_10 | _T_8; // @[Mux.scala 27:73]
  wire  _T_12 = |io_fromSlowPorts_0_1; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_17 = io_fromSlowPorts_0_1[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_18 = io_fromSlowPorts_0_1[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_19 = io_fromSlowPorts_0_1[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_20 = io_fromSlowPorts_0_1[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_21 = _T_17 | _T_18; // @[Mux.scala 27:73]
  wire [63:0] _T_22 = _T_21 | _T_19; // @[Mux.scala 27:73]
  wire [63:0] _T_23 = _T_22 | _T_20; // @[Mux.scala 27:73]
  wire  _T_24 = |io_fromSlowPorts_0_2; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_29 = io_fromSlowPorts_0_2[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_30 = io_fromSlowPorts_0_2[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_31 = io_fromSlowPorts_0_2[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_32 = io_fromSlowPorts_0_2[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_33 = _T_29 | _T_30; // @[Mux.scala 27:73]
  wire [63:0] _T_34 = _T_33 | _T_31; // @[Mux.scala 27:73]
  wire [63:0] _T_35 = _T_34 | _T_32; // @[Mux.scala 27:73]
  wire  _T_36 = |io_fromSlowPorts_1_0; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_41 = io_fromSlowPorts_1_0[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_42 = io_fromSlowPorts_1_0[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_43 = io_fromSlowPorts_1_0[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_44 = io_fromSlowPorts_1_0[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_45 = _T_41 | _T_42; // @[Mux.scala 27:73]
  wire [63:0] _T_46 = _T_45 | _T_43; // @[Mux.scala 27:73]
  wire [63:0] _T_47 = _T_46 | _T_44; // @[Mux.scala 27:73]
  wire  _T_48 = |io_fromSlowPorts_1_1; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_53 = io_fromSlowPorts_1_1[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_54 = io_fromSlowPorts_1_1[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_55 = io_fromSlowPorts_1_1[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_56 = io_fromSlowPorts_1_1[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_57 = _T_53 | _T_54; // @[Mux.scala 27:73]
  wire [63:0] _T_58 = _T_57 | _T_55; // @[Mux.scala 27:73]
  wire [63:0] _T_59 = _T_58 | _T_56; // @[Mux.scala 27:73]
  wire  _T_60 = |io_fromSlowPorts_1_2; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_65 = io_fromSlowPorts_1_2[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_66 = io_fromSlowPorts_1_2[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_67 = io_fromSlowPorts_1_2[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_68 = io_fromSlowPorts_1_2[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_69 = _T_65 | _T_66; // @[Mux.scala 27:73]
  wire [63:0] _T_70 = _T_69 | _T_67; // @[Mux.scala 27:73]
  wire [63:0] _T_71 = _T_70 | _T_68; // @[Mux.scala 27:73]
  wire  _T_72 = |io_fromSlowPorts_2_0; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_77 = io_fromSlowPorts_2_0[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_78 = io_fromSlowPorts_2_0[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_79 = io_fromSlowPorts_2_0[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_80 = io_fromSlowPorts_2_0[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_81 = _T_77 | _T_78; // @[Mux.scala 27:73]
  wire [63:0] _T_82 = _T_81 | _T_79; // @[Mux.scala 27:73]
  wire [63:0] _T_83 = _T_82 | _T_80; // @[Mux.scala 27:73]
  wire  _T_84 = |io_fromSlowPorts_2_1; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_89 = io_fromSlowPorts_2_1[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_90 = io_fromSlowPorts_2_1[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_91 = io_fromSlowPorts_2_1[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_92 = io_fromSlowPorts_2_1[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_93 = _T_89 | _T_90; // @[Mux.scala 27:73]
  wire [63:0] _T_94 = _T_93 | _T_91; // @[Mux.scala 27:73]
  wire [63:0] _T_95 = _T_94 | _T_92; // @[Mux.scala 27:73]
  wire  _T_96 = |io_fromSlowPorts_2_2; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_101 = io_fromSlowPorts_2_2[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_102 = io_fromSlowPorts_2_2[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_103 = io_fromSlowPorts_2_2[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_104 = io_fromSlowPorts_2_2[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_105 = _T_101 | _T_102; // @[Mux.scala 27:73]
  wire [63:0] _T_106 = _T_105 | _T_103; // @[Mux.scala 27:73]
  wire [63:0] _T_107 = _T_106 | _T_104; // @[Mux.scala 27:73]
  wire [63:0] realEnqData_0_0 = _T_72 ? _T_83 : io_enqData_0_0_bits; // @[ReservationStation.scala 662:28]
  wire [63:0] realEnqData_0_1 = _T_84 ? _T_95 : io_enqData_0_1_bits; // @[ReservationStation.scala 662:28]
  wire [63:0] realEnqData_0_2 = _T_96 ? _T_107 : io_enqData_0_2_bits; // @[ReservationStation.scala 662:28]
  wire [63:0] normalData = _T ? _T_11 : io_readData_0_0; // @[ReservationStation.scala 668:29]
  wire [63:0] oldestData = _T_36 ? _T_47 : io_readData_1_0; // @[ReservationStation.scala 669:29]
  wire [63:0] _io_deqData_0_0_T = io_doOverride_0 ? oldestData : normalData; // @[ReservationStation.scala 670:22]
  wire [63:0] normalData_1 = _T_12 ? _T_23 : io_readData_0_1; // @[ReservationStation.scala 668:29]
  wire [63:0] oldestData_1 = _T_48 ? _T_59 : io_readData_1_1; // @[ReservationStation.scala 669:29]
  wire [63:0] _io_deqData_0_1_T = io_doOverride_0 ? oldestData_1 : normalData_1; // @[ReservationStation.scala 670:22]
  wire [63:0] normalData_2 = _T_24 ? _T_35 : io_readData_0_2; // @[ReservationStation.scala 668:29]
  wire [63:0] oldestData_2 = _T_60 ? _T_71 : io_readData_1_2; // @[ReservationStation.scala 669:29]
  wire [63:0] _io_deqData_0_2_T = io_doOverride_0 ? oldestData_2 : normalData_2; // @[ReservationStation.scala 670:22]
  assign io_deqData_0_0 = |io_enqBypass_0_0 ? realEnqData_0_0 : _io_deqData_0_0_T; // @[ReservationStation.scala 670:16 672:43 673:18]
  assign io_deqData_0_1 = |io_enqBypass_0_0 ? realEnqData_0_1 : _io_deqData_0_1_T; // @[ReservationStation.scala 670:16 672:43 673:18]
  assign io_deqData_0_2 = |io_enqBypass_0_0 ? realEnqData_0_2 : _io_deqData_0_2_T; // @[ReservationStation.scala 670:16 672:43 673:18]
endmodule

