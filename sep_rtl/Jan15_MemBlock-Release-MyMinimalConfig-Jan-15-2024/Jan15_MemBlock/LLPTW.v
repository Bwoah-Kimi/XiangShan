module LLPTW(
  input         clock,
  input         reset,
  input         io_sfence_valid,
  input         io_csr_satp_changed,
  output        io_in_ready,
  input         io_in_valid,
  input  [26:0] io_in_bits_req_info_vpn,
  input  [1:0]  io_in_bits_req_info_source,
  input  [35:0] io_in_bits_ppn,
  input         io_out_ready,
  output        io_out_valid,
  output [26:0] io_out_bits_req_info_vpn,
  output [1:0]  io_out_bits_req_info_source,
  output [2:0]  io_out_bits_id,
  output        io_out_bits_af,
  input         io_mem_req_ready,
  output        io_mem_req_valid,
  output [35:0] io_mem_req_bits_addr,
  output [2:0]  io_mem_req_bits_id,
  input         io_mem_resp_valid,
  input  [2:0]  io_mem_resp_bits_id,
  output [2:0]  io_mem_enq_ptr,
  output        io_mem_buffer_it_0,
  output        io_mem_buffer_it_1,
  output        io_mem_buffer_it_2,
  output        io_mem_buffer_it_3,
  output        io_mem_buffer_it_4,
  output        io_mem_buffer_it_5,
  output [26:0] io_mem_refill_vpn,
  output [1:0]  io_mem_refill_source,
  input         io_mem_req_mask_0,
  input         io_mem_req_mask_1,
  input         io_mem_req_mask_2,
  input         io_mem_req_mask_3,
  input         io_mem_req_mask_4,
  input         io_mem_req_mask_5,
  input         io_cache_ready,
  output        io_cache_valid,
  output [26:0] io_cache_bits_vpn,
  output [1:0]  io_cache_bits_source,
  output        io_pmp_req_valid,
  output [35:0] io_pmp_req_bits_addr,
  input         io_pmp_resp_ld,
  input         io_pmp_resp_mmio,
  output [5:0]  io_perf_0_value,
  output [5:0]  io_perf_1_value,
  output [5:0]  io_perf_2_value,
  output [5:0]  io_perf_3_value
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
  reg [63:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
`endif // RANDOMIZE_REG_INIT
  wire  mem_arb_clock; // @[PageTableWalker.scala 301:23]
  wire  mem_arb_io_in_0_valid; // @[PageTableWalker.scala 301:23]
  wire [26:0] mem_arb_io_in_0_bits_req_info_vpn; // @[PageTableWalker.scala 301:23]
  wire [23:0] mem_arb_io_in_0_bits_ppn; // @[PageTableWalker.scala 301:23]
  wire  mem_arb_io_in_1_valid; // @[PageTableWalker.scala 301:23]
  wire [26:0] mem_arb_io_in_1_bits_req_info_vpn; // @[PageTableWalker.scala 301:23]
  wire [23:0] mem_arb_io_in_1_bits_ppn; // @[PageTableWalker.scala 301:23]
  wire  mem_arb_io_in_2_valid; // @[PageTableWalker.scala 301:23]
  wire [26:0] mem_arb_io_in_2_bits_req_info_vpn; // @[PageTableWalker.scala 301:23]
  wire [23:0] mem_arb_io_in_2_bits_ppn; // @[PageTableWalker.scala 301:23]
  wire  mem_arb_io_in_3_valid; // @[PageTableWalker.scala 301:23]
  wire [26:0] mem_arb_io_in_3_bits_req_info_vpn; // @[PageTableWalker.scala 301:23]
  wire [23:0] mem_arb_io_in_3_bits_ppn; // @[PageTableWalker.scala 301:23]
  wire  mem_arb_io_in_4_valid; // @[PageTableWalker.scala 301:23]
  wire [26:0] mem_arb_io_in_4_bits_req_info_vpn; // @[PageTableWalker.scala 301:23]
  wire [23:0] mem_arb_io_in_4_bits_ppn; // @[PageTableWalker.scala 301:23]
  wire  mem_arb_io_in_5_valid; // @[PageTableWalker.scala 301:23]
  wire [26:0] mem_arb_io_in_5_bits_req_info_vpn; // @[PageTableWalker.scala 301:23]
  wire [23:0] mem_arb_io_in_5_bits_ppn; // @[PageTableWalker.scala 301:23]
  wire  mem_arb_io_out_ready; // @[PageTableWalker.scala 301:23]
  wire  mem_arb_io_out_valid; // @[PageTableWalker.scala 301:23]
  wire [26:0] mem_arb_io_out_bits_req_info_vpn; // @[PageTableWalker.scala 301:23]
  wire [23:0] mem_arb_io_out_bits_ppn; // @[PageTableWalker.scala 301:23]
  wire [2:0] mem_arb_io_chosen; // @[PageTableWalker.scala 301:23]
  wire  flush = io_sfence_valid | io_csr_satp_changed; // @[PageTableWalker.scala 286:31]
  reg [26:0] entries_0_req_info_vpn; // @[PageTableWalker.scala 287:20]
  reg [1:0] entries_0_req_info_source; // @[PageTableWalker.scala 287:20]
  reg [23:0] entries_0_ppn; // @[PageTableWalker.scala 287:20]
  reg [2:0] entries_0_wait_id; // @[PageTableWalker.scala 287:20]
  reg  entries_0_af; // @[PageTableWalker.scala 287:20]
  reg [26:0] entries_1_req_info_vpn; // @[PageTableWalker.scala 287:20]
  reg [1:0] entries_1_req_info_source; // @[PageTableWalker.scala 287:20]
  reg [23:0] entries_1_ppn; // @[PageTableWalker.scala 287:20]
  reg [2:0] entries_1_wait_id; // @[PageTableWalker.scala 287:20]
  reg  entries_1_af; // @[PageTableWalker.scala 287:20]
  reg [26:0] entries_2_req_info_vpn; // @[PageTableWalker.scala 287:20]
  reg [1:0] entries_2_req_info_source; // @[PageTableWalker.scala 287:20]
  reg [23:0] entries_2_ppn; // @[PageTableWalker.scala 287:20]
  reg [2:0] entries_2_wait_id; // @[PageTableWalker.scala 287:20]
  reg  entries_2_af; // @[PageTableWalker.scala 287:20]
  reg [26:0] entries_3_req_info_vpn; // @[PageTableWalker.scala 287:20]
  reg [1:0] entries_3_req_info_source; // @[PageTableWalker.scala 287:20]
  reg [23:0] entries_3_ppn; // @[PageTableWalker.scala 287:20]
  reg [2:0] entries_3_wait_id; // @[PageTableWalker.scala 287:20]
  reg  entries_3_af; // @[PageTableWalker.scala 287:20]
  reg [26:0] entries_4_req_info_vpn; // @[PageTableWalker.scala 287:20]
  reg [1:0] entries_4_req_info_source; // @[PageTableWalker.scala 287:20]
  reg [23:0] entries_4_ppn; // @[PageTableWalker.scala 287:20]
  reg [2:0] entries_4_wait_id; // @[PageTableWalker.scala 287:20]
  reg  entries_4_af; // @[PageTableWalker.scala 287:20]
  reg [26:0] entries_5_req_info_vpn; // @[PageTableWalker.scala 287:20]
  reg [1:0] entries_5_req_info_source; // @[PageTableWalker.scala 287:20]
  reg [23:0] entries_5_ppn; // @[PageTableWalker.scala 287:20]
  reg [2:0] entries_5_wait_id; // @[PageTableWalker.scala 287:20]
  reg  entries_5_af; // @[PageTableWalker.scala 287:20]
  reg [2:0] state_0; // @[PageTableWalker.scala 289:22]
  reg [2:0] state_1; // @[PageTableWalker.scala 289:22]
  reg [2:0] state_2; // @[PageTableWalker.scala 289:22]
  reg [2:0] state_3; // @[PageTableWalker.scala 289:22]
  reg [2:0] state_4; // @[PageTableWalker.scala 289:22]
  reg [2:0] state_5; // @[PageTableWalker.scala 289:22]
  wire  is_emptys_0 = state_0 == 3'h0; // @[PageTableWalker.scala 291:31]
  wire  is_emptys_1 = state_1 == 3'h0; // @[PageTableWalker.scala 291:31]
  wire  is_emptys_2 = state_2 == 3'h0; // @[PageTableWalker.scala 291:31]
  wire  is_emptys_3 = state_3 == 3'h0; // @[PageTableWalker.scala 291:31]
  wire  is_emptys_4 = state_4 == 3'h0; // @[PageTableWalker.scala 291:31]
  wire  is_emptys_5 = state_5 == 3'h0; // @[PageTableWalker.scala 291:31]
  wire  is_mems_0 = state_0 == 3'h2; // @[PageTableWalker.scala 292:29]
  wire  is_mems_1 = state_1 == 3'h2; // @[PageTableWalker.scala 292:29]
  wire  is_mems_2 = state_2 == 3'h2; // @[PageTableWalker.scala 292:29]
  wire  is_mems_3 = state_3 == 3'h2; // @[PageTableWalker.scala 292:29]
  wire  is_mems_4 = state_4 == 3'h2; // @[PageTableWalker.scala 292:29]
  wire  is_mems_5 = state_5 == 3'h2; // @[PageTableWalker.scala 292:29]
  wire  is_waiting_0 = state_0 == 3'h3; // @[PageTableWalker.scala 293:32]
  wire  is_waiting_1 = state_1 == 3'h3; // @[PageTableWalker.scala 293:32]
  wire  is_waiting_2 = state_2 == 3'h3; // @[PageTableWalker.scala 293:32]
  wire  is_waiting_3 = state_3 == 3'h3; // @[PageTableWalker.scala 293:32]
  wire  is_waiting_4 = state_4 == 3'h3; // @[PageTableWalker.scala 293:32]
  wire  is_waiting_5 = state_5 == 3'h3; // @[PageTableWalker.scala 293:32]
  wire  is_having_0 = state_0 == 3'h4; // @[PageTableWalker.scala 294:31]
  wire  is_having_1 = state_1 == 3'h4; // @[PageTableWalker.scala 294:31]
  wire  is_having_2 = state_2 == 3'h4; // @[PageTableWalker.scala 294:31]
  wire  is_having_3 = state_3 == 3'h4; // @[PageTableWalker.scala 294:31]
  wire  is_having_4 = state_4 == 3'h4; // @[PageTableWalker.scala 294:31]
  wire  is_having_5 = state_5 == 3'h4; // @[PageTableWalker.scala 294:31]
  wire  is_cache_0 = state_0 == 3'h5; // @[PageTableWalker.scala 295:30]
  wire  is_cache_1 = state_1 == 3'h5; // @[PageTableWalker.scala 295:30]
  wire  is_cache_2 = state_2 == 3'h5; // @[PageTableWalker.scala 295:30]
  wire  is_cache_3 = state_3 == 3'h5; // @[PageTableWalker.scala 295:30]
  wire  is_cache_4 = state_4 == 3'h5; // @[PageTableWalker.scala 295:30]
  wire  is_cache_5 = state_5 == 3'h5; // @[PageTableWalker.scala 295:30]
  wire  _full_T_1 = is_emptys_0 | (is_emptys_1 | is_emptys_2); // @[ParallelMux.scala 36:53]
  wire  _full_T_4 = is_emptys_0 | (is_emptys_1 | is_emptys_2) | (is_emptys_3 | (is_emptys_4 | is_emptys_5)); // @[ParallelMux.scala 36:53]
  wire  full = ~_full_T_4; // @[PageTableWalker.scala 297:14]
  wire [1:0] _enq_ptr_T_1 = is_emptys_1 ? 2'h1 : 2'h2; // @[ParallelMux.scala 90:77]
  wire [1:0] _enq_ptr_T_3 = is_emptys_0 ? 2'h0 : _enq_ptr_T_1; // @[ParallelMux.scala 90:77]
  wire [2:0] _enq_ptr_T_5 = is_emptys_4 ? 3'h4 : 3'h5; // @[ParallelMux.scala 90:77]
  wire [2:0] _enq_ptr_T_7 = is_emptys_3 ? 3'h3 : _enq_ptr_T_5; // @[ParallelMux.scala 90:77]
  wire [2:0] enq_ptr = _full_T_1 ? {{1'd0}, _enq_ptr_T_3} : _enq_ptr_T_7; // @[ParallelMux.scala 90:77]
  wire [1:0] _mem_ptr_T_1 = is_having_1 ? 2'h1 : 2'h2; // @[ParallelMux.scala 90:77]
  wire  _mem_ptr_T_2 = is_having_0 | (is_having_1 | is_having_2); // @[ParallelMux.scala 90:65]
  wire [1:0] _mem_ptr_T_3 = is_having_0 ? 2'h0 : _mem_ptr_T_1; // @[ParallelMux.scala 90:77]
  wire [2:0] _mem_ptr_T_5 = is_having_4 ? 3'h4 : 3'h5; // @[ParallelMux.scala 90:77]
  wire  _mem_ptr_T_6 = is_having_3 | (is_having_4 | is_having_5); // @[ParallelMux.scala 90:65]
  wire [2:0] _mem_ptr_T_7 = is_having_3 ? 3'h3 : _mem_ptr_T_5; // @[ParallelMux.scala 90:77]
  wire [2:0] mem_ptr = is_having_0 | (is_having_1 | is_having_2) ? {{1'd0}, _mem_ptr_T_3} : _mem_ptr_T_7; // @[ParallelMux.scala 90:77]
  wire [2:0] cache_ptr_xs_1 = is_cache_1 ? 3'h1 : 3'h0; // @[ParallelMux.scala 64:44]
  wire [2:0] cache_ptr_xs_2 = is_cache_2 ? 3'h2 : 3'h0; // @[ParallelMux.scala 64:44]
  wire [2:0] cache_ptr_xs_3 = is_cache_3 ? 3'h3 : 3'h0; // @[ParallelMux.scala 64:44]
  wire [2:0] cache_ptr_xs_4 = is_cache_4 ? 3'h4 : 3'h0; // @[ParallelMux.scala 64:44]
  wire [2:0] cache_ptr_xs_5 = is_cache_5 ? 3'h5 : 3'h0; // @[ParallelMux.scala 64:44]
  wire [2:0] _cache_ptr_T = cache_ptr_xs_1 | cache_ptr_xs_2; // @[ParallelMux.scala 36:53]
  wire [2:0] _cache_ptr_T_2 = cache_ptr_xs_4 | cache_ptr_xs_5; // @[ParallelMux.scala 36:53]
  wire [2:0] _cache_ptr_T_3 = cache_ptr_xs_3 | _cache_ptr_T_2; // @[ParallelMux.scala 36:53]
  wire [2:0] cache_ptr = _cache_ptr_T | _cache_ptr_T_3; // @[ParallelMux.scala 36:53]
  wire  dup_vec_0 = io_in_bits_req_info_vpn[26:3] == entries_0_req_info_vpn[26:3]; // @[MMUConst.scala 269:28]
  wire  dup_vec_1 = io_in_bits_req_info_vpn[26:3] == entries_1_req_info_vpn[26:3]; // @[MMUConst.scala 269:28]
  wire  dup_vec_2 = io_in_bits_req_info_vpn[26:3] == entries_2_req_info_vpn[26:3]; // @[MMUConst.scala 269:28]
  wire  dup_vec_3 = io_in_bits_req_info_vpn[26:3] == entries_3_req_info_vpn[26:3]; // @[MMUConst.scala 269:28]
  wire  dup_vec_4 = io_in_bits_req_info_vpn[26:3] == entries_4_req_info_vpn[26:3]; // @[MMUConst.scala 269:28]
  wire  dup_vec_5 = io_in_bits_req_info_vpn[26:3] == entries_5_req_info_vpn[26:3]; // @[MMUConst.scala 269:28]
  wire  _dup_req_fire_T = mem_arb_io_out_ready & mem_arb_io_out_valid; // @[Decoupled.scala 50:35]
  wire  _dup_req_fire_T_3 = io_in_bits_req_info_vpn[26:3] == mem_arb_io_out_bits_req_info_vpn[26:3]; // @[MMUConst.scala 269:28]
  wire  dup_req_fire = _dup_req_fire_T & _dup_req_fire_T_3; // @[PageTableWalker.scala 315:44]
  wire  dup_vec_wait_0 = dup_vec_0 & is_waiting_0; // @[PageTableWalker.scala 316:67]
  wire  dup_vec_wait_1 = dup_vec_1 & is_waiting_1; // @[PageTableWalker.scala 316:67]
  wire  dup_vec_wait_2 = dup_vec_2 & is_waiting_2; // @[PageTableWalker.scala 316:67]
  wire  dup_vec_wait_3 = dup_vec_3 & is_waiting_3; // @[PageTableWalker.scala 316:67]
  wire  dup_vec_wait_4 = dup_vec_4 & is_waiting_4; // @[PageTableWalker.scala 316:67]
  wire  dup_vec_wait_5 = dup_vec_5 & is_waiting_5; // @[PageTableWalker.scala 316:67]
  wire  dup_vec_having_0 = dup_vec_0 & is_having_0; // @[PageTableWalker.scala 317:66]
  wire  dup_vec_having_1 = dup_vec_1 & is_having_1; // @[PageTableWalker.scala 317:66]
  wire  dup_vec_having_2 = dup_vec_2 & is_having_2; // @[PageTableWalker.scala 317:66]
  wire  dup_vec_having_3 = dup_vec_3 & is_having_3; // @[PageTableWalker.scala 317:66]
  wire  dup_vec_having_4 = dup_vec_4 & is_having_4; // @[PageTableWalker.scala 317:66]
  wire  dup_vec_having_5 = dup_vec_5 & is_having_5; // @[PageTableWalker.scala 317:66]
  wire [2:0] wait_id_xs_0 = dup_vec_wait_0 ? entries_0_wait_id : 3'h0; // @[ParallelMux.scala 64:44]
  wire [2:0] wait_id_xs_1 = dup_vec_wait_1 ? entries_1_wait_id : 3'h0; // @[ParallelMux.scala 64:44]
  wire [2:0] wait_id_xs_2 = dup_vec_wait_2 ? entries_2_wait_id : 3'h0; // @[ParallelMux.scala 64:44]
  wire [2:0] wait_id_xs_3 = dup_vec_wait_3 ? entries_3_wait_id : 3'h0; // @[ParallelMux.scala 64:44]
  wire [2:0] wait_id_xs_4 = dup_vec_wait_4 ? entries_4_wait_id : 3'h0; // @[ParallelMux.scala 64:44]
  wire [2:0] wait_id_xs_5 = dup_vec_wait_5 ? entries_5_wait_id : 3'h0; // @[ParallelMux.scala 64:44]
  wire [2:0] _wait_id_T = wait_id_xs_1 | wait_id_xs_2; // @[ParallelMux.scala 36:53]
  wire [2:0] _wait_id_T_1 = wait_id_xs_0 | _wait_id_T; // @[ParallelMux.scala 36:53]
  wire [2:0] _wait_id_T_2 = wait_id_xs_4 | wait_id_xs_5; // @[ParallelMux.scala 36:53]
  wire [2:0] _wait_id_T_3 = wait_id_xs_3 | _wait_id_T_2; // @[ParallelMux.scala 36:53]
  wire [2:0] _wait_id_T_4 = _wait_id_T_1 | _wait_id_T_3; // @[ParallelMux.scala 36:53]
  wire [2:0] wait_id = dup_req_fire ? mem_arb_io_chosen : _wait_id_T_4; // @[PageTableWalker.scala 318:20]
  wire  _GEN_1 = 3'h1 == io_mem_resp_bits_id ? dup_vec_wait_1 : dup_vec_wait_0; // @[PageTableWalker.scala 319:{42,42}]
  wire  _GEN_2 = 3'h2 == io_mem_resp_bits_id ? dup_vec_wait_2 : _GEN_1; // @[PageTableWalker.scala 319:{42,42}]
  wire  _GEN_3 = 3'h3 == io_mem_resp_bits_id ? dup_vec_wait_3 : _GEN_2; // @[PageTableWalker.scala 319:{42,42}]
  wire  _GEN_4 = 3'h4 == io_mem_resp_bits_id ? dup_vec_wait_4 : _GEN_3; // @[PageTableWalker.scala 319:{42,42}]
  wire  _GEN_5 = 3'h5 == io_mem_resp_bits_id ? dup_vec_wait_5 : _GEN_4; // @[PageTableWalker.scala 319:{42,42}]
  wire  dup_wait_resp = io_mem_resp_valid & _GEN_5; // @[PageTableWalker.scala 319:42]
  wire [5:0] _to_wait_T = {dup_vec_wait_0,dup_vec_wait_1,dup_vec_wait_2,dup_vec_wait_3,dup_vec_wait_4,dup_vec_wait_5}; // @[Cat.scala 31:58]
  wire  to_wait = |_to_wait_T | dup_req_fire; // @[PageTableWalker.scala 320:39]
  wire [5:0] _to_cache_T = {dup_vec_having_0,dup_vec_having_1,dup_vec_having_2,dup_vec_having_3,dup_vec_having_4,
    dup_vec_having_5}; // @[Cat.scala 31:58]
  wire  to_cache = |_to_cache_T; // @[PageTableWalker.scala 322:38]
  wire  _T_3 = io_in_ready & io_in_valid; // @[Decoupled.scala 50:35]
  reg  mem_resp_hit_0; // @[PageTableWalker.scala 326:29]
  reg  mem_resp_hit_1; // @[PageTableWalker.scala 326:29]
  reg  mem_resp_hit_2; // @[PageTableWalker.scala 326:29]
  reg  mem_resp_hit_3; // @[PageTableWalker.scala 326:29]
  reg  mem_resp_hit_4; // @[PageTableWalker.scala 326:29]
  reg  mem_resp_hit_5; // @[PageTableWalker.scala 326:29]
  wire [2:0] _enq_state_normal_T = to_cache ? 3'h5 : 3'h1; // @[PageTableWalker.scala 329:8]
  wire [2:0] _enq_state_normal_T_1 = to_wait ? 3'h3 : _enq_state_normal_T; // @[PageTableWalker.scala 328:8]
  wire [2:0] enq_state_normal = dup_wait_resp ? 3'h4 : _enq_state_normal_T_1; // @[PageTableWalker.scala 327:29]
  wire  _enq_state_T = io_in_bits_req_info_source == 2'h2; // @[MMUConst.scala 259:13]
  wire [2:0] enq_state = _enq_state_T & enq_state_normal != 3'h1 ? 3'h0 : enq_state_normal; // @[PageTableWalker.scala 330:22]
  wire [2:0] _GEN_6 = 3'h0 == enq_ptr ? enq_state : state_0; // @[PageTableWalker.scala 335:{20,20} 289:22]
  wire [2:0] _GEN_7 = 3'h1 == enq_ptr ? enq_state : state_1; // @[PageTableWalker.scala 335:{20,20} 289:22]
  wire [2:0] _GEN_8 = 3'h2 == enq_ptr ? enq_state : state_2; // @[PageTableWalker.scala 335:{20,20} 289:22]
  wire [2:0] _GEN_9 = 3'h3 == enq_ptr ? enq_state : state_3; // @[PageTableWalker.scala 335:{20,20} 289:22]
  wire [2:0] _GEN_10 = 3'h4 == enq_ptr ? enq_state : state_4; // @[PageTableWalker.scala 335:{20,20} 289:22]
  wire [2:0] _GEN_11 = 3'h5 == enq_ptr ? enq_state : state_5; // @[PageTableWalker.scala 335:{20,20} 289:22]
  wire [2:0] _entries_wait_id_T = to_wait ? wait_id : enq_ptr; // @[PageTableWalker.scala 338:36]
  wire [2:0] _GEN_30 = 3'h0 == enq_ptr ? _entries_wait_id_T : entries_0_wait_id; // @[PageTableWalker.scala 287:20 338:{30,30}]
  wire [2:0] _GEN_31 = 3'h1 == enq_ptr ? _entries_wait_id_T : entries_1_wait_id; // @[PageTableWalker.scala 287:20 338:{30,30}]
  wire [2:0] _GEN_32 = 3'h2 == enq_ptr ? _entries_wait_id_T : entries_2_wait_id; // @[PageTableWalker.scala 287:20 338:{30,30}]
  wire [2:0] _GEN_33 = 3'h3 == enq_ptr ? _entries_wait_id_T : entries_3_wait_id; // @[PageTableWalker.scala 287:20 338:{30,30}]
  wire [2:0] _GEN_34 = 3'h4 == enq_ptr ? _entries_wait_id_T : entries_4_wait_id; // @[PageTableWalker.scala 287:20 338:{30,30}]
  wire [2:0] _GEN_35 = 3'h5 == enq_ptr ? _entries_wait_id_T : entries_5_wait_id; // @[PageTableWalker.scala 287:20 338:{30,30}]
  wire  _GEN_36 = 3'h0 == enq_ptr ? 1'h0 : entries_0_af; // @[PageTableWalker.scala 287:20 339:{25,25}]
  wire  _GEN_37 = 3'h1 == enq_ptr ? 1'h0 : entries_1_af; // @[PageTableWalker.scala 287:20 339:{25,25}]
  wire  _GEN_38 = 3'h2 == enq_ptr ? 1'h0 : entries_2_af; // @[PageTableWalker.scala 287:20 339:{25,25}]
  wire  _GEN_39 = 3'h3 == enq_ptr ? 1'h0 : entries_3_af; // @[PageTableWalker.scala 287:20 339:{25,25}]
  wire  _GEN_40 = 3'h4 == enq_ptr ? 1'h0 : entries_4_af; // @[PageTableWalker.scala 287:20 339:{25,25}]
  wire  _GEN_41 = 3'h5 == enq_ptr ? 1'h0 : entries_5_af; // @[PageTableWalker.scala 287:20 339:{25,25}]
  wire  _GEN_42 = 3'h0 == enq_ptr ? dup_wait_resp : mem_resp_hit_0; // @[PageTableWalker.scala 340:{27,27} 326:29]
  wire  _GEN_43 = 3'h1 == enq_ptr ? dup_wait_resp : mem_resp_hit_1; // @[PageTableWalker.scala 340:{27,27} 326:29]
  wire  _GEN_44 = 3'h2 == enq_ptr ? dup_wait_resp : mem_resp_hit_2; // @[PageTableWalker.scala 340:{27,27} 326:29]
  wire  _GEN_45 = 3'h3 == enq_ptr ? dup_wait_resp : mem_resp_hit_3; // @[PageTableWalker.scala 340:{27,27} 326:29]
  wire  _GEN_46 = 3'h4 == enq_ptr ? dup_wait_resp : mem_resp_hit_4; // @[PageTableWalker.scala 340:{27,27} 326:29]
  wire  _GEN_47 = 3'h5 == enq_ptr ? dup_wait_resp : mem_resp_hit_5; // @[PageTableWalker.scala 340:{27,27} 326:29]
  wire [2:0] _GEN_48 = _T_3 ? _GEN_6 : state_0; // @[PageTableWalker.scala 289:22 331:23]
  wire [2:0] _GEN_49 = _T_3 ? _GEN_7 : state_1; // @[PageTableWalker.scala 289:22 331:23]
  wire [2:0] _GEN_50 = _T_3 ? _GEN_8 : state_2; // @[PageTableWalker.scala 289:22 331:23]
  wire [2:0] _GEN_51 = _T_3 ? _GEN_9 : state_3; // @[PageTableWalker.scala 289:22 331:23]
  wire [2:0] _GEN_52 = _T_3 ? _GEN_10 : state_4; // @[PageTableWalker.scala 289:22 331:23]
  wire [2:0] _GEN_53 = _T_3 ? _GEN_11 : state_5; // @[PageTableWalker.scala 289:22 331:23]
  wire [2:0] _GEN_72 = _T_3 ? _GEN_30 : entries_0_wait_id; // @[PageTableWalker.scala 287:20 331:23]
  wire [2:0] _GEN_73 = _T_3 ? _GEN_31 : entries_1_wait_id; // @[PageTableWalker.scala 287:20 331:23]
  wire [2:0] _GEN_74 = _T_3 ? _GEN_32 : entries_2_wait_id; // @[PageTableWalker.scala 287:20 331:23]
  wire [2:0] _GEN_75 = _T_3 ? _GEN_33 : entries_3_wait_id; // @[PageTableWalker.scala 287:20 331:23]
  wire [2:0] _GEN_76 = _T_3 ? _GEN_34 : entries_4_wait_id; // @[PageTableWalker.scala 287:20 331:23]
  wire [2:0] _GEN_77 = _T_3 ? _GEN_35 : entries_5_wait_id; // @[PageTableWalker.scala 287:20 331:23]
  wire  _GEN_78 = _T_3 ? _GEN_36 : entries_0_af; // @[PageTableWalker.scala 287:20 331:23]
  wire  _GEN_79 = _T_3 ? _GEN_37 : entries_1_af; // @[PageTableWalker.scala 287:20 331:23]
  wire  _GEN_80 = _T_3 ? _GEN_38 : entries_2_af; // @[PageTableWalker.scala 287:20 331:23]
  wire  _GEN_81 = _T_3 ? _GEN_39 : entries_3_af; // @[PageTableWalker.scala 287:20 331:23]
  wire  _GEN_82 = _T_3 ? _GEN_40 : entries_4_af; // @[PageTableWalker.scala 287:20 331:23]
  wire  _GEN_83 = _T_3 ? _GEN_41 : entries_5_af; // @[PageTableWalker.scala 287:20 331:23]
  wire  _GEN_84 = _T_3 ? _GEN_42 : mem_resp_hit_0; // @[PageTableWalker.scala 331:23 326:29]
  wire  _GEN_85 = _T_3 ? _GEN_43 : mem_resp_hit_1; // @[PageTableWalker.scala 331:23 326:29]
  wire  _GEN_86 = _T_3 ? _GEN_44 : mem_resp_hit_2; // @[PageTableWalker.scala 331:23 326:29]
  wire  _GEN_87 = _T_3 ? _GEN_45 : mem_resp_hit_3; // @[PageTableWalker.scala 331:23 326:29]
  wire  _GEN_88 = _T_3 ? _GEN_46 : mem_resp_hit_4; // @[PageTableWalker.scala 331:23 326:29]
  wire  _GEN_89 = _T_3 ? _GEN_47 : mem_resp_hit_5; // @[PageTableWalker.scala 331:23 326:29]
  reg [2:0] enq_ptr_reg; // @[PageTableWalker.scala 343:28]
  wire  _need_addr_check_T_3 = ~flush; // @[PageTableWalker.scala 344:83]
  reg  need_addr_check; // @[PageTableWalker.scala 344:32]
  wire [47:0] _io_pmp_req_bits_addr_T_1 = {io_in_bits_ppn,io_in_bits_req_info_vpn[8:0],3'h0}; // @[Cat.scala 31:58]
  reg [35:0] io_pmp_req_bits_addr_r; // @[Reg.scala 16:16]
  wire  accessFault = io_pmp_resp_ld | io_pmp_resp_mmio; // @[PageTableWalker.scala 355:38]
  wire [2:0] _state_T = accessFault ? 3'h4 : 3'h2; // @[PageTableWalker.scala 357:30]
  wire [2:0] _GEN_98 = 3'h0 == enq_ptr_reg ? _state_T : _GEN_48; // @[PageTableWalker.scala 357:{24,24}]
  wire [2:0] _GEN_99 = 3'h1 == enq_ptr_reg ? _state_T : _GEN_49; // @[PageTableWalker.scala 357:{24,24}]
  wire [2:0] _GEN_100 = 3'h2 == enq_ptr_reg ? _state_T : _GEN_50; // @[PageTableWalker.scala 357:{24,24}]
  wire [2:0] _GEN_101 = 3'h3 == enq_ptr_reg ? _state_T : _GEN_51; // @[PageTableWalker.scala 357:{24,24}]
  wire [2:0] _GEN_102 = 3'h4 == enq_ptr_reg ? _state_T : _GEN_52; // @[PageTableWalker.scala 357:{24,24}]
  wire [2:0] _GEN_103 = 3'h5 == enq_ptr_reg ? _state_T : _GEN_53; // @[PageTableWalker.scala 357:{24,24}]
  wire [2:0] _GEN_110 = io_pmp_req_valid ? _GEN_98 : _GEN_48; // @[PageTableWalker.scala 352:25]
  wire [2:0] _GEN_111 = io_pmp_req_valid ? _GEN_99 : _GEN_49; // @[PageTableWalker.scala 352:25]
  wire [2:0] _GEN_112 = io_pmp_req_valid ? _GEN_100 : _GEN_50; // @[PageTableWalker.scala 352:25]
  wire [2:0] _GEN_113 = io_pmp_req_valid ? _GEN_101 : _GEN_51; // @[PageTableWalker.scala 352:25]
  wire [2:0] _GEN_114 = io_pmp_req_valid ? _GEN_102 : _GEN_52; // @[PageTableWalker.scala 352:25]
  wire [2:0] _GEN_115 = io_pmp_req_valid ? _GEN_103 : _GEN_53; // @[PageTableWalker.scala 352:25]
  wire  _T_17 = entries_0_req_info_vpn[26:3] == mem_arb_io_out_bits_req_info_vpn[26:3]; // @[MMUConst.scala 269:28]
  wire [2:0] _GEN_116 = state_0 != 3'h0 & _T_17 ? 3'h3 : _GEN_110; // @[PageTableWalker.scala 362:104 364:18]
  wire  _T_22 = entries_1_req_info_vpn[26:3] == mem_arb_io_out_bits_req_info_vpn[26:3]; // @[MMUConst.scala 269:28]
  wire [2:0] _GEN_118 = state_1 != 3'h0 & _T_22 ? 3'h3 : _GEN_111; // @[PageTableWalker.scala 362:104 364:18]
  wire  _T_27 = entries_2_req_info_vpn[26:3] == mem_arb_io_out_bits_req_info_vpn[26:3]; // @[MMUConst.scala 269:28]
  wire [2:0] _GEN_120 = state_2 != 3'h0 & _T_27 ? 3'h3 : _GEN_112; // @[PageTableWalker.scala 362:104 364:18]
  wire  _T_32 = entries_3_req_info_vpn[26:3] == mem_arb_io_out_bits_req_info_vpn[26:3]; // @[MMUConst.scala 269:28]
  wire [2:0] _GEN_122 = state_3 != 3'h0 & _T_32 ? 3'h3 : _GEN_113; // @[PageTableWalker.scala 362:104 364:18]
  wire  _T_37 = entries_4_req_info_vpn[26:3] == mem_arb_io_out_bits_req_info_vpn[26:3]; // @[MMUConst.scala 269:28]
  wire [2:0] _GEN_124 = state_4 != 3'h0 & _T_37 ? 3'h3 : _GEN_114; // @[PageTableWalker.scala 362:104 364:18]
  wire  _T_42 = entries_5_req_info_vpn[26:3] == mem_arb_io_out_bits_req_info_vpn[26:3]; // @[MMUConst.scala 269:28]
  wire [2:0] _GEN_126 = state_5 != 3'h0 & _T_42 ? 3'h3 : _GEN_115; // @[PageTableWalker.scala 362:104 364:18]
  wire [2:0] _GEN_128 = _dup_req_fire_T ? _GEN_116 : _GEN_110; // @[PageTableWalker.scala 360:32]
  wire [2:0] _GEN_130 = _dup_req_fire_T ? _GEN_118 : _GEN_111; // @[PageTableWalker.scala 360:32]
  wire [2:0] _GEN_132 = _dup_req_fire_T ? _GEN_120 : _GEN_112; // @[PageTableWalker.scala 360:32]
  wire [2:0] _GEN_134 = _dup_req_fire_T ? _GEN_122 : _GEN_113; // @[PageTableWalker.scala 360:32]
  wire [2:0] _GEN_136 = _dup_req_fire_T ? _GEN_124 : _GEN_114; // @[PageTableWalker.scala 360:32]
  wire [2:0] _GEN_138 = _dup_req_fire_T ? _GEN_126 : _GEN_115; // @[PageTableWalker.scala 360:32]
  wire [2:0] _GEN_140 = is_waiting_0 & io_mem_resp_bits_id == entries_0_wait_id ? 3'h4 : _GEN_128; // @[PageTableWalker.scala 371:91 372:18]
  wire  _GEN_141 = is_waiting_0 & io_mem_resp_bits_id == entries_0_wait_id | _GEN_84; // @[PageTableWalker.scala 371:91 373:25]
  wire [2:0] _GEN_142 = is_waiting_1 & io_mem_resp_bits_id == entries_1_wait_id ? 3'h4 : _GEN_130; // @[PageTableWalker.scala 371:91 372:18]
  wire  _GEN_143 = is_waiting_1 & io_mem_resp_bits_id == entries_1_wait_id | _GEN_85; // @[PageTableWalker.scala 371:91 373:25]
  wire [2:0] _GEN_144 = is_waiting_2 & io_mem_resp_bits_id == entries_2_wait_id ? 3'h4 : _GEN_132; // @[PageTableWalker.scala 371:91 372:18]
  wire  _GEN_145 = is_waiting_2 & io_mem_resp_bits_id == entries_2_wait_id | _GEN_86; // @[PageTableWalker.scala 371:91 373:25]
  wire [2:0] _GEN_146 = is_waiting_3 & io_mem_resp_bits_id == entries_3_wait_id ? 3'h4 : _GEN_134; // @[PageTableWalker.scala 371:91 372:18]
  wire  _GEN_147 = is_waiting_3 & io_mem_resp_bits_id == entries_3_wait_id | _GEN_87; // @[PageTableWalker.scala 371:91 373:25]
  wire [2:0] _GEN_148 = is_waiting_4 & io_mem_resp_bits_id == entries_4_wait_id ? 3'h4 : _GEN_136; // @[PageTableWalker.scala 371:91 372:18]
  wire  _GEN_149 = is_waiting_4 & io_mem_resp_bits_id == entries_4_wait_id | _GEN_88; // @[PageTableWalker.scala 371:91 373:25]
  wire [2:0] _GEN_150 = is_waiting_5 & io_mem_resp_bits_id == entries_5_wait_id ? 3'h4 : _GEN_138; // @[PageTableWalker.scala 371:91 372:18]
  wire  _GEN_151 = is_waiting_5 & io_mem_resp_bits_id == entries_5_wait_id | _GEN_89; // @[PageTableWalker.scala 371:91 373:25]
  wire [2:0] _GEN_152 = io_mem_resp_valid ? _GEN_140 : _GEN_128; // @[PageTableWalker.scala 369:29]
  wire [2:0] _GEN_154 = io_mem_resp_valid ? _GEN_142 : _GEN_130; // @[PageTableWalker.scala 369:29]
  wire [2:0] _GEN_156 = io_mem_resp_valid ? _GEN_144 : _GEN_132; // @[PageTableWalker.scala 369:29]
  wire [2:0] _GEN_158 = io_mem_resp_valid ? _GEN_146 : _GEN_134; // @[PageTableWalker.scala 369:29]
  wire [2:0] _GEN_160 = io_mem_resp_valid ? _GEN_148 : _GEN_136; // @[PageTableWalker.scala 369:29]
  wire [2:0] _GEN_162 = io_mem_resp_valid ? _GEN_150 : _GEN_138; // @[PageTableWalker.scala 369:29]
  wire  _T_62 = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire [2:0] _GEN_170 = 3'h0 == mem_ptr ? 3'h0 : _GEN_152; // @[PageTableWalker.scala 379:{20,20}]
  wire [2:0] _GEN_171 = 3'h1 == mem_ptr ? 3'h0 : _GEN_154; // @[PageTableWalker.scala 379:{20,20}]
  wire [2:0] _GEN_172 = 3'h2 == mem_ptr ? 3'h0 : _GEN_156; // @[PageTableWalker.scala 379:{20,20}]
  wire [2:0] _GEN_173 = 3'h3 == mem_ptr ? 3'h0 : _GEN_158; // @[PageTableWalker.scala 379:{20,20}]
  wire [2:0] _GEN_174 = 3'h4 == mem_ptr ? 3'h0 : _GEN_160; // @[PageTableWalker.scala 379:{20,20}]
  wire [2:0] _GEN_175 = 3'h5 == mem_ptr ? 3'h0 : _GEN_162; // @[PageTableWalker.scala 379:{20,20}]
  wire [2:0] _GEN_176 = _T_62 ? _GEN_170 : _GEN_152; // @[PageTableWalker.scala 377:24]
  wire [2:0] _GEN_177 = _T_62 ? _GEN_171 : _GEN_154; // @[PageTableWalker.scala 377:24]
  wire [2:0] _GEN_178 = _T_62 ? _GEN_172 : _GEN_156; // @[PageTableWalker.scala 377:24]
  wire [2:0] _GEN_179 = _T_62 ? _GEN_173 : _GEN_158; // @[PageTableWalker.scala 377:24]
  wire [2:0] _GEN_180 = _T_62 ? _GEN_174 : _GEN_160; // @[PageTableWalker.scala 377:24]
  wire [2:0] _GEN_181 = _T_62 ? _GEN_175 : _GEN_162; // @[PageTableWalker.scala 377:24]
  wire  _T_67 = io_cache_ready & io_cache_valid; // @[Decoupled.scala 50:35]
  wire [26:0] _GEN_207 = 3'h1 == mem_ptr ? entries_1_req_info_vpn : entries_0_req_info_vpn; // @[PageTableWalker.scala 395:{24,24}]
  wire [26:0] _GEN_208 = 3'h2 == mem_ptr ? entries_2_req_info_vpn : _GEN_207; // @[PageTableWalker.scala 395:{24,24}]
  wire [26:0] _GEN_209 = 3'h3 == mem_ptr ? entries_3_req_info_vpn : _GEN_208; // @[PageTableWalker.scala 395:{24,24}]
  wire [26:0] _GEN_210 = 3'h4 == mem_ptr ? entries_4_req_info_vpn : _GEN_209; // @[PageTableWalker.scala 395:{24,24}]
  wire [1:0] _GEN_213 = 3'h1 == mem_ptr ? entries_1_req_info_source : entries_0_req_info_source; // @[PageTableWalker.scala 395:{24,24}]
  wire [1:0] _GEN_214 = 3'h2 == mem_ptr ? entries_2_req_info_source : _GEN_213; // @[PageTableWalker.scala 395:{24,24}]
  wire [1:0] _GEN_215 = 3'h3 == mem_ptr ? entries_3_req_info_source : _GEN_214; // @[PageTableWalker.scala 395:{24,24}]
  wire [1:0] _GEN_216 = 3'h4 == mem_ptr ? entries_4_req_info_source : _GEN_215; // @[PageTableWalker.scala 395:{24,24}]
  wire  _GEN_219 = 3'h1 == mem_ptr ? entries_1_af : entries_0_af; // @[PageTableWalker.scala 397:{18,18}]
  wire  _GEN_220 = 3'h2 == mem_ptr ? entries_2_af : _GEN_219; // @[PageTableWalker.scala 397:{18,18}]
  wire  _GEN_221 = 3'h3 == mem_ptr ? entries_3_af : _GEN_220; // @[PageTableWalker.scala 397:{18,18}]
  wire  _GEN_222 = 3'h4 == mem_ptr ? entries_4_af : _GEN_221; // @[PageTableWalker.scala 397:{18,18}]
  wire [32:0] io_mem_req_bits_addr_hi = {mem_arb_io_out_bits_ppn,mem_arb_io_out_bits_req_info_vpn[8:0]}; // @[Cat.scala 31:58]
  reg [2:0] io_mem_refill_REG; // @[PageTableWalker.scala 403:35]
  wire [26:0] _GEN_225 = 3'h1 == io_mem_refill_REG ? entries_1_req_info_vpn : entries_0_req_info_vpn; // @[PageTableWalker.scala 403:{17,17}]
  wire [26:0] _GEN_226 = 3'h2 == io_mem_refill_REG ? entries_2_req_info_vpn : _GEN_225; // @[PageTableWalker.scala 403:{17,17}]
  wire [26:0] _GEN_227 = 3'h3 == io_mem_refill_REG ? entries_3_req_info_vpn : _GEN_226; // @[PageTableWalker.scala 403:{17,17}]
  wire [26:0] _GEN_228 = 3'h4 == io_mem_refill_REG ? entries_4_req_info_vpn : _GEN_227; // @[PageTableWalker.scala 403:{17,17}]
  wire [1:0] _GEN_231 = 3'h1 == io_mem_refill_REG ? entries_1_req_info_source : entries_0_req_info_source; // @[PageTableWalker.scala 403:{17,17}]
  wire [1:0] _GEN_232 = 3'h2 == io_mem_refill_REG ? entries_2_req_info_source : _GEN_231; // @[PageTableWalker.scala 403:{17,17}]
  wire [1:0] _GEN_233 = 3'h3 == io_mem_refill_REG ? entries_3_req_info_source : _GEN_232; // @[PageTableWalker.scala 403:{17,17}]
  wire [1:0] _GEN_234 = 3'h4 == io_mem_refill_REG ? entries_4_req_info_source : _GEN_233; // @[PageTableWalker.scala 403:{17,17}]
  wire [5:0] _io_cache_valid_T = {is_cache_0,is_cache_1,is_cache_2,is_cache_3,is_cache_4,is_cache_5}; // @[Cat.scala 31:58]
  wire [26:0] io_cache_bits_xs_0_vpn = is_cache_0 ? entries_0_req_info_vpn : 27'h0; // @[ParallelMux.scala 64:44]
  wire [1:0] io_cache_bits_xs_0_source = is_cache_0 ? entries_0_req_info_source : 2'h0; // @[ParallelMux.scala 64:44]
  wire [26:0] io_cache_bits_xs_1_vpn = is_cache_1 ? entries_1_req_info_vpn : 27'h0; // @[ParallelMux.scala 64:44]
  wire [1:0] io_cache_bits_xs_1_source = is_cache_1 ? entries_1_req_info_source : 2'h0; // @[ParallelMux.scala 64:44]
  wire [26:0] io_cache_bits_xs_2_vpn = is_cache_2 ? entries_2_req_info_vpn : 27'h0; // @[ParallelMux.scala 64:44]
  wire [1:0] io_cache_bits_xs_2_source = is_cache_2 ? entries_2_req_info_source : 2'h0; // @[ParallelMux.scala 64:44]
  wire [26:0] io_cache_bits_xs_3_vpn = is_cache_3 ? entries_3_req_info_vpn : 27'h0; // @[ParallelMux.scala 64:44]
  wire [1:0] io_cache_bits_xs_3_source = is_cache_3 ? entries_3_req_info_source : 2'h0; // @[ParallelMux.scala 64:44]
  wire [26:0] io_cache_bits_xs_4_vpn = is_cache_4 ? entries_4_req_info_vpn : 27'h0; // @[ParallelMux.scala 64:44]
  wire [1:0] io_cache_bits_xs_4_source = is_cache_4 ? entries_4_req_info_source : 2'h0; // @[ParallelMux.scala 64:44]
  wire [26:0] io_cache_bits_xs_5_vpn = is_cache_5 ? entries_5_req_info_vpn : 27'h0; // @[ParallelMux.scala 64:44]
  wire [1:0] io_cache_bits_xs_5_source = is_cache_5 ? entries_5_req_info_source : 2'h0; // @[ParallelMux.scala 64:44]
  wire [28:0] _io_cache_bits_T = {io_cache_bits_xs_1_vpn,io_cache_bits_xs_1_source}; // @[ParallelMux.scala 36:46]
  wire [28:0] _io_cache_bits_T_1 = {io_cache_bits_xs_2_vpn,io_cache_bits_xs_2_source}; // @[ParallelMux.scala 36:57]
  wire [28:0] _io_cache_bits_T_2 = _io_cache_bits_T | _io_cache_bits_T_1; // @[ParallelMux.scala 36:53]
  wire [28:0] _io_cache_bits_T_5 = {io_cache_bits_xs_0_vpn,io_cache_bits_xs_0_source}; // @[ParallelMux.scala 36:46]
  wire [28:0] _io_cache_bits_T_6 = {_io_cache_bits_T_2[28:2],_io_cache_bits_T_2[1:0]}; // @[ParallelMux.scala 36:57]
  wire [28:0] _io_cache_bits_T_7 = _io_cache_bits_T_5 | _io_cache_bits_T_6; // @[ParallelMux.scala 36:53]
  wire [28:0] _io_cache_bits_T_10 = {io_cache_bits_xs_4_vpn,io_cache_bits_xs_4_source}; // @[ParallelMux.scala 36:46]
  wire [28:0] _io_cache_bits_T_11 = {io_cache_bits_xs_5_vpn,io_cache_bits_xs_5_source}; // @[ParallelMux.scala 36:57]
  wire [28:0] _io_cache_bits_T_12 = _io_cache_bits_T_10 | _io_cache_bits_T_11; // @[ParallelMux.scala 36:53]
  wire [28:0] _io_cache_bits_T_15 = {io_cache_bits_xs_3_vpn,io_cache_bits_xs_3_source}; // @[ParallelMux.scala 36:46]
  wire [28:0] _io_cache_bits_T_16 = {_io_cache_bits_T_12[28:2],_io_cache_bits_T_12[1:0]}; // @[ParallelMux.scala 36:57]
  wire [28:0] _io_cache_bits_T_17 = _io_cache_bits_T_15 | _io_cache_bits_T_16; // @[ParallelMux.scala 36:53]
  wire [28:0] _io_cache_bits_T_20 = {_io_cache_bits_T_7[28:2],_io_cache_bits_T_7[1:0]}; // @[ParallelMux.scala 36:46]
  wire [28:0] _io_cache_bits_T_21 = {_io_cache_bits_T_17[28:2],_io_cache_bits_T_17[1:0]}; // @[ParallelMux.scala 36:57]
  wire [28:0] _io_cache_bits_T_22 = _io_cache_bits_T_20 | _io_cache_bits_T_21; // @[ParallelMux.scala 36:53]
  wire  _T_74 = ~io_in_ready; // @[PageTableWalker.scala 411:53]
  wire [1:0] _T_125 = is_waiting_1 + is_waiting_2; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_246 = {{1'd0}, is_waiting_0}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_127 = _GEN_246 + _T_125; // @[Bitwise.scala 48:55]
  wire [1:0] _T_129 = is_waiting_4 + is_waiting_5; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_247 = {{1'd0}, is_waiting_3}; // @[Bitwise.scala 48:55]
  wire [2:0] _T_131 = _GEN_247 + _T_129; // @[Bitwise.scala 48:55]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [2:0] io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [2:0] io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  RRArbiter mem_arb ( // @[PageTableWalker.scala 301:23]
    .clock(mem_arb_clock),
    .io_in_0_valid(mem_arb_io_in_0_valid),
    .io_in_0_bits_req_info_vpn(mem_arb_io_in_0_bits_req_info_vpn),
    .io_in_0_bits_ppn(mem_arb_io_in_0_bits_ppn),
    .io_in_1_valid(mem_arb_io_in_1_valid),
    .io_in_1_bits_req_info_vpn(mem_arb_io_in_1_bits_req_info_vpn),
    .io_in_1_bits_ppn(mem_arb_io_in_1_bits_ppn),
    .io_in_2_valid(mem_arb_io_in_2_valid),
    .io_in_2_bits_req_info_vpn(mem_arb_io_in_2_bits_req_info_vpn),
    .io_in_2_bits_ppn(mem_arb_io_in_2_bits_ppn),
    .io_in_3_valid(mem_arb_io_in_3_valid),
    .io_in_3_bits_req_info_vpn(mem_arb_io_in_3_bits_req_info_vpn),
    .io_in_3_bits_ppn(mem_arb_io_in_3_bits_ppn),
    .io_in_4_valid(mem_arb_io_in_4_valid),
    .io_in_4_bits_req_info_vpn(mem_arb_io_in_4_bits_req_info_vpn),
    .io_in_4_bits_ppn(mem_arb_io_in_4_bits_ppn),
    .io_in_5_valid(mem_arb_io_in_5_valid),
    .io_in_5_bits_req_info_vpn(mem_arb_io_in_5_bits_req_info_vpn),
    .io_in_5_bits_ppn(mem_arb_io_in_5_bits_ppn),
    .io_out_ready(mem_arb_io_out_ready),
    .io_out_valid(mem_arb_io_out_valid),
    .io_out_bits_req_info_vpn(mem_arb_io_out_bits_req_info_vpn),
    .io_out_bits_ppn(mem_arb_io_out_bits_ppn),
    .io_chosen(mem_arb_io_chosen)
  );
  assign io_in_ready = ~full; // @[PageTableWalker.scala 392:18]
  assign io_out_valid = _mem_ptr_T_2 | _mem_ptr_T_6; // @[ParallelMux.scala 36:53]
  assign io_out_bits_req_info_vpn = 3'h5 == mem_ptr ? entries_5_req_info_vpn : _GEN_210; // @[PageTableWalker.scala 395:{24,24}]
  assign io_out_bits_req_info_source = 3'h5 == mem_ptr ? entries_5_req_info_source : _GEN_216; // @[PageTableWalker.scala 395:{24,24}]
  assign io_out_bits_id = is_having_0 | (is_having_1 | is_having_2) ? {{1'd0}, _mem_ptr_T_3} : _mem_ptr_T_7; // @[ParallelMux.scala 90:77]
  assign io_out_bits_af = 3'h5 == mem_ptr ? entries_5_af : _GEN_222; // @[PageTableWalker.scala 397:{18,18}]
  assign io_mem_req_valid = mem_arb_io_out_valid & _need_addr_check_T_3; // @[PageTableWalker.scala 399:44]
  assign io_mem_req_bits_addr = {io_mem_req_bits_addr_hi,3'h0}; // @[Cat.scala 31:58]
  assign io_mem_req_bits_id = mem_arb_io_chosen; // @[PageTableWalker.scala 401:22]
  assign io_mem_enq_ptr = _full_T_1 ? {{1'd0}, _enq_ptr_T_3} : _enq_ptr_T_7; // @[ParallelMux.scala 90:77]
  assign io_mem_buffer_it_0 = mem_resp_hit_0; // @[PageTableWalker.scala 404:20]
  assign io_mem_buffer_it_1 = mem_resp_hit_1; // @[PageTableWalker.scala 404:20]
  assign io_mem_buffer_it_2 = mem_resp_hit_2; // @[PageTableWalker.scala 404:20]
  assign io_mem_buffer_it_3 = mem_resp_hit_3; // @[PageTableWalker.scala 404:20]
  assign io_mem_buffer_it_4 = mem_resp_hit_4; // @[PageTableWalker.scala 404:20]
  assign io_mem_buffer_it_5 = mem_resp_hit_5; // @[PageTableWalker.scala 404:20]
  assign io_mem_refill_vpn = 3'h5 == io_mem_refill_REG ? entries_5_req_info_vpn : _GEN_228; // @[PageTableWalker.scala 403:{17,17}]
  assign io_mem_refill_source = 3'h5 == io_mem_refill_REG ? entries_5_req_info_source : _GEN_234; // @[PageTableWalker.scala 403:{17,17}]
  assign io_cache_valid = |_io_cache_valid_T; // @[PageTableWalker.scala 407:35]
  assign io_cache_bits_vpn = _io_cache_bits_T_22[28:2]; // @[ParallelMux.scala 36:73]
  assign io_cache_bits_source = _io_cache_bits_T_22[1:0]; // @[ParallelMux.scala 36:73]
  assign io_pmp_req_valid = need_addr_check; // @[PageTableWalker.scala 347:20]
  assign io_pmp_req_bits_addr = io_pmp_req_bits_addr_r; // @[PageTableWalker.scala 348:24]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = {{3'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign mem_arb_clock = clock;
  assign mem_arb_io_in_0_valid = is_mems_0 & ~io_mem_req_mask_0; // @[PageTableWalker.scala 304:42]
  assign mem_arb_io_in_0_bits_req_info_vpn = entries_0_req_info_vpn; // @[PageTableWalker.scala 303:27]
  assign mem_arb_io_in_0_bits_ppn = entries_0_ppn; // @[PageTableWalker.scala 303:27]
  assign mem_arb_io_in_1_valid = is_mems_1 & ~io_mem_req_mask_1; // @[PageTableWalker.scala 304:42]
  assign mem_arb_io_in_1_bits_req_info_vpn = entries_1_req_info_vpn; // @[PageTableWalker.scala 303:27]
  assign mem_arb_io_in_1_bits_ppn = entries_1_ppn; // @[PageTableWalker.scala 303:27]
  assign mem_arb_io_in_2_valid = is_mems_2 & ~io_mem_req_mask_2; // @[PageTableWalker.scala 304:42]
  assign mem_arb_io_in_2_bits_req_info_vpn = entries_2_req_info_vpn; // @[PageTableWalker.scala 303:27]
  assign mem_arb_io_in_2_bits_ppn = entries_2_ppn; // @[PageTableWalker.scala 303:27]
  assign mem_arb_io_in_3_valid = is_mems_3 & ~io_mem_req_mask_3; // @[PageTableWalker.scala 304:42]
  assign mem_arb_io_in_3_bits_req_info_vpn = entries_3_req_info_vpn; // @[PageTableWalker.scala 303:27]
  assign mem_arb_io_in_3_bits_ppn = entries_3_ppn; // @[PageTableWalker.scala 303:27]
  assign mem_arb_io_in_4_valid = is_mems_4 & ~io_mem_req_mask_4; // @[PageTableWalker.scala 304:42]
  assign mem_arb_io_in_4_bits_req_info_vpn = entries_4_req_info_vpn; // @[PageTableWalker.scala 303:27]
  assign mem_arb_io_in_4_bits_ppn = entries_4_ppn; // @[PageTableWalker.scala 303:27]
  assign mem_arb_io_in_5_valid = is_mems_5 & ~io_mem_req_mask_5; // @[PageTableWalker.scala 304:42]
  assign mem_arb_io_in_5_bits_req_info_vpn = entries_5_req_info_vpn; // @[PageTableWalker.scala 303:27]
  assign mem_arb_io_in_5_bits_ppn = entries_5_ppn; // @[PageTableWalker.scala 303:27]
  assign mem_arb_io_out_ready = io_mem_req_ready; // @[PageTableWalker.scala 402:24]
  always @(posedge clock) begin
    if (_T_3) begin // @[PageTableWalker.scala 331:23]
      if (3'h0 == enq_ptr) begin // @[PageTableWalker.scala 336:31]
        entries_0_req_info_vpn <= io_in_bits_req_info_vpn; // @[PageTableWalker.scala 336:31]
      end
    end
    if (_T_3) begin // @[PageTableWalker.scala 331:23]
      if (3'h0 == enq_ptr) begin // @[PageTableWalker.scala 336:31]
        entries_0_req_info_source <= io_in_bits_req_info_source; // @[PageTableWalker.scala 336:31]
      end
    end
    if (_T_3) begin // @[PageTableWalker.scala 331:23]
      if (3'h0 == enq_ptr) begin // @[PageTableWalker.scala 337:26]
        entries_0_ppn <= io_in_bits_ppn[23:0]; // @[PageTableWalker.scala 337:26]
      end
    end
    if (_dup_req_fire_T) begin // @[PageTableWalker.scala 360:32]
      if (state_0 != 3'h0 & _T_17) begin // @[PageTableWalker.scala 362:104]
        entries_0_wait_id <= mem_arb_io_chosen; // @[PageTableWalker.scala 365:28]
      end else begin
        entries_0_wait_id <= _GEN_72;
      end
    end else begin
      entries_0_wait_id <= _GEN_72;
    end
    if (io_pmp_req_valid) begin // @[PageTableWalker.scala 352:25]
      if (3'h0 == enq_ptr_reg) begin // @[PageTableWalker.scala 356:29]
        entries_0_af <= accessFault; // @[PageTableWalker.scala 356:29]
      end else begin
        entries_0_af <= _GEN_78;
      end
    end else begin
      entries_0_af <= _GEN_78;
    end
    if (_T_3) begin // @[PageTableWalker.scala 331:23]
      if (3'h1 == enq_ptr) begin // @[PageTableWalker.scala 336:31]
        entries_1_req_info_vpn <= io_in_bits_req_info_vpn; // @[PageTableWalker.scala 336:31]
      end
    end
    if (_T_3) begin // @[PageTableWalker.scala 331:23]
      if (3'h1 == enq_ptr) begin // @[PageTableWalker.scala 336:31]
        entries_1_req_info_source <= io_in_bits_req_info_source; // @[PageTableWalker.scala 336:31]
      end
    end
    if (_T_3) begin // @[PageTableWalker.scala 331:23]
      if (3'h1 == enq_ptr) begin // @[PageTableWalker.scala 337:26]
        entries_1_ppn <= io_in_bits_ppn[23:0]; // @[PageTableWalker.scala 337:26]
      end
    end
    if (_dup_req_fire_T) begin // @[PageTableWalker.scala 360:32]
      if (state_1 != 3'h0 & _T_22) begin // @[PageTableWalker.scala 362:104]
        entries_1_wait_id <= mem_arb_io_chosen; // @[PageTableWalker.scala 365:28]
      end else begin
        entries_1_wait_id <= _GEN_73;
      end
    end else begin
      entries_1_wait_id <= _GEN_73;
    end
    if (io_pmp_req_valid) begin // @[PageTableWalker.scala 352:25]
      if (3'h1 == enq_ptr_reg) begin // @[PageTableWalker.scala 356:29]
        entries_1_af <= accessFault; // @[PageTableWalker.scala 356:29]
      end else begin
        entries_1_af <= _GEN_79;
      end
    end else begin
      entries_1_af <= _GEN_79;
    end
    if (_T_3) begin // @[PageTableWalker.scala 331:23]
      if (3'h2 == enq_ptr) begin // @[PageTableWalker.scala 336:31]
        entries_2_req_info_vpn <= io_in_bits_req_info_vpn; // @[PageTableWalker.scala 336:31]
      end
    end
    if (_T_3) begin // @[PageTableWalker.scala 331:23]
      if (3'h2 == enq_ptr) begin // @[PageTableWalker.scala 336:31]
        entries_2_req_info_source <= io_in_bits_req_info_source; // @[PageTableWalker.scala 336:31]
      end
    end
    if (_T_3) begin // @[PageTableWalker.scala 331:23]
      if (3'h2 == enq_ptr) begin // @[PageTableWalker.scala 337:26]
        entries_2_ppn <= io_in_bits_ppn[23:0]; // @[PageTableWalker.scala 337:26]
      end
    end
    if (_dup_req_fire_T) begin // @[PageTableWalker.scala 360:32]
      if (state_2 != 3'h0 & _T_27) begin // @[PageTableWalker.scala 362:104]
        entries_2_wait_id <= mem_arb_io_chosen; // @[PageTableWalker.scala 365:28]
      end else begin
        entries_2_wait_id <= _GEN_74;
      end
    end else begin
      entries_2_wait_id <= _GEN_74;
    end
    if (io_pmp_req_valid) begin // @[PageTableWalker.scala 352:25]
      if (3'h2 == enq_ptr_reg) begin // @[PageTableWalker.scala 356:29]
        entries_2_af <= accessFault; // @[PageTableWalker.scala 356:29]
      end else begin
        entries_2_af <= _GEN_80;
      end
    end else begin
      entries_2_af <= _GEN_80;
    end
    if (_T_3) begin // @[PageTableWalker.scala 331:23]
      if (3'h3 == enq_ptr) begin // @[PageTableWalker.scala 336:31]
        entries_3_req_info_vpn <= io_in_bits_req_info_vpn; // @[PageTableWalker.scala 336:31]
      end
    end
    if (_T_3) begin // @[PageTableWalker.scala 331:23]
      if (3'h3 == enq_ptr) begin // @[PageTableWalker.scala 336:31]
        entries_3_req_info_source <= io_in_bits_req_info_source; // @[PageTableWalker.scala 336:31]
      end
    end
    if (_T_3) begin // @[PageTableWalker.scala 331:23]
      if (3'h3 == enq_ptr) begin // @[PageTableWalker.scala 337:26]
        entries_3_ppn <= io_in_bits_ppn[23:0]; // @[PageTableWalker.scala 337:26]
      end
    end
    if (_dup_req_fire_T) begin // @[PageTableWalker.scala 360:32]
      if (state_3 != 3'h0 & _T_32) begin // @[PageTableWalker.scala 362:104]
        entries_3_wait_id <= mem_arb_io_chosen; // @[PageTableWalker.scala 365:28]
      end else begin
        entries_3_wait_id <= _GEN_75;
      end
    end else begin
      entries_3_wait_id <= _GEN_75;
    end
    if (io_pmp_req_valid) begin // @[PageTableWalker.scala 352:25]
      if (3'h3 == enq_ptr_reg) begin // @[PageTableWalker.scala 356:29]
        entries_3_af <= accessFault; // @[PageTableWalker.scala 356:29]
      end else begin
        entries_3_af <= _GEN_81;
      end
    end else begin
      entries_3_af <= _GEN_81;
    end
    if (_T_3) begin // @[PageTableWalker.scala 331:23]
      if (3'h4 == enq_ptr) begin // @[PageTableWalker.scala 336:31]
        entries_4_req_info_vpn <= io_in_bits_req_info_vpn; // @[PageTableWalker.scala 336:31]
      end
    end
    if (_T_3) begin // @[PageTableWalker.scala 331:23]
      if (3'h4 == enq_ptr) begin // @[PageTableWalker.scala 336:31]
        entries_4_req_info_source <= io_in_bits_req_info_source; // @[PageTableWalker.scala 336:31]
      end
    end
    if (_T_3) begin // @[PageTableWalker.scala 331:23]
      if (3'h4 == enq_ptr) begin // @[PageTableWalker.scala 337:26]
        entries_4_ppn <= io_in_bits_ppn[23:0]; // @[PageTableWalker.scala 337:26]
      end
    end
    if (_dup_req_fire_T) begin // @[PageTableWalker.scala 360:32]
      if (state_4 != 3'h0 & _T_37) begin // @[PageTableWalker.scala 362:104]
        entries_4_wait_id <= mem_arb_io_chosen; // @[PageTableWalker.scala 365:28]
      end else begin
        entries_4_wait_id <= _GEN_76;
      end
    end else begin
      entries_4_wait_id <= _GEN_76;
    end
    if (io_pmp_req_valid) begin // @[PageTableWalker.scala 352:25]
      if (3'h4 == enq_ptr_reg) begin // @[PageTableWalker.scala 356:29]
        entries_4_af <= accessFault; // @[PageTableWalker.scala 356:29]
      end else begin
        entries_4_af <= _GEN_82;
      end
    end else begin
      entries_4_af <= _GEN_82;
    end
    if (_T_3) begin // @[PageTableWalker.scala 331:23]
      if (3'h5 == enq_ptr) begin // @[PageTableWalker.scala 336:31]
        entries_5_req_info_vpn <= io_in_bits_req_info_vpn; // @[PageTableWalker.scala 336:31]
      end
    end
    if (_T_3) begin // @[PageTableWalker.scala 331:23]
      if (3'h5 == enq_ptr) begin // @[PageTableWalker.scala 336:31]
        entries_5_req_info_source <= io_in_bits_req_info_source; // @[PageTableWalker.scala 336:31]
      end
    end
    if (_T_3) begin // @[PageTableWalker.scala 331:23]
      if (3'h5 == enq_ptr) begin // @[PageTableWalker.scala 337:26]
        entries_5_ppn <= io_in_bits_ppn[23:0]; // @[PageTableWalker.scala 337:26]
      end
    end
    if (_dup_req_fire_T) begin // @[PageTableWalker.scala 360:32]
      if (state_5 != 3'h0 & _T_42) begin // @[PageTableWalker.scala 362:104]
        entries_5_wait_id <= mem_arb_io_chosen; // @[PageTableWalker.scala 365:28]
      end else begin
        entries_5_wait_id <= _GEN_77;
      end
    end else begin
      entries_5_wait_id <= _GEN_77;
    end
    if (io_pmp_req_valid) begin // @[PageTableWalker.scala 352:25]
      if (3'h5 == enq_ptr_reg) begin // @[PageTableWalker.scala 356:29]
        entries_5_af <= accessFault; // @[PageTableWalker.scala 356:29]
      end else begin
        entries_5_af <= _GEN_83;
      end
    end else begin
      entries_5_af <= _GEN_83;
    end
    if (_full_T_1) begin // @[ParallelMux.scala 90:77]
      enq_ptr_reg <= {{1'd0}, _enq_ptr_T_3};
    end else if (is_emptys_3) begin // @[ParallelMux.scala 90:77]
      enq_ptr_reg <= 3'h3;
    end else if (is_emptys_4) begin // @[ParallelMux.scala 90:77]
      enq_ptr_reg <= 3'h4;
    end else begin
      enq_ptr_reg <= 3'h5;
    end
    need_addr_check <= enq_state == 3'h1 & _T_3 & ~flush; // @[PageTableWalker.scala 344:80]
    if (_T_3) begin // @[Reg.scala 17:18]
      io_pmp_req_bits_addr_r <= _io_pmp_req_bits_addr_T_1[35:0]; // @[Reg.scala 17:22]
    end
    io_mem_refill_REG <= io_mem_resp_bits_id; // @[PageTableWalker.scala 403:55]
    io_perf_0_value_REG <= io_in_ready & io_in_valid; // @[Decoupled.scala 50:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= io_in_valid & _T_74; // @[PageTableWalker.scala 430:49]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= io_mem_req_ready & io_mem_req_valid; // @[Decoupled.scala 50:35]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= _T_127[1:0] + _T_131[1:0]; // @[Bitwise.scala 48:55]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 388:16]
      state_0 <= 3'h0; // @[PageTableWalker.scala 389:17]
    end else if (flush) begin // @[PageTableWalker.scala 383:24]
      state_0 <= 3'h0; // @[PageTableWalker.scala 384:{22,22}]
    end else if (_T_67) begin
      if (3'h0 == cache_ptr) begin
        state_0 <= 3'h0;
      end else begin
        state_0 <= _GEN_176;
      end
    end else begin
      state_0 <= _GEN_176;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 388:16]
      state_1 <= 3'h0; // @[PageTableWalker.scala 389:17]
    end else if (flush) begin // @[PageTableWalker.scala 383:24]
      state_1 <= 3'h0; // @[PageTableWalker.scala 384:{22,22}]
    end else if (_T_67) begin
      if (3'h1 == cache_ptr) begin
        state_1 <= 3'h0;
      end else begin
        state_1 <= _GEN_177;
      end
    end else begin
      state_1 <= _GEN_177;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 388:16]
      state_2 <= 3'h0; // @[PageTableWalker.scala 389:17]
    end else if (flush) begin // @[PageTableWalker.scala 383:24]
      state_2 <= 3'h0; // @[PageTableWalker.scala 384:{22,22}]
    end else if (_T_67) begin
      if (3'h2 == cache_ptr) begin
        state_2 <= 3'h0;
      end else begin
        state_2 <= _GEN_178;
      end
    end else begin
      state_2 <= _GEN_178;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 388:16]
      state_3 <= 3'h0; // @[PageTableWalker.scala 389:17]
    end else if (flush) begin // @[PageTableWalker.scala 383:24]
      state_3 <= 3'h0; // @[PageTableWalker.scala 384:{22,22}]
    end else if (_T_67) begin
      if (3'h3 == cache_ptr) begin
        state_3 <= 3'h0;
      end else begin
        state_3 <= _GEN_179;
      end
    end else begin
      state_3 <= _GEN_179;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 388:16]
      state_4 <= 3'h0; // @[PageTableWalker.scala 389:17]
    end else if (flush) begin // @[PageTableWalker.scala 383:24]
      state_4 <= 3'h0; // @[PageTableWalker.scala 384:{22,22}]
    end else if (_T_67) begin
      if (3'h4 == cache_ptr) begin
        state_4 <= 3'h0;
      end else begin
        state_4 <= _GEN_180;
      end
    end else begin
      state_4 <= _GEN_180;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 388:16]
      state_5 <= 3'h0; // @[PageTableWalker.scala 389:17]
    end else if (flush) begin // @[PageTableWalker.scala 383:24]
      state_5 <= 3'h0; // @[PageTableWalker.scala 384:{22,22}]
    end else if (_T_67) begin
      if (3'h5 == cache_ptr) begin
        state_5 <= 3'h0;
      end else begin
        state_5 <= _GEN_181;
      end
    end else begin
      state_5 <= _GEN_181;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 381:34]
      mem_resp_hit_0 <= 1'h0; // @[PageTableWalker.scala 381:38]
    end else if (mem_resp_hit_0) begin // @[PageTableWalker.scala 369:29]
      mem_resp_hit_0 <= 1'h0;
    end else if (io_mem_resp_valid) begin // @[PageTableWalker.scala 331:23]
      mem_resp_hit_0 <= _GEN_141; // @[PageTableWalker.scala 340:{27,27} 326:29]
    end else if (_T_3) begin // @[PageTableWalker.scala 326:29]
      if (3'h0 == enq_ptr) begin
        mem_resp_hit_0 <= dup_wait_resp;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 381:34]
      mem_resp_hit_1 <= 1'h0; // @[PageTableWalker.scala 381:38]
    end else if (mem_resp_hit_1) begin // @[PageTableWalker.scala 369:29]
      mem_resp_hit_1 <= 1'h0;
    end else if (io_mem_resp_valid) begin // @[PageTableWalker.scala 331:23]
      mem_resp_hit_1 <= _GEN_143; // @[PageTableWalker.scala 340:{27,27} 326:29]
    end else if (_T_3) begin // @[PageTableWalker.scala 326:29]
      if (3'h1 == enq_ptr) begin
        mem_resp_hit_1 <= dup_wait_resp;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 381:34]
      mem_resp_hit_2 <= 1'h0; // @[PageTableWalker.scala 381:38]
    end else if (mem_resp_hit_2) begin // @[PageTableWalker.scala 369:29]
      mem_resp_hit_2 <= 1'h0;
    end else if (io_mem_resp_valid) begin // @[PageTableWalker.scala 331:23]
      mem_resp_hit_2 <= _GEN_145; // @[PageTableWalker.scala 340:{27,27} 326:29]
    end else if (_T_3) begin // @[PageTableWalker.scala 326:29]
      if (3'h2 == enq_ptr) begin
        mem_resp_hit_2 <= dup_wait_resp;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 381:34]
      mem_resp_hit_3 <= 1'h0; // @[PageTableWalker.scala 381:38]
    end else if (mem_resp_hit_3) begin // @[PageTableWalker.scala 369:29]
      mem_resp_hit_3 <= 1'h0;
    end else if (io_mem_resp_valid) begin // @[PageTableWalker.scala 331:23]
      mem_resp_hit_3 <= _GEN_147; // @[PageTableWalker.scala 340:{27,27} 326:29]
    end else if (_T_3) begin // @[PageTableWalker.scala 326:29]
      if (3'h3 == enq_ptr) begin
        mem_resp_hit_3 <= dup_wait_resp;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 381:34]
      mem_resp_hit_4 <= 1'h0; // @[PageTableWalker.scala 381:38]
    end else if (mem_resp_hit_4) begin // @[PageTableWalker.scala 369:29]
      mem_resp_hit_4 <= 1'h0;
    end else if (io_mem_resp_valid) begin // @[PageTableWalker.scala 331:23]
      mem_resp_hit_4 <= _GEN_149; // @[PageTableWalker.scala 340:{27,27} 326:29]
    end else if (_T_3) begin // @[PageTableWalker.scala 326:29]
      if (3'h4 == enq_ptr) begin
        mem_resp_hit_4 <= dup_wait_resp;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 381:34]
      mem_resp_hit_5 <= 1'h0; // @[PageTableWalker.scala 381:38]
    end else if (mem_resp_hit_5) begin // @[PageTableWalker.scala 369:29]
      mem_resp_hit_5 <= 1'h0;
    end else if (io_mem_resp_valid) begin // @[PageTableWalker.scala 331:23]
      mem_resp_hit_5 <= _GEN_151; // @[PageTableWalker.scala 340:{27,27} 326:29]
    end else if (_T_3) begin // @[PageTableWalker.scala 326:29]
      if (3'h5 == enq_ptr) begin
        mem_resp_hit_5 <= dup_wait_resp;
      end
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
  entries_0_req_info_vpn = _RAND_0[26:0];
  _RAND_1 = {1{`RANDOM}};
  entries_0_req_info_source = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  entries_0_ppn = _RAND_2[23:0];
  _RAND_3 = {1{`RANDOM}};
  entries_0_wait_id = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  entries_0_af = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  entries_1_req_info_vpn = _RAND_5[26:0];
  _RAND_6 = {1{`RANDOM}};
  entries_1_req_info_source = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  entries_1_ppn = _RAND_7[23:0];
  _RAND_8 = {1{`RANDOM}};
  entries_1_wait_id = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  entries_1_af = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  entries_2_req_info_vpn = _RAND_10[26:0];
  _RAND_11 = {1{`RANDOM}};
  entries_2_req_info_source = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  entries_2_ppn = _RAND_12[23:0];
  _RAND_13 = {1{`RANDOM}};
  entries_2_wait_id = _RAND_13[2:0];
  _RAND_14 = {1{`RANDOM}};
  entries_2_af = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  entries_3_req_info_vpn = _RAND_15[26:0];
  _RAND_16 = {1{`RANDOM}};
  entries_3_req_info_source = _RAND_16[1:0];
  _RAND_17 = {1{`RANDOM}};
  entries_3_ppn = _RAND_17[23:0];
  _RAND_18 = {1{`RANDOM}};
  entries_3_wait_id = _RAND_18[2:0];
  _RAND_19 = {1{`RANDOM}};
  entries_3_af = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  entries_4_req_info_vpn = _RAND_20[26:0];
  _RAND_21 = {1{`RANDOM}};
  entries_4_req_info_source = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  entries_4_ppn = _RAND_22[23:0];
  _RAND_23 = {1{`RANDOM}};
  entries_4_wait_id = _RAND_23[2:0];
  _RAND_24 = {1{`RANDOM}};
  entries_4_af = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  entries_5_req_info_vpn = _RAND_25[26:0];
  _RAND_26 = {1{`RANDOM}};
  entries_5_req_info_source = _RAND_26[1:0];
  _RAND_27 = {1{`RANDOM}};
  entries_5_ppn = _RAND_27[23:0];
  _RAND_28 = {1{`RANDOM}};
  entries_5_wait_id = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  entries_5_af = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  state_0 = _RAND_30[2:0];
  _RAND_31 = {1{`RANDOM}};
  state_1 = _RAND_31[2:0];
  _RAND_32 = {1{`RANDOM}};
  state_2 = _RAND_32[2:0];
  _RAND_33 = {1{`RANDOM}};
  state_3 = _RAND_33[2:0];
  _RAND_34 = {1{`RANDOM}};
  state_4 = _RAND_34[2:0];
  _RAND_35 = {1{`RANDOM}};
  state_5 = _RAND_35[2:0];
  _RAND_36 = {1{`RANDOM}};
  mem_resp_hit_0 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  mem_resp_hit_1 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  mem_resp_hit_2 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  mem_resp_hit_3 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  mem_resp_hit_4 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  mem_resp_hit_5 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  enq_ptr_reg = _RAND_42[2:0];
  _RAND_43 = {1{`RANDOM}};
  need_addr_check = _RAND_43[0:0];
  _RAND_44 = {2{`RANDOM}};
  io_pmp_req_bits_addr_r = _RAND_44[35:0];
  _RAND_45 = {1{`RANDOM}};
  io_mem_refill_REG = _RAND_45[2:0];
  _RAND_46 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_52[2:0];
  _RAND_53 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_53[2:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    state_0 = 3'h0;
  end
  if (reset) begin
    state_1 = 3'h0;
  end
  if (reset) begin
    state_2 = 3'h0;
  end
  if (reset) begin
    state_3 = 3'h0;
  end
  if (reset) begin
    state_4 = 3'h0;
  end
  if (reset) begin
    state_5 = 3'h0;
  end
  if (reset) begin
    mem_resp_hit_0 = 1'h0;
  end
  if (reset) begin
    mem_resp_hit_1 = 1'h0;
  end
  if (reset) begin
    mem_resp_hit_2 = 1'h0;
  end
  if (reset) begin
    mem_resp_hit_3 = 1'h0;
  end
  if (reset) begin
    mem_resp_hit_4 = 1'h0;
  end
  if (reset) begin
    mem_resp_hit_5 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

