module DataSelect_3(
  input         io_doOverride_0,
  input  [63:0] io_readData_0_0,
  input  [63:0] io_readData_1_0,
  input  [63:0] io_readData_2_0,
  input  [4:0]  io_fromSlowPorts_0_0,
  input  [4:0]  io_fromSlowPorts_1_0,
  input  [4:0]  io_fromSlowPorts_2_0,
  input  [4:0]  io_fromSlowPorts_3_0,
  input  [4:0]  io_fromSlowPorts_4_0,
  input  [63:0] io_slowData_0,
  input  [63:0] io_slowData_1,
  input  [63:0] io_slowData_2,
  input  [63:0] io_slowData_3,
  input  [63:0] io_slowData_4,
  input         io_enqBypass_0_0,
  input         io_enqBypass_1_1,
  input  [63:0] io_enqData_0_0_bits,
  input  [63:0] io_enqData_1_0_bits,
  output [63:0] io_deqData_0_0,
  output [63:0] io_deqData_1_0
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
  wire  _T_15 = |io_fromSlowPorts_1_0; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_21 = io_fromSlowPorts_1_0[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_22 = io_fromSlowPorts_1_0[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_23 = io_fromSlowPorts_1_0[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_24 = io_fromSlowPorts_1_0[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_25 = io_fromSlowPorts_1_0[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_26 = _T_21 | _T_22; // @[Mux.scala 27:73]
  wire [63:0] _T_27 = _T_26 | _T_23; // @[Mux.scala 27:73]
  wire [63:0] _T_28 = _T_27 | _T_24; // @[Mux.scala 27:73]
  wire [63:0] _T_29 = _T_28 | _T_25; // @[Mux.scala 27:73]
  wire  _T_30 = |io_fromSlowPorts_2_0; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_36 = io_fromSlowPorts_2_0[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_37 = io_fromSlowPorts_2_0[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_38 = io_fromSlowPorts_2_0[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_39 = io_fromSlowPorts_2_0[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_40 = io_fromSlowPorts_2_0[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_41 = _T_36 | _T_37; // @[Mux.scala 27:73]
  wire [63:0] _T_42 = _T_41 | _T_38; // @[Mux.scala 27:73]
  wire [63:0] _T_43 = _T_42 | _T_39; // @[Mux.scala 27:73]
  wire [63:0] _T_44 = _T_43 | _T_40; // @[Mux.scala 27:73]
  wire  _T_45 = |io_fromSlowPorts_3_0; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_51 = io_fromSlowPorts_3_0[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_52 = io_fromSlowPorts_3_0[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_53 = io_fromSlowPorts_3_0[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_54 = io_fromSlowPorts_3_0[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_55 = io_fromSlowPorts_3_0[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_56 = _T_51 | _T_52; // @[Mux.scala 27:73]
  wire [63:0] _T_57 = _T_56 | _T_53; // @[Mux.scala 27:73]
  wire [63:0] _T_58 = _T_57 | _T_54; // @[Mux.scala 27:73]
  wire [63:0] _T_59 = _T_58 | _T_55; // @[Mux.scala 27:73]
  wire  _T_60 = |io_fromSlowPorts_4_0; // @[ReservationStation.scala 660:68]
  wire [63:0] _T_66 = io_fromSlowPorts_4_0[0] ? io_slowData_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_67 = io_fromSlowPorts_4_0[1] ? io_slowData_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_68 = io_fromSlowPorts_4_0[2] ? io_slowData_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_69 = io_fromSlowPorts_4_0[3] ? io_slowData_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_70 = io_fromSlowPorts_4_0[4] ? io_slowData_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_71 = _T_66 | _T_67; // @[Mux.scala 27:73]
  wire [63:0] _T_72 = _T_71 | _T_68; // @[Mux.scala 27:73]
  wire [63:0] _T_73 = _T_72 | _T_69; // @[Mux.scala 27:73]
  wire [63:0] _T_74 = _T_73 | _T_70; // @[Mux.scala 27:73]
  wire [63:0] realEnqData_0_0 = _T_45 ? _T_59 : io_enqData_0_0_bits; // @[ReservationStation.scala 662:28]
  wire [63:0] realEnqData_1_0 = _T_60 ? _T_74 : io_enqData_1_0_bits; // @[ReservationStation.scala 662:28]
  wire [63:0] normalData = _T ? _T_14 : io_readData_0_0; // @[ReservationStation.scala 668:29]
  wire [63:0] oldestData = _T_30 ? _T_44 : io_readData_2_0; // @[ReservationStation.scala 669:29]
  wire [63:0] _io_deqData_0_0_T = io_doOverride_0 ? oldestData : normalData; // @[ReservationStation.scala 670:22]
  wire [1:0] _T_75 = {1'h0,io_enqBypass_0_0}; // @[ReservationStation.scala 672:31]
  wire [63:0] _io_deqData_0_0_T_1 = io_enqBypass_0_0 ? realEnqData_0_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] normalData_1 = _T_15 ? _T_29 : io_readData_1_0; // @[ReservationStation.scala 668:29]
  wire [1:0] _T_77 = {io_enqBypass_1_1,1'h0}; // @[ReservationStation.scala 672:31]
  wire [63:0] _io_deqData_1_0_T_2 = io_enqBypass_1_1 ? realEnqData_1_0 : 64'h0; // @[Mux.scala 27:73]
  assign io_deqData_0_0 = |_T_75 ? _io_deqData_0_0_T_1 : _io_deqData_0_0_T; // @[ReservationStation.scala 670:16 672:43 673:18]
  assign io_deqData_1_0 = |_T_77 ? _io_deqData_1_0_T_2 : normalData_1; // @[ReservationStation.scala 670:16 672:43 673:18]
endmodule

