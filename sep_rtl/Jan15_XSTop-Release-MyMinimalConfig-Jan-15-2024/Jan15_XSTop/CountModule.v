module CountModule(
  input         clock,
  input  [63:0] io_src,
  input  [6:0]  io_func,
  input         io_regEnable,
  output [63:0] io_out
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
  wire [63:0] _GEN_13 = {{32'd0}, io_src[63:32]}; // @[Bitwise.scala 105:31]
  wire [63:0] _countSrc_T_4 = _GEN_13 & 64'hffffffff; // @[Bitwise.scala 105:31]
  wire [63:0] _countSrc_T_6 = {io_src[31:0], 32'h0}; // @[Bitwise.scala 105:70]
  wire [63:0] _countSrc_T_8 = _countSrc_T_6 & 64'hffffffff00000000; // @[Bitwise.scala 105:80]
  wire [63:0] _countSrc_T_9 = _countSrc_T_4 | _countSrc_T_8; // @[Bitwise.scala 105:39]
  wire [63:0] _GEN_14 = {{16'd0}, _countSrc_T_9[63:16]}; // @[Bitwise.scala 105:31]
  wire [63:0] _countSrc_T_14 = _GEN_14 & 64'hffff0000ffff; // @[Bitwise.scala 105:31]
  wire [63:0] _countSrc_T_16 = {_countSrc_T_9[47:0], 16'h0}; // @[Bitwise.scala 105:70]
  wire [63:0] _countSrc_T_18 = _countSrc_T_16 & 64'hffff0000ffff0000; // @[Bitwise.scala 105:80]
  wire [63:0] _countSrc_T_19 = _countSrc_T_14 | _countSrc_T_18; // @[Bitwise.scala 105:39]
  wire [63:0] _GEN_15 = {{8'd0}, _countSrc_T_19[63:8]}; // @[Bitwise.scala 105:31]
  wire [63:0] _countSrc_T_24 = _GEN_15 & 64'hff00ff00ff00ff; // @[Bitwise.scala 105:31]
  wire [63:0] _countSrc_T_26 = {_countSrc_T_19[55:0], 8'h0}; // @[Bitwise.scala 105:70]
  wire [63:0] _countSrc_T_28 = _countSrc_T_26 & 64'hff00ff00ff00ff00; // @[Bitwise.scala 105:80]
  wire [63:0] _countSrc_T_29 = _countSrc_T_24 | _countSrc_T_28; // @[Bitwise.scala 105:39]
  wire [63:0] _GEN_16 = {{4'd0}, _countSrc_T_29[63:4]}; // @[Bitwise.scala 105:31]
  wire [63:0] _countSrc_T_34 = _GEN_16 & 64'hf0f0f0f0f0f0f0f; // @[Bitwise.scala 105:31]
  wire [63:0] _countSrc_T_36 = {_countSrc_T_29[59:0], 4'h0}; // @[Bitwise.scala 105:70]
  wire [63:0] _countSrc_T_38 = _countSrc_T_36 & 64'hf0f0f0f0f0f0f0f0; // @[Bitwise.scala 105:80]
  wire [63:0] _countSrc_T_39 = _countSrc_T_34 | _countSrc_T_38; // @[Bitwise.scala 105:39]
  wire [63:0] _GEN_17 = {{2'd0}, _countSrc_T_39[63:2]}; // @[Bitwise.scala 105:31]
  wire [63:0] _countSrc_T_44 = _GEN_17 & 64'h3333333333333333; // @[Bitwise.scala 105:31]
  wire [63:0] _countSrc_T_46 = {_countSrc_T_39[61:0], 2'h0}; // @[Bitwise.scala 105:70]
  wire [63:0] _countSrc_T_48 = _countSrc_T_46 & 64'hcccccccccccccccc; // @[Bitwise.scala 105:80]
  wire [63:0] _countSrc_T_49 = _countSrc_T_44 | _countSrc_T_48; // @[Bitwise.scala 105:39]
  wire [63:0] _GEN_18 = {{1'd0}, _countSrc_T_49[63:1]}; // @[Bitwise.scala 105:31]
  wire [63:0] _countSrc_T_54 = _GEN_18 & 64'h5555555555555555; // @[Bitwise.scala 105:31]
  wire [63:0] _countSrc_T_56 = {_countSrc_T_49[62:0], 1'h0}; // @[Bitwise.scala 105:70]
  wire [63:0] _countSrc_T_58 = _countSrc_T_56 & 64'haaaaaaaaaaaaaaaa; // @[Bitwise.scala 105:80]
  wire [63:0] _countSrc_T_59 = _countSrc_T_54 | _countSrc_T_58; // @[Bitwise.scala 105:39]
  wire [63:0] countSrc = io_func[1] ? _countSrc_T_59 : io_src; // @[Bku.scala 50:21]
  wire [1:0] _c0_0_T_2 = 2'h0 == countSrc[1:0] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_0 = 2'h1 == countSrc[1:0] ? 2'h1 : _c0_0_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_1_T_2 = 2'h0 == countSrc[3:2] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_1 = 2'h1 == countSrc[3:2] ? 2'h1 : _c0_1_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_2_T_2 = 2'h0 == countSrc[5:4] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_2 = 2'h1 == countSrc[5:4] ? 2'h1 : _c0_2_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_3_T_2 = 2'h0 == countSrc[7:6] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_3 = 2'h1 == countSrc[7:6] ? 2'h1 : _c0_3_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_4_T_2 = 2'h0 == countSrc[9:8] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_4 = 2'h1 == countSrc[9:8] ? 2'h1 : _c0_4_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_5_T_2 = 2'h0 == countSrc[11:10] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_5 = 2'h1 == countSrc[11:10] ? 2'h1 : _c0_5_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_6_T_2 = 2'h0 == countSrc[13:12] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_6 = 2'h1 == countSrc[13:12] ? 2'h1 : _c0_6_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_7_T_2 = 2'h0 == countSrc[15:14] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_7 = 2'h1 == countSrc[15:14] ? 2'h1 : _c0_7_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_8_T_2 = 2'h0 == countSrc[17:16] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_8 = 2'h1 == countSrc[17:16] ? 2'h1 : _c0_8_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_9_T_2 = 2'h0 == countSrc[19:18] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_9 = 2'h1 == countSrc[19:18] ? 2'h1 : _c0_9_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_10_T_2 = 2'h0 == countSrc[21:20] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_10 = 2'h1 == countSrc[21:20] ? 2'h1 : _c0_10_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_11_T_2 = 2'h0 == countSrc[23:22] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_11 = 2'h1 == countSrc[23:22] ? 2'h1 : _c0_11_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_12_T_2 = 2'h0 == countSrc[25:24] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_12 = 2'h1 == countSrc[25:24] ? 2'h1 : _c0_12_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_13_T_2 = 2'h0 == countSrc[27:26] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_13 = 2'h1 == countSrc[27:26] ? 2'h1 : _c0_13_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_14_T_2 = 2'h0 == countSrc[29:28] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_14 = 2'h1 == countSrc[29:28] ? 2'h1 : _c0_14_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_15_T_2 = 2'h0 == countSrc[31:30] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_15 = 2'h1 == countSrc[31:30] ? 2'h1 : _c0_15_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_16_T_2 = 2'h0 == countSrc[33:32] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_16 = 2'h1 == countSrc[33:32] ? 2'h1 : _c0_16_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_17_T_2 = 2'h0 == countSrc[35:34] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_17 = 2'h1 == countSrc[35:34] ? 2'h1 : _c0_17_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_18_T_2 = 2'h0 == countSrc[37:36] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_18 = 2'h1 == countSrc[37:36] ? 2'h1 : _c0_18_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_19_T_2 = 2'h0 == countSrc[39:38] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_19 = 2'h1 == countSrc[39:38] ? 2'h1 : _c0_19_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_20_T_2 = 2'h0 == countSrc[41:40] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_20 = 2'h1 == countSrc[41:40] ? 2'h1 : _c0_20_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_21_T_2 = 2'h0 == countSrc[43:42] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_21 = 2'h1 == countSrc[43:42] ? 2'h1 : _c0_21_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_22_T_2 = 2'h0 == countSrc[45:44] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_22 = 2'h1 == countSrc[45:44] ? 2'h1 : _c0_22_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_23_T_2 = 2'h0 == countSrc[47:46] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_23 = 2'h1 == countSrc[47:46] ? 2'h1 : _c0_23_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_24_T_2 = 2'h0 == countSrc[49:48] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_24 = 2'h1 == countSrc[49:48] ? 2'h1 : _c0_24_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_25_T_2 = 2'h0 == countSrc[51:50] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_25 = 2'h1 == countSrc[51:50] ? 2'h1 : _c0_25_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_26_T_2 = 2'h0 == countSrc[53:52] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_26 = 2'h1 == countSrc[53:52] ? 2'h1 : _c0_26_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_27_T_2 = 2'h0 == countSrc[55:54] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_27 = 2'h1 == countSrc[55:54] ? 2'h1 : _c0_27_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_28_T_2 = 2'h0 == countSrc[57:56] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_28 = 2'h1 == countSrc[57:56] ? 2'h1 : _c0_28_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_29_T_2 = 2'h0 == countSrc[59:58] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_29 = 2'h1 == countSrc[59:58] ? 2'h1 : _c0_29_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_30_T_2 = 2'h0 == countSrc[61:60] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_30 = 2'h1 == countSrc[61:60] ? 2'h1 : _c0_30_T_2; // @[Mux.scala 81:58]
  wire [1:0] _c0_31_T_2 = 2'h0 == countSrc[63:62] ? 2'h2 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] c0_31 = 2'h1 == countSrc[63:62] ? 2'h1 : _c0_31_T_2; // @[Mux.scala 81:58]
  wire  _c1_0_T_3 = c0_1[1] & c0_0[1]; // @[Bku.scala 43:21]
  wire  _c1_0_T_5 = ~c0_0[1]; // @[Bku.scala 43:36]
  wire [2:0] _c1_0_T_7 = {_c1_0_T_3,_c1_0_T_5,c0_0[0]}; // @[Cat.scala 31:58]
  wire [2:0] c1_0 = c0_1[1] ? _c1_0_T_7 : {{1'd0}, c0_1}; // @[Bku.scala 42:8]
  wire  _c1_1_T_3 = c0_3[1] & c0_2[1]; // @[Bku.scala 43:21]
  wire  _c1_1_T_5 = ~c0_2[1]; // @[Bku.scala 43:36]
  wire [2:0] _c1_1_T_7 = {_c1_1_T_3,_c1_1_T_5,c0_2[0]}; // @[Cat.scala 31:58]
  wire [2:0] c1_1 = c0_3[1] ? _c1_1_T_7 : {{1'd0}, c0_3}; // @[Bku.scala 42:8]
  wire  _c1_2_T_3 = c0_5[1] & c0_4[1]; // @[Bku.scala 43:21]
  wire  _c1_2_T_5 = ~c0_4[1]; // @[Bku.scala 43:36]
  wire [2:0] _c1_2_T_7 = {_c1_2_T_3,_c1_2_T_5,c0_4[0]}; // @[Cat.scala 31:58]
  wire [2:0] c1_2 = c0_5[1] ? _c1_2_T_7 : {{1'd0}, c0_5}; // @[Bku.scala 42:8]
  wire  _c1_3_T_3 = c0_7[1] & c0_6[1]; // @[Bku.scala 43:21]
  wire  _c1_3_T_5 = ~c0_6[1]; // @[Bku.scala 43:36]
  wire [2:0] _c1_3_T_7 = {_c1_3_T_3,_c1_3_T_5,c0_6[0]}; // @[Cat.scala 31:58]
  wire [2:0] c1_3 = c0_7[1] ? _c1_3_T_7 : {{1'd0}, c0_7}; // @[Bku.scala 42:8]
  wire  _c1_4_T_3 = c0_9[1] & c0_8[1]; // @[Bku.scala 43:21]
  wire  _c1_4_T_5 = ~c0_8[1]; // @[Bku.scala 43:36]
  wire [2:0] _c1_4_T_7 = {_c1_4_T_3,_c1_4_T_5,c0_8[0]}; // @[Cat.scala 31:58]
  wire [2:0] c1_4 = c0_9[1] ? _c1_4_T_7 : {{1'd0}, c0_9}; // @[Bku.scala 42:8]
  wire  _c1_5_T_3 = c0_11[1] & c0_10[1]; // @[Bku.scala 43:21]
  wire  _c1_5_T_5 = ~c0_10[1]; // @[Bku.scala 43:36]
  wire [2:0] _c1_5_T_7 = {_c1_5_T_3,_c1_5_T_5,c0_10[0]}; // @[Cat.scala 31:58]
  wire [2:0] c1_5 = c0_11[1] ? _c1_5_T_7 : {{1'd0}, c0_11}; // @[Bku.scala 42:8]
  wire  _c1_6_T_3 = c0_13[1] & c0_12[1]; // @[Bku.scala 43:21]
  wire  _c1_6_T_5 = ~c0_12[1]; // @[Bku.scala 43:36]
  wire [2:0] _c1_6_T_7 = {_c1_6_T_3,_c1_6_T_5,c0_12[0]}; // @[Cat.scala 31:58]
  wire [2:0] c1_6 = c0_13[1] ? _c1_6_T_7 : {{1'd0}, c0_13}; // @[Bku.scala 42:8]
  wire  _c1_7_T_3 = c0_15[1] & c0_14[1]; // @[Bku.scala 43:21]
  wire  _c1_7_T_5 = ~c0_14[1]; // @[Bku.scala 43:36]
  wire [2:0] _c1_7_T_7 = {_c1_7_T_3,_c1_7_T_5,c0_14[0]}; // @[Cat.scala 31:58]
  wire [2:0] c1_7 = c0_15[1] ? _c1_7_T_7 : {{1'd0}, c0_15}; // @[Bku.scala 42:8]
  wire  _c1_8_T_3 = c0_17[1] & c0_16[1]; // @[Bku.scala 43:21]
  wire  _c1_8_T_5 = ~c0_16[1]; // @[Bku.scala 43:36]
  wire [2:0] _c1_8_T_7 = {_c1_8_T_3,_c1_8_T_5,c0_16[0]}; // @[Cat.scala 31:58]
  wire [2:0] c1_8 = c0_17[1] ? _c1_8_T_7 : {{1'd0}, c0_17}; // @[Bku.scala 42:8]
  wire  _c1_9_T_3 = c0_19[1] & c0_18[1]; // @[Bku.scala 43:21]
  wire  _c1_9_T_5 = ~c0_18[1]; // @[Bku.scala 43:36]
  wire [2:0] _c1_9_T_7 = {_c1_9_T_3,_c1_9_T_5,c0_18[0]}; // @[Cat.scala 31:58]
  wire [2:0] c1_9 = c0_19[1] ? _c1_9_T_7 : {{1'd0}, c0_19}; // @[Bku.scala 42:8]
  wire  _c1_10_T_3 = c0_21[1] & c0_20[1]; // @[Bku.scala 43:21]
  wire  _c1_10_T_5 = ~c0_20[1]; // @[Bku.scala 43:36]
  wire [2:0] _c1_10_T_7 = {_c1_10_T_3,_c1_10_T_5,c0_20[0]}; // @[Cat.scala 31:58]
  wire [2:0] c1_10 = c0_21[1] ? _c1_10_T_7 : {{1'd0}, c0_21}; // @[Bku.scala 42:8]
  wire  _c1_11_T_3 = c0_23[1] & c0_22[1]; // @[Bku.scala 43:21]
  wire  _c1_11_T_5 = ~c0_22[1]; // @[Bku.scala 43:36]
  wire [2:0] _c1_11_T_7 = {_c1_11_T_3,_c1_11_T_5,c0_22[0]}; // @[Cat.scala 31:58]
  wire [2:0] c1_11 = c0_23[1] ? _c1_11_T_7 : {{1'd0}, c0_23}; // @[Bku.scala 42:8]
  wire  _c1_12_T_3 = c0_25[1] & c0_24[1]; // @[Bku.scala 43:21]
  wire  _c1_12_T_5 = ~c0_24[1]; // @[Bku.scala 43:36]
  wire [2:0] _c1_12_T_7 = {_c1_12_T_3,_c1_12_T_5,c0_24[0]}; // @[Cat.scala 31:58]
  wire [2:0] c1_12 = c0_25[1] ? _c1_12_T_7 : {{1'd0}, c0_25}; // @[Bku.scala 42:8]
  wire  _c1_13_T_3 = c0_27[1] & c0_26[1]; // @[Bku.scala 43:21]
  wire  _c1_13_T_5 = ~c0_26[1]; // @[Bku.scala 43:36]
  wire [2:0] _c1_13_T_7 = {_c1_13_T_3,_c1_13_T_5,c0_26[0]}; // @[Cat.scala 31:58]
  wire [2:0] c1_13 = c0_27[1] ? _c1_13_T_7 : {{1'd0}, c0_27}; // @[Bku.scala 42:8]
  wire  _c1_14_T_3 = c0_29[1] & c0_28[1]; // @[Bku.scala 43:21]
  wire  _c1_14_T_5 = ~c0_28[1]; // @[Bku.scala 43:36]
  wire [2:0] _c1_14_T_7 = {_c1_14_T_3,_c1_14_T_5,c0_28[0]}; // @[Cat.scala 31:58]
  wire [2:0] c1_14 = c0_29[1] ? _c1_14_T_7 : {{1'd0}, c0_29}; // @[Bku.scala 42:8]
  wire  _c1_15_T_3 = c0_31[1] & c0_30[1]; // @[Bku.scala 43:21]
  wire  _c1_15_T_5 = ~c0_30[1]; // @[Bku.scala 43:36]
  wire [2:0] _c1_15_T_7 = {_c1_15_T_3,_c1_15_T_5,c0_30[0]}; // @[Cat.scala 31:58]
  wire [2:0] c1_15 = c0_31[1] ? _c1_15_T_7 : {{1'd0}, c0_31}; // @[Bku.scala 42:8]
  reg [6:0] funcReg; // @[Reg.scala 16:16]
  reg [3:0] c2_0; // @[Bku.scala 57:15]
  reg [3:0] c2_1; // @[Bku.scala 57:15]
  reg [3:0] c2_2; // @[Bku.scala 57:15]
  reg [3:0] c2_3; // @[Bku.scala 57:15]
  reg [3:0] c2_4; // @[Bku.scala 57:15]
  reg [3:0] c2_5; // @[Bku.scala 57:15]
  reg [3:0] c2_6; // @[Bku.scala 57:15]
  reg [3:0] c2_7; // @[Bku.scala 57:15]
  reg [4:0] cpopTmp_0; // @[Bku.scala 58:20]
  reg [4:0] cpopTmp_1; // @[Bku.scala 58:20]
  reg [4:0] cpopTmp_2; // @[Bku.scala 58:20]
  reg [4:0] cpopTmp_3; // @[Bku.scala 58:20]
  wire  _c2_0_T_3 = c1_1[2] & c1_0[2]; // @[Bku.scala 43:21]
  wire  _c2_0_T_5 = ~c1_0[2]; // @[Bku.scala 43:36]
  wire [3:0] _c2_0_T_7 = {_c2_0_T_3,_c2_0_T_5,c1_0[1:0]}; // @[Cat.scala 31:58]
  wire  _c2_1_T_3 = c1_3[2] & c1_2[2]; // @[Bku.scala 43:21]
  wire  _c2_1_T_5 = ~c1_2[2]; // @[Bku.scala 43:36]
  wire [3:0] _c2_1_T_7 = {_c2_1_T_3,_c2_1_T_5,c1_2[1:0]}; // @[Cat.scala 31:58]
  wire  _c2_2_T_3 = c1_5[2] & c1_4[2]; // @[Bku.scala 43:21]
  wire  _c2_2_T_5 = ~c1_4[2]; // @[Bku.scala 43:36]
  wire [3:0] _c2_2_T_7 = {_c2_2_T_3,_c2_2_T_5,c1_4[1:0]}; // @[Cat.scala 31:58]
  wire  _c2_3_T_3 = c1_7[2] & c1_6[2]; // @[Bku.scala 43:21]
  wire  _c2_3_T_5 = ~c1_6[2]; // @[Bku.scala 43:36]
  wire [3:0] _c2_3_T_7 = {_c2_3_T_3,_c2_3_T_5,c1_6[1:0]}; // @[Cat.scala 31:58]
  wire  _c2_4_T_3 = c1_9[2] & c1_8[2]; // @[Bku.scala 43:21]
  wire  _c2_4_T_5 = ~c1_8[2]; // @[Bku.scala 43:36]
  wire [3:0] _c2_4_T_7 = {_c2_4_T_3,_c2_4_T_5,c1_8[1:0]}; // @[Cat.scala 31:58]
  wire  _c2_5_T_3 = c1_11[2] & c1_10[2]; // @[Bku.scala 43:21]
  wire  _c2_5_T_5 = ~c1_10[2]; // @[Bku.scala 43:36]
  wire [3:0] _c2_5_T_7 = {_c2_5_T_3,_c2_5_T_5,c1_10[1:0]}; // @[Cat.scala 31:58]
  wire  _c2_6_T_3 = c1_13[2] & c1_12[2]; // @[Bku.scala 43:21]
  wire  _c2_6_T_5 = ~c1_12[2]; // @[Bku.scala 43:36]
  wire [3:0] _c2_6_T_7 = {_c2_6_T_3,_c2_6_T_5,c1_12[1:0]}; // @[Cat.scala 31:58]
  wire  _c2_7_T_3 = c1_15[2] & c1_14[2]; // @[Bku.scala 43:21]
  wire  _c2_7_T_5 = ~c1_14[2]; // @[Bku.scala 43:36]
  wire [3:0] _c2_7_T_7 = {_c2_7_T_3,_c2_7_T_5,c1_14[1:0]}; // @[Cat.scala 31:58]
  wire [1:0] _cpopTmp_0_T_17 = io_src[0] + io_src[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_0_T_19 = io_src[2] + io_src[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _cpopTmp_0_T_21 = _cpopTmp_0_T_17 + _cpopTmp_0_T_19; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_0_T_23 = io_src[4] + io_src[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_0_T_25 = io_src[6] + io_src[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _cpopTmp_0_T_27 = _cpopTmp_0_T_23 + _cpopTmp_0_T_25; // @[Bitwise.scala 48:55]
  wire [3:0] _cpopTmp_0_T_29 = _cpopTmp_0_T_21 + _cpopTmp_0_T_27; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_0_T_31 = io_src[8] + io_src[9]; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_0_T_33 = io_src[10] + io_src[11]; // @[Bitwise.scala 48:55]
  wire [2:0] _cpopTmp_0_T_35 = _cpopTmp_0_T_31 + _cpopTmp_0_T_33; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_0_T_37 = io_src[12] + io_src[13]; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_0_T_39 = io_src[14] + io_src[15]; // @[Bitwise.scala 48:55]
  wire [2:0] _cpopTmp_0_T_41 = _cpopTmp_0_T_37 + _cpopTmp_0_T_39; // @[Bitwise.scala 48:55]
  wire [3:0] _cpopTmp_0_T_43 = _cpopTmp_0_T_35 + _cpopTmp_0_T_41; // @[Bitwise.scala 48:55]
  wire [4:0] _cpopTmp_0_T_45 = _cpopTmp_0_T_29 + _cpopTmp_0_T_43; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_1_T_17 = io_src[16] + io_src[17]; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_1_T_19 = io_src[18] + io_src[19]; // @[Bitwise.scala 48:55]
  wire [2:0] _cpopTmp_1_T_21 = _cpopTmp_1_T_17 + _cpopTmp_1_T_19; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_1_T_23 = io_src[20] + io_src[21]; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_1_T_25 = io_src[22] + io_src[23]; // @[Bitwise.scala 48:55]
  wire [2:0] _cpopTmp_1_T_27 = _cpopTmp_1_T_23 + _cpopTmp_1_T_25; // @[Bitwise.scala 48:55]
  wire [3:0] _cpopTmp_1_T_29 = _cpopTmp_1_T_21 + _cpopTmp_1_T_27; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_1_T_31 = io_src[24] + io_src[25]; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_1_T_33 = io_src[26] + io_src[27]; // @[Bitwise.scala 48:55]
  wire [2:0] _cpopTmp_1_T_35 = _cpopTmp_1_T_31 + _cpopTmp_1_T_33; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_1_T_37 = io_src[28] + io_src[29]; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_1_T_39 = io_src[30] + io_src[31]; // @[Bitwise.scala 48:55]
  wire [2:0] _cpopTmp_1_T_41 = _cpopTmp_1_T_37 + _cpopTmp_1_T_39; // @[Bitwise.scala 48:55]
  wire [3:0] _cpopTmp_1_T_43 = _cpopTmp_1_T_35 + _cpopTmp_1_T_41; // @[Bitwise.scala 48:55]
  wire [4:0] _cpopTmp_1_T_45 = _cpopTmp_1_T_29 + _cpopTmp_1_T_43; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_2_T_17 = io_src[32] + io_src[33]; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_2_T_19 = io_src[34] + io_src[35]; // @[Bitwise.scala 48:55]
  wire [2:0] _cpopTmp_2_T_21 = _cpopTmp_2_T_17 + _cpopTmp_2_T_19; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_2_T_23 = io_src[36] + io_src[37]; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_2_T_25 = io_src[38] + io_src[39]; // @[Bitwise.scala 48:55]
  wire [2:0] _cpopTmp_2_T_27 = _cpopTmp_2_T_23 + _cpopTmp_2_T_25; // @[Bitwise.scala 48:55]
  wire [3:0] _cpopTmp_2_T_29 = _cpopTmp_2_T_21 + _cpopTmp_2_T_27; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_2_T_31 = io_src[40] + io_src[41]; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_2_T_33 = io_src[42] + io_src[43]; // @[Bitwise.scala 48:55]
  wire [2:0] _cpopTmp_2_T_35 = _cpopTmp_2_T_31 + _cpopTmp_2_T_33; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_2_T_37 = io_src[44] + io_src[45]; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_2_T_39 = io_src[46] + io_src[47]; // @[Bitwise.scala 48:55]
  wire [2:0] _cpopTmp_2_T_41 = _cpopTmp_2_T_37 + _cpopTmp_2_T_39; // @[Bitwise.scala 48:55]
  wire [3:0] _cpopTmp_2_T_43 = _cpopTmp_2_T_35 + _cpopTmp_2_T_41; // @[Bitwise.scala 48:55]
  wire [4:0] _cpopTmp_2_T_45 = _cpopTmp_2_T_29 + _cpopTmp_2_T_43; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_3_T_17 = io_src[48] + io_src[49]; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_3_T_19 = io_src[50] + io_src[51]; // @[Bitwise.scala 48:55]
  wire [2:0] _cpopTmp_3_T_21 = _cpopTmp_3_T_17 + _cpopTmp_3_T_19; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_3_T_23 = io_src[52] + io_src[53]; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_3_T_25 = io_src[54] + io_src[55]; // @[Bitwise.scala 48:55]
  wire [2:0] _cpopTmp_3_T_27 = _cpopTmp_3_T_23 + _cpopTmp_3_T_25; // @[Bitwise.scala 48:55]
  wire [3:0] _cpopTmp_3_T_29 = _cpopTmp_3_T_21 + _cpopTmp_3_T_27; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_3_T_31 = io_src[56] + io_src[57]; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_3_T_33 = io_src[58] + io_src[59]; // @[Bitwise.scala 48:55]
  wire [2:0] _cpopTmp_3_T_35 = _cpopTmp_3_T_31 + _cpopTmp_3_T_33; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_3_T_37 = io_src[60] + io_src[61]; // @[Bitwise.scala 48:55]
  wire [1:0] _cpopTmp_3_T_39 = io_src[62] + io_src[63]; // @[Bitwise.scala 48:55]
  wire [2:0] _cpopTmp_3_T_41 = _cpopTmp_3_T_37 + _cpopTmp_3_T_39; // @[Bitwise.scala 48:55]
  wire [3:0] _cpopTmp_3_T_43 = _cpopTmp_3_T_35 + _cpopTmp_3_T_41; // @[Bitwise.scala 48:55]
  wire [4:0] _cpopTmp_3_T_45 = _cpopTmp_3_T_29 + _cpopTmp_3_T_43; // @[Bitwise.scala 48:55]
  wire  _c3_0_T_3 = c2_1[3] & c2_0[3]; // @[Bku.scala 43:21]
  wire  _c3_0_T_5 = ~c2_0[3]; // @[Bku.scala 43:36]
  wire [4:0] _c3_0_T_7 = {_c3_0_T_3,_c3_0_T_5,c2_0[2:0]}; // @[Cat.scala 31:58]
  wire [4:0] c3_0 = c2_1[3] ? _c3_0_T_7 : {{1'd0}, c2_1}; // @[Bku.scala 42:8]
  wire  _c3_1_T_3 = c2_3[3] & c2_2[3]; // @[Bku.scala 43:21]
  wire  _c3_1_T_5 = ~c2_2[3]; // @[Bku.scala 43:36]
  wire [4:0] _c3_1_T_7 = {_c3_1_T_3,_c3_1_T_5,c2_2[2:0]}; // @[Cat.scala 31:58]
  wire [4:0] c3_1 = c2_3[3] ? _c3_1_T_7 : {{1'd0}, c2_3}; // @[Bku.scala 42:8]
  wire  _c3_2_T_3 = c2_5[3] & c2_4[3]; // @[Bku.scala 43:21]
  wire  _c3_2_T_5 = ~c2_4[3]; // @[Bku.scala 43:36]
  wire [4:0] _c3_2_T_7 = {_c3_2_T_3,_c3_2_T_5,c2_4[2:0]}; // @[Cat.scala 31:58]
  wire [4:0] c3_2 = c2_5[3] ? _c3_2_T_7 : {{1'd0}, c2_5}; // @[Bku.scala 42:8]
  wire  _c3_3_T_3 = c2_7[3] & c2_6[3]; // @[Bku.scala 43:21]
  wire  _c3_3_T_5 = ~c2_6[3]; // @[Bku.scala 43:36]
  wire [4:0] _c3_3_T_7 = {_c3_3_T_3,_c3_3_T_5,c2_6[2:0]}; // @[Cat.scala 31:58]
  wire [4:0] c3_3 = c2_7[3] ? _c3_3_T_7 : {{1'd0}, c2_7}; // @[Bku.scala 42:8]
  wire  _c4_0_T_3 = c3_1[4] & c3_0[4]; // @[Bku.scala 43:21]
  wire  _c4_0_T_5 = ~c3_0[4]; // @[Bku.scala 43:36]
  wire [5:0] _c4_0_T_7 = {_c4_0_T_3,_c4_0_T_5,c3_0[3:0]}; // @[Cat.scala 31:58]
  wire [5:0] c4_0 = c3_1[4] ? _c4_0_T_7 : {{1'd0}, c3_1}; // @[Bku.scala 42:8]
  wire  _c4_1_T_3 = c3_3[4] & c3_2[4]; // @[Bku.scala 43:21]
  wire  _c4_1_T_5 = ~c3_2[4]; // @[Bku.scala 43:36]
  wire [5:0] _c4_1_T_7 = {_c4_1_T_3,_c4_1_T_5,c3_2[3:0]}; // @[Cat.scala 31:58]
  wire [5:0] c4_1 = c3_3[4] ? _c4_1_T_7 : {{1'd0}, c3_3}; // @[Bku.scala 42:8]
  wire  _zeroRes_T_3 = c4_1[5] & c4_0[5]; // @[Bku.scala 43:21]
  wire  _zeroRes_T_5 = ~c4_0[5]; // @[Bku.scala 43:36]
  wire [6:0] _zeroRes_T_7 = {_zeroRes_T_3,_zeroRes_T_5,c4_0[4:0]}; // @[Cat.scala 31:58]
  wire [6:0] zeroRes = c4_1[5] ? _zeroRes_T_7 : {{1'd0}, c4_1}; // @[Bku.scala 42:8]
  wire [5:0] zeroWRes = funcReg[1] ? c4_1 : c4_0; // @[Bku.scala 75:21]
  wire [5:0] cpopLo32 = cpopTmp_0 + cpopTmp_1; // @[Bku.scala 77:29]
  wire [5:0] cpopHi32 = cpopTmp_2 + cpopTmp_3; // @[Bku.scala 78:29]
  wire [6:0] cpopRes = cpopLo32 + cpopHi32; // @[Bku.scala 80:26]
  wire [6:0] _io_out_T_2 = funcReg[0] ? {{1'd0}, cpopLo32} : cpopRes; // @[Bku.scala 83:32]
  wire [6:0] _io_out_T_4 = funcReg[0] ? {{1'd0}, zeroWRes} : zeroRes; // @[Bku.scala 83:68]
  wire [6:0] _io_out_T_5 = funcReg[2] ? _io_out_T_2 : _io_out_T_4; // @[Bku.scala 83:16]
  assign io_out = {{57'd0}, _io_out_T_5}; // @[Bku.scala 83:10]
  always @(posedge clock) begin
    if (io_regEnable) begin // @[Reg.scala 17:18]
      funcReg <= io_func; // @[Reg.scala 17:22]
    end
    if (io_regEnable) begin // @[Bku.scala 59:23]
      if (c1_1[2]) begin // @[Bku.scala 42:8]
        c2_0 <= _c2_0_T_7;
      end else begin
        c2_0 <= {{1'd0}, c1_1};
      end
    end
    if (io_regEnable) begin // @[Bku.scala 59:23]
      if (c1_3[2]) begin // @[Bku.scala 42:8]
        c2_1 <= _c2_1_T_7;
      end else begin
        c2_1 <= {{1'd0}, c1_3};
      end
    end
    if (io_regEnable) begin // @[Bku.scala 59:23]
      if (c1_5[2]) begin // @[Bku.scala 42:8]
        c2_2 <= _c2_2_T_7;
      end else begin
        c2_2 <= {{1'd0}, c1_5};
      end
    end
    if (io_regEnable) begin // @[Bku.scala 59:23]
      if (c1_7[2]) begin // @[Bku.scala 42:8]
        c2_3 <= _c2_3_T_7;
      end else begin
        c2_3 <= {{1'd0}, c1_7};
      end
    end
    if (io_regEnable) begin // @[Bku.scala 59:23]
      if (c1_9[2]) begin // @[Bku.scala 42:8]
        c2_4 <= _c2_4_T_7;
      end else begin
        c2_4 <= {{1'd0}, c1_9};
      end
    end
    if (io_regEnable) begin // @[Bku.scala 59:23]
      if (c1_11[2]) begin // @[Bku.scala 42:8]
        c2_5 <= _c2_5_T_7;
      end else begin
        c2_5 <= {{1'd0}, c1_11};
      end
    end
    if (io_regEnable) begin // @[Bku.scala 59:23]
      if (c1_13[2]) begin // @[Bku.scala 42:8]
        c2_6 <= _c2_6_T_7;
      end else begin
        c2_6 <= {{1'd0}, c1_13};
      end
    end
    if (io_regEnable) begin // @[Bku.scala 59:23]
      if (c1_15[2]) begin // @[Bku.scala 42:8]
        c2_7 <= _c2_7_T_7;
      end else begin
        c2_7 <= {{1'd0}, c1_15};
      end
    end
    if (io_regEnable) begin // @[Bku.scala 59:23]
      cpopTmp_0 <= _cpopTmp_0_T_45; // @[Bku.scala 64:18]
    end
    if (io_regEnable) begin // @[Bku.scala 59:23]
      cpopTmp_1 <= _cpopTmp_1_T_45; // @[Bku.scala 64:18]
    end
    if (io_regEnable) begin // @[Bku.scala 59:23]
      cpopTmp_2 <= _cpopTmp_2_T_45; // @[Bku.scala 64:18]
    end
    if (io_regEnable) begin // @[Bku.scala 59:23]
      cpopTmp_3 <= _cpopTmp_3_T_45; // @[Bku.scala 64:18]
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
  funcReg = _RAND_0[6:0];
  _RAND_1 = {1{`RANDOM}};
  c2_0 = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  c2_1 = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  c2_2 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  c2_3 = _RAND_4[3:0];
  _RAND_5 = {1{`RANDOM}};
  c2_4 = _RAND_5[3:0];
  _RAND_6 = {1{`RANDOM}};
  c2_5 = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  c2_6 = _RAND_7[3:0];
  _RAND_8 = {1{`RANDOM}};
  c2_7 = _RAND_8[3:0];
  _RAND_9 = {1{`RANDOM}};
  cpopTmp_0 = _RAND_9[4:0];
  _RAND_10 = {1{`RANDOM}};
  cpopTmp_1 = _RAND_10[4:0];
  _RAND_11 = {1{`RANDOM}};
  cpopTmp_2 = _RAND_11[4:0];
  _RAND_12 = {1{`RANDOM}};
  cpopTmp_3 = _RAND_12[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

