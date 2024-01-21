module TLXbar_1(
  input          clock,
  input          reset,
  output         auto_in_1_a_ready,
  input          auto_in_1_a_valid,
  input  [2:0]   auto_in_1_a_bits_opcode,
  input  [2:0]   auto_in_1_a_bits_param,
  input  [2:0]   auto_in_1_a_bits_size,
  input          auto_in_1_a_bits_source,
  input  [35:0]  auto_in_1_a_bits_address,
  input  [31:0]  auto_in_1_a_bits_mask,
  input  [255:0] auto_in_1_a_bits_data,
  input          auto_in_1_d_ready,
  output         auto_in_1_d_valid,
  output         auto_in_1_d_bits_denied,
  output [255:0] auto_in_1_d_bits_data,
  output         auto_in_1_d_bits_corrupt,
  output         auto_in_0_a_ready,
  input          auto_in_0_a_valid,
  input  [2:0]   auto_in_0_a_bits_opcode,
  input  [2:0]   auto_in_0_a_bits_size,
  input  [1:0]   auto_in_0_a_bits_source,
  input  [35:0]  auto_in_0_a_bits_address,
  input  [31:0]  auto_in_0_a_bits_mask,
  input  [255:0] auto_in_0_a_bits_data,
  input          auto_in_0_d_ready,
  output         auto_in_0_d_valid,
  output [2:0]   auto_in_0_d_bits_opcode,
  output [2:0]   auto_in_0_d_bits_size,
  output [1:0]   auto_in_0_d_bits_source,
  output         auto_in_0_d_bits_denied,
  output [255:0] auto_in_0_d_bits_data,
  output         auto_in_0_d_bits_corrupt,
  input          auto_out_1_a_ready,
  output         auto_out_1_a_valid,
  output [2:0]   auto_out_1_a_bits_opcode,
  output [2:0]   auto_out_1_a_bits_param,
  output [2:0]   auto_out_1_a_bits_size,
  output [2:0]   auto_out_1_a_bits_source,
  output [35:0]  auto_out_1_a_bits_address,
  output [31:0]  auto_out_1_a_bits_mask,
  output [255:0] auto_out_1_a_bits_data,
  output         auto_out_1_d_ready,
  input          auto_out_1_d_valid,
  input  [2:0]   auto_out_1_d_bits_opcode,
  input  [2:0]   auto_out_1_d_bits_size,
  input  [2:0]   auto_out_1_d_bits_source,
  input          auto_out_1_d_bits_denied,
  input  [255:0] auto_out_1_d_bits_data,
  input          auto_out_1_d_bits_corrupt,
  input          auto_out_0_a_ready,
  output         auto_out_0_a_valid,
  output [2:0]   auto_out_0_a_bits_opcode,
  output [2:0]   auto_out_0_a_bits_size,
  output [2:0]   auto_out_0_a_bits_source,
  output         auto_out_0_d_ready,
  input          auto_out_0_d_valid,
  input  [2:0]   auto_out_0_d_bits_opcode,
  input  [2:0]   auto_out_0_d_bits_size,
  input  [2:0]   auto_out_0_d_bits_source,
  input          auto_out_0_d_bits_corrupt
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
`endif // RANDOMIZE_REG_INIT
  reg  beatsLeft_2; // @[Arbiter.scala 87:30]
  wire  idle_2 = ~beatsLeft_2; // @[Arbiter.scala 88:28]
  wire  requestDOI_1_0 = ~auto_out_1_d_bits_source[2]; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered_1_0_valid = auto_out_1_d_valid & requestDOI_1_0; // @[Xbar.scala 179:40]
  wire  requestDOI_0_0 = ~auto_out_0_d_bits_source[2]; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered__0_valid = auto_out_0_d_valid & requestDOI_0_0; // @[Xbar.scala 179:40]
  wire [1:0] readys_valid_2 = {portsDIO_filtered_1_0_valid,portsDIO_filtered__0_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_2; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_4 = ~readys_mask_2; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_5 = readys_valid_2 & _readys_filter_T_4; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_2 = {_readys_filter_T_5,portsDIO_filtered_1_0_valid,portsDIO_filtered__0_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_4 = {{1'd0}, readys_filter_2[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_11 = readys_filter_2 | _GEN_4; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_14 = {readys_mask_2, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_5 = {{1'd0}, _readys_unready_T_11[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_2 = _GEN_5 | _readys_unready_T_14; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_8 = readys_unready_2[3:2] & readys_unready_2[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_2 = ~_readys_readys_T_8; // @[Arbiter.scala 26:18]
  wire  readys_2_0 = readys_readys_2[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_2_0 = readys_2_0 & portsDIO_filtered__0_valid; // @[Arbiter.scala 97:79]
  reg  state_2_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_2_0 = idle_2 ? earlyWinner_2_0 : state_2_0; // @[Arbiter.scala 117:30]
  wire [2:0] _T_132 = muxStateEarly_2_0 ? auto_out_0_d_bits_source : 3'h0; // @[Mux.scala 27:73]
  wire  readys_2_1 = readys_readys_2[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_2_1 = readys_2_1 & portsDIO_filtered_1_0_valid; // @[Arbiter.scala 97:79]
  reg  state_2_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_2_1 = idle_2 ? earlyWinner_2_1 : state_2_1; // @[Arbiter.scala 117:30]
  wire [2:0] _T_133 = muxStateEarly_2_1 ? auto_out_1_d_bits_source : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] sink_ACancel_5_bits_source = _T_132 | _T_133; // @[Mux.scala 27:73]
  wire [2:0] _GEN_6 = {{2'd0}, auto_in_1_a_bits_source}; // @[Xbar.scala 237:55]
  wire [2:0] in_1_a_bits_source = _GEN_6 | 3'h4; // @[Xbar.scala 237:55]
  wire [36:0] _requestAIO_T_1 = {1'b0,$signed(auto_in_0_a_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_3 = $signed(_requestAIO_T_1) & 37'shf80000000; // @[Parameters.scala 137:52]
  wire  requestAIO_0_0 = $signed(_requestAIO_T_3) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_5 = auto_in_0_a_bits_address ^ 36'h80000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_6 = {1'b0,$signed(_requestAIO_T_5)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_8 = $signed(_requestAIO_T_6) & 37'shf80000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_9 = $signed(_requestAIO_T_8) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_10 = auto_in_0_a_bits_address ^ 36'h100000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_11 = {1'b0,$signed(_requestAIO_T_10)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_13 = $signed(_requestAIO_T_11) & 37'shf00000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_14 = $signed(_requestAIO_T_13) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_15 = auto_in_0_a_bits_address ^ 36'h200000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_16 = {1'b0,$signed(_requestAIO_T_15)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_18 = $signed(_requestAIO_T_16) & 37'she00000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_19 = $signed(_requestAIO_T_18) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_20 = auto_in_0_a_bits_address ^ 36'h400000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_21 = {1'b0,$signed(_requestAIO_T_20)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_23 = $signed(_requestAIO_T_21) & 37'shc00000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_24 = $signed(_requestAIO_T_23) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_25 = auto_in_0_a_bits_address ^ 36'h800000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_26 = {1'b0,$signed(_requestAIO_T_25)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_28 = $signed(_requestAIO_T_26) & 37'sh800000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_29 = $signed(_requestAIO_T_28) == 37'sh0; // @[Parameters.scala 137:67]
  wire  requestAIO_0_1 = _requestAIO_T_9 | _requestAIO_T_14 | _requestAIO_T_19 | _requestAIO_T_24 | _requestAIO_T_29; // @[Xbar.scala 363:92]
  wire [36:0] _requestAIO_T_35 = {1'b0,$signed(auto_in_1_a_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_37 = $signed(_requestAIO_T_35) & 37'shf80000000; // @[Parameters.scala 137:52]
  wire  requestAIO_1_0 = $signed(_requestAIO_T_37) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_39 = auto_in_1_a_bits_address ^ 36'h80000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_40 = {1'b0,$signed(_requestAIO_T_39)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_42 = $signed(_requestAIO_T_40) & 37'shf80000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_43 = $signed(_requestAIO_T_42) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_44 = auto_in_1_a_bits_address ^ 36'h100000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_45 = {1'b0,$signed(_requestAIO_T_44)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_47 = $signed(_requestAIO_T_45) & 37'shf00000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_48 = $signed(_requestAIO_T_47) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_49 = auto_in_1_a_bits_address ^ 36'h200000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_50 = {1'b0,$signed(_requestAIO_T_49)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_52 = $signed(_requestAIO_T_50) & 37'she00000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_53 = $signed(_requestAIO_T_52) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_54 = auto_in_1_a_bits_address ^ 36'h400000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_55 = {1'b0,$signed(_requestAIO_T_54)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_57 = $signed(_requestAIO_T_55) & 37'shc00000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_58 = $signed(_requestAIO_T_57) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_59 = auto_in_1_a_bits_address ^ 36'h800000000; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_60 = {1'b0,$signed(_requestAIO_T_59)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_62 = $signed(_requestAIO_T_60) & 37'sh800000000; // @[Parameters.scala 137:52]
  wire  _requestAIO_T_63 = $signed(_requestAIO_T_62) == 37'sh0; // @[Parameters.scala 137:67]
  wire  requestAIO_1_1 = _requestAIO_T_43 | _requestAIO_T_48 | _requestAIO_T_53 | _requestAIO_T_58 | _requestAIO_T_63; // @[Xbar.scala 363:92]
  wire  requestDOI_0_1 = auto_out_0_d_bits_source == 3'h4; // @[Parameters.scala 46:9]
  wire  requestDOI_1_1 = auto_out_1_d_bits_source == 3'h4; // @[Parameters.scala 46:9]
  wire [12:0] _beatsAI_decode_T_1 = 13'h3f << auto_in_0_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsAI_decode_T_3 = ~_beatsAI_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  beatsAI_decode = _beatsAI_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  beatsAI_opdata = ~auto_in_0_a_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  beatsAI_0 = beatsAI_opdata & beatsAI_decode; // @[Edges.scala 220:14]
  wire [12:0] _beatsAI_decode_T_5 = 13'h3f << auto_in_1_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsAI_decode_T_7 = ~_beatsAI_decode_T_5[5:0]; // @[package.scala 234:46]
  wire  beatsAI_decode_1 = _beatsAI_decode_T_7[5]; // @[Edges.scala 219:59]
  wire  beatsAI_opdata_1 = ~auto_in_1_a_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  beatsAI_1 = beatsAI_opdata_1 & beatsAI_decode_1; // @[Edges.scala 220:14]
  wire [12:0] _beatsDO_decode_T_1 = 13'h3f << auto_out_0_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsDO_decode_T_3 = ~_beatsDO_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  beatsDO_decode = _beatsDO_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  beatsDO_opdata = auto_out_0_d_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  beatsDO_0 = beatsDO_opdata & beatsDO_decode; // @[Edges.scala 220:14]
  wire [12:0] _beatsDO_decode_T_5 = 13'h3f << auto_out_1_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsDO_decode_T_7 = ~_beatsDO_decode_T_5[5:0]; // @[package.scala 234:46]
  wire  beatsDO_decode_1 = _beatsDO_decode_T_7[5]; // @[Edges.scala 219:59]
  wire  beatsDO_opdata_1 = auto_out_1_d_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  beatsDO_1 = beatsDO_opdata_1 & beatsDO_decode_1; // @[Edges.scala 220:14]
  wire  portsAOI_filtered__0_earlyValid = auto_in_0_a_valid & requestAIO_0_0; // @[Xbar.scala 428:50]
  wire  portsAOI_filtered__1_earlyValid = auto_in_0_a_valid & requestAIO_0_1; // @[Xbar.scala 428:50]
  reg  beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = ~beatsLeft; // @[Arbiter.scala 88:28]
  wire  portsAOI_filtered_1_0_earlyValid = auto_in_1_a_valid & requestAIO_1_0; // @[Xbar.scala 428:50]
  wire [1:0] readys_valid = {portsAOI_filtered_1_0_earlyValid,portsAOI_filtered__0_earlyValid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T = ~readys_mask; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_1 = readys_valid & _readys_filter_T; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter = {_readys_filter_T_1,portsAOI_filtered_1_0_earlyValid,portsAOI_filtered__0_earlyValid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_7 = {{1'd0}, readys_filter[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_1 = readys_filter | _GEN_7; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_4 = {readys_mask, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_8 = {{1'd0}, _readys_unready_T_1[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready = _GEN_8 | _readys_unready_T_4; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_2 = readys_unready[3:2] & readys_unready[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys = ~_readys_readys_T_2; // @[Arbiter.scala 26:18]
  wire  readys__0 = readys_readys[0]; // @[Arbiter.scala 95:86]
  reg  state__0; // @[Arbiter.scala 116:26]
  wire  allowed__0 = idle ? readys__0 : state__0; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered__0_ready = auto_out_0_a_ready & allowed__0; // @[Arbiter.scala 123:31]
  reg  beatsLeft_1; // @[Arbiter.scala 87:30]
  wire  idle_1 = ~beatsLeft_1; // @[Arbiter.scala 88:28]
  wire  portsAOI_filtered_1_1_earlyValid = auto_in_1_a_valid & requestAIO_1_1; // @[Xbar.scala 428:50]
  wire [1:0] readys_valid_1 = {portsAOI_filtered_1_1_earlyValid,portsAOI_filtered__1_earlyValid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_1; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_2 = ~readys_mask_1; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_3 = readys_valid_1 & _readys_filter_T_2; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_1 = {_readys_filter_T_3,portsAOI_filtered_1_1_earlyValid,portsAOI_filtered__1_earlyValid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_9 = {{1'd0}, readys_filter_1[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_6 = readys_filter_1 | _GEN_9; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_9 = {readys_mask_1, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_10 = {{1'd0}, _readys_unready_T_6[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_1 = _GEN_10 | _readys_unready_T_9; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_5 = readys_unready_1[3:2] & readys_unready_1[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_1 = ~_readys_readys_T_5; // @[Arbiter.scala 26:18]
  wire  readys_1_0 = readys_readys_1[0]; // @[Arbiter.scala 95:86]
  reg  state_1_0; // @[Arbiter.scala 116:26]
  wire  allowed_1_0 = idle_1 ? readys_1_0 : state_1_0; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered__1_ready = auto_out_1_a_ready & allowed_1_0; // @[Arbiter.scala 123:31]
  wire  readys__1 = readys_readys[1]; // @[Arbiter.scala 95:86]
  reg  state__1; // @[Arbiter.scala 116:26]
  wire  allowed__1 = idle ? readys__1 : state__1; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered_1_0_ready = auto_out_0_a_ready & allowed__1; // @[Arbiter.scala 123:31]
  wire  readys_1_1 = readys_readys_1[1]; // @[Arbiter.scala 95:86]
  reg  state_1_1; // @[Arbiter.scala 116:26]
  wire  allowed_1_1 = idle_1 ? readys_1_1 : state_1_1; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered_1_1_ready = auto_out_1_a_ready & allowed_1_1; // @[Arbiter.scala 123:31]
  wire  portsDIO_filtered__1_valid = auto_out_0_d_valid & requestDOI_0_1; // @[Xbar.scala 179:40]
  wire  allowed_2_0 = idle_2 ? readys_2_0 : state_2_0; // @[Arbiter.scala 121:24]
  wire  out_8_ready = auto_in_0_d_ready & allowed_2_0; // @[Arbiter.scala 123:31]
  reg  beatsLeft_3; // @[Arbiter.scala 87:30]
  wire  idle_3 = ~beatsLeft_3; // @[Arbiter.scala 88:28]
  wire  portsDIO_filtered_1_1_valid = auto_out_1_d_valid & requestDOI_1_1; // @[Xbar.scala 179:40]
  wire [1:0] readys_valid_3 = {portsDIO_filtered_1_1_valid,portsDIO_filtered__1_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_3; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_6 = ~readys_mask_3; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_7 = readys_valid_3 & _readys_filter_T_6; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_3 = {_readys_filter_T_7,portsDIO_filtered_1_1_valid,portsDIO_filtered__1_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_11 = {{1'd0}, readys_filter_3[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_16 = readys_filter_3 | _GEN_11; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_19 = {readys_mask_3, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_12 = {{1'd0}, _readys_unready_T_16[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_3 = _GEN_12 | _readys_unready_T_19; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_11 = readys_unready_3[3:2] & readys_unready_3[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_3 = ~_readys_readys_T_11; // @[Arbiter.scala 26:18]
  wire  readys_3_0 = readys_readys_3[0]; // @[Arbiter.scala 95:86]
  reg  state_3_0; // @[Arbiter.scala 116:26]
  wire  allowed_3_0 = idle_3 ? readys_3_0 : state_3_0; // @[Arbiter.scala 121:24]
  wire  out_12_ready = auto_in_1_d_ready & allowed_3_0; // @[Arbiter.scala 123:31]
  wire  allowed_2_1 = idle_2 ? readys_2_1 : state_2_1; // @[Arbiter.scala 121:24]
  wire  out_9_ready = auto_in_0_d_ready & allowed_2_1; // @[Arbiter.scala 123:31]
  wire  readys_3_1 = readys_readys_3[1]; // @[Arbiter.scala 95:86]
  reg  state_3_1; // @[Arbiter.scala 116:26]
  wire  allowed_3_1 = idle_3 ? readys_3_1 : state_3_1; // @[Arbiter.scala 121:24]
  wire  out_13_ready = auto_in_1_d_ready & allowed_3_1; // @[Arbiter.scala 123:31]
  wire  latch = idle & auto_out_0_a_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T = readys_readys & readys_valid; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_1 = {_readys_mask_T, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_3 = _readys_mask_T | _readys_mask_T_1[1:0]; // @[package.scala 244:43]
  wire  earlyWinner__0 = readys__0 & portsAOI_filtered__0_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__1 = readys__1 & portsAOI_filtered_1_0_earlyValid; // @[Arbiter.scala 97:79]
  wire  _T_10 = portsAOI_filtered__0_earlyValid | portsAOI_filtered_1_0_earlyValid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0 = earlyWinner__0 & beatsAI_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1 = earlyWinner__1 & beatsAI_1; // @[Arbiter.scala 111:73]
  wire  initBeats = maskedBeats_0 | maskedBeats_1; // @[Arbiter.scala 112:44]
  wire  muxStateEarly__0 = idle ? earlyWinner__0 : state__0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly__1 = idle ? earlyWinner__1 : state__1; // @[Arbiter.scala 117:30]
  wire  _out_0_a_earlyValid_T_3 = state__0 & portsAOI_filtered__0_earlyValid | state__1 &
    portsAOI_filtered_1_0_earlyValid; // @[Mux.scala 27:73]
  wire  out_2_0_a_earlyValid = idle ? _T_10 : _out_0_a_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = auto_out_0_a_ready & out_2_0_a_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [2:0] in_0_a_bits_source = {{1'd0}, auto_in_0_a_bits_source}; // @[Xbar.scala 231:18 237:29]
  wire [2:0] _T_36 = muxStateEarly__0 ? in_0_a_bits_source : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_37 = muxStateEarly__1 ? in_1_a_bits_source : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_39 = muxStateEarly__0 ? auto_in_0_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_40 = muxStateEarly__1 ? auto_in_1_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_45 = muxStateEarly__0 ? auto_in_0_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_46 = muxStateEarly__1 ? auto_in_1_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire  latch_1 = idle_1 & auto_out_1_a_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_5 = readys_readys_1 & readys_valid_1; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_6 = {_readys_mask_T_5, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_8 = _readys_mask_T_5 | _readys_mask_T_6[1:0]; // @[package.scala 244:43]
  wire  earlyWinner_1_0 = readys_1_0 & portsAOI_filtered__1_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1_1 = readys_1_1 & portsAOI_filtered_1_1_earlyValid; // @[Arbiter.scala 97:79]
  wire  _T_58 = portsAOI_filtered__1_earlyValid | portsAOI_filtered_1_1_earlyValid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_1 = earlyWinner_1_0 & beatsAI_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_1 = earlyWinner_1_1 & beatsAI_1; // @[Arbiter.scala 111:73]
  wire  initBeats_1 = maskedBeats_0_1 | maskedBeats_1_1; // @[Arbiter.scala 112:44]
  wire  muxStateEarly_1_0 = idle_1 ? earlyWinner_1_0 : state_1_0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_1_1 = idle_1 ? earlyWinner_1_1 : state_1_1; // @[Arbiter.scala 117:30]
  wire  _out_1_a_earlyValid_T_3 = state_1_0 & portsAOI_filtered__1_earlyValid | state_1_1 &
    portsAOI_filtered_1_1_earlyValid; // @[Mux.scala 27:73]
  wire  out_2_1_a_earlyValid = idle_1 ? _T_58 : _out_1_a_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_8 = auto_out_1_a_ready & out_2_1_a_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_75 = muxStateEarly_1_0 ? auto_in_0_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_76 = muxStateEarly_1_1 ? auto_in_1_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_78 = muxStateEarly_1_0 ? auto_in_0_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_79 = muxStateEarly_1_1 ? auto_in_1_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_81 = muxStateEarly_1_0 ? auto_in_0_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_82 = muxStateEarly_1_1 ? auto_in_1_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_84 = muxStateEarly_1_0 ? in_0_a_bits_source : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_85 = muxStateEarly_1_1 ? in_1_a_bits_source : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_87 = muxStateEarly_1_0 ? auto_in_0_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_88 = muxStateEarly_1_1 ? auto_in_1_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_93 = muxStateEarly_1_0 ? auto_in_0_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_94 = muxStateEarly_1_1 ? auto_in_1_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire  latch_2 = idle_2 & auto_in_0_d_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_10 = readys_readys_2 & readys_valid_2; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_11 = {_readys_mask_T_10, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_13 = _readys_mask_T_10 | _readys_mask_T_11[1:0]; // @[package.scala 244:43]
  wire  _T_106 = portsDIO_filtered__0_valid | portsDIO_filtered_1_0_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_2 = earlyWinner_2_0 & beatsDO_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_2 = earlyWinner_2_1 & beatsDO_1; // @[Arbiter.scala 111:73]
  wire  initBeats_2 = maskedBeats_0_2 | maskedBeats_1_2; // @[Arbiter.scala 112:44]
  wire  _sink_ACancel_earlyValid_T_3 = state_2_0 & portsDIO_filtered__0_valid | state_2_1 & portsDIO_filtered_1_0_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_5_earlyValid = idle_2 ? _T_106 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_14 = auto_in_0_d_ready & sink_ACancel_5_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [2:0] _T_135 = muxStateEarly_2_0 ? auto_out_0_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_136 = muxStateEarly_2_1 ? auto_out_1_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_141 = muxStateEarly_2_0 ? auto_out_0_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_142 = muxStateEarly_2_1 ? auto_out_1_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire  latch_3 = idle_3 & auto_in_1_d_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_15 = readys_readys_3 & readys_valid_3; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_16 = {_readys_mask_T_15, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_18 = _readys_mask_T_15 | _readys_mask_T_16[1:0]; // @[package.scala 244:43]
  wire  earlyWinner_3_0 = readys_3_0 & portsDIO_filtered__1_valid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_3_1 = readys_3_1 & portsDIO_filtered_1_1_valid; // @[Arbiter.scala 97:79]
  wire  _T_154 = portsDIO_filtered__1_valid | portsDIO_filtered_1_1_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_3 = earlyWinner_3_0 & beatsDO_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_3 = earlyWinner_3_1 & beatsDO_1; // @[Arbiter.scala 111:73]
  wire  initBeats_3 = maskedBeats_0_3 | maskedBeats_1_3; // @[Arbiter.scala 112:44]
  wire  muxStateEarly_3_0 = idle_3 ? earlyWinner_3_0 : state_3_0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_3_1 = idle_3 ? earlyWinner_3_1 : state_3_1; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_8 = state_3_0 & portsDIO_filtered__1_valid | state_3_1 & portsDIO_filtered_1_1_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_7_earlyValid = idle_3 ? _T_154 : _sink_ACancel_earlyValid_T_8; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_20 = auto_in_1_d_ready & sink_ACancel_7_earlyValid; // @[ReadyValidCancel.scala 49:33]
  assign auto_in_1_a_ready = requestAIO_1_0 & portsAOI_filtered_1_0_ready | requestAIO_1_1 & portsAOI_filtered_1_1_ready
    ; // @[Mux.scala 27:73]
  assign auto_in_1_d_valid = idle_3 ? _T_154 : _sink_ACancel_earlyValid_T_8; // @[Arbiter.scala 125:29]
  assign auto_in_1_d_bits_denied = muxStateEarly_3_0 | muxStateEarly_3_1 & auto_out_1_d_bits_denied; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_data = muxStateEarly_3_1 ? auto_out_1_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_corrupt = muxStateEarly_3_0 & auto_out_0_d_bits_corrupt | muxStateEarly_3_1 &
    auto_out_1_d_bits_corrupt; // @[Mux.scala 27:73]
  assign auto_in_0_a_ready = requestAIO_0_0 & portsAOI_filtered__0_ready | requestAIO_0_1 & portsAOI_filtered__1_ready; // @[Mux.scala 27:73]
  assign auto_in_0_d_valid = idle_2 ? _T_106 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign auto_in_0_d_bits_opcode = _T_141 | _T_142; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_size = _T_135 | _T_136; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_source = sink_ACancel_5_bits_source[1:0]; // @[Xbar.scala 228:69]
  assign auto_in_0_d_bits_denied = muxStateEarly_2_0 | muxStateEarly_2_1 & auto_out_1_d_bits_denied; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_data = muxStateEarly_2_1 ? auto_out_1_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_corrupt = muxStateEarly_2_0 & auto_out_0_d_bits_corrupt | muxStateEarly_2_1 &
    auto_out_1_d_bits_corrupt; // @[Mux.scala 27:73]
  assign auto_out_1_a_valid = idle_1 ? _T_58 : _out_1_a_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign auto_out_1_a_bits_opcode = _T_93 | _T_94; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_param = muxStateEarly_1_1 ? auto_in_1_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_size = _T_87 | _T_88; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_source = _T_84 | _T_85; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_address = _T_81 | _T_82; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_mask = _T_78 | _T_79; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_data = _T_75 | _T_76; // @[Mux.scala 27:73]
  assign auto_out_1_d_ready = requestDOI_1_0 & out_9_ready | requestDOI_1_1 & out_13_ready; // @[Mux.scala 27:73]
  assign auto_out_0_a_valid = idle ? _T_10 : _out_0_a_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign auto_out_0_a_bits_opcode = _T_45 | _T_46; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_size = _T_39 | _T_40; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_source = _T_36 | _T_37; // @[Mux.scala 27:73]
  assign auto_out_0_d_ready = requestDOI_0_0 & out_8_ready | requestDOI_0_1 & out_12_ready; // @[Mux.scala 27:73]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 113:23]
      beatsLeft_2 <= 1'h0;
    end else if (latch_2) begin
      beatsLeft_2 <= initBeats_2;
    end else begin
      beatsLeft_2 <= beatsLeft_2 - _beatsLeft_T_14;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 27:32]
      readys_mask_2 <= 2'h3; // @[Arbiter.scala 28:12]
    end else if (latch_2 & |readys_valid_2) begin // @[Arbiter.scala 23:23]
      readys_mask_2 <= _readys_mask_T_13;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_2_0 <= 1'h0;
    end else if (idle_2) begin
      state_2_0 <= earlyWinner_2_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_2_1 <= 1'h0;
    end else if (idle_2) begin
      state_2_1 <= earlyWinner_2_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 113:23]
      beatsLeft <= 1'h0;
    end else if (latch) begin
      beatsLeft <= initBeats;
    end else begin
      beatsLeft <= beatsLeft - _beatsLeft_T_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 27:32]
      readys_mask <= 2'h3; // @[Arbiter.scala 28:12]
    end else if (latch & |readys_valid) begin // @[Arbiter.scala 23:23]
      readys_mask <= _readys_mask_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state__0 <= 1'h0;
    end else if (idle) begin
      state__0 <= earlyWinner__0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 113:23]
      beatsLeft_1 <= 1'h0;
    end else if (latch_1) begin
      beatsLeft_1 <= initBeats_1;
    end else begin
      beatsLeft_1 <= beatsLeft_1 - _beatsLeft_T_8;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 27:32]
      readys_mask_1 <= 2'h3; // @[Arbiter.scala 28:12]
    end else if (latch_1 & |readys_valid_1) begin // @[Arbiter.scala 23:23]
      readys_mask_1 <= _readys_mask_T_8;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_1_0 <= 1'h0;
    end else if (idle_1) begin
      state_1_0 <= earlyWinner_1_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state__1 <= 1'h0;
    end else if (idle) begin
      state__1 <= earlyWinner__1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_1_1 <= 1'h0;
    end else if (idle_1) begin
      state_1_1 <= earlyWinner_1_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 113:23]
      beatsLeft_3 <= 1'h0;
    end else if (latch_3) begin
      beatsLeft_3 <= initBeats_3;
    end else begin
      beatsLeft_3 <= beatsLeft_3 - _beatsLeft_T_20;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 27:32]
      readys_mask_3 <= 2'h3; // @[Arbiter.scala 28:12]
    end else if (latch_3 & |readys_valid_3) begin // @[Arbiter.scala 23:23]
      readys_mask_3 <= _readys_mask_T_18;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_3_0 <= 1'h0;
    end else if (idle_3) begin
      state_3_0 <= earlyWinner_3_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_3_1 <= 1'h0;
    end else if (idle_3) begin
      state_3_1 <= earlyWinner_3_1;
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
  beatsLeft_2 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  readys_mask_2 = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  state_2_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  state_2_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  beatsLeft = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  readys_mask = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  state__0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  beatsLeft_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  readys_mask_1 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  state_1_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state__1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  state_1_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  beatsLeft_3 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  readys_mask_3 = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  state_3_0 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  state_3_1 = _RAND_15[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    beatsLeft_2 = 1'h0;
  end
  if (reset) begin
    readys_mask_2 = 2'h3;
  end
  if (reset) begin
    state_2_0 = 1'h0;
  end
  if (reset) begin
    state_2_1 = 1'h0;
  end
  if (reset) begin
    beatsLeft = 1'h0;
  end
  if (reset) begin
    readys_mask = 2'h3;
  end
  if (reset) begin
    state__0 = 1'h0;
  end
  if (reset) begin
    beatsLeft_1 = 1'h0;
  end
  if (reset) begin
    readys_mask_1 = 2'h3;
  end
  if (reset) begin
    state_1_0 = 1'h0;
  end
  if (reset) begin
    state__1 = 1'h0;
  end
  if (reset) begin
    state_1_1 = 1'h0;
  end
  if (reset) begin
    beatsLeft_3 = 1'h0;
  end
  if (reset) begin
    readys_mask_3 = 2'h3;
  end
  if (reset) begin
    state_3_0 = 1'h0;
  end
  if (reset) begin
    state_3_1 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

