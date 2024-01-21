module LatchFastArbiter(
  input         clock,
  input         reset,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [21:0] io_in_0_bits_tag,
  input  [7:0]  io_in_0_bits_set,
  input  [5:0]  io_in_0_bits_off,
  input  [2:0]  io_in_0_bits_opcode,
  input  [2:0]  io_in_0_bits_param,
  input  [3:0]  io_in_0_bits_source,
  input  [2:0]  io_in_0_bits_bufIdx,
  input  [2:0]  io_in_0_bits_size,
  input         io_in_0_bits_putData,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [21:0] io_in_1_bits_tag,
  input  [7:0]  io_in_1_bits_set,
  input  [5:0]  io_in_1_bits_off,
  input  [2:0]  io_in_1_bits_opcode,
  input  [2:0]  io_in_1_bits_param,
  input  [3:0]  io_in_1_bits_source,
  input  [2:0]  io_in_1_bits_bufIdx,
  input  [2:0]  io_in_1_bits_size,
  input         io_in_1_bits_putData,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input  [21:0] io_in_2_bits_tag,
  input  [7:0]  io_in_2_bits_set,
  input  [5:0]  io_in_2_bits_off,
  input  [2:0]  io_in_2_bits_opcode,
  input  [2:0]  io_in_2_bits_param,
  input  [3:0]  io_in_2_bits_source,
  input  [2:0]  io_in_2_bits_bufIdx,
  input  [2:0]  io_in_2_bits_size,
  input         io_in_2_bits_putData,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input  [21:0] io_in_3_bits_tag,
  input  [7:0]  io_in_3_bits_set,
  input  [5:0]  io_in_3_bits_off,
  input  [2:0]  io_in_3_bits_opcode,
  input  [2:0]  io_in_3_bits_param,
  input  [3:0]  io_in_3_bits_source,
  input  [2:0]  io_in_3_bits_bufIdx,
  input  [2:0]  io_in_3_bits_size,
  input         io_in_3_bits_putData,
  output        io_in_4_ready,
  input         io_in_4_valid,
  input  [21:0] io_in_4_bits_tag,
  input  [7:0]  io_in_4_bits_set,
  input  [5:0]  io_in_4_bits_off,
  input  [2:0]  io_in_4_bits_opcode,
  input  [2:0]  io_in_4_bits_param,
  input  [3:0]  io_in_4_bits_source,
  input  [2:0]  io_in_4_bits_bufIdx,
  input  [2:0]  io_in_4_bits_size,
  input         io_in_4_bits_putData,
  output        io_in_5_ready,
  input         io_in_5_valid,
  input  [21:0] io_in_5_bits_tag,
  input  [7:0]  io_in_5_bits_set,
  input  [5:0]  io_in_5_bits_off,
  input  [2:0]  io_in_5_bits_opcode,
  input  [2:0]  io_in_5_bits_param,
  input  [3:0]  io_in_5_bits_source,
  input  [2:0]  io_in_5_bits_bufIdx,
  input  [2:0]  io_in_5_bits_size,
  input         io_in_5_bits_putData,
  output        io_in_6_ready,
  input         io_in_6_valid,
  input  [21:0] io_in_6_bits_tag,
  input  [7:0]  io_in_6_bits_set,
  input  [5:0]  io_in_6_bits_off,
  input  [2:0]  io_in_6_bits_opcode,
  input  [2:0]  io_in_6_bits_param,
  input  [3:0]  io_in_6_bits_source,
  input  [2:0]  io_in_6_bits_bufIdx,
  input  [2:0]  io_in_6_bits_size,
  input         io_in_6_bits_putData,
  output        io_in_7_ready,
  input         io_in_7_valid,
  input  [21:0] io_in_7_bits_tag,
  input  [7:0]  io_in_7_bits_set,
  input  [5:0]  io_in_7_bits_off,
  input  [2:0]  io_in_7_bits_opcode,
  input  [2:0]  io_in_7_bits_param,
  input  [3:0]  io_in_7_bits_source,
  input  [2:0]  io_in_7_bits_bufIdx,
  input  [2:0]  io_in_7_bits_size,
  input         io_in_7_bits_putData,
  output        io_in_8_ready,
  input         io_in_8_valid,
  input  [21:0] io_in_8_bits_tag,
  input  [7:0]  io_in_8_bits_set,
  input  [5:0]  io_in_8_bits_off,
  input  [2:0]  io_in_8_bits_opcode,
  input  [2:0]  io_in_8_bits_param,
  input  [3:0]  io_in_8_bits_source,
  input  [2:0]  io_in_8_bits_bufIdx,
  input  [2:0]  io_in_8_bits_size,
  input         io_in_8_bits_putData,
  output        io_in_9_ready,
  input         io_in_9_valid,
  input  [21:0] io_in_9_bits_tag,
  input  [7:0]  io_in_9_bits_set,
  input  [5:0]  io_in_9_bits_off,
  input  [2:0]  io_in_9_bits_opcode,
  input  [2:0]  io_in_9_bits_param,
  input  [3:0]  io_in_9_bits_source,
  input  [2:0]  io_in_9_bits_bufIdx,
  input  [2:0]  io_in_9_bits_size,
  input         io_in_9_bits_putData,
  output        io_in_10_ready,
  input         io_in_10_valid,
  input  [21:0] io_in_10_bits_tag,
  input  [7:0]  io_in_10_bits_set,
  input  [5:0]  io_in_10_bits_off,
  input  [2:0]  io_in_10_bits_opcode,
  input  [2:0]  io_in_10_bits_param,
  input  [3:0]  io_in_10_bits_source,
  input  [2:0]  io_in_10_bits_bufIdx,
  input  [2:0]  io_in_10_bits_size,
  input         io_in_10_bits_putData,
  output        io_in_11_ready,
  input         io_in_11_valid,
  input  [21:0] io_in_11_bits_tag,
  input  [7:0]  io_in_11_bits_set,
  input  [5:0]  io_in_11_bits_off,
  input  [2:0]  io_in_11_bits_opcode,
  input  [2:0]  io_in_11_bits_param,
  input  [3:0]  io_in_11_bits_source,
  input  [2:0]  io_in_11_bits_bufIdx,
  input  [2:0]  io_in_11_bits_size,
  input         io_in_11_bits_putData,
  output        io_in_12_ready,
  input         io_in_12_valid,
  input  [21:0] io_in_12_bits_tag,
  input  [7:0]  io_in_12_bits_set,
  input  [5:0]  io_in_12_bits_off,
  input  [2:0]  io_in_12_bits_opcode,
  input  [2:0]  io_in_12_bits_param,
  input  [3:0]  io_in_12_bits_source,
  input  [2:0]  io_in_12_bits_bufIdx,
  input  [2:0]  io_in_12_bits_size,
  input         io_in_12_bits_putData,
  output        io_in_13_ready,
  input         io_in_13_valid,
  input  [21:0] io_in_13_bits_tag,
  input  [7:0]  io_in_13_bits_set,
  input  [5:0]  io_in_13_bits_off,
  input  [2:0]  io_in_13_bits_opcode,
  input  [2:0]  io_in_13_bits_param,
  input  [3:0]  io_in_13_bits_source,
  input  [2:0]  io_in_13_bits_bufIdx,
  input  [2:0]  io_in_13_bits_size,
  input         io_in_13_bits_putData,
  input         io_out_ready,
  output        io_out_valid,
  output [21:0] io_out_bits_tag,
  output [7:0]  io_out_bits_set,
  output [5:0]  io_out_bits_off,
  output [2:0]  io_out_bits_opcode,
  output [2:0]  io_out_bits_param,
  output [3:0]  io_out_bits_source,
  output [2:0]  io_out_bits_bufIdx,
  output [2:0]  io_out_bits_size,
  output        io_out_bits_putData
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
`endif // RANDOMIZE_REG_INIT
  reg  out_valid_reg; // @[FastArbiter.scala 69:30]
  reg [21:0] out_bits_reg_tag; // @[FastArbiter.scala 70:29]
  reg [7:0] out_bits_reg_set; // @[FastArbiter.scala 70:29]
  reg [5:0] out_bits_reg_off; // @[FastArbiter.scala 70:29]
  reg [2:0] out_bits_reg_opcode; // @[FastArbiter.scala 70:29]
  reg [2:0] out_bits_reg_param; // @[FastArbiter.scala 70:29]
  reg [3:0] out_bits_reg_source; // @[FastArbiter.scala 70:29]
  reg [2:0] out_bits_reg_bufIdx; // @[FastArbiter.scala 70:29]
  reg [2:0] out_bits_reg_size; // @[FastArbiter.scala 70:29]
  reg  out_bits_reg_putData; // @[FastArbiter.scala 70:29]
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
  wire  _out_bits_reg_T_67 = chosenOH[0] & io_in_0_bits_putData | chosenOH[1] & io_in_1_bits_putData | chosenOH[2] &
    io_in_2_bits_putData | chosenOH[3] & io_in_3_bits_putData | chosenOH[4] & io_in_4_bits_putData | chosenOH[5] &
    io_in_5_bits_putData | chosenOH[6] & io_in_6_bits_putData | chosenOH[7] & io_in_7_bits_putData | chosenOH[8] &
    io_in_8_bits_putData | chosenOH[9] & io_in_9_bits_putData | chosenOH[10] & io_in_10_bits_putData | chosenOH[11] &
    io_in_11_bits_putData | chosenOH[12] & io_in_12_bits_putData | chosenOH[13] & io_in_13_bits_putData; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_95 = chosenOH[0] ? io_in_0_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_96 = chosenOH[1] ? io_in_1_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_97 = chosenOH[2] ? io_in_2_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_98 = chosenOH[3] ? io_in_3_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_99 = chosenOH[4] ? io_in_4_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_100 = chosenOH[5] ? io_in_5_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_101 = chosenOH[6] ? io_in_6_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_102 = chosenOH[7] ? io_in_7_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_103 = chosenOH[8] ? io_in_8_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_104 = chosenOH[9] ? io_in_9_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_105 = chosenOH[10] ? io_in_10_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_106 = chosenOH[11] ? io_in_11_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_107 = chosenOH[12] ? io_in_12_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_108 = chosenOH[13] ? io_in_13_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_109 = _out_bits_reg_T_95 | _out_bits_reg_T_96; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_110 = _out_bits_reg_T_109 | _out_bits_reg_T_97; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_111 = _out_bits_reg_T_110 | _out_bits_reg_T_98; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_112 = _out_bits_reg_T_111 | _out_bits_reg_T_99; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_113 = _out_bits_reg_T_112 | _out_bits_reg_T_100; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_114 = _out_bits_reg_T_113 | _out_bits_reg_T_101; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_115 = _out_bits_reg_T_114 | _out_bits_reg_T_102; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_116 = _out_bits_reg_T_115 | _out_bits_reg_T_103; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_117 = _out_bits_reg_T_116 | _out_bits_reg_T_104; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_118 = _out_bits_reg_T_117 | _out_bits_reg_T_105; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_119 = _out_bits_reg_T_118 | _out_bits_reg_T_106; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_120 = _out_bits_reg_T_119 | _out_bits_reg_T_107; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_121 = _out_bits_reg_T_120 | _out_bits_reg_T_108; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_122 = chosenOH[0] ? io_in_0_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_123 = chosenOH[1] ? io_in_1_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_124 = chosenOH[2] ? io_in_2_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_125 = chosenOH[3] ? io_in_3_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_126 = chosenOH[4] ? io_in_4_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_127 = chosenOH[5] ? io_in_5_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_128 = chosenOH[6] ? io_in_6_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_129 = chosenOH[7] ? io_in_7_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_130 = chosenOH[8] ? io_in_8_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_131 = chosenOH[9] ? io_in_9_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_132 = chosenOH[10] ? io_in_10_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_133 = chosenOH[11] ? io_in_11_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_134 = chosenOH[12] ? io_in_12_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_135 = chosenOH[13] ? io_in_13_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_136 = _out_bits_reg_T_122 | _out_bits_reg_T_123; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_137 = _out_bits_reg_T_136 | _out_bits_reg_T_124; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_138 = _out_bits_reg_T_137 | _out_bits_reg_T_125; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_139 = _out_bits_reg_T_138 | _out_bits_reg_T_126; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_140 = _out_bits_reg_T_139 | _out_bits_reg_T_127; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_141 = _out_bits_reg_T_140 | _out_bits_reg_T_128; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_142 = _out_bits_reg_T_141 | _out_bits_reg_T_129; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_143 = _out_bits_reg_T_142 | _out_bits_reg_T_130; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_144 = _out_bits_reg_T_143 | _out_bits_reg_T_131; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_145 = _out_bits_reg_T_144 | _out_bits_reg_T_132; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_146 = _out_bits_reg_T_145 | _out_bits_reg_T_133; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_147 = _out_bits_reg_T_146 | _out_bits_reg_T_134; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_148 = _out_bits_reg_T_147 | _out_bits_reg_T_135; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_149 = chosenOH[0] ? io_in_0_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_150 = chosenOH[1] ? io_in_1_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_151 = chosenOH[2] ? io_in_2_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_152 = chosenOH[3] ? io_in_3_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_153 = chosenOH[4] ? io_in_4_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_154 = chosenOH[5] ? io_in_5_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_155 = chosenOH[6] ? io_in_6_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_156 = chosenOH[7] ? io_in_7_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_157 = chosenOH[8] ? io_in_8_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_158 = chosenOH[9] ? io_in_9_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_159 = chosenOH[10] ? io_in_10_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_160 = chosenOH[11] ? io_in_11_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_161 = chosenOH[12] ? io_in_12_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_162 = chosenOH[13] ? io_in_13_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_163 = _out_bits_reg_T_149 | _out_bits_reg_T_150; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_164 = _out_bits_reg_T_163 | _out_bits_reg_T_151; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_165 = _out_bits_reg_T_164 | _out_bits_reg_T_152; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_166 = _out_bits_reg_T_165 | _out_bits_reg_T_153; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_167 = _out_bits_reg_T_166 | _out_bits_reg_T_154; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_168 = _out_bits_reg_T_167 | _out_bits_reg_T_155; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_169 = _out_bits_reg_T_168 | _out_bits_reg_T_156; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_170 = _out_bits_reg_T_169 | _out_bits_reg_T_157; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_171 = _out_bits_reg_T_170 | _out_bits_reg_T_158; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_172 = _out_bits_reg_T_171 | _out_bits_reg_T_159; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_173 = _out_bits_reg_T_172 | _out_bits_reg_T_160; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_174 = _out_bits_reg_T_173 | _out_bits_reg_T_161; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_175 = _out_bits_reg_T_174 | _out_bits_reg_T_162; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_176 = chosenOH[0] ? io_in_0_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_177 = chosenOH[1] ? io_in_1_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_178 = chosenOH[2] ? io_in_2_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_179 = chosenOH[3] ? io_in_3_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_180 = chosenOH[4] ? io_in_4_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_181 = chosenOH[5] ? io_in_5_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_182 = chosenOH[6] ? io_in_6_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_183 = chosenOH[7] ? io_in_7_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_184 = chosenOH[8] ? io_in_8_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_185 = chosenOH[9] ? io_in_9_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_186 = chosenOH[10] ? io_in_10_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_187 = chosenOH[11] ? io_in_11_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_188 = chosenOH[12] ? io_in_12_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_189 = chosenOH[13] ? io_in_13_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_190 = _out_bits_reg_T_176 | _out_bits_reg_T_177; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_191 = _out_bits_reg_T_190 | _out_bits_reg_T_178; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_192 = _out_bits_reg_T_191 | _out_bits_reg_T_179; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_193 = _out_bits_reg_T_192 | _out_bits_reg_T_180; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_194 = _out_bits_reg_T_193 | _out_bits_reg_T_181; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_195 = _out_bits_reg_T_194 | _out_bits_reg_T_182; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_196 = _out_bits_reg_T_195 | _out_bits_reg_T_183; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_197 = _out_bits_reg_T_196 | _out_bits_reg_T_184; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_198 = _out_bits_reg_T_197 | _out_bits_reg_T_185; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_199 = _out_bits_reg_T_198 | _out_bits_reg_T_186; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_200 = _out_bits_reg_T_199 | _out_bits_reg_T_187; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_201 = _out_bits_reg_T_200 | _out_bits_reg_T_188; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_202 = _out_bits_reg_T_201 | _out_bits_reg_T_189; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_203 = chosenOH[0] ? io_in_0_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_204 = chosenOH[1] ? io_in_1_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_205 = chosenOH[2] ? io_in_2_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_206 = chosenOH[3] ? io_in_3_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_207 = chosenOH[4] ? io_in_4_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_208 = chosenOH[5] ? io_in_5_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_209 = chosenOH[6] ? io_in_6_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_210 = chosenOH[7] ? io_in_7_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_211 = chosenOH[8] ? io_in_8_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_212 = chosenOH[9] ? io_in_9_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_213 = chosenOH[10] ? io_in_10_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_214 = chosenOH[11] ? io_in_11_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_215 = chosenOH[12] ? io_in_12_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_216 = chosenOH[13] ? io_in_13_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_217 = _out_bits_reg_T_203 | _out_bits_reg_T_204; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_218 = _out_bits_reg_T_217 | _out_bits_reg_T_205; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_219 = _out_bits_reg_T_218 | _out_bits_reg_T_206; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_220 = _out_bits_reg_T_219 | _out_bits_reg_T_207; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_221 = _out_bits_reg_T_220 | _out_bits_reg_T_208; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_222 = _out_bits_reg_T_221 | _out_bits_reg_T_209; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_223 = _out_bits_reg_T_222 | _out_bits_reg_T_210; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_224 = _out_bits_reg_T_223 | _out_bits_reg_T_211; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_225 = _out_bits_reg_T_224 | _out_bits_reg_T_212; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_226 = _out_bits_reg_T_225 | _out_bits_reg_T_213; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_227 = _out_bits_reg_T_226 | _out_bits_reg_T_214; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_228 = _out_bits_reg_T_227 | _out_bits_reg_T_215; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_229 = _out_bits_reg_T_228 | _out_bits_reg_T_216; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_257 = chosenOH[0] ? io_in_0_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_258 = chosenOH[1] ? io_in_1_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_259 = chosenOH[2] ? io_in_2_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_260 = chosenOH[3] ? io_in_3_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_261 = chosenOH[4] ? io_in_4_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_262 = chosenOH[5] ? io_in_5_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_263 = chosenOH[6] ? io_in_6_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_264 = chosenOH[7] ? io_in_7_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_265 = chosenOH[8] ? io_in_8_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_266 = chosenOH[9] ? io_in_9_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_267 = chosenOH[10] ? io_in_10_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_268 = chosenOH[11] ? io_in_11_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_269 = chosenOH[12] ? io_in_12_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_270 = chosenOH[13] ? io_in_13_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_271 = _out_bits_reg_T_257 | _out_bits_reg_T_258; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_272 = _out_bits_reg_T_271 | _out_bits_reg_T_259; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_273 = _out_bits_reg_T_272 | _out_bits_reg_T_260; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_274 = _out_bits_reg_T_273 | _out_bits_reg_T_261; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_275 = _out_bits_reg_T_274 | _out_bits_reg_T_262; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_276 = _out_bits_reg_T_275 | _out_bits_reg_T_263; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_277 = _out_bits_reg_T_276 | _out_bits_reg_T_264; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_278 = _out_bits_reg_T_277 | _out_bits_reg_T_265; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_279 = _out_bits_reg_T_278 | _out_bits_reg_T_266; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_280 = _out_bits_reg_T_279 | _out_bits_reg_T_267; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_281 = _out_bits_reg_T_280 | _out_bits_reg_T_268; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_282 = _out_bits_reg_T_281 | _out_bits_reg_T_269; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_283 = _out_bits_reg_T_282 | _out_bits_reg_T_270; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_284 = chosenOH[0] ? io_in_0_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_285 = chosenOH[1] ? io_in_1_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_286 = chosenOH[2] ? io_in_2_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_287 = chosenOH[3] ? io_in_3_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_288 = chosenOH[4] ? io_in_4_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_289 = chosenOH[5] ? io_in_5_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_290 = chosenOH[6] ? io_in_6_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_291 = chosenOH[7] ? io_in_7_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_292 = chosenOH[8] ? io_in_8_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_293 = chosenOH[9] ? io_in_9_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_294 = chosenOH[10] ? io_in_10_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_295 = chosenOH[11] ? io_in_11_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_296 = chosenOH[12] ? io_in_12_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_297 = chosenOH[13] ? io_in_13_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_298 = _out_bits_reg_T_284 | _out_bits_reg_T_285; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_299 = _out_bits_reg_T_298 | _out_bits_reg_T_286; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_300 = _out_bits_reg_T_299 | _out_bits_reg_T_287; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_301 = _out_bits_reg_T_300 | _out_bits_reg_T_288; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_302 = _out_bits_reg_T_301 | _out_bits_reg_T_289; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_303 = _out_bits_reg_T_302 | _out_bits_reg_T_290; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_304 = _out_bits_reg_T_303 | _out_bits_reg_T_291; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_305 = _out_bits_reg_T_304 | _out_bits_reg_T_292; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_306 = _out_bits_reg_T_305 | _out_bits_reg_T_293; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_307 = _out_bits_reg_T_306 | _out_bits_reg_T_294; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_308 = _out_bits_reg_T_307 | _out_bits_reg_T_295; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_309 = _out_bits_reg_T_308 | _out_bits_reg_T_296; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_310 = _out_bits_reg_T_309 | _out_bits_reg_T_297; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_311 = chosenOH[0] ? io_in_0_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_312 = chosenOH[1] ? io_in_1_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_313 = chosenOH[2] ? io_in_2_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_314 = chosenOH[3] ? io_in_3_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_315 = chosenOH[4] ? io_in_4_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_316 = chosenOH[5] ? io_in_5_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_317 = chosenOH[6] ? io_in_6_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_318 = chosenOH[7] ? io_in_7_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_319 = chosenOH[8] ? io_in_8_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_320 = chosenOH[9] ? io_in_9_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_321 = chosenOH[10] ? io_in_10_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_322 = chosenOH[11] ? io_in_11_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_323 = chosenOH[12] ? io_in_12_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_324 = chosenOH[13] ? io_in_13_bits_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_325 = _out_bits_reg_T_311 | _out_bits_reg_T_312; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_326 = _out_bits_reg_T_325 | _out_bits_reg_T_313; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_327 = _out_bits_reg_T_326 | _out_bits_reg_T_314; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_328 = _out_bits_reg_T_327 | _out_bits_reg_T_315; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_329 = _out_bits_reg_T_328 | _out_bits_reg_T_316; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_330 = _out_bits_reg_T_329 | _out_bits_reg_T_317; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_331 = _out_bits_reg_T_330 | _out_bits_reg_T_318; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_332 = _out_bits_reg_T_331 | _out_bits_reg_T_319; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_333 = _out_bits_reg_T_332 | _out_bits_reg_T_320; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_334 = _out_bits_reg_T_333 | _out_bits_reg_T_321; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_335 = _out_bits_reg_T_334 | _out_bits_reg_T_322; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_336 = _out_bits_reg_T_335 | _out_bits_reg_T_323; // @[Mux.scala 27:73]
  wire [21:0] _out_bits_reg_T_337 = _out_bits_reg_T_336 | _out_bits_reg_T_324; // @[Mux.scala 27:73]
  wire  _GEN_2 = latch_result | out_valid_reg; // @[FastArbiter.scala 90:22 91:19 69:30]
  wire  _T = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire [5:0] io_out_valid_hi = chosen_reg[13:8]; // @[OneHot.scala 30:18]
  wire [7:0] io_out_valid_lo = chosen_reg[7:0]; // @[OneHot.scala 31:18]
  wire  _io_out_valid_T = |io_out_valid_hi; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_17 = {{2'd0}, io_out_valid_hi}; // @[OneHot.scala 32:28]
  wire [7:0] _io_out_valid_T_1 = _GEN_17 | io_out_valid_lo; // @[OneHot.scala 32:28]
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
  assign io_out_bits_tag = out_bits_reg_tag; // @[FastArbiter.scala 104:15]
  assign io_out_bits_set = out_bits_reg_set; // @[FastArbiter.scala 104:15]
  assign io_out_bits_off = out_bits_reg_off; // @[FastArbiter.scala 104:15]
  assign io_out_bits_opcode = out_bits_reg_opcode; // @[FastArbiter.scala 104:15]
  assign io_out_bits_param = out_bits_reg_param; // @[FastArbiter.scala 104:15]
  assign io_out_bits_source = out_bits_reg_source; // @[FastArbiter.scala 104:15]
  assign io_out_bits_bufIdx = out_bits_reg_bufIdx; // @[FastArbiter.scala 104:15]
  assign io_out_bits_size = out_bits_reg_size; // @[FastArbiter.scala 104:15]
  assign io_out_bits_putData = out_bits_reg_putData; // @[FastArbiter.scala 104:15]
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
      out_bits_reg_tag <= 22'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_tag <= _out_bits_reg_T_337;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_set <= 8'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_set <= _out_bits_reg_T_310;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_off <= 6'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_off <= _out_bits_reg_T_283;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_opcode <= 3'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_opcode <= _out_bits_reg_T_229;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_param <= 3'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_param <= _out_bits_reg_T_202;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_source <= 4'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_source <= _out_bits_reg_T_175;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_bufIdx <= 3'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_bufIdx <= _out_bits_reg_T_148;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_size <= 3'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_size <= _out_bits_reg_T_121;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_putData <= 1'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_putData <= _out_bits_reg_T_67;
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
  out_bits_reg_tag = _RAND_1[21:0];
  _RAND_2 = {1{`RANDOM}};
  out_bits_reg_set = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  out_bits_reg_off = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  out_bits_reg_opcode = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  out_bits_reg_param = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  out_bits_reg_source = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  out_bits_reg_bufIdx = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  out_bits_reg_size = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  out_bits_reg_putData = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  chosen_reg = _RAND_10[13:0];
  _RAND_11 = {1{`RANDOM}};
  rrGrantMask = _RAND_11[13:0];
  _RAND_12 = {1{`RANDOM}};
  pendingMask = _RAND_12[13:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    out_valid_reg = 1'h0;
  end
  if (reset) begin
    out_bits_reg_tag = 22'h0;
  end
  if (reset) begin
    out_bits_reg_set = 8'h0;
  end
  if (reset) begin
    out_bits_reg_off = 6'h0;
  end
  if (reset) begin
    out_bits_reg_opcode = 3'h0;
  end
  if (reset) begin
    out_bits_reg_param = 3'h0;
  end
  if (reset) begin
    out_bits_reg_source = 4'h0;
  end
  if (reset) begin
    out_bits_reg_bufIdx = 3'h0;
  end
  if (reset) begin
    out_bits_reg_size = 3'h0;
  end
  if (reset) begin
    out_bits_reg_putData = 1'h0;
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

