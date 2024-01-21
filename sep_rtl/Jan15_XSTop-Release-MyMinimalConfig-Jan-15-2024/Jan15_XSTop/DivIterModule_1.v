module DivIterModule_1(
  input         clock,
  input  [52:0] io_a,
  input  [52:0] io_d,
  input  [1:0]  io_state,
  input         io_lastIterDoHalf,
  input         io_sigCmp,
  output [56:0] io_rem,
  output [54:0] io_quot,
  output [54:0] io_quotM1
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
`endif // RANDOMIZE_REG_INIT
  wire [9:0] signs_csa_sel_0_io_in_0; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_0_io_in_1; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_0_io_in_2; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_0_io_out_0; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_0_io_out_1; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_1_io_in_0; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_1_io_in_1; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_1_io_in_2; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_1_io_out_0; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_1_io_out_1; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_2_io_in_0; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_2_io_in_1; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_2_io_in_2; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_2_io_out_0; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_2_io_out_1; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_3_io_in_0; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_3_io_in_1; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_3_io_in_2; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_3_io_out_0; // @[FDIV.scala 453:21]
  wire [9:0] signs_csa_sel_3_io_out_1; // @[FDIV.scala 453:21]
  wire [56:0] csa_sel_wide_1_io_in_0; // @[FDIV.scala 461:24]
  wire [56:0] csa_sel_wide_1_io_in_1; // @[FDIV.scala 461:24]
  wire [56:0] csa_sel_wide_1_io_in_2; // @[FDIV.scala 461:24]
  wire [56:0] csa_sel_wide_1_io_out_0; // @[FDIV.scala 461:24]
  wire [56:0] csa_sel_wide_1_io_out_1; // @[FDIV.scala 461:24]
  wire [56:0] csa_sel_wide_2_io_in_0; // @[FDIV.scala 462:24]
  wire [56:0] csa_sel_wide_2_io_in_1; // @[FDIV.scala 462:24]
  wire [56:0] csa_sel_wide_2_io_in_2; // @[FDIV.scala 462:24]
  wire [56:0] csa_sel_wide_2_io_out_0; // @[FDIV.scala 462:24]
  wire [56:0] csa_sel_wide_2_io_out_1; // @[FDIV.scala 462:24]
  wire [12:0] csa_spec_0_io_in_0; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_0_io_in_1; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_0_io_in_2; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_0_io_out_0; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_0_io_out_1; // @[FDIV.scala 475:22]
  wire [12:0] signs2_csa_spec_0_0_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_0_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_0_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_0_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_0_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_1_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_1_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_1_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_1_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_1_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_2_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_2_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_2_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_2_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_2_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_3_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_3_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_3_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_3_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_0_3_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] csa_spec_1_io_in_0; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_1_io_in_1; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_1_io_in_2; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_1_io_out_0; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_1_io_out_1; // @[FDIV.scala 475:22]
  wire [12:0] signs2_csa_spec_1_0_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_0_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_0_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_0_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_0_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_1_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_1_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_1_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_1_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_1_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_2_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_2_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_2_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_2_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_2_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_3_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_3_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_3_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_3_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_1_3_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] csa_spec_2_io_in_0; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_2_io_in_1; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_2_io_in_2; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_2_io_out_0; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_2_io_out_1; // @[FDIV.scala 475:22]
  wire [12:0] signs2_csa_spec_2_0_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_0_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_0_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_0_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_0_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_1_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_1_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_1_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_1_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_1_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_2_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_2_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_2_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_2_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_2_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_3_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_3_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_3_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_3_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_2_3_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] csa_spec_3_io_in_0; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_3_io_in_1; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_3_io_in_2; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_3_io_out_0; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_3_io_out_1; // @[FDIV.scala 475:22]
  wire [12:0] signs2_csa_spec_3_0_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_0_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_0_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_0_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_0_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_1_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_1_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_1_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_1_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_1_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_2_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_2_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_2_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_2_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_2_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_3_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_3_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_3_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_3_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_3_3_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] csa_spec_4_io_in_0; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_4_io_in_1; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_4_io_in_2; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_4_io_out_0; // @[FDIV.scala 475:22]
  wire [12:0] csa_spec_4_io_out_1; // @[FDIV.scala 475:22]
  wire [12:0] signs2_csa_spec_4_0_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_0_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_0_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_0_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_0_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_1_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_1_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_1_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_1_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_1_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_2_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_2_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_2_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_2_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_2_io_out_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_3_io_in_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_3_io_in_1; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_3_io_in_2; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_3_io_out_0; // @[FDIV.scala 480:24]
  wire [12:0] signs2_csa_spec_4_3_io_out_1; // @[FDIV.scala 480:24]
  wire [56:0] _wsInit_T = {2'h0,io_a,2'h0}; // @[Cat.scala 31:58]
  wire [56:0] _wsInit_T_1 = {3'h0,io_a,1'h0}; // @[Cat.scala 31:58]
  wire [56:0] wsInit = io_sigCmp ? _wsInit_T : _wsInit_T_1; // @[FDIV.scala 373:19]
  wire [2:0] lookup = io_d[51:49]; // @[FDIV.scala 376:17]
  wire [5:0] _smallerThanM1_T_4 = 3'h1 == lookup ? 6'h3c : 6'h3d; // @[Mux.scala 81:58]
  wire [5:0] _smallerThanM1_T_6 = 3'h2 == lookup ? 6'h3c : _smallerThanM1_T_4; // @[Mux.scala 81:58]
  wire [5:0] _smallerThanM1_T_8 = 3'h3 == lookup ? 6'h3c : _smallerThanM1_T_6; // @[Mux.scala 81:58]
  wire [5:0] _smallerThanM1_T_10 = 3'h4 == lookup ? 6'h3b : _smallerThanM1_T_8; // @[Mux.scala 81:58]
  wire [5:0] _smallerThanM1_T_12 = 3'h5 == lookup ? 6'h3a : _smallerThanM1_T_10; // @[Mux.scala 81:58]
  wire [5:0] _smallerThanM1_T_14 = 3'h6 == lookup ? 6'h3a : _smallerThanM1_T_12; // @[Mux.scala 81:58]
  wire [5:0] _smallerThanM1_T_16 = 3'h7 == lookup ? 6'h3a : _smallerThanM1_T_14; // @[Mux.scala 81:58]
  wire [5:0] _GEN_50 = {{1'd0}, wsInit[54:50]}; // @[FDIV.scala 378:45]
  wire [5:0] _smallerThanM1_T_18 = _GEN_50 + _smallerThanM1_T_16; // @[FDIV.scala 378:45]
  wire  smallerThanM1 = _smallerThanM1_T_18[5]; // @[FDIV.scala 378:105]
  wire [5:0] _smallerThanM2_T_4 = 3'h1 == lookup ? 6'h32 : 6'h34; // @[Mux.scala 81:58]
  wire [5:0] _smallerThanM2_T_6 = 3'h2 == lookup ? 6'h31 : _smallerThanM2_T_4; // @[Mux.scala 81:58]
  wire [5:0] _smallerThanM2_T_8 = 3'h3 == lookup ? 6'h2f : _smallerThanM2_T_6; // @[Mux.scala 81:58]
  wire [5:0] _smallerThanM2_T_10 = 3'h4 == lookup ? 6'h2e : _smallerThanM2_T_8; // @[Mux.scala 81:58]
  wire [5:0] _smallerThanM2_T_12 = 3'h5 == lookup ? 6'h2c : _smallerThanM2_T_10; // @[Mux.scala 81:58]
  wire [5:0] _smallerThanM2_T_14 = 3'h6 == lookup ? 6'h2b : _smallerThanM2_T_12; // @[Mux.scala 81:58]
  wire [5:0] _smallerThanM2_T_16 = 3'h7 == lookup ? 6'h29 : _smallerThanM2_T_14; // @[Mux.scala 81:58]
  wire [5:0] _smallerThanM2_T_18 = _GEN_50 + _smallerThanM2_T_16; // @[FDIV.scala 379:45]
  wire  smallerThanM2 = _smallerThanM2_T_18[5]; // @[FDIV.scala 379:105]
  wire [53:0] dPos = {1'h0,io_d}; // @[Cat.scala 31:58]
  wire [53:0] dNeg = 54'h0 - dPos; // @[FDIV.scala 386:14]
  wire [9:0] _signs_T_16 = {signs_csa_sel_3_io_out_1[8:0], 1'h0}; // @[FDIV.scala 458:43]
  wire [9:0] _signs_T_18 = signs_csa_sel_3_io_out_0 + _signs_T_16; // @[FDIV.scala 458:20]
  wire  signs_3 = _signs_T_18[9]; // @[FDIV.scala 458:49]
  wire [9:0] _signs_T_11 = {signs_csa_sel_2_io_out_1[8:0], 1'h0}; // @[FDIV.scala 458:43]
  wire [9:0] _signs_T_13 = signs_csa_sel_2_io_out_0 + _signs_T_11; // @[FDIV.scala 458:20]
  wire  signs_2 = _signs_T_13[9]; // @[FDIV.scala 458:49]
  wire [9:0] _signs_T_6 = {signs_csa_sel_1_io_out_1[8:0], 1'h0}; // @[FDIV.scala 458:43]
  wire [9:0] _signs_T_8 = signs_csa_sel_1_io_out_0 + _signs_T_6; // @[FDIV.scala 458:20]
  wire  signs_1 = _signs_T_8[9]; // @[FDIV.scala 458:49]
  wire [9:0] _signs_T_1 = {signs_csa_sel_0_io_out_1[8:0], 1'h0}; // @[FDIV.scala 458:43]
  wire [9:0] _signs_T_3 = signs_csa_sel_0_io_out_0 + _signs_T_1; // @[FDIV.scala 458:20]
  wire  signs_0 = _signs_T_3[9]; // @[FDIV.scala 458:49]
  wire [3:0] _qNext_T = {signs_3,signs_2,signs_1,signs_0}; // @[FDIV.scala 460:29]
  wire  _qNext_sel_q_4_T_3 = ~_qNext_T[2]; // @[FDIV.scala 642:32]
  wire  _qNext_sel_q_4_T_6 = ~_qNext_T[1]; // @[FDIV.scala 642:47]
  wire  qNext_sel_q_4 = ~_qNext_T[3] & ~_qNext_T[2] & ~_qNext_T[1]; // @[FDIV.scala 642:44]
  wire  qNext_sel_q_3 = _qNext_T[3] & _qNext_sel_q_4_T_3 & _qNext_sel_q_4_T_6; // @[FDIV.scala 641:42]
  wire  qNext_sel_q_2 = _qNext_T[2] & _qNext_sel_q_4_T_6; // @[FDIV.scala 640:27]
  wire  qNext_sel_q_1 = ~_qNext_T[0] & _qNext_T[1] & _qNext_T[2]; // @[FDIV.scala 639:42]
  wire  qNext_sel_q_0 = _qNext_T[0] & _qNext_T[1] & _qNext_T[2]; // @[FDIV.scala 638:40]
  wire [4:0] qNext = {qNext_sel_q_4,qNext_sel_q_3,qNext_sel_q_2,qNext_sel_q_1,qNext_sel_q_0}; // @[FDIV.scala 643:10]
  wire [12:0] _signs2_T_16 = {signs2_csa_spec_0_3_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_18 = signs2_csa_spec_0_3_io_out_0 + _signs2_T_16; // @[FDIV.scala 484:23]
  wire  signs2__3 = _signs2_T_18[12]; // @[FDIV.scala 484:54]
  wire [12:0] _signs2_T_11 = {signs2_csa_spec_0_2_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_13 = signs2_csa_spec_0_2_io_out_0 + _signs2_T_11; // @[FDIV.scala 484:23]
  wire  signs2__2 = _signs2_T_13[12]; // @[FDIV.scala 484:54]
  wire [12:0] _signs2_T_6 = {signs2_csa_spec_0_1_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_8 = signs2_csa_spec_0_1_io_out_0 + _signs2_T_6; // @[FDIV.scala 484:23]
  wire  signs2__1 = _signs2_T_8[12]; // @[FDIV.scala 484:54]
  wire [12:0] _signs2_T_1 = {signs2_csa_spec_0_0_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_3 = signs2_csa_spec_0_0_io_out_0 + _signs2_T_1; // @[FDIV.scala 484:23]
  wire  signs2__0 = _signs2_T_3[12]; // @[FDIV.scala 484:54]
  wire [3:0] _qVec2_T = {signs2__3,signs2__2,signs2__1,signs2__0}; // @[FDIV.scala 486:35]
  wire  _qVec2_spec_q_0_4_T_3 = ~_qVec2_T[2]; // @[FDIV.scala 642:32]
  wire  _qVec2_spec_q_0_4_T_6 = ~_qVec2_T[1]; // @[FDIV.scala 642:47]
  wire  qVec2_spec_q_0_4 = ~_qVec2_T[3] & ~_qVec2_T[2] & ~_qVec2_T[1]; // @[FDIV.scala 642:44]
  wire  qVec2_spec_q_0_3 = _qVec2_T[3] & _qVec2_spec_q_0_4_T_3 & _qVec2_spec_q_0_4_T_6; // @[FDIV.scala 641:42]
  wire  qVec2_spec_q_0_2 = _qVec2_T[2] & _qVec2_spec_q_0_4_T_6; // @[FDIV.scala 640:27]
  wire  qVec2_spec_q_0_1 = ~_qVec2_T[0] & _qVec2_T[1] & _qVec2_T[2]; // @[FDIV.scala 639:42]
  wire  qVec2_spec_q_0_0 = _qVec2_T[0] & _qVec2_T[1] & _qVec2_T[2]; // @[FDIV.scala 638:40]
  wire [4:0] qVec2 = {qVec2_spec_q_0_4,qVec2_spec_q_0_3,qVec2_spec_q_0_2,qVec2_spec_q_0_1,qVec2_spec_q_0_0}; // @[FDIV.scala 643:10]
  wire [4:0] _qNext2_T_5 = qNext[0] ? qVec2 : 5'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_T_36 = {signs2_csa_spec_1_3_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_38 = signs2_csa_spec_1_3_io_out_0 + _signs2_T_36; // @[FDIV.scala 484:23]
  wire  signs2_1_3 = _signs2_T_38[12]; // @[FDIV.scala 484:54]
  wire [12:0] _signs2_T_31 = {signs2_csa_spec_1_2_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_33 = signs2_csa_spec_1_2_io_out_0 + _signs2_T_31; // @[FDIV.scala 484:23]
  wire  signs2_1_2 = _signs2_T_33[12]; // @[FDIV.scala 484:54]
  wire [12:0] _signs2_T_26 = {signs2_csa_spec_1_1_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_28 = signs2_csa_spec_1_1_io_out_0 + _signs2_T_26; // @[FDIV.scala 484:23]
  wire  signs2_1_1 = _signs2_T_28[12]; // @[FDIV.scala 484:54]
  wire [12:0] _signs2_T_21 = {signs2_csa_spec_1_0_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_23 = signs2_csa_spec_1_0_io_out_0 + _signs2_T_21; // @[FDIV.scala 484:23]
  wire  signs2_1_0 = _signs2_T_23[12]; // @[FDIV.scala 484:54]
  wire [3:0] _qVec2_T_1 = {signs2_1_3,signs2_1_2,signs2_1_1,signs2_1_0}; // @[FDIV.scala 486:35]
  wire  _qVec2_spec_q_1_4_T_3 = ~_qVec2_T_1[2]; // @[FDIV.scala 642:32]
  wire  _qVec2_spec_q_1_4_T_6 = ~_qVec2_T_1[1]; // @[FDIV.scala 642:47]
  wire  qVec2_spec_q_1_4 = ~_qVec2_T_1[3] & ~_qVec2_T_1[2] & ~_qVec2_T_1[1]; // @[FDIV.scala 642:44]
  wire  qVec2_spec_q_1_3 = _qVec2_T_1[3] & _qVec2_spec_q_1_4_T_3 & _qVec2_spec_q_1_4_T_6; // @[FDIV.scala 641:42]
  wire  qVec2_spec_q_1_2 = _qVec2_T_1[2] & _qVec2_spec_q_1_4_T_6; // @[FDIV.scala 640:27]
  wire  qVec2_spec_q_1_1 = ~_qVec2_T_1[0] & _qVec2_T_1[1] & _qVec2_T_1[2]; // @[FDIV.scala 639:42]
  wire  qVec2_spec_q_1_0 = _qVec2_T_1[0] & _qVec2_T_1[1] & _qVec2_T_1[2]; // @[FDIV.scala 638:40]
  wire [4:0] qVec2_1 = {qVec2_spec_q_1_4,qVec2_spec_q_1_3,qVec2_spec_q_1_2,qVec2_spec_q_1_1,qVec2_spec_q_1_0}; // @[FDIV.scala 643:10]
  wire [4:0] _qNext2_T_6 = qNext[1] ? qVec2_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _qNext2_T_10 = _qNext2_T_5 | _qNext2_T_6; // @[Mux.scala 27:73]
  wire [12:0] _signs2_T_56 = {signs2_csa_spec_2_3_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_58 = signs2_csa_spec_2_3_io_out_0 + _signs2_T_56; // @[FDIV.scala 484:23]
  wire  signs2_2_3 = _signs2_T_58[12]; // @[FDIV.scala 484:54]
  wire [12:0] _signs2_T_51 = {signs2_csa_spec_2_2_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_53 = signs2_csa_spec_2_2_io_out_0 + _signs2_T_51; // @[FDIV.scala 484:23]
  wire  signs2_2_2 = _signs2_T_53[12]; // @[FDIV.scala 484:54]
  wire [12:0] _signs2_T_46 = {signs2_csa_spec_2_1_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_48 = signs2_csa_spec_2_1_io_out_0 + _signs2_T_46; // @[FDIV.scala 484:23]
  wire  signs2_2_1 = _signs2_T_48[12]; // @[FDIV.scala 484:54]
  wire [12:0] _signs2_T_41 = {signs2_csa_spec_2_0_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_43 = signs2_csa_spec_2_0_io_out_0 + _signs2_T_41; // @[FDIV.scala 484:23]
  wire  signs2_2_0 = _signs2_T_43[12]; // @[FDIV.scala 484:54]
  wire [3:0] _qVec2_T_2 = {signs2_2_3,signs2_2_2,signs2_2_1,signs2_2_0}; // @[FDIV.scala 486:35]
  wire  _qVec2_spec_q_2_4_T_3 = ~_qVec2_T_2[2]; // @[FDIV.scala 642:32]
  wire  _qVec2_spec_q_2_4_T_6 = ~_qVec2_T_2[1]; // @[FDIV.scala 642:47]
  wire  qVec2_spec_q_2_4 = ~_qVec2_T_2[3] & ~_qVec2_T_2[2] & ~_qVec2_T_2[1]; // @[FDIV.scala 642:44]
  wire  qVec2_spec_q_2_3 = _qVec2_T_2[3] & _qVec2_spec_q_2_4_T_3 & _qVec2_spec_q_2_4_T_6; // @[FDIV.scala 641:42]
  wire  qVec2_spec_q_2_2 = _qVec2_T_2[2] & _qVec2_spec_q_2_4_T_6; // @[FDIV.scala 640:27]
  wire  qVec2_spec_q_2_1 = ~_qVec2_T_2[0] & _qVec2_T_2[1] & _qVec2_T_2[2]; // @[FDIV.scala 639:42]
  wire  qVec2_spec_q_2_0 = _qVec2_T_2[0] & _qVec2_T_2[1] & _qVec2_T_2[2]; // @[FDIV.scala 638:40]
  wire [4:0] qVec2_2 = {qVec2_spec_q_2_4,qVec2_spec_q_2_3,qVec2_spec_q_2_2,qVec2_spec_q_2_1,qVec2_spec_q_2_0}; // @[FDIV.scala 643:10]
  wire [4:0] _qNext2_T_7 = qNext[2] ? qVec2_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _qNext2_T_11 = _qNext2_T_10 | _qNext2_T_7; // @[Mux.scala 27:73]
  wire [12:0] _signs2_T_76 = {signs2_csa_spec_3_3_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_78 = signs2_csa_spec_3_3_io_out_0 + _signs2_T_76; // @[FDIV.scala 484:23]
  wire  signs2_3_3 = _signs2_T_78[12]; // @[FDIV.scala 484:54]
  wire [12:0] _signs2_T_71 = {signs2_csa_spec_3_2_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_73 = signs2_csa_spec_3_2_io_out_0 + _signs2_T_71; // @[FDIV.scala 484:23]
  wire  signs2_3_2 = _signs2_T_73[12]; // @[FDIV.scala 484:54]
  wire [12:0] _signs2_T_66 = {signs2_csa_spec_3_1_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_68 = signs2_csa_spec_3_1_io_out_0 + _signs2_T_66; // @[FDIV.scala 484:23]
  wire  signs2_3_1 = _signs2_T_68[12]; // @[FDIV.scala 484:54]
  wire [12:0] _signs2_T_61 = {signs2_csa_spec_3_0_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_63 = signs2_csa_spec_3_0_io_out_0 + _signs2_T_61; // @[FDIV.scala 484:23]
  wire  signs2_3_0 = _signs2_T_63[12]; // @[FDIV.scala 484:54]
  wire [3:0] _qVec2_T_3 = {signs2_3_3,signs2_3_2,signs2_3_1,signs2_3_0}; // @[FDIV.scala 486:35]
  wire  _qVec2_spec_q_3_4_T_3 = ~_qVec2_T_3[2]; // @[FDIV.scala 642:32]
  wire  _qVec2_spec_q_3_4_T_6 = ~_qVec2_T_3[1]; // @[FDIV.scala 642:47]
  wire  qVec2_spec_q_3_4 = ~_qVec2_T_3[3] & ~_qVec2_T_3[2] & ~_qVec2_T_3[1]; // @[FDIV.scala 642:44]
  wire  qVec2_spec_q_3_3 = _qVec2_T_3[3] & _qVec2_spec_q_3_4_T_3 & _qVec2_spec_q_3_4_T_6; // @[FDIV.scala 641:42]
  wire  qVec2_spec_q_3_2 = _qVec2_T_3[2] & _qVec2_spec_q_3_4_T_6; // @[FDIV.scala 640:27]
  wire  qVec2_spec_q_3_1 = ~_qVec2_T_3[0] & _qVec2_T_3[1] & _qVec2_T_3[2]; // @[FDIV.scala 639:42]
  wire  qVec2_spec_q_3_0 = _qVec2_T_3[0] & _qVec2_T_3[1] & _qVec2_T_3[2]; // @[FDIV.scala 638:40]
  wire [4:0] qVec2_3 = {qVec2_spec_q_3_4,qVec2_spec_q_3_3,qVec2_spec_q_3_2,qVec2_spec_q_3_1,qVec2_spec_q_3_0}; // @[FDIV.scala 643:10]
  wire [4:0] _qNext2_T_8 = qNext[3] ? qVec2_3 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _qNext2_T_12 = _qNext2_T_11 | _qNext2_T_8; // @[Mux.scala 27:73]
  wire [12:0] _signs2_T_96 = {signs2_csa_spec_4_3_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_98 = signs2_csa_spec_4_3_io_out_0 + _signs2_T_96; // @[FDIV.scala 484:23]
  wire  signs2_4_3 = _signs2_T_98[12]; // @[FDIV.scala 484:54]
  wire [12:0] _signs2_T_91 = {signs2_csa_spec_4_2_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_93 = signs2_csa_spec_4_2_io_out_0 + _signs2_T_91; // @[FDIV.scala 484:23]
  wire  signs2_4_2 = _signs2_T_93[12]; // @[FDIV.scala 484:54]
  wire [12:0] _signs2_T_86 = {signs2_csa_spec_4_1_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_88 = signs2_csa_spec_4_1_io_out_0 + _signs2_T_86; // @[FDIV.scala 484:23]
  wire  signs2_4_1 = _signs2_T_88[12]; // @[FDIV.scala 484:54]
  wire [12:0] _signs2_T_81 = {signs2_csa_spec_4_0_io_out_1[11:0], 1'h0}; // @[FDIV.scala 484:48]
  wire [12:0] _signs2_T_83 = signs2_csa_spec_4_0_io_out_0 + _signs2_T_81; // @[FDIV.scala 484:23]
  wire  signs2_4_0 = _signs2_T_83[12]; // @[FDIV.scala 484:54]
  wire [3:0] _qVec2_T_4 = {signs2_4_3,signs2_4_2,signs2_4_1,signs2_4_0}; // @[FDIV.scala 486:35]
  wire  _qVec2_spec_q_4_4_T_3 = ~_qVec2_T_4[2]; // @[FDIV.scala 642:32]
  wire  _qVec2_spec_q_4_4_T_6 = ~_qVec2_T_4[1]; // @[FDIV.scala 642:47]
  wire  qVec2_spec_q_4_4 = ~_qVec2_T_4[3] & ~_qVec2_T_4[2] & ~_qVec2_T_4[1]; // @[FDIV.scala 642:44]
  wire  qVec2_spec_q_4_3 = _qVec2_T_4[3] & _qVec2_spec_q_4_4_T_3 & _qVec2_spec_q_4_4_T_6; // @[FDIV.scala 641:42]
  wire  qVec2_spec_q_4_2 = _qVec2_T_4[2] & _qVec2_spec_q_4_4_T_6; // @[FDIV.scala 640:27]
  wire  qVec2_spec_q_4_1 = ~_qVec2_T_4[0] & _qVec2_T_4[1] & _qVec2_T_4[2]; // @[FDIV.scala 639:42]
  wire  qVec2_spec_q_4_0 = _qVec2_T_4[0] & _qVec2_T_4[1] & _qVec2_T_4[2]; // @[FDIV.scala 638:40]
  wire [4:0] qVec2_4 = {qVec2_spec_q_4_4,qVec2_spec_q_4_3,qVec2_spec_q_4_2,qVec2_spec_q_4_1,qVec2_spec_q_4_0}; // @[FDIV.scala 643:10]
  wire [4:0] _qNext2_T_9 = qNext[4] ? qVec2_4 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] qNext2 = _qNext2_T_12 | _qNext2_T_9; // @[Mux.scala 27:73]
  wire  _qPrevReg_T_4 = io_state[0] | io_state[1]; // @[FDIV.scala 416:79]
  reg [7:0] qPrevReg; // @[Reg.scala 16:16]
  reg [56:0] wsReg; // @[Reg.scala 16:16]
  wire [57:0] _wcIter_T = {csa_sel_wide_1_io_out_1, 1'h0}; // @[FDIV.scala 470:56]
  wire [57:0] _wcIter_T_2 = {csa_sel_wide_2_io_out_1, 1'h0}; // @[FDIV.scala 470:97]
  reg [56:0] wcReg; // @[Reg.scala 16:16]
  reg [54:0] quotIterReg; // @[Reg.scala 16:16]
  wire [56:0] _quotHalfIter_quotNext_T_1 = {quotIterReg, 2'h0}; // @[FDIV.scala 650:21]
  wire [56:0] _quotHalfIter_quotNext_T_2 = _quotHalfIter_quotNext_T_1 | 57'h2; // @[FDIV.scala 650:26]
  wire [56:0] _quotHalfIter_quotNext_T_15 = qPrevReg[4] ? _quotHalfIter_quotNext_T_2 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _quotHalfIter_quotNext_T_5 = _quotHalfIter_quotNext_T_1 | 57'h1; // @[FDIV.scala 651:26]
  wire [56:0] _quotHalfIter_quotNext_T_16 = qPrevReg[3] ? _quotHalfIter_quotNext_T_5 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _quotHalfIter_quotNext_T_20 = _quotHalfIter_quotNext_T_15 | _quotHalfIter_quotNext_T_16; // @[Mux.scala 27:73]
  wire [56:0] _quotHalfIter_quotNext_T_17 = qPrevReg[2] ? _quotHalfIter_quotNext_T_1 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _quotHalfIter_quotNext_T_21 = _quotHalfIter_quotNext_T_20 | _quotHalfIter_quotNext_T_17; // @[Mux.scala 27:73]
  reg [54:0] quotM1IterReg; // @[Reg.scala 16:16]
  wire [56:0] _quotHalfIter_quotNext_T_10 = {quotM1IterReg, 2'h0}; // @[FDIV.scala 653:23]
  wire [56:0] _quotHalfIter_quotNext_T_11 = _quotHalfIter_quotNext_T_10 | 57'h3; // @[FDIV.scala 653:28]
  wire [56:0] _quotHalfIter_quotNext_T_18 = qPrevReg[1] ? _quotHalfIter_quotNext_T_11 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _quotHalfIter_quotNext_T_22 = _quotHalfIter_quotNext_T_21 | _quotHalfIter_quotNext_T_18; // @[Mux.scala 27:73]
  wire [56:0] _quotHalfIter_quotNext_T_14 = _quotHalfIter_quotNext_T_10 | 57'h2; // @[FDIV.scala 654:28]
  wire [56:0] _quotHalfIter_quotNext_T_19 = qPrevReg[0] ? _quotHalfIter_quotNext_T_14 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] quotHalfIter_quotNext = _quotHalfIter_quotNext_T_22 | _quotHalfIter_quotNext_T_19; // @[Mux.scala 27:73]
  wire [54:0] quotHalfIter = quotHalfIter_quotNext[54:0]; // @[FDIV.scala 663:14]
  wire [56:0] _quotIterNext_quotNext_T_1 = {quotHalfIter, 2'h0}; // @[FDIV.scala 650:21]
  wire [56:0] _quotIterNext_quotNext_T_2 = _quotIterNext_quotNext_T_1 | 57'h2; // @[FDIV.scala 650:26]
  wire [56:0] _quotIterNext_quotNext_T_15 = qNext[4] ? _quotIterNext_quotNext_T_2 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _quotIterNext_quotNext_T_5 = _quotIterNext_quotNext_T_1 | 57'h1; // @[FDIV.scala 651:26]
  wire [56:0] _quotIterNext_quotNext_T_16 = qNext[3] ? _quotIterNext_quotNext_T_5 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _quotIterNext_quotNext_T_20 = _quotIterNext_quotNext_T_15 | _quotIterNext_quotNext_T_16; // @[Mux.scala 27:73]
  wire [56:0] _quotIterNext_quotNext_T_17 = qNext[2] ? _quotIterNext_quotNext_T_1 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _quotIterNext_quotNext_T_21 = _quotIterNext_quotNext_T_20 | _quotIterNext_quotNext_T_17; // @[Mux.scala 27:73]
  wire [56:0] _quotM1HalfIter_quotM1Next_T_15 = qPrevReg[4] ? _quotHalfIter_quotNext_T_5 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _quotM1HalfIter_quotM1Next_T_16 = qPrevReg[3] ? _quotHalfIter_quotNext_T_1 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _quotM1HalfIter_quotM1Next_T_20 = _quotM1HalfIter_quotM1Next_T_15 | _quotM1HalfIter_quotM1Next_T_16; // @[Mux.scala 27:73]
  wire [56:0] _quotM1HalfIter_quotM1Next_T_17 = qPrevReg[2] ? _quotHalfIter_quotNext_T_11 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _quotM1HalfIter_quotM1Next_T_21 = _quotM1HalfIter_quotM1Next_T_20 | _quotM1HalfIter_quotM1Next_T_17; // @[Mux.scala 27:73]
  wire [56:0] _quotM1HalfIter_quotM1Next_T_18 = qPrevReg[1] ? _quotHalfIter_quotNext_T_14 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _quotM1HalfIter_quotM1Next_T_22 = _quotM1HalfIter_quotM1Next_T_21 | _quotM1HalfIter_quotM1Next_T_18; // @[Mux.scala 27:73]
  wire [56:0] _quotM1HalfIter_quotM1Next_T_14 = _quotHalfIter_quotNext_T_10 | 57'h1; // @[FDIV.scala 661:28]
  wire [56:0] _quotM1HalfIter_quotM1Next_T_19 = qPrevReg[0] ? _quotM1HalfIter_quotM1Next_T_14 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] quotM1HalfIter_quotM1Next = _quotM1HalfIter_quotM1Next_T_22 | _quotM1HalfIter_quotM1Next_T_19; // @[Mux.scala 27:73]
  wire [54:0] quotM1HalfIter = quotM1HalfIter_quotM1Next[54:0]; // @[FDIV.scala 663:38]
  wire [56:0] _quotIterNext_quotNext_T_10 = {quotM1HalfIter, 2'h0}; // @[FDIV.scala 653:23]
  wire [56:0] _quotIterNext_quotNext_T_11 = _quotIterNext_quotNext_T_10 | 57'h3; // @[FDIV.scala 653:28]
  wire [56:0] _quotIterNext_quotNext_T_18 = qNext[1] ? _quotIterNext_quotNext_T_11 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _quotIterNext_quotNext_T_22 = _quotIterNext_quotNext_T_21 | _quotIterNext_quotNext_T_18; // @[Mux.scala 27:73]
  wire [56:0] _quotIterNext_quotNext_T_14 = _quotIterNext_quotNext_T_10 | 57'h2; // @[FDIV.scala 654:28]
  wire [56:0] _quotIterNext_quotNext_T_19 = qNext[0] ? _quotIterNext_quotNext_T_14 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] quotIterNext_quotNext = _quotIterNext_quotNext_T_22 | _quotIterNext_quotNext_T_19; // @[Mux.scala 27:73]
  wire [56:0] _quotM1IterNext_quotM1Next_T_15 = qNext[4] ? _quotIterNext_quotNext_T_5 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _quotM1IterNext_quotM1Next_T_16 = qNext[3] ? _quotIterNext_quotNext_T_1 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _quotM1IterNext_quotM1Next_T_20 = _quotM1IterNext_quotM1Next_T_15 | _quotM1IterNext_quotM1Next_T_16; // @[Mux.scala 27:73]
  wire [56:0] _quotM1IterNext_quotM1Next_T_17 = qNext[2] ? _quotIterNext_quotNext_T_11 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _quotM1IterNext_quotM1Next_T_21 = _quotM1IterNext_quotM1Next_T_20 | _quotM1IterNext_quotM1Next_T_17; // @[Mux.scala 27:73]
  wire [56:0] _quotM1IterNext_quotM1Next_T_18 = qNext[1] ? _quotIterNext_quotNext_T_14 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _quotM1IterNext_quotM1Next_T_22 = _quotM1IterNext_quotM1Next_T_21 | _quotM1IterNext_quotM1Next_T_18; // @[Mux.scala 27:73]
  wire [56:0] _quotM1IterNext_quotM1Next_T_14 = _quotIterNext_quotNext_T_10 | 57'h1; // @[FDIV.scala 661:28]
  wire [56:0] _quotM1IterNext_quotM1Next_T_19 = qNext[0] ? _quotM1IterNext_quotM1Next_T_14 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] quotM1IterNext_quotM1Next = _quotM1IterNext_quotM1Next_T_22 | _quotM1IterNext_quotM1Next_T_19; // @[Mux.scala 27:73]
  wire [5:0] _T_2 = 3'h1 == lookup ? 6'hf : 6'hd; // @[Mux.scala 81:58]
  wire [5:0] _T_4 = 3'h2 == lookup ? 6'h10 : _T_2; // @[Mux.scala 81:58]
  wire [5:0] _T_6 = 3'h3 == lookup ? 6'h12 : _T_4; // @[Mux.scala 81:58]
  wire [5:0] _T_8 = 3'h4 == lookup ? 6'h13 : _T_6; // @[Mux.scala 81:58]
  wire [5:0] _T_10 = 3'h5 == lookup ? 6'h15 : _T_8; // @[Mux.scala 81:58]
  wire [5:0] _T_12 = 3'h6 == lookup ? 6'h16 : _T_10; // @[Mux.scala 81:58]
  wire [5:0] _T_14 = 3'h7 == lookup ? 6'h18 : _T_12; // @[Mux.scala 81:58]
  wire  signBit = _T_14[5]; // @[FDIV.scala 130:20]
  wire [3:0] _T_16 = signBit ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [11:0] mNeg_0 = {_T_16,_T_14,2'h0}; // @[Cat.scala 31:58]
  wire [5:0] _T_21 = 3'h1 == lookup ? 6'h6 : 6'h4; // @[Mux.scala 81:58]
  wire [5:0] _T_23 = 3'h2 == lookup ? 6'h6 : _T_21; // @[Mux.scala 81:58]
  wire [5:0] _T_25 = 3'h3 == lookup ? 6'h6 : _T_23; // @[Mux.scala 81:58]
  wire [5:0] _T_27 = 3'h4 == lookup ? 6'h8 : _T_25; // @[Mux.scala 81:58]
  wire [5:0] _T_29 = 3'h5 == lookup ? 6'h8 : _T_27; // @[Mux.scala 81:58]
  wire [5:0] _T_31 = 3'h6 == lookup ? 6'h8 : _T_29; // @[Mux.scala 81:58]
  wire [5:0] _T_33 = 3'h7 == lookup ? 6'h8 : _T_31; // @[Mux.scala 81:58]
  wire  signBit_1 = _T_33[5]; // @[FDIV.scala 130:20]
  wire [3:0] _T_35 = signBit_1 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [11:0] mNeg_1 = {_T_35,_T_33,2'h0}; // @[Cat.scala 31:58]
  wire  signBit_2 = _smallerThanM1_T_16[5]; // @[FDIV.scala 130:20]
  wire [3:0] _T_54 = signBit_2 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [11:0] mNeg_2 = {_T_54,_smallerThanM1_T_16,2'h0}; // @[Cat.scala 31:58]
  wire  signBit_3 = _smallerThanM2_T_16[5]; // @[FDIV.scala 130:20]
  wire [3:0] _T_73 = signBit_3 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [11:0] mNeg_3 = {_T_73,_smallerThanM2_T_16,2'h0}; // @[Cat.scala 31:58]
  wire  signBit_4 = dPos[53]; // @[FDIV.scala 130:20]
  wire [56:0] udNeg_0 = {signBit_4,1'h0,io_d,2'h0}; // @[Cat.scala 31:58]
  wire [1:0] _T_79 = signBit_4 ? 2'h3 : 2'h0; // @[Bitwise.scala 74:12]
  wire [56:0] udNeg_1 = {_T_79,1'h0,io_d,1'h0}; // @[Cat.scala 31:58]
  wire  signBit_6 = dNeg[53]; // @[FDIV.scala 130:20]
  wire [1:0] _T_83 = signBit_6 ? 2'h3 : 2'h0; // @[Bitwise.scala 74:12]
  wire [56:0] udNeg_3 = {_T_83,dNeg,1'h0}; // @[Cat.scala 31:58]
  wire [56:0] udNeg_4 = {signBit_6,dNeg,2'h0}; // @[Cat.scala 31:58]
  wire [9:0] rudNeg_0 = udNeg_0[55:46]; // @[FDIV.scala 435:50]
  wire [9:0] rudNeg_1 = udNeg_1[55:46]; // @[FDIV.scala 435:50]
  wire [9:0] rudNeg_3 = udNeg_3[55:46]; // @[FDIV.scala 435:50]
  wire [9:0] rudNeg_4 = udNeg_4[55:46]; // @[FDIV.scala 435:50]
  wire [11:0] r2udNeg_0 = udNeg_0[55:44]; // @[FDIV.scala 436:51]
  wire [11:0] r2udNeg_1 = udNeg_1[55:44]; // @[FDIV.scala 436:51]
  wire [11:0] r2udNeg_3 = udNeg_3[55:44]; // @[FDIV.scala 436:51]
  wire [11:0] r2udNeg_4 = udNeg_4[55:44]; // @[FDIV.scala 436:51]
  wire  signBit_8 = rudNeg_0[9]; // @[FDIV.scala 130:20]
  wire [9:0] _T_99 = {signBit_8,rudNeg_0[9:1]}; // @[Cat.scala 31:58]
  wire [9:0] rudPmNeg_0_0 = _T_99 + mNeg_0[10:1]; // @[FDIV.scala 438:103]
  wire [9:0] rudPmNeg_0_1 = _T_99 + mNeg_1[10:1]; // @[FDIV.scala 438:103]
  wire [9:0] rudPmNeg_0_2 = _T_99 + mNeg_2[10:1]; // @[FDIV.scala 438:103]
  wire [9:0] rudPmNeg_0_3 = _T_99 + mNeg_3[10:1]; // @[FDIV.scala 438:103]
  wire  signBit_12 = rudNeg_1[9]; // @[FDIV.scala 130:20]
  wire [9:0] _T_119 = {signBit_12,rudNeg_1[9:1]}; // @[Cat.scala 31:58]
  wire [9:0] rudPmNeg_1_0 = _T_119 + mNeg_0[10:1]; // @[FDIV.scala 438:103]
  wire [9:0] rudPmNeg_1_1 = _T_119 + mNeg_1[10:1]; // @[FDIV.scala 438:103]
  wire [9:0] rudPmNeg_1_2 = _T_119 + mNeg_2[10:1]; // @[FDIV.scala 438:103]
  wire [9:0] rudPmNeg_1_3 = _T_119 + mNeg_3[10:1]; // @[FDIV.scala 438:103]
  wire [10:0] _T_141 = {{1'd0}, mNeg_0[10:1]}; // @[FDIV.scala 438:103]
  wire [9:0] rudPmNeg_2_0 = _T_141[9:0]; // @[FDIV.scala 438:103]
  wire [10:0] _T_146 = {{1'd0}, mNeg_1[10:1]}; // @[FDIV.scala 438:103]
  wire [9:0] rudPmNeg_2_1 = _T_146[9:0]; // @[FDIV.scala 438:103]
  wire [10:0] _T_151 = {{1'd0}, mNeg_2[10:1]}; // @[FDIV.scala 438:103]
  wire [9:0] rudPmNeg_2_2 = _T_151[9:0]; // @[FDIV.scala 438:103]
  wire [10:0] _T_156 = {{1'd0}, mNeg_3[10:1]}; // @[FDIV.scala 438:103]
  wire [9:0] rudPmNeg_2_3 = _T_156[9:0]; // @[FDIV.scala 438:103]
  wire  signBit_20 = rudNeg_3[9]; // @[FDIV.scala 130:20]
  wire [9:0] _T_159 = {signBit_20,rudNeg_3[9:1]}; // @[Cat.scala 31:58]
  wire [9:0] rudPmNeg_3_0 = _T_159 + mNeg_0[10:1]; // @[FDIV.scala 438:103]
  wire [9:0] rudPmNeg_3_1 = _T_159 + mNeg_1[10:1]; // @[FDIV.scala 438:103]
  wire [9:0] rudPmNeg_3_2 = _T_159 + mNeg_2[10:1]; // @[FDIV.scala 438:103]
  wire [9:0] rudPmNeg_3_3 = _T_159 + mNeg_3[10:1]; // @[FDIV.scala 438:103]
  wire  signBit_24 = rudNeg_4[9]; // @[FDIV.scala 130:20]
  wire [9:0] _T_179 = {signBit_24,rudNeg_4[9:1]}; // @[Cat.scala 31:58]
  wire [9:0] rudPmNeg_4_0 = _T_179 + mNeg_0[10:1]; // @[FDIV.scala 438:103]
  wire [9:0] rudPmNeg_4_1 = _T_179 + mNeg_1[10:1]; // @[FDIV.scala 438:103]
  wire [9:0] rudPmNeg_4_2 = _T_179 + mNeg_2[10:1]; // @[FDIV.scala 438:103]
  wire [9:0] rudPmNeg_4_3 = _T_179 + mNeg_3[10:1]; // @[FDIV.scala 438:103]
  wire  signBit_28 = r2udNeg_0[11]; // @[FDIV.scala 130:20]
  wire [12:0] _T_198 = {signBit_28,r2udNeg_0}; // @[Cat.scala 31:58]
  wire  signBit_29 = mNeg_0[11]; // @[FDIV.scala 130:20]
  wire [12:0] _T_199 = {signBit_29,_T_16,_T_14,2'h0}; // @[Cat.scala 31:58]
  wire [12:0] r2udPmNeg_0_0 = _T_198 + _T_199; // @[FDIV.scala 439:99]
  wire  signBit_31 = mNeg_1[11]; // @[FDIV.scala 130:20]
  wire [12:0] _T_203 = {signBit_31,_T_35,_T_33,2'h0}; // @[Cat.scala 31:58]
  wire [12:0] r2udPmNeg_0_1 = _T_198 + _T_203; // @[FDIV.scala 439:99]
  wire  signBit_33 = mNeg_2[11]; // @[FDIV.scala 130:20]
  wire [12:0] _T_207 = {signBit_33,_T_54,_smallerThanM1_T_16,2'h0}; // @[Cat.scala 31:58]
  wire [12:0] r2udPmNeg_0_2 = _T_198 + _T_207; // @[FDIV.scala 439:99]
  wire  signBit_35 = mNeg_3[11]; // @[FDIV.scala 130:20]
  wire [12:0] _T_211 = {signBit_35,_T_73,_smallerThanM2_T_16,2'h0}; // @[Cat.scala 31:58]
  wire [12:0] r2udPmNeg_0_3 = _T_198 + _T_211; // @[FDIV.scala 439:99]
  wire  signBit_36 = r2udNeg_1[11]; // @[FDIV.scala 130:20]
  wire [12:0] _T_214 = {signBit_36,r2udNeg_1}; // @[Cat.scala 31:58]
  wire [12:0] r2udPmNeg_1_0 = _T_214 + _T_199; // @[FDIV.scala 439:99]
  wire [12:0] r2udPmNeg_1_1 = _T_214 + _T_203; // @[FDIV.scala 439:99]
  wire [12:0] r2udPmNeg_1_2 = _T_214 + _T_207; // @[FDIV.scala 439:99]
  wire [12:0] r2udPmNeg_1_3 = _T_214 + _T_211; // @[FDIV.scala 439:99]
  wire [13:0] _T_232 = {{1'd0}, _T_199}; // @[FDIV.scala 439:99]
  wire [12:0] r2udPmNeg_2_0 = _T_232[12:0]; // @[FDIV.scala 439:99]
  wire [13:0] _T_236 = {{1'd0}, _T_203}; // @[FDIV.scala 439:99]
  wire [12:0] r2udPmNeg_2_1 = _T_236[12:0]; // @[FDIV.scala 439:99]
  wire [13:0] _T_240 = {{1'd0}, _T_207}; // @[FDIV.scala 439:99]
  wire [12:0] r2udPmNeg_2_2 = _T_240[12:0]; // @[FDIV.scala 439:99]
  wire [13:0] _T_244 = {{1'd0}, _T_211}; // @[FDIV.scala 439:99]
  wire [12:0] r2udPmNeg_2_3 = _T_244[12:0]; // @[FDIV.scala 439:99]
  wire  signBit_52 = r2udNeg_3[11]; // @[FDIV.scala 130:20]
  wire [12:0] _T_246 = {signBit_52,r2udNeg_3}; // @[Cat.scala 31:58]
  wire [12:0] r2udPmNeg_3_0 = _T_246 + _T_199; // @[FDIV.scala 439:99]
  wire [12:0] r2udPmNeg_3_1 = _T_246 + _T_203; // @[FDIV.scala 439:99]
  wire [12:0] r2udPmNeg_3_2 = _T_246 + _T_207; // @[FDIV.scala 439:99]
  wire [12:0] r2udPmNeg_3_3 = _T_246 + _T_211; // @[FDIV.scala 439:99]
  wire  signBit_60 = r2udNeg_4[11]; // @[FDIV.scala 130:20]
  wire [12:0] _T_262 = {signBit_60,r2udNeg_4}; // @[Cat.scala 31:58]
  wire [12:0] r2udPmNeg_4_0 = _T_262 + _T_199; // @[FDIV.scala 439:99]
  wire [12:0] r2udPmNeg_4_1 = _T_262 + _T_203; // @[FDIV.scala 439:99]
  wire [12:0] r2udPmNeg_4_2 = _T_262 + _T_207; // @[FDIV.scala 439:99]
  wire [12:0] r2udPmNeg_4_3 = _T_262 + _T_211; // @[FDIV.scala 439:99]
  reg [56:0] udNegReg_0; // @[Reg.scala 16:16]
  reg [56:0] udNegReg_1; // @[Reg.scala 16:16]
  reg [56:0] udNegReg_3; // @[Reg.scala 16:16]
  reg [56:0] udNegReg_4; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_0_0; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_0_1; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_0_2; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_0_3; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_1_0; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_1_1; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_1_2; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_1_3; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_2_0; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_2_1; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_2_2; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_2_3; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_3_0; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_3_1; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_3_2; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_3_3; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_4_0; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_4_1; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_4_2; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_4_3; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_0_0; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_0_1; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_0_2; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_0_3; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_1_0; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_1_1; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_1_2; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_1_3; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_2_0; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_2_1; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_2_2; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_2_3; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_3_0; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_3_1; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_3_2; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_3_3; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_4_0; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_4_1; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_4_2; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_4_3; // @[Reg.scala 16:16]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_5 = qPrevReg[0] ? rudPmNegReg_0_0 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_6 = qPrevReg[1] ? rudPmNegReg_1_0 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_7 = qPrevReg[2] ? rudPmNegReg_2_0 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_8 = qPrevReg[3] ? rudPmNegReg_3_0 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_9 = qPrevReg[4] ? rudPmNegReg_4_0 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_10 = _signs_csa_sel_0_io_in_2_T_5 | _signs_csa_sel_0_io_in_2_T_6; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_11 = _signs_csa_sel_0_io_in_2_T_10 | _signs_csa_sel_0_io_in_2_T_7; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_12 = _signs_csa_sel_0_io_in_2_T_11 | _signs_csa_sel_0_io_in_2_T_8; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_14 = qPrevReg[0] ? rudPmNegReg_0_1 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_15 = qPrevReg[1] ? rudPmNegReg_1_1 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_16 = qPrevReg[2] ? rudPmNegReg_2_1 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_17 = qPrevReg[3] ? rudPmNegReg_3_1 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_18 = qPrevReg[4] ? rudPmNegReg_4_1 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_19 = _signs_csa_sel_0_io_in_2_T_14 | _signs_csa_sel_0_io_in_2_T_15; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_20 = _signs_csa_sel_0_io_in_2_T_19 | _signs_csa_sel_0_io_in_2_T_16; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_21 = _signs_csa_sel_0_io_in_2_T_20 | _signs_csa_sel_0_io_in_2_T_17; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_23 = qPrevReg[0] ? rudPmNegReg_0_2 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_24 = qPrevReg[1] ? rudPmNegReg_1_2 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_25 = qPrevReg[2] ? rudPmNegReg_2_2 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_26 = qPrevReg[3] ? rudPmNegReg_3_2 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_27 = qPrevReg[4] ? rudPmNegReg_4_2 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_28 = _signs_csa_sel_0_io_in_2_T_23 | _signs_csa_sel_0_io_in_2_T_24; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_29 = _signs_csa_sel_0_io_in_2_T_28 | _signs_csa_sel_0_io_in_2_T_25; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_30 = _signs_csa_sel_0_io_in_2_T_29 | _signs_csa_sel_0_io_in_2_T_26; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_32 = qPrevReg[0] ? rudPmNegReg_0_3 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_33 = qPrevReg[1] ? rudPmNegReg_1_3 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_34 = qPrevReg[2] ? rudPmNegReg_2_3 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_35 = qPrevReg[3] ? rudPmNegReg_3_3 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_36 = qPrevReg[4] ? rudPmNegReg_4_3 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_37 = _signs_csa_sel_0_io_in_2_T_32 | _signs_csa_sel_0_io_in_2_T_33; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_38 = _signs_csa_sel_0_io_in_2_T_37 | _signs_csa_sel_0_io_in_2_T_34; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_39 = _signs_csa_sel_0_io_in_2_T_38 | _signs_csa_sel_0_io_in_2_T_35; // @[Mux.scala 27:73]
  wire [58:0] _csa_sel_wide_1_io_in_0_T = {wsReg, 2'h0}; // @[FDIV.scala 463:30]
  wire [58:0] _csa_sel_wide_1_io_in_1_T = {wcReg, 2'h0}; // @[FDIV.scala 464:30]
  wire [56:0] _csa_sel_wide_1_io_in_2_T_5 = qPrevReg[0] ? udNegReg_0 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _csa_sel_wide_1_io_in_2_T_6 = qPrevReg[1] ? udNegReg_1 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _csa_sel_wide_1_io_in_2_T_8 = qPrevReg[3] ? udNegReg_3 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _csa_sel_wide_1_io_in_2_T_9 = qPrevReg[4] ? udNegReg_4 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _csa_sel_wide_1_io_in_2_T_10 = _csa_sel_wide_1_io_in_2_T_5 | _csa_sel_wide_1_io_in_2_T_6; // @[Mux.scala 27:73]
  wire [56:0] _csa_sel_wide_1_io_in_2_T_12 = _csa_sel_wide_1_io_in_2_T_10 | _csa_sel_wide_1_io_in_2_T_8; // @[Mux.scala 27:73]
  wire [56:0] _csa_sel_wide_1_io_in_2_T_13 = _csa_sel_wide_1_io_in_2_T_12 | _csa_sel_wide_1_io_in_2_T_9; // @[Mux.scala 27:73]
  wire [58:0] _csa_sel_wide_1_io_in_2_T_14 = {_csa_sel_wide_1_io_in_2_T_13, 2'h0}; // @[FDIV.scala 465:56]
  wire [58:0] _csa_sel_wide_2_io_in_0_T = {csa_sel_wide_1_io_out_0, 2'h0}; // @[FDIV.scala 466:43]
  wire [58:0] _csa_sel_wide_2_io_in_1_T_2 = {_wcIter_T[56:0], 2'h0}; // @[FDIV.scala 467:64]
  wire [56:0] _csa_sel_wide_2_io_in_2_T_5 = qNext[0] ? udNegReg_0 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _csa_sel_wide_2_io_in_2_T_6 = qNext[1] ? udNegReg_1 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _csa_sel_wide_2_io_in_2_T_8 = qNext[3] ? udNegReg_3 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _csa_sel_wide_2_io_in_2_T_9 = qNext[4] ? udNegReg_4 : 57'h0; // @[Mux.scala 27:73]
  wire [56:0] _csa_sel_wide_2_io_in_2_T_10 = _csa_sel_wide_2_io_in_2_T_5 | _csa_sel_wide_2_io_in_2_T_6; // @[Mux.scala 27:73]
  wire [56:0] _csa_sel_wide_2_io_in_2_T_12 = _csa_sel_wide_2_io_in_2_T_10 | _csa_sel_wide_2_io_in_2_T_8; // @[Mux.scala 27:73]
  wire [56:0] _csa_sel_wide_2_io_in_2_T_13 = _csa_sel_wide_2_io_in_2_T_12 | _csa_sel_wide_2_io_in_2_T_9; // @[Mux.scala 27:73]
  wire [58:0] _csa_sel_wide_2_io_in_2_T_14 = {_csa_sel_wide_2_io_in_2_T_13, 2'h0}; // @[FDIV.scala 468:53]
  wire  csa_spec_0_io_in_2_signBit = udNegReg_0[55]; // @[FDIV.scala 130:20]
  wire [2:0] _csa_spec_0_io_in_2_T_2 = csa_spec_0_io_in_2_signBit ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _signs2_csa_spec_0_0_io_in_1_T = {csa_spec_0_io_out_1, 1'h0}; // @[FDIV.scala 482:40]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_5 = qPrevReg[0] ? r2udPmNegReg_0_0 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_6 = qPrevReg[1] ? r2udPmNegReg_1_0 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_7 = qPrevReg[2] ? r2udPmNegReg_2_0 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_8 = qPrevReg[3] ? r2udPmNegReg_3_0 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_9 = qPrevReg[4] ? r2udPmNegReg_4_0 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_10 = _signs2_csa_spec_0_0_io_in_2_T_5 | _signs2_csa_spec_0_0_io_in_2_T_6; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_11 = _signs2_csa_spec_0_0_io_in_2_T_10 | _signs2_csa_spec_0_0_io_in_2_T_7; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_12 = _signs2_csa_spec_0_0_io_in_2_T_11 | _signs2_csa_spec_0_0_io_in_2_T_8; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_14 = qPrevReg[0] ? r2udPmNegReg_0_1 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_15 = qPrevReg[1] ? r2udPmNegReg_1_1 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_16 = qPrevReg[2] ? r2udPmNegReg_2_1 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_17 = qPrevReg[3] ? r2udPmNegReg_3_1 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_18 = qPrevReg[4] ? r2udPmNegReg_4_1 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_19 = _signs2_csa_spec_0_0_io_in_2_T_14 | _signs2_csa_spec_0_0_io_in_2_T_15; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_20 = _signs2_csa_spec_0_0_io_in_2_T_19 | _signs2_csa_spec_0_0_io_in_2_T_16; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_21 = _signs2_csa_spec_0_0_io_in_2_T_20 | _signs2_csa_spec_0_0_io_in_2_T_17; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_23 = qPrevReg[0] ? r2udPmNegReg_0_2 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_24 = qPrevReg[1] ? r2udPmNegReg_1_2 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_25 = qPrevReg[2] ? r2udPmNegReg_2_2 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_26 = qPrevReg[3] ? r2udPmNegReg_3_2 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_27 = qPrevReg[4] ? r2udPmNegReg_4_2 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_28 = _signs2_csa_spec_0_0_io_in_2_T_23 | _signs2_csa_spec_0_0_io_in_2_T_24; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_29 = _signs2_csa_spec_0_0_io_in_2_T_28 | _signs2_csa_spec_0_0_io_in_2_T_25; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_30 = _signs2_csa_spec_0_0_io_in_2_T_29 | _signs2_csa_spec_0_0_io_in_2_T_26; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_32 = qPrevReg[0] ? r2udPmNegReg_0_3 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_33 = qPrevReg[1] ? r2udPmNegReg_1_3 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_34 = qPrevReg[2] ? r2udPmNegReg_2_3 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_35 = qPrevReg[3] ? r2udPmNegReg_3_3 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_36 = qPrevReg[4] ? r2udPmNegReg_4_3 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_37 = _signs2_csa_spec_0_0_io_in_2_T_32 | _signs2_csa_spec_0_0_io_in_2_T_33; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_38 = _signs2_csa_spec_0_0_io_in_2_T_37 | _signs2_csa_spec_0_0_io_in_2_T_34; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_39 = _signs2_csa_spec_0_0_io_in_2_T_38 | _signs2_csa_spec_0_0_io_in_2_T_35; // @[Mux.scala 27:73]
  wire  csa_spec_1_io_in_2_signBit = udNegReg_1[55]; // @[FDIV.scala 130:20]
  wire [2:0] _csa_spec_1_io_in_2_T_2 = csa_spec_1_io_in_2_signBit ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _signs2_csa_spec_1_0_io_in_1_T = {csa_spec_1_io_out_1, 1'h0}; // @[FDIV.scala 482:40]
  wire [13:0] _signs2_csa_spec_2_0_io_in_1_T = {csa_spec_2_io_out_1, 1'h0}; // @[FDIV.scala 482:40]
  wire  csa_spec_3_io_in_2_signBit = udNegReg_3[55]; // @[FDIV.scala 130:20]
  wire [2:0] _csa_spec_3_io_in_2_T_2 = csa_spec_3_io_in_2_signBit ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _signs2_csa_spec_3_0_io_in_1_T = {csa_spec_3_io_out_1, 1'h0}; // @[FDIV.scala 482:40]
  wire  csa_spec_4_io_in_2_signBit = udNegReg_4[55]; // @[FDIV.scala 130:20]
  wire [2:0] _csa_spec_4_io_in_2_T_2 = csa_spec_4_io_in_2_signBit ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _signs2_csa_spec_4_0_io_in_1_T = {csa_spec_4_io_out_1, 1'h0}; // @[FDIV.scala 482:40]
  CSA3_2_1978 signs_csa_sel_0 ( // @[FDIV.scala 453:21]
    .io_in_0(signs_csa_sel_0_io_in_0),
    .io_in_1(signs_csa_sel_0_io_in_1),
    .io_in_2(signs_csa_sel_0_io_in_2),
    .io_out_0(signs_csa_sel_0_io_out_0),
    .io_out_1(signs_csa_sel_0_io_out_1)
  );
  CSA3_2_1978 signs_csa_sel_1 ( // @[FDIV.scala 453:21]
    .io_in_0(signs_csa_sel_1_io_in_0),
    .io_in_1(signs_csa_sel_1_io_in_1),
    .io_in_2(signs_csa_sel_1_io_in_2),
    .io_out_0(signs_csa_sel_1_io_out_0),
    .io_out_1(signs_csa_sel_1_io_out_1)
  );
  CSA3_2_1978 signs_csa_sel_2 ( // @[FDIV.scala 453:21]
    .io_in_0(signs_csa_sel_2_io_in_0),
    .io_in_1(signs_csa_sel_2_io_in_1),
    .io_in_2(signs_csa_sel_2_io_in_2),
    .io_out_0(signs_csa_sel_2_io_out_0),
    .io_out_1(signs_csa_sel_2_io_out_1)
  );
  CSA3_2_1978 signs_csa_sel_3 ( // @[FDIV.scala 453:21]
    .io_in_0(signs_csa_sel_3_io_in_0),
    .io_in_1(signs_csa_sel_3_io_in_1),
    .io_in_2(signs_csa_sel_3_io_in_2),
    .io_out_0(signs_csa_sel_3_io_out_0),
    .io_out_1(signs_csa_sel_3_io_out_1)
  );
  CSA3_2_3367 csa_sel_wide_1 ( // @[FDIV.scala 461:24]
    .io_in_0(csa_sel_wide_1_io_in_0),
    .io_in_1(csa_sel_wide_1_io_in_1),
    .io_in_2(csa_sel_wide_1_io_in_2),
    .io_out_0(csa_sel_wide_1_io_out_0),
    .io_out_1(csa_sel_wide_1_io_out_1)
  );
  CSA3_2_3367 csa_sel_wide_2 ( // @[FDIV.scala 462:24]
    .io_in_0(csa_sel_wide_2_io_in_0),
    .io_in_1(csa_sel_wide_2_io_in_1),
    .io_in_2(csa_sel_wide_2_io_in_2),
    .io_out_0(csa_sel_wide_2_io_out_0),
    .io_out_1(csa_sel_wide_2_io_out_1)
  );
  CSA3_2_1984 csa_spec_0 ( // @[FDIV.scala 475:22]
    .io_in_0(csa_spec_0_io_in_0),
    .io_in_1(csa_spec_0_io_in_1),
    .io_in_2(csa_spec_0_io_in_2),
    .io_out_0(csa_spec_0_io_out_0),
    .io_out_1(csa_spec_0_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_0_0 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_0_0_io_in_0),
    .io_in_1(signs2_csa_spec_0_0_io_in_1),
    .io_in_2(signs2_csa_spec_0_0_io_in_2),
    .io_out_0(signs2_csa_spec_0_0_io_out_0),
    .io_out_1(signs2_csa_spec_0_0_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_0_1 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_0_1_io_in_0),
    .io_in_1(signs2_csa_spec_0_1_io_in_1),
    .io_in_2(signs2_csa_spec_0_1_io_in_2),
    .io_out_0(signs2_csa_spec_0_1_io_out_0),
    .io_out_1(signs2_csa_spec_0_1_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_0_2 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_0_2_io_in_0),
    .io_in_1(signs2_csa_spec_0_2_io_in_1),
    .io_in_2(signs2_csa_spec_0_2_io_in_2),
    .io_out_0(signs2_csa_spec_0_2_io_out_0),
    .io_out_1(signs2_csa_spec_0_2_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_0_3 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_0_3_io_in_0),
    .io_in_1(signs2_csa_spec_0_3_io_in_1),
    .io_in_2(signs2_csa_spec_0_3_io_in_2),
    .io_out_0(signs2_csa_spec_0_3_io_out_0),
    .io_out_1(signs2_csa_spec_0_3_io_out_1)
  );
  CSA3_2_1984 csa_spec_1 ( // @[FDIV.scala 475:22]
    .io_in_0(csa_spec_1_io_in_0),
    .io_in_1(csa_spec_1_io_in_1),
    .io_in_2(csa_spec_1_io_in_2),
    .io_out_0(csa_spec_1_io_out_0),
    .io_out_1(csa_spec_1_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_1_0 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_1_0_io_in_0),
    .io_in_1(signs2_csa_spec_1_0_io_in_1),
    .io_in_2(signs2_csa_spec_1_0_io_in_2),
    .io_out_0(signs2_csa_spec_1_0_io_out_0),
    .io_out_1(signs2_csa_spec_1_0_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_1_1 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_1_1_io_in_0),
    .io_in_1(signs2_csa_spec_1_1_io_in_1),
    .io_in_2(signs2_csa_spec_1_1_io_in_2),
    .io_out_0(signs2_csa_spec_1_1_io_out_0),
    .io_out_1(signs2_csa_spec_1_1_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_1_2 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_1_2_io_in_0),
    .io_in_1(signs2_csa_spec_1_2_io_in_1),
    .io_in_2(signs2_csa_spec_1_2_io_in_2),
    .io_out_0(signs2_csa_spec_1_2_io_out_0),
    .io_out_1(signs2_csa_spec_1_2_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_1_3 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_1_3_io_in_0),
    .io_in_1(signs2_csa_spec_1_3_io_in_1),
    .io_in_2(signs2_csa_spec_1_3_io_in_2),
    .io_out_0(signs2_csa_spec_1_3_io_out_0),
    .io_out_1(signs2_csa_spec_1_3_io_out_1)
  );
  CSA3_2_1984 csa_spec_2 ( // @[FDIV.scala 475:22]
    .io_in_0(csa_spec_2_io_in_0),
    .io_in_1(csa_spec_2_io_in_1),
    .io_in_2(csa_spec_2_io_in_2),
    .io_out_0(csa_spec_2_io_out_0),
    .io_out_1(csa_spec_2_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_2_0 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_2_0_io_in_0),
    .io_in_1(signs2_csa_spec_2_0_io_in_1),
    .io_in_2(signs2_csa_spec_2_0_io_in_2),
    .io_out_0(signs2_csa_spec_2_0_io_out_0),
    .io_out_1(signs2_csa_spec_2_0_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_2_1 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_2_1_io_in_0),
    .io_in_1(signs2_csa_spec_2_1_io_in_1),
    .io_in_2(signs2_csa_spec_2_1_io_in_2),
    .io_out_0(signs2_csa_spec_2_1_io_out_0),
    .io_out_1(signs2_csa_spec_2_1_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_2_2 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_2_2_io_in_0),
    .io_in_1(signs2_csa_spec_2_2_io_in_1),
    .io_in_2(signs2_csa_spec_2_2_io_in_2),
    .io_out_0(signs2_csa_spec_2_2_io_out_0),
    .io_out_1(signs2_csa_spec_2_2_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_2_3 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_2_3_io_in_0),
    .io_in_1(signs2_csa_spec_2_3_io_in_1),
    .io_in_2(signs2_csa_spec_2_3_io_in_2),
    .io_out_0(signs2_csa_spec_2_3_io_out_0),
    .io_out_1(signs2_csa_spec_2_3_io_out_1)
  );
  CSA3_2_1984 csa_spec_3 ( // @[FDIV.scala 475:22]
    .io_in_0(csa_spec_3_io_in_0),
    .io_in_1(csa_spec_3_io_in_1),
    .io_in_2(csa_spec_3_io_in_2),
    .io_out_0(csa_spec_3_io_out_0),
    .io_out_1(csa_spec_3_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_3_0 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_3_0_io_in_0),
    .io_in_1(signs2_csa_spec_3_0_io_in_1),
    .io_in_2(signs2_csa_spec_3_0_io_in_2),
    .io_out_0(signs2_csa_spec_3_0_io_out_0),
    .io_out_1(signs2_csa_spec_3_0_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_3_1 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_3_1_io_in_0),
    .io_in_1(signs2_csa_spec_3_1_io_in_1),
    .io_in_2(signs2_csa_spec_3_1_io_in_2),
    .io_out_0(signs2_csa_spec_3_1_io_out_0),
    .io_out_1(signs2_csa_spec_3_1_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_3_2 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_3_2_io_in_0),
    .io_in_1(signs2_csa_spec_3_2_io_in_1),
    .io_in_2(signs2_csa_spec_3_2_io_in_2),
    .io_out_0(signs2_csa_spec_3_2_io_out_0),
    .io_out_1(signs2_csa_spec_3_2_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_3_3 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_3_3_io_in_0),
    .io_in_1(signs2_csa_spec_3_3_io_in_1),
    .io_in_2(signs2_csa_spec_3_3_io_in_2),
    .io_out_0(signs2_csa_spec_3_3_io_out_0),
    .io_out_1(signs2_csa_spec_3_3_io_out_1)
  );
  CSA3_2_1984 csa_spec_4 ( // @[FDIV.scala 475:22]
    .io_in_0(csa_spec_4_io_in_0),
    .io_in_1(csa_spec_4_io_in_1),
    .io_in_2(csa_spec_4_io_in_2),
    .io_out_0(csa_spec_4_io_out_0),
    .io_out_1(csa_spec_4_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_4_0 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_4_0_io_in_0),
    .io_in_1(signs2_csa_spec_4_0_io_in_1),
    .io_in_2(signs2_csa_spec_4_0_io_in_2),
    .io_out_0(signs2_csa_spec_4_0_io_out_0),
    .io_out_1(signs2_csa_spec_4_0_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_4_1 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_4_1_io_in_0),
    .io_in_1(signs2_csa_spec_4_1_io_in_1),
    .io_in_2(signs2_csa_spec_4_1_io_in_2),
    .io_out_0(signs2_csa_spec_4_1_io_out_0),
    .io_out_1(signs2_csa_spec_4_1_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_4_2 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_4_2_io_in_0),
    .io_in_1(signs2_csa_spec_4_2_io_in_1),
    .io_in_2(signs2_csa_spec_4_2_io_in_2),
    .io_out_0(signs2_csa_spec_4_2_io_out_0),
    .io_out_1(signs2_csa_spec_4_2_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_4_3 ( // @[FDIV.scala 480:24]
    .io_in_0(signs2_csa_spec_4_3_io_in_0),
    .io_in_1(signs2_csa_spec_4_3_io_in_1),
    .io_in_2(signs2_csa_spec_4_3_io_in_2),
    .io_out_0(signs2_csa_spec_4_3_io_out_0),
    .io_out_1(signs2_csa_spec_4_3_io_out_1)
  );
  assign io_rem = wsReg + wcReg; // @[FDIV.scala 506:19]
  assign io_quot = quotIterReg; // @[FDIV.scala 507:11]
  assign io_quotM1 = quotM1IterReg; // @[FDIV.scala 508:13]
  assign signs_csa_sel_0_io_in_0 = wsReg[56:47]; // @[FDIV.scala 443:16]
  assign signs_csa_sel_0_io_in_1 = wcReg[56:47]; // @[FDIV.scala 444:16]
  assign signs_csa_sel_0_io_in_2 = _signs_csa_sel_0_io_in_2_T_12 | _signs_csa_sel_0_io_in_2_T_9; // @[Mux.scala 27:73]
  assign signs_csa_sel_1_io_in_0 = wsReg[56:47]; // @[FDIV.scala 443:16]
  assign signs_csa_sel_1_io_in_1 = wcReg[56:47]; // @[FDIV.scala 444:16]
  assign signs_csa_sel_1_io_in_2 = _signs_csa_sel_0_io_in_2_T_21 | _signs_csa_sel_0_io_in_2_T_18; // @[Mux.scala 27:73]
  assign signs_csa_sel_2_io_in_0 = wsReg[56:47]; // @[FDIV.scala 443:16]
  assign signs_csa_sel_2_io_in_1 = wcReg[56:47]; // @[FDIV.scala 444:16]
  assign signs_csa_sel_2_io_in_2 = _signs_csa_sel_0_io_in_2_T_30 | _signs_csa_sel_0_io_in_2_T_27; // @[Mux.scala 27:73]
  assign signs_csa_sel_3_io_in_0 = wsReg[56:47]; // @[FDIV.scala 443:16]
  assign signs_csa_sel_3_io_in_1 = wcReg[56:47]; // @[FDIV.scala 444:16]
  assign signs_csa_sel_3_io_in_2 = _signs_csa_sel_0_io_in_2_T_39 | _signs_csa_sel_0_io_in_2_T_36; // @[Mux.scala 27:73]
  assign csa_sel_wide_1_io_in_0 = _csa_sel_wide_1_io_in_0_T[56:0]; // @[FDIV.scala 463:21]
  assign csa_sel_wide_1_io_in_1 = _csa_sel_wide_1_io_in_1_T[56:0]; // @[FDIV.scala 464:21]
  assign csa_sel_wide_1_io_in_2 = _csa_sel_wide_1_io_in_2_T_14[56:0]; // @[FDIV.scala 465:21]
  assign csa_sel_wide_2_io_in_0 = _csa_sel_wide_2_io_in_0_T[56:0]; // @[FDIV.scala 466:21]
  assign csa_sel_wide_2_io_in_1 = _csa_sel_wide_2_io_in_1_T_2[56:0]; // @[FDIV.scala 467:21]
  assign csa_sel_wide_2_io_in_2 = _csa_sel_wide_2_io_in_2_T_14[56:0]; // @[FDIV.scala 468:21]
  assign csa_spec_0_io_in_0 = wsReg[56:44]; // @[FDIV.scala 440:16]
  assign csa_spec_0_io_in_1 = wcReg[56:44]; // @[FDIV.scala 441:16]
  assign csa_spec_0_io_in_2 = {_csa_spec_0_io_in_2_T_2,udNegReg_0[55:46]}; // @[Cat.scala 31:58]
  assign signs2_csa_spec_0_0_io_in_0 = csa_spec_0_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_0_0_io_in_1 = _signs2_csa_spec_0_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_0_0_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_12 | _signs2_csa_spec_0_0_io_in_2_T_9; // @[Mux.scala 27:73]
  assign signs2_csa_spec_0_1_io_in_0 = csa_spec_0_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_0_1_io_in_1 = _signs2_csa_spec_0_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_0_1_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_21 | _signs2_csa_spec_0_0_io_in_2_T_18; // @[Mux.scala 27:73]
  assign signs2_csa_spec_0_2_io_in_0 = csa_spec_0_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_0_2_io_in_1 = _signs2_csa_spec_0_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_0_2_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_30 | _signs2_csa_spec_0_0_io_in_2_T_27; // @[Mux.scala 27:73]
  assign signs2_csa_spec_0_3_io_in_0 = csa_spec_0_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_0_3_io_in_1 = _signs2_csa_spec_0_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_0_3_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_39 | _signs2_csa_spec_0_0_io_in_2_T_36; // @[Mux.scala 27:73]
  assign csa_spec_1_io_in_0 = wsReg[56:44]; // @[FDIV.scala 440:16]
  assign csa_spec_1_io_in_1 = wcReg[56:44]; // @[FDIV.scala 441:16]
  assign csa_spec_1_io_in_2 = {_csa_spec_1_io_in_2_T_2,udNegReg_1[55:46]}; // @[Cat.scala 31:58]
  assign signs2_csa_spec_1_0_io_in_0 = csa_spec_1_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_1_0_io_in_1 = _signs2_csa_spec_1_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_1_0_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_12 | _signs2_csa_spec_0_0_io_in_2_T_9; // @[Mux.scala 27:73]
  assign signs2_csa_spec_1_1_io_in_0 = csa_spec_1_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_1_1_io_in_1 = _signs2_csa_spec_1_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_1_1_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_21 | _signs2_csa_spec_0_0_io_in_2_T_18; // @[Mux.scala 27:73]
  assign signs2_csa_spec_1_2_io_in_0 = csa_spec_1_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_1_2_io_in_1 = _signs2_csa_spec_1_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_1_2_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_30 | _signs2_csa_spec_0_0_io_in_2_T_27; // @[Mux.scala 27:73]
  assign signs2_csa_spec_1_3_io_in_0 = csa_spec_1_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_1_3_io_in_1 = _signs2_csa_spec_1_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_1_3_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_39 | _signs2_csa_spec_0_0_io_in_2_T_36; // @[Mux.scala 27:73]
  assign csa_spec_2_io_in_0 = wsReg[56:44]; // @[FDIV.scala 440:16]
  assign csa_spec_2_io_in_1 = wcReg[56:44]; // @[FDIV.scala 441:16]
  assign csa_spec_2_io_in_2 = 13'h0; // @[Cat.scala 31:58]
  assign signs2_csa_spec_2_0_io_in_0 = csa_spec_2_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_2_0_io_in_1 = _signs2_csa_spec_2_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_2_0_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_12 | _signs2_csa_spec_0_0_io_in_2_T_9; // @[Mux.scala 27:73]
  assign signs2_csa_spec_2_1_io_in_0 = csa_spec_2_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_2_1_io_in_1 = _signs2_csa_spec_2_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_2_1_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_21 | _signs2_csa_spec_0_0_io_in_2_T_18; // @[Mux.scala 27:73]
  assign signs2_csa_spec_2_2_io_in_0 = csa_spec_2_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_2_2_io_in_1 = _signs2_csa_spec_2_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_2_2_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_30 | _signs2_csa_spec_0_0_io_in_2_T_27; // @[Mux.scala 27:73]
  assign signs2_csa_spec_2_3_io_in_0 = csa_spec_2_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_2_3_io_in_1 = _signs2_csa_spec_2_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_2_3_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_39 | _signs2_csa_spec_0_0_io_in_2_T_36; // @[Mux.scala 27:73]
  assign csa_spec_3_io_in_0 = wsReg[56:44]; // @[FDIV.scala 440:16]
  assign csa_spec_3_io_in_1 = wcReg[56:44]; // @[FDIV.scala 441:16]
  assign csa_spec_3_io_in_2 = {_csa_spec_3_io_in_2_T_2,udNegReg_3[55:46]}; // @[Cat.scala 31:58]
  assign signs2_csa_spec_3_0_io_in_0 = csa_spec_3_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_3_0_io_in_1 = _signs2_csa_spec_3_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_3_0_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_12 | _signs2_csa_spec_0_0_io_in_2_T_9; // @[Mux.scala 27:73]
  assign signs2_csa_spec_3_1_io_in_0 = csa_spec_3_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_3_1_io_in_1 = _signs2_csa_spec_3_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_3_1_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_21 | _signs2_csa_spec_0_0_io_in_2_T_18; // @[Mux.scala 27:73]
  assign signs2_csa_spec_3_2_io_in_0 = csa_spec_3_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_3_2_io_in_1 = _signs2_csa_spec_3_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_3_2_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_30 | _signs2_csa_spec_0_0_io_in_2_T_27; // @[Mux.scala 27:73]
  assign signs2_csa_spec_3_3_io_in_0 = csa_spec_3_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_3_3_io_in_1 = _signs2_csa_spec_3_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_3_3_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_39 | _signs2_csa_spec_0_0_io_in_2_T_36; // @[Mux.scala 27:73]
  assign csa_spec_4_io_in_0 = wsReg[56:44]; // @[FDIV.scala 440:16]
  assign csa_spec_4_io_in_1 = wcReg[56:44]; // @[FDIV.scala 441:16]
  assign csa_spec_4_io_in_2 = {_csa_spec_4_io_in_2_T_2,udNegReg_4[55:46]}; // @[Cat.scala 31:58]
  assign signs2_csa_spec_4_0_io_in_0 = csa_spec_4_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_4_0_io_in_1 = _signs2_csa_spec_4_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_4_0_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_12 | _signs2_csa_spec_0_0_io_in_2_T_9; // @[Mux.scala 27:73]
  assign signs2_csa_spec_4_1_io_in_0 = csa_spec_4_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_4_1_io_in_1 = _signs2_csa_spec_4_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_4_1_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_21 | _signs2_csa_spec_0_0_io_in_2_T_18; // @[Mux.scala 27:73]
  assign signs2_csa_spec_4_2_io_in_0 = csa_spec_4_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_4_2_io_in_1 = _signs2_csa_spec_4_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_4_2_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_30 | _signs2_csa_spec_0_0_io_in_2_T_27; // @[Mux.scala 27:73]
  assign signs2_csa_spec_4_3_io_in_0 = csa_spec_4_io_out_0; // @[FDIV.scala 481:21]
  assign signs2_csa_spec_4_3_io_in_1 = _signs2_csa_spec_4_0_io_in_1_T[12:0]; // @[FDIV.scala 482:45]
  assign signs2_csa_spec_4_3_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_39 | _signs2_csa_spec_0_0_io_in_2_T_36; // @[Mux.scala 27:73]
  always @(posedge clock) begin
    if (_qPrevReg_T_4) begin // @[Reg.scala 17:18]
      if (io_state[0]) begin // @[FDIV.scala 416:31]
        if (smallerThanM1) begin // @[FDIV.scala 381:18]
          qPrevReg <= 8'h4;
        end else if (smallerThanM2) begin // @[FDIV.scala 381:55]
          qPrevReg <= 8'h8;
        end else begin
          qPrevReg <= 8'h10;
        end
      end else begin
        qPrevReg <= {{3'd0}, qNext2};
      end
    end
    if (_qPrevReg_T_4) begin // @[Reg.scala 17:18]
      if (io_state[0]) begin // @[FDIV.scala 417:28]
        if (io_sigCmp) begin // @[FDIV.scala 373:19]
          wsReg <= _wsInit_T;
        end else begin
          wsReg <= _wsInit_T_1;
        end
      end else if (io_lastIterDoHalf) begin // @[FDIV.scala 469:16]
        wsReg <= csa_sel_wide_1_io_out_0;
      end else begin
        wsReg <= csa_sel_wide_2_io_out_0;
      end
    end
    if (_qPrevReg_T_4) begin // @[Reg.scala 17:18]
      if (io_state[0]) begin // @[FDIV.scala 418:28]
        wcReg <= 57'h0;
      end else if (io_lastIterDoHalf) begin // @[FDIV.scala 470:16]
        wcReg <= _wcIter_T[56:0];
      end else begin
        wcReg <= _wcIter_T_2[56:0];
      end
    end
    if (_qPrevReg_T_4) begin // @[Reg.scala 17:18]
      if (io_state[1]) begin // @[FDIV.scala 503:18]
        if (io_lastIterDoHalf) begin // @[FDIV.scala 500:22]
          quotIterReg <= quotHalfIter;
        end else begin
          quotIterReg <= quotIterNext_quotNext[54:0];
        end
      end else begin
        quotIterReg <= 55'h0;
      end
    end
    if (_qPrevReg_T_4) begin // @[Reg.scala 17:18]
      if (io_state[1]) begin // @[FDIV.scala 504:20]
        if (io_lastIterDoHalf) begin // @[FDIV.scala 501:24]
          quotM1IterReg <= quotM1HalfIter;
        end else begin
          quotM1IterReg <= quotM1IterNext_quotM1Next[54:0];
        end
      end else begin
        quotM1IterReg <= 55'h0;
      end
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      udNegReg_0 <= udNeg_0; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      udNegReg_1 <= udNeg_1; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      udNegReg_3 <= udNeg_3; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      udNegReg_4 <= udNeg_4; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_0_0 <= rudPmNeg_0_0; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_0_1 <= rudPmNeg_0_1; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_0_2 <= rudPmNeg_0_2; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_0_3 <= rudPmNeg_0_3; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_1_0 <= rudPmNeg_1_0; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_1_1 <= rudPmNeg_1_1; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_1_2 <= rudPmNeg_1_2; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_1_3 <= rudPmNeg_1_3; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_2_0 <= rudPmNeg_2_0; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_2_1 <= rudPmNeg_2_1; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_2_2 <= rudPmNeg_2_2; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_2_3 <= rudPmNeg_2_3; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_3_0 <= rudPmNeg_3_0; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_3_1 <= rudPmNeg_3_1; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_3_2 <= rudPmNeg_3_2; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_3_3 <= rudPmNeg_3_3; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_4_0 <= rudPmNeg_4_0; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_4_1 <= rudPmNeg_4_1; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_4_2 <= rudPmNeg_4_2; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_4_3 <= rudPmNeg_4_3; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_0_0 <= r2udPmNeg_0_0; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_0_1 <= r2udPmNeg_0_1; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_0_2 <= r2udPmNeg_0_2; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_0_3 <= r2udPmNeg_0_3; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_1_0 <= r2udPmNeg_1_0; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_1_1 <= r2udPmNeg_1_1; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_1_2 <= r2udPmNeg_1_2; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_1_3 <= r2udPmNeg_1_3; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_2_0 <= r2udPmNeg_2_0; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_2_1 <= r2udPmNeg_2_1; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_2_2 <= r2udPmNeg_2_2; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_2_3 <= r2udPmNeg_2_3; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_3_0 <= r2udPmNeg_3_0; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_3_1 <= r2udPmNeg_3_1; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_3_2 <= r2udPmNeg_3_2; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_3_3 <= r2udPmNeg_3_3; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_4_0 <= r2udPmNeg_4_0; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_4_1 <= r2udPmNeg_4_1; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_4_2 <= r2udPmNeg_4_2; // @[Reg.scala 17:22]
    end
    if (io_state[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_4_3 <= r2udPmNeg_4_3; // @[Reg.scala 17:22]
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
  qPrevReg = _RAND_0[7:0];
  _RAND_1 = {2{`RANDOM}};
  wsReg = _RAND_1[56:0];
  _RAND_2 = {2{`RANDOM}};
  wcReg = _RAND_2[56:0];
  _RAND_3 = {2{`RANDOM}};
  quotIterReg = _RAND_3[54:0];
  _RAND_4 = {2{`RANDOM}};
  quotM1IterReg = _RAND_4[54:0];
  _RAND_5 = {2{`RANDOM}};
  udNegReg_0 = _RAND_5[56:0];
  _RAND_6 = {2{`RANDOM}};
  udNegReg_1 = _RAND_6[56:0];
  _RAND_7 = {2{`RANDOM}};
  udNegReg_3 = _RAND_7[56:0];
  _RAND_8 = {2{`RANDOM}};
  udNegReg_4 = _RAND_8[56:0];
  _RAND_9 = {1{`RANDOM}};
  rudPmNegReg_0_0 = _RAND_9[9:0];
  _RAND_10 = {1{`RANDOM}};
  rudPmNegReg_0_1 = _RAND_10[9:0];
  _RAND_11 = {1{`RANDOM}};
  rudPmNegReg_0_2 = _RAND_11[9:0];
  _RAND_12 = {1{`RANDOM}};
  rudPmNegReg_0_3 = _RAND_12[9:0];
  _RAND_13 = {1{`RANDOM}};
  rudPmNegReg_1_0 = _RAND_13[9:0];
  _RAND_14 = {1{`RANDOM}};
  rudPmNegReg_1_1 = _RAND_14[9:0];
  _RAND_15 = {1{`RANDOM}};
  rudPmNegReg_1_2 = _RAND_15[9:0];
  _RAND_16 = {1{`RANDOM}};
  rudPmNegReg_1_3 = _RAND_16[9:0];
  _RAND_17 = {1{`RANDOM}};
  rudPmNegReg_2_0 = _RAND_17[9:0];
  _RAND_18 = {1{`RANDOM}};
  rudPmNegReg_2_1 = _RAND_18[9:0];
  _RAND_19 = {1{`RANDOM}};
  rudPmNegReg_2_2 = _RAND_19[9:0];
  _RAND_20 = {1{`RANDOM}};
  rudPmNegReg_2_3 = _RAND_20[9:0];
  _RAND_21 = {1{`RANDOM}};
  rudPmNegReg_3_0 = _RAND_21[9:0];
  _RAND_22 = {1{`RANDOM}};
  rudPmNegReg_3_1 = _RAND_22[9:0];
  _RAND_23 = {1{`RANDOM}};
  rudPmNegReg_3_2 = _RAND_23[9:0];
  _RAND_24 = {1{`RANDOM}};
  rudPmNegReg_3_3 = _RAND_24[9:0];
  _RAND_25 = {1{`RANDOM}};
  rudPmNegReg_4_0 = _RAND_25[9:0];
  _RAND_26 = {1{`RANDOM}};
  rudPmNegReg_4_1 = _RAND_26[9:0];
  _RAND_27 = {1{`RANDOM}};
  rudPmNegReg_4_2 = _RAND_27[9:0];
  _RAND_28 = {1{`RANDOM}};
  rudPmNegReg_4_3 = _RAND_28[9:0];
  _RAND_29 = {1{`RANDOM}};
  r2udPmNegReg_0_0 = _RAND_29[12:0];
  _RAND_30 = {1{`RANDOM}};
  r2udPmNegReg_0_1 = _RAND_30[12:0];
  _RAND_31 = {1{`RANDOM}};
  r2udPmNegReg_0_2 = _RAND_31[12:0];
  _RAND_32 = {1{`RANDOM}};
  r2udPmNegReg_0_3 = _RAND_32[12:0];
  _RAND_33 = {1{`RANDOM}};
  r2udPmNegReg_1_0 = _RAND_33[12:0];
  _RAND_34 = {1{`RANDOM}};
  r2udPmNegReg_1_1 = _RAND_34[12:0];
  _RAND_35 = {1{`RANDOM}};
  r2udPmNegReg_1_2 = _RAND_35[12:0];
  _RAND_36 = {1{`RANDOM}};
  r2udPmNegReg_1_3 = _RAND_36[12:0];
  _RAND_37 = {1{`RANDOM}};
  r2udPmNegReg_2_0 = _RAND_37[12:0];
  _RAND_38 = {1{`RANDOM}};
  r2udPmNegReg_2_1 = _RAND_38[12:0];
  _RAND_39 = {1{`RANDOM}};
  r2udPmNegReg_2_2 = _RAND_39[12:0];
  _RAND_40 = {1{`RANDOM}};
  r2udPmNegReg_2_3 = _RAND_40[12:0];
  _RAND_41 = {1{`RANDOM}};
  r2udPmNegReg_3_0 = _RAND_41[12:0];
  _RAND_42 = {1{`RANDOM}};
  r2udPmNegReg_3_1 = _RAND_42[12:0];
  _RAND_43 = {1{`RANDOM}};
  r2udPmNegReg_3_2 = _RAND_43[12:0];
  _RAND_44 = {1{`RANDOM}};
  r2udPmNegReg_3_3 = _RAND_44[12:0];
  _RAND_45 = {1{`RANDOM}};
  r2udPmNegReg_4_0 = _RAND_45[12:0];
  _RAND_46 = {1{`RANDOM}};
  r2udPmNegReg_4_1 = _RAND_46[12:0];
  _RAND_47 = {1{`RANDOM}};
  r2udPmNegReg_4_2 = _RAND_47[12:0];
  _RAND_48 = {1{`RANDOM}};
  r2udPmNegReg_4_3 = _RAND_48[12:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

