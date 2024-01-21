module Uncache(
  input         clock,
  input         reset,
  input         auto_client_out_a_ready,
  output        auto_client_out_a_valid,
  output [2:0]  auto_client_out_a_bits_opcode,
  output [2:0]  auto_client_out_a_bits_size,
  output [1:0]  auto_client_out_a_bits_source,
  output [35:0] auto_client_out_a_bits_address,
  output [7:0]  auto_client_out_a_bits_mask,
  output [63:0] auto_client_out_a_bits_data,
  output        auto_client_out_d_ready,
  input         auto_client_out_d_valid,
  input  [2:0]  auto_client_out_d_bits_opcode,
  input  [63:0] auto_client_out_d_bits_data,
  input  [7:0]  io_hartId,
  input         io_enableOutstanding,
  output        io_flush_empty,
  output        io_lsq_req_ready,
  input         io_lsq_req_valid,
  input  [4:0]  io_lsq_req_bits_cmd,
  input  [35:0] io_lsq_req_bits_addr,
  input  [63:0] io_lsq_req_bits_data,
  input  [7:0]  io_lsq_req_bits_mask,
  input  [4:0]  io_lsq_req_bits_id,
  input         io_lsq_req_bits_atomic,
  input         io_lsq_resp_ready,
  output        io_lsq_resp_valid,
  output [63:0] io_lsq_resp_bits_data,
  output [4:0]  io_lsq_resp_bits_id
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
`endif // RANDOMIZE_REG_INIT
  wire  entries_0_clock; // @[Uncache.scala 226:53]
  wire  entries_0_reset; // @[Uncache.scala 226:53]
  wire [7:0] entries_0_io_hartId; // @[Uncache.scala 226:53]
  wire  entries_0_io_enableOutstanding; // @[Uncache.scala 226:53]
  wire  entries_0_io_req_ready; // @[Uncache.scala 226:53]
  wire  entries_0_io_req_valid; // @[Uncache.scala 226:53]
  wire [4:0] entries_0_io_req_bits_cmd; // @[Uncache.scala 226:53]
  wire [35:0] entries_0_io_req_bits_addr; // @[Uncache.scala 226:53]
  wire [63:0] entries_0_io_req_bits_data; // @[Uncache.scala 226:53]
  wire [7:0] entries_0_io_req_bits_mask; // @[Uncache.scala 226:53]
  wire [4:0] entries_0_io_req_bits_id; // @[Uncache.scala 226:53]
  wire  entries_0_io_req_bits_atomic; // @[Uncache.scala 226:53]
  wire  entries_0_io_resp_ready; // @[Uncache.scala 226:53]
  wire  entries_0_io_resp_valid; // @[Uncache.scala 226:53]
  wire [127:0] entries_0_io_resp_bits_data; // @[Uncache.scala 226:53]
  wire [3:0] entries_0_io_resp_bits_id; // @[Uncache.scala 226:53]
  wire  entries_0_io_mem_acquire_ready; // @[Uncache.scala 226:53]
  wire  entries_0_io_mem_acquire_valid; // @[Uncache.scala 226:53]
  wire [2:0] entries_0_io_mem_acquire_bits_opcode; // @[Uncache.scala 226:53]
  wire [2:0] entries_0_io_mem_acquire_bits_size; // @[Uncache.scala 226:53]
  wire [1:0] entries_0_io_mem_acquire_bits_source; // @[Uncache.scala 226:53]
  wire [35:0] entries_0_io_mem_acquire_bits_address; // @[Uncache.scala 226:53]
  wire [7:0] entries_0_io_mem_acquire_bits_mask; // @[Uncache.scala 226:53]
  wire [63:0] entries_0_io_mem_acquire_bits_data; // @[Uncache.scala 226:53]
  wire  entries_0_io_mem_grant_ready; // @[Uncache.scala 226:53]
  wire  entries_0_io_mem_grant_valid; // @[Uncache.scala 226:53]
  wire [63:0] entries_0_io_mem_grant_bits_data; // @[Uncache.scala 226:53]
  wire  entries_0_io_select; // @[Uncache.scala 226:53]
  wire  entries_0_io_atomic; // @[Uncache.scala 226:53]
  wire  entries_1_clock; // @[Uncache.scala 226:53]
  wire  entries_1_reset; // @[Uncache.scala 226:53]
  wire [7:0] entries_1_io_hartId; // @[Uncache.scala 226:53]
  wire  entries_1_io_enableOutstanding; // @[Uncache.scala 226:53]
  wire  entries_1_io_req_ready; // @[Uncache.scala 226:53]
  wire  entries_1_io_req_valid; // @[Uncache.scala 226:53]
  wire [4:0] entries_1_io_req_bits_cmd; // @[Uncache.scala 226:53]
  wire [35:0] entries_1_io_req_bits_addr; // @[Uncache.scala 226:53]
  wire [63:0] entries_1_io_req_bits_data; // @[Uncache.scala 226:53]
  wire [7:0] entries_1_io_req_bits_mask; // @[Uncache.scala 226:53]
  wire [4:0] entries_1_io_req_bits_id; // @[Uncache.scala 226:53]
  wire  entries_1_io_req_bits_atomic; // @[Uncache.scala 226:53]
  wire  entries_1_io_resp_ready; // @[Uncache.scala 226:53]
  wire  entries_1_io_resp_valid; // @[Uncache.scala 226:53]
  wire [127:0] entries_1_io_resp_bits_data; // @[Uncache.scala 226:53]
  wire [3:0] entries_1_io_resp_bits_id; // @[Uncache.scala 226:53]
  wire  entries_1_io_mem_acquire_ready; // @[Uncache.scala 226:53]
  wire  entries_1_io_mem_acquire_valid; // @[Uncache.scala 226:53]
  wire [2:0] entries_1_io_mem_acquire_bits_opcode; // @[Uncache.scala 226:53]
  wire [2:0] entries_1_io_mem_acquire_bits_size; // @[Uncache.scala 226:53]
  wire [1:0] entries_1_io_mem_acquire_bits_source; // @[Uncache.scala 226:53]
  wire [35:0] entries_1_io_mem_acquire_bits_address; // @[Uncache.scala 226:53]
  wire [7:0] entries_1_io_mem_acquire_bits_mask; // @[Uncache.scala 226:53]
  wire [63:0] entries_1_io_mem_acquire_bits_data; // @[Uncache.scala 226:53]
  wire  entries_1_io_mem_grant_ready; // @[Uncache.scala 226:53]
  wire  entries_1_io_mem_grant_valid; // @[Uncache.scala 226:53]
  wire [63:0] entries_1_io_mem_grant_bits_data; // @[Uncache.scala 226:53]
  wire  entries_1_io_select; // @[Uncache.scala 226:53]
  wire  entries_1_io_atomic; // @[Uncache.scala 226:53]
  wire  entries_2_clock; // @[Uncache.scala 226:53]
  wire  entries_2_reset; // @[Uncache.scala 226:53]
  wire [7:0] entries_2_io_hartId; // @[Uncache.scala 226:53]
  wire  entries_2_io_enableOutstanding; // @[Uncache.scala 226:53]
  wire  entries_2_io_req_ready; // @[Uncache.scala 226:53]
  wire  entries_2_io_req_valid; // @[Uncache.scala 226:53]
  wire [4:0] entries_2_io_req_bits_cmd; // @[Uncache.scala 226:53]
  wire [35:0] entries_2_io_req_bits_addr; // @[Uncache.scala 226:53]
  wire [63:0] entries_2_io_req_bits_data; // @[Uncache.scala 226:53]
  wire [7:0] entries_2_io_req_bits_mask; // @[Uncache.scala 226:53]
  wire [4:0] entries_2_io_req_bits_id; // @[Uncache.scala 226:53]
  wire  entries_2_io_req_bits_atomic; // @[Uncache.scala 226:53]
  wire  entries_2_io_resp_ready; // @[Uncache.scala 226:53]
  wire  entries_2_io_resp_valid; // @[Uncache.scala 226:53]
  wire [127:0] entries_2_io_resp_bits_data; // @[Uncache.scala 226:53]
  wire [3:0] entries_2_io_resp_bits_id; // @[Uncache.scala 226:53]
  wire  entries_2_io_mem_acquire_ready; // @[Uncache.scala 226:53]
  wire  entries_2_io_mem_acquire_valid; // @[Uncache.scala 226:53]
  wire [2:0] entries_2_io_mem_acquire_bits_opcode; // @[Uncache.scala 226:53]
  wire [2:0] entries_2_io_mem_acquire_bits_size; // @[Uncache.scala 226:53]
  wire [1:0] entries_2_io_mem_acquire_bits_source; // @[Uncache.scala 226:53]
  wire [35:0] entries_2_io_mem_acquire_bits_address; // @[Uncache.scala 226:53]
  wire [7:0] entries_2_io_mem_acquire_bits_mask; // @[Uncache.scala 226:53]
  wire [63:0] entries_2_io_mem_acquire_bits_data; // @[Uncache.scala 226:53]
  wire  entries_2_io_mem_grant_ready; // @[Uncache.scala 226:53]
  wire  entries_2_io_mem_grant_valid; // @[Uncache.scala 226:53]
  wire [63:0] entries_2_io_mem_grant_bits_data; // @[Uncache.scala 226:53]
  wire  entries_2_io_select; // @[Uncache.scala 226:53]
  wire  entries_2_io_atomic; // @[Uncache.scala 226:53]
  wire  entries_3_clock; // @[Uncache.scala 226:53]
  wire  entries_3_reset; // @[Uncache.scala 226:53]
  wire [7:0] entries_3_io_hartId; // @[Uncache.scala 226:53]
  wire  entries_3_io_enableOutstanding; // @[Uncache.scala 226:53]
  wire  entries_3_io_req_ready; // @[Uncache.scala 226:53]
  wire  entries_3_io_req_valid; // @[Uncache.scala 226:53]
  wire [4:0] entries_3_io_req_bits_cmd; // @[Uncache.scala 226:53]
  wire [35:0] entries_3_io_req_bits_addr; // @[Uncache.scala 226:53]
  wire [63:0] entries_3_io_req_bits_data; // @[Uncache.scala 226:53]
  wire [7:0] entries_3_io_req_bits_mask; // @[Uncache.scala 226:53]
  wire [4:0] entries_3_io_req_bits_id; // @[Uncache.scala 226:53]
  wire  entries_3_io_req_bits_atomic; // @[Uncache.scala 226:53]
  wire  entries_3_io_resp_ready; // @[Uncache.scala 226:53]
  wire  entries_3_io_resp_valid; // @[Uncache.scala 226:53]
  wire [127:0] entries_3_io_resp_bits_data; // @[Uncache.scala 226:53]
  wire [3:0] entries_3_io_resp_bits_id; // @[Uncache.scala 226:53]
  wire  entries_3_io_mem_acquire_ready; // @[Uncache.scala 226:53]
  wire  entries_3_io_mem_acquire_valid; // @[Uncache.scala 226:53]
  wire [2:0] entries_3_io_mem_acquire_bits_opcode; // @[Uncache.scala 226:53]
  wire [2:0] entries_3_io_mem_acquire_bits_size; // @[Uncache.scala 226:53]
  wire [1:0] entries_3_io_mem_acquire_bits_source; // @[Uncache.scala 226:53]
  wire [35:0] entries_3_io_mem_acquire_bits_address; // @[Uncache.scala 226:53]
  wire [7:0] entries_3_io_mem_acquire_bits_mask; // @[Uncache.scala 226:53]
  wire [63:0] entries_3_io_mem_acquire_bits_data; // @[Uncache.scala 226:53]
  wire  entries_3_io_mem_grant_ready; // @[Uncache.scala 226:53]
  wire  entries_3_io_mem_grant_valid; // @[Uncache.scala 226:53]
  wire [63:0] entries_3_io_mem_grant_bits_data; // @[Uncache.scala 226:53]
  wire  entries_3_io_select; // @[Uncache.scala 226:53]
  wire  entries_3_io_atomic; // @[Uncache.scala 226:53]
  reg  enqPtr_flag; // @[Uncache.scala 218:23]
  reg [1:0] enqPtr_value; // @[Uncache.scala 218:23]
  reg  issPtr_flag; // @[Uncache.scala 219:23]
  reg [1:0] issPtr_value; // @[Uncache.scala 219:23]
  reg  deqPtr_flag; // @[Uncache.scala 220:23]
  reg [1:0] deqPtr_value; // @[Uncache.scala 220:23]
  reg  fence; // @[Uncache.scala 221:22]
  wire  _entries_0_io_req_valid_T = 2'h0 == enqPtr_value; // @[Uncache.scala 232:32]
  wire  _entries_0_io_select_T = 2'h0 == issPtr_value; // @[Uncache.scala 240:29]
  wire  _entries_0_io_select_T_3 = entries_0_io_atomic ? issPtr_value == deqPtr_value : ~fence; // @[Uncache.scala 240:53]
  wire  _T_2 = 2'h0 == deqPtr_value; // @[Uncache.scala 249:15]
  wire  _GEN_2 = 2'h0 == deqPtr_value & entries_0_io_mem_grant_ready; // @[Uncache.scala 214:15 249:33 250:26]
  wire [3:0] _GEN_20 = entries_0_io_resp_bits_id; // @[Uncache.scala 254:33 255:19]
  wire [127:0] _GEN_22 = entries_0_io_resp_bits_data; // @[Uncache.scala 254:33 255:19]
  wire  _GEN_23 = _T_2 & entries_0_io_resp_valid; // @[Uncache.scala 254:33 255:19 223:21]
  wire  _entries_1_io_req_valid_T = 2'h1 == enqPtr_value; // @[Uncache.scala 232:32]
  wire  _GEN_25 = _entries_1_io_req_valid_T ? entries_1_io_req_ready : _entries_0_io_req_valid_T &
    entries_0_io_req_ready; // @[Uncache.scala 235:33 236:17]
  wire  _entries_1_io_select_T = 2'h1 == issPtr_value; // @[Uncache.scala 240:29]
  wire  _entries_1_io_select_T_3 = entries_1_io_atomic ? issPtr_value == deqPtr_value : ~fence; // @[Uncache.scala 240:53]
  wire  _GEN_26 = _entries_1_io_select_T ? entries_1_io_atomic : _entries_0_io_select_T & entries_0_io_atomic; // @[Uncache.scala 242:33 243:18]
  wire  _T_6 = 2'h1 == deqPtr_value; // @[Uncache.scala 249:15]
  wire  _GEN_27 = 2'h1 == deqPtr_value ? entries_1_io_mem_grant_ready : _GEN_2; // @[Uncache.scala 249:33 250:26]
  wire [3:0] _GEN_45 = _T_6 ? entries_1_io_resp_bits_id : _GEN_20; // @[Uncache.scala 254:33 255:19]
  wire [127:0] _GEN_47 = _T_6 ? entries_1_io_resp_bits_data : _GEN_22; // @[Uncache.scala 254:33 255:19]
  wire  _GEN_48 = _T_6 ? entries_1_io_resp_valid : _GEN_23; // @[Uncache.scala 254:33 255:19]
  wire  _entries_2_io_req_valid_T = 2'h2 == enqPtr_value; // @[Uncache.scala 232:32]
  wire  _GEN_50 = _entries_2_io_req_valid_T ? entries_2_io_req_ready : _GEN_25; // @[Uncache.scala 235:33 236:17]
  wire  _entries_2_io_select_T = 2'h2 == issPtr_value; // @[Uncache.scala 240:29]
  wire  _entries_2_io_select_T_3 = entries_2_io_atomic ? issPtr_value == deqPtr_value : ~fence; // @[Uncache.scala 240:53]
  wire  _GEN_51 = _entries_2_io_select_T ? entries_2_io_atomic : _GEN_26; // @[Uncache.scala 242:33 243:18]
  wire  _T_10 = 2'h2 == deqPtr_value; // @[Uncache.scala 249:15]
  wire  _GEN_52 = 2'h2 == deqPtr_value ? entries_2_io_mem_grant_ready : _GEN_27; // @[Uncache.scala 249:33 250:26]
  wire [3:0] _GEN_70 = _T_10 ? entries_2_io_resp_bits_id : _GEN_45; // @[Uncache.scala 254:33 255:19]
  wire [127:0] _GEN_72 = _T_10 ? entries_2_io_resp_bits_data : _GEN_47; // @[Uncache.scala 254:33 255:19]
  wire  _GEN_73 = _T_10 ? entries_2_io_resp_valid : _GEN_48; // @[Uncache.scala 254:33 255:19]
  wire  _entries_3_io_req_valid_T = 2'h3 == enqPtr_value; // @[Uncache.scala 232:32]
  wire  _entries_3_io_select_T = 2'h3 == issPtr_value; // @[Uncache.scala 240:29]
  wire  _entries_3_io_select_T_3 = entries_3_io_atomic ? issPtr_value == deqPtr_value : ~fence; // @[Uncache.scala 240:53]
  wire  _T_14 = 2'h3 == deqPtr_value; // @[Uncache.scala 249:15]
  wire  bus_d_ready = 2'h3 == deqPtr_value ? entries_3_io_mem_grant_ready : _GEN_52; // @[Uncache.scala 249:33 250:26]
  wire [3:0] _GEN_95 = _T_14 ? entries_3_io_resp_bits_id : _GEN_70; // @[Uncache.scala 254:33 255:19]
  wire [127:0] _GEN_97 = _T_14 ? entries_3_io_resp_bits_data : _GEN_72; // @[Uncache.scala 254:33 255:19]
  wire  _T_16 = io_lsq_req_ready & io_lsq_req_valid; // @[Decoupled.scala 50:35]
  wire [2:0] _enqPtr_new_ptr_T = {enqPtr_flag,enqPtr_value}; // @[Cat.scala 31:58]
  wire [2:0] _enqPtr_new_ptr_T_2 = _enqPtr_new_ptr_T + 3'h1; // @[CircularQueuePtr.scala 39:46]
  wire [1:0] enqPtr_new_ptr_value = _enqPtr_new_ptr_T_2[1:0]; // @[CircularQueuePtr.scala 39:59]
  wire  enqPtr_new_ptr_flag = _enqPtr_new_ptr_T_2[2]; // @[CircularQueuePtr.scala 39:59]
  reg [2:0] beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = beatsLeft == 3'h0; // @[Arbiter.scala 88:28]
  wire  out_earlyValid = entries_0_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_1_earlyValid = entries_1_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_2_earlyValid = entries_2_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_3_earlyValid = entries_3_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  reg  state_0; // @[Arbiter.scala 116:26]
  reg  state_1; // @[Arbiter.scala 116:26]
  reg  state_2; // @[Arbiter.scala 116:26]
  reg  state_3; // @[Arbiter.scala 116:26]
  wire  _sink_ACancel_earlyValid_T_9 = state_0 & out_earlyValid | state_1 & out_1_earlyValid | state_2 &
    out_2_earlyValid | state_3 & out_3_earlyValid; // @[Mux.scala 27:73]
  wire  sink_ACancel_earlyValid = idle ? out_earlyValid | out_1_earlyValid | out_2_earlyValid | out_3_earlyValid :
    _sink_ACancel_earlyValid_T_9; // @[Arbiter.scala 125:29]
  wire [3:0] _readys_T = {out_3_earlyValid,out_2_earlyValid,out_1_earlyValid,out_earlyValid}; // @[Cat.scala 31:58]
  wire [4:0] _readys_T_1 = {_readys_T, 1'h0}; // @[package.scala 244:48]
  wire [3:0] _readys_T_3 = _readys_T | _readys_T_1[3:0]; // @[package.scala 244:43]
  wire [5:0] _readys_T_4 = {_readys_T_3, 2'h0}; // @[package.scala 244:48]
  wire [3:0] _readys_T_6 = _readys_T_3 | _readys_T_4[3:0]; // @[package.scala 244:43]
  wire [4:0] _readys_T_8 = {_readys_T_6, 1'h0}; // @[Arbiter.scala 16:78]
  wire [3:0] _readys_T_10 = ~_readys_T_8[3:0]; // @[Arbiter.scala 16:61]
  wire  readys_0 = _readys_T_10[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_0 = readys_0 & out_earlyValid; // @[Arbiter.scala 97:79]
  wire  muxStateEarly_0 = idle ? earlyWinner_0 : state_0; // @[Arbiter.scala 117:30]
  wire  readys_1 = _readys_T_10[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_1 = readys_1 & out_1_earlyValid; // @[Arbiter.scala 97:79]
  wire  muxStateEarly_1 = idle ? earlyWinner_1 : state_1; // @[Arbiter.scala 117:30]
  wire  readys_2 = _readys_T_10[2]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_2 = readys_2 & out_2_earlyValid; // @[Arbiter.scala 97:79]
  wire  muxStateEarly_2 = idle ? earlyWinner_2 : state_2; // @[Arbiter.scala 117:30]
  wire  readys_3 = _readys_T_10[3]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_3 = readys_3 & out_3_earlyValid; // @[Arbiter.scala 97:79]
  wire  muxStateEarly_3 = idle ? earlyWinner_3 : state_3; // @[Arbiter.scala 117:30]
  wire  _T_17 = auto_client_out_a_ready & sink_ACancel_earlyValid; // @[Decoupled.scala 50:35]
  wire [2:0] _issPtr_new_ptr_T = {issPtr_flag,issPtr_value}; // @[Cat.scala 31:58]
  wire [2:0] _issPtr_new_ptr_T_2 = _issPtr_new_ptr_T + 3'h1; // @[CircularQueuePtr.scala 39:46]
  wire [1:0] issPtr_new_ptr_value = _issPtr_new_ptr_T_2[1:0]; // @[CircularQueuePtr.scala 39:59]
  wire  issPtr_new_ptr_flag = _issPtr_new_ptr_T_2[2]; // @[CircularQueuePtr.scala 39:59]
  wire  _T_19 = bus_d_ready & auto_client_out_d_valid; // @[Decoupled.scala 50:35]
  wire  deqPtr_opdata = auto_client_out_d_bits_opcode[0]; // @[Edges.scala 105:36]
  wire [2:0] _deqPtr_new_ptr_T = {deqPtr_flag,deqPtr_value}; // @[Cat.scala 31:58]
  wire [2:0] _deqPtr_new_ptr_T_2 = _deqPtr_new_ptr_T + 3'h1; // @[CircularQueuePtr.scala 39:46]
  wire [1:0] deqPtr_new_ptr_value = _deqPtr_new_ptr_T_2[1:0]; // @[CircularQueuePtr.scala 39:59]
  wire  deqPtr_new_ptr_flag = _deqPtr_new_ptr_T_2[2]; // @[CircularQueuePtr.scala 39:59]
  wire  _T_20 = io_lsq_resp_ready & io_lsq_resp_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_105 = _T_20 ? deqPtr_new_ptr_flag : deqPtr_flag; // @[Uncache.scala 371:47 372:14 220:23]
  wire [1:0] _GEN_106 = _T_20 ? deqPtr_new_ptr_value : deqPtr_value; // @[Uncache.scala 371:47 372:14 220:23]
  wire [12:0] _decode_T_1 = 13'h3f << entries_0_io_mem_acquire_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_3 = ~_decode_T_1[5:0]; // @[package.scala 234:46]
  wire [2:0] decode = _decode_T_3[5:3]; // @[Edges.scala 219:59]
  wire  opdata = ~entries_0_io_mem_acquire_bits_opcode[2]; // @[Edges.scala 91:28]
  wire [2:0] _T_24 = opdata ? decode : 3'h0; // @[Edges.scala 220:14]
  wire [12:0] _decode_T_5 = 13'h3f << entries_1_io_mem_acquire_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_7 = ~_decode_T_5[5:0]; // @[package.scala 234:46]
  wire [2:0] decode_1 = _decode_T_7[5:3]; // @[Edges.scala 219:59]
  wire  opdata_1 = ~entries_1_io_mem_acquire_bits_opcode[2]; // @[Edges.scala 91:28]
  wire [2:0] _T_25 = opdata_1 ? decode_1 : 3'h0; // @[Edges.scala 220:14]
  wire [12:0] _decode_T_9 = 13'h3f << entries_2_io_mem_acquire_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_11 = ~_decode_T_9[5:0]; // @[package.scala 234:46]
  wire [2:0] decode_2 = _decode_T_11[5:3]; // @[Edges.scala 219:59]
  wire  opdata_2 = ~entries_2_io_mem_acquire_bits_opcode[2]; // @[Edges.scala 91:28]
  wire [2:0] _T_26 = opdata_2 ? decode_2 : 3'h0; // @[Edges.scala 220:14]
  wire [12:0] _decode_T_13 = 13'h3f << entries_3_io_mem_acquire_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_15 = ~_decode_T_13[5:0]; // @[package.scala 234:46]
  wire [2:0] decode_3 = _decode_T_15[5:3]; // @[Edges.scala 219:59]
  wire  opdata_3 = ~entries_3_io_mem_acquire_bits_opcode[2]; // @[Edges.scala 91:28]
  wire [2:0] _T_27 = opdata_3 ? decode_3 : 3'h0; // @[Edges.scala 220:14]
  wire  latch = idle & auto_client_out_a_ready; // @[Arbiter.scala 89:24]
  wire [2:0] maskedBeats_0 = earlyWinner_0 ? _T_24 : 3'h0; // @[Arbiter.scala 111:73]
  wire [2:0] maskedBeats_1 = earlyWinner_1 ? _T_25 : 3'h0; // @[Arbiter.scala 111:73]
  wire [2:0] maskedBeats_2 = earlyWinner_2 ? _T_26 : 3'h0; // @[Arbiter.scala 111:73]
  wire [2:0] maskedBeats_3 = earlyWinner_3 ? _T_27 : 3'h0; // @[Arbiter.scala 111:73]
  wire [2:0] _initBeats_T = maskedBeats_0 | maskedBeats_1; // @[Arbiter.scala 112:44]
  wire [2:0] _initBeats_T_1 = _initBeats_T | maskedBeats_2; // @[Arbiter.scala 112:44]
  wire [2:0] initBeats = _initBeats_T_1 | maskedBeats_3; // @[Arbiter.scala 112:44]
  wire [2:0] _GEN_123 = {{2'd0}, _T_17}; // @[Arbiter.scala 113:52]
  wire [2:0] _beatsLeft_T_4 = beatsLeft - _GEN_123; // @[Arbiter.scala 113:52]
  wire  allowed_0 = idle ? readys_0 : state_0; // @[Arbiter.scala 121:24]
  wire  allowed_1 = idle ? readys_1 : state_1; // @[Arbiter.scala 121:24]
  wire  allowed_2 = idle ? readys_2 : state_2; // @[Arbiter.scala 121:24]
  wire  allowed_3 = idle ? readys_3 : state_3; // @[Arbiter.scala 121:24]
  wire [63:0] out_bits_data = entries_0_io_mem_acquire_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [63:0] _T_75 = muxStateEarly_0 ? out_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] out_1_bits_data = entries_1_io_mem_acquire_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [63:0] _T_76 = muxStateEarly_1 ? out_1_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] out_2_bits_data = entries_2_io_mem_acquire_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [63:0] _T_77 = muxStateEarly_2 ? out_2_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] out_3_bits_data = entries_3_io_mem_acquire_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [63:0] _T_78 = muxStateEarly_3 ? out_3_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _T_79 = _T_75 | _T_76; // @[Mux.scala 27:73]
  wire [63:0] _T_80 = _T_79 | _T_77; // @[Mux.scala 27:73]
  wire [7:0] out_bits_mask = entries_0_io_mem_acquire_bits_mask; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [7:0] _T_82 = muxStateEarly_0 ? out_bits_mask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] out_1_bits_mask = entries_1_io_mem_acquire_bits_mask; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [7:0] _T_83 = muxStateEarly_1 ? out_1_bits_mask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] out_2_bits_mask = entries_2_io_mem_acquire_bits_mask; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [7:0] _T_84 = muxStateEarly_2 ? out_2_bits_mask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] out_3_bits_mask = entries_3_io_mem_acquire_bits_mask; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [7:0] _T_85 = muxStateEarly_3 ? out_3_bits_mask : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _T_86 = _T_82 | _T_83; // @[Mux.scala 27:73]
  wire [7:0] _T_87 = _T_86 | _T_84; // @[Mux.scala 27:73]
  wire [35:0] out_bits_address = entries_0_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_89 = muxStateEarly_0 ? out_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_1_bits_address = entries_1_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_90 = muxStateEarly_1 ? out_1_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_2_bits_address = entries_2_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_91 = muxStateEarly_2 ? out_2_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_3_bits_address = entries_3_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_92 = muxStateEarly_3 ? out_3_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_93 = _T_89 | _T_90; // @[Mux.scala 27:73]
  wire [35:0] _T_94 = _T_93 | _T_91; // @[Mux.scala 27:73]
  wire [1:0] out_bits_source = entries_0_io_mem_acquire_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_96 = muxStateEarly_0 ? out_bits_source : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_1_bits_source = entries_1_io_mem_acquire_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_97 = muxStateEarly_1 ? out_1_bits_source : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_2_bits_source = entries_2_io_mem_acquire_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_98 = muxStateEarly_2 ? out_2_bits_source : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_3_bits_source = entries_3_io_mem_acquire_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_99 = muxStateEarly_3 ? out_3_bits_source : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_100 = _T_96 | _T_97; // @[Mux.scala 27:73]
  wire [1:0] _T_101 = _T_100 | _T_98; // @[Mux.scala 27:73]
  wire [2:0] out_bits_size = entries_0_io_mem_acquire_bits_size; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_103 = muxStateEarly_0 ? out_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_1_bits_size = entries_1_io_mem_acquire_bits_size; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_104 = muxStateEarly_1 ? out_1_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_2_bits_size = entries_2_io_mem_acquire_bits_size; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_105 = muxStateEarly_2 ? out_2_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_3_bits_size = entries_3_io_mem_acquire_bits_size; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_106 = muxStateEarly_3 ? out_3_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_107 = _T_103 | _T_104; // @[Mux.scala 27:73]
  wire [2:0] _T_108 = _T_107 | _T_105; // @[Mux.scala 27:73]
  wire [2:0] out_bits_opcode = entries_0_io_mem_acquire_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_117 = muxStateEarly_0 ? out_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_1_bits_opcode = entries_1_io_mem_acquire_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_118 = muxStateEarly_1 ? out_1_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_2_bits_opcode = entries_2_io_mem_acquire_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_119 = muxStateEarly_2 ? out_2_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_3_bits_opcode = entries_3_io_mem_acquire_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_120 = muxStateEarly_3 ? out_3_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_121 = _T_117 | _T_118; // @[Mux.scala 27:73]
  wire [2:0] _T_122 = _T_121 | _T_119; // @[Mux.scala 27:73]
  MMIOEntry entries_0 ( // @[Uncache.scala 226:53]
    .clock(entries_0_clock),
    .reset(entries_0_reset),
    .io_hartId(entries_0_io_hartId),
    .io_enableOutstanding(entries_0_io_enableOutstanding),
    .io_req_ready(entries_0_io_req_ready),
    .io_req_valid(entries_0_io_req_valid),
    .io_req_bits_cmd(entries_0_io_req_bits_cmd),
    .io_req_bits_addr(entries_0_io_req_bits_addr),
    .io_req_bits_data(entries_0_io_req_bits_data),
    .io_req_bits_mask(entries_0_io_req_bits_mask),
    .io_req_bits_id(entries_0_io_req_bits_id),
    .io_req_bits_atomic(entries_0_io_req_bits_atomic),
    .io_resp_ready(entries_0_io_resp_ready),
    .io_resp_valid(entries_0_io_resp_valid),
    .io_resp_bits_data(entries_0_io_resp_bits_data),
    .io_resp_bits_id(entries_0_io_resp_bits_id),
    .io_mem_acquire_ready(entries_0_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_0_io_mem_acquire_valid),
    .io_mem_acquire_bits_opcode(entries_0_io_mem_acquire_bits_opcode),
    .io_mem_acquire_bits_size(entries_0_io_mem_acquire_bits_size),
    .io_mem_acquire_bits_source(entries_0_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(entries_0_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_mask(entries_0_io_mem_acquire_bits_mask),
    .io_mem_acquire_bits_data(entries_0_io_mem_acquire_bits_data),
    .io_mem_grant_ready(entries_0_io_mem_grant_ready),
    .io_mem_grant_valid(entries_0_io_mem_grant_valid),
    .io_mem_grant_bits_data(entries_0_io_mem_grant_bits_data),
    .io_select(entries_0_io_select),
    .io_atomic(entries_0_io_atomic)
  );
  MMIOEntry entries_1 ( // @[Uncache.scala 226:53]
    .clock(entries_1_clock),
    .reset(entries_1_reset),
    .io_hartId(entries_1_io_hartId),
    .io_enableOutstanding(entries_1_io_enableOutstanding),
    .io_req_ready(entries_1_io_req_ready),
    .io_req_valid(entries_1_io_req_valid),
    .io_req_bits_cmd(entries_1_io_req_bits_cmd),
    .io_req_bits_addr(entries_1_io_req_bits_addr),
    .io_req_bits_data(entries_1_io_req_bits_data),
    .io_req_bits_mask(entries_1_io_req_bits_mask),
    .io_req_bits_id(entries_1_io_req_bits_id),
    .io_req_bits_atomic(entries_1_io_req_bits_atomic),
    .io_resp_ready(entries_1_io_resp_ready),
    .io_resp_valid(entries_1_io_resp_valid),
    .io_resp_bits_data(entries_1_io_resp_bits_data),
    .io_resp_bits_id(entries_1_io_resp_bits_id),
    .io_mem_acquire_ready(entries_1_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_1_io_mem_acquire_valid),
    .io_mem_acquire_bits_opcode(entries_1_io_mem_acquire_bits_opcode),
    .io_mem_acquire_bits_size(entries_1_io_mem_acquire_bits_size),
    .io_mem_acquire_bits_source(entries_1_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(entries_1_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_mask(entries_1_io_mem_acquire_bits_mask),
    .io_mem_acquire_bits_data(entries_1_io_mem_acquire_bits_data),
    .io_mem_grant_ready(entries_1_io_mem_grant_ready),
    .io_mem_grant_valid(entries_1_io_mem_grant_valid),
    .io_mem_grant_bits_data(entries_1_io_mem_grant_bits_data),
    .io_select(entries_1_io_select),
    .io_atomic(entries_1_io_atomic)
  );
  MMIOEntry entries_2 ( // @[Uncache.scala 226:53]
    .clock(entries_2_clock),
    .reset(entries_2_reset),
    .io_hartId(entries_2_io_hartId),
    .io_enableOutstanding(entries_2_io_enableOutstanding),
    .io_req_ready(entries_2_io_req_ready),
    .io_req_valid(entries_2_io_req_valid),
    .io_req_bits_cmd(entries_2_io_req_bits_cmd),
    .io_req_bits_addr(entries_2_io_req_bits_addr),
    .io_req_bits_data(entries_2_io_req_bits_data),
    .io_req_bits_mask(entries_2_io_req_bits_mask),
    .io_req_bits_id(entries_2_io_req_bits_id),
    .io_req_bits_atomic(entries_2_io_req_bits_atomic),
    .io_resp_ready(entries_2_io_resp_ready),
    .io_resp_valid(entries_2_io_resp_valid),
    .io_resp_bits_data(entries_2_io_resp_bits_data),
    .io_resp_bits_id(entries_2_io_resp_bits_id),
    .io_mem_acquire_ready(entries_2_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_2_io_mem_acquire_valid),
    .io_mem_acquire_bits_opcode(entries_2_io_mem_acquire_bits_opcode),
    .io_mem_acquire_bits_size(entries_2_io_mem_acquire_bits_size),
    .io_mem_acquire_bits_source(entries_2_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(entries_2_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_mask(entries_2_io_mem_acquire_bits_mask),
    .io_mem_acquire_bits_data(entries_2_io_mem_acquire_bits_data),
    .io_mem_grant_ready(entries_2_io_mem_grant_ready),
    .io_mem_grant_valid(entries_2_io_mem_grant_valid),
    .io_mem_grant_bits_data(entries_2_io_mem_grant_bits_data),
    .io_select(entries_2_io_select),
    .io_atomic(entries_2_io_atomic)
  );
  MMIOEntry entries_3 ( // @[Uncache.scala 226:53]
    .clock(entries_3_clock),
    .reset(entries_3_reset),
    .io_hartId(entries_3_io_hartId),
    .io_enableOutstanding(entries_3_io_enableOutstanding),
    .io_req_ready(entries_3_io_req_ready),
    .io_req_valid(entries_3_io_req_valid),
    .io_req_bits_cmd(entries_3_io_req_bits_cmd),
    .io_req_bits_addr(entries_3_io_req_bits_addr),
    .io_req_bits_data(entries_3_io_req_bits_data),
    .io_req_bits_mask(entries_3_io_req_bits_mask),
    .io_req_bits_id(entries_3_io_req_bits_id),
    .io_req_bits_atomic(entries_3_io_req_bits_atomic),
    .io_resp_ready(entries_3_io_resp_ready),
    .io_resp_valid(entries_3_io_resp_valid),
    .io_resp_bits_data(entries_3_io_resp_bits_data),
    .io_resp_bits_id(entries_3_io_resp_bits_id),
    .io_mem_acquire_ready(entries_3_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_3_io_mem_acquire_valid),
    .io_mem_acquire_bits_opcode(entries_3_io_mem_acquire_bits_opcode),
    .io_mem_acquire_bits_size(entries_3_io_mem_acquire_bits_size),
    .io_mem_acquire_bits_source(entries_3_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(entries_3_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_mask(entries_3_io_mem_acquire_bits_mask),
    .io_mem_acquire_bits_data(entries_3_io_mem_acquire_bits_data),
    .io_mem_grant_ready(entries_3_io_mem_grant_ready),
    .io_mem_grant_valid(entries_3_io_mem_grant_valid),
    .io_mem_grant_bits_data(entries_3_io_mem_grant_bits_data),
    .io_select(entries_3_io_select),
    .io_atomic(entries_3_io_atomic)
  );
  assign auto_client_out_a_valid = idle ? out_earlyValid | out_1_earlyValid | out_2_earlyValid | out_3_earlyValid :
    _sink_ACancel_earlyValid_T_9; // @[Arbiter.scala 125:29]
  assign auto_client_out_a_bits_opcode = _T_122 | _T_120; // @[Mux.scala 27:73]
  assign auto_client_out_a_bits_size = _T_108 | _T_106; // @[Mux.scala 27:73]
  assign auto_client_out_a_bits_source = _T_101 | _T_99; // @[Mux.scala 27:73]
  assign auto_client_out_a_bits_address = _T_94 | _T_92; // @[Mux.scala 27:73]
  assign auto_client_out_a_bits_mask = _T_87 | _T_85; // @[Mux.scala 27:73]
  assign auto_client_out_a_bits_data = _T_80 | _T_78; // @[Mux.scala 27:73]
  assign auto_client_out_d_ready = 2'h3 == deqPtr_value ? entries_3_io_mem_grant_ready : _GEN_52; // @[Uncache.scala 249:33 250:26]
  assign io_flush_empty = _deqPtr_new_ptr_T == _enqPtr_new_ptr_T; // @[CircularQueuePtr.scala 61:47]
  assign io_lsq_req_ready = _entries_3_io_req_valid_T ? entries_3_io_req_ready : _GEN_50; // @[Uncache.scala 235:33 236:17]
  assign io_lsq_resp_valid = _T_14 ? entries_3_io_resp_valid : _GEN_73; // @[Uncache.scala 254:33 255:19]
  assign io_lsq_resp_bits_data = _GEN_97[63:0];
  assign io_lsq_resp_bits_id = {{1'd0}, _GEN_95};
  assign entries_0_clock = clock;
  assign entries_0_reset = reset;
  assign entries_0_io_hartId = io_hartId; // @[Uncache.scala 228:21]
  assign entries_0_io_enableOutstanding = io_enableOutstanding; // @[Uncache.scala 229:32]
  assign entries_0_io_req_valid = 2'h0 == enqPtr_value & io_lsq_req_valid; // @[Uncache.scala 232:50]
  assign entries_0_io_req_bits_cmd = io_lsq_req_bits_cmd; // @[Uncache.scala 233:23]
  assign entries_0_io_req_bits_addr = io_lsq_req_bits_addr; // @[Uncache.scala 233:23]
  assign entries_0_io_req_bits_data = io_lsq_req_bits_data; // @[Uncache.scala 233:23]
  assign entries_0_io_req_bits_mask = io_lsq_req_bits_mask; // @[Uncache.scala 233:23]
  assign entries_0_io_req_bits_id = io_lsq_req_bits_id; // @[Uncache.scala 233:23]
  assign entries_0_io_req_bits_atomic = io_lsq_req_bits_atomic; // @[Uncache.scala 233:23]
  assign entries_0_io_resp_ready = _T_2 & io_lsq_resp_ready; // @[Uncache.scala 254:33 255:19 253:25]
  assign entries_0_io_mem_acquire_ready = auto_client_out_a_ready & allowed_0; // @[Arbiter.scala 123:31]
  assign entries_0_io_mem_grant_valid = 2'h0 == deqPtr_value & auto_client_out_d_valid; // @[Uncache.scala 249:33 250:26 247:30]
  assign entries_0_io_mem_grant_bits_data = auto_client_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign entries_0_io_select = 2'h0 == issPtr_value & _entries_0_io_select_T_3; // @[Uncache.scala 240:47]
  assign entries_1_clock = clock;
  assign entries_1_reset = reset;
  assign entries_1_io_hartId = io_hartId; // @[Uncache.scala 228:21]
  assign entries_1_io_enableOutstanding = io_enableOutstanding; // @[Uncache.scala 229:32]
  assign entries_1_io_req_valid = 2'h1 == enqPtr_value & io_lsq_req_valid; // @[Uncache.scala 232:50]
  assign entries_1_io_req_bits_cmd = io_lsq_req_bits_cmd; // @[Uncache.scala 233:23]
  assign entries_1_io_req_bits_addr = io_lsq_req_bits_addr; // @[Uncache.scala 233:23]
  assign entries_1_io_req_bits_data = io_lsq_req_bits_data; // @[Uncache.scala 233:23]
  assign entries_1_io_req_bits_mask = io_lsq_req_bits_mask; // @[Uncache.scala 233:23]
  assign entries_1_io_req_bits_id = io_lsq_req_bits_id; // @[Uncache.scala 233:23]
  assign entries_1_io_req_bits_atomic = io_lsq_req_bits_atomic; // @[Uncache.scala 233:23]
  assign entries_1_io_resp_ready = _T_6 & io_lsq_resp_ready; // @[Uncache.scala 254:33 255:19 253:25]
  assign entries_1_io_mem_acquire_ready = auto_client_out_a_ready & allowed_1; // @[Arbiter.scala 123:31]
  assign entries_1_io_mem_grant_valid = 2'h1 == deqPtr_value & auto_client_out_d_valid; // @[Uncache.scala 249:33 250:26 247:30]
  assign entries_1_io_mem_grant_bits_data = auto_client_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign entries_1_io_select = 2'h1 == issPtr_value & _entries_1_io_select_T_3; // @[Uncache.scala 240:47]
  assign entries_2_clock = clock;
  assign entries_2_reset = reset;
  assign entries_2_io_hartId = io_hartId; // @[Uncache.scala 228:21]
  assign entries_2_io_enableOutstanding = io_enableOutstanding; // @[Uncache.scala 229:32]
  assign entries_2_io_req_valid = 2'h2 == enqPtr_value & io_lsq_req_valid; // @[Uncache.scala 232:50]
  assign entries_2_io_req_bits_cmd = io_lsq_req_bits_cmd; // @[Uncache.scala 233:23]
  assign entries_2_io_req_bits_addr = io_lsq_req_bits_addr; // @[Uncache.scala 233:23]
  assign entries_2_io_req_bits_data = io_lsq_req_bits_data; // @[Uncache.scala 233:23]
  assign entries_2_io_req_bits_mask = io_lsq_req_bits_mask; // @[Uncache.scala 233:23]
  assign entries_2_io_req_bits_id = io_lsq_req_bits_id; // @[Uncache.scala 233:23]
  assign entries_2_io_req_bits_atomic = io_lsq_req_bits_atomic; // @[Uncache.scala 233:23]
  assign entries_2_io_resp_ready = _T_10 & io_lsq_resp_ready; // @[Uncache.scala 254:33 255:19 253:25]
  assign entries_2_io_mem_acquire_ready = auto_client_out_a_ready & allowed_2; // @[Arbiter.scala 123:31]
  assign entries_2_io_mem_grant_valid = 2'h2 == deqPtr_value & auto_client_out_d_valid; // @[Uncache.scala 249:33 250:26 247:30]
  assign entries_2_io_mem_grant_bits_data = auto_client_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign entries_2_io_select = 2'h2 == issPtr_value & _entries_2_io_select_T_3; // @[Uncache.scala 240:47]
  assign entries_3_clock = clock;
  assign entries_3_reset = reset;
  assign entries_3_io_hartId = io_hartId; // @[Uncache.scala 228:21]
  assign entries_3_io_enableOutstanding = io_enableOutstanding; // @[Uncache.scala 229:32]
  assign entries_3_io_req_valid = 2'h3 == enqPtr_value & io_lsq_req_valid; // @[Uncache.scala 232:50]
  assign entries_3_io_req_bits_cmd = io_lsq_req_bits_cmd; // @[Uncache.scala 233:23]
  assign entries_3_io_req_bits_addr = io_lsq_req_bits_addr; // @[Uncache.scala 233:23]
  assign entries_3_io_req_bits_data = io_lsq_req_bits_data; // @[Uncache.scala 233:23]
  assign entries_3_io_req_bits_mask = io_lsq_req_bits_mask; // @[Uncache.scala 233:23]
  assign entries_3_io_req_bits_id = io_lsq_req_bits_id; // @[Uncache.scala 233:23]
  assign entries_3_io_req_bits_atomic = io_lsq_req_bits_atomic; // @[Uncache.scala 233:23]
  assign entries_3_io_resp_ready = _T_14 & io_lsq_resp_ready; // @[Uncache.scala 254:33 255:19 253:25]
  assign entries_3_io_mem_acquire_ready = auto_client_out_a_ready & allowed_3; // @[Arbiter.scala 123:31]
  assign entries_3_io_mem_grant_valid = 2'h3 == deqPtr_value & auto_client_out_d_valid; // @[Uncache.scala 249:33 250:26 247:30]
  assign entries_3_io_mem_grant_bits_data = auto_client_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign entries_3_io_select = 2'h3 == issPtr_value & _entries_3_io_select_T_3; // @[Uncache.scala 240:47]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Uncache.scala 261:31]
      enqPtr_flag <= 1'h0; // @[Uncache.scala 355:21 356:14 218:23]
    end else if (io_enableOutstanding) begin // @[Uncache.scala 379:29]
      if (_T_16) begin // @[Uncache.scala 380:14]
        enqPtr_flag <= enqPtr_new_ptr_flag;
      end
    end else if (_T_20) begin // @[Uncache.scala 218:23]
      enqPtr_flag <= enqPtr_new_ptr_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Uncache.scala 261:31]
      enqPtr_value <= 2'h0; // @[Uncache.scala 355:21 356:14 218:23]
    end else if (io_enableOutstanding) begin // @[Uncache.scala 379:29]
      if (_T_16) begin // @[Uncache.scala 380:14]
        enqPtr_value <= enqPtr_new_ptr_value;
      end
    end else if (_T_20) begin // @[Uncache.scala 218:23]
      enqPtr_value <= enqPtr_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Uncache.scala 261:31]
      issPtr_flag <= 1'h0; // @[Uncache.scala 360:29 361:14 219:23]
    end else if (io_enableOutstanding) begin // @[Uncache.scala 379:29]
      if (_T_17) begin // @[Uncache.scala 381:14]
        issPtr_flag <= issPtr_new_ptr_flag;
      end
    end else if (_T_20) begin // @[Uncache.scala 219:23]
      issPtr_flag <= issPtr_new_ptr_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Uncache.scala 261:31]
      issPtr_value <= 2'h0; // @[Uncache.scala 360:29 361:14 219:23]
    end else if (io_enableOutstanding) begin // @[Uncache.scala 379:29]
      if (_T_17) begin // @[Uncache.scala 381:14]
        issPtr_value <= issPtr_new_ptr_value;
      end
    end else if (_T_20) begin // @[Uncache.scala 219:23]
      issPtr_value <= issPtr_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Uncache.scala 261:31]
      deqPtr_flag <= 1'h0; // @[Uncache.scala 369:27 370:20]
    end else if (io_enableOutstanding) begin
      if (_T_19) begin
        if (!(deqPtr_opdata)) begin
          deqPtr_flag <= deqPtr_new_ptr_flag;
        end
      end else begin
        deqPtr_flag <= _GEN_105;
      end
    end else begin
      deqPtr_flag <= _GEN_105;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Uncache.scala 261:31]
      deqPtr_value <= 2'h0; // @[Uncache.scala 369:27 370:20]
    end else if (io_enableOutstanding) begin
      if (_T_19) begin
        if (!(deqPtr_opdata)) begin
          deqPtr_value <= deqPtr_new_ptr_value;
        end
      end else begin
        deqPtr_value <= _GEN_106;
      end
    end else begin
      deqPtr_value <= _GEN_106;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Uncache.scala 261:31]
      fence <= 1'h0; // @[Uncache.scala 375:36 376:13 364:29 242:33 243:18 221:22]
    end else if (io_enableOutstanding) begin // @[Uncache.scala 221:22]
      if (_T_19 & fence) begin
        fence <= 1'h0;
      end else if (_T_17) begin
        if (_entries_3_io_select_T) begin
          fence <= entries_3_io_atomic;
        end else begin
          fence <= _GEN_51;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 113:23]
      beatsLeft <= 3'h0;
    end else if (latch) begin
      beatsLeft <= initBeats;
    end else begin
      beatsLeft <= _beatsLeft_T_4;
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
  enqPtr_flag = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  enqPtr_value = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  issPtr_flag = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  issPtr_value = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  deqPtr_flag = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  deqPtr_value = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  fence = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  beatsLeft = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  state_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  state_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  state_3 = _RAND_11[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    enqPtr_flag = 1'h0;
  end
  if (reset) begin
    enqPtr_value = 2'h0;
  end
  if (reset) begin
    issPtr_flag = 1'h0;
  end
  if (reset) begin
    issPtr_value = 2'h0;
  end
  if (reset) begin
    deqPtr_flag = 1'h0;
  end
  if (reset) begin
    deqPtr_value = 2'h0;
  end
  if (reset) begin
    fence = 1'h0;
  end
  if (reset) begin
    beatsLeft = 3'h0;
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
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

