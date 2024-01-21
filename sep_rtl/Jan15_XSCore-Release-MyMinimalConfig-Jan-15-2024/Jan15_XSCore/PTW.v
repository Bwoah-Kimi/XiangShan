module PTW(
  input         clock,
  input         reset,
  input         io_sfence_valid,
  input  [15:0] io_csr_satp_asid,
  input  [43:0] io_csr_satp_ppn,
  output        io_req_ready,
  input         io_req_valid,
  input  [26:0] io_req_bits_req_info_vpn,
  input  [1:0]  io_req_bits_req_info_source,
  input         io_req_bits_l1Hit,
  input  [23:0] io_req_bits_ppn,
  input         io_resp_ready,
  output        io_resp_valid,
  output [1:0]  io_resp_bits_source,
  output [23:0] io_resp_bits_resp_entry_0_tag,
  output [15:0] io_resp_bits_resp_entry_0_asid,
  output        io_resp_bits_resp_entry_0_perm_d,
  output        io_resp_bits_resp_entry_0_perm_a,
  output        io_resp_bits_resp_entry_0_perm_g,
  output        io_resp_bits_resp_entry_0_perm_u,
  output        io_resp_bits_resp_entry_0_perm_x,
  output        io_resp_bits_resp_entry_0_perm_w,
  output        io_resp_bits_resp_entry_0_perm_r,
  output [1:0]  io_resp_bits_resp_entry_0_level,
  output        io_resp_bits_resp_entry_0_v,
  output [20:0] io_resp_bits_resp_entry_0_ppn,
  output [2:0]  io_resp_bits_resp_entry_0_ppn_low,
  output        io_resp_bits_resp_entry_0_af,
  output        io_resp_bits_resp_entry_0_pf,
  output [23:0] io_resp_bits_resp_entry_1_tag,
  output [15:0] io_resp_bits_resp_entry_1_asid,
  output        io_resp_bits_resp_entry_1_perm_d,
  output        io_resp_bits_resp_entry_1_perm_a,
  output        io_resp_bits_resp_entry_1_perm_g,
  output        io_resp_bits_resp_entry_1_perm_u,
  output        io_resp_bits_resp_entry_1_perm_x,
  output        io_resp_bits_resp_entry_1_perm_w,
  output        io_resp_bits_resp_entry_1_perm_r,
  output [1:0]  io_resp_bits_resp_entry_1_level,
  output        io_resp_bits_resp_entry_1_v,
  output [20:0] io_resp_bits_resp_entry_1_ppn,
  output [2:0]  io_resp_bits_resp_entry_1_ppn_low,
  output        io_resp_bits_resp_entry_1_af,
  output        io_resp_bits_resp_entry_1_pf,
  output [23:0] io_resp_bits_resp_entry_2_tag,
  output [15:0] io_resp_bits_resp_entry_2_asid,
  output        io_resp_bits_resp_entry_2_perm_d,
  output        io_resp_bits_resp_entry_2_perm_a,
  output        io_resp_bits_resp_entry_2_perm_g,
  output        io_resp_bits_resp_entry_2_perm_u,
  output        io_resp_bits_resp_entry_2_perm_x,
  output        io_resp_bits_resp_entry_2_perm_w,
  output        io_resp_bits_resp_entry_2_perm_r,
  output [1:0]  io_resp_bits_resp_entry_2_level,
  output        io_resp_bits_resp_entry_2_v,
  output [20:0] io_resp_bits_resp_entry_2_ppn,
  output [2:0]  io_resp_bits_resp_entry_2_ppn_low,
  output        io_resp_bits_resp_entry_2_af,
  output        io_resp_bits_resp_entry_2_pf,
  output [23:0] io_resp_bits_resp_entry_3_tag,
  output [15:0] io_resp_bits_resp_entry_3_asid,
  output        io_resp_bits_resp_entry_3_perm_d,
  output        io_resp_bits_resp_entry_3_perm_a,
  output        io_resp_bits_resp_entry_3_perm_g,
  output        io_resp_bits_resp_entry_3_perm_u,
  output        io_resp_bits_resp_entry_3_perm_x,
  output        io_resp_bits_resp_entry_3_perm_w,
  output        io_resp_bits_resp_entry_3_perm_r,
  output [1:0]  io_resp_bits_resp_entry_3_level,
  output        io_resp_bits_resp_entry_3_v,
  output [20:0] io_resp_bits_resp_entry_3_ppn,
  output [2:0]  io_resp_bits_resp_entry_3_ppn_low,
  output        io_resp_bits_resp_entry_3_af,
  output        io_resp_bits_resp_entry_3_pf,
  output [23:0] io_resp_bits_resp_entry_4_tag,
  output [15:0] io_resp_bits_resp_entry_4_asid,
  output        io_resp_bits_resp_entry_4_perm_d,
  output        io_resp_bits_resp_entry_4_perm_a,
  output        io_resp_bits_resp_entry_4_perm_g,
  output        io_resp_bits_resp_entry_4_perm_u,
  output        io_resp_bits_resp_entry_4_perm_x,
  output        io_resp_bits_resp_entry_4_perm_w,
  output        io_resp_bits_resp_entry_4_perm_r,
  output [1:0]  io_resp_bits_resp_entry_4_level,
  output        io_resp_bits_resp_entry_4_v,
  output [20:0] io_resp_bits_resp_entry_4_ppn,
  output [2:0]  io_resp_bits_resp_entry_4_ppn_low,
  output        io_resp_bits_resp_entry_4_af,
  output        io_resp_bits_resp_entry_4_pf,
  output [23:0] io_resp_bits_resp_entry_5_tag,
  output [15:0] io_resp_bits_resp_entry_5_asid,
  output        io_resp_bits_resp_entry_5_perm_d,
  output        io_resp_bits_resp_entry_5_perm_a,
  output        io_resp_bits_resp_entry_5_perm_g,
  output        io_resp_bits_resp_entry_5_perm_u,
  output        io_resp_bits_resp_entry_5_perm_x,
  output        io_resp_bits_resp_entry_5_perm_w,
  output        io_resp_bits_resp_entry_5_perm_r,
  output [1:0]  io_resp_bits_resp_entry_5_level,
  output        io_resp_bits_resp_entry_5_v,
  output [20:0] io_resp_bits_resp_entry_5_ppn,
  output [2:0]  io_resp_bits_resp_entry_5_ppn_low,
  output        io_resp_bits_resp_entry_5_af,
  output        io_resp_bits_resp_entry_5_pf,
  output [23:0] io_resp_bits_resp_entry_6_tag,
  output [15:0] io_resp_bits_resp_entry_6_asid,
  output        io_resp_bits_resp_entry_6_perm_d,
  output        io_resp_bits_resp_entry_6_perm_a,
  output        io_resp_bits_resp_entry_6_perm_g,
  output        io_resp_bits_resp_entry_6_perm_u,
  output        io_resp_bits_resp_entry_6_perm_x,
  output        io_resp_bits_resp_entry_6_perm_w,
  output        io_resp_bits_resp_entry_6_perm_r,
  output [1:0]  io_resp_bits_resp_entry_6_level,
  output        io_resp_bits_resp_entry_6_v,
  output [20:0] io_resp_bits_resp_entry_6_ppn,
  output [2:0]  io_resp_bits_resp_entry_6_ppn_low,
  output        io_resp_bits_resp_entry_6_af,
  output        io_resp_bits_resp_entry_6_pf,
  output [23:0] io_resp_bits_resp_entry_7_tag,
  output [15:0] io_resp_bits_resp_entry_7_asid,
  output        io_resp_bits_resp_entry_7_perm_d,
  output        io_resp_bits_resp_entry_7_perm_a,
  output        io_resp_bits_resp_entry_7_perm_g,
  output        io_resp_bits_resp_entry_7_perm_u,
  output        io_resp_bits_resp_entry_7_perm_x,
  output        io_resp_bits_resp_entry_7_perm_w,
  output        io_resp_bits_resp_entry_7_perm_r,
  output [1:0]  io_resp_bits_resp_entry_7_level,
  output        io_resp_bits_resp_entry_7_v,
  output [20:0] io_resp_bits_resp_entry_7_ppn,
  output [2:0]  io_resp_bits_resp_entry_7_ppn_low,
  output        io_resp_bits_resp_entry_7_af,
  output        io_resp_bits_resp_entry_7_pf,
  output        io_resp_bits_resp_pteidx_0,
  output        io_resp_bits_resp_pteidx_1,
  output        io_resp_bits_resp_pteidx_2,
  output        io_resp_bits_resp_pteidx_3,
  output        io_resp_bits_resp_pteidx_4,
  output        io_resp_bits_resp_pteidx_5,
  output        io_resp_bits_resp_pteidx_6,
  output        io_resp_bits_resp_pteidx_7,
  input         io_llptw_ready,
  output        io_llptw_valid,
  output [26:0] io_llptw_bits_req_info_vpn,
  output [1:0]  io_llptw_bits_req_info_source,
  input         io_mem_req_ready,
  output        io_mem_req_valid,
  output [35:0] io_mem_req_bits_addr,
  input         io_mem_resp_valid,
  input  [63:0] io_mem_resp_bits,
  input         io_mem_mask,
  output [35:0] io_pmp_req_bits_addr,
  input         io_pmp_resp_ld,
  input         io_pmp_resp_mmio,
  output [26:0] io_refill_req_info_vpn,
  output [1:0]  io_refill_req_info_source,
  output [1:0]  io_refill_level,
  output [5:0]  io_perf_0_value,
  output [5:0]  io_perf_1_value,
  output [5:0]  io_perf_2_value,
  output [5:0]  io_perf_3_value,
  output [5:0]  io_perf_4_value,
  output [5:0]  io_perf_5_value,
  output [5:0]  io_perf_6_value
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
`endif // RANDOMIZE_REG_INIT
  reg [1:0] level; // @[PageTableWalker.scala 81:22]
  reg [1:0] af_level; // @[PageTableWalker.scala 82:25]
  reg [23:0] ppn; // @[PageTableWalker.scala 83:16]
  reg [26:0] vpn; // @[PageTableWalker.scala 84:16]
  wire [1:0] levelNext = level + 2'h1; // @[PageTableWalker.scala 85:25]
  reg  l1Hit; // @[PageTableWalker.scala 86:18]
  wire  memPte_perm_v = io_mem_resp_bits[0]; // @[PageTableWalker.scala 87:38]
  wire  memPte_perm_r = io_mem_resp_bits[1]; // @[PageTableWalker.scala 87:38]
  wire  memPte_perm_w = io_mem_resp_bits[2]; // @[PageTableWalker.scala 87:38]
  wire  memPte_perm_x = io_mem_resp_bits[3]; // @[PageTableWalker.scala 87:38]
  wire [23:0] memPte_ppn = io_mem_resp_bits[33:10]; // @[PageTableWalker.scala 87:38]
  wire [19:0] memPte_ppn_high = io_mem_resp_bits[53:34]; // @[PageTableWalker.scala 87:38]
  reg  s_pmp_check; // @[PageTableWalker.scala 90:28]
  reg  s_mem_req; // @[PageTableWalker.scala 91:26]
  reg  s_llptw_req; // @[PageTableWalker.scala 92:28]
  reg  w_mem_resp; // @[PageTableWalker.scala 93:27]
  reg  mem_addr_update; // @[PageTableWalker.scala 95:32]
  reg  idle; // @[PageTableWalker.scala 97:21]
  wire  _sent_to_pmp_T = ~idle; // @[PageTableWalker.scala 99:26]
  wire  _T_24 = level == 2'h0; // @[PageTableWalker.scala 175:16]
  wire  _find_pte_T_1 = memPte_perm_r | memPte_perm_x | memPte_perm_w; // @[MMUBundle.scala 712:22]
  wire  ppn_af = ~(memPte_ppn_high == 20'h0); // @[MMUBundle.scala 708:5]
  wire  _pageFault_T_7 = level == 2'h1; // @[MMUBundle.scala 697:25]
  wire  _pageFault_T_10 = level == 2'h1 & memPte_ppn[8:0] == 9'h0; // @[MMUBundle.scala 697:33]
  wire  _pageFault_T_11 = level == 2'h2 | _pageFault_T_10; // @[MMUBundle.scala 696:33]
  wire  _pageFault_T_15 = _T_24 & memPte_ppn[17:0] == 18'h0; // @[MMUBundle.scala 698:33]
  wire  _pageFault_T_16 = _pageFault_T_11 | _pageFault_T_15; // @[MMUBundle.scala 697:64]
  wire  _pageFault_T_18 = _find_pte_T_1 & ~_pageFault_T_16; // @[MMUBundle.scala 696:14]
  wire  pageFault = ~memPte_perm_v | ~memPte_perm_r & memPte_perm_w | _pageFault_T_18; // @[MMUBundle.scala 702:36]
  wire  find_pte = _find_pte_T_1 | ppn_af | pageFault; // @[PageTableWalker.scala 105:44]
  reg  accessFault; // @[Reg.scala 16:16]
  wire  _GEN_38 = io_llptw_valid | io_resp_valid; // @[PageTableWalker.scala 180:31 186:14]
  wire  _GEN_45 = level == 2'h0 & ~(find_pte | accessFault) ? 1'h0 : _GEN_38; // @[PageTableWalker.scala 175:54]
  wire  finish = mem_addr_update & _GEN_45; // @[PageTableWalker.scala 174:24]
  wire  sent_to_pmp = ~idle & (~s_pmp_check | mem_addr_update) & ~finish; // @[PageTableWalker.scala 99:86]
  wire  _accessFault_T = io_pmp_resp_ld | io_pmp_resp_mmio; // @[PageTableWalker.scala 102:46]
  wire  _GEN_0 = sent_to_pmp ? _accessFault_T : accessFault; // @[Reg.scala 16:16 17:{18,22}]
  wire  to_find_pte = _pageFault_T_7 & ~find_pte; // @[PageTableWalker.scala 106:35]
  wire  _source_T = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  reg [1:0] source; // @[Reg.scala 16:16]
  wire [55:0] _l1addr_T_1 = {io_csr_satp_ppn,vpn[26:18],3'h0}; // @[Cat.scala 31:58]
  wire [35:0] l1addr = _l1addr_T_1[35:0]; // @[MMUConst.scala 236:41]
  wire [23:0] _l2addr_T = l1Hit ? ppn : memPte_ppn; // @[PageTableWalker.scala 110:28]
  wire [35:0] l2addr = {_l2addr_T,vpn[17:9],3'h0}; // @[Cat.scala 31:58]
  wire  _T = ~accessFault; // @[PageTableWalker.scala 117:40]
  wire  ptw_resp_pf = pageFault & ~accessFault & ~ppn_af; // @[PageTableWalker.scala 117:53]
  wire [7:0] _T_7 = 8'h1 << vpn[2:0]; // @[OneHot.scala 57:35]
  wire [43:0] _ppn_T = io_req_bits_l1Hit ? {{20'd0}, io_req_bits_ppn} : io_csr_satp_ppn; // @[PageTableWalker.scala 141:15]
  wire [1:0] _GEN_2 = _source_T ? {{1'd0}, io_req_bits_l1Hit} : level; // @[PageTableWalker.scala 137:23 139:11 81:22]
  wire [43:0] _GEN_4 = _source_T ? _ppn_T : {{20'd0}, ppn}; // @[PageTableWalker.scala 137:23 141:9 83:16]
  wire  _GEN_7 = _source_T ? 1'h0 : _GEN_0; // @[PageTableWalker.scala 137:23 144:17]
  wire  _GEN_8 = _source_T ? 1'h0 : s_pmp_check; // @[PageTableWalker.scala 137:23 145:17 90:28]
  wire  _GEN_9 = _source_T ? 1'h0 : idle; // @[PageTableWalker.scala 137:23 146:10 97:21]
  wire  _GEN_10 = sent_to_pmp & ~mem_addr_update ? 1'h0 : s_mem_req; // @[PageTableWalker.scala 149:51 150:15 91:26]
  wire  _GEN_11 = sent_to_pmp & ~mem_addr_update | _GEN_8; // @[PageTableWalker.scala 149:51 151:17]
  wire  _GEN_12 = accessFault & _sent_to_pmp_T | _GEN_11; // @[PageTableWalker.scala 154:40 155:17]
  wire  _GEN_13 = accessFault & _sent_to_pmp_T | _GEN_10; // @[PageTableWalker.scala 154:40 156:15]
  wire  _GEN_14 = accessFault & _sent_to_pmp_T | w_mem_resp; // @[PageTableWalker.scala 154:40 157:16 93:27]
  wire  _GEN_15 = accessFault & _sent_to_pmp_T | s_llptw_req; // @[PageTableWalker.scala 154:40 158:17 92:28]
  wire  _GEN_16 = accessFault & _sent_to_pmp_T | mem_addr_update; // @[PageTableWalker.scala 154:40 159:21 95:32]
  wire  _T_21 = io_mem_req_ready & io_mem_req_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_17 = _T_21 | _GEN_13; // @[PageTableWalker.scala 162:24 163:15]
  wire  _GEN_18 = _T_21 ? 1'h0 : _GEN_14; // @[PageTableWalker.scala 162:24 164:16]
  wire [1:0] _af_level_T_2 = af_level + 2'h1; // @[PageTableWalker.scala 169:26]
  wire  _GEN_19 = io_mem_resp_valid & ~w_mem_resp | _GEN_18; // @[PageTableWalker.scala 167:50 168:16]
  wire  _GEN_21 = io_mem_resp_valid & ~w_mem_resp ? 1'h0 : _GEN_15; // @[PageTableWalker.scala 167:50 170:17]
  wire  _GEN_22 = io_mem_resp_valid & ~w_mem_resp | _GEN_16; // @[PageTableWalker.scala 167:50 171:21]
  wire  _T_28 = io_llptw_ready & io_llptw_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_23 = _T_28 | _GEN_9; // @[PageTableWalker.scala 181:29 182:14]
  wire  _GEN_24 = _T_28 | _GEN_21; // @[PageTableWalker.scala 181:29 183:21]
  wire  _GEN_25 = _T_28 ? 1'h0 : _GEN_22; // @[PageTableWalker.scala 181:29 184:25]
  wire  _T_29 = io_resp_ready & io_resp_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_26 = _T_29 | _GEN_9; // @[PageTableWalker.scala 188:28 189:14]
  wire  _GEN_27 = _T_29 | _GEN_21; // @[PageTableWalker.scala 188:28 190:21]
  wire  _GEN_28 = _T_29 ? 1'h0 : _GEN_22; // @[PageTableWalker.scala 188:28 191:25]
  wire  _GEN_29 = _T_29 ? 1'h0 : _GEN_7; // @[PageTableWalker.scala 188:28 192:21]
  wire  _GEN_30 = io_resp_valid ? _GEN_26 : _GEN_9; // @[PageTableWalker.scala 187:30]
  wire  _GEN_31 = io_resp_valid ? _GEN_27 : _GEN_21; // @[PageTableWalker.scala 187:30]
  wire  _GEN_32 = io_resp_valid ? _GEN_28 : _GEN_22; // @[PageTableWalker.scala 187:30]
  wire  _GEN_33 = io_resp_valid ? _GEN_29 : _GEN_7; // @[PageTableWalker.scala 187:30]
  wire  _GEN_35 = io_llptw_valid ? _GEN_23 : _GEN_30; // @[PageTableWalker.scala 180:31]
  wire  _GEN_36 = io_llptw_valid ? _GEN_24 : _GEN_31; // @[PageTableWalker.scala 180:31]
  wire  _GEN_41 = level == 2'h0 & ~(find_pte | accessFault) ? 1'h0 : _GEN_17; // @[PageTableWalker.scala 175:54 177:17]
  wire  _GEN_42 = level == 2'h0 & ~(find_pte | accessFault) | _GEN_36; // @[PageTableWalker.scala 175:54 178:19]
  wire  _GEN_44 = level == 2'h0 & ~(find_pte | accessFault) ? _GEN_9 : _GEN_35; // @[PageTableWalker.scala 175:54]
  wire  _GEN_48 = mem_addr_update ? _GEN_41 : _GEN_17; // @[PageTableWalker.scala 174:24]
  wire  _GEN_49 = mem_addr_update ? _GEN_42 : _GEN_21; // @[PageTableWalker.scala 174:24]
  wire  _GEN_51 = mem_addr_update ? _GEN_44 : _GEN_9; // @[PageTableWalker.scala 174:24]
  wire  _T_38 = ~io_resp_ready; // @[PageTableWalker.scala 219:53]
  wire  _T_44 = ~io_mem_req_ready; // @[PageTableWalker.scala 223:52]
  reg  r_1; // @[StopWatch.scala 23:20]
  wire  _GEN_64 = io_mem_resp_valid ? 1'h0 : r_1; // @[StopWatch.scala 25:19 23:20 25:23]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  assign io_req_ready = idle; // @[PageTableWalker.scala 113:16]
  assign io_resp_valid = _sent_to_pmp_T & mem_addr_update & (w_mem_resp & find_pte | s_pmp_check & accessFault); // @[PageTableWalker.scala 115:56]
  assign io_resp_bits_source = source; // @[PageTableWalker.scala 116:23]
  assign io_resp_bits_resp_entry_0_tag = vpn[26:3]; // @[MMUBundle.scala 1041:24]
  assign io_resp_bits_resp_entry_0_asid = io_csr_satp_asid; // @[MMUBundle.scala 1036:24 1046:19]
  assign io_resp_bits_resp_entry_0_perm_d = io_mem_resp_bits[7]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_0_perm_a = io_mem_resp_bits[6]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_0_perm_g = io_mem_resp_bits[5]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_0_perm_u = io_mem_resp_bits[4]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_0_perm_x = io_mem_resp_bits[3]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_0_perm_w = io_mem_resp_bits[2]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_0_perm_r = io_mem_resp_bits[1]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_0_level = accessFault ? af_level : level; // @[PageTableWalker.scala 117:91]
  assign io_resp_bits_resp_entry_0_v = ~ptw_resp_pf; // @[MMUBundle.scala 1044:19]
  assign io_resp_bits_resp_entry_0_ppn = memPte_ppn[23:3]; // @[MMUBundle.scala 1037:28]
  assign io_resp_bits_resp_entry_0_ppn_low = memPte_ppn[2:0]; // @[MMUBundle.scala 1038:32]
  assign io_resp_bits_resp_entry_0_af = accessFault | ppn_af; // @[PageTableWalker.scala 117:77]
  assign io_resp_bits_resp_entry_0_pf = pageFault & ~accessFault & ~ppn_af; // @[PageTableWalker.scala 117:53]
  assign io_resp_bits_resp_entry_1_tag = vpn[26:3]; // @[MMUBundle.scala 1041:24]
  assign io_resp_bits_resp_entry_1_asid = io_csr_satp_asid; // @[MMUBundle.scala 1036:24 1046:19]
  assign io_resp_bits_resp_entry_1_perm_d = io_mem_resp_bits[7]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_1_perm_a = io_mem_resp_bits[6]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_1_perm_g = io_mem_resp_bits[5]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_1_perm_u = io_mem_resp_bits[4]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_1_perm_x = io_mem_resp_bits[3]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_1_perm_w = io_mem_resp_bits[2]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_1_perm_r = io_mem_resp_bits[1]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_1_level = accessFault ? af_level : level; // @[PageTableWalker.scala 117:91]
  assign io_resp_bits_resp_entry_1_v = ~ptw_resp_pf; // @[MMUBundle.scala 1044:19]
  assign io_resp_bits_resp_entry_1_ppn = memPte_ppn[23:3]; // @[MMUBundle.scala 1037:28]
  assign io_resp_bits_resp_entry_1_ppn_low = memPte_ppn[2:0]; // @[MMUBundle.scala 1038:32]
  assign io_resp_bits_resp_entry_1_af = accessFault | ppn_af; // @[PageTableWalker.scala 117:77]
  assign io_resp_bits_resp_entry_1_pf = pageFault & ~accessFault & ~ppn_af; // @[PageTableWalker.scala 117:53]
  assign io_resp_bits_resp_entry_2_tag = vpn[26:3]; // @[MMUBundle.scala 1041:24]
  assign io_resp_bits_resp_entry_2_asid = io_csr_satp_asid; // @[MMUBundle.scala 1036:24 1046:19]
  assign io_resp_bits_resp_entry_2_perm_d = io_mem_resp_bits[7]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_2_perm_a = io_mem_resp_bits[6]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_2_perm_g = io_mem_resp_bits[5]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_2_perm_u = io_mem_resp_bits[4]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_2_perm_x = io_mem_resp_bits[3]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_2_perm_w = io_mem_resp_bits[2]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_2_perm_r = io_mem_resp_bits[1]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_2_level = accessFault ? af_level : level; // @[PageTableWalker.scala 117:91]
  assign io_resp_bits_resp_entry_2_v = ~ptw_resp_pf; // @[MMUBundle.scala 1044:19]
  assign io_resp_bits_resp_entry_2_ppn = memPte_ppn[23:3]; // @[MMUBundle.scala 1037:28]
  assign io_resp_bits_resp_entry_2_ppn_low = memPte_ppn[2:0]; // @[MMUBundle.scala 1038:32]
  assign io_resp_bits_resp_entry_2_af = accessFault | ppn_af; // @[PageTableWalker.scala 117:77]
  assign io_resp_bits_resp_entry_2_pf = pageFault & ~accessFault & ~ppn_af; // @[PageTableWalker.scala 117:53]
  assign io_resp_bits_resp_entry_3_tag = vpn[26:3]; // @[MMUBundle.scala 1041:24]
  assign io_resp_bits_resp_entry_3_asid = io_csr_satp_asid; // @[MMUBundle.scala 1036:24 1046:19]
  assign io_resp_bits_resp_entry_3_perm_d = io_mem_resp_bits[7]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_3_perm_a = io_mem_resp_bits[6]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_3_perm_g = io_mem_resp_bits[5]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_3_perm_u = io_mem_resp_bits[4]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_3_perm_x = io_mem_resp_bits[3]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_3_perm_w = io_mem_resp_bits[2]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_3_perm_r = io_mem_resp_bits[1]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_3_level = accessFault ? af_level : level; // @[PageTableWalker.scala 117:91]
  assign io_resp_bits_resp_entry_3_v = ~ptw_resp_pf; // @[MMUBundle.scala 1044:19]
  assign io_resp_bits_resp_entry_3_ppn = memPte_ppn[23:3]; // @[MMUBundle.scala 1037:28]
  assign io_resp_bits_resp_entry_3_ppn_low = memPte_ppn[2:0]; // @[MMUBundle.scala 1038:32]
  assign io_resp_bits_resp_entry_3_af = accessFault | ppn_af; // @[PageTableWalker.scala 117:77]
  assign io_resp_bits_resp_entry_3_pf = pageFault & ~accessFault & ~ppn_af; // @[PageTableWalker.scala 117:53]
  assign io_resp_bits_resp_entry_4_tag = vpn[26:3]; // @[MMUBundle.scala 1041:24]
  assign io_resp_bits_resp_entry_4_asid = io_csr_satp_asid; // @[MMUBundle.scala 1036:24 1046:19]
  assign io_resp_bits_resp_entry_4_perm_d = io_mem_resp_bits[7]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_4_perm_a = io_mem_resp_bits[6]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_4_perm_g = io_mem_resp_bits[5]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_4_perm_u = io_mem_resp_bits[4]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_4_perm_x = io_mem_resp_bits[3]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_4_perm_w = io_mem_resp_bits[2]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_4_perm_r = io_mem_resp_bits[1]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_4_level = accessFault ? af_level : level; // @[PageTableWalker.scala 117:91]
  assign io_resp_bits_resp_entry_4_v = ~ptw_resp_pf; // @[MMUBundle.scala 1044:19]
  assign io_resp_bits_resp_entry_4_ppn = memPte_ppn[23:3]; // @[MMUBundle.scala 1037:28]
  assign io_resp_bits_resp_entry_4_ppn_low = memPte_ppn[2:0]; // @[MMUBundle.scala 1038:32]
  assign io_resp_bits_resp_entry_4_af = accessFault | ppn_af; // @[PageTableWalker.scala 117:77]
  assign io_resp_bits_resp_entry_4_pf = pageFault & ~accessFault & ~ppn_af; // @[PageTableWalker.scala 117:53]
  assign io_resp_bits_resp_entry_5_tag = vpn[26:3]; // @[MMUBundle.scala 1041:24]
  assign io_resp_bits_resp_entry_5_asid = io_csr_satp_asid; // @[MMUBundle.scala 1036:24 1046:19]
  assign io_resp_bits_resp_entry_5_perm_d = io_mem_resp_bits[7]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_5_perm_a = io_mem_resp_bits[6]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_5_perm_g = io_mem_resp_bits[5]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_5_perm_u = io_mem_resp_bits[4]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_5_perm_x = io_mem_resp_bits[3]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_5_perm_w = io_mem_resp_bits[2]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_5_perm_r = io_mem_resp_bits[1]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_5_level = accessFault ? af_level : level; // @[PageTableWalker.scala 117:91]
  assign io_resp_bits_resp_entry_5_v = ~ptw_resp_pf; // @[MMUBundle.scala 1044:19]
  assign io_resp_bits_resp_entry_5_ppn = memPte_ppn[23:3]; // @[MMUBundle.scala 1037:28]
  assign io_resp_bits_resp_entry_5_ppn_low = memPte_ppn[2:0]; // @[MMUBundle.scala 1038:32]
  assign io_resp_bits_resp_entry_5_af = accessFault | ppn_af; // @[PageTableWalker.scala 117:77]
  assign io_resp_bits_resp_entry_5_pf = pageFault & ~accessFault & ~ppn_af; // @[PageTableWalker.scala 117:53]
  assign io_resp_bits_resp_entry_6_tag = vpn[26:3]; // @[MMUBundle.scala 1041:24]
  assign io_resp_bits_resp_entry_6_asid = io_csr_satp_asid; // @[MMUBundle.scala 1036:24 1046:19]
  assign io_resp_bits_resp_entry_6_perm_d = io_mem_resp_bits[7]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_6_perm_a = io_mem_resp_bits[6]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_6_perm_g = io_mem_resp_bits[5]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_6_perm_u = io_mem_resp_bits[4]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_6_perm_x = io_mem_resp_bits[3]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_6_perm_w = io_mem_resp_bits[2]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_6_perm_r = io_mem_resp_bits[1]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_6_level = accessFault ? af_level : level; // @[PageTableWalker.scala 117:91]
  assign io_resp_bits_resp_entry_6_v = ~ptw_resp_pf; // @[MMUBundle.scala 1044:19]
  assign io_resp_bits_resp_entry_6_ppn = memPte_ppn[23:3]; // @[MMUBundle.scala 1037:28]
  assign io_resp_bits_resp_entry_6_ppn_low = memPte_ppn[2:0]; // @[MMUBundle.scala 1038:32]
  assign io_resp_bits_resp_entry_6_af = accessFault | ppn_af; // @[PageTableWalker.scala 117:77]
  assign io_resp_bits_resp_entry_6_pf = pageFault & ~accessFault & ~ppn_af; // @[PageTableWalker.scala 117:53]
  assign io_resp_bits_resp_entry_7_tag = vpn[26:3]; // @[MMUBundle.scala 1041:24]
  assign io_resp_bits_resp_entry_7_asid = io_csr_satp_asid; // @[MMUBundle.scala 1036:24 1046:19]
  assign io_resp_bits_resp_entry_7_perm_d = io_mem_resp_bits[7]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_7_perm_a = io_mem_resp_bits[6]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_7_perm_g = io_mem_resp_bits[5]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_7_perm_u = io_mem_resp_bits[4]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_7_perm_x = io_mem_resp_bits[3]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_7_perm_w = io_mem_resp_bits[2]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_7_perm_r = io_mem_resp_bits[1]; // @[PageTableWalker.scala 87:38]
  assign io_resp_bits_resp_entry_7_level = accessFault ? af_level : level; // @[PageTableWalker.scala 117:91]
  assign io_resp_bits_resp_entry_7_v = ~ptw_resp_pf; // @[MMUBundle.scala 1044:19]
  assign io_resp_bits_resp_entry_7_ppn = memPte_ppn[23:3]; // @[MMUBundle.scala 1037:28]
  assign io_resp_bits_resp_entry_7_ppn_low = memPte_ppn[2:0]; // @[MMUBundle.scala 1038:32]
  assign io_resp_bits_resp_entry_7_af = accessFault | ppn_af; // @[PageTableWalker.scala 117:77]
  assign io_resp_bits_resp_entry_7_pf = pageFault & ~accessFault & ~ppn_af; // @[PageTableWalker.scala 117:53]
  assign io_resp_bits_resp_pteidx_0 = _T_7[0]; // @[MMUBundle.scala 1047:39]
  assign io_resp_bits_resp_pteidx_1 = _T_7[1]; // @[MMUBundle.scala 1047:39]
  assign io_resp_bits_resp_pteidx_2 = _T_7[2]; // @[MMUBundle.scala 1047:39]
  assign io_resp_bits_resp_pteidx_3 = _T_7[3]; // @[MMUBundle.scala 1047:39]
  assign io_resp_bits_resp_pteidx_4 = _T_7[4]; // @[MMUBundle.scala 1047:39]
  assign io_resp_bits_resp_pteidx_5 = _T_7[5]; // @[MMUBundle.scala 1047:39]
  assign io_resp_bits_resp_pteidx_6 = _T_7[6]; // @[MMUBundle.scala 1047:39]
  assign io_resp_bits_resp_pteidx_7 = _T_7[7]; // @[MMUBundle.scala 1047:39]
  assign io_llptw_valid = ~s_llptw_req & to_find_pte & _T; // @[PageTableWalker.scala 119:60]
  assign io_llptw_bits_req_info_vpn = vpn; // @[PageTableWalker.scala 121:30]
  assign io_llptw_bits_req_info_source = source; // @[PageTableWalker.scala 120:33]
  assign io_mem_req_valid = ~s_mem_req & ~io_mem_mask & _T & s_pmp_check; // @[PageTableWalker.scala 129:71]
  assign io_mem_req_bits_addr = af_level == 2'h0 ? l1addr : l2addr; // @[PageTableWalker.scala 111:21]
  assign io_pmp_req_bits_addr = af_level == 2'h0 ? l1addr : l2addr; // @[PageTableWalker.scala 111:21]
  assign io_refill_req_info_vpn = vpn; // @[PageTableWalker.scala 133:26]
  assign io_refill_req_info_source = source; // @[PageTableWalker.scala 135:29]
  assign io_refill_level = level; // @[PageTableWalker.scala 134:19]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_5_value = {{5'd0}, io_perf_5_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_6_value = {{5'd0}, io_perf_6_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  always @(posedge clock) begin
    ppn <= _GEN_4[23:0];
    if (_source_T) begin // @[PageTableWalker.scala 137:23]
      vpn <= io_req_bits_req_info_vpn; // @[PageTableWalker.scala 142:9]
    end
    if (_source_T) begin // @[PageTableWalker.scala 137:23]
      l1Hit <= io_req_bits_l1Hit; // @[PageTableWalker.scala 143:11]
    end
    if (io_sfence_valid) begin // @[PageTableWalker.scala 199:23]
      accessFault <= 1'h0; // @[PageTableWalker.scala 205:17]
    end else if (mem_addr_update) begin // @[PageTableWalker.scala 174:24]
      if (level == 2'h0 & ~(find_pte | accessFault)) begin // @[PageTableWalker.scala 175:54]
        accessFault <= _GEN_7;
      end else if (io_llptw_valid) begin // @[PageTableWalker.scala 180:31]
        accessFault <= _GEN_7;
      end else begin
        accessFault <= _GEN_33;
      end
    end else begin
      accessFault <= _GEN_7;
    end
    if (_source_T) begin // @[Reg.scala 17:18]
      source <= io_req_bits_req_info_source; // @[Reg.scala 17:22]
    end
    io_perf_0_value_REG <= io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= ~idle; // @[PageTableWalker.scala 229:28]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= idle; // @[PerfCounterUtils.scala 295:35]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= io_resp_valid & _T_38; // @[PageTableWalker.scala 231:42]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= io_mem_req_ready & io_mem_req_valid; // @[Decoupled.scala 50:35]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_5_value_REG <= r_1; // @[PerfCounterUtils.scala 295:35]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_6_value_REG <= io_mem_req_valid & _T_44; // @[PageTableWalker.scala 234:42]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 174:24]
      level <= 2'h0; // @[PageTableWalker.scala 175:54 176:13]
    end else if (mem_addr_update) begin
      if (level == 2'h0 & ~(find_pte | accessFault)) begin
        level <= levelNext;
      end else begin
        level <= _GEN_2;
      end
    end else begin
      level <= _GEN_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 167:50]
      af_level <= 2'h0; // @[PageTableWalker.scala 169:14]
    end else if (io_mem_resp_valid & ~w_mem_resp) begin // @[PageTableWalker.scala 137:23]
      af_level <= _af_level_T_2; // @[PageTableWalker.scala 140:14]
    end else if (_source_T) begin // @[PageTableWalker.scala 82:25]
      af_level <= {{1'd0}, io_req_bits_l1Hit};
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 199:23]
      s_pmp_check <= 1'h1; // @[PageTableWalker.scala 201:17]
    end else begin
      s_pmp_check <= io_sfence_valid | _GEN_12;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 199:23]
      s_mem_req <= 1'h1; // @[PageTableWalker.scala 202:15]
    end else begin
      s_mem_req <= io_sfence_valid | _GEN_48;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 199:23]
      s_llptw_req <= 1'h1; // @[PageTableWalker.scala 203:17]
    end else begin
      s_llptw_req <= io_sfence_valid | _GEN_49;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 199:23]
      w_mem_resp <= 1'h1; // @[PageTableWalker.scala 204:16]
    end else begin
      w_mem_resp <= io_sfence_valid | _GEN_19;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 199:23]
      mem_addr_update <= 1'h0; // @[PageTableWalker.scala 206:21]
    end else if (io_sfence_valid) begin // @[PageTableWalker.scala 174:24]
      mem_addr_update <= 1'h0; // @[PageTableWalker.scala 175:54 179:23 180:31]
    end else if (mem_addr_update) begin
      if (level == 2'h0 & ~(find_pte | accessFault)) begin
        mem_addr_update <= 1'h0;
      end else if (io_llptw_valid) begin
        mem_addr_update <= _GEN_25;
      end else begin
        mem_addr_update <= _GEN_32;
      end
    end else begin
      mem_addr_update <= _GEN_22;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PageTableWalker.scala 199:23]
      idle <= 1'h1; // @[PageTableWalker.scala 200:10]
    end else begin
      idle <= io_sfence_valid | _GEN_51;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StopWatch.scala 26:20]
      r_1 <= 1'h0; // @[StopWatch.scala 26:24]
    end else begin
      r_1 <= _T_21 | _GEN_64;
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
  level = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  af_level = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  ppn = _RAND_2[23:0];
  _RAND_3 = {1{`RANDOM}};
  vpn = _RAND_3[26:0];
  _RAND_4 = {1{`RANDOM}};
  l1Hit = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  s_pmp_check = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s_mem_req = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s_llptw_req = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  w_mem_resp = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  mem_addr_update = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  idle = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  accessFault = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  source = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  r_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_27[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    level = 2'h0;
  end
  if (reset) begin
    af_level = 2'h0;
  end
  if (reset) begin
    s_pmp_check = 1'h1;
  end
  if (reset) begin
    s_mem_req = 1'h1;
  end
  if (reset) begin
    s_llptw_req = 1'h1;
  end
  if (reset) begin
    w_mem_resp = 1'h1;
  end
  if (reset) begin
    mem_addr_update = 1'h0;
  end
  if (reset) begin
    idle = 1'h1;
  end
  if (reset) begin
    r_1 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

