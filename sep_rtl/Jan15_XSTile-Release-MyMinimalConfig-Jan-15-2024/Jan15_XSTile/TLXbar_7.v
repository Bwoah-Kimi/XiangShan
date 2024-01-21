module TLXbar_7(
  input          clock,
  input          reset,
  output         auto_in_2_a_ready,
  input          auto_in_2_a_valid,
  input  [2:0]   auto_in_2_a_bits_opcode,
  input  [2:0]   auto_in_2_a_bits_param,
  input  [2:0]   auto_in_2_a_bits_size,
  input  [2:0]   auto_in_2_a_bits_source,
  input  [35:0]  auto_in_2_a_bits_address,
  input  [3:0]   auto_in_2_a_bits_user_reqSource,
  input  [31:0]  auto_in_2_a_bits_mask,
  input  [255:0] auto_in_2_a_bits_data,
  input          auto_in_2_a_bits_corrupt,
  input          auto_in_2_d_ready,
  output         auto_in_2_d_valid,
  output [2:0]   auto_in_2_d_bits_opcode,
  output [2:0]   auto_in_2_d_bits_size,
  output [2:0]   auto_in_2_d_bits_source,
  output [255:0] auto_in_2_d_bits_data,
  output         auto_in_1_a_ready,
  input          auto_in_1_a_valid,
  input  [2:0]   auto_in_1_a_bits_opcode,
  input  [2:0]   auto_in_1_a_bits_size,
  input  [1:0]   auto_in_1_a_bits_source,
  input  [35:0]  auto_in_1_a_bits_address,
  input  [3:0]   auto_in_1_a_bits_user_reqSource,
  input  [31:0]  auto_in_1_a_bits_mask,
  output         auto_in_1_d_valid,
  output [2:0]   auto_in_1_d_bits_opcode,
  output [1:0]   auto_in_1_d_bits_source,
  output [255:0] auto_in_1_d_bits_data,
  output         auto_in_1_d_bits_corrupt,
  output         auto_in_0_a_ready,
  input          auto_in_0_a_valid,
  input  [2:0]   auto_in_0_a_bits_opcode,
  input  [2:0]   auto_in_0_a_bits_param,
  input  [2:0]   auto_in_0_a_bits_size,
  input  [3:0]   auto_in_0_a_bits_source,
  input  [35:0]  auto_in_0_a_bits_address,
  input  [32:0]  auto_in_0_a_bits_user_vaddr,
  input  [3:0]   auto_in_0_a_bits_user_reqSource,
  input          auto_in_0_a_bits_user_needHint,
  input  [31:0]  auto_in_0_a_bits_mask,
  input  [255:0] auto_in_0_a_bits_data,
  input          auto_in_0_a_bits_corrupt,
  input          auto_in_0_bready,
  output         auto_in_0_bvalid,
  output [2:0]   auto_in_0_bopcode,
  output [1:0]   auto_in_0_bparam,
  output [2:0]   auto_in_0_bsize,
  output [3:0]   auto_in_0_bsource,
  output [35:0]  auto_in_0_baddress,
  output [31:0]  auto_in_0_bmask,
  output [255:0] auto_in_0_bdata,
  output         auto_in_0_c_ready,
  input          auto_in_0_c_valid,
  input  [2:0]   auto_in_0_c_bits_opcode,
  input  [2:0]   auto_in_0_c_bits_param,
  input  [2:0]   auto_in_0_c_bits_size,
  input  [3:0]   auto_in_0_c_bits_source,
  input  [35:0]  auto_in_0_c_bits_address,
  input  [32:0]  auto_in_0_c_bits_user_vaddr,
  input  [3:0]   auto_in_0_c_bits_user_reqSource,
  input          auto_in_0_c_bits_user_needHint,
  input  [255:0] auto_in_0_c_bits_data,
  input          auto_in_0_c_bits_corrupt,
  input          auto_in_0_d_ready,
  output         auto_in_0_d_valid,
  output [2:0]   auto_in_0_d_bits_opcode,
  output [1:0]   auto_in_0_d_bits_param,
  output [2:0]   auto_in_0_d_bits_size,
  output [3:0]   auto_in_0_d_bits_source,
  output [8:0]   auto_in_0_d_bits_sink,
  output         auto_in_0_d_bits_denied,
  output [255:0] auto_in_0_d_bits_data,
  output         auto_in_0_d_bits_corrupt,
  output         auto_in_0_e_ready,
  input          auto_in_0_e_valid,
  input  [8:0]   auto_in_0_e_bits_sink,
  input          auto_out_1_a_ready,
  output         auto_out_1_a_valid,
  output [2:0]   auto_out_1_a_bits_opcode,
  output [2:0]   auto_out_1_a_bits_param,
  output [2:0]   auto_out_1_a_bits_size,
  output [4:0]   auto_out_1_a_bits_source,
  output [35:0]  auto_out_1_a_bits_address,
  output [32:0]  auto_out_1_a_bits_user_vaddr,
  output [3:0]   auto_out_1_a_bits_user_reqSource,
  output         auto_out_1_a_bits_user_needHint,
  output [31:0]  auto_out_1_a_bits_mask,
  output [255:0] auto_out_1_a_bits_data,
  output         auto_out_1_a_bits_corrupt,
  output         auto_out_1_bready,
  input          auto_out_1_bvalid,
  input  [2:0]   auto_out_1_bopcode,
  input  [1:0]   auto_out_1_bparam,
  input  [2:0]   auto_out_1_bsize,
  input  [4:0]   auto_out_1_bsource,
  input  [35:0]  auto_out_1_baddress,
  input  [31:0]  auto_out_1_bmask,
  input  [255:0] auto_out_1_bdata,
  input          auto_out_1_c_ready,
  output         auto_out_1_c_valid,
  output [2:0]   auto_out_1_c_bits_opcode,
  output [2:0]   auto_out_1_c_bits_param,
  output [2:0]   auto_out_1_c_bits_size,
  output [4:0]   auto_out_1_c_bits_source,
  output [35:0]  auto_out_1_c_bits_address,
  output [32:0]  auto_out_1_c_bits_user_vaddr,
  output [3:0]   auto_out_1_c_bits_user_reqSource,
  output         auto_out_1_c_bits_user_needHint,
  output [255:0] auto_out_1_c_bits_data,
  output         auto_out_1_c_bits_corrupt,
  output         auto_out_1_d_ready,
  input          auto_out_1_d_valid,
  input  [2:0]   auto_out_1_d_bits_opcode,
  input  [1:0]   auto_out_1_d_bits_param,
  input  [2:0]   auto_out_1_d_bits_size,
  input  [4:0]   auto_out_1_d_bits_source,
  input  [7:0]   auto_out_1_d_bits_sink,
  input          auto_out_1_d_bits_denied,
  input  [255:0] auto_out_1_d_bits_data,
  input          auto_out_1_d_bits_corrupt,
  input          auto_out_1_e_ready,
  output         auto_out_1_e_valid,
  output [7:0]   auto_out_1_e_bits_sink,
  input          auto_out_0_a_ready,
  output         auto_out_0_a_valid,
  output [2:0]   auto_out_0_a_bits_opcode,
  output [2:0]   auto_out_0_a_bits_param,
  output [2:0]   auto_out_0_a_bits_size,
  output [4:0]   auto_out_0_a_bits_source,
  output [35:0]  auto_out_0_a_bits_address,
  output [32:0]  auto_out_0_a_bits_user_vaddr,
  output [3:0]   auto_out_0_a_bits_user_reqSource,
  output         auto_out_0_a_bits_user_needHint,
  output [31:0]  auto_out_0_a_bits_mask,
  output [255:0] auto_out_0_a_bits_data,
  output         auto_out_0_a_bits_corrupt,
  output         auto_out_0_bready,
  input          auto_out_0_bvalid,
  input  [2:0]   auto_out_0_bopcode,
  input  [1:0]   auto_out_0_bparam,
  input  [2:0]   auto_out_0_bsize,
  input  [4:0]   auto_out_0_bsource,
  input  [35:0]  auto_out_0_baddress,
  input  [31:0]  auto_out_0_bmask,
  input  [255:0] auto_out_0_bdata,
  input          auto_out_0_c_ready,
  output         auto_out_0_c_valid,
  output [2:0]   auto_out_0_c_bits_opcode,
  output [2:0]   auto_out_0_c_bits_param,
  output [2:0]   auto_out_0_c_bits_size,
  output [4:0]   auto_out_0_c_bits_source,
  output [35:0]  auto_out_0_c_bits_address,
  output [32:0]  auto_out_0_c_bits_user_vaddr,
  output [3:0]   auto_out_0_c_bits_user_reqSource,
  output         auto_out_0_c_bits_user_needHint,
  output [255:0] auto_out_0_c_bits_data,
  output         auto_out_0_c_bits_corrupt,
  output         auto_out_0_d_ready,
  input          auto_out_0_d_valid,
  input  [2:0]   auto_out_0_d_bits_opcode,
  input  [1:0]   auto_out_0_d_bits_param,
  input  [2:0]   auto_out_0_d_bits_size,
  input  [4:0]   auto_out_0_d_bits_source,
  input  [7:0]   auto_out_0_d_bits_sink,
  input          auto_out_0_d_bits_denied,
  input  [255:0] auto_out_0_d_bits_data,
  input          auto_out_0_d_bits_corrupt,
  input          auto_out_0_e_ready,
  output         auto_out_0_e_valid,
  output [7:0]   auto_out_0_e_bits_sink
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
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
`endif // RANDOMIZE_REG_INIT
  reg  beatsLeft_2; // @[Arbiter.scala 87:30]
  wire  idle_2 = ~beatsLeft_2; // @[Arbiter.scala 88:28]
  wire  requestBOI_1_0 = ~auto_out_1_bsource[4]; // @[Parameters.scala 54:32]
  wire  portsBIO_filtered_1_0_valid = auto_out_1_bvalid & requestBOI_1_0; // @[Xbar.scala 179:40]
  wire  requestBOI_0_0 = ~auto_out_0_bsource[4]; // @[Parameters.scala 54:32]
  wire  portsBIO_filtered__0_valid = auto_out_0_bvalid & requestBOI_0_0; // @[Xbar.scala 179:40]
  wire [1:0] readys_valid_2 = {portsBIO_filtered_1_0_valid,portsBIO_filtered__0_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_2; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_4 = ~readys_mask_2; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_5 = readys_valid_2 & _readys_filter_T_4; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_2 = {_readys_filter_T_5,portsBIO_filtered_1_0_valid,portsBIO_filtered__0_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_6 = {{1'd0}, readys_filter_2[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_15 = readys_filter_2 | _GEN_6; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_18 = {readys_mask_2, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_7 = {{1'd0}, _readys_unready_T_15[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_2 = _GEN_7 | _readys_unready_T_18; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_8 = readys_unready_2[3:2] & readys_unready_2[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_2 = ~_readys_readys_T_8; // @[Arbiter.scala 26:18]
  wire  readys_2_0 = readys_readys_2[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_2_0 = readys_2_0 & portsBIO_filtered__0_valid; // @[Arbiter.scala 97:79]
  reg  state_2_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_2_0 = idle_2 ? earlyWinner_2_0 : state_2_0; // @[Arbiter.scala 117:30]
  wire [4:0] _T_222 = muxStateEarly_2_0 ? auto_out_0_bsource : 5'h0; // @[Mux.scala 27:73]
  wire  readys_2_1 = readys_readys_2[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_2_1 = readys_2_1 & portsBIO_filtered_1_0_valid; // @[Arbiter.scala 97:79]
  reg  state_2_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_2_1 = idle_2 ? earlyWinner_2_1 : state_2_1; // @[Arbiter.scala 117:30]
  wire [4:0] _T_223 = muxStateEarly_2_1 ? auto_out_1_bsource : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] sink_ACancel_4_bits_source = _T_222 | _T_223; // @[Mux.scala 27:73]
  reg  beatsLeft_3; // @[Arbiter.scala 87:30]
  wire  idle_3 = ~beatsLeft_3; // @[Arbiter.scala 88:28]
  wire  requestDOI_1_0 = ~auto_out_1_d_bits_source[4]; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered_1_0_valid = auto_out_1_d_valid & requestDOI_1_0; // @[Xbar.scala 179:40]
  wire  requestDOI_0_0 = ~auto_out_0_d_bits_source[4]; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered__0_valid = auto_out_0_d_valid & requestDOI_0_0; // @[Xbar.scala 179:40]
  wire [1:0] readys_valid_3 = {portsDIO_filtered_1_0_valid,portsDIO_filtered__0_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_3; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_6 = ~readys_mask_3; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_7 = readys_valid_3 & _readys_filter_T_6; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_3 = {_readys_filter_T_7,portsDIO_filtered_1_0_valid,portsDIO_filtered__0_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_8 = {{1'd0}, readys_filter_3[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_20 = readys_filter_3 | _GEN_8; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_23 = {readys_mask_3, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_9 = {{1'd0}, _readys_unready_T_20[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_3 = _GEN_9 | _readys_unready_T_23; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_11 = readys_unready_3[3:2] & readys_unready_3[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_3 = ~_readys_readys_T_11; // @[Arbiter.scala 26:18]
  wire  readys_3_0 = readys_readys_3[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_3_0 = readys_3_0 & portsDIO_filtered__0_valid; // @[Arbiter.scala 97:79]
  reg  state_3_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_3_0 = idle_3 ? earlyWinner_3_0 : state_3_0; // @[Arbiter.scala 117:30]
  wire [4:0] _T_270 = muxStateEarly_3_0 ? auto_out_0_d_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire  readys_3_1 = readys_readys_3[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_3_1 = readys_3_1 & portsDIO_filtered_1_0_valid; // @[Arbiter.scala 97:79]
  reg  state_3_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_3_1 = idle_3 ? earlyWinner_3_1 : state_3_1; // @[Arbiter.scala 117:30]
  wire [4:0] _T_271 = muxStateEarly_3_1 ? auto_out_1_d_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] sink_ACancel_5_bits_source = _T_270 | _T_271; // @[Mux.scala 27:73]
  wire [4:0] _GEN_10 = {{3'd0}, auto_in_1_a_bits_source}; // @[Xbar.scala 237:55]
  wire [4:0] in_1_a_bits_source = _GEN_10 | 5'h18; // @[Xbar.scala 237:55]
  reg  beatsLeft_4; // @[Arbiter.scala 87:30]
  wire  idle_4 = ~beatsLeft_4; // @[Arbiter.scala 88:28]
  wire  requestDOI_1_1 = auto_out_1_d_bits_source[4:2] == 3'h6; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered_1_1_valid = auto_out_1_d_valid & requestDOI_1_1; // @[Xbar.scala 179:40]
  wire  requestDOI_0_1 = auto_out_0_d_bits_source[4:2] == 3'h6; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered__1_valid = auto_out_0_d_valid & requestDOI_0_1; // @[Xbar.scala 179:40]
  wire [1:0] readys_valid_4 = {portsDIO_filtered_1_1_valid,portsDIO_filtered__1_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_4; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_8 = ~readys_mask_4; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_9 = readys_valid_4 & _readys_filter_T_8; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_4 = {_readys_filter_T_9,portsDIO_filtered_1_1_valid,portsDIO_filtered__1_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_11 = {{1'd0}, readys_filter_4[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_25 = readys_filter_4 | _GEN_11; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_28 = {readys_mask_4, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_12 = {{1'd0}, _readys_unready_T_25[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_4 = _GEN_12 | _readys_unready_T_28; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_14 = readys_unready_4[3:2] & readys_unready_4[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_4 = ~_readys_readys_T_14; // @[Arbiter.scala 26:18]
  wire  readys_4_0 = readys_readys_4[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_4_0 = readys_4_0 & portsDIO_filtered__1_valid; // @[Arbiter.scala 97:79]
  reg  state_4_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_4_0 = idle_4 ? earlyWinner_4_0 : state_4_0; // @[Arbiter.scala 117:30]
  wire [4:0] _T_318 = muxStateEarly_4_0 ? auto_out_0_d_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire  readys_4_1 = readys_readys_4[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_4_1 = readys_4_1 & portsDIO_filtered_1_1_valid; // @[Arbiter.scala 97:79]
  reg  state_4_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_4_1 = idle_4 ? earlyWinner_4_1 : state_4_1; // @[Arbiter.scala 117:30]
  wire [4:0] _T_319 = muxStateEarly_4_1 ? auto_out_1_d_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] sink_ACancel_7_bits_source = _T_318 | _T_319; // @[Mux.scala 27:73]
  wire [4:0] _GEN_13 = {{2'd0}, auto_in_2_a_bits_source}; // @[Xbar.scala 237:55]
  wire [4:0] in_2_a_bits_source = _GEN_13 | 5'h10; // @[Xbar.scala 237:55]
  reg  beatsLeft_5; // @[Arbiter.scala 87:30]
  wire  idle_5 = ~beatsLeft_5; // @[Arbiter.scala 88:28]
  wire  requestDOI_1_2 = auto_out_1_d_bits_source[4:3] == 2'h2; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered_1_2_valid = auto_out_1_d_valid & requestDOI_1_2; // @[Xbar.scala 179:40]
  wire  requestDOI_0_2 = auto_out_0_d_bits_source[4:3] == 2'h2; // @[Parameters.scala 54:32]
  wire  portsDIO_filtered__2_valid = auto_out_0_d_valid & requestDOI_0_2; // @[Xbar.scala 179:40]
  wire [1:0] readys_valid_5 = {portsDIO_filtered_1_2_valid,portsDIO_filtered__2_valid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask_5; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_10 = ~readys_mask_5; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_11 = readys_valid_5 & _readys_filter_T_10; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_5 = {_readys_filter_T_11,portsDIO_filtered_1_2_valid,portsDIO_filtered__2_valid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_14 = {{1'd0}, readys_filter_5[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_30 = readys_filter_5 | _GEN_14; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_33 = {readys_mask_5, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_15 = {{1'd0}, _readys_unready_T_30[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_5 = _GEN_15 | _readys_unready_T_33; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_17 = readys_unready_5[3:2] & readys_unready_5[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_5 = ~_readys_readys_T_17; // @[Arbiter.scala 26:18]
  wire  readys_5_0 = readys_readys_5[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_5_0 = readys_5_0 & portsDIO_filtered__2_valid; // @[Arbiter.scala 97:79]
  reg  state_5_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_5_0 = idle_5 ? earlyWinner_5_0 : state_5_0; // @[Arbiter.scala 117:30]
  wire [4:0] _T_366 = muxStateEarly_5_0 ? auto_out_0_d_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire  readys_5_1 = readys_readys_5[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_5_1 = readys_5_1 & portsDIO_filtered_1_2_valid; // @[Arbiter.scala 97:79]
  reg  state_5_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_5_1 = idle_5 ? earlyWinner_5_1 : state_5_1; // @[Arbiter.scala 117:30]
  wire [4:0] _T_367 = muxStateEarly_5_1 ? auto_out_1_d_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] sink_ACancel_9_bits_source = _T_366 | _T_367; // @[Mux.scala 27:73]
  wire [8:0] _GEN_16 = {{1'd0}, auto_out_0_d_bits_sink}; // @[Xbar.scala 323:53]
  wire [8:0] out_3_0_d_bits_sink = _GEN_16 | 9'h100; // @[Xbar.scala 323:53]
  wire [36:0] _requestAIO_T_1 = {1'b0,$signed(auto_in_0_a_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_3 = $signed(_requestAIO_T_1) & 37'sh40; // @[Parameters.scala 137:52]
  wire  requestAIO_0_0 = $signed(_requestAIO_T_3) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_5 = auto_in_0_a_bits_address ^ 36'h40; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_6 = {1'b0,$signed(_requestAIO_T_5)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_8 = $signed(_requestAIO_T_6) & 37'sh40; // @[Parameters.scala 137:52]
  wire  requestAIO_0_1 = $signed(_requestAIO_T_8) == 37'sh0; // @[Parameters.scala 137:67]
  wire [36:0] _requestAIO_T_11 = {1'b0,$signed(auto_in_1_a_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_13 = $signed(_requestAIO_T_11) & 37'sh40; // @[Parameters.scala 137:52]
  wire  requestAIO_1_0 = $signed(_requestAIO_T_13) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_15 = auto_in_1_a_bits_address ^ 36'h40; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_16 = {1'b0,$signed(_requestAIO_T_15)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_18 = $signed(_requestAIO_T_16) & 37'sh40; // @[Parameters.scala 137:52]
  wire  requestAIO_1_1 = $signed(_requestAIO_T_18) == 37'sh0; // @[Parameters.scala 137:67]
  wire [36:0] _requestAIO_T_21 = {1'b0,$signed(auto_in_2_a_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_23 = $signed(_requestAIO_T_21) & 37'sh40; // @[Parameters.scala 137:52]
  wire  requestAIO_2_0 = $signed(_requestAIO_T_23) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestAIO_T_25 = auto_in_2_a_bits_address ^ 36'h40; // @[Parameters.scala 137:31]
  wire [36:0] _requestAIO_T_26 = {1'b0,$signed(_requestAIO_T_25)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestAIO_T_28 = $signed(_requestAIO_T_26) & 37'sh40; // @[Parameters.scala 137:52]
  wire  requestAIO_2_1 = $signed(_requestAIO_T_28) == 37'sh0; // @[Parameters.scala 137:67]
  wire [36:0] _requestCIO_T_1 = {1'b0,$signed(auto_in_0_c_bits_address)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestCIO_T_3 = $signed(_requestCIO_T_1) & 37'sh40; // @[Parameters.scala 137:52]
  wire  requestCIO_0_0 = $signed(_requestCIO_T_3) == 37'sh0; // @[Parameters.scala 137:67]
  wire [35:0] _requestCIO_T_5 = auto_in_0_c_bits_address ^ 36'h40; // @[Parameters.scala 137:31]
  wire [36:0] _requestCIO_T_6 = {1'b0,$signed(_requestCIO_T_5)}; // @[Parameters.scala 137:49]
  wire [36:0] _requestCIO_T_8 = $signed(_requestCIO_T_6) & 37'sh40; // @[Parameters.scala 137:52]
  wire  requestCIO_0_1 = $signed(_requestCIO_T_8) == 37'sh0; // @[Parameters.scala 137:67]
  wire  requestEIO_0_0 = auto_in_0_e_bits_sink[8]; // @[Parameters.scala 54:10]
  wire  requestEIO_0_1 = ~requestEIO_0_0; // @[Parameters.scala 54:32]
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
  wire [12:0] _beatsAI_decode_T_9 = 13'h3f << auto_in_2_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _beatsAI_decode_T_11 = ~_beatsAI_decode_T_9[5:0]; // @[package.scala 234:46]
  wire  beatsAI_decode_2 = _beatsAI_decode_T_11[5]; // @[Edges.scala 219:59]
  wire  beatsAI_opdata_2 = ~auto_in_2_a_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  beatsAI_2 = beatsAI_opdata_2 & beatsAI_decode_2; // @[Edges.scala 220:14]
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
  wire  portsAOI_filtered_2_0_earlyValid = auto_in_2_a_valid & requestAIO_2_0; // @[Xbar.scala 428:50]
  wire  portsAOI_filtered_1_0_earlyValid = auto_in_1_a_valid & requestAIO_1_0; // @[Xbar.scala 428:50]
  wire [2:0] readys_valid = {portsAOI_filtered_2_0_earlyValid,portsAOI_filtered_1_0_earlyValid,
    portsAOI_filtered__0_earlyValid}; // @[Cat.scala 31:58]
  reg [2:0] readys_mask; // @[Arbiter.scala 23:23]
  wire [2:0] _readys_filter_T = ~readys_mask; // @[Arbiter.scala 24:30]
  wire [2:0] _readys_filter_T_1 = readys_valid & _readys_filter_T; // @[Arbiter.scala 24:28]
  wire [5:0] readys_filter = {_readys_filter_T_1,portsAOI_filtered_2_0_earlyValid,portsAOI_filtered_1_0_earlyValid,
    portsAOI_filtered__0_earlyValid}; // @[Cat.scala 31:58]
  wire [5:0] _GEN_17 = {{1'd0}, readys_filter[5:1]}; // @[package.scala 253:43]
  wire [5:0] _readys_unready_T_1 = readys_filter | _GEN_17; // @[package.scala 253:43]
  wire [5:0] _GEN_18 = {{2'd0}, _readys_unready_T_1[5:2]}; // @[package.scala 253:43]
  wire [5:0] _readys_unready_T_3 = _readys_unready_T_1 | _GEN_18; // @[package.scala 253:43]
  wire [5:0] _readys_unready_T_6 = {readys_mask, 3'h0}; // @[Arbiter.scala 25:66]
  wire [5:0] _GEN_19 = {{1'd0}, _readys_unready_T_3[5:1]}; // @[Arbiter.scala 25:58]
  wire [5:0] readys_unready = _GEN_19 | _readys_unready_T_6; // @[Arbiter.scala 25:58]
  wire [2:0] _readys_readys_T_2 = readys_unready[5:3] & readys_unready[2:0]; // @[Arbiter.scala 26:39]
  wire [2:0] readys_readys = ~_readys_readys_T_2; // @[Arbiter.scala 26:18]
  wire  readys__0 = readys_readys[0]; // @[Arbiter.scala 95:86]
  reg  state__0; // @[Arbiter.scala 116:26]
  wire  allowed__0 = idle ? readys__0 : state__0; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered__0_ready = auto_out_0_a_ready & allowed__0; // @[Arbiter.scala 123:31]
  reg  beatsLeft_1; // @[Arbiter.scala 87:30]
  wire  idle_1 = ~beatsLeft_1; // @[Arbiter.scala 88:28]
  wire  portsAOI_filtered_2_1_earlyValid = auto_in_2_a_valid & requestAIO_2_1; // @[Xbar.scala 428:50]
  wire  portsAOI_filtered_1_1_earlyValid = auto_in_1_a_valid & requestAIO_1_1; // @[Xbar.scala 428:50]
  wire [2:0] readys_valid_1 = {portsAOI_filtered_2_1_earlyValid,portsAOI_filtered_1_1_earlyValid,
    portsAOI_filtered__1_earlyValid}; // @[Cat.scala 31:58]
  reg [2:0] readys_mask_1; // @[Arbiter.scala 23:23]
  wire [2:0] _readys_filter_T_2 = ~readys_mask_1; // @[Arbiter.scala 24:30]
  wire [2:0] _readys_filter_T_3 = readys_valid_1 & _readys_filter_T_2; // @[Arbiter.scala 24:28]
  wire [5:0] readys_filter_1 = {_readys_filter_T_3,portsAOI_filtered_2_1_earlyValid,portsAOI_filtered_1_1_earlyValid,
    portsAOI_filtered__1_earlyValid}; // @[Cat.scala 31:58]
  wire [5:0] _GEN_20 = {{1'd0}, readys_filter_1[5:1]}; // @[package.scala 253:43]
  wire [5:0] _readys_unready_T_8 = readys_filter_1 | _GEN_20; // @[package.scala 253:43]
  wire [5:0] _GEN_21 = {{2'd0}, _readys_unready_T_8[5:2]}; // @[package.scala 253:43]
  wire [5:0] _readys_unready_T_10 = _readys_unready_T_8 | _GEN_21; // @[package.scala 253:43]
  wire [5:0] _readys_unready_T_13 = {readys_mask_1, 3'h0}; // @[Arbiter.scala 25:66]
  wire [5:0] _GEN_22 = {{1'd0}, _readys_unready_T_10[5:1]}; // @[Arbiter.scala 25:58]
  wire [5:0] readys_unready_1 = _GEN_22 | _readys_unready_T_13; // @[Arbiter.scala 25:58]
  wire [2:0] _readys_readys_T_5 = readys_unready_1[5:3] & readys_unready_1[2:0]; // @[Arbiter.scala 26:39]
  wire [2:0] readys_readys_1 = ~_readys_readys_T_5; // @[Arbiter.scala 26:18]
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
  wire  readys__2 = readys_readys[2]; // @[Arbiter.scala 95:86]
  reg  state__2; // @[Arbiter.scala 116:26]
  wire  allowed__2 = idle ? readys__2 : state__2; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered_2_0_ready = auto_out_0_a_ready & allowed__2; // @[Arbiter.scala 123:31]
  wire  readys_1_2 = readys_readys_1[2]; // @[Arbiter.scala 95:86]
  reg  state_1_2; // @[Arbiter.scala 116:26]
  wire  allowed_1_2 = idle_1 ? readys_1_2 : state_1_2; // @[Arbiter.scala 121:24]
  wire  portsAOI_filtered_2_1_ready = auto_out_1_a_ready & allowed_1_2; // @[Arbiter.scala 123:31]
  wire  allowed_2_0 = idle_2 ? readys_2_0 : state_2_0; // @[Arbiter.scala 121:24]
  wire  out_12_ready = auto_in_0_bready & allowed_2_0; // @[Arbiter.scala 123:31]
  wire  allowed_2_1 = idle_2 ? readys_2_1 : state_2_1; // @[Arbiter.scala 121:24]
  wire  out_13_ready = auto_in_0_bready & allowed_2_1; // @[Arbiter.scala 123:31]
  wire  allowed_3_0 = idle_3 ? readys_3_0 : state_3_0; // @[Arbiter.scala 121:24]
  wire  out_15_ready = auto_in_0_d_ready & allowed_3_0; // @[Arbiter.scala 123:31]
  wire  allowed_4_0 = idle_4 ? readys_4_0 : state_4_0; // @[Arbiter.scala 121:24]
  wire  allowed_5_0 = idle_5 ? readys_5_0 : state_5_0; // @[Arbiter.scala 121:24]
  wire  out_23_ready = auto_in_2_d_ready & allowed_5_0; // @[Arbiter.scala 123:31]
  wire  allowed_3_1 = idle_3 ? readys_3_1 : state_3_1; // @[Arbiter.scala 121:24]
  wire  out_16_ready = auto_in_0_d_ready & allowed_3_1; // @[Arbiter.scala 123:31]
  wire  allowed_4_1 = idle_4 ? readys_4_1 : state_4_1; // @[Arbiter.scala 121:24]
  wire  allowed_5_1 = idle_5 ? readys_5_1 : state_5_1; // @[Arbiter.scala 121:24]
  wire  out_24_ready = auto_in_2_d_ready & allowed_5_1; // @[Arbiter.scala 123:31]
  wire  latch = idle & auto_out_0_a_ready; // @[Arbiter.scala 89:24]
  wire [2:0] _readys_mask_T = readys_readys & readys_valid; // @[Arbiter.scala 28:29]
  wire [3:0] _readys_mask_T_1 = {_readys_mask_T, 1'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_mask_T_3 = _readys_mask_T | _readys_mask_T_1[2:0]; // @[package.scala 244:43]
  wire [4:0] _readys_mask_T_4 = {_readys_mask_T_3, 2'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_mask_T_6 = _readys_mask_T_3 | _readys_mask_T_4[2:0]; // @[package.scala 244:43]
  wire  earlyWinner__0 = readys__0 & portsAOI_filtered__0_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__1 = readys__1 & portsAOI_filtered_1_0_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__2 = readys__2 & portsAOI_filtered_2_0_earlyValid; // @[Arbiter.scala 97:79]
  wire  _T_17 = portsAOI_filtered__0_earlyValid | portsAOI_filtered_1_0_earlyValid | portsAOI_filtered_2_0_earlyValid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0 = earlyWinner__0 & beatsAI_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1 = earlyWinner__1 & beatsAI_1; // @[Arbiter.scala 111:73]
  wire  maskedBeats_2 = earlyWinner__2 & beatsAI_2; // @[Arbiter.scala 111:73]
  wire  initBeats = maskedBeats_0 | maskedBeats_1 | maskedBeats_2; // @[Arbiter.scala 112:44]
  wire  muxStateEarly__0 = idle ? earlyWinner__0 : state__0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly__1 = idle ? earlyWinner__1 : state__1; // @[Arbiter.scala 117:30]
  wire  muxStateEarly__2 = idle ? earlyWinner__2 : state__2; // @[Arbiter.scala 117:30]
  wire  _out_0_a_earlyValid_T_6 = state__0 & portsAOI_filtered__0_earlyValid | state__1 &
    portsAOI_filtered_1_0_earlyValid | state__2 & portsAOI_filtered_2_0_earlyValid; // @[Mux.scala 27:73]
  wire  out_3_0_a_earlyValid = idle ? _T_17 : _out_0_a_earlyValid_T_6; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = auto_out_0_a_ready & out_3_0_a_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_39 = muxStateEarly__0 ? auto_in_0_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_41 = muxStateEarly__2 ? auto_in_2_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_44 = muxStateEarly__0 ? auto_in_0_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_45 = muxStateEarly__1 ? auto_in_1_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_46 = muxStateEarly__2 ? auto_in_2_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_47 = _T_44 | _T_45; // @[Mux.scala 27:73]
  wire [3:0] _T_54 = muxStateEarly__0 ? auto_in_0_a_bits_user_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_55 = muxStateEarly__1 ? auto_in_1_a_bits_user_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_56 = muxStateEarly__2 ? auto_in_2_a_bits_user_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_57 = _T_54 | _T_55; // @[Mux.scala 27:73]
  wire [35:0] _T_69 = muxStateEarly__0 ? auto_in_0_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_70 = muxStateEarly__1 ? auto_in_1_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_71 = muxStateEarly__2 ? auto_in_2_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_72 = _T_69 | _T_70; // @[Mux.scala 27:73]
  wire [4:0] in_0_a_bits_source = {{1'd0}, auto_in_0_a_bits_source}; // @[Xbar.scala 231:18 237:29]
  wire [4:0] _T_74 = muxStateEarly__0 ? in_0_a_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_75 = muxStateEarly__1 ? in_1_a_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_76 = muxStateEarly__2 ? in_2_a_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_77 = _T_74 | _T_75; // @[Mux.scala 27:73]
  wire [2:0] _T_79 = muxStateEarly__0 ? auto_in_0_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_80 = muxStateEarly__1 ? auto_in_1_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_81 = muxStateEarly__2 ? auto_in_2_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_82 = _T_79 | _T_80; // @[Mux.scala 27:73]
  wire [2:0] _T_84 = muxStateEarly__0 ? auto_in_0_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_86 = muxStateEarly__2 ? auto_in_2_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_89 = muxStateEarly__0 ? auto_in_0_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_90 = muxStateEarly__1 ? auto_in_1_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_91 = muxStateEarly__2 ? auto_in_2_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_92 = _T_89 | _T_90; // @[Mux.scala 27:73]
  wire  latch_1 = idle_1 & auto_out_1_a_ready; // @[Arbiter.scala 89:24]
  wire [2:0] _readys_mask_T_8 = readys_readys_1 & readys_valid_1; // @[Arbiter.scala 28:29]
  wire [3:0] _readys_mask_T_9 = {_readys_mask_T_8, 1'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_mask_T_11 = _readys_mask_T_8 | _readys_mask_T_9[2:0]; // @[package.scala 244:43]
  wire [4:0] _readys_mask_T_12 = {_readys_mask_T_11, 2'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_mask_T_14 = _readys_mask_T_11 | _readys_mask_T_12[2:0]; // @[package.scala 244:43]
  wire  earlyWinner_1_0 = readys_1_0 & portsAOI_filtered__1_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1_1 = readys_1_1 & portsAOI_filtered_1_1_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1_2 = readys_1_2 & portsAOI_filtered_2_1_earlyValid; // @[Arbiter.scala 97:79]
  wire  _T_109 = portsAOI_filtered__1_earlyValid | portsAOI_filtered_1_1_earlyValid | portsAOI_filtered_2_1_earlyValid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_1 = earlyWinner_1_0 & beatsAI_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_1 = earlyWinner_1_1 & beatsAI_1; // @[Arbiter.scala 111:73]
  wire  maskedBeats_2_1 = earlyWinner_1_2 & beatsAI_2; // @[Arbiter.scala 111:73]
  wire  initBeats_1 = maskedBeats_0_1 | maskedBeats_1_1 | maskedBeats_2_1; // @[Arbiter.scala 112:44]
  wire  muxStateEarly_1_0 = idle_1 ? earlyWinner_1_0 : state_1_0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_1_1 = idle_1 ? earlyWinner_1_1 : state_1_1; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_1_2 = idle_1 ? earlyWinner_1_2 : state_1_2; // @[Arbiter.scala 117:30]
  wire  _out_1_a_earlyValid_T_6 = state_1_0 & portsAOI_filtered__1_earlyValid | state_1_1 &
    portsAOI_filtered_1_1_earlyValid | state_1_2 & portsAOI_filtered_2_1_earlyValid; // @[Mux.scala 27:73]
  wire  out_3_1_a_earlyValid = idle_1 ? _T_109 : _out_1_a_earlyValid_T_6; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_8 = auto_out_1_a_ready & out_3_1_a_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_131 = muxStateEarly_1_0 ? auto_in_0_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_133 = muxStateEarly_1_2 ? auto_in_2_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_136 = muxStateEarly_1_0 ? auto_in_0_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_137 = muxStateEarly_1_1 ? auto_in_1_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_138 = muxStateEarly_1_2 ? auto_in_2_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_139 = _T_136 | _T_137; // @[Mux.scala 27:73]
  wire [3:0] _T_146 = muxStateEarly_1_0 ? auto_in_0_a_bits_user_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_147 = muxStateEarly_1_1 ? auto_in_1_a_bits_user_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_148 = muxStateEarly_1_2 ? auto_in_2_a_bits_user_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_149 = _T_146 | _T_147; // @[Mux.scala 27:73]
  wire [35:0] _T_161 = muxStateEarly_1_0 ? auto_in_0_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_162 = muxStateEarly_1_1 ? auto_in_1_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_163 = muxStateEarly_1_2 ? auto_in_2_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_164 = _T_161 | _T_162; // @[Mux.scala 27:73]
  wire [4:0] _T_166 = muxStateEarly_1_0 ? in_0_a_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_167 = muxStateEarly_1_1 ? in_1_a_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_168 = muxStateEarly_1_2 ? in_2_a_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_169 = _T_166 | _T_167; // @[Mux.scala 27:73]
  wire [2:0] _T_171 = muxStateEarly_1_0 ? auto_in_0_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_172 = muxStateEarly_1_1 ? auto_in_1_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_173 = muxStateEarly_1_2 ? auto_in_2_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_174 = _T_171 | _T_172; // @[Mux.scala 27:73]
  wire [2:0] _T_176 = muxStateEarly_1_0 ? auto_in_0_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_178 = muxStateEarly_1_2 ? auto_in_2_a_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_181 = muxStateEarly_1_0 ? auto_in_0_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_182 = muxStateEarly_1_1 ? auto_in_1_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_183 = muxStateEarly_1_2 ? auto_in_2_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_184 = _T_181 | _T_182; // @[Mux.scala 27:73]
  wire  latch_2 = idle_2 & auto_in_0_bready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_16 = readys_readys_2 & readys_valid_2; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_17 = {_readys_mask_T_16, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_19 = _readys_mask_T_16 | _readys_mask_T_17[1:0]; // @[package.scala 244:43]
  wire  _T_196 = portsBIO_filtered__0_valid | portsBIO_filtered_1_0_valid; // @[Arbiter.scala 107:36]
  wire  _sink_ACancel_earlyValid_T_3 = state_2_0 & portsBIO_filtered__0_valid | state_2_1 & portsBIO_filtered_1_0_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_4_earlyValid = idle_2 ? _T_196 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_14 = auto_in_0_bready & sink_ACancel_4_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_213 = muxStateEarly_2_0 ? auto_out_0_bdata : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_214 = muxStateEarly_2_1 ? auto_out_1_bdata : 256'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_216 = muxStateEarly_2_0 ? auto_out_0_bmask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_217 = muxStateEarly_2_1 ? auto_out_1_bmask : 32'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_219 = muxStateEarly_2_0 ? auto_out_0_baddress : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_220 = muxStateEarly_2_1 ? auto_out_1_baddress : 36'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_225 = muxStateEarly_2_0 ? auto_out_0_bsize : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_226 = muxStateEarly_2_1 ? auto_out_1_bsize : 3'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_228 = muxStateEarly_2_0 ? auto_out_0_bparam : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_229 = muxStateEarly_2_1 ? auto_out_1_bparam : 2'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_231 = muxStateEarly_2_0 ? auto_out_0_bopcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_232 = muxStateEarly_2_1 ? auto_out_1_bopcode : 3'h0; // @[Mux.scala 27:73]
  wire  latch_3 = idle_3 & auto_in_0_d_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_21 = readys_readys_3 & readys_valid_3; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_22 = {_readys_mask_T_21, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_24 = _readys_mask_T_21 | _readys_mask_T_22[1:0]; // @[package.scala 244:43]
  wire  _T_244 = portsDIO_filtered__0_valid | portsDIO_filtered_1_0_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_3 = earlyWinner_3_0 & beatsDO_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_3 = earlyWinner_3_1 & beatsDO_1; // @[Arbiter.scala 111:73]
  wire  initBeats_3 = maskedBeats_0_3 | maskedBeats_1_3; // @[Arbiter.scala 112:44]
  wire  _sink_ACancel_earlyValid_T_8 = state_3_0 & portsDIO_filtered__0_valid | state_3_1 & portsDIO_filtered_1_0_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_5_earlyValid = idle_3 ? _T_244 : _sink_ACancel_earlyValid_T_8; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_20 = auto_in_0_d_ready & sink_ACancel_5_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_261 = muxStateEarly_3_0 ? auto_out_0_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_262 = muxStateEarly_3_1 ? auto_out_1_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [8:0] _T_267 = muxStateEarly_3_0 ? out_3_0_d_bits_sink : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] out_3_1_d_bits_sink = {{1'd0}, auto_out_1_d_bits_sink}; // @[Xbar.scala 288:19 323:28]
  wire [8:0] _T_268 = muxStateEarly_3_1 ? out_3_1_d_bits_sink : 9'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_273 = muxStateEarly_3_0 ? auto_out_0_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_274 = muxStateEarly_3_1 ? auto_out_1_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_276 = muxStateEarly_3_0 ? auto_out_0_d_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_277 = muxStateEarly_3_1 ? auto_out_1_d_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_279 = muxStateEarly_3_0 ? auto_out_0_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_280 = muxStateEarly_3_1 ? auto_out_1_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [1:0] _readys_mask_T_26 = readys_readys_4 & readys_valid_4; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_27 = {_readys_mask_T_26, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_29 = _readys_mask_T_26 | _readys_mask_T_27[1:0]; // @[package.scala 244:43]
  wire  _T_292 = portsDIO_filtered__1_valid | portsDIO_filtered_1_1_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_4 = earlyWinner_4_0 & beatsDO_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_4 = earlyWinner_4_1 & beatsDO_1; // @[Arbiter.scala 111:73]
  wire  initBeats_4 = maskedBeats_0_4 | maskedBeats_1_4; // @[Arbiter.scala 112:44]
  wire  _sink_ACancel_earlyValid_T_13 = state_4_0 & portsDIO_filtered__1_valid | state_4_1 & portsDIO_filtered_1_1_valid
    ; // @[Mux.scala 27:73]
  wire  sink_ACancel_7_earlyValid = idle_4 ? _T_292 : _sink_ACancel_earlyValid_T_13; // @[Arbiter.scala 125:29]
  wire [255:0] _T_309 = muxStateEarly_4_0 ? auto_out_0_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_310 = muxStateEarly_4_1 ? auto_out_1_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_327 = muxStateEarly_4_0 ? auto_out_0_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_328 = muxStateEarly_4_1 ? auto_out_1_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire  latch_5 = idle_5 & auto_in_2_d_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T_31 = readys_readys_5 & readys_valid_5; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_32 = {_readys_mask_T_31, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_34 = _readys_mask_T_31 | _readys_mask_T_32[1:0]; // @[package.scala 244:43]
  wire  _T_340 = portsDIO_filtered__2_valid | portsDIO_filtered_1_2_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0_5 = earlyWinner_5_0 & beatsDO_0; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1_5 = earlyWinner_5_1 & beatsDO_1; // @[Arbiter.scala 111:73]
  wire  initBeats_5 = maskedBeats_0_5 | maskedBeats_1_5; // @[Arbiter.scala 112:44]
  wire  _sink_ACancel_earlyValid_T_18 = state_5_0 & portsDIO_filtered__2_valid | state_5_1 & portsDIO_filtered_1_2_valid
    ; // @[Mux.scala 27:73]
  wire  sink_ACancel_9_earlyValid = idle_5 ? _T_340 : _sink_ACancel_earlyValid_T_18; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_32 = auto_in_2_d_ready & sink_ACancel_9_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_357 = muxStateEarly_5_0 ? auto_out_0_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_358 = muxStateEarly_5_1 ? auto_out_1_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_369 = muxStateEarly_5_0 ? auto_out_0_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_370 = muxStateEarly_5_1 ? auto_out_1_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_375 = muxStateEarly_5_0 ? auto_out_0_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_376 = muxStateEarly_5_1 ? auto_out_1_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  assign auto_in_2_a_ready = requestAIO_2_0 & portsAOI_filtered_2_0_ready | requestAIO_2_1 & portsAOI_filtered_2_1_ready
    ; // @[Mux.scala 27:73]
  assign auto_in_2_d_valid = idle_5 ? _T_340 : _sink_ACancel_earlyValid_T_18; // @[Arbiter.scala 125:29]
  assign auto_in_2_d_bits_opcode = _T_375 | _T_376; // @[Mux.scala 27:73]
  assign auto_in_2_d_bits_size = _T_369 | _T_370; // @[Mux.scala 27:73]
  assign auto_in_2_d_bits_source = sink_ACancel_9_bits_source[2:0]; // @[Xbar.scala 228:69]
  assign auto_in_2_d_bits_data = _T_357 | _T_358; // @[Mux.scala 27:73]
  assign auto_in_1_a_ready = requestAIO_1_0 & portsAOI_filtered_1_0_ready | requestAIO_1_1 & portsAOI_filtered_1_1_ready
    ; // @[Mux.scala 27:73]
  assign auto_in_1_d_valid = idle_4 ? _T_292 : _sink_ACancel_earlyValid_T_13; // @[Arbiter.scala 125:29]
  assign auto_in_1_d_bits_opcode = _T_327 | _T_328; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_source = sink_ACancel_7_bits_source[1:0]; // @[Xbar.scala 228:69]
  assign auto_in_1_d_bits_data = _T_309 | _T_310; // @[Mux.scala 27:73]
  assign auto_in_1_d_bits_corrupt = muxStateEarly_4_0 & auto_out_0_d_bits_corrupt | muxStateEarly_4_1 &
    auto_out_1_d_bits_corrupt; // @[Mux.scala 27:73]
  assign auto_in_0_a_ready = requestAIO_0_0 & portsAOI_filtered__0_ready | requestAIO_0_1 & portsAOI_filtered__1_ready; // @[Mux.scala 27:73]
  assign auto_in_0_bvalid = idle_2 ? _T_196 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign auto_in_0_bopcode = _T_231 | _T_232; // @[Mux.scala 27:73]
  assign auto_in_0_bparam = _T_228 | _T_229; // @[Mux.scala 27:73]
  assign auto_in_0_bsize = _T_225 | _T_226; // @[Mux.scala 27:73]
  assign auto_in_0_bsource = sink_ACancel_4_bits_source[3:0]; // @[Xbar.scala 228:69]
  assign auto_in_0_baddress = _T_219 | _T_220; // @[Mux.scala 27:73]
  assign auto_in_0_bmask = _T_216 | _T_217; // @[Mux.scala 27:73]
  assign auto_in_0_bdata = _T_213 | _T_214; // @[Mux.scala 27:73]
  assign auto_in_0_c_ready = requestCIO_0_0 & auto_out_0_c_ready | requestCIO_0_1 & auto_out_1_c_ready; // @[Mux.scala 27:73]
  assign auto_in_0_d_valid = idle_3 ? _T_244 : _sink_ACancel_earlyValid_T_8; // @[Arbiter.scala 125:29]
  assign auto_in_0_d_bits_opcode = _T_279 | _T_280; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_param = _T_276 | _T_277; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_size = _T_273 | _T_274; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_source = sink_ACancel_5_bits_source[3:0]; // @[Xbar.scala 228:69]
  assign auto_in_0_d_bits_sink = _T_267 | _T_268; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_denied = muxStateEarly_3_0 & auto_out_0_d_bits_denied | muxStateEarly_3_1 &
    auto_out_1_d_bits_denied; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_data = _T_261 | _T_262; // @[Mux.scala 27:73]
  assign auto_in_0_d_bits_corrupt = muxStateEarly_3_0 & auto_out_0_d_bits_corrupt | muxStateEarly_3_1 &
    auto_out_1_d_bits_corrupt; // @[Mux.scala 27:73]
  assign auto_in_0_e_ready = requestEIO_0_0 & auto_out_0_e_ready | requestEIO_0_1 & auto_out_1_e_ready; // @[Mux.scala 27:73]
  assign auto_out_1_a_valid = idle_1 ? _T_109 : _out_1_a_earlyValid_T_6; // @[Arbiter.scala 125:29]
  assign auto_out_1_a_bits_opcode = _T_184 | _T_183; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_param = _T_176 | _T_178; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_size = _T_174 | _T_173; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_source = _T_169 | _T_168; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_address = _T_164 | _T_163; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_user_vaddr = muxStateEarly_1_0 ? auto_in_0_a_bits_user_vaddr : 33'h0; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_user_reqSource = _T_149 | _T_148; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_user_needHint = muxStateEarly_1_0 & auto_in_0_a_bits_user_needHint; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_mask = _T_139 | _T_138; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_data = _T_131 | _T_133; // @[Mux.scala 27:73]
  assign auto_out_1_a_bits_corrupt = muxStateEarly_1_0 & auto_in_0_a_bits_corrupt | muxStateEarly_1_2 &
    auto_in_2_a_bits_corrupt; // @[Mux.scala 27:73]
  assign auto_out_1_bready = requestBOI_1_0 & out_13_ready; // @[Mux.scala 27:73]
  assign auto_out_1_c_valid = auto_in_0_c_valid & requestCIO_0_1; // @[Xbar.scala 179:40]
  assign auto_out_1_c_bits_opcode = auto_in_0_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_param = auto_in_0_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_size = auto_in_0_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_source = {{1'd0}, auto_in_0_c_bits_source}; // @[Xbar.scala 231:18 259:29]
  assign auto_out_1_c_bits_address = auto_in_0_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_user_vaddr = auto_in_0_c_bits_user_vaddr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_user_reqSource = auto_in_0_c_bits_user_reqSource; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_user_needHint = auto_in_0_c_bits_user_needHint; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_data = auto_in_0_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_c_bits_corrupt = auto_in_0_c_bits_corrupt; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_d_ready = requestDOI_1_0 & out_16_ready | requestDOI_1_1 & allowed_4_1 | requestDOI_1_2 &
    out_24_ready; // @[Mux.scala 27:73]
  assign auto_out_1_e_valid = auto_in_0_e_valid & requestEIO_0_1; // @[Xbar.scala 179:40]
  assign auto_out_1_e_bits_sink = auto_in_0_e_bits_sink[7:0]; // @[Xbar.scala 228:69]
  assign auto_out_0_a_valid = idle ? _T_17 : _out_0_a_earlyValid_T_6; // @[Arbiter.scala 125:29]
  assign auto_out_0_a_bits_opcode = _T_92 | _T_91; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_param = _T_84 | _T_86; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_size = _T_82 | _T_81; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_source = _T_77 | _T_76; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_address = _T_72 | _T_71; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_user_vaddr = muxStateEarly__0 ? auto_in_0_a_bits_user_vaddr : 33'h0; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_user_reqSource = _T_57 | _T_56; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_user_needHint = muxStateEarly__0 & auto_in_0_a_bits_user_needHint; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_mask = _T_47 | _T_46; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_data = _T_39 | _T_41; // @[Mux.scala 27:73]
  assign auto_out_0_a_bits_corrupt = muxStateEarly__0 & auto_in_0_a_bits_corrupt | muxStateEarly__2 &
    auto_in_2_a_bits_corrupt; // @[Mux.scala 27:73]
  assign auto_out_0_bready = requestBOI_0_0 & out_12_ready; // @[Mux.scala 27:73]
  assign auto_out_0_c_valid = auto_in_0_c_valid & requestCIO_0_0; // @[Xbar.scala 179:40]
  assign auto_out_0_c_bits_opcode = auto_in_0_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_param = auto_in_0_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_size = auto_in_0_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_source = {{1'd0}, auto_in_0_c_bits_source}; // @[Xbar.scala 231:18 259:29]
  assign auto_out_0_c_bits_address = auto_in_0_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_user_vaddr = auto_in_0_c_bits_user_vaddr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_user_reqSource = auto_in_0_c_bits_user_reqSource; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_user_needHint = auto_in_0_c_bits_user_needHint; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_data = auto_in_0_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_c_bits_corrupt = auto_in_0_c_bits_corrupt; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_d_ready = requestDOI_0_0 & out_15_ready | requestDOI_0_1 & allowed_4_0 | requestDOI_0_2 &
    out_23_ready; // @[Mux.scala 27:73]
  assign auto_out_0_e_valid = auto_in_0_e_valid & requestEIO_0_0; // @[Xbar.scala 179:40]
  assign auto_out_0_e_bits_sink = auto_in_0_e_bits_sink[7:0]; // @[Xbar.scala 228:69]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 113:23]
      beatsLeft_2 <= 1'h0;
    end else if (latch_2) begin
      beatsLeft_2 <= 1'h0;
    end else begin
      beatsLeft_2 <= beatsLeft_2 - _beatsLeft_T_14;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 27:32]
      readys_mask_2 <= 2'h3; // @[Arbiter.scala 28:12]
    end else if (latch_2 & |readys_valid_2) begin // @[Arbiter.scala 23:23]
      readys_mask_2 <= _readys_mask_T_19;
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
      readys_mask_3 <= _readys_mask_T_24;
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
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 113:23]
      beatsLeft_4 <= 1'h0;
    end else if (idle_4) begin
      beatsLeft_4 <= initBeats_4;
    end else begin
      beatsLeft_4 <= beatsLeft_4 - sink_ACancel_7_earlyValid;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 27:32]
      readys_mask_4 <= 2'h3; // @[Arbiter.scala 28:12]
    end else if (idle_4 & |readys_valid_4) begin // @[Arbiter.scala 23:23]
      readys_mask_4 <= _readys_mask_T_29;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_4_0 <= 1'h0;
    end else if (idle_4) begin
      state_4_0 <= earlyWinner_4_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_4_1 <= 1'h0;
    end else if (idle_4) begin
      state_4_1 <= earlyWinner_4_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 113:23]
      beatsLeft_5 <= 1'h0;
    end else if (latch_5) begin
      beatsLeft_5 <= initBeats_5;
    end else begin
      beatsLeft_5 <= beatsLeft_5 - _beatsLeft_T_32;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 27:32]
      readys_mask_5 <= 2'h3; // @[Arbiter.scala 28:12]
    end else if (latch_5 & |readys_valid_5) begin // @[Arbiter.scala 23:23]
      readys_mask_5 <= _readys_mask_T_34;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_5_0 <= 1'h0;
    end else if (idle_5) begin
      state_5_0 <= earlyWinner_5_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_5_1 <= 1'h0;
    end else if (idle_5) begin
      state_5_1 <= earlyWinner_5_1;
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
      readys_mask <= 3'h7; // @[Arbiter.scala 28:12]
    end else if (latch & |readys_valid) begin // @[Arbiter.scala 23:23]
      readys_mask <= _readys_mask_T_6;
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
      readys_mask_1 <= 3'h7; // @[Arbiter.scala 28:12]
    end else if (latch_1 & |readys_valid_1) begin // @[Arbiter.scala 23:23]
      readys_mask_1 <= _readys_mask_T_14;
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
    if (reset) begin // @[Arbiter.scala 118:30]
      state__2 <= 1'h0;
    end else if (idle) begin
      state__2 <= earlyWinner__2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_1_2 <= 1'h0;
    end else if (idle_1) begin
      state_1_2 <= earlyWinner_1_2;
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
  beatsLeft_3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  readys_mask_3 = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  state_3_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  state_3_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  beatsLeft_4 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  readys_mask_4 = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  state_4_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  state_4_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  beatsLeft_5 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  readys_mask_5 = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  state_5_0 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  state_5_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  beatsLeft = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  readys_mask = _RAND_17[2:0];
  _RAND_18 = {1{`RANDOM}};
  state__0 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  beatsLeft_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  readys_mask_1 = _RAND_20[2:0];
  _RAND_21 = {1{`RANDOM}};
  state_1_0 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  state__1 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  state_1_1 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  state__2 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  state_1_2 = _RAND_25[0:0];
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
  if (reset) begin
    beatsLeft_4 = 1'h0;
  end
  if (reset) begin
    readys_mask_4 = 2'h3;
  end
  if (reset) begin
    state_4_0 = 1'h0;
  end
  if (reset) begin
    state_4_1 = 1'h0;
  end
  if (reset) begin
    beatsLeft_5 = 1'h0;
  end
  if (reset) begin
    readys_mask_5 = 2'h3;
  end
  if (reset) begin
    state_5_0 = 1'h0;
  end
  if (reset) begin
    state_5_1 = 1'h0;
  end
  if (reset) begin
    beatsLeft = 1'h0;
  end
  if (reset) begin
    readys_mask = 3'h7;
  end
  if (reset) begin
    state__0 = 1'h0;
  end
  if (reset) begin
    beatsLeft_1 = 1'h0;
  end
  if (reset) begin
    readys_mask_1 = 3'h7;
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
    state__2 = 1'h0;
  end
  if (reset) begin
    state_1_2 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

