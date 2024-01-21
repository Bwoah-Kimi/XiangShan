module LatchFastArbiter_4(
  input        clock,
  input        reset,
  output       io_in_0_ready,
  input        io_in_0_valid,
  input  [2:0] io_in_0_bits_sink,
  output       io_in_1_ready,
  input        io_in_1_valid,
  input  [2:0] io_in_1_bits_sink,
  output       io_in_2_ready,
  input        io_in_2_valid,
  input  [2:0] io_in_2_bits_sink,
  output       io_in_3_ready,
  input        io_in_3_valid,
  input  [2:0] io_in_3_bits_sink,
  output       io_in_4_ready,
  input        io_in_4_valid,
  input  [2:0] io_in_4_bits_sink,
  output       io_in_5_ready,
  input        io_in_5_valid,
  input  [2:0] io_in_5_bits_sink,
  output       io_in_6_ready,
  input        io_in_6_valid,
  input  [2:0] io_in_6_bits_sink,
  output       io_in_7_ready,
  input        io_in_7_valid,
  input  [2:0] io_in_7_bits_sink,
  output       io_in_8_ready,
  input        io_in_8_valid,
  input  [2:0] io_in_8_bits_sink,
  output       io_in_9_ready,
  input        io_in_9_valid,
  input  [2:0] io_in_9_bits_sink,
  output       io_in_10_ready,
  input        io_in_10_valid,
  input  [2:0] io_in_10_bits_sink,
  output       io_in_11_ready,
  input        io_in_11_valid,
  input  [2:0] io_in_11_bits_sink,
  output       io_in_12_ready,
  input        io_in_12_valid,
  input  [2:0] io_in_12_bits_sink,
  output       io_in_13_ready,
  input        io_in_13_valid,
  input  [2:0] io_in_13_bits_sink,
  input        io_out_ready,
  output       io_out_valid,
  output [2:0] io_out_bits_sink
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg  out_valid_reg; // @[FastArbiter.scala 69:30]
  reg [2:0] out_bits_reg_sink; // @[FastArbiter.scala 70:29]
  reg [13:0] chosen_reg; // @[FastArbiter.scala 71:27]
  wire [6:0] valids_lo = {io_in_6_valid,io_in_5_valid,io_in_4_valid,io_in_3_valid,io_in_2_valid,io_in_1_valid,
    io_in_0_valid}; // @[FastArbiter.scala 74:50]
  wire [13:0] valids = {io_in_13_valid,io_in_12_valid,io_in_11_valid,io_in_10_valid,io_in_9_valid,io_in_8_valid,
    io_in_7_valid,valids_lo}; // @[FastArbiter.scala 74:50]
  wire  latch_result = |valids & ~out_valid_reg; // @[FastArbiter.scala 75:35]
  reg [13:0] rrGrantMask; // @[Reg.scala 28:20]
  reg [13:0] pendingMask; // @[Reg.scala 28:20]
  wire [13:0] _rrSelOH_T = rrGrantMask & pendingMask; // @[FastArbiter.scala 85:47]
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
    _rrSelOH_T[0]}; // @[FastArbiter.scala 85:80]
  wire [13:0] rrSelOH = {_rrSelOH_T_65,_rrSelOH_T_61,_rrSelOH_T_57,_rrSelOH_T_53,_rrSelOH_T_49,_rrSelOH_T_45,
    _rrSelOH_T_41,rrSelOH_lo_10}; // @[FastArbiter.scala 85:80]
  wire [13:0] _rrValid_T = rrSelOH & valids; // @[FastArbiter.scala 87:26]
  wire  rrValid = |_rrValid_T; // @[FastArbiter.scala 87:39]
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
    _firstOneOH_T_16,valids[0]}; // @[FastArbiter.scala 86:62]
  wire [13:0] firstOneOH = {_firstOneOH_T_64,_firstOneOH_T_60,_firstOneOH_T_56,_firstOneOH_T_52,_firstOneOH_T_48,
    _firstOneOH_T_44,_firstOneOH_T_40,firstOneOH_lo_10}; // @[FastArbiter.scala 86:62]
  wire [13:0] chosenOH = rrValid ? rrSelOH : firstOneOH; // @[FastArbiter.scala 88:18]
  wire [13:0] _pendingMask_T = ~chosenOH; // @[FastArbiter.scala 78:15]
  wire [13:0] _pendingMask_T_1 = valids & _pendingMask_T; // @[FastArbiter.scala 78:12]
  wire  _rrGrantMask_T_1 = |chosenOH[0]; // @[FastArbiter.scala 83:51]
  wire  _rrGrantMask_T_3 = |chosenOH[1:0]; // @[FastArbiter.scala 83:51]
  wire  _rrGrantMask_T_5 = |chosenOH[2:0]; // @[FastArbiter.scala 83:51]
  wire  _rrGrantMask_T_7 = |chosenOH[3:0]; // @[FastArbiter.scala 83:51]
  wire  _rrGrantMask_T_9 = |chosenOH[4:0]; // @[FastArbiter.scala 83:51]
  wire  _rrGrantMask_T_11 = |chosenOH[5:0]; // @[FastArbiter.scala 83:51]
  wire  _rrGrantMask_T_13 = |chosenOH[6:0]; // @[FastArbiter.scala 83:51]
  wire  _rrGrantMask_T_15 = |chosenOH[7:0]; // @[FastArbiter.scala 83:51]
  wire  _rrGrantMask_T_17 = |chosenOH[8:0]; // @[FastArbiter.scala 83:51]
  wire  _rrGrantMask_T_19 = |chosenOH[9:0]; // @[FastArbiter.scala 83:51]
  wire  _rrGrantMask_T_21 = |chosenOH[10:0]; // @[FastArbiter.scala 83:51]
  wire  _rrGrantMask_T_23 = |chosenOH[11:0]; // @[FastArbiter.scala 83:51]
  wire  _rrGrantMask_T_25 = |chosenOH[12:0]; // @[FastArbiter.scala 83:51]
  wire [6:0] rrGrantMask_lo = {_rrGrantMask_T_11,_rrGrantMask_T_9,_rrGrantMask_T_7,_rrGrantMask_T_5,_rrGrantMask_T_3,
    _rrGrantMask_T_1,1'h0}; // @[FastArbiter.scala 84:12]
  wire [13:0] _rrGrantMask_T_26 = {_rrGrantMask_T_25,_rrGrantMask_T_23,_rrGrantMask_T_21,_rrGrantMask_T_19,
    _rrGrantMask_T_17,_rrGrantMask_T_15,_rrGrantMask_T_13,rrGrantMask_lo}; // @[FastArbiter.scala 84:12]
  wire [2:0] _out_bits_reg_T_14 = chosenOH[0] ? io_in_0_bits_sink : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_15 = chosenOH[1] ? io_in_1_bits_sink : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_16 = chosenOH[2] ? io_in_2_bits_sink : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_17 = chosenOH[3] ? io_in_3_bits_sink : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_18 = chosenOH[4] ? io_in_4_bits_sink : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_19 = chosenOH[5] ? io_in_5_bits_sink : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_20 = chosenOH[6] ? io_in_6_bits_sink : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_21 = chosenOH[7] ? io_in_7_bits_sink : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_22 = chosenOH[8] ? io_in_8_bits_sink : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_23 = chosenOH[9] ? io_in_9_bits_sink : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_24 = chosenOH[10] ? io_in_10_bits_sink : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_25 = chosenOH[11] ? io_in_11_bits_sink : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_26 = chosenOH[12] ? io_in_12_bits_sink : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_27 = chosenOH[13] ? io_in_13_bits_sink : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_28 = _out_bits_reg_T_14 | _out_bits_reg_T_15; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_29 = _out_bits_reg_T_28 | _out_bits_reg_T_16; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_30 = _out_bits_reg_T_29 | _out_bits_reg_T_17; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_31 = _out_bits_reg_T_30 | _out_bits_reg_T_18; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_32 = _out_bits_reg_T_31 | _out_bits_reg_T_19; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_33 = _out_bits_reg_T_32 | _out_bits_reg_T_20; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_34 = _out_bits_reg_T_33 | _out_bits_reg_T_21; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_35 = _out_bits_reg_T_34 | _out_bits_reg_T_22; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_36 = _out_bits_reg_T_35 | _out_bits_reg_T_23; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_37 = _out_bits_reg_T_36 | _out_bits_reg_T_24; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_38 = _out_bits_reg_T_37 | _out_bits_reg_T_25; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_39 = _out_bits_reg_T_38 | _out_bits_reg_T_26; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_40 = _out_bits_reg_T_39 | _out_bits_reg_T_27; // @[Mux.scala 27:73]
  wire  _GEN_2 = latch_result | out_valid_reg; // @[FastArbiter.scala 90:22 91:19 69:30]
  wire  _T = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire [5:0] io_out_valid_hi = chosen_reg[13:8]; // @[OneHot.scala 30:18]
  wire [7:0] io_out_valid_lo = chosen_reg[7:0]; // @[OneHot.scala 31:18]
  wire  _io_out_valid_T = |io_out_valid_hi; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_6 = {{2'd0}, io_out_valid_hi}; // @[OneHot.scala 32:28]
  wire [7:0] _io_out_valid_T_1 = _GEN_6 | io_out_valid_lo; // @[OneHot.scala 32:28]
  wire [3:0] io_out_valid_hi_1 = _io_out_valid_T_1[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] io_out_valid_lo_1 = _io_out_valid_T_1[3:0]; // @[OneHot.scala 31:18]
  wire  _io_out_valid_T_2 = |io_out_valid_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _io_out_valid_T_3 = io_out_valid_hi_1 | io_out_valid_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] io_out_valid_hi_2 = _io_out_valid_T_3[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_out_valid_lo_2 = _io_out_valid_T_3[1:0]; // @[OneHot.scala 31:18]
  wire  _io_out_valid_T_4 = |io_out_valid_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _io_out_valid_T_5 = io_out_valid_hi_2 | io_out_valid_lo_2; // @[OneHot.scala 32:28]
  wire [3:0] _io_out_valid_T_9 = {_io_out_valid_T,_io_out_valid_T_2,_io_out_valid_T_4,_io_out_valid_T_5[1]}; // @[Cat.scala 31:58]
  wire [13:0] _io_out_valid_T_10 = valids >> _io_out_valid_T_9; // @[FastArbiter.scala 103:42]
  assign io_in_0_ready = chosen_reg[0] & out_valid_reg & io_out_ready; // @[FastArbiter.scala 100:56]
  assign io_in_1_ready = chosen_reg[1] & out_valid_reg & io_out_ready; // @[FastArbiter.scala 100:56]
  assign io_in_2_ready = chosen_reg[2] & out_valid_reg & io_out_ready; // @[FastArbiter.scala 100:56]
  assign io_in_3_ready = chosen_reg[3] & out_valid_reg & io_out_ready; // @[FastArbiter.scala 100:56]
  assign io_in_4_ready = chosen_reg[4] & out_valid_reg & io_out_ready; // @[FastArbiter.scala 100:56]
  assign io_in_5_ready = chosen_reg[5] & out_valid_reg & io_out_ready; // @[FastArbiter.scala 100:56]
  assign io_in_6_ready = chosen_reg[6] & out_valid_reg & io_out_ready; // @[FastArbiter.scala 100:56]
  assign io_in_7_ready = chosen_reg[7] & out_valid_reg & io_out_ready; // @[FastArbiter.scala 100:56]
  assign io_in_8_ready = chosen_reg[8] & out_valid_reg & io_out_ready; // @[FastArbiter.scala 100:56]
  assign io_in_9_ready = chosen_reg[9] & out_valid_reg & io_out_ready; // @[FastArbiter.scala 100:56]
  assign io_in_10_ready = chosen_reg[10] & out_valid_reg & io_out_ready; // @[FastArbiter.scala 100:56]
  assign io_in_11_ready = chosen_reg[11] & out_valid_reg & io_out_ready; // @[FastArbiter.scala 100:56]
  assign io_in_12_ready = chosen_reg[12] & out_valid_reg & io_out_ready; // @[FastArbiter.scala 100:56]
  assign io_in_13_ready = chosen_reg[13] & out_valid_reg & io_out_ready; // @[FastArbiter.scala 100:56]
  assign io_out_valid = out_valid_reg & _io_out_valid_T_10[0]; // @[FastArbiter.scala 103:33]
  assign io_out_bits_sink = out_bits_reg_sink; // @[FastArbiter.scala 104:15]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 95:23]
      out_valid_reg <= 1'h0; // @[FastArbiter.scala 96:19]
    end else if (_T) begin
      out_valid_reg <= 1'h0;
    end else begin
      out_valid_reg <= _GEN_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_sink <= 3'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_sink <= _out_bits_reg_T_40;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      chosen_reg <= 14'h0; // @[FastArbiter.scala 88:18]
    end else if (latch_result) begin // @[FastArbiter.scala 71:27]
      if (rrValid) begin
        chosen_reg <= rrSelOH;
      end else begin
        chosen_reg <= firstOneOH;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      rrGrantMask <= 14'h0; // @[Reg.scala 29:22]
    end else if (latch_result) begin // @[Reg.scala 28:20]
      rrGrantMask <= _rrGrantMask_T_26;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      pendingMask <= 14'h0; // @[Reg.scala 29:22]
    end else if (latch_result) begin // @[Reg.scala 28:20]
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
  out_valid_reg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  out_bits_reg_sink = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  chosen_reg = _RAND_2[13:0];
  _RAND_3 = {1{`RANDOM}};
  rrGrantMask = _RAND_3[13:0];
  _RAND_4 = {1{`RANDOM}};
  pendingMask = _RAND_4[13:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    out_valid_reg = 1'h0;
  end
  if (reset) begin
    out_bits_reg_sink = 3'h0;
  end
  if (reset) begin
    chosen_reg = 14'h0;
  end
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

