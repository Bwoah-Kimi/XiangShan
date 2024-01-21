module SelectPolicy_4(
  input         clock,
  input         reset,
  input  [15:0] io_validVec,
  output [15:0] io_allocate_0_bits,
  output [15:0] io_allocate_1_bits,
  input  [15:0] io_request,
  output        io_grant_0_valid,
  output [15:0] io_grant_0_bits,
  output        io_grant_1_valid,
  output [15:0] io_grant_1_bits,
  input         io_balance_tick,
  output        io_balance_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  emptyVec_0 = ~io_validVec[0]; // @[SelectPolicy.scala 44:55]
  wire  emptyVec_1 = ~io_validVec[1]; // @[SelectPolicy.scala 44:55]
  wire  emptyVec_2 = ~io_validVec[2]; // @[SelectPolicy.scala 44:55]
  wire  emptyVec_3 = ~io_validVec[3]; // @[SelectPolicy.scala 44:55]
  wire  emptyVec_4 = ~io_validVec[4]; // @[SelectPolicy.scala 44:55]
  wire  emptyVec_5 = ~io_validVec[5]; // @[SelectPolicy.scala 44:55]
  wire  emptyVec_6 = ~io_validVec[6]; // @[SelectPolicy.scala 44:55]
  wire  emptyVec_7 = ~io_validVec[7]; // @[SelectPolicy.scala 44:55]
  wire  emptyVec_8 = ~io_validVec[8]; // @[SelectPolicy.scala 44:55]
  wire  emptyVec_9 = ~io_validVec[9]; // @[SelectPolicy.scala 44:55]
  wire  emptyVec_10 = ~io_validVec[10]; // @[SelectPolicy.scala 44:55]
  wire  emptyVec_11 = ~io_validVec[11]; // @[SelectPolicy.scala 44:55]
  wire  emptyVec_12 = ~io_validVec[12]; // @[SelectPolicy.scala 44:55]
  wire  emptyVec_13 = ~io_validVec[13]; // @[SelectPolicy.scala 44:55]
  wire  emptyVec_14 = ~io_validVec[14]; // @[SelectPolicy.scala 44:55]
  wire  emptyVec_15 = ~io_validVec[15]; // @[SelectPolicy.scala 44:55]
  wire  matrix__1_0 = ~(|emptyVec_7); // @[BitUtils.scala 258:50]
  wire [1:0] _matrix_2_0_T = {emptyVec_7,emptyVec_6}; // @[Cat.scala 31:58]
  wire  matrix__2_0 = ~(|_matrix_2_0_T); // @[BitUtils.scala 258:50]
  wire [2:0] _matrix_3_0_T = {emptyVec_7,emptyVec_6,emptyVec_5}; // @[Cat.scala 31:58]
  wire  matrix__3_0 = ~(|_matrix_3_0_T); // @[BitUtils.scala 258:50]
  wire [3:0] _matrix_4_0_T = {emptyVec_7,emptyVec_6,emptyVec_5,emptyVec_4}; // @[Cat.scala 31:58]
  wire  matrix__4_0 = ~(|_matrix_4_0_T); // @[BitUtils.scala 258:50]
  wire [4:0] _matrix_5_0_T = {emptyVec_7,emptyVec_6,emptyVec_5,emptyVec_4,emptyVec_3}; // @[Cat.scala 31:58]
  wire  matrix__5_0 = ~(|_matrix_5_0_T); // @[BitUtils.scala 258:50]
  wire [5:0] _matrix_6_0_T = {emptyVec_7,emptyVec_6,emptyVec_5,emptyVec_4,emptyVec_3,emptyVec_2}; // @[Cat.scala 31:58]
  wire  matrix__6_0 = ~(|_matrix_6_0_T); // @[BitUtils.scala 258:50]
  wire [6:0] _matrix_7_0_T = {emptyVec_7,emptyVec_6,emptyVec_5,emptyVec_4,emptyVec_3,emptyVec_2,emptyVec_1}; // @[Cat.scala 31:58]
  wire  matrix__7_0 = ~(|_matrix_7_0_T); // @[BitUtils.scala 258:50]
  wire [7:0] _matrix_8_0_T = {emptyVec_7,emptyVec_6,emptyVec_5,emptyVec_4,emptyVec_3,emptyVec_2,emptyVec_1,emptyVec_0}; // @[Cat.scala 31:58]
  wire  matrix__8_0 = ~(|_matrix_8_0_T); // @[BitUtils.scala 258:50]
  wire [8:0] _matrix_9_0_T = {emptyVec_7,emptyVec_6,emptyVec_5,emptyVec_4,emptyVec_3,emptyVec_2,emptyVec_1,emptyVec_0,
    emptyVec_15}; // @[Cat.scala 31:58]
  wire  matrix__9_0 = ~(|_matrix_9_0_T); // @[BitUtils.scala 258:50]
  wire [9:0] _matrix_10_0_T = {emptyVec_7,emptyVec_6,emptyVec_5,emptyVec_4,emptyVec_3,emptyVec_2,emptyVec_1,emptyVec_0,
    emptyVec_15,emptyVec_14}; // @[Cat.scala 31:58]
  wire  matrix__10_0 = ~(|_matrix_10_0_T); // @[BitUtils.scala 258:50]
  wire [4:0] matrix_11_0_lo = {emptyVec_1,emptyVec_0,emptyVec_15,emptyVec_14,emptyVec_13}; // @[Cat.scala 31:58]
  wire [10:0] _matrix_11_0_T = {emptyVec_7,emptyVec_6,emptyVec_5,emptyVec_4,emptyVec_3,emptyVec_2,matrix_11_0_lo}; // @[Cat.scala 31:58]
  wire  matrix__11_0 = ~(|_matrix_11_0_T); // @[BitUtils.scala 258:50]
  wire [5:0] matrix_12_0_lo = {emptyVec_1,emptyVec_0,emptyVec_15,emptyVec_14,emptyVec_13,emptyVec_12}; // @[Cat.scala 31:58]
  wire [11:0] _matrix_12_0_T = {emptyVec_7,emptyVec_6,emptyVec_5,emptyVec_4,emptyVec_3,emptyVec_2,matrix_12_0_lo}; // @[Cat.scala 31:58]
  wire  matrix__12_0 = ~(|_matrix_12_0_T); // @[BitUtils.scala 258:50]
  wire [5:0] matrix_13_0_lo = {emptyVec_0,emptyVec_15,emptyVec_14,emptyVec_13,emptyVec_12,emptyVec_11}; // @[Cat.scala 31:58]
  wire [12:0] _matrix_13_0_T = {emptyVec_7,emptyVec_6,emptyVec_5,emptyVec_4,emptyVec_3,emptyVec_2,emptyVec_1,
    matrix_13_0_lo}; // @[Cat.scala 31:58]
  wire  matrix__13_0 = ~(|_matrix_13_0_T); // @[BitUtils.scala 258:50]
  wire [6:0] matrix_14_0_lo = {emptyVec_0,emptyVec_15,emptyVec_14,emptyVec_13,emptyVec_12,emptyVec_11,emptyVec_10}; // @[Cat.scala 31:58]
  wire [13:0] _matrix_14_0_T = {emptyVec_7,emptyVec_6,emptyVec_5,emptyVec_4,emptyVec_3,emptyVec_2,emptyVec_1,
    matrix_14_0_lo}; // @[Cat.scala 31:58]
  wire  matrix__14_0 = ~(|_matrix_14_0_T); // @[BitUtils.scala 258:50]
  wire [6:0] matrix_15_0_lo = {emptyVec_15,emptyVec_14,emptyVec_13,emptyVec_12,emptyVec_11,emptyVec_10,emptyVec_9}; // @[Cat.scala 31:58]
  wire [14:0] _matrix_15_0_T = {emptyVec_7,emptyVec_6,emptyVec_5,emptyVec_4,emptyVec_3,emptyVec_2,emptyVec_1,emptyVec_0,
    matrix_15_0_lo}; // @[Cat.scala 31:58]
  wire  matrix__15_0 = ~(|_matrix_15_0_T); // @[BitUtils.scala 258:50]
  wire  matrix_1_1_0 = ~(|emptyVec_8); // @[BitUtils.scala 258:50]
  wire [1:0] _matrix_2_0_T_3 = {emptyVec_8,emptyVec_9}; // @[Cat.scala 31:58]
  wire  matrix_1_2_0 = ~(|_matrix_2_0_T_3); // @[BitUtils.scala 258:50]
  wire [2:0] _matrix_3_0_T_3 = {emptyVec_8,emptyVec_9,emptyVec_10}; // @[Cat.scala 31:58]
  wire  matrix_1_3_0 = ~(|_matrix_3_0_T_3); // @[BitUtils.scala 258:50]
  wire [3:0] _matrix_4_0_T_3 = {emptyVec_8,emptyVec_9,emptyVec_10,emptyVec_11}; // @[Cat.scala 31:58]
  wire  matrix_1_4_0 = ~(|_matrix_4_0_T_3); // @[BitUtils.scala 258:50]
  wire [4:0] _matrix_5_0_T_3 = {emptyVec_8,emptyVec_9,emptyVec_10,emptyVec_11,emptyVec_12}; // @[Cat.scala 31:58]
  wire  matrix_1_5_0 = ~(|_matrix_5_0_T_3); // @[BitUtils.scala 258:50]
  wire [5:0] _matrix_6_0_T_3 = {emptyVec_8,emptyVec_9,emptyVec_10,emptyVec_11,emptyVec_12,emptyVec_13}; // @[Cat.scala 31:58]
  wire  matrix_1_6_0 = ~(|_matrix_6_0_T_3); // @[BitUtils.scala 258:50]
  wire [6:0] _matrix_7_0_T_3 = {emptyVec_8,emptyVec_9,emptyVec_10,emptyVec_11,emptyVec_12,emptyVec_13,emptyVec_14}; // @[Cat.scala 31:58]
  wire  matrix_1_7_0 = ~(|_matrix_7_0_T_3); // @[BitUtils.scala 258:50]
  wire [7:0] _matrix_8_0_T_3 = {emptyVec_8,emptyVec_9,emptyVec_10,emptyVec_11,emptyVec_12,emptyVec_13,emptyVec_14,
    emptyVec_15}; // @[Cat.scala 31:58]
  wire  matrix_1_8_0 = ~(|_matrix_8_0_T_3); // @[BitUtils.scala 258:50]
  wire [8:0] _matrix_9_0_T_3 = {emptyVec_8,emptyVec_9,emptyVec_10,emptyVec_11,emptyVec_12,emptyVec_13,emptyVec_14,
    emptyVec_15,emptyVec_0}; // @[Cat.scala 31:58]
  wire  matrix_1_9_0 = ~(|_matrix_9_0_T_3); // @[BitUtils.scala 258:50]
  wire [9:0] _matrix_10_0_T_3 = {emptyVec_8,emptyVec_9,emptyVec_10,emptyVec_11,emptyVec_12,emptyVec_13,emptyVec_14,
    emptyVec_15,emptyVec_0,emptyVec_1}; // @[Cat.scala 31:58]
  wire  matrix_1_10_0 = ~(|_matrix_10_0_T_3); // @[BitUtils.scala 258:50]
  wire [4:0] matrix_11_0_lo_1 = {emptyVec_14,emptyVec_15,emptyVec_0,emptyVec_1,emptyVec_2}; // @[Cat.scala 31:58]
  wire [10:0] _matrix_11_0_T_3 = {emptyVec_8,emptyVec_9,emptyVec_10,emptyVec_11,emptyVec_12,emptyVec_13,matrix_11_0_lo_1
    }; // @[Cat.scala 31:58]
  wire  matrix_1_11_0 = ~(|_matrix_11_0_T_3); // @[BitUtils.scala 258:50]
  wire [5:0] matrix_12_0_lo_1 = {emptyVec_14,emptyVec_15,emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3}; // @[Cat.scala 31:58]
  wire [11:0] _matrix_12_0_T_3 = {emptyVec_8,emptyVec_9,emptyVec_10,emptyVec_11,emptyVec_12,emptyVec_13,matrix_12_0_lo_1
    }; // @[Cat.scala 31:58]
  wire  matrix_1_12_0 = ~(|_matrix_12_0_T_3); // @[BitUtils.scala 258:50]
  wire [5:0] matrix_13_0_lo_1 = {emptyVec_15,emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4}; // @[Cat.scala 31:58]
  wire [12:0] _matrix_13_0_T_3 = {emptyVec_8,emptyVec_9,emptyVec_10,emptyVec_11,emptyVec_12,emptyVec_13,emptyVec_14,
    matrix_13_0_lo_1}; // @[Cat.scala 31:58]
  wire  matrix_1_13_0 = ~(|_matrix_13_0_T_3); // @[BitUtils.scala 258:50]
  wire [6:0] matrix_14_0_lo_1 = {emptyVec_15,emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5}; // @[Cat.scala 31:58]
  wire [13:0] _matrix_14_0_T_3 = {emptyVec_8,emptyVec_9,emptyVec_10,emptyVec_11,emptyVec_12,emptyVec_13,emptyVec_14,
    matrix_14_0_lo_1}; // @[Cat.scala 31:58]
  wire  matrix_1_14_0 = ~(|_matrix_14_0_T_3); // @[BitUtils.scala 258:50]
  wire [6:0] matrix_15_0_lo_1 = {emptyVec_0,emptyVec_1,emptyVec_2,emptyVec_3,emptyVec_4,emptyVec_5,emptyVec_6}; // @[Cat.scala 31:58]
  wire [14:0] _matrix_15_0_T_3 = {emptyVec_8,emptyVec_9,emptyVec_10,emptyVec_11,emptyVec_12,emptyVec_13,emptyVec_14,
    emptyVec_15,matrix_15_0_lo_1}; // @[Cat.scala 31:58]
  wire  matrix_1_15_0 = ~(|_matrix_15_0_T_3); // @[BitUtils.scala 258:50]
  wire  sel__1 = emptyVec_6 & matrix__1_0; // @[BitUtils.scala 275:62]
  wire  sel__2 = emptyVec_5 & matrix__2_0; // @[BitUtils.scala 275:62]
  wire  sel__3 = emptyVec_4 & matrix__3_0; // @[BitUtils.scala 275:62]
  wire  sel__4 = emptyVec_3 & matrix__4_0; // @[BitUtils.scala 275:62]
  wire  sel__5 = emptyVec_2 & matrix__5_0; // @[BitUtils.scala 275:62]
  wire  sel__6 = emptyVec_1 & matrix__6_0; // @[BitUtils.scala 275:62]
  wire  sel__7 = emptyVec_0 & matrix__7_0; // @[BitUtils.scala 275:62]
  wire  sel__8 = emptyVec_15 & matrix__8_0; // @[BitUtils.scala 275:62]
  wire  sel__9 = emptyVec_14 & matrix__9_0; // @[BitUtils.scala 275:62]
  wire  sel__10 = emptyVec_13 & matrix__10_0; // @[BitUtils.scala 275:62]
  wire  sel__11 = emptyVec_12 & matrix__11_0; // @[BitUtils.scala 275:62]
  wire  sel__12 = emptyVec_11 & matrix__12_0; // @[BitUtils.scala 275:62]
  wire  sel__13 = emptyVec_10 & matrix__13_0; // @[BitUtils.scala 275:62]
  wire  sel__14 = emptyVec_9 & matrix__14_0; // @[BitUtils.scala 275:62]
  wire  sel__15 = emptyVec_8 & matrix__15_0; // @[BitUtils.scala 275:62]
  wire [7:0] io_allocate_0_bits_lo = {emptyVec_7,sel__1,sel__2,sel__3,sel__4,sel__5,sel__6,sel__7}; // @[SelectPolicy.scala 49:35]
  wire [7:0] io_allocate_0_bits_hi = {sel__8,sel__9,sel__10,sel__11,sel__12,sel__13,sel__14,sel__15}; // @[SelectPolicy.scala 49:35]
  wire  sel_1_1 = emptyVec_9 & matrix_1_1_0; // @[BitUtils.scala 275:62]
  wire  sel_1_2 = emptyVec_10 & matrix_1_2_0; // @[BitUtils.scala 275:62]
  wire  sel_1_3 = emptyVec_11 & matrix_1_3_0; // @[BitUtils.scala 275:62]
  wire  sel_1_4 = emptyVec_12 & matrix_1_4_0; // @[BitUtils.scala 275:62]
  wire  sel_1_5 = emptyVec_13 & matrix_1_5_0; // @[BitUtils.scala 275:62]
  wire  sel_1_6 = emptyVec_14 & matrix_1_6_0; // @[BitUtils.scala 275:62]
  wire  sel_1_7 = emptyVec_15 & matrix_1_7_0; // @[BitUtils.scala 275:62]
  wire  sel_1_8 = emptyVec_0 & matrix_1_8_0; // @[BitUtils.scala 275:62]
  wire  sel_1_9 = emptyVec_1 & matrix_1_9_0; // @[BitUtils.scala 275:62]
  wire  sel_1_10 = emptyVec_2 & matrix_1_10_0; // @[BitUtils.scala 275:62]
  wire  sel_1_11 = emptyVec_3 & matrix_1_11_0; // @[BitUtils.scala 275:62]
  wire  sel_1_12 = emptyVec_4 & matrix_1_12_0; // @[BitUtils.scala 275:62]
  wire  sel_1_13 = emptyVec_5 & matrix_1_13_0; // @[BitUtils.scala 275:62]
  wire  sel_1_14 = emptyVec_6 & matrix_1_14_0; // @[BitUtils.scala 275:62]
  wire  sel_1_15 = emptyVec_7 & matrix_1_15_0; // @[BitUtils.scala 275:62]
  wire [7:0] io_allocate_1_bits_lo = {sel_1_15,sel_1_14,sel_1_13,sel_1_12,sel_1_11,sel_1_10,sel_1_9,sel_1_8}; // @[SelectPolicy.scala 49:35]
  wire [7:0] io_allocate_1_bits_hi = {sel_1_7,sel_1_6,sel_1_5,sel_1_4,sel_1_3,sel_1_2,sel_1_1,emptyVec_8}; // @[SelectPolicy.scala 49:35]
  wire  request_0 = io_request[0]; // @[SelectPolicy.scala 57:28]
  wire  request_1 = io_request[1]; // @[SelectPolicy.scala 57:28]
  wire  request_2 = io_request[2]; // @[SelectPolicy.scala 57:28]
  wire  request_3 = io_request[3]; // @[SelectPolicy.scala 57:28]
  wire  request_4 = io_request[4]; // @[SelectPolicy.scala 57:28]
  wire  request_5 = io_request[5]; // @[SelectPolicy.scala 57:28]
  wire  request_6 = io_request[6]; // @[SelectPolicy.scala 57:28]
  wire  request_7 = io_request[7]; // @[SelectPolicy.scala 57:28]
  wire  request_8 = io_request[8]; // @[SelectPolicy.scala 57:28]
  wire  request_9 = io_request[9]; // @[SelectPolicy.scala 57:28]
  wire  request_10 = io_request[10]; // @[SelectPolicy.scala 57:28]
  wire  request_11 = io_request[11]; // @[SelectPolicy.scala 57:28]
  wire  request_12 = io_request[12]; // @[SelectPolicy.scala 57:28]
  wire  request_13 = io_request[13]; // @[SelectPolicy.scala 57:28]
  wire  request_14 = io_request[14]; // @[SelectPolicy.scala 57:28]
  wire  request_15 = io_request[15]; // @[SelectPolicy.scala 57:28]
  wire  matrix_2_1_0 = ~(|request_0); // @[BitUtils.scala 258:50]
  wire [1:0] _matrix_2_0_T_6 = {request_0,request_1}; // @[Cat.scala 31:58]
  wire  matrix_2_2_0 = ~(|_matrix_2_0_T_6); // @[BitUtils.scala 258:50]
  wire [2:0] _matrix_3_0_T_6 = {request_0,request_1,request_2}; // @[Cat.scala 31:58]
  wire  matrix_2_3_0 = ~(|_matrix_3_0_T_6); // @[BitUtils.scala 258:50]
  wire [3:0] _matrix_4_0_T_6 = {request_0,request_1,request_2,request_3}; // @[Cat.scala 31:58]
  wire  matrix_2_4_0 = ~(|_matrix_4_0_T_6); // @[BitUtils.scala 258:50]
  wire [4:0] _matrix_5_0_T_6 = {request_0,request_1,request_2,request_3,request_4}; // @[Cat.scala 31:58]
  wire  matrix_2_5_0 = ~(|_matrix_5_0_T_6); // @[BitUtils.scala 258:50]
  wire [5:0] _matrix_6_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5}; // @[Cat.scala 31:58]
  wire  matrix_2_6_0 = ~(|_matrix_6_0_T_6); // @[BitUtils.scala 258:50]
  wire [6:0] _matrix_7_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,request_6}; // @[Cat.scala 31:58]
  wire  matrix_2_7_0 = ~(|_matrix_7_0_T_6); // @[BitUtils.scala 258:50]
  wire [7:0] _matrix_8_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,request_6,request_7}; // @[Cat.scala 31:58]
  wire  matrix_2_8_0 = ~(|_matrix_8_0_T_6); // @[BitUtils.scala 258:50]
  wire [8:0] _matrix_9_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,request_6,request_7,
    request_8}; // @[Cat.scala 31:58]
  wire  matrix_2_9_0 = ~(|_matrix_9_0_T_6); // @[BitUtils.scala 258:50]
  wire [9:0] _matrix_10_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,request_6,request_7,
    request_8,request_9}; // @[Cat.scala 31:58]
  wire  matrix_2_10_0 = ~(|_matrix_10_0_T_6); // @[BitUtils.scala 258:50]
  wire [4:0] matrix_11_0_lo_2 = {request_6,request_7,request_8,request_9,request_10}; // @[Cat.scala 31:58]
  wire [10:0] _matrix_11_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,matrix_11_0_lo_2}; // @[Cat.scala 31:58]
  wire  matrix_2_11_0 = ~(|_matrix_11_0_T_6); // @[BitUtils.scala 258:50]
  wire [5:0] matrix_12_0_lo_2 = {request_6,request_7,request_8,request_9,request_10,request_11}; // @[Cat.scala 31:58]
  wire [11:0] _matrix_12_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,matrix_12_0_lo_2}; // @[Cat.scala 31:58]
  wire  matrix_2_12_0 = ~(|_matrix_12_0_T_6); // @[BitUtils.scala 258:50]
  wire [5:0] matrix_13_0_lo_2 = {request_7,request_8,request_9,request_10,request_11,request_12}; // @[Cat.scala 31:58]
  wire [12:0] _matrix_13_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,request_6,matrix_13_0_lo_2
    }; // @[Cat.scala 31:58]
  wire  matrix_2_13_0 = ~(|_matrix_13_0_T_6); // @[BitUtils.scala 258:50]
  wire [6:0] matrix_14_0_lo_2 = {request_7,request_8,request_9,request_10,request_11,request_12,request_13}; // @[Cat.scala 31:58]
  wire [13:0] _matrix_14_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,request_6,matrix_14_0_lo_2
    }; // @[Cat.scala 31:58]
  wire  matrix_2_14_0 = ~(|_matrix_14_0_T_6); // @[BitUtils.scala 258:50]
  wire [6:0] matrix_15_0_lo_2 = {request_8,request_9,request_10,request_11,request_12,request_13,request_14}; // @[Cat.scala 31:58]
  wire [14:0] _matrix_15_0_T_6 = {request_0,request_1,request_2,request_3,request_4,request_5,request_6,request_7,
    matrix_15_0_lo_2}; // @[Cat.scala 31:58]
  wire  matrix_2_15_0 = ~(|_matrix_15_0_T_6); // @[BitUtils.scala 258:50]
  wire  _matrix_1_0_T_6 = |request_15; // @[BitUtils.scala 258:69]
  wire  matrix_3_1_0 = ~(|request_15); // @[BitUtils.scala 258:50]
  wire [1:0] _matrix_2_0_T_9 = {request_15,request_14}; // @[Cat.scala 31:58]
  wire  _matrix_2_0_T_10 = |_matrix_2_0_T_9; // @[BitUtils.scala 258:69]
  wire  matrix_3_2_0 = ~(|_matrix_2_0_T_9); // @[BitUtils.scala 258:50]
  wire [2:0] _matrix_3_0_T_9 = {request_15,request_14,request_13}; // @[Cat.scala 31:58]
  wire  _matrix_3_0_T_10 = |_matrix_3_0_T_9; // @[BitUtils.scala 258:69]
  wire  matrix_3_3_0 = ~(|_matrix_3_0_T_9); // @[BitUtils.scala 258:50]
  wire [3:0] _matrix_4_0_T_9 = {request_15,request_14,request_13,request_12}; // @[Cat.scala 31:58]
  wire  _matrix_4_0_T_10 = |_matrix_4_0_T_9; // @[BitUtils.scala 258:69]
  wire  matrix_3_4_0 = ~(|_matrix_4_0_T_9); // @[BitUtils.scala 258:50]
  wire [4:0] _matrix_5_0_T_9 = {request_15,request_14,request_13,request_12,request_11}; // @[Cat.scala 31:58]
  wire  _matrix_5_0_T_10 = |_matrix_5_0_T_9; // @[BitUtils.scala 258:69]
  wire  matrix_3_5_0 = ~(|_matrix_5_0_T_9); // @[BitUtils.scala 258:50]
  wire [5:0] _matrix_6_0_T_9 = {request_15,request_14,request_13,request_12,request_11,request_10}; // @[Cat.scala 31:58]
  wire  _matrix_6_0_T_10 = |_matrix_6_0_T_9; // @[BitUtils.scala 258:69]
  wire  matrix_3_6_0 = ~(|_matrix_6_0_T_9); // @[BitUtils.scala 258:50]
  wire [6:0] _matrix_7_0_T_9 = {request_15,request_14,request_13,request_12,request_11,request_10,request_9}; // @[Cat.scala 31:58]
  wire  _matrix_7_0_T_10 = |_matrix_7_0_T_9; // @[BitUtils.scala 258:69]
  wire  matrix_3_7_0 = ~(|_matrix_7_0_T_9); // @[BitUtils.scala 258:50]
  wire [7:0] _matrix_8_0_T_9 = {request_15,request_14,request_13,request_12,request_11,request_10,request_9,request_8}; // @[Cat.scala 31:58]
  wire  _matrix_8_0_T_10 = |_matrix_8_0_T_9; // @[BitUtils.scala 258:69]
  wire  matrix_3_8_0 = ~(|_matrix_8_0_T_9); // @[BitUtils.scala 258:50]
  wire [8:0] _matrix_9_0_T_9 = {request_15,request_14,request_13,request_12,request_11,request_10,request_9,request_8,
    request_7}; // @[Cat.scala 31:58]
  wire  _matrix_9_0_T_10 = |_matrix_9_0_T_9; // @[BitUtils.scala 258:69]
  wire  matrix_3_9_0 = ~(|_matrix_9_0_T_9); // @[BitUtils.scala 258:50]
  wire [9:0] _matrix_10_0_T_9 = {request_15,request_14,request_13,request_12,request_11,request_10,request_9,request_8,
    request_7,request_6}; // @[Cat.scala 31:58]
  wire  _matrix_10_0_T_10 = |_matrix_10_0_T_9; // @[BitUtils.scala 258:69]
  wire  matrix_3_10_0 = ~(|_matrix_10_0_T_9); // @[BitUtils.scala 258:50]
  wire [4:0] matrix_11_0_lo_3 = {request_9,request_8,request_7,request_6,request_5}; // @[Cat.scala 31:58]
  wire [10:0] _matrix_11_0_T_9 = {request_15,request_14,request_13,request_12,request_11,request_10,matrix_11_0_lo_3}; // @[Cat.scala 31:58]
  wire  _matrix_11_0_T_10 = |_matrix_11_0_T_9; // @[BitUtils.scala 258:69]
  wire  matrix_3_11_0 = ~(|_matrix_11_0_T_9); // @[BitUtils.scala 258:50]
  wire [5:0] matrix_12_0_lo_3 = {request_9,request_8,request_7,request_6,request_5,request_4}; // @[Cat.scala 31:58]
  wire [11:0] _matrix_12_0_T_9 = {request_15,request_14,request_13,request_12,request_11,request_10,matrix_12_0_lo_3}; // @[Cat.scala 31:58]
  wire  _matrix_12_0_T_10 = |_matrix_12_0_T_9; // @[BitUtils.scala 258:69]
  wire  matrix_3_12_0 = ~(|_matrix_12_0_T_9); // @[BitUtils.scala 258:50]
  wire [5:0] matrix_13_0_lo_3 = {request_8,request_7,request_6,request_5,request_4,request_3}; // @[Cat.scala 31:58]
  wire [12:0] _matrix_13_0_T_9 = {request_15,request_14,request_13,request_12,request_11,request_10,request_9,
    matrix_13_0_lo_3}; // @[Cat.scala 31:58]
  wire  _matrix_13_0_T_10 = |_matrix_13_0_T_9; // @[BitUtils.scala 258:69]
  wire  matrix_3_13_0 = ~(|_matrix_13_0_T_9); // @[BitUtils.scala 258:50]
  wire [6:0] matrix_14_0_lo_3 = {request_8,request_7,request_6,request_5,request_4,request_3,request_2}; // @[Cat.scala 31:58]
  wire [13:0] _matrix_14_0_T_9 = {request_15,request_14,request_13,request_12,request_11,request_10,request_9,
    matrix_14_0_lo_3}; // @[Cat.scala 31:58]
  wire  _matrix_14_0_T_10 = |_matrix_14_0_T_9; // @[BitUtils.scala 258:69]
  wire  matrix_3_14_0 = ~(|_matrix_14_0_T_9); // @[BitUtils.scala 258:50]
  wire [6:0] matrix_15_0_lo_3 = {request_7,request_6,request_5,request_4,request_3,request_2,request_1}; // @[Cat.scala 31:58]
  wire [14:0] _matrix_15_0_T_9 = {request_15,request_14,request_13,request_12,request_11,request_10,request_9,request_8,
    matrix_15_0_lo_3}; // @[Cat.scala 31:58]
  wire  _matrix_15_0_T_10 = |_matrix_15_0_T_9; // @[BitUtils.scala 258:69]
  wire  matrix_3_15_0 = ~(|_matrix_15_0_T_9); // @[BitUtils.scala 258:50]
  wire [7:0] moreThan_lo_13 = {request_7,request_6,request_5,request_4,request_3,request_2,request_1,request_0}; // @[BitUtils.scala 236:22]
  wire [15:0] _moreThan_T_59 = {request_15,request_14,request_13,request_12,request_11,request_10,request_9,request_8,
    moreThan_lo_13}; // @[BitUtils.scala 236:22]
  wire  moreThan_0_1 = |_moreThan_T_59; // @[BitUtils.scala 236:29]
  wire  moreThan_1_1 = request_0 & _matrix_15_0_T_10 | (request_1 & _matrix_14_0_T_10 | (request_2 & _matrix_13_0_T_10
     | (request_3 & _matrix_12_0_T_10 | (request_4 & _matrix_11_0_T_10 | (request_5 & _matrix_10_0_T_10 | (request_6 &
    _matrix_9_0_T_10 | (request_7 & _matrix_8_0_T_10 | (request_8 & _matrix_7_0_T_10 | (request_9 & _matrix_6_0_T_10 | (
    request_10 & _matrix_5_0_T_10 | (request_11 & _matrix_4_0_T_10 | (request_12 & _matrix_3_0_T_10 | (request_13 &
    _matrix_2_0_T_10 | request_14 & _matrix_1_0_T_6))))))))))))); // @[BitUtils.scala 240:49]
  wire  sel_2_1 = request_1 & matrix_2_1_0; // @[BitUtils.scala 275:62]
  wire  sel_2_2 = request_2 & matrix_2_2_0; // @[BitUtils.scala 275:62]
  wire  sel_2_3 = request_3 & matrix_2_3_0; // @[BitUtils.scala 275:62]
  wire  sel_2_4 = request_4 & matrix_2_4_0; // @[BitUtils.scala 275:62]
  wire  sel_2_5 = request_5 & matrix_2_5_0; // @[BitUtils.scala 275:62]
  wire  sel_2_6 = request_6 & matrix_2_6_0; // @[BitUtils.scala 275:62]
  wire  sel_2_7 = request_7 & matrix_2_7_0; // @[BitUtils.scala 275:62]
  wire  sel_2_8 = request_8 & matrix_2_8_0; // @[BitUtils.scala 275:62]
  wire  sel_2_9 = request_9 & matrix_2_9_0; // @[BitUtils.scala 275:62]
  wire  sel_2_10 = request_10 & matrix_2_10_0; // @[BitUtils.scala 275:62]
  wire  sel_2_11 = request_11 & matrix_2_11_0; // @[BitUtils.scala 275:62]
  wire  sel_2_12 = request_12 & matrix_2_12_0; // @[BitUtils.scala 275:62]
  wire  sel_2_13 = request_13 & matrix_2_13_0; // @[BitUtils.scala 275:62]
  wire  sel_2_14 = request_14 & matrix_2_14_0; // @[BitUtils.scala 275:62]
  wire  sel_2_15 = request_15 & matrix_2_15_0; // @[BitUtils.scala 275:62]
  wire  sel_3_1 = request_14 & matrix_3_1_0; // @[BitUtils.scala 275:62]
  wire  sel_3_2 = request_13 & matrix_3_2_0; // @[BitUtils.scala 275:62]
  wire  sel_3_3 = request_12 & matrix_3_3_0; // @[BitUtils.scala 275:62]
  wire  sel_3_4 = request_11 & matrix_3_4_0; // @[BitUtils.scala 275:62]
  wire  sel_3_5 = request_10 & matrix_3_5_0; // @[BitUtils.scala 275:62]
  wire  sel_3_6 = request_9 & matrix_3_6_0; // @[BitUtils.scala 275:62]
  wire  sel_3_7 = request_8 & matrix_3_7_0; // @[BitUtils.scala 275:62]
  wire  sel_3_8 = request_7 & matrix_3_8_0; // @[BitUtils.scala 275:62]
  wire  sel_3_9 = request_6 & matrix_3_9_0; // @[BitUtils.scala 275:62]
  wire  sel_3_10 = request_5 & matrix_3_10_0; // @[BitUtils.scala 275:62]
  wire  sel_3_11 = request_4 & matrix_3_11_0; // @[BitUtils.scala 275:62]
  wire  sel_3_12 = request_3 & matrix_3_12_0; // @[BitUtils.scala 275:62]
  wire  sel_3_13 = request_2 & matrix_3_13_0; // @[BitUtils.scala 275:62]
  wire  sel_3_14 = request_1 & matrix_3_14_0; // @[BitUtils.scala 275:62]
  wire  sel_3_15 = request_0 & matrix_3_15_0; // @[BitUtils.scala 275:62]
  wire [7:0] io_grant_0_bits_lo = {sel_2_7,sel_2_6,sel_2_5,sel_2_4,sel_2_3,sel_2_2,sel_2_1,request_0}; // @[SelectPolicy.scala 62:32]
  wire [15:0] _io_grant_0_bits_T = {sel_2_15,sel_2_14,sel_2_13,sel_2_12,sel_2_11,sel_2_10,sel_2_9,sel_2_8,
    io_grant_0_bits_lo}; // @[SelectPolicy.scala 62:32]
  wire [7:0] io_grant_1_bits_lo = {sel_3_8,sel_3_9,sel_3_10,sel_3_11,sel_3_12,sel_3_13,sel_3_14,sel_3_15}; // @[SelectPolicy.scala 62:32]
  wire [15:0] _io_grant_1_bits_T = {request_15,sel_3_1,sel_3_2,sel_3_3,sel_3_4,sel_3_5,sel_3_6,sel_3_7,
    io_grant_1_bits_lo}; // @[SelectPolicy.scala 62:32]
  reg  balance; // @[SelectPolicy.scala 70:26]
  assign io_allocate_0_bits = {io_allocate_0_bits_hi,io_allocate_0_bits_lo}; // @[SelectPolicy.scala 49:35]
  assign io_allocate_1_bits = {io_allocate_1_bits_hi,io_allocate_1_bits_lo}; // @[SelectPolicy.scala 49:35]
  assign io_grant_0_valid = balance ? moreThan_1_1 : moreThan_0_1; // @[SelectPolicy.scala 76:22 61:23 77:27]
  assign io_grant_0_bits = balance ? _io_grant_1_bits_T : _io_grant_0_bits_T; // @[SelectPolicy.scala 62:22 76:22 78:26]
  assign io_grant_1_valid = balance ? moreThan_0_1 : moreThan_1_1; // @[SelectPolicy.scala 76:22 61:23 77:27]
  assign io_grant_1_bits = balance ? _io_grant_0_bits_T : _io_grant_1_bits_T; // @[SelectPolicy.scala 62:22 76:22 78:26]
  assign io_balance_out = balance; // @[SelectPolicy.scala 74:24]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 71:32]
      balance <= 1'h0; // @[SelectPolicy.scala 72:15]
    end else if (io_balance_tick) begin // @[SelectPolicy.scala 70:26]
      balance <= ~balance;
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
  balance = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    balance = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

