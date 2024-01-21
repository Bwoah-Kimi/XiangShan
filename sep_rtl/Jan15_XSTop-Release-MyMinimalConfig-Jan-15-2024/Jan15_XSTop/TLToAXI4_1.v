module TLToAXI4_1(
  input         clock,
  input         reset,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [1:0]  auto_in_a_bits_size,
  input  [2:0]  auto_in_a_bits_source,
  input  [30:0] auto_in_a_bits_address,
  input  [7:0]  auto_in_a_bits_mask,
  input  [63:0] auto_in_a_bits_data,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [1:0]  auto_in_d_bits_size,
  output [2:0]  auto_in_d_bits_source,
  output [63:0] auto_in_d_bits_data,
  input         auto_out_awready,
  output        auto_out_awvalid,
  output [2:0]  auto_out_awid,
  output [30:0] auto_out_awaddr,
  output [7:0]  auto_out_awlen,
  output [2:0]  auto_out_awsize,
  output [1:0]  auto_out_awburst,
  output        auto_out_awlock,
  output [3:0]  auto_out_awcache,
  output [2:0]  auto_out_awprot,
  output [3:0]  auto_out_awqos,
  output [3:0]  auto_out_awecho_tl_state_size,
  output [2:0]  auto_out_awecho_tl_state_source,
  input         auto_out_wready,
  output        auto_out_wvalid,
  output [63:0] auto_out_wdata,
  output [7:0]  auto_out_wstrb,
  output        auto_out_wlast,
  output        auto_out_bready,
  input         auto_out_bvalid,
  input  [2:0]  auto_out_bid,
  input  [3:0]  auto_out_becho_tl_state_size,
  input  [2:0]  auto_out_becho_tl_state_source,
  input         auto_out_arready,
  output        auto_out_arvalid,
  output [2:0]  auto_out_arid,
  output [30:0] auto_out_araddr,
  output [7:0]  auto_out_arlen,
  output [2:0]  auto_out_arsize,
  output [1:0]  auto_out_arburst,
  output        auto_out_arlock,
  output [3:0]  auto_out_arcache,
  output [2:0]  auto_out_arprot,
  output [3:0]  auto_out_arqos,
  output [3:0]  auto_out_arecho_tl_state_size,
  output [2:0]  auto_out_arecho_tl_state_source,
  output        auto_out_rready,
  input         auto_out_rvalid,
  input  [2:0]  auto_out_rid,
  input  [63:0] auto_out_rdata,
  input  [3:0]  auto_out_recho_tl_state_size,
  input  [2:0]  auto_out_recho_tl_state_source,
  input         auto_out_rlast
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
`endif // RANDOMIZE_REG_INIT
  wire  deq_clock; // @[Decoupled.scala 361:21]
  wire  deq_reset; // @[Decoupled.scala 361:21]
  wire  deq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  deq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [63:0] deq_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire [7:0] deq_io_enq_bits_strb; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [63:0] deq_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire [7:0] deq_io_deq_bits_strb; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_bits_last; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_clock; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_reset; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] queue_arw_deq_io_enq_bits_id; // @[Decoupled.scala 361:21]
  wire [30:0] queue_arw_deq_io_enq_bits_addr; // @[Decoupled.scala 361:21]
  wire [7:0] queue_arw_deq_io_enq_bits_len; // @[Decoupled.scala 361:21]
  wire [2:0] queue_arw_deq_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] queue_arw_deq_io_enq_bits_echo_tl_state_size; // @[Decoupled.scala 361:21]
  wire [2:0] queue_arw_deq_io_enq_bits_echo_tl_state_source; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_enq_bits_wen; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] queue_arw_deq_io_deq_bits_id; // @[Decoupled.scala 361:21]
  wire [30:0] queue_arw_deq_io_deq_bits_addr; // @[Decoupled.scala 361:21]
  wire [7:0] queue_arw_deq_io_deq_bits_len; // @[Decoupled.scala 361:21]
  wire [2:0] queue_arw_deq_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [1:0] queue_arw_deq_io_deq_bits_burst; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_deq_bits_lock; // @[Decoupled.scala 361:21]
  wire [3:0] queue_arw_deq_io_deq_bits_cache; // @[Decoupled.scala 361:21]
  wire [2:0] queue_arw_deq_io_deq_bits_prot; // @[Decoupled.scala 361:21]
  wire [3:0] queue_arw_deq_io_deq_bits_qos; // @[Decoupled.scala 361:21]
  wire [3:0] queue_arw_deq_io_deq_bits_echo_tl_state_size; // @[Decoupled.scala 361:21]
  wire [2:0] queue_arw_deq_io_deq_bits_echo_tl_state_source; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_deq_bits_wen; // @[Decoupled.scala 361:21]
  wire  a_isPut = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 91:28]
  reg  count_5; // @[ToAXI4.scala 254:28]
  reg  count_4; // @[ToAXI4.scala 254:28]
  reg  count_3; // @[ToAXI4.scala 254:28]
  reg  count_2; // @[ToAXI4.scala 254:28]
  reg  count_1; // @[ToAXI4.scala 254:28]
  wire  _GEN_8 = 3'h1 == auto_in_a_bits_source ? count_2 : count_1; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_9 = 3'h2 == auto_in_a_bits_source ? count_3 : _GEN_8; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_10 = 3'h3 == auto_in_a_bits_source ? count_4 : _GEN_9; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_11 = 3'h4 == auto_in_a_bits_source ? count_5 : _GEN_10; // @[ToAXI4.scala 195:{49,49}]
  reg  counter; // @[Edges.scala 228:27]
  wire  a_first = ~counter; // @[Edges.scala 230:25]
  wire  stall = _GEN_11 & a_first; // @[ToAXI4.scala 195:49]
  wire  _bundleIn_0_a_ready_T = ~stall; // @[ToAXI4.scala 196:21]
  wire  out_arw_ready = queue_arw_deq_io_enq_ready; // @[ToAXI4.scala 147:25 Decoupled.scala 365:17]
  wire  out_wready = deq_io_enq_ready; // @[ToAXI4.scala 148:23 Decoupled.scala 365:17]
  wire  _bundleIn_0_a_ready_T_3 = a_isPut ? out_arw_ready & out_wready : out_arw_ready; // @[ToAXI4.scala 196:34]
  wire  bundleIn_0_a_ready = ~stall & _bundleIn_0_a_ready_T_3; // @[ToAXI4.scala 196:28]
  wire  done = bundleIn_0_a_ready & auto_in_a_valid; // @[Decoupled.scala 50:35]
  wire  counter1 = counter - 1'h1; // @[Edges.scala 229:28]
  wire  queue_arw_bits_wen = queue_arw_deq_io_deq_bits_wen; // @[Decoupled.scala 401:19 402:14]
  wire  queue_arw_valid = queue_arw_deq_io_deq_valid; // @[Decoupled.scala 401:19 403:15]
  wire [2:0] _GEN_3 = 3'h1 == auto_in_a_bits_source ? 3'h1 : 3'h0; // @[ToAXI4.scala 166:{17,17}]
  wire [2:0] _GEN_4 = 3'h2 == auto_in_a_bits_source ? 3'h2 : _GEN_3; // @[ToAXI4.scala 166:{17,17}]
  wire [2:0] _GEN_5 = 3'h3 == auto_in_a_bits_source ? 3'h3 : _GEN_4; // @[ToAXI4.scala 166:{17,17}]
  wire [2:0] out_arw_bits_id = 3'h4 == auto_in_a_bits_source ? 3'h4 : _GEN_5; // @[ToAXI4.scala 166:{17,17}]
  wire [13:0] _out_arw_bits_len_T_1 = 14'h7ff << auto_in_a_bits_size; // @[package.scala 234:77]
  wire [10:0] _out_arw_bits_len_T_3 = ~_out_arw_bits_len_T_1[10:0]; // @[package.scala 234:46]
  wire [1:0] _out_arw_bits_size_T_1 = auto_in_a_bits_size >= 2'h3 ? 2'h3 : auto_in_a_bits_size; // @[ToAXI4.scala 169:23]
  wire  _out_arw_valid_T_1 = _bundleIn_0_a_ready_T & auto_in_a_valid; // @[ToAXI4.scala 197:31]
  wire  _out_arw_valid_T_4 = a_isPut ? out_wready : 1'h1; // @[ToAXI4.scala 197:51]
  wire  out_arw_valid = _bundleIn_0_a_ready_T & auto_in_a_valid & _out_arw_valid_T_4; // @[ToAXI4.scala 197:45]
  reg  r_holds_d; // @[ToAXI4.scala 206:30]
  reg [2:0] b_delay; // @[ToAXI4.scala 209:24]
  wire  r_wins = auto_out_rvalid & b_delay != 3'h7 | r_holds_d; // @[ToAXI4.scala 215:57]
  wire  bundleOut_0_rready = auto_in_d_ready & r_wins; // @[ToAXI4.scala 217:33]
  wire  _T_2 = bundleOut_0_rready & auto_out_rvalid; // @[Decoupled.scala 50:35]
  wire  bundleOut_0_bready = auto_in_d_ready & ~r_wins; // @[ToAXI4.scala 218:33]
  wire [2:0] _bdelay_T_1 = b_delay + 3'h1; // @[ToAXI4.scala 211:28]
  wire  bundleIn_0_d_valid = r_wins ? auto_out_rvalid : auto_out_bvalid; // @[ToAXI4.scala 219:24]
  wire [1:0] r_d_size = auto_out_recho_tl_state_size[1:0]; // @[Edges.scala 771:17 774:15]
  wire [1:0] b_d_size = auto_out_becho_tl_state_size[1:0]; // @[Edges.scala 755:17 758:15]
  wire [7:0] _a_sel_T = 8'h1 << out_arw_bits_id; // @[OneHot.scala 64:12]
  wire  a_sel_0 = _a_sel_T[0]; // @[ToAXI4.scala 242:58]
  wire  a_sel_1 = _a_sel_T[1]; // @[ToAXI4.scala 242:58]
  wire  a_sel_2 = _a_sel_T[2]; // @[ToAXI4.scala 242:58]
  wire  a_sel_3 = _a_sel_T[3]; // @[ToAXI4.scala 242:58]
  wire  a_sel_4 = _a_sel_T[4]; // @[ToAXI4.scala 242:58]
  wire [2:0] d_sel_shiftAmount = r_wins ? auto_out_rid : auto_out_bid; // @[ToAXI4.scala 243:31]
  wire [7:0] _d_sel_T_1 = 8'h1 << d_sel_shiftAmount; // @[OneHot.scala 64:12]
  wire  d_sel_0 = _d_sel_T_1[0]; // @[ToAXI4.scala 243:93]
  wire  d_sel_1 = _d_sel_T_1[1]; // @[ToAXI4.scala 243:93]
  wire  d_sel_2 = _d_sel_T_1[2]; // @[ToAXI4.scala 243:93]
  wire  d_sel_3 = _d_sel_T_1[3]; // @[ToAXI4.scala 243:93]
  wire  d_sel_4 = _d_sel_T_1[4]; // @[ToAXI4.scala 243:93]
  wire  d_last = r_wins ? auto_out_rlast : 1'h1; // @[ToAXI4.scala 244:23]
  wire  _inc_T = out_arw_ready & out_arw_valid; // @[Decoupled.scala 50:35]
  wire  inc = a_sel_0 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  _dec_T_1 = auto_in_d_ready & bundleIn_0_d_valid; // @[Decoupled.scala 50:35]
  wire  dec = d_sel_0 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_2 = count_1 + inc; // @[ToAXI4.scala 260:24]
  wire  inc_1 = a_sel_1 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_1 = d_sel_1 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_6 = count_2 + inc_1; // @[ToAXI4.scala 260:24]
  wire  inc_2 = a_sel_2 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_2 = d_sel_2 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_10 = count_3 + inc_2; // @[ToAXI4.scala 260:24]
  wire  inc_3 = a_sel_3 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_3 = d_sel_3 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_14 = count_4 + inc_3; // @[ToAXI4.scala 260:24]
  wire  inc_4 = a_sel_4 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_4 = d_sel_4 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_18 = count_5 + inc_4; // @[ToAXI4.scala 260:24]
  Queue_91 deq ( // @[Decoupled.scala 361:21]
    .clock(deq_clock),
    .reset(deq_reset),
    .io_enq_ready(deq_io_enq_ready),
    .io_enq_valid(deq_io_enq_valid),
    .io_enq_bits_data(deq_io_enq_bits_data),
    .io_enq_bits_strb(deq_io_enq_bits_strb),
    .io_deq_ready(deq_io_deq_ready),
    .io_deq_valid(deq_io_deq_valid),
    .io_deq_bits_data(deq_io_deq_bits_data),
    .io_deq_bits_strb(deq_io_deq_bits_strb),
    .io_deq_bits_last(deq_io_deq_bits_last)
  );
  Queue_92 queue_arw_deq ( // @[Decoupled.scala 361:21]
    .clock(queue_arw_deq_clock),
    .reset(queue_arw_deq_reset),
    .io_enq_ready(queue_arw_deq_io_enq_ready),
    .io_enq_valid(queue_arw_deq_io_enq_valid),
    .io_enq_bits_id(queue_arw_deq_io_enq_bits_id),
    .io_enq_bits_addr(queue_arw_deq_io_enq_bits_addr),
    .io_enq_bits_len(queue_arw_deq_io_enq_bits_len),
    .io_enq_bits_size(queue_arw_deq_io_enq_bits_size),
    .io_enq_bits_echo_tl_state_size(queue_arw_deq_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(queue_arw_deq_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_wen(queue_arw_deq_io_enq_bits_wen),
    .io_deq_ready(queue_arw_deq_io_deq_ready),
    .io_deq_valid(queue_arw_deq_io_deq_valid),
    .io_deq_bits_id(queue_arw_deq_io_deq_bits_id),
    .io_deq_bits_addr(queue_arw_deq_io_deq_bits_addr),
    .io_deq_bits_len(queue_arw_deq_io_deq_bits_len),
    .io_deq_bits_size(queue_arw_deq_io_deq_bits_size),
    .io_deq_bits_burst(queue_arw_deq_io_deq_bits_burst),
    .io_deq_bits_lock(queue_arw_deq_io_deq_bits_lock),
    .io_deq_bits_cache(queue_arw_deq_io_deq_bits_cache),
    .io_deq_bits_prot(queue_arw_deq_io_deq_bits_prot),
    .io_deq_bits_qos(queue_arw_deq_io_deq_bits_qos),
    .io_deq_bits_echo_tl_state_size(queue_arw_deq_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(queue_arw_deq_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_wen(queue_arw_deq_io_deq_bits_wen)
  );
  assign auto_in_a_ready = ~stall & _bundleIn_0_a_ready_T_3; // @[ToAXI4.scala 196:28]
  assign auto_in_d_valid = r_wins ? auto_out_rvalid : auto_out_bvalid; // @[ToAXI4.scala 219:24]
  assign auto_in_d_bits_opcode = r_wins ? 3'h1 : 3'h0; // @[ToAXI4.scala 237:23]
  assign auto_in_d_bits_size = r_wins ? r_d_size : b_d_size; // @[ToAXI4.scala 237:23]
  assign auto_in_d_bits_source = r_wins ? auto_out_recho_tl_state_source : auto_out_becho_tl_state_source; // @[ToAXI4.scala 237:23]
  assign auto_in_d_bits_data = auto_out_rdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_out_awvalid = queue_arw_valid & queue_arw_bits_wen; // @[ToAXI4.scala 156:39]
  assign auto_out_awid = queue_arw_deq_io_deq_bits_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awaddr = queue_arw_deq_io_deq_bits_addr; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awlen = queue_arw_deq_io_deq_bits_len; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awsize = queue_arw_deq_io_deq_bits_size; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awburst = queue_arw_deq_io_deq_bits_burst; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awlock = queue_arw_deq_io_deq_bits_lock; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awcache = queue_arw_deq_io_deq_bits_cache; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awprot = queue_arw_deq_io_deq_bits_prot; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awqos = queue_arw_deq_io_deq_bits_qos; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awecho_tl_state_size = queue_arw_deq_io_deq_bits_echo_tl_state_size; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awecho_tl_state_source = queue_arw_deq_io_deq_bits_echo_tl_state_source; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_wvalid = deq_io_deq_valid; // @[Decoupled.scala 401:19 403:15]
  assign auto_out_wdata = deq_io_deq_bits_data; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_wstrb = deq_io_deq_bits_strb; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_wlast = deq_io_deq_bits_last; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_bready = auto_in_d_ready & ~r_wins; // @[ToAXI4.scala 218:33]
  assign auto_out_arvalid = queue_arw_valid & ~queue_arw_bits_wen; // @[ToAXI4.scala 155:39]
  assign auto_out_arid = queue_arw_deq_io_deq_bits_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_araddr = queue_arw_deq_io_deq_bits_addr; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arlen = queue_arw_deq_io_deq_bits_len; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arsize = queue_arw_deq_io_deq_bits_size; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arburst = queue_arw_deq_io_deq_bits_burst; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arlock = queue_arw_deq_io_deq_bits_lock; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arcache = queue_arw_deq_io_deq_bits_cache; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arprot = queue_arw_deq_io_deq_bits_prot; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arqos = queue_arw_deq_io_deq_bits_qos; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arecho_tl_state_size = queue_arw_deq_io_deq_bits_echo_tl_state_size; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arecho_tl_state_source = queue_arw_deq_io_deq_bits_echo_tl_state_source; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_rready = auto_in_d_ready & r_wins; // @[ToAXI4.scala 217:33]
  assign deq_clock = clock;
  assign deq_reset = reset;
  assign deq_io_enq_valid = _out_arw_valid_T_1 & a_isPut & out_arw_ready; // @[ToAXI4.scala 199:54]
  assign deq_io_enq_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_io_enq_bits_strb = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_io_deq_ready = auto_out_wready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign queue_arw_deq_clock = clock;
  assign queue_arw_deq_reset = reset;
  assign queue_arw_deq_io_enq_valid = _bundleIn_0_a_ready_T & auto_in_a_valid & _out_arw_valid_T_4; // @[ToAXI4.scala 197:45]
  assign queue_arw_deq_io_enq_bits_id = 3'h4 == auto_in_a_bits_source ? 3'h4 : _GEN_5; // @[ToAXI4.scala 166:{17,17}]
  assign queue_arw_deq_io_enq_bits_addr = auto_in_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign queue_arw_deq_io_enq_bits_len = _out_arw_bits_len_T_3[10:3]; // @[ToAXI4.scala 168:84]
  assign queue_arw_deq_io_enq_bits_size = {{1'd0}, _out_arw_bits_size_T_1}; // @[ToAXI4.scala 147:25 169:17]
  assign queue_arw_deq_io_enq_bits_echo_tl_state_size = {{2'd0}, auto_in_a_bits_size}; // @[ToAXI4.scala 147:25 179:22]
  assign queue_arw_deq_io_enq_bits_echo_tl_state_source = auto_in_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign queue_arw_deq_io_enq_bits_wen = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 91:28]
  assign queue_arw_deq_io_deq_ready = queue_arw_bits_wen ? auto_out_awready : auto_out_arready; // @[ToAXI4.scala 157:29]
  always @(posedge clock) begin
    if (auto_out_bvalid & ~bundleOut_0_bready) begin // @[ToAXI4.scala 210:42]
      b_delay <= _bdelay_T_1; // @[ToAXI4.scala 211:17]
    end else begin
      b_delay <= 3'h0; // @[ToAXI4.scala 213:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ToAXI4.scala 260:37]
      count_5 <= 1'h0;
    end else begin
      count_5 <= _count_T_18 - dec_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ToAXI4.scala 260:37]
      count_4 <= 1'h0;
    end else begin
      count_4 <= _count_T_14 - dec_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ToAXI4.scala 260:37]
      count_3 <= 1'h0;
    end else begin
      count_3 <= _count_T_10 - dec_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ToAXI4.scala 260:37]
      count_2 <= 1'h0;
    end else begin
      count_2 <= _count_T_6 - dec_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ToAXI4.scala 260:37]
      count_1 <= 1'h0;
    end else begin
      count_1 <= _count_T_2 - dec;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Edges.scala 234:17]
      counter <= 1'h0; // @[Edges.scala 235:21]
    end else if (done) begin // @[Edges.scala 228:27]
      if (a_first) begin
        counter <= 1'h0;
      end else begin
        counter <= counter1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ToAXI4.scala 207:27]
      r_holds_d <= 1'h0; // @[ToAXI4.scala 207:39]
    end else if (_T_2) begin // @[ToAXI4.scala 206:30]
      r_holds_d <= ~auto_out_rlast;
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
  count_5 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  count_4 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  count_3 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  count_2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  count_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  counter = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  r_holds_d = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  b_delay = _RAND_7[2:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    count_5 = 1'h0;
  end
  if (reset) begin
    count_4 = 1'h0;
  end
  if (reset) begin
    count_3 = 1'h0;
  end
  if (reset) begin
    count_2 = 1'h0;
  end
  if (reset) begin
    count_1 = 1'h0;
  end
  if (reset) begin
    counter = 1'h0;
  end
  if (reset) begin
    r_holds_d = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

