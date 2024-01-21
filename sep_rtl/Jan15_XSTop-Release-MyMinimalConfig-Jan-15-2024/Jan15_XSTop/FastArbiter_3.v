module FastArbiter_3(
  input         clock,
  input         reset,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [21:0] io_in_0_bits_tag,
  input  [6:0]  io_in_0_bits_set,
  input  [1:0]  io_in_0_bits_param,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [21:0] io_in_1_bits_tag,
  input  [6:0]  io_in_1_bits_set,
  input  [1:0]  io_in_1_bits_param,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input  [21:0] io_in_2_bits_tag,
  input  [6:0]  io_in_2_bits_set,
  input  [1:0]  io_in_2_bits_param,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input  [21:0] io_in_3_bits_tag,
  input  [6:0]  io_in_3_bits_set,
  input  [1:0]  io_in_3_bits_param,
  output        io_in_4_ready,
  input         io_in_4_valid,
  input  [21:0] io_in_4_bits_tag,
  input  [6:0]  io_in_4_bits_set,
  input  [1:0]  io_in_4_bits_param,
  output        io_in_5_ready,
  input         io_in_5_valid,
  input  [21:0] io_in_5_bits_tag,
  input  [6:0]  io_in_5_bits_set,
  input  [1:0]  io_in_5_bits_param,
  output        io_in_6_ready,
  input         io_in_6_valid,
  input  [21:0] io_in_6_bits_tag,
  input  [6:0]  io_in_6_bits_set,
  input  [1:0]  io_in_6_bits_param,
  output        io_in_7_ready,
  input         io_in_7_valid,
  input  [21:0] io_in_7_bits_tag,
  input  [6:0]  io_in_7_bits_set,
  input  [1:0]  io_in_7_bits_param,
  output        io_in_8_ready,
  input         io_in_8_valid,
  input  [21:0] io_in_8_bits_tag,
  input  [6:0]  io_in_8_bits_set,
  input  [1:0]  io_in_8_bits_param,
  output        io_in_9_ready,
  input         io_in_9_valid,
  input  [21:0] io_in_9_bits_tag,
  input  [6:0]  io_in_9_bits_set,
  input  [1:0]  io_in_9_bits_param,
  output        io_in_10_ready,
  input         io_in_10_valid,
  input  [21:0] io_in_10_bits_tag,
  input  [6:0]  io_in_10_bits_set,
  input  [1:0]  io_in_10_bits_param,
  output        io_in_11_ready,
  input         io_in_11_valid,
  input  [21:0] io_in_11_bits_tag,
  input  [6:0]  io_in_11_bits_set,
  input  [1:0]  io_in_11_bits_param,
  output        io_in_12_ready,
  input         io_in_12_valid,
  input  [21:0] io_in_12_bits_tag,
  input  [6:0]  io_in_12_bits_set,
  input  [1:0]  io_in_12_bits_param,
  output        io_in_13_ready,
  input         io_in_13_valid,
  input  [21:0] io_in_13_bits_tag,
  input  [6:0]  io_in_13_bits_set,
  input  [1:0]  io_in_13_bits_param,
  output        io_in_14_ready,
  input         io_in_14_valid,
  input  [21:0] io_in_14_bits_tag,
  input  [6:0]  io_in_14_bits_set,
  input  [1:0]  io_in_14_bits_param,
  output        io_in_15_ready,
  input         io_in_15_valid,
  input  [21:0] io_in_15_bits_tag,
  input  [6:0]  io_in_15_bits_set,
  input  [1:0]  io_in_15_bits_param,
  input         io_out_ready,
  output        io_out_valid,
  output [21:0] io_out_bits_tag,
  output [6:0]  io_out_bits_set,
  output [2:0]  io_out_bits_opcode,
  output [1:0]  io_out_bits_param
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] valids_lo = {io_in_7_valid,io_in_6_valid,io_in_5_valid,io_in_4_valid,io_in_3_valid,io_in_2_valid,
    io_in_1_valid,io_in_0_valid}; // @[FastArbiter.scala 36:50]
  wire [15:0] valids = {io_in_15_valid,io_in_14_valid,io_in_13_valid,io_in_12_valid,io_in_11_valid,io_in_10_valid,
    io_in_9_valid,io_in_8_valid,valids_lo}; // @[FastArbiter.scala 36:50]
  reg [15:0] rrGrantMask; // @[Reg.scala 28:20]
  reg [15:0] pendingMask; // @[Reg.scala 28:20]
  wire [15:0] _rrSelOH_T = rrGrantMask & pendingMask; // @[FastArbiter.scala 51:47]
  wire [1:0] rrSelOH_hi_hi_hi_6 = {_rrSelOH_T[0],_rrSelOH_T[1]}; // @[Cat.scala 31:58]
  wire [3:0] rrSelOH_hi_hi_10 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3]}; // @[Cat.scala 31:58]
  wire [7:0] rrSelOH_hi_12 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],_rrSelOH_T[7]}; // @[Cat.scala 31:58]
  wire [6:0] rrSelOH_lo_11 = {_rrSelOH_T[8],_rrSelOH_T[9],_rrSelOH_T[10],_rrSelOH_T[11],_rrSelOH_T[12],_rrSelOH_T[13],
    _rrSelOH_T[14]}; // @[Cat.scala 31:58]
  wire [14:0] _rrSelOH_T_72 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],_rrSelOH_T[7],rrSelOH_lo_11}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_75 = _rrSelOH_T[15] & ~(|_rrSelOH_T_72); // @[FastArbiter.scala 28:24]
  wire [6:0] rrSelOH_hi_11 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6]}; // @[Cat.scala 31:58]
  wire [6:0] rrSelOH_lo_10 = {_rrSelOH_T[7],_rrSelOH_T[8],_rrSelOH_T[9],_rrSelOH_T[10],_rrSelOH_T[11],_rrSelOH_T[12],
    _rrSelOH_T[13]}; // @[Cat.scala 31:58]
  wire [13:0] _rrSelOH_T_68 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],rrSelOH_lo_10}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_71 = _rrSelOH_T[14] & ~(|_rrSelOH_T_68); // @[FastArbiter.scala 28:24]
  wire [5:0] rrSelOH_lo_9 = {_rrSelOH_T[7],_rrSelOH_T[8],_rrSelOH_T[9],_rrSelOH_T[10],_rrSelOH_T[11],_rrSelOH_T[12]}; // @[Cat.scala 31:58]
  wire [12:0] _rrSelOH_T_64 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],rrSelOH_lo_9}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_67 = _rrSelOH_T[13] & ~(|_rrSelOH_T_64); // @[FastArbiter.scala 28:24]
  wire [2:0] rrSelOH_hi_hi_7 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2]}; // @[Cat.scala 31:58]
  wire [5:0] rrSelOH_hi_9 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5]}; // @[Cat.scala 31:58]
  wire [5:0] rrSelOH_lo_8 = {_rrSelOH_T[6],_rrSelOH_T[7],_rrSelOH_T[8],_rrSelOH_T[9],_rrSelOH_T[10],_rrSelOH_T[11]}; // @[Cat.scala 31:58]
  wire [11:0] _rrSelOH_T_60 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    rrSelOH_lo_8}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_63 = _rrSelOH_T[12] & ~(|_rrSelOH_T_60); // @[FastArbiter.scala 28:24]
  wire [4:0] rrSelOH_lo_7 = {_rrSelOH_T[6],_rrSelOH_T[7],_rrSelOH_T[8],_rrSelOH_T[9],_rrSelOH_T[10]}; // @[Cat.scala 31:58]
  wire [10:0] _rrSelOH_T_56 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    rrSelOH_lo_7}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_59 = _rrSelOH_T[11] & ~(|_rrSelOH_T_56); // @[FastArbiter.scala 28:24]
  wire [4:0] rrSelOH_hi_7 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4]}; // @[Cat.scala 31:58]
  wire [9:0] _rrSelOH_T_52 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],_rrSelOH_T[7],_rrSelOH_T[8],_rrSelOH_T[9]}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_55 = _rrSelOH_T[10] & ~(|_rrSelOH_T_52); // @[FastArbiter.scala 28:24]
  wire [8:0] _rrSelOH_T_48 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2],_rrSelOH_T[3],_rrSelOH_T[4],_rrSelOH_T[5],
    _rrSelOH_T[6],_rrSelOH_T[7],_rrSelOH_T[8]}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_51 = _rrSelOH_T[9] & ~(|_rrSelOH_T_48); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_47 = _rrSelOH_T[8] & ~(|rrSelOH_hi_12); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_43 = _rrSelOH_T[7] & ~(|rrSelOH_hi_11); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_39 = _rrSelOH_T[6] & ~(|rrSelOH_hi_9); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_35 = _rrSelOH_T[5] & ~(|rrSelOH_hi_7); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_31 = _rrSelOH_T[4] & ~(|rrSelOH_hi_hi_10); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_27 = _rrSelOH_T[3] & ~(|rrSelOH_hi_hi_7); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_23 = _rrSelOH_T[2] & ~(|rrSelOH_hi_hi_hi_6); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_19 = _rrSelOH_T[1] & ~(|_rrSelOH_T[0]); // @[FastArbiter.scala 28:24]
  wire [7:0] rrSelOH_lo_12 = {_rrSelOH_T_43,_rrSelOH_T_39,_rrSelOH_T_35,_rrSelOH_T_31,_rrSelOH_T_27,_rrSelOH_T_23,
    _rrSelOH_T_19,_rrSelOH_T[0]}; // @[FastArbiter.scala 51:80]
  wire [15:0] rrSelOH = {_rrSelOH_T_75,_rrSelOH_T_71,_rrSelOH_T_67,_rrSelOH_T_63,_rrSelOH_T_59,_rrSelOH_T_55,
    _rrSelOH_T_51,_rrSelOH_T_47,rrSelOH_lo_12}; // @[FastArbiter.scala 51:80]
  wire [15:0] _rrValid_T = rrSelOH & valids; // @[FastArbiter.scala 53:26]
  wire  rrValid = |_rrValid_T; // @[FastArbiter.scala 53:39]
  wire [1:0] firstOneOH_hi_hi_hi_6 = {valids[0],valids[1]}; // @[Cat.scala 31:58]
  wire [3:0] firstOneOH_hi_hi_10 = {valids[0],valids[1],valids[2],valids[3]}; // @[Cat.scala 31:58]
  wire [7:0] firstOneOH_hi_12 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],valids[7]}; // @[Cat.scala 31:58]
  wire [6:0] firstOneOH_lo_11 = {valids[8],valids[9],valids[10],valids[11],valids[12],valids[13],valids[14]}; // @[Cat.scala 31:58]
  wire [14:0] _firstOneOH_T_71 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],valids[7],
    firstOneOH_lo_11}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_74 = valids[15] & ~(|_firstOneOH_T_71); // @[FastArbiter.scala 28:24]
  wire [6:0] firstOneOH_hi_11 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6]}; // @[Cat.scala 31:58]
  wire [6:0] firstOneOH_lo_10 = {valids[7],valids[8],valids[9],valids[10],valids[11],valids[12],valids[13]}; // @[Cat.scala 31:58]
  wire [13:0] _firstOneOH_T_67 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],firstOneOH_lo_10
    }; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_70 = valids[14] & ~(|_firstOneOH_T_67); // @[FastArbiter.scala 28:24]
  wire [5:0] firstOneOH_lo_9 = {valids[7],valids[8],valids[9],valids[10],valids[11],valids[12]}; // @[Cat.scala 31:58]
  wire [12:0] _firstOneOH_T_63 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],firstOneOH_lo_9}
    ; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_66 = valids[13] & ~(|_firstOneOH_T_63); // @[FastArbiter.scala 28:24]
  wire [2:0] firstOneOH_hi_hi_7 = {valids[0],valids[1],valids[2]}; // @[Cat.scala 31:58]
  wire [5:0] firstOneOH_hi_9 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5]}; // @[Cat.scala 31:58]
  wire [5:0] firstOneOH_lo_8 = {valids[6],valids[7],valids[8],valids[9],valids[10],valids[11]}; // @[Cat.scala 31:58]
  wire [11:0] _firstOneOH_T_59 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],firstOneOH_lo_8}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_62 = valids[12] & ~(|_firstOneOH_T_59); // @[FastArbiter.scala 28:24]
  wire [4:0] firstOneOH_lo_7 = {valids[6],valids[7],valids[8],valids[9],valids[10]}; // @[Cat.scala 31:58]
  wire [10:0] _firstOneOH_T_55 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],firstOneOH_lo_7}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_58 = valids[11] & ~(|_firstOneOH_T_55); // @[FastArbiter.scala 28:24]
  wire [4:0] firstOneOH_hi_7 = {valids[0],valids[1],valids[2],valids[3],valids[4]}; // @[Cat.scala 31:58]
  wire [9:0] _firstOneOH_T_51 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],valids[7],valids[
    8],valids[9]}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_54 = valids[10] & ~(|_firstOneOH_T_51); // @[FastArbiter.scala 28:24]
  wire [8:0] _firstOneOH_T_47 = {valids[0],valids[1],valids[2],valids[3],valids[4],valids[5],valids[6],valids[7],valids[
    8]}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_50 = valids[9] & ~(|_firstOneOH_T_47); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_46 = valids[8] & ~(|firstOneOH_hi_12); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_42 = valids[7] & ~(|firstOneOH_hi_11); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_38 = valids[6] & ~(|firstOneOH_hi_9); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_34 = valids[5] & ~(|firstOneOH_hi_7); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_30 = valids[4] & ~(|firstOneOH_hi_hi_10); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_26 = valids[3] & ~(|firstOneOH_hi_hi_7); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_22 = valids[2] & ~(|firstOneOH_hi_hi_hi_6); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_18 = valids[1] & ~(|valids[0]); // @[FastArbiter.scala 28:24]
  wire [7:0] firstOneOH_lo_12 = {_firstOneOH_T_42,_firstOneOH_T_38,_firstOneOH_T_34,_firstOneOH_T_30,_firstOneOH_T_26,
    _firstOneOH_T_22,_firstOneOH_T_18,valids[0]}; // @[FastArbiter.scala 52:62]
  wire [15:0] firstOneOH = {_firstOneOH_T_74,_firstOneOH_T_70,_firstOneOH_T_66,_firstOneOH_T_62,_firstOneOH_T_58,
    _firstOneOH_T_54,_firstOneOH_T_50,_firstOneOH_T_46,firstOneOH_lo_12}; // @[FastArbiter.scala 52:62]
  wire [15:0] chosenOH = rrValid ? rrSelOH : firstOneOH; // @[FastArbiter.scala 54:18]
  wire [15:0] _pendingMask_T = ~chosenOH; // @[FastArbiter.scala 39:15]
  wire [15:0] _pendingMask_T_1 = valids & _pendingMask_T; // @[FastArbiter.scala 39:12]
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
  wire  _rrGrantMask_T_27 = |chosenOH[13:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_29 = |chosenOH[14:0]; // @[FastArbiter.scala 49:51]
  wire [7:0] rrGrantMask_lo = {_rrGrantMask_T_13,_rrGrantMask_T_11,_rrGrantMask_T_9,_rrGrantMask_T_7,_rrGrantMask_T_5,
    _rrGrantMask_T_3,_rrGrantMask_T_1,1'h0}; // @[FastArbiter.scala 50:12]
  wire [15:0] _rrGrantMask_T_30 = {_rrGrantMask_T_29,_rrGrantMask_T_27,_rrGrantMask_T_25,_rrGrantMask_T_23,
    _rrGrantMask_T_21,_rrGrantMask_T_19,_rrGrantMask_T_17,_rrGrantMask_T_15,rrGrantMask_lo}; // @[FastArbiter.scala 50:12]
  wire [1:0] _io_out_bits_T_16 = chosenOH[0] ? io_in_0_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_17 = chosenOH[1] ? io_in_1_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_18 = chosenOH[2] ? io_in_2_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_19 = chosenOH[3] ? io_in_3_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_20 = chosenOH[4] ? io_in_4_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_21 = chosenOH[5] ? io_in_5_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_22 = chosenOH[6] ? io_in_6_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_23 = chosenOH[7] ? io_in_7_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_24 = chosenOH[8] ? io_in_8_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_25 = chosenOH[9] ? io_in_9_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_26 = chosenOH[10] ? io_in_10_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_27 = chosenOH[11] ? io_in_11_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_28 = chosenOH[12] ? io_in_12_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_29 = chosenOH[13] ? io_in_13_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_30 = chosenOH[14] ? io_in_14_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_31 = chosenOH[15] ? io_in_15_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_32 = _io_out_bits_T_16 | _io_out_bits_T_17; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_33 = _io_out_bits_T_32 | _io_out_bits_T_18; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_34 = _io_out_bits_T_33 | _io_out_bits_T_19; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_35 = _io_out_bits_T_34 | _io_out_bits_T_20; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_36 = _io_out_bits_T_35 | _io_out_bits_T_21; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_37 = _io_out_bits_T_36 | _io_out_bits_T_22; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_38 = _io_out_bits_T_37 | _io_out_bits_T_23; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_39 = _io_out_bits_T_38 | _io_out_bits_T_24; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_40 = _io_out_bits_T_39 | _io_out_bits_T_25; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_41 = _io_out_bits_T_40 | _io_out_bits_T_26; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_42 = _io_out_bits_T_41 | _io_out_bits_T_27; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_43 = _io_out_bits_T_42 | _io_out_bits_T_28; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_44 = _io_out_bits_T_43 | _io_out_bits_T_29; // @[Mux.scala 27:73]
  wire [1:0] _io_out_bits_T_45 = _io_out_bits_T_44 | _io_out_bits_T_30; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_47 = chosenOH[0] ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_48 = chosenOH[1] ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_49 = chosenOH[2] ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_50 = chosenOH[3] ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_51 = chosenOH[4] ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_52 = chosenOH[5] ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_53 = chosenOH[6] ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_54 = chosenOH[7] ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_55 = chosenOH[8] ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_56 = chosenOH[9] ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_57 = chosenOH[10] ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_58 = chosenOH[11] ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_59 = chosenOH[12] ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_60 = chosenOH[13] ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_61 = chosenOH[14] ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_62 = chosenOH[15] ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_63 = _io_out_bits_T_47 | _io_out_bits_T_48; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_64 = _io_out_bits_T_63 | _io_out_bits_T_49; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_65 = _io_out_bits_T_64 | _io_out_bits_T_50; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_66 = _io_out_bits_T_65 | _io_out_bits_T_51; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_67 = _io_out_bits_T_66 | _io_out_bits_T_52; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_68 = _io_out_bits_T_67 | _io_out_bits_T_53; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_69 = _io_out_bits_T_68 | _io_out_bits_T_54; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_70 = _io_out_bits_T_69 | _io_out_bits_T_55; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_71 = _io_out_bits_T_70 | _io_out_bits_T_56; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_72 = _io_out_bits_T_71 | _io_out_bits_T_57; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_73 = _io_out_bits_T_72 | _io_out_bits_T_58; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_74 = _io_out_bits_T_73 | _io_out_bits_T_59; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_75 = _io_out_bits_T_74 | _io_out_bits_T_60; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_76 = _io_out_bits_T_75 | _io_out_bits_T_61; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_109 = chosenOH[0] ? io_in_0_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_110 = chosenOH[1] ? io_in_1_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_111 = chosenOH[2] ? io_in_2_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_112 = chosenOH[3] ? io_in_3_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_113 = chosenOH[4] ? io_in_4_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_114 = chosenOH[5] ? io_in_5_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_115 = chosenOH[6] ? io_in_6_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_116 = chosenOH[7] ? io_in_7_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_117 = chosenOH[8] ? io_in_8_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_118 = chosenOH[9] ? io_in_9_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_119 = chosenOH[10] ? io_in_10_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_120 = chosenOH[11] ? io_in_11_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_121 = chosenOH[12] ? io_in_12_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_122 = chosenOH[13] ? io_in_13_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_123 = chosenOH[14] ? io_in_14_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_124 = chosenOH[15] ? io_in_15_bits_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_125 = _io_out_bits_T_109 | _io_out_bits_T_110; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_126 = _io_out_bits_T_125 | _io_out_bits_T_111; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_127 = _io_out_bits_T_126 | _io_out_bits_T_112; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_128 = _io_out_bits_T_127 | _io_out_bits_T_113; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_129 = _io_out_bits_T_128 | _io_out_bits_T_114; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_130 = _io_out_bits_T_129 | _io_out_bits_T_115; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_131 = _io_out_bits_T_130 | _io_out_bits_T_116; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_132 = _io_out_bits_T_131 | _io_out_bits_T_117; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_133 = _io_out_bits_T_132 | _io_out_bits_T_118; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_134 = _io_out_bits_T_133 | _io_out_bits_T_119; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_135 = _io_out_bits_T_134 | _io_out_bits_T_120; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_136 = _io_out_bits_T_135 | _io_out_bits_T_121; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_137 = _io_out_bits_T_136 | _io_out_bits_T_122; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_138 = _io_out_bits_T_137 | _io_out_bits_T_123; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_140 = chosenOH[0] ? io_in_0_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_141 = chosenOH[1] ? io_in_1_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_142 = chosenOH[2] ? io_in_2_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_143 = chosenOH[3] ? io_in_3_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_144 = chosenOH[4] ? io_in_4_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_145 = chosenOH[5] ? io_in_5_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_146 = chosenOH[6] ? io_in_6_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_147 = chosenOH[7] ? io_in_7_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_148 = chosenOH[8] ? io_in_8_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_149 = chosenOH[9] ? io_in_9_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_150 = chosenOH[10] ? io_in_10_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_151 = chosenOH[11] ? io_in_11_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_152 = chosenOH[12] ? io_in_12_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_153 = chosenOH[13] ? io_in_13_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_154 = chosenOH[14] ? io_in_14_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_155 = chosenOH[15] ? io_in_15_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_156 = _io_out_bits_T_140 | _io_out_bits_T_141; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_157 = _io_out_bits_T_156 | _io_out_bits_T_142; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_158 = _io_out_bits_T_157 | _io_out_bits_T_143; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_159 = _io_out_bits_T_158 | _io_out_bits_T_144; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_160 = _io_out_bits_T_159 | _io_out_bits_T_145; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_161 = _io_out_bits_T_160 | _io_out_bits_T_146; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_162 = _io_out_bits_T_161 | _io_out_bits_T_147; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_163 = _io_out_bits_T_162 | _io_out_bits_T_148; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_164 = _io_out_bits_T_163 | _io_out_bits_T_149; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_165 = _io_out_bits_T_164 | _io_out_bits_T_150; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_166 = _io_out_bits_T_165 | _io_out_bits_T_151; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_167 = _io_out_bits_T_166 | _io_out_bits_T_152; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_168 = _io_out_bits_T_167 | _io_out_bits_T_153; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_169 = _io_out_bits_T_168 | _io_out_bits_T_154; // @[Mux.scala 27:73]
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
  assign io_in_14_ready = chosenOH[14] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_in_15_ready = chosenOH[15] & io_out_ready; // @[FastArbiter.scala 60:39]
  assign io_out_valid = |valids; // @[FastArbiter.scala 56:29]
  assign io_out_bits_tag = _io_out_bits_T_169 | _io_out_bits_T_155; // @[Mux.scala 27:73]
  assign io_out_bits_set = _io_out_bits_T_138 | _io_out_bits_T_124; // @[Mux.scala 27:73]
  assign io_out_bits_opcode = _io_out_bits_T_76 | _io_out_bits_T_62; // @[Mux.scala 27:73]
  assign io_out_bits_param = _io_out_bits_T_45 | _io_out_bits_T_31; // @[Mux.scala 27:73]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      rrGrantMask <= 16'h0; // @[Reg.scala 29:22]
    end else if (_pendingMask_T_2) begin // @[Reg.scala 28:20]
      rrGrantMask <= _rrGrantMask_T_30;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      pendingMask <= 16'h0; // @[Reg.scala 29:22]
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
  rrGrantMask = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  pendingMask = _RAND_1[15:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    rrGrantMask = 16'h0;
  end
  if (reset) begin
    pendingMask = 16'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

