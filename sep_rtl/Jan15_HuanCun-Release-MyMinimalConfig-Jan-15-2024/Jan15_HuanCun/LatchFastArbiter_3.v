module LatchFastArbiter_3(
  input        clock,
  input        reset,
  output       io_in_0_ready,
  input        io_in_0_valid,
  input  [9:0] io_in_0_bits_sourceId,
  input  [7:0] io_in_0_bits_set,
  input  [2:0] io_in_0_bits_channel,
  input  [2:0] io_in_0_bits_opcode,
  input  [2:0] io_in_0_bits_param,
  input  [2:0] io_in_0_bits_size,
  input  [2:0] io_in_0_bits_way,
  input  [5:0] io_in_0_bits_off,
  input        io_in_0_bits_useBypass,
  input  [2:0] io_in_0_bits_bufIdx,
  input        io_in_0_bits_denied,
  input  [3:0] io_in_0_bits_sinkId,
  input        io_in_0_bits_bypassPut,
  input        io_in_0_bits_dirty,
  output       io_in_1_ready,
  input        io_in_1_valid,
  input  [9:0] io_in_1_bits_sourceId,
  input  [7:0] io_in_1_bits_set,
  input  [2:0] io_in_1_bits_channel,
  input  [2:0] io_in_1_bits_opcode,
  input  [2:0] io_in_1_bits_param,
  input  [2:0] io_in_1_bits_size,
  input  [2:0] io_in_1_bits_way,
  input  [5:0] io_in_1_bits_off,
  input        io_in_1_bits_useBypass,
  input  [2:0] io_in_1_bits_bufIdx,
  input        io_in_1_bits_denied,
  input  [3:0] io_in_1_bits_sinkId,
  input        io_in_1_bits_bypassPut,
  input        io_in_1_bits_dirty,
  output       io_in_2_ready,
  input        io_in_2_valid,
  input  [9:0] io_in_2_bits_sourceId,
  input  [7:0] io_in_2_bits_set,
  input  [2:0] io_in_2_bits_channel,
  input  [2:0] io_in_2_bits_opcode,
  input  [2:0] io_in_2_bits_param,
  input  [2:0] io_in_2_bits_size,
  input  [2:0] io_in_2_bits_way,
  input  [5:0] io_in_2_bits_off,
  input        io_in_2_bits_useBypass,
  input  [2:0] io_in_2_bits_bufIdx,
  input        io_in_2_bits_denied,
  input  [3:0] io_in_2_bits_sinkId,
  input        io_in_2_bits_bypassPut,
  input        io_in_2_bits_dirty,
  output       io_in_3_ready,
  input        io_in_3_valid,
  input  [9:0] io_in_3_bits_sourceId,
  input  [7:0] io_in_3_bits_set,
  input  [2:0] io_in_3_bits_channel,
  input  [2:0] io_in_3_bits_opcode,
  input  [2:0] io_in_3_bits_param,
  input  [2:0] io_in_3_bits_size,
  input  [2:0] io_in_3_bits_way,
  input  [5:0] io_in_3_bits_off,
  input        io_in_3_bits_useBypass,
  input  [2:0] io_in_3_bits_bufIdx,
  input        io_in_3_bits_denied,
  input  [3:0] io_in_3_bits_sinkId,
  input        io_in_3_bits_bypassPut,
  input        io_in_3_bits_dirty,
  output       io_in_4_ready,
  input        io_in_4_valid,
  input  [9:0] io_in_4_bits_sourceId,
  input  [7:0] io_in_4_bits_set,
  input  [2:0] io_in_4_bits_channel,
  input  [2:0] io_in_4_bits_opcode,
  input  [2:0] io_in_4_bits_param,
  input  [2:0] io_in_4_bits_size,
  input  [2:0] io_in_4_bits_way,
  input  [5:0] io_in_4_bits_off,
  input        io_in_4_bits_useBypass,
  input  [2:0] io_in_4_bits_bufIdx,
  input        io_in_4_bits_denied,
  input  [3:0] io_in_4_bits_sinkId,
  input        io_in_4_bits_bypassPut,
  input        io_in_4_bits_dirty,
  output       io_in_5_ready,
  input        io_in_5_valid,
  input  [9:0] io_in_5_bits_sourceId,
  input  [7:0] io_in_5_bits_set,
  input  [2:0] io_in_5_bits_channel,
  input  [2:0] io_in_5_bits_opcode,
  input  [2:0] io_in_5_bits_param,
  input  [2:0] io_in_5_bits_size,
  input  [2:0] io_in_5_bits_way,
  input  [5:0] io_in_5_bits_off,
  input        io_in_5_bits_useBypass,
  input  [2:0] io_in_5_bits_bufIdx,
  input        io_in_5_bits_denied,
  input  [3:0] io_in_5_bits_sinkId,
  input        io_in_5_bits_bypassPut,
  input        io_in_5_bits_dirty,
  output       io_in_6_ready,
  input        io_in_6_valid,
  input  [9:0] io_in_6_bits_sourceId,
  input  [7:0] io_in_6_bits_set,
  input  [2:0] io_in_6_bits_channel,
  input  [2:0] io_in_6_bits_opcode,
  input  [2:0] io_in_6_bits_param,
  input  [2:0] io_in_6_bits_size,
  input  [2:0] io_in_6_bits_way,
  input  [5:0] io_in_6_bits_off,
  input        io_in_6_bits_useBypass,
  input  [2:0] io_in_6_bits_bufIdx,
  input        io_in_6_bits_denied,
  input  [3:0] io_in_6_bits_sinkId,
  input        io_in_6_bits_bypassPut,
  input        io_in_6_bits_dirty,
  output       io_in_7_ready,
  input        io_in_7_valid,
  input  [9:0] io_in_7_bits_sourceId,
  input  [7:0] io_in_7_bits_set,
  input  [2:0] io_in_7_bits_channel,
  input  [2:0] io_in_7_bits_opcode,
  input  [2:0] io_in_7_bits_param,
  input  [2:0] io_in_7_bits_size,
  input  [2:0] io_in_7_bits_way,
  input  [5:0] io_in_7_bits_off,
  input        io_in_7_bits_useBypass,
  input  [2:0] io_in_7_bits_bufIdx,
  input        io_in_7_bits_denied,
  input  [3:0] io_in_7_bits_sinkId,
  input        io_in_7_bits_bypassPut,
  input        io_in_7_bits_dirty,
  output       io_in_8_ready,
  input        io_in_8_valid,
  input  [9:0] io_in_8_bits_sourceId,
  input  [7:0] io_in_8_bits_set,
  input  [2:0] io_in_8_bits_channel,
  input  [2:0] io_in_8_bits_opcode,
  input  [2:0] io_in_8_bits_param,
  input  [2:0] io_in_8_bits_size,
  input  [2:0] io_in_8_bits_way,
  input  [5:0] io_in_8_bits_off,
  input        io_in_8_bits_useBypass,
  input  [2:0] io_in_8_bits_bufIdx,
  input        io_in_8_bits_denied,
  input  [3:0] io_in_8_bits_sinkId,
  input        io_in_8_bits_bypassPut,
  input        io_in_8_bits_dirty,
  output       io_in_9_ready,
  input        io_in_9_valid,
  input  [9:0] io_in_9_bits_sourceId,
  input  [7:0] io_in_9_bits_set,
  input  [2:0] io_in_9_bits_channel,
  input  [2:0] io_in_9_bits_opcode,
  input  [2:0] io_in_9_bits_param,
  input  [2:0] io_in_9_bits_size,
  input  [2:0] io_in_9_bits_way,
  input  [5:0] io_in_9_bits_off,
  input        io_in_9_bits_useBypass,
  input  [2:0] io_in_9_bits_bufIdx,
  input        io_in_9_bits_denied,
  input  [3:0] io_in_9_bits_sinkId,
  input        io_in_9_bits_bypassPut,
  input        io_in_9_bits_dirty,
  output       io_in_10_ready,
  input        io_in_10_valid,
  input  [9:0] io_in_10_bits_sourceId,
  input  [7:0] io_in_10_bits_set,
  input  [2:0] io_in_10_bits_channel,
  input  [2:0] io_in_10_bits_opcode,
  input  [2:0] io_in_10_bits_param,
  input  [2:0] io_in_10_bits_size,
  input  [2:0] io_in_10_bits_way,
  input  [5:0] io_in_10_bits_off,
  input        io_in_10_bits_useBypass,
  input  [2:0] io_in_10_bits_bufIdx,
  input        io_in_10_bits_denied,
  input  [3:0] io_in_10_bits_sinkId,
  input        io_in_10_bits_bypassPut,
  input        io_in_10_bits_dirty,
  output       io_in_11_ready,
  input        io_in_11_valid,
  input  [9:0] io_in_11_bits_sourceId,
  input  [7:0] io_in_11_bits_set,
  input  [2:0] io_in_11_bits_channel,
  input  [2:0] io_in_11_bits_opcode,
  input  [2:0] io_in_11_bits_param,
  input  [2:0] io_in_11_bits_size,
  input  [2:0] io_in_11_bits_way,
  input  [5:0] io_in_11_bits_off,
  input        io_in_11_bits_useBypass,
  input  [2:0] io_in_11_bits_bufIdx,
  input        io_in_11_bits_denied,
  input  [3:0] io_in_11_bits_sinkId,
  input        io_in_11_bits_bypassPut,
  input        io_in_11_bits_dirty,
  output       io_in_12_ready,
  input        io_in_12_valid,
  input  [9:0] io_in_12_bits_sourceId,
  input  [7:0] io_in_12_bits_set,
  input  [2:0] io_in_12_bits_channel,
  input  [2:0] io_in_12_bits_opcode,
  input  [2:0] io_in_12_bits_param,
  input  [2:0] io_in_12_bits_size,
  input  [2:0] io_in_12_bits_way,
  input  [5:0] io_in_12_bits_off,
  input        io_in_12_bits_useBypass,
  input  [2:0] io_in_12_bits_bufIdx,
  input        io_in_12_bits_denied,
  input  [3:0] io_in_12_bits_sinkId,
  input        io_in_12_bits_bypassPut,
  input        io_in_12_bits_dirty,
  output       io_in_13_ready,
  input        io_in_13_valid,
  input  [9:0] io_in_13_bits_sourceId,
  input  [7:0] io_in_13_bits_set,
  input  [2:0] io_in_13_bits_channel,
  input  [2:0] io_in_13_bits_opcode,
  input  [2:0] io_in_13_bits_param,
  input  [2:0] io_in_13_bits_size,
  input  [2:0] io_in_13_bits_way,
  input  [5:0] io_in_13_bits_off,
  input        io_in_13_bits_useBypass,
  input  [2:0] io_in_13_bits_bufIdx,
  input        io_in_13_bits_denied,
  input  [3:0] io_in_13_bits_sinkId,
  input        io_in_13_bits_bypassPut,
  input        io_in_13_bits_dirty,
  input        io_out_ready,
  output       io_out_valid,
  output [9:0] io_out_bits_sourceId,
  output [7:0] io_out_bits_set,
  output [2:0] io_out_bits_channel,
  output [2:0] io_out_bits_opcode,
  output [2:0] io_out_bits_param,
  output [2:0] io_out_bits_size,
  output [2:0] io_out_bits_way,
  output [5:0] io_out_bits_off,
  output       io_out_bits_useBypass,
  output [2:0] io_out_bits_bufIdx,
  output       io_out_bits_denied,
  output [3:0] io_out_bits_sinkId,
  output       io_out_bits_bypassPut,
  output       io_out_bits_dirty
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
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
`endif // RANDOMIZE_REG_INIT
  reg  out_valid_reg; // @[FastArbiter.scala 69:30]
  reg [9:0] out_bits_reg_sourceId; // @[FastArbiter.scala 70:29]
  reg [7:0] out_bits_reg_set; // @[FastArbiter.scala 70:29]
  reg [2:0] out_bits_reg_channel; // @[FastArbiter.scala 70:29]
  reg [2:0] out_bits_reg_opcode; // @[FastArbiter.scala 70:29]
  reg [2:0] out_bits_reg_param; // @[FastArbiter.scala 70:29]
  reg [2:0] out_bits_reg_size; // @[FastArbiter.scala 70:29]
  reg [2:0] out_bits_reg_way; // @[FastArbiter.scala 70:29]
  reg [5:0] out_bits_reg_off; // @[FastArbiter.scala 70:29]
  reg  out_bits_reg_useBypass; // @[FastArbiter.scala 70:29]
  reg [2:0] out_bits_reg_bufIdx; // @[FastArbiter.scala 70:29]
  reg  out_bits_reg_denied; // @[FastArbiter.scala 70:29]
  reg [3:0] out_bits_reg_sinkId; // @[FastArbiter.scala 70:29]
  reg  out_bits_reg_bypassPut; // @[FastArbiter.scala 70:29]
  reg  out_bits_reg_dirty; // @[FastArbiter.scala 70:29]
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
  wire  _out_bits_reg_T_67 = chosenOH[0] & io_in_0_bits_dirty | chosenOH[1] & io_in_1_bits_dirty | chosenOH[2] &
    io_in_2_bits_dirty | chosenOH[3] & io_in_3_bits_dirty | chosenOH[4] & io_in_4_bits_dirty | chosenOH[5] &
    io_in_5_bits_dirty | chosenOH[6] & io_in_6_bits_dirty | chosenOH[7] & io_in_7_bits_dirty | chosenOH[8] &
    io_in_8_bits_dirty | chosenOH[9] & io_in_9_bits_dirty | chosenOH[10] & io_in_10_bits_dirty | chosenOH[11] &
    io_in_11_bits_dirty | chosenOH[12] & io_in_12_bits_dirty | chosenOH[13] & io_in_13_bits_dirty; // @[Mux.scala 27:73]
  wire  _out_bits_reg_T_94 = chosenOH[0] & io_in_0_bits_bypassPut | chosenOH[1] & io_in_1_bits_bypassPut | chosenOH[2]
     & io_in_2_bits_bypassPut | chosenOH[3] & io_in_3_bits_bypassPut | chosenOH[4] & io_in_4_bits_bypassPut | chosenOH[5
    ] & io_in_5_bits_bypassPut | chosenOH[6] & io_in_6_bits_bypassPut | chosenOH[7] & io_in_7_bits_bypassPut | chosenOH[
    8] & io_in_8_bits_bypassPut | chosenOH[9] & io_in_9_bits_bypassPut | chosenOH[10] & io_in_10_bits_bypassPut |
    chosenOH[11] & io_in_11_bits_bypassPut | chosenOH[12] & io_in_12_bits_bypassPut | chosenOH[13] &
    io_in_13_bits_bypassPut; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_95 = chosenOH[0] ? io_in_0_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_96 = chosenOH[1] ? io_in_1_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_97 = chosenOH[2] ? io_in_2_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_98 = chosenOH[3] ? io_in_3_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_99 = chosenOH[4] ? io_in_4_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_100 = chosenOH[5] ? io_in_5_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_101 = chosenOH[6] ? io_in_6_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_102 = chosenOH[7] ? io_in_7_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_103 = chosenOH[8] ? io_in_8_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_104 = chosenOH[9] ? io_in_9_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_105 = chosenOH[10] ? io_in_10_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_106 = chosenOH[11] ? io_in_11_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_107 = chosenOH[12] ? io_in_12_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_108 = chosenOH[13] ? io_in_13_bits_sinkId : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_109 = _out_bits_reg_T_95 | _out_bits_reg_T_96; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_110 = _out_bits_reg_T_109 | _out_bits_reg_T_97; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_111 = _out_bits_reg_T_110 | _out_bits_reg_T_98; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_112 = _out_bits_reg_T_111 | _out_bits_reg_T_99; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_113 = _out_bits_reg_T_112 | _out_bits_reg_T_100; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_114 = _out_bits_reg_T_113 | _out_bits_reg_T_101; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_115 = _out_bits_reg_T_114 | _out_bits_reg_T_102; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_116 = _out_bits_reg_T_115 | _out_bits_reg_T_103; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_117 = _out_bits_reg_T_116 | _out_bits_reg_T_104; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_118 = _out_bits_reg_T_117 | _out_bits_reg_T_105; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_119 = _out_bits_reg_T_118 | _out_bits_reg_T_106; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_120 = _out_bits_reg_T_119 | _out_bits_reg_T_107; // @[Mux.scala 27:73]
  wire [3:0] _out_bits_reg_T_121 = _out_bits_reg_T_120 | _out_bits_reg_T_108; // @[Mux.scala 27:73]
  wire  _out_bits_reg_T_148 = chosenOH[0] & io_in_0_bits_denied | chosenOH[1] & io_in_1_bits_denied | chosenOH[2] &
    io_in_2_bits_denied | chosenOH[3] & io_in_3_bits_denied | chosenOH[4] & io_in_4_bits_denied | chosenOH[5] &
    io_in_5_bits_denied | chosenOH[6] & io_in_6_bits_denied | chosenOH[7] & io_in_7_bits_denied | chosenOH[8] &
    io_in_8_bits_denied | chosenOH[9] & io_in_9_bits_denied | chosenOH[10] & io_in_10_bits_denied | chosenOH[11] &
    io_in_11_bits_denied | chosenOH[12] & io_in_12_bits_denied | chosenOH[13] & io_in_13_bits_denied; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_149 = chosenOH[0] ? io_in_0_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_150 = chosenOH[1] ? io_in_1_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_151 = chosenOH[2] ? io_in_2_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_152 = chosenOH[3] ? io_in_3_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_153 = chosenOH[4] ? io_in_4_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_154 = chosenOH[5] ? io_in_5_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_155 = chosenOH[6] ? io_in_6_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_156 = chosenOH[7] ? io_in_7_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_157 = chosenOH[8] ? io_in_8_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_158 = chosenOH[9] ? io_in_9_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_159 = chosenOH[10] ? io_in_10_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_160 = chosenOH[11] ? io_in_11_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_161 = chosenOH[12] ? io_in_12_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_162 = chosenOH[13] ? io_in_13_bits_bufIdx : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_163 = _out_bits_reg_T_149 | _out_bits_reg_T_150; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_164 = _out_bits_reg_T_163 | _out_bits_reg_T_151; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_165 = _out_bits_reg_T_164 | _out_bits_reg_T_152; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_166 = _out_bits_reg_T_165 | _out_bits_reg_T_153; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_167 = _out_bits_reg_T_166 | _out_bits_reg_T_154; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_168 = _out_bits_reg_T_167 | _out_bits_reg_T_155; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_169 = _out_bits_reg_T_168 | _out_bits_reg_T_156; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_170 = _out_bits_reg_T_169 | _out_bits_reg_T_157; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_171 = _out_bits_reg_T_170 | _out_bits_reg_T_158; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_172 = _out_bits_reg_T_171 | _out_bits_reg_T_159; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_173 = _out_bits_reg_T_172 | _out_bits_reg_T_160; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_174 = _out_bits_reg_T_173 | _out_bits_reg_T_161; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_175 = _out_bits_reg_T_174 | _out_bits_reg_T_162; // @[Mux.scala 27:73]
  wire  _out_bits_reg_T_202 = chosenOH[0] & io_in_0_bits_useBypass | chosenOH[1] & io_in_1_bits_useBypass | chosenOH[2]
     & io_in_2_bits_useBypass | chosenOH[3] & io_in_3_bits_useBypass | chosenOH[4] & io_in_4_bits_useBypass | chosenOH[5
    ] & io_in_5_bits_useBypass | chosenOH[6] & io_in_6_bits_useBypass | chosenOH[7] & io_in_7_bits_useBypass | chosenOH[
    8] & io_in_8_bits_useBypass | chosenOH[9] & io_in_9_bits_useBypass | chosenOH[10] & io_in_10_bits_useBypass |
    chosenOH[11] & io_in_11_bits_useBypass | chosenOH[12] & io_in_12_bits_useBypass | chosenOH[13] &
    io_in_13_bits_useBypass; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_203 = chosenOH[0] ? io_in_0_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_204 = chosenOH[1] ? io_in_1_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_205 = chosenOH[2] ? io_in_2_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_206 = chosenOH[3] ? io_in_3_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_207 = chosenOH[4] ? io_in_4_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_208 = chosenOH[5] ? io_in_5_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_209 = chosenOH[6] ? io_in_6_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_210 = chosenOH[7] ? io_in_7_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_211 = chosenOH[8] ? io_in_8_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_212 = chosenOH[9] ? io_in_9_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_213 = chosenOH[10] ? io_in_10_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_214 = chosenOH[11] ? io_in_11_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_215 = chosenOH[12] ? io_in_12_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_216 = chosenOH[13] ? io_in_13_bits_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_217 = _out_bits_reg_T_203 | _out_bits_reg_T_204; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_218 = _out_bits_reg_T_217 | _out_bits_reg_T_205; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_219 = _out_bits_reg_T_218 | _out_bits_reg_T_206; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_220 = _out_bits_reg_T_219 | _out_bits_reg_T_207; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_221 = _out_bits_reg_T_220 | _out_bits_reg_T_208; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_222 = _out_bits_reg_T_221 | _out_bits_reg_T_209; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_223 = _out_bits_reg_T_222 | _out_bits_reg_T_210; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_224 = _out_bits_reg_T_223 | _out_bits_reg_T_211; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_225 = _out_bits_reg_T_224 | _out_bits_reg_T_212; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_226 = _out_bits_reg_T_225 | _out_bits_reg_T_213; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_227 = _out_bits_reg_T_226 | _out_bits_reg_T_214; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_228 = _out_bits_reg_T_227 | _out_bits_reg_T_215; // @[Mux.scala 27:73]
  wire [5:0] _out_bits_reg_T_229 = _out_bits_reg_T_228 | _out_bits_reg_T_216; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_230 = chosenOH[0] ? io_in_0_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_231 = chosenOH[1] ? io_in_1_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_232 = chosenOH[2] ? io_in_2_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_233 = chosenOH[3] ? io_in_3_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_234 = chosenOH[4] ? io_in_4_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_235 = chosenOH[5] ? io_in_5_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_236 = chosenOH[6] ? io_in_6_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_237 = chosenOH[7] ? io_in_7_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_238 = chosenOH[8] ? io_in_8_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_239 = chosenOH[9] ? io_in_9_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_240 = chosenOH[10] ? io_in_10_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_241 = chosenOH[11] ? io_in_11_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_242 = chosenOH[12] ? io_in_12_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_243 = chosenOH[13] ? io_in_13_bits_way : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_244 = _out_bits_reg_T_230 | _out_bits_reg_T_231; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_245 = _out_bits_reg_T_244 | _out_bits_reg_T_232; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_246 = _out_bits_reg_T_245 | _out_bits_reg_T_233; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_247 = _out_bits_reg_T_246 | _out_bits_reg_T_234; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_248 = _out_bits_reg_T_247 | _out_bits_reg_T_235; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_249 = _out_bits_reg_T_248 | _out_bits_reg_T_236; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_250 = _out_bits_reg_T_249 | _out_bits_reg_T_237; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_251 = _out_bits_reg_T_250 | _out_bits_reg_T_238; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_252 = _out_bits_reg_T_251 | _out_bits_reg_T_239; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_253 = _out_bits_reg_T_252 | _out_bits_reg_T_240; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_254 = _out_bits_reg_T_253 | _out_bits_reg_T_241; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_255 = _out_bits_reg_T_254 | _out_bits_reg_T_242; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_256 = _out_bits_reg_T_255 | _out_bits_reg_T_243; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_257 = chosenOH[0] ? io_in_0_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_258 = chosenOH[1] ? io_in_1_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_259 = chosenOH[2] ? io_in_2_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_260 = chosenOH[3] ? io_in_3_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_261 = chosenOH[4] ? io_in_4_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_262 = chosenOH[5] ? io_in_5_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_263 = chosenOH[6] ? io_in_6_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_264 = chosenOH[7] ? io_in_7_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_265 = chosenOH[8] ? io_in_8_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_266 = chosenOH[9] ? io_in_9_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_267 = chosenOH[10] ? io_in_10_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_268 = chosenOH[11] ? io_in_11_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_269 = chosenOH[12] ? io_in_12_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_270 = chosenOH[13] ? io_in_13_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_271 = _out_bits_reg_T_257 | _out_bits_reg_T_258; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_272 = _out_bits_reg_T_271 | _out_bits_reg_T_259; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_273 = _out_bits_reg_T_272 | _out_bits_reg_T_260; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_274 = _out_bits_reg_T_273 | _out_bits_reg_T_261; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_275 = _out_bits_reg_T_274 | _out_bits_reg_T_262; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_276 = _out_bits_reg_T_275 | _out_bits_reg_T_263; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_277 = _out_bits_reg_T_276 | _out_bits_reg_T_264; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_278 = _out_bits_reg_T_277 | _out_bits_reg_T_265; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_279 = _out_bits_reg_T_278 | _out_bits_reg_T_266; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_280 = _out_bits_reg_T_279 | _out_bits_reg_T_267; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_281 = _out_bits_reg_T_280 | _out_bits_reg_T_268; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_282 = _out_bits_reg_T_281 | _out_bits_reg_T_269; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_283 = _out_bits_reg_T_282 | _out_bits_reg_T_270; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_284 = chosenOH[0] ? io_in_0_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_285 = chosenOH[1] ? io_in_1_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_286 = chosenOH[2] ? io_in_2_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_287 = chosenOH[3] ? io_in_3_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_288 = chosenOH[4] ? io_in_4_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_289 = chosenOH[5] ? io_in_5_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_290 = chosenOH[6] ? io_in_6_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_291 = chosenOH[7] ? io_in_7_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_292 = chosenOH[8] ? io_in_8_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_293 = chosenOH[9] ? io_in_9_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_294 = chosenOH[10] ? io_in_10_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_295 = chosenOH[11] ? io_in_11_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_296 = chosenOH[12] ? io_in_12_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_297 = chosenOH[13] ? io_in_13_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_298 = _out_bits_reg_T_284 | _out_bits_reg_T_285; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_299 = _out_bits_reg_T_298 | _out_bits_reg_T_286; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_300 = _out_bits_reg_T_299 | _out_bits_reg_T_287; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_301 = _out_bits_reg_T_300 | _out_bits_reg_T_288; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_302 = _out_bits_reg_T_301 | _out_bits_reg_T_289; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_303 = _out_bits_reg_T_302 | _out_bits_reg_T_290; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_304 = _out_bits_reg_T_303 | _out_bits_reg_T_291; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_305 = _out_bits_reg_T_304 | _out_bits_reg_T_292; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_306 = _out_bits_reg_T_305 | _out_bits_reg_T_293; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_307 = _out_bits_reg_T_306 | _out_bits_reg_T_294; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_308 = _out_bits_reg_T_307 | _out_bits_reg_T_295; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_309 = _out_bits_reg_T_308 | _out_bits_reg_T_296; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_310 = _out_bits_reg_T_309 | _out_bits_reg_T_297; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_311 = chosenOH[0] ? io_in_0_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_312 = chosenOH[1] ? io_in_1_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_313 = chosenOH[2] ? io_in_2_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_314 = chosenOH[3] ? io_in_3_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_315 = chosenOH[4] ? io_in_4_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_316 = chosenOH[5] ? io_in_5_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_317 = chosenOH[6] ? io_in_6_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_318 = chosenOH[7] ? io_in_7_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_319 = chosenOH[8] ? io_in_8_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_320 = chosenOH[9] ? io_in_9_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_321 = chosenOH[10] ? io_in_10_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_322 = chosenOH[11] ? io_in_11_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_323 = chosenOH[12] ? io_in_12_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_324 = chosenOH[13] ? io_in_13_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_325 = _out_bits_reg_T_311 | _out_bits_reg_T_312; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_326 = _out_bits_reg_T_325 | _out_bits_reg_T_313; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_327 = _out_bits_reg_T_326 | _out_bits_reg_T_314; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_328 = _out_bits_reg_T_327 | _out_bits_reg_T_315; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_329 = _out_bits_reg_T_328 | _out_bits_reg_T_316; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_330 = _out_bits_reg_T_329 | _out_bits_reg_T_317; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_331 = _out_bits_reg_T_330 | _out_bits_reg_T_318; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_332 = _out_bits_reg_T_331 | _out_bits_reg_T_319; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_333 = _out_bits_reg_T_332 | _out_bits_reg_T_320; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_334 = _out_bits_reg_T_333 | _out_bits_reg_T_321; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_335 = _out_bits_reg_T_334 | _out_bits_reg_T_322; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_336 = _out_bits_reg_T_335 | _out_bits_reg_T_323; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_337 = _out_bits_reg_T_336 | _out_bits_reg_T_324; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_338 = chosenOH[0] ? io_in_0_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_339 = chosenOH[1] ? io_in_1_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_340 = chosenOH[2] ? io_in_2_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_341 = chosenOH[3] ? io_in_3_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_342 = chosenOH[4] ? io_in_4_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_343 = chosenOH[5] ? io_in_5_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_344 = chosenOH[6] ? io_in_6_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_345 = chosenOH[7] ? io_in_7_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_346 = chosenOH[8] ? io_in_8_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_347 = chosenOH[9] ? io_in_9_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_348 = chosenOH[10] ? io_in_10_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_349 = chosenOH[11] ? io_in_11_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_350 = chosenOH[12] ? io_in_12_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_351 = chosenOH[13] ? io_in_13_bits_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_352 = _out_bits_reg_T_338 | _out_bits_reg_T_339; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_353 = _out_bits_reg_T_352 | _out_bits_reg_T_340; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_354 = _out_bits_reg_T_353 | _out_bits_reg_T_341; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_355 = _out_bits_reg_T_354 | _out_bits_reg_T_342; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_356 = _out_bits_reg_T_355 | _out_bits_reg_T_343; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_357 = _out_bits_reg_T_356 | _out_bits_reg_T_344; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_358 = _out_bits_reg_T_357 | _out_bits_reg_T_345; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_359 = _out_bits_reg_T_358 | _out_bits_reg_T_346; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_360 = _out_bits_reg_T_359 | _out_bits_reg_T_347; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_361 = _out_bits_reg_T_360 | _out_bits_reg_T_348; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_362 = _out_bits_reg_T_361 | _out_bits_reg_T_349; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_363 = _out_bits_reg_T_362 | _out_bits_reg_T_350; // @[Mux.scala 27:73]
  wire [2:0] _out_bits_reg_T_364 = _out_bits_reg_T_363 | _out_bits_reg_T_351; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_392 = chosenOH[0] ? io_in_0_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_393 = chosenOH[1] ? io_in_1_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_394 = chosenOH[2] ? io_in_2_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_395 = chosenOH[3] ? io_in_3_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_396 = chosenOH[4] ? io_in_4_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_397 = chosenOH[5] ? io_in_5_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_398 = chosenOH[6] ? io_in_6_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_399 = chosenOH[7] ? io_in_7_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_400 = chosenOH[8] ? io_in_8_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_401 = chosenOH[9] ? io_in_9_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_402 = chosenOH[10] ? io_in_10_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_403 = chosenOH[11] ? io_in_11_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_404 = chosenOH[12] ? io_in_12_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_405 = chosenOH[13] ? io_in_13_bits_set : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_406 = _out_bits_reg_T_392 | _out_bits_reg_T_393; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_407 = _out_bits_reg_T_406 | _out_bits_reg_T_394; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_408 = _out_bits_reg_T_407 | _out_bits_reg_T_395; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_409 = _out_bits_reg_T_408 | _out_bits_reg_T_396; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_410 = _out_bits_reg_T_409 | _out_bits_reg_T_397; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_411 = _out_bits_reg_T_410 | _out_bits_reg_T_398; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_412 = _out_bits_reg_T_411 | _out_bits_reg_T_399; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_413 = _out_bits_reg_T_412 | _out_bits_reg_T_400; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_414 = _out_bits_reg_T_413 | _out_bits_reg_T_401; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_415 = _out_bits_reg_T_414 | _out_bits_reg_T_402; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_416 = _out_bits_reg_T_415 | _out_bits_reg_T_403; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_417 = _out_bits_reg_T_416 | _out_bits_reg_T_404; // @[Mux.scala 27:73]
  wire [7:0] _out_bits_reg_T_418 = _out_bits_reg_T_417 | _out_bits_reg_T_405; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_419 = chosenOH[0] ? io_in_0_bits_sourceId : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_420 = chosenOH[1] ? io_in_1_bits_sourceId : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_421 = chosenOH[2] ? io_in_2_bits_sourceId : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_422 = chosenOH[3] ? io_in_3_bits_sourceId : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_423 = chosenOH[4] ? io_in_4_bits_sourceId : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_424 = chosenOH[5] ? io_in_5_bits_sourceId : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_425 = chosenOH[6] ? io_in_6_bits_sourceId : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_426 = chosenOH[7] ? io_in_7_bits_sourceId : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_427 = chosenOH[8] ? io_in_8_bits_sourceId : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_428 = chosenOH[9] ? io_in_9_bits_sourceId : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_429 = chosenOH[10] ? io_in_10_bits_sourceId : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_430 = chosenOH[11] ? io_in_11_bits_sourceId : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_431 = chosenOH[12] ? io_in_12_bits_sourceId : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_432 = chosenOH[13] ? io_in_13_bits_sourceId : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_433 = _out_bits_reg_T_419 | _out_bits_reg_T_420; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_434 = _out_bits_reg_T_433 | _out_bits_reg_T_421; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_435 = _out_bits_reg_T_434 | _out_bits_reg_T_422; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_436 = _out_bits_reg_T_435 | _out_bits_reg_T_423; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_437 = _out_bits_reg_T_436 | _out_bits_reg_T_424; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_438 = _out_bits_reg_T_437 | _out_bits_reg_T_425; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_439 = _out_bits_reg_T_438 | _out_bits_reg_T_426; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_440 = _out_bits_reg_T_439 | _out_bits_reg_T_427; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_441 = _out_bits_reg_T_440 | _out_bits_reg_T_428; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_442 = _out_bits_reg_T_441 | _out_bits_reg_T_429; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_443 = _out_bits_reg_T_442 | _out_bits_reg_T_430; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_444 = _out_bits_reg_T_443 | _out_bits_reg_T_431; // @[Mux.scala 27:73]
  wire [9:0] _out_bits_reg_T_445 = _out_bits_reg_T_444 | _out_bits_reg_T_432; // @[Mux.scala 27:73]
  wire  _GEN_2 = latch_result | out_valid_reg; // @[FastArbiter.scala 90:22 91:19 69:30]
  wire  _T = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire [5:0] io_out_valid_hi = chosen_reg[13:8]; // @[OneHot.scala 30:18]
  wire [7:0] io_out_valid_lo = chosen_reg[7:0]; // @[OneHot.scala 31:18]
  wire  _io_out_valid_T = |io_out_valid_hi; // @[OneHot.scala 32:14]
  wire [7:0] _GEN_21 = {{2'd0}, io_out_valid_hi}; // @[OneHot.scala 32:28]
  wire [7:0] _io_out_valid_T_1 = _GEN_21 | io_out_valid_lo; // @[OneHot.scala 32:28]
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
  assign io_out_bits_sourceId = out_bits_reg_sourceId; // @[FastArbiter.scala 104:15]
  assign io_out_bits_set = out_bits_reg_set; // @[FastArbiter.scala 104:15]
  assign io_out_bits_channel = out_bits_reg_channel; // @[FastArbiter.scala 104:15]
  assign io_out_bits_opcode = out_bits_reg_opcode; // @[FastArbiter.scala 104:15]
  assign io_out_bits_param = out_bits_reg_param; // @[FastArbiter.scala 104:15]
  assign io_out_bits_size = out_bits_reg_size; // @[FastArbiter.scala 104:15]
  assign io_out_bits_way = out_bits_reg_way; // @[FastArbiter.scala 104:15]
  assign io_out_bits_off = out_bits_reg_off; // @[FastArbiter.scala 104:15]
  assign io_out_bits_useBypass = out_bits_reg_useBypass; // @[FastArbiter.scala 104:15]
  assign io_out_bits_bufIdx = out_bits_reg_bufIdx; // @[FastArbiter.scala 104:15]
  assign io_out_bits_denied = out_bits_reg_denied; // @[FastArbiter.scala 104:15]
  assign io_out_bits_sinkId = out_bits_reg_sinkId; // @[FastArbiter.scala 104:15]
  assign io_out_bits_bypassPut = out_bits_reg_bypassPut; // @[FastArbiter.scala 104:15]
  assign io_out_bits_dirty = out_bits_reg_dirty; // @[FastArbiter.scala 104:15]
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
      out_bits_reg_sourceId <= 10'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_sourceId <= _out_bits_reg_T_445;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_set <= 8'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_set <= _out_bits_reg_T_418;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_channel <= 3'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_channel <= _out_bits_reg_T_364;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_opcode <= 3'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_opcode <= _out_bits_reg_T_337;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_param <= 3'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_param <= _out_bits_reg_T_310;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_size <= 3'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_size <= _out_bits_reg_T_283;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_way <= 3'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_way <= _out_bits_reg_T_256;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_off <= 6'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_off <= _out_bits_reg_T_229;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_useBypass <= 1'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_useBypass <= _out_bits_reg_T_202;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_bufIdx <= 3'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_bufIdx <= _out_bits_reg_T_175;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_denied <= 1'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_denied <= _out_bits_reg_T_148;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_sinkId <= 4'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_sinkId <= _out_bits_reg_T_121;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_bypassPut <= 1'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_bypassPut <= _out_bits_reg_T_94;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FastArbiter.scala 90:22]
      out_bits_reg_dirty <= 1'h0; // @[FastArbiter.scala 92:18]
    end else if (latch_result) begin // @[FastArbiter.scala 70:29]
      out_bits_reg_dirty <= _out_bits_reg_T_67;
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
  out_bits_reg_sourceId = _RAND_1[9:0];
  _RAND_2 = {1{`RANDOM}};
  out_bits_reg_set = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  out_bits_reg_channel = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  out_bits_reg_opcode = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  out_bits_reg_param = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  out_bits_reg_size = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  out_bits_reg_way = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  out_bits_reg_off = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  out_bits_reg_useBypass = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  out_bits_reg_bufIdx = _RAND_10[2:0];
  _RAND_11 = {1{`RANDOM}};
  out_bits_reg_denied = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  out_bits_reg_sinkId = _RAND_12[3:0];
  _RAND_13 = {1{`RANDOM}};
  out_bits_reg_bypassPut = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  out_bits_reg_dirty = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  chosen_reg = _RAND_15[13:0];
  _RAND_16 = {1{`RANDOM}};
  rrGrantMask = _RAND_16[13:0];
  _RAND_17 = {1{`RANDOM}};
  pendingMask = _RAND_17[13:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    out_valid_reg = 1'h0;
  end
  if (reset) begin
    out_bits_reg_sourceId = 10'h0;
  end
  if (reset) begin
    out_bits_reg_set = 8'h0;
  end
  if (reset) begin
    out_bits_reg_channel = 3'h0;
  end
  if (reset) begin
    out_bits_reg_opcode = 3'h0;
  end
  if (reset) begin
    out_bits_reg_param = 3'h0;
  end
  if (reset) begin
    out_bits_reg_size = 3'h0;
  end
  if (reset) begin
    out_bits_reg_way = 3'h0;
  end
  if (reset) begin
    out_bits_reg_off = 6'h0;
  end
  if (reset) begin
    out_bits_reg_useBypass = 1'h0;
  end
  if (reset) begin
    out_bits_reg_bufIdx = 3'h0;
  end
  if (reset) begin
    out_bits_reg_denied = 1'h0;
  end
  if (reset) begin
    out_bits_reg_sinkId = 4'h0;
  end
  if (reset) begin
    out_bits_reg_bypassPut = 1'h0;
  end
  if (reset) begin
    out_bits_reg_dirty = 1'h0;
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

