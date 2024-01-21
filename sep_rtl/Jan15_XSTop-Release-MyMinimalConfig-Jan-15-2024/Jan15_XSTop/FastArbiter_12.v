module FastArbiter_12(
  input         clock,
  input         reset,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [7:0]  io_in_0_bits_set,
  input  [2:0]  io_in_0_bits_way,
  input  [21:0] io_in_0_bits_tag,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [7:0]  io_in_1_bits_set,
  input  [2:0]  io_in_1_bits_way,
  input  [21:0] io_in_1_bits_tag,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input  [7:0]  io_in_2_bits_set,
  input  [2:0]  io_in_2_bits_way,
  input  [21:0] io_in_2_bits_tag,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input  [7:0]  io_in_3_bits_set,
  input  [2:0]  io_in_3_bits_way,
  input  [21:0] io_in_3_bits_tag,
  output        io_in_4_ready,
  input         io_in_4_valid,
  input  [7:0]  io_in_4_bits_set,
  input  [2:0]  io_in_4_bits_way,
  input  [21:0] io_in_4_bits_tag,
  output        io_in_5_ready,
  input         io_in_5_valid,
  input  [7:0]  io_in_5_bits_set,
  input  [2:0]  io_in_5_bits_way,
  input  [21:0] io_in_5_bits_tag,
  output        io_in_6_ready,
  input         io_in_6_valid,
  input  [7:0]  io_in_6_bits_set,
  input  [2:0]  io_in_6_bits_way,
  input  [21:0] io_in_6_bits_tag,
  output        io_in_7_ready,
  input         io_in_7_valid,
  input  [7:0]  io_in_7_bits_set,
  input  [2:0]  io_in_7_bits_way,
  input  [21:0] io_in_7_bits_tag,
  output        io_in_8_ready,
  input         io_in_8_valid,
  input  [7:0]  io_in_8_bits_set,
  input  [2:0]  io_in_8_bits_way,
  input  [21:0] io_in_8_bits_tag,
  output        io_in_9_ready,
  input         io_in_9_valid,
  input  [7:0]  io_in_9_bits_set,
  input  [2:0]  io_in_9_bits_way,
  input  [21:0] io_in_9_bits_tag,
  output        io_in_10_ready,
  input         io_in_10_valid,
  input  [7:0]  io_in_10_bits_set,
  input  [2:0]  io_in_10_bits_way,
  input  [21:0] io_in_10_bits_tag,
  output        io_in_11_ready,
  input         io_in_11_valid,
  input  [7:0]  io_in_11_bits_set,
  input  [2:0]  io_in_11_bits_way,
  input  [21:0] io_in_11_bits_tag,
  output        io_in_12_ready,
  input         io_in_12_valid,
  input  [7:0]  io_in_12_bits_set,
  input  [2:0]  io_in_12_bits_way,
  input  [21:0] io_in_12_bits_tag,
  output        io_in_13_ready,
  input         io_in_13_valid,
  input  [7:0]  io_in_13_bits_set,
  input  [2:0]  io_in_13_bits_way,
  input  [21:0] io_in_13_bits_tag,
  input         io_out_ready,
  output        io_out_valid,
  output [7:0]  io_out_bits_set,
  output [2:0]  io_out_bits_way,
  output [21:0] io_out_bits_tag
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [6:0] valids_lo = {io_in_6_valid,io_in_5_valid,io_in_4_valid,io_in_3_valid,io_in_2_valid,io_in_1_valid,
    io_in_0_valid}; // @[FastArbiter.scala 36:50]
  wire [13:0] valids = {io_in_13_valid,io_in_12_valid,io_in_11_valid,io_in_10_valid,io_in_9_valid,io_in_8_valid,
    io_in_7_valid,valids_lo}; // @[FastArbiter.scala 36:50]
  reg [13:0] rrGrantMask; // @[Reg.scala 28:20]
  reg [13:0] pendingMask; // @[Reg.scala 28:20]
  wire [13:0] _rrSelOH_T = rrGrantMask & pendingMask; // @[FastArbiter.scala 51:47]
  wire [1:0] rrSelOH_hi_hi_hi_4 = {_rrSelOH_T[0],_rrSelOH_T[1]}; // @[Cat.scala 31:58]
  wire [3:0] rrSelOH_hi_hi_8 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3]}; // @[Cat.scala 31:58]
  wire [6:0] rrSelOH_hi_10 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6]}; // @[Cat.scala 31:58]
  wire [5:0] rrSelOH_lo_9 = {_rrSelOH_T[7],_rrSelOH_T[8],_rrSelOH_T[9],_rrSelOH_T[10],_rrSelOH_T[11],_rrSelOH_T[12]}; // @[Cat.scala 31:58]
  wire [12:0] _rrSelOH_T_62 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],rrSelOH_lo_9}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_65 = _rrSelOH_T[13] & ~(|_rrSelOH_T_62); // @[FastArbiter.scala 28:24]
  wire [2:0] rrSelOH_hi_hi_7 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2]}; // @[Cat.scala 31:58]
  wire [5:0] rrSelOH_hi_9 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5]}; // @[Cat.scala 31:58]
  wire [5:0] rrSelOH_lo_8 = {_rrSelOH_T[6],_rrSelOH_T[7],_rrSelOH_T[8],_rrSelOH_T[9],_rrSelOH_T[10],_rrSelOH_T[11]}; // @[Cat.scala 31:58]
  wire [11:0] _rrSelOH_T_58 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    rrSelOH_lo_8}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_61 = _rrSelOH_T[12] & ~(|_rrSelOH_T_58); // @[FastArbiter.scala 28:24]
  wire [4:0] rrSelOH_lo_7 = {_rrSelOH_T[6],_rrSelOH_T[7],_rrSelOH_T[8],_rrSelOH_T[9],_rrSelOH_T[10]}; // @[Cat.scala 31:58]
  wire [10:0] _rrSelOH_T_54 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    rrSelOH_lo_7}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_57 = _rrSelOH_T[11] & ~(|_rrSelOH_T_54); // @[FastArbiter.scala 28:24]
  wire [4:0] rrSelOH_hi_7 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4]}; // @[Cat.scala 31:58]
  wire [9:0] _rrSelOH_T_50 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],_rrSelOH_T[7],_rrSelOH_T[8],_rrSelOH_T[9]}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_53 = _rrSelOH_T[10] & ~(|_rrSelOH_T_50); // @[FastArbiter.scala 28:24]
  wire [8:0] _rrSelOH_T_46 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],_rrSelOH_T[7],_rrSelOH_T[8]}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_49 = _rrSelOH_T[9] & ~(|_rrSelOH_T_46); // @[FastArbiter.scala 28:24]
  wire [7:0] _rrSelOH_T_42 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],_rrSelOH_T[7]}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_45 = _rrSelOH_T[8] & ~(|_rrSelOH_T_42); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_41 = _rrSelOH_T[7] & ~(|rrSelOH_hi_10); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_37 = _rrSelOH_T[6] & ~(|rrSelOH_hi_9); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_33 = _rrSelOH_T[5] & ~(|rrSelOH_hi_7); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_29 = _rrSelOH_T[4] & ~(|rrSelOH_hi_hi_8); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_25 = _rrSelOH_T[3] & ~(|rrSelOH_hi_hi_7); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_21 = _rrSelOH_T[2] & ~(|rrSelOH_hi_hi_hi_4); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_17 = _rrSelOH_T[1] & ~(|_rrSelOH_T[0]); // @[FastArbiter.scala 28:24]
  wire [6:0] rrSelOH_lo_10 = {_rrSelOH_T_37,_rrSelOH_T_33,_rrSelOH_T_29,_rrSelOH_T_25,_rrSelOH_T_21,_rrSelOH_T_17,
    _rrSelOH_T[0]}; // @[FastArbiter.scala 51:80]
  wire [13:0] rrSelOH = {_rrSelOH_T_65,_rrSelOH_T_61,_rrSelOH_T_57,_rrSelOH_T_53,_rrSelOH_T_49,_rrSelOH_T_45,
    _rrSelOH_T_41,rrSelOH_lo_10}; // @[FastArbiter.scala 51:80]
  wire [13:0] _rrValid_T = rrSelOH & valids; // @[FastArbiter.scala 53:26]
  wire  rrValid = |_rrValid_T; // @[FastArbiter.scala 53:39]
  wire [1:0] firstOneOH_hi_hi_hi_4 = {valids[0],valids[1]}; // @[Cat.scala 31:58]
  wire [3:0] firstOneOH_hi_hi_8 = {valids[0],valids[1],valids[2],valids[3]}; // @[Cat.scala 31:58]
  wire [6:0] firstOneOH_hi_10 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6]}; // @[Cat.scala 31:58]
  wire [5:0] firstOneOH_lo_9 = {valids[7],valids[8],valids[9],valids[10],valids[11],valids[12]}; // @[Cat.scala 31:58]
  wire [12:0] _firstOneOH_T_61 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],firstOneOH_lo_9}
    ; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_64 = valids[13] & ~(|_firstOneOH_T_61); // @[FastArbiter.scala 28:24]
  wire [2:0] firstOneOH_hi_hi_7 = {valids[0],valids[1],valids[2]}; // @[Cat.scala 31:58]
  wire [5:0] firstOneOH_hi_9 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5]}; // @[Cat.scala 31:58]
  wire [5:0] firstOneOH_lo_8 = {valids[6],valids[7],valids[8],valids[9],valids[10],valids[11]}; // @[Cat.scala 31:58]
  wire [11:0] _firstOneOH_T_57 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],firstOneOH_lo_8}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_60 = valids[12] & ~(|_firstOneOH_T_57); // @[FastArbiter.scala 28:24]
  wire [4:0] firstOneOH_lo_7 = {valids[6],valids[7],valids[8],valids[9],valids[10]}; // @[Cat.scala 31:58]
  wire [10:0] _firstOneOH_T_53 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],firstOneOH_lo_7}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_56 = valids[11] & ~(|_firstOneOH_T_53); // @[FastArbiter.scala 28:24]
  wire [4:0] firstOneOH_hi_7 = {valids[0],valids[1],valids[2],valids[3],valids[4]}; // @[Cat.scala 31:58]
  wire [9:0] _firstOneOH_T_49 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],valids[7],valids[
    8],valids[9]}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_52 = valids[10] & ~(|_firstOneOH_T_49); // @[FastArbiter.scala 28:24]
  wire [8:0] _firstOneOH_T_45 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],valids[7],valids[
    8]}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_48 = valids[9] & ~(|_firstOneOH_T_45); // @[FastArbiter.scala 28:24]
  wire [7:0] _firstOneOH_T_41 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],valids[7]}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_44 = valids[8] & ~(|_firstOneOH_T_41); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_40 = valids[7] & ~(|firstOneOH_hi_10); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_36 = valids[6] & ~(|firstOneOH_hi_9); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_32 = valids[5] & ~(|firstOneOH_hi_7); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_28 = valids[4] & ~(|firstOneOH_hi_hi_8); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_24 = valids[3] & ~(|firstOneOH_hi_hi_7); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_20 = valids[2] & ~(|firstOneOH_hi_hi_hi_4); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_16 = valids[1] & ~(|valids[0]); // @[FastArbiter.scala 28:24]
  wire [6:0] firstOneOH_lo_10 = {_firstOneOH_T_36,_firstOneOH_T_32,_firstOneOH_T_28,_firstOneOH_T_24,_firstOneOH_T_20,
    _firstOneOH_T_16,valids[0]}; // @[FastArbiter.scala 52:62]
  wire [13:0] firstOneOH = {_firstOneOH_T_64,_firstOneOH_T_60,_firstOneOH_T_56,_firstOneOH_T_52,_firstOneOH_T_48,
    _firstOneOH_T_44,_firstOneOH_T_40,firstOneOH_lo_10}; // @[FastArbiter.scala 52:62]
  wire [13:0] chosenOH = rrValid ? rrSelOH : firstOneOH; // @[FastArbiter.scala 54:18]
  wire [13:0] _pendingMask_T = ~chosenOH; // @[FastArbiter.scala 39:15]
  wire [13:0] _pendingMask_T_1 = valids & _pendingMask_T; // @[FastArbiter.scala 39:12]
  wire  _pendingMask_T_2 = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire  _rrGrantMask_T_1 = |chosenOH[0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_3 = |chosenOH[1:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_5 = |chosenOH[2:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_7 = |chosenOH[3:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_9 = |chosenOH[4:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_11 = |chosenOH[5:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_13 = |chosenOH[6:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_15 = |chosenOH[7:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_17 = |chosenOH[8:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_19 = |chosenOH[9:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_21 = |chosenOH[10:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_23 = |chosenOH[11:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_25 = |chosenOH[12:0]; // @[FastArbiter.scala 49:51]
  wire [6:0] rrGrantMask_lo = {_rrGrantMask_T_11,_rrGrantMask_T_9,_rrGrantMask_T_7,_rrGrantMask_T_5,_rrGrantMask_T_3,
    _rrGrantMask_T_1,1'h0}; // @[FastArbiter.scala 50:12]
  wire [13:0] _rrGrantMask_T_26 = {_rrGrantMask_T_25,_rrGrantMask_T_23,_rrGrantMask_T_21,_rrGrantMask_T_19,
    _rrGrantMask_T_17,_rrGrantMask_T_15,_rrGrantMask_T_13,rrGrantMask_lo}; // @[FastArbiter.scala 50:12]
  wire [21:0] _io_out_bits_T_14 = chosenOH[0] ? io_in_0_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_15 = chosenOH[1] ? io_in_1_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_16 = chosenOH[2] ? io_in_2_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_17 = chosenOH[3] ? io_in_3_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_18 = chosenOH[4] ? io_in_4_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_19 = chosenOH[5] ? io_in_5_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_20 = chosenOH[6] ? io_in_6_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_21 = chosenOH[7] ? io_in_7_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_22 = chosenOH[8] ? io_in_8_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_23 = chosenOH[9] ? io_in_9_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_24 = chosenOH[10] ? io_in_10_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_25 = chosenOH[11] ? io_in_11_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_26 = chosenOH[12] ? io_in_12_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_27 = chosenOH[13] ? io_in_13_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_28 = _io_out_bits_T_14 | _io_out_bits_T_15; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_29 = _io_out_bits_T_28 | _io_out_bits_T_16; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_30 = _io_out_bits_T_29 | _io_out_bits_T_17; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_31 = _io_out_bits_T_30 | _io_out_bits_T_18; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_32 = _io_out_bits_T_31 | _io_out_bits_T_19; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_33 = _io_out_bits_T_32 | _io_out_bits_T_20; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_34 = _io_out_bits_T_33 | _io_out_bits_T_21; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_35 = _io_out_bits_T_34 | _io_out_bits_T_22; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_36 = _io_out_bits_T_35 | _io_out_bits_T_23; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_37 = _io_out_bits_T_36 | _io_out_bits_T_24; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_38 = _io_out_bits_T_37 | _io_out_bits_T_25; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_39 = _io_out_bits_T_38 | _io_out_bits_T_26; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_41 = chosenOH[0] ? io_in_0_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_42 = chosenOH[1] ? io_in_1_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_43 = chosenOH[2] ? io_in_2_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_44 = chosenOH[3] ? io_in_3_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_45 = chosenOH[4] ? io_in_4_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_46 = chosenOH[5] ? io_in_5_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_47 = chosenOH[6] ? io_in_6_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_48 = chosenOH[7] ? io_in_7_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_49 = chosenOH[8] ? io_in_8_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_50 = chosenOH[9] ? io_in_9_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_51 = chosenOH[10] ? io_in_10_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_52 = chosenOH[11] ? io_in_11_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_53 = chosenOH[12] ? io_in_12_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_54 = chosenOH[13] ? io_in_13_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_55 = _io_out_bits_T_41 | _io_out_bits_T_42; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_56 = _io_out_bits_T_55 | _io_out_bits_T_43; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_57 = _io_out_bits_T_56 | _io_out_bits_T_44; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_58 = _io_out_bits_T_57 | _io_out_bits_T_45; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_59 = _io_out_bits_T_58 | _io_out_bits_T_46; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_60 = _io_out_bits_T_59 | _io_out_bits_T_47; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_61 = _io_out_bits_T_60 | _io_out_bits_T_48; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_62 = _io_out_bits_T_61 | _io_out_bits_T_49; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_63 = _io_out_bits_T_62 | _io_out_bits_T_50; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_64 = _io_out_bits_T_63 | _io_out_bits_T_51; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_65 = _io_out_bits_T_64 | _io_out_bits_T_52; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_66 = _io_out_bits_T_65 | _io_out_bits_T_53; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_68 = chosenOH[0] ? io_in_0_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_69 = chosenOH[1] ? io_in_1_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_70 = chosenOH[2] ? io_in_2_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_71 = chosenOH[3] ? io_in_3_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_72 = chosenOH[4] ? io_in_4_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_73 = chosenOH[5] ? io_in_5_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_74 = chosenOH[6] ? io_in_6_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_75 = chosenOH[7] ? io_in_7_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_76 = chosenOH[8] ? io_in_8_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_77 = chosenOH[9] ? io_in_9_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_78 = chosenOH[10] ? io_in_10_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_79 = chosenOH[11] ? io_in_11_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_80 = chosenOH[12] ? io_in_12_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_81 = chosenOH[13] ? io_in_13_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_82 = _io_out_bits_T_68 | _io_out_bits_T_69; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_83 = _io_out_bits_T_82 | _io_out_bits_T_70; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_84 = _io_out_bits_T_83 | _io_out_bits_T_71; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_85 = _io_out_bits_T_84 | _io_out_bits_T_72; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_86 = _io_out_bits_T_85 | _io_out_bits_T_73; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_87 = _io_out_bits_T_86 | _io_out_bits_T_74; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_88 = _io_out_bits_T_87 | _io_out_bits_T_75; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_89 = _io_out_bits_T_88 | _io_out_bits_T_76; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_90 = _io_out_bits_T_89 | _io_out_bits_T_77; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_91 = _io_out_bits_T_90 | _io_out_bits_T_78; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_92 = _io_out_bits_T_91 | _io_out_bits_T_79; // @[Mux.scala 27:73]
  wire [7:0] _io_out_bits_T_93 = _io_out_bits_T_92 | _io_out_bits_T_80; // @[Mux.scala 27:73]
  assign io_in_0_ready = chosenOH[0] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_1_ready = chosenOH[1] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_2_ready = chosenOH[2] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_3_ready = chosenOH[3] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_4_ready = chosenOH[4] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_5_ready = chosenOH[5] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_6_ready = chosenOH[6] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_7_ready = chosenOH[7] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_8_ready = chosenOH[8] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_9_ready = chosenOH[9] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_10_ready = chosenOH[10] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_11_ready = chosenOH[11] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_12_ready = chosenOH[12] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_13_ready = chosenOH[13] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_out_valid = |valids; // @[FastArbiter.scala 56:29]
  assign io_out_bits_set = _io_out_bits_T_93 | _io_out_bits_T_81; // @[Mux.scala 27:73]
  assign io_out_bits_way = _io_out_bits_T_66 | _io_out_bits_T_54; // @[Mux.scala 27:73]
  assign io_out_bits_tag = _io_out_bits_T_39 | _io_out_bits_T_27; // @[Mux.scala 27:73]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      rrGrantMask <= 14'h0; // @[Reg.scala 29:22]
    end else if (_pendingMask_T_2) begin // @[Reg.scala 28:20]
      rrGrantMask <= _rrGrantMask_T_26;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      pendingMask <= 14'h0; // @[Reg.scala 29:22]
    end else if (_pendingMask_T_2) begin // @[Reg.scala 28:20]
      pendingMask <= _pendingMask_T_1;
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
  rrGrantMask = _RAND_0[13:0];
  _RAND_1 = {1{`RANDOM}};
  pendingMask = _RAND_1[13:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    rrGrantMask = 14'h0;
  end
  if (reset) begin
    pendingMask = 14'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

