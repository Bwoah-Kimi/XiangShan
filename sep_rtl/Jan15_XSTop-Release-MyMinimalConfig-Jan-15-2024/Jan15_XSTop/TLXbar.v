module TLXbar(
  input         clock,
  input         reset,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [2:0]  auto_in_a_bits_size,
  input  [2:0]  auto_in_a_bits_source,
  input  [35:0] auto_in_a_bits_address,
  input  [7:0]  auto_in_a_bits_mask,
  input  [63:0] auto_in_a_bits_data,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [2:0]  auto_in_d_bits_size,
  output [2:0]  auto_in_d_bits_source,
  output [63:0] auto_in_d_bits_data,
  input         auto_out_6_a_ready,
  output        auto_out_6_a_valid,
  output [2:0]  auto_out_6_a_bits_opcode,
  output [1:0]  auto_out_6_a_bits_size,
  output [2:0]  auto_out_6_a_bits_source,
  output [29:0] auto_out_6_a_bits_address,
  output [7:0]  auto_out_6_a_bits_mask,
  output [63:0] auto_out_6_a_bits_data,
  output        auto_out_6_d_ready,
  input         auto_out_6_d_valid,
  input  [2:0]  auto_out_6_d_bits_opcode,
  input  [1:0]  auto_out_6_d_bits_size,
  input  [2:0]  auto_out_6_d_bits_source,
  input  [63:0] auto_out_6_d_bits_data,
  input         auto_out_5_a_ready,
  output        auto_out_5_a_valid,
  output [2:0]  auto_out_5_a_bits_opcode,
  output [1:0]  auto_out_5_a_bits_size,
  output [2:0]  auto_out_5_a_bits_source,
  output [29:0] auto_out_5_a_bits_address,
  output [7:0]  auto_out_5_a_bits_mask,
  output [63:0] auto_out_5_a_bits_data,
  output        auto_out_5_d_ready,
  input         auto_out_5_d_valid,
  input  [2:0]  auto_out_5_d_bits_opcode,
  input  [1:0]  auto_out_5_d_bits_size,
  input  [2:0]  auto_out_5_d_bits_source,
  input  [63:0] auto_out_5_d_bits_data,
  input         auto_out_4_a_ready,
  output        auto_out_4_a_valid,
  output [2:0]  auto_out_4_a_bits_opcode,
  output [1:0]  auto_out_4_a_bits_size,
  output [2:0]  auto_out_4_a_bits_source,
  output [29:0] auto_out_4_a_bits_address,
  output [7:0]  auto_out_4_a_bits_mask,
  output [63:0] auto_out_4_a_bits_data,
  output        auto_out_4_d_ready,
  input         auto_out_4_d_valid,
  input  [2:0]  auto_out_4_d_bits_opcode,
  input  [1:0]  auto_out_4_d_bits_size,
  input  [2:0]  auto_out_4_d_bits_source,
  input  [63:0] auto_out_4_d_bits_data,
  input         auto_out_3_a_ready,
  output        auto_out_3_a_valid,
  output [2:0]  auto_out_3_a_bits_opcode,
  output [1:0]  auto_out_3_a_bits_size,
  output [2:0]  auto_out_3_a_bits_source,
  output [29:0] auto_out_3_a_bits_address,
  output [7:0]  auto_out_3_a_bits_mask,
  output [63:0] auto_out_3_a_bits_data,
  output        auto_out_3_d_ready,
  input         auto_out_3_d_valid,
  input  [2:0]  auto_out_3_d_bits_opcode,
  input  [1:0]  auto_out_3_d_bits_size,
  input  [2:0]  auto_out_3_d_bits_source,
  input  [63:0] auto_out_3_d_bits_data,
  input         auto_out_2_a_ready,
  output        auto_out_2_a_valid,
  output [2:0]  auto_out_2_a_bits_opcode,
  output [1:0]  auto_out_2_a_bits_size,
  output [2:0]  auto_out_2_a_bits_source,
  output [29:0] auto_out_2_a_bits_address,
  output [7:0]  auto_out_2_a_bits_mask,
  output [63:0] auto_out_2_a_bits_data,
  output        auto_out_2_d_ready,
  input         auto_out_2_d_valid,
  input  [2:0]  auto_out_2_d_bits_opcode,
  input  [1:0]  auto_out_2_d_bits_size,
  input  [2:0]  auto_out_2_d_bits_source,
  input  [63:0] auto_out_2_d_bits_data,
  input         auto_out_1_a_ready,
  output        auto_out_1_a_valid,
  output [2:0]  auto_out_1_a_bits_opcode,
  output [1:0]  auto_out_1_a_bits_size,
  output [2:0]  auto_out_1_a_bits_source,
  output [30:0] auto_out_1_a_bits_address,
  output [7:0]  auto_out_1_a_bits_mask,
  output [63:0] auto_out_1_a_bits_data,
  output        auto_out_1_d_ready,
  input         auto_out_1_d_valid,
  input  [2:0]  auto_out_1_d_bits_opcode,
  input  [1:0]  auto_out_1_d_bits_size,
  input  [2:0]  auto_out_1_d_bits_source,
  input  [63:0] auto_out_1_d_bits_data,
  input         auto_out_0_a_ready,
  output        auto_out_0_a_valid,
  output [2:0]  auto_out_0_a_bits_opcode,
  output [2:0]  auto_out_0_a_bits_size,
  output [2:0]  auto_out_0_a_bits_source,
  output [35:0] auto_out_0_a_bits_address,
  output [7:0]  auto_out_0_a_bits_mask,
  output [63:0] auto_out_0_a_bits_data,
  output        auto_out_0_d_ready,
  input         auto_out_0_d_valid,
  input  [2:0]  auto_out_0_d_bits_opcode,
  input  [2:0]  auto_out_0_d_bits_size,
  input  [2:0]  auto_out_0_d_bits_source,
  input  [63:0] auto_out_0_d_bits_data
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
`endif // RANDOMIZE_REG_INIT
  reg [2:0] beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = beatsLeft == 3'h0; // @[Arbiter.scala 88:28]
  wire [6:0] readys_valid = {auto_out_6_d_valid,auto_out_5_d_valid,auto_out_4_d_valid,auto_out_3_d_valid,
    auto_out_2_d_valid,auto_out_1_d_valid,auto_out_0_d_valid}; // @[Cat.scala 31:58]
  reg [6:0] readys_mask; // @[Arbiter.scala 23:23]
  wire [6:0] _readys_filter_T = ~readys_mask; // @[Arbiter.scala 24:30]
  wire [6:0] _readys_filter_T_1 = readys_valid & _readys_filter_T; // @[Arbiter.scala 24:28]
  wire [13:0] readys_filter = {_readys_filter_T_1,auto_out_6_d_valid,auto_out_5_d_valid,auto_out_4_d_valid,
    auto_out_3_d_valid,auto_out_2_d_valid,auto_out_1_d_valid,auto_out_0_d_valid}; // @[Cat.scala 31:58]
  wire [13:0] _GEN_1 = {{1'd0}, readys_filter[13:1]}; // @[package.scala 253:43]
  wire [13:0] _readys_unready_T_1 = readys_filter | _GEN_1; // @[package.scala 253:43]
  wire [13:0] _GEN_2 = {{2'd0}, _readys_unready_T_1[13:2]}; // @[package.scala 253:43]
  wire [13:0] _readys_unready_T_3 = _readys_unready_T_1 | _GEN_2; // @[package.scala 253:43]
  wire [13:0] _GEN_3 = {{4'd0}, _readys_unready_T_3[13:4]}; // @[package.scala 253:43]
  wire [13:0] _readys_unready_T_5 = _readys_unready_T_3 | _GEN_3; // @[package.scala 253:43]
  wire [13:0] _readys_unready_T_8 = {readys_mask, 7'h0}; // @[Arbiter.scala 25:66]
  wire [13:0] _GEN_4 = {{1'd0}, _readys_unready_T_5[13:1]}; // @[Arbiter.scala 25:58]
  wire [13:0] readys_unready = _GEN_4 | _readys_unready_T_8; // @[Arbiter.scala 25:58]
  wire [6:0] _readys_readys_T_2 = readys_unready[13:7] & readys_unready[6:0]; // @[Arbiter.scala 26:39]
  wire [6:0] readys_readys = ~_readys_readys_T_2; // @[Arbiter.scala 26:18]
  wire  readys_0 = readys_readys[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_0 = readys_0 & auto_out_0_d_valid; // @[Arbiter.scala 97:79]
  reg  state_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_0 = idle ? earlyWinner_0 : state_0; // @[Arbiter.scala 117:30]
  wire [2:0] _T_116 = muxStateEarly_0 ? auto_out_0_d_bits_source : 3'h0; // @[Mux.scala 27:73]
  wire  readys_1 = readys_readys[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_1 = readys_1 & auto_out_1_d_valid; // @[Arbiter.scala 97:79]
  reg  state_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1 = idle ? earlyWinner_1 : state_1; // @[Arbiter.scala 117:30]
  wire [2:0] _T_117 = muxStateEarly_1 ? auto_out_1_d_bits_source : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_123 = _T_116 | _T_117; // @[Mux.scala 27:73]
  wire  readys_2 = readys_readys[2]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_2 = readys_2 & auto_out_2_d_valid; // @[Arbiter.scala 97:79]
  reg  state_2; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_2 = idle ? earlyWinner_2 : state_2; // @[Arbiter.scala 117:30]
  wire [2:0] _T_118 = muxStateEarly_2 ? auto_out_2_d_bits_source : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_124 = _T_123 | _T_118; // @[Mux.scala 27:73]
  wire  readys_3 = readys_readys[3]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_3 = readys_3 & auto_out_3_d_valid; // @[Arbiter.scala 97:79]
  reg  state_3; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_3 = idle ? earlyWinner_3 : state_3; // @[Arbiter.scala 117:30]
  wire [2:0] _T_119 = muxStateEarly_3 ? auto_out_3_d_bits_source : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_125 = _T_124 | _T_119; // @[Mux.scala 27:73]
  wire  readys_4 = readys_readys[4]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_4 = readys_4 & auto_out_4_d_valid; // @[Arbiter.scala 97:79]
  reg  state_4; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_4 = idle ? earlyWinner_4 : state_4; // @[Arbiter.scala 117:30]
  wire [2:0] _T_120 = muxStateEarly_4 ? auto_out_4_d_bits_source : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_126 = _T_125 | _T_120; // @[Mux.scala 27:73]
  wire  readys_5 = readys_readys[5]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_5 = readys_5 & auto_out_5_d_valid; // @[Arbiter.scala 97:79]
  reg  state_5; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_5 = idle ? earlyWinner_5 : state_5; // @[Arbiter.scala 117:30]
  wire [2:0] _T_121 = muxStateEarly_5 ? auto_out_5_d_bits_source : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_127 = _T_126 | _T_121; // @[Mux.scala 27:73]
  wire  readys_6 = readys_readys[6]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_6 = readys_6 & auto_out_6_d_valid; // @[Arbiter.scala 97:79]
  reg  state_6; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_6 = idle ? earlyWinner_6 : state_6; // @[Arbiter.scala 117:30]
  wire [2:0] _T_122 = muxStateEarly_6 ? auto_out_6_d_bits_source : 3'h0; // @[Mux.scala 27:73]
  wire [35:0] _requestAIO_T = auto_in_a_bits_address ^ 36'h80000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_1 = {1'b0,$signed(_requestAIO_T)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_3 = $signed(_requestAIO_T_1) & 37'shf80000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_4 = $signed(_requestAIO_T_3) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_5 = auto_in_a_bits_address ^ 36'h100000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_6 = {1'b0,$signed(_requestAIO_T_5)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_8 = $signed(_requestAIO_T_6) & 37'shf00000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_9 = $signed(_requestAIO_T_8) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_10 = auto_in_a_bits_address ^ 36'h200000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_11 = {1'b0,$signed(_requestAIO_T_10)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_13 = $signed(_requestAIO_T_11) & 37'she00000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_14 = $signed(_requestAIO_T_13) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_15 = auto_in_a_bits_address ^ 36'h400000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_16 = {1'b0,$signed(_requestAIO_T_15)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_18 = $signed(_requestAIO_T_16) & 37'shc00000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_19 = $signed(_requestAIO_T_18) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_20 = auto_in_a_bits_address ^ 36'h800000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_21 = {1'b0,$signed(_requestAIO_T_20)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_23 = $signed(_requestAIO_T_21) & 37'sh800000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_24 = $signed(_requestAIO_T_23) == 37'sh0; // @[Parameters.scala 137:67]
  wire  requestAIO_0_0 = _requestAIO_T_4 | _requestAIO_T_9 | _requestAIO_T_14 | _requestAIO_T_19 | _requestAIO_T_24; // @[Xbar.scala 363:92]
  wire [36:0] _requestAIO_T_30 = {1'b0,$signed(auto_in_a_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_32 = $signed(_requestAIO_T_30) & 37'shfe0000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_33 = $signed(_requestAIO_T_32) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_34 = auto_in_a_bits_address ^ 36'h20000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_35 = {1'b0,$signed(_requestAIO_T_34)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_37 = $signed(_requestAIO_T_35) & 37'shff0000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_38 = $signed(_requestAIO_T_37) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_39 = auto_in_a_bits_address ^ 36'h30000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_40 = {1'b0,$signed(_requestAIO_T_39)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_42 = $signed(_requestAIO_T_40) & 37'shff8000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_43 = $signed(_requestAIO_T_42) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_44 = auto_in_a_bits_address ^ 36'h40000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_45 = {1'b0,$signed(_requestAIO_T_44)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_47 = $signed(_requestAIO_T_45) & 37'shfc0000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_48 = $signed(_requestAIO_T_47) == 37'sh0; // @[Parameters.scala 137:67]
  wire  requestAIO_0_1 = _requestAIO_T_33 | _requestAIO_T_38 | _requestAIO_T_43 | _requestAIO_T_48; // @[Xbar.scala 363:92]
  wire [35:0] _requestAIO_T_52 = auto_in_a_bits_address ^ 36'h38000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_53 = {1'b0,$signed(_requestAIO_T_52)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_55 = $signed(_requestAIO_T_53) & 37'shfffff0000; // @[Parameters.scala 137:52]
  wire  requestAIO_0_2 = $signed(_requestAIO_T_55) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_57 = auto_in_a_bits_address ^ 36'h3c000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_58 = {1'b0,$signed(_requestAIO_T_57)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_60 = $signed(_requestAIO_T_58) & 37'shffc000000; // @[Parameters.scala 137:52]
  wire  requestAIO_0_3 = $signed(_requestAIO_T_60) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_62 = auto_in_a_bits_address ^ 36'h3a000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_63 = {1'b0,$signed(_requestAIO_T_62)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_65 = $signed(_requestAIO_T_63) & 37'shffffff000; // @[Parameters.scala 137:52]
  wire  requestAIO_0_4 = $signed(_requestAIO_T_65) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_67 = auto_in_a_bits_address ^ 36'h38020000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_68 = {1'b0,$signed(_requestAIO_T_67)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_70 = $signed(_requestAIO_T_68) & 37'shffffff000; // @[Parameters.scala 137:52]
  wire  requestAIO_0_5 = $signed(_requestAIO_T_70) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_72 = auto_in_a_bits_address ^ 36'h38021000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_73 = {1'b0,$signed(_requestAIO_T_72)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_75 = $signed(_requestAIO_T_73) & 37'shffffff000; // @[Parameters.scala 137:52]
  wire  requestAIO_0_6 = $signed(_requestAIO_T_75) == 37'sh0; // @[Parameters.scala 137:67]
  wire [12:0] _beatsDO_decode_T_1 = 13'h3f << auto_out_0_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsDO_decode_T_3 = ~_beatsDO_decode_T_1[5:0]; // @[package.scala 234:46]
  wire [2:0] beatsDO_decode = _beatsDO_decode_T_3[5:3]; // @[Edges.scala 219:59]
  wire  beatsDO_opdata = auto_out_0_d_bits_opcode[0]; // @[Edges.scala 105:36]
  wire [2:0] out_1_1_d_bits_size = {{1'd0}, auto_out_1_d_bits_size}; // @[BundleMap.scala 247:19 Xbar.scala 288:19]
  wire [2:0] out_1_2_d_bits_size = {{1'd0}, auto_out_2_d_bits_size}; // @[BundleMap.scala 247:19 Xbar.scala 288:19]
  wire [2:0] out_1_3_d_bits_size = {{1'd0}, auto_out_3_d_bits_size}; // @[BundleMap.scala 247:19 Xbar.scala 288:19]
  wire [2:0] out_1_4_d_bits_size = {{1'd0}, auto_out_4_d_bits_size}; // @[BundleMap.scala 247:19 Xbar.scala 288:19]
  wire [2:0] out_1_5_d_bits_size = {{1'd0}, auto_out_5_d_bits_size}; // @[BundleMap.scala 247:19 Xbar.scala 288:19]
  wire [2:0] out_1_6_d_bits_size = {{1'd0}, auto_out_6_d_bits_size}; // @[BundleMap.scala 247:19 Xbar.scala 288:19]
  wire  latch = idle & auto_in_d_ready; // @[Arbiter.scala 89:24]
  wire [6:0] _readys_mask_T = readys_readys & readys_valid; // @[Arbiter.scala 28:29]
  wire [7:0] _readys_mask_T_1 = {_readys_mask_T, 1'h0}; // @[package.scala 244:48]
  wire [6:0] _readys_mask_T_3 = _readys_mask_T | _readys_mask_T_1[6:0]; // @[package.scala 244:43]
  wire [8:0] _readys_mask_T_4 = {_readys_mask_T_3, 2'h0}; // @[package.scala 244:48]
  wire [6:0] _readys_mask_T_6 = _readys_mask_T_3 | _readys_mask_T_4[6:0]; // @[package.scala 244:43]
  wire [10:0] _readys_mask_T_7 = {_readys_mask_T_6, 4'h0}; // @[package.scala 244:48]
  wire [6:0] _readys_mask_T_9 = _readys_mask_T_6 | _readys_mask_T_7[6:0]; // @[package.scala 244:43]
  wire  _T_35 = auto_out_0_d_valid | auto_out_1_d_valid | auto_out_2_d_valid | auto_out_3_d_valid | auto_out_4_d_valid
     | auto_out_5_d_valid | auto_out_6_d_valid; // @[Arbiter.scala 107:36]
  wire  _sink_ACancel_earlyValid_T_18 = state_0 & auto_out_0_d_valid | state_1 & auto_out_1_d_valid | state_2 &
    auto_out_2_d_valid | state_3 & auto_out_3_d_valid | state_4 & auto_out_4_d_valid | state_5 & auto_out_5_d_valid |
    state_6 & auto_out_6_d_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_15_earlyValid = idle ? _T_35 : _sink_ACancel_earlyValid_T_18; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = auto_in_d_ready & sink_ACancel_15_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [2:0] _GEN_5 = {{2'd0}, _beatsLeft_T_2}; // @[Arbiter.scala 113:52]
  wire [2:0] _beatsLeft_T_4 = beatsLeft - _GEN_5; // @[Arbiter.scala 113:52]
  wire  allowed_0 = idle ? readys_0 : state_0; // @[Arbiter.scala 121:24]
  wire  allowed_1 = idle ? readys_1 : state_1; // @[Arbiter.scala 121:24]
  wire  allowed_2 = idle ? readys_2 : state_2; // @[Arbiter.scala 121:24]
  wire  allowed_3 = idle ? readys_3 : state_3; // @[Arbiter.scala 121:24]
  wire  allowed_4 = idle ? readys_4 : state_4; // @[Arbiter.scala 121:24]
  wire  allowed_5 = idle ? readys_5 : state_5; // @[Arbiter.scala 121:24]
  wire  allowed_6 = idle ? readys_6 : state_6; // @[Arbiter.scala 121:24]
  wire [63:0] _T_77 = muxStateEarly_0 ? auto_out_0_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_78 = muxStateEarly_1 ? auto_out_1_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_79 = muxStateEarly_2 ? auto_out_2_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_80 = muxStateEarly_3 ? auto_out_3_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_81 = muxStateEarly_4 ? auto_out_4_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_82 = muxStateEarly_5 ? auto_out_5_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_83 = muxStateEarly_6 ? auto_out_6_d_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_84 = _T_77 | _T_78; // @[Mux.scala 27:73]
  wire [63:0] _T_85 = _T_84 | _T_79; // @[Mux.scala 27:73]
  wire [63:0] _T_86 = _T_85 | _T_80; // @[Mux.scala 27:73]
  wire [63:0] _T_87 = _T_86 | _T_81; // @[Mux.scala 27:73]
  wire [63:0] _T_88 = _T_87 | _T_82; // @[Mux.scala 27:73]
  wire [2:0] _T_129 = muxStateEarly_0 ? auto_out_0_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_130 = muxStateEarly_1 ? out_1_1_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_131 = muxStateEarly_2 ? out_1_2_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_132 = muxStateEarly_3 ? out_1_3_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_133 = muxStateEarly_4 ? out_1_4_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_134 = muxStateEarly_5 ? out_1_5_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_135 = muxStateEarly_6 ? out_1_6_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_136 = _T_129 | _T_130; // @[Mux.scala 27:73]
  wire [2:0] _T_137 = _T_136 | _T_131; // @[Mux.scala 27:73]
  wire [2:0] _T_138 = _T_137 | _T_132; // @[Mux.scala 27:73]
  wire [2:0] _T_139 = _T_138 | _T_133; // @[Mux.scala 27:73]
  wire [2:0] _T_140 = _T_139 | _T_134; // @[Mux.scala 27:73]
  wire [2:0] _T_155 = muxStateEarly_0 ? auto_out_0_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_156 = muxStateEarly_1 ? auto_out_1_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_157 = muxStateEarly_2 ? auto_out_2_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_158 = muxStateEarly_3 ? auto_out_3_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_159 = muxStateEarly_4 ? auto_out_4_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_160 = muxStateEarly_5 ? auto_out_5_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_161 = muxStateEarly_6 ? auto_out_6_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_162 = _T_155 | _T_156; // @[Mux.scala 27:73]
  wire [2:0] _T_163 = _T_162 | _T_157; // @[Mux.scala 27:73]
  wire [2:0] _T_164 = _T_163 | _T_158; // @[Mux.scala 27:73]
  wire [2:0] _T_165 = _T_164 | _T_159; // @[Mux.scala 27:73]
  wire [2:0] _T_166 = _T_165 | _T_160; // @[Mux.scala 27:73]
  assign auto_in_a_ready = requestAIO_0_0 & auto_out_0_a_ready | requestAIO_0_1 & auto_out_1_a_ready | requestAIO_0_2 &
    auto_out_2_a_ready | requestAIO_0_3 & auto_out_3_a_ready | requestAIO_0_4 & auto_out_4_a_ready | requestAIO_0_5 &
    auto_out_5_a_ready | requestAIO_0_6 & auto_out_6_a_ready; // @[Mux.scala 27:73]
  assign auto_in_d_valid = idle ? _T_35 : _sink_ACancel_earlyValid_T_18; // @[Arbiter.scala 125:29]
  assign auto_in_d_bits_opcode = _T_166 | _T_161; // @[Mux.scala 27:73]
  assign auto_in_d_bits_size = _T_140 | _T_135; // @[Mux.scala 27:73]
  assign auto_in_d_bits_source = _T_127 | _T_122; // @[Mux.scala 27:73]
  assign auto_in_d_bits_data = _T_88 | _T_83; // @[Mux.scala 27:73]
  assign auto_out_6_a_valid = auto_in_a_valid & requestAIO_0_6; // @[Xbar.scala 428:50]
  assign auto_out_6_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_6_a_bits_size = auto_in_a_bits_size[1:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_6_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_6_a_bits_address = auto_in_a_bits_address[29:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_6_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_6_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_6_d_ready = auto_in_d_ready & allowed_6; // @[Arbiter.scala 123:31]
  assign auto_out_5_a_valid = auto_in_a_valid & requestAIO_0_5; // @[Xbar.scala 428:50]
  assign auto_out_5_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_5_a_bits_size = auto_in_a_bits_size[1:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_5_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_5_a_bits_address = auto_in_a_bits_address[29:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_5_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_5_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_5_d_ready = auto_in_d_ready & allowed_5; // @[Arbiter.scala 123:31]
  assign auto_out_4_a_valid = auto_in_a_valid & requestAIO_0_4; // @[Xbar.scala 428:50]
  assign auto_out_4_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_4_a_bits_size = auto_in_a_bits_size[1:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_4_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_4_a_bits_address = auto_in_a_bits_address[29:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_4_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_4_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_4_d_ready = auto_in_d_ready & allowed_4; // @[Arbiter.scala 123:31]
  assign auto_out_3_a_valid = auto_in_a_valid & requestAIO_0_3; // @[Xbar.scala 428:50]
  assign auto_out_3_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_3_a_bits_size = auto_in_a_bits_size[1:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_3_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_3_a_bits_address = auto_in_a_bits_address[29:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_3_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_3_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_3_d_ready = auto_in_d_ready & allowed_3; // @[Arbiter.scala 123:31]
  assign auto_out_2_a_valid = auto_in_a_valid & requestAIO_0_2; // @[Xbar.scala 428:50]
  assign auto_out_2_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_2_a_bits_size = auto_in_a_bits_size[1:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_2_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_2_a_bits_address = auto_in_a_bits_address[29:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_2_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_2_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_2_d_ready = auto_in_d_ready & allowed_2; // @[Arbiter.scala 123:31]
  assign auto_out_1_a_valid = auto_in_a_valid & requestAIO_0_1; // @[Xbar.scala 428:50]
  assign auto_out_1_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_a_bits_size = auto_in_a_bits_size[1:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_1_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_1_a_bits_address = auto_in_a_bits_address[30:0]; // @[Xbar.scala 132:50 BundleMap.scala 247:19]
  assign auto_out_1_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_d_ready = auto_in_d_ready & allowed_1; // @[Arbiter.scala 123:31]
  assign auto_out_0_a_valid = auto_in_a_valid & requestAIO_0_0; // @[Xbar.scala 428:50]
  assign auto_out_0_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_0_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_d_ready = auto_in_d_ready & allowed_0; // @[Arbiter.scala 123:31]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 113:23]
      beatsLeft <= 3'h0; // @[Arbiter.scala 111:73 Edges.scala 220:14]
    end else if (latch) begin
      if (earlyWinner_0) begin
        if (beatsDO_opdata) begin
          beatsLeft <= beatsDO_decode;
        end else begin
          beatsLeft <= 3'h0;
        end
      end else begin
        beatsLeft <= 3'h0;
      end
    end else begin
      beatsLeft <= _beatsLeft_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 27:32]
      readys_mask <= 7'h7f; // @[Arbiter.scala 28:12]
    end else if (latch & |readys_valid) begin // @[Arbiter.scala 23:23]
      readys_mask <= _readys_mask_T_9;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_0 <= 1'h0;
    end else if (idle) begin
      state_0 <= earlyWinner_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_1 <= 1'h0;
    end else if (idle) begin
      state_1 <= earlyWinner_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_2 <= 1'h0;
    end else if (idle) begin
      state_2 <= earlyWinner_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_3 <= 1'h0;
    end else if (idle) begin
      state_3 <= earlyWinner_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_4 <= 1'h0;
    end else if (idle) begin
      state_4 <= earlyWinner_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_5 <= 1'h0;
    end else if (idle) begin
      state_5 <= earlyWinner_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_6 <= 1'h0;
    end else if (idle) begin
      state_6 <= earlyWinner_6;
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
  beatsLeft = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  readys_mask = _RAND_1[6:0];
  _RAND_2 = {1{`RANDOM}};
  state_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  state_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  state_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  state_3 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  state_4 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  state_5 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  state_6 = _RAND_8[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    beatsLeft = 3'h0;
  end
  if (reset) begin
    readys_mask = 7'h7f;
  end
  if (reset) begin
    state_0 = 1'h0;
  end
  if (reset) begin
    state_1 = 1'h0;
  end
  if (reset) begin
    state_2 = 1'h0;
  end
  if (reset) begin
    state_3 = 1'h0;
  end
  if (reset) begin
    state_4 = 1'h0;
  end
  if (reset) begin
    state_5 = 1'h0;
  end
  if (reset) begin
    state_6 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

