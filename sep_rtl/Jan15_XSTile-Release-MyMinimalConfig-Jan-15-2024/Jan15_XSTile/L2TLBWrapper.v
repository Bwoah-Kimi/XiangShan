module L2TLBWrapper(
  input          clock,
  input          reset,
  input          auto_out_a_ready,
  output         auto_out_a_valid,
  output [2:0]   auto_out_a_bits_source,
  output [35:0]  auto_out_a_bits_address,
  input          auto_out_d_valid,
  input  [2:0]   auto_out_d_bits_opcode,
  input  [2:0]   auto_out_d_bits_size,
  input  [2:0]   auto_out_d_bits_source,
  input  [255:0] auto_out_d_bits_data,
  output         io_tlb_0_req_0_ready,
  input          io_tlb_0_req_0_valid,
  input  [26:0]  io_tlb_0_req_0_bits_vpn,
  input          io_tlb_0_resp_ready,
  output         io_tlb_0_resp_valid,
  output [23:0]  io_tlb_0_resp_bits_entry_tag,
  output [15:0]  io_tlb_0_resp_bits_entry_asid,
  output         io_tlb_0_resp_bits_entry_perm_d,
  output         io_tlb_0_resp_bits_entry_perm_a,
  output         io_tlb_0_resp_bits_entry_perm_g,
  output         io_tlb_0_resp_bits_entry_perm_u,
  output         io_tlb_0_resp_bits_entry_perm_x,
  output         io_tlb_0_resp_bits_entry_perm_w,
  output         io_tlb_0_resp_bits_entry_perm_r,
  output [1:0]   io_tlb_0_resp_bits_entry_level,
  output [20:0]  io_tlb_0_resp_bits_entry_ppn,
  output [2:0]   io_tlb_0_resp_bits_ppn_low_0,
  output [2:0]   io_tlb_0_resp_bits_ppn_low_1,
  output [2:0]   io_tlb_0_resp_bits_ppn_low_2,
  output [2:0]   io_tlb_0_resp_bits_ppn_low_3,
  output [2:0]   io_tlb_0_resp_bits_ppn_low_4,
  output [2:0]   io_tlb_0_resp_bits_ppn_low_5,
  output [2:0]   io_tlb_0_resp_bits_ppn_low_6,
  output [2:0]   io_tlb_0_resp_bits_ppn_low_7,
  output         io_tlb_0_resp_bits_valididx_0,
  output         io_tlb_0_resp_bits_valididx_1,
  output         io_tlb_0_resp_bits_valididx_2,
  output         io_tlb_0_resp_bits_valididx_3,
  output         io_tlb_0_resp_bits_valididx_4,
  output         io_tlb_0_resp_bits_valididx_5,
  output         io_tlb_0_resp_bits_valididx_6,
  output         io_tlb_0_resp_bits_valididx_7,
  output         io_tlb_0_resp_bits_pteidx_0,
  output         io_tlb_0_resp_bits_pteidx_1,
  output         io_tlb_0_resp_bits_pteidx_2,
  output         io_tlb_0_resp_bits_pteidx_3,
  output         io_tlb_0_resp_bits_pteidx_4,
  output         io_tlb_0_resp_bits_pteidx_5,
  output         io_tlb_0_resp_bits_pteidx_6,
  output         io_tlb_0_resp_bits_pteidx_7,
  output         io_tlb_0_resp_bits_pf,
  output         io_tlb_0_resp_bits_af,
  output         io_tlb_1_req_0_ready,
  input          io_tlb_1_req_0_valid,
  input  [26:0]  io_tlb_1_req_0_bits_vpn,
  input          io_tlb_1_resp_ready,
  output         io_tlb_1_resp_valid,
  output [23:0]  io_tlb_1_resp_bits_entry_tag,
  output [15:0]  io_tlb_1_resp_bits_entry_asid,
  output         io_tlb_1_resp_bits_entry_perm_d,
  output         io_tlb_1_resp_bits_entry_perm_a,
  output         io_tlb_1_resp_bits_entry_perm_g,
  output         io_tlb_1_resp_bits_entry_perm_u,
  output         io_tlb_1_resp_bits_entry_perm_x,
  output         io_tlb_1_resp_bits_entry_perm_w,
  output         io_tlb_1_resp_bits_entry_perm_r,
  output [1:0]   io_tlb_1_resp_bits_entry_level,
  output [20:0]  io_tlb_1_resp_bits_entry_ppn,
  output [2:0]   io_tlb_1_resp_bits_ppn_low_0,
  output [2:0]   io_tlb_1_resp_bits_ppn_low_1,
  output [2:0]   io_tlb_1_resp_bits_ppn_low_2,
  output [2:0]   io_tlb_1_resp_bits_ppn_low_3,
  output [2:0]   io_tlb_1_resp_bits_ppn_low_4,
  output [2:0]   io_tlb_1_resp_bits_ppn_low_5,
  output [2:0]   io_tlb_1_resp_bits_ppn_low_6,
  output [2:0]   io_tlb_1_resp_bits_ppn_low_7,
  output         io_tlb_1_resp_bits_valididx_0,
  output         io_tlb_1_resp_bits_valididx_1,
  output         io_tlb_1_resp_bits_valididx_2,
  output         io_tlb_1_resp_bits_valididx_3,
  output         io_tlb_1_resp_bits_valididx_4,
  output         io_tlb_1_resp_bits_valididx_5,
  output         io_tlb_1_resp_bits_valididx_6,
  output         io_tlb_1_resp_bits_valididx_7,
  output         io_tlb_1_resp_bits_pteidx_0,
  output         io_tlb_1_resp_bits_pteidx_1,
  output         io_tlb_1_resp_bits_pteidx_2,
  output         io_tlb_1_resp_bits_pteidx_3,
  output         io_tlb_1_resp_bits_pteidx_4,
  output         io_tlb_1_resp_bits_pteidx_5,
  output         io_tlb_1_resp_bits_pteidx_6,
  output         io_tlb_1_resp_bits_pteidx_7,
  output         io_tlb_1_resp_bits_pf,
  output         io_tlb_1_resp_bits_af,
  input          io_sfence_valid,
  input          io_sfence_bits_rs1,
  input          io_sfence_bits_rs2,
  input  [38:0]  io_sfence_bits_addr,
  input  [15:0]  io_sfence_bits_asid,
  input  [15:0]  io_csr_tlb_satp_asid,
  input  [43:0]  io_csr_tlb_satp_ppn,
  input          io_csr_tlb_satp_changed,
  input          io_csr_distribute_csr_wvalid,
  input  [11:0]  io_csr_distribute_csr_waddr,
  input  [63:0]  io_csr_distribute_csr_wdata,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value,
  output [5:0]   io_perf_2_value,
  output [5:0]   io_perf_3_value,
  output [5:0]   io_perf_4_value,
  output [5:0]   io_perf_5_value,
  output [5:0]   io_perf_6_value,
  output [5:0]   io_perf_7_value,
  output [5:0]   io_perf_8_value,
  output [5:0]   io_perf_9_value,
  output [5:0]   io_perf_10_value,
  output [5:0]   io_perf_11_value,
  output [5:0]   io_perf_12_value,
  output [5:0]   io_perf_13_value,
  output [5:0]   io_perf_14_value,
  output [5:0]   io_perf_15_value,
  output [5:0]   io_perf_16_value,
  output [5:0]   io_perf_17_value,
  output [5:0]   io_perf_18_value
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
`endif // RANDOMIZE_REG_INIT
  wire  ptw_clock; // @[L2TLB.scala 675:40]
  wire  ptw_reset; // @[L2TLB.scala 675:40]
  wire  ptw_auto_out_a_ready; // @[L2TLB.scala 675:40]
  wire  ptw_auto_out_a_valid; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_auto_out_a_bits_source; // @[L2TLB.scala 675:40]
  wire [35:0] ptw_auto_out_a_bits_address; // @[L2TLB.scala 675:40]
  wire  ptw_auto_out_d_valid; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_auto_out_d_bits_opcode; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_auto_out_d_bits_size; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_auto_out_d_bits_source; // @[L2TLB.scala 675:40]
  wire [255:0] ptw_auto_out_d_bits_data; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_req_0_ready; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_req_0_valid; // @[L2TLB.scala 675:40]
  wire [26:0] ptw_io_tlb_0_req_0_bits_vpn; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_ready; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_valid; // @[L2TLB.scala 675:40]
  wire [23:0] ptw_io_tlb_0_resp_bits_entry_tag; // @[L2TLB.scala 675:40]
  wire [15:0] ptw_io_tlb_0_resp_bits_entry_asid; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_entry_perm_d; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_entry_perm_a; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_entry_perm_g; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_entry_perm_u; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_entry_perm_x; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_entry_perm_w; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_entry_perm_r; // @[L2TLB.scala 675:40]
  wire [1:0] ptw_io_tlb_0_resp_bits_entry_level; // @[L2TLB.scala 675:40]
  wire [20:0] ptw_io_tlb_0_resp_bits_entry_ppn; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_io_tlb_0_resp_bits_ppn_low_0; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_io_tlb_0_resp_bits_ppn_low_1; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_io_tlb_0_resp_bits_ppn_low_2; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_io_tlb_0_resp_bits_ppn_low_3; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_io_tlb_0_resp_bits_ppn_low_4; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_io_tlb_0_resp_bits_ppn_low_5; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_io_tlb_0_resp_bits_ppn_low_6; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_io_tlb_0_resp_bits_ppn_low_7; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_valididx_0; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_valididx_1; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_valididx_2; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_valididx_3; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_valididx_4; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_valididx_5; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_valididx_6; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_valididx_7; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_pteidx_0; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_pteidx_1; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_pteidx_2; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_pteidx_3; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_pteidx_4; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_pteidx_5; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_pteidx_6; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_pteidx_7; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_pf; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_0_resp_bits_af; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_req_0_ready; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_req_0_valid; // @[L2TLB.scala 675:40]
  wire [26:0] ptw_io_tlb_1_req_0_bits_vpn; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_ready; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_valid; // @[L2TLB.scala 675:40]
  wire [23:0] ptw_io_tlb_1_resp_bits_entry_tag; // @[L2TLB.scala 675:40]
  wire [15:0] ptw_io_tlb_1_resp_bits_entry_asid; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_entry_perm_d; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_entry_perm_a; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_entry_perm_g; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_entry_perm_u; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_entry_perm_x; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_entry_perm_w; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_entry_perm_r; // @[L2TLB.scala 675:40]
  wire [1:0] ptw_io_tlb_1_resp_bits_entry_level; // @[L2TLB.scala 675:40]
  wire [20:0] ptw_io_tlb_1_resp_bits_entry_ppn; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_io_tlb_1_resp_bits_ppn_low_0; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_io_tlb_1_resp_bits_ppn_low_1; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_io_tlb_1_resp_bits_ppn_low_2; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_io_tlb_1_resp_bits_ppn_low_3; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_io_tlb_1_resp_bits_ppn_low_4; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_io_tlb_1_resp_bits_ppn_low_5; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_io_tlb_1_resp_bits_ppn_low_6; // @[L2TLB.scala 675:40]
  wire [2:0] ptw_io_tlb_1_resp_bits_ppn_low_7; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_valididx_0; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_valididx_1; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_valididx_2; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_valididx_3; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_valididx_4; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_valididx_5; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_valididx_6; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_valididx_7; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_pteidx_0; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_pteidx_1; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_pteidx_2; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_pteidx_3; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_pteidx_4; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_pteidx_5; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_pteidx_6; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_pteidx_7; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_pf; // @[L2TLB.scala 675:40]
  wire  ptw_io_tlb_1_resp_bits_af; // @[L2TLB.scala 675:40]
  wire  ptw_io_sfence_valid; // @[L2TLB.scala 675:40]
  wire  ptw_io_sfence_bits_rs1; // @[L2TLB.scala 675:40]
  wire  ptw_io_sfence_bits_rs2; // @[L2TLB.scala 675:40]
  wire [38:0] ptw_io_sfence_bits_addr; // @[L2TLB.scala 675:40]
  wire [15:0] ptw_io_sfence_bits_asid; // @[L2TLB.scala 675:40]
  wire [15:0] ptw_io_csr_tlb_satp_asid; // @[L2TLB.scala 675:40]
  wire [43:0] ptw_io_csr_tlb_satp_ppn; // @[L2TLB.scala 675:40]
  wire  ptw_io_csr_tlb_satp_changed; // @[L2TLB.scala 675:40]
  wire  ptw_io_csr_distribute_csr_wvalid; // @[L2TLB.scala 675:40]
  wire [11:0] ptw_io_csr_distribute_csr_waddr; // @[L2TLB.scala 675:40]
  wire [63:0] ptw_io_csr_distribute_csr_wdata; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_0_value; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_1_value; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_2_value; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_3_value; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_4_value; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_5_value; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_6_value; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_7_value; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_8_value; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_9_value; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_10_value; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_11_value; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_12_value; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_13_value; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_14_value; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_15_value; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_16_value; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_17_value; // @[L2TLB.scala 675:40]
  wire [5:0] ptw_io_perf_18_value; // @[L2TLB.scala 675:40]
  reg [5:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_8_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_8_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_9_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_9_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_10_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_10_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_11_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_11_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_12_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_12_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_13_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_13_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_14_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_14_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_15_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_15_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_16_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_16_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_17_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_17_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_18_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_18_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  L2TLB ptw ( // @[L2TLB.scala 675:40]
    .clock(ptw_clock),
    .reset(ptw_reset),
    .auto_out_a_ready(ptw_auto_out_a_ready),
    .auto_out_a_valid(ptw_auto_out_a_valid),
    .auto_out_a_bits_source(ptw_auto_out_a_bits_source),
    .auto_out_a_bits_address(ptw_auto_out_a_bits_address),
    .auto_out_d_valid(ptw_auto_out_d_valid),
    .auto_out_d_bits_opcode(ptw_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(ptw_auto_out_d_bits_size),
    .auto_out_d_bits_source(ptw_auto_out_d_bits_source),
    .auto_out_d_bits_data(ptw_auto_out_d_bits_data),
    .io_tlb_0_req_0_ready(ptw_io_tlb_0_req_0_ready),
    .io_tlb_0_req_0_valid(ptw_io_tlb_0_req_0_valid),
    .io_tlb_0_req_0_bits_vpn(ptw_io_tlb_0_req_0_bits_vpn),
    .io_tlb_0_resp_ready(ptw_io_tlb_0_resp_ready),
    .io_tlb_0_resp_valid(ptw_io_tlb_0_resp_valid),
    .io_tlb_0_resp_bits_entry_tag(ptw_io_tlb_0_resp_bits_entry_tag),
    .io_tlb_0_resp_bits_entry_asid(ptw_io_tlb_0_resp_bits_entry_asid),
    .io_tlb_0_resp_bits_entry_perm_d(ptw_io_tlb_0_resp_bits_entry_perm_d),
    .io_tlb_0_resp_bits_entry_perm_a(ptw_io_tlb_0_resp_bits_entry_perm_a),
    .io_tlb_0_resp_bits_entry_perm_g(ptw_io_tlb_0_resp_bits_entry_perm_g),
    .io_tlb_0_resp_bits_entry_perm_u(ptw_io_tlb_0_resp_bits_entry_perm_u),
    .io_tlb_0_resp_bits_entry_perm_x(ptw_io_tlb_0_resp_bits_entry_perm_x),
    .io_tlb_0_resp_bits_entry_perm_w(ptw_io_tlb_0_resp_bits_entry_perm_w),
    .io_tlb_0_resp_bits_entry_perm_r(ptw_io_tlb_0_resp_bits_entry_perm_r),
    .io_tlb_0_resp_bits_entry_level(ptw_io_tlb_0_resp_bits_entry_level),
    .io_tlb_0_resp_bits_entry_ppn(ptw_io_tlb_0_resp_bits_entry_ppn),
    .io_tlb_0_resp_bits_ppn_low_0(ptw_io_tlb_0_resp_bits_ppn_low_0),
    .io_tlb_0_resp_bits_ppn_low_1(ptw_io_tlb_0_resp_bits_ppn_low_1),
    .io_tlb_0_resp_bits_ppn_low_2(ptw_io_tlb_0_resp_bits_ppn_low_2),
    .io_tlb_0_resp_bits_ppn_low_3(ptw_io_tlb_0_resp_bits_ppn_low_3),
    .io_tlb_0_resp_bits_ppn_low_4(ptw_io_tlb_0_resp_bits_ppn_low_4),
    .io_tlb_0_resp_bits_ppn_low_5(ptw_io_tlb_0_resp_bits_ppn_low_5),
    .io_tlb_0_resp_bits_ppn_low_6(ptw_io_tlb_0_resp_bits_ppn_low_6),
    .io_tlb_0_resp_bits_ppn_low_7(ptw_io_tlb_0_resp_bits_ppn_low_7),
    .io_tlb_0_resp_bits_valididx_0(ptw_io_tlb_0_resp_bits_valididx_0),
    .io_tlb_0_resp_bits_valididx_1(ptw_io_tlb_0_resp_bits_valididx_1),
    .io_tlb_0_resp_bits_valididx_2(ptw_io_tlb_0_resp_bits_valididx_2),
    .io_tlb_0_resp_bits_valididx_3(ptw_io_tlb_0_resp_bits_valididx_3),
    .io_tlb_0_resp_bits_valididx_4(ptw_io_tlb_0_resp_bits_valididx_4),
    .io_tlb_0_resp_bits_valididx_5(ptw_io_tlb_0_resp_bits_valididx_5),
    .io_tlb_0_resp_bits_valididx_6(ptw_io_tlb_0_resp_bits_valididx_6),
    .io_tlb_0_resp_bits_valididx_7(ptw_io_tlb_0_resp_bits_valididx_7),
    .io_tlb_0_resp_bits_pteidx_0(ptw_io_tlb_0_resp_bits_pteidx_0),
    .io_tlb_0_resp_bits_pteidx_1(ptw_io_tlb_0_resp_bits_pteidx_1),
    .io_tlb_0_resp_bits_pteidx_2(ptw_io_tlb_0_resp_bits_pteidx_2),
    .io_tlb_0_resp_bits_pteidx_3(ptw_io_tlb_0_resp_bits_pteidx_3),
    .io_tlb_0_resp_bits_pteidx_4(ptw_io_tlb_0_resp_bits_pteidx_4),
    .io_tlb_0_resp_bits_pteidx_5(ptw_io_tlb_0_resp_bits_pteidx_5),
    .io_tlb_0_resp_bits_pteidx_6(ptw_io_tlb_0_resp_bits_pteidx_6),
    .io_tlb_0_resp_bits_pteidx_7(ptw_io_tlb_0_resp_bits_pteidx_7),
    .io_tlb_0_resp_bits_pf(ptw_io_tlb_0_resp_bits_pf),
    .io_tlb_0_resp_bits_af(ptw_io_tlb_0_resp_bits_af),
    .io_tlb_1_req_0_ready(ptw_io_tlb_1_req_0_ready),
    .io_tlb_1_req_0_valid(ptw_io_tlb_1_req_0_valid),
    .io_tlb_1_req_0_bits_vpn(ptw_io_tlb_1_req_0_bits_vpn),
    .io_tlb_1_resp_ready(ptw_io_tlb_1_resp_ready),
    .io_tlb_1_resp_valid(ptw_io_tlb_1_resp_valid),
    .io_tlb_1_resp_bits_entry_tag(ptw_io_tlb_1_resp_bits_entry_tag),
    .io_tlb_1_resp_bits_entry_asid(ptw_io_tlb_1_resp_bits_entry_asid),
    .io_tlb_1_resp_bits_entry_perm_d(ptw_io_tlb_1_resp_bits_entry_perm_d),
    .io_tlb_1_resp_bits_entry_perm_a(ptw_io_tlb_1_resp_bits_entry_perm_a),
    .io_tlb_1_resp_bits_entry_perm_g(ptw_io_tlb_1_resp_bits_entry_perm_g),
    .io_tlb_1_resp_bits_entry_perm_u(ptw_io_tlb_1_resp_bits_entry_perm_u),
    .io_tlb_1_resp_bits_entry_perm_x(ptw_io_tlb_1_resp_bits_entry_perm_x),
    .io_tlb_1_resp_bits_entry_perm_w(ptw_io_tlb_1_resp_bits_entry_perm_w),
    .io_tlb_1_resp_bits_entry_perm_r(ptw_io_tlb_1_resp_bits_entry_perm_r),
    .io_tlb_1_resp_bits_entry_level(ptw_io_tlb_1_resp_bits_entry_level),
    .io_tlb_1_resp_bits_entry_ppn(ptw_io_tlb_1_resp_bits_entry_ppn),
    .io_tlb_1_resp_bits_ppn_low_0(ptw_io_tlb_1_resp_bits_ppn_low_0),
    .io_tlb_1_resp_bits_ppn_low_1(ptw_io_tlb_1_resp_bits_ppn_low_1),
    .io_tlb_1_resp_bits_ppn_low_2(ptw_io_tlb_1_resp_bits_ppn_low_2),
    .io_tlb_1_resp_bits_ppn_low_3(ptw_io_tlb_1_resp_bits_ppn_low_3),
    .io_tlb_1_resp_bits_ppn_low_4(ptw_io_tlb_1_resp_bits_ppn_low_4),
    .io_tlb_1_resp_bits_ppn_low_5(ptw_io_tlb_1_resp_bits_ppn_low_5),
    .io_tlb_1_resp_bits_ppn_low_6(ptw_io_tlb_1_resp_bits_ppn_low_6),
    .io_tlb_1_resp_bits_ppn_low_7(ptw_io_tlb_1_resp_bits_ppn_low_7),
    .io_tlb_1_resp_bits_valididx_0(ptw_io_tlb_1_resp_bits_valididx_0),
    .io_tlb_1_resp_bits_valididx_1(ptw_io_tlb_1_resp_bits_valididx_1),
    .io_tlb_1_resp_bits_valididx_2(ptw_io_tlb_1_resp_bits_valididx_2),
    .io_tlb_1_resp_bits_valididx_3(ptw_io_tlb_1_resp_bits_valididx_3),
    .io_tlb_1_resp_bits_valididx_4(ptw_io_tlb_1_resp_bits_valididx_4),
    .io_tlb_1_resp_bits_valididx_5(ptw_io_tlb_1_resp_bits_valididx_5),
    .io_tlb_1_resp_bits_valididx_6(ptw_io_tlb_1_resp_bits_valididx_6),
    .io_tlb_1_resp_bits_valididx_7(ptw_io_tlb_1_resp_bits_valididx_7),
    .io_tlb_1_resp_bits_pteidx_0(ptw_io_tlb_1_resp_bits_pteidx_0),
    .io_tlb_1_resp_bits_pteidx_1(ptw_io_tlb_1_resp_bits_pteidx_1),
    .io_tlb_1_resp_bits_pteidx_2(ptw_io_tlb_1_resp_bits_pteidx_2),
    .io_tlb_1_resp_bits_pteidx_3(ptw_io_tlb_1_resp_bits_pteidx_3),
    .io_tlb_1_resp_bits_pteidx_4(ptw_io_tlb_1_resp_bits_pteidx_4),
    .io_tlb_1_resp_bits_pteidx_5(ptw_io_tlb_1_resp_bits_pteidx_5),
    .io_tlb_1_resp_bits_pteidx_6(ptw_io_tlb_1_resp_bits_pteidx_6),
    .io_tlb_1_resp_bits_pteidx_7(ptw_io_tlb_1_resp_bits_pteidx_7),
    .io_tlb_1_resp_bits_pf(ptw_io_tlb_1_resp_bits_pf),
    .io_tlb_1_resp_bits_af(ptw_io_tlb_1_resp_bits_af),
    .io_sfence_valid(ptw_io_sfence_valid),
    .io_sfence_bits_rs1(ptw_io_sfence_bits_rs1),
    .io_sfence_bits_rs2(ptw_io_sfence_bits_rs2),
    .io_sfence_bits_addr(ptw_io_sfence_bits_addr),
    .io_sfence_bits_asid(ptw_io_sfence_bits_asid),
    .io_csr_tlb_satp_asid(ptw_io_csr_tlb_satp_asid),
    .io_csr_tlb_satp_ppn(ptw_io_csr_tlb_satp_ppn),
    .io_csr_tlb_satp_changed(ptw_io_csr_tlb_satp_changed),
    .io_csr_distribute_csr_wvalid(ptw_io_csr_distribute_csr_wvalid),
    .io_csr_distribute_csr_waddr(ptw_io_csr_distribute_csr_waddr),
    .io_csr_distribute_csr_wdata(ptw_io_csr_distribute_csr_wdata),
    .io_perf_0_value(ptw_io_perf_0_value),
    .io_perf_1_value(ptw_io_perf_1_value),
    .io_perf_2_value(ptw_io_perf_2_value),
    .io_perf_3_value(ptw_io_perf_3_value),
    .io_perf_4_value(ptw_io_perf_4_value),
    .io_perf_5_value(ptw_io_perf_5_value),
    .io_perf_6_value(ptw_io_perf_6_value),
    .io_perf_7_value(ptw_io_perf_7_value),
    .io_perf_8_value(ptw_io_perf_8_value),
    .io_perf_9_value(ptw_io_perf_9_value),
    .io_perf_10_value(ptw_io_perf_10_value),
    .io_perf_11_value(ptw_io_perf_11_value),
    .io_perf_12_value(ptw_io_perf_12_value),
    .io_perf_13_value(ptw_io_perf_13_value),
    .io_perf_14_value(ptw_io_perf_14_value),
    .io_perf_15_value(ptw_io_perf_15_value),
    .io_perf_16_value(ptw_io_perf_16_value),
    .io_perf_17_value(ptw_io_perf_17_value),
    .io_perf_18_value(ptw_io_perf_18_value)
  );
  assign auto_out_a_valid = ptw_auto_out_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_out_a_bits_source = ptw_auto_out_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_out_a_bits_address = ptw_auto_out_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign io_tlb_0_req_0_ready = ptw_io_tlb_0_req_0_ready; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_valid = ptw_io_tlb_0_resp_valid; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_entry_tag = ptw_io_tlb_0_resp_bits_entry_tag; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_entry_asid = ptw_io_tlb_0_resp_bits_entry_asid; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_entry_perm_d = ptw_io_tlb_0_resp_bits_entry_perm_d; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_entry_perm_a = ptw_io_tlb_0_resp_bits_entry_perm_a; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_entry_perm_g = ptw_io_tlb_0_resp_bits_entry_perm_g; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_entry_perm_u = ptw_io_tlb_0_resp_bits_entry_perm_u; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_entry_perm_x = ptw_io_tlb_0_resp_bits_entry_perm_x; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_entry_perm_w = ptw_io_tlb_0_resp_bits_entry_perm_w; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_entry_perm_r = ptw_io_tlb_0_resp_bits_entry_perm_r; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_entry_level = ptw_io_tlb_0_resp_bits_entry_level; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_entry_ppn = ptw_io_tlb_0_resp_bits_entry_ppn; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_ppn_low_0 = ptw_io_tlb_0_resp_bits_ppn_low_0; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_ppn_low_1 = ptw_io_tlb_0_resp_bits_ppn_low_1; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_ppn_low_2 = ptw_io_tlb_0_resp_bits_ppn_low_2; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_ppn_low_3 = ptw_io_tlb_0_resp_bits_ppn_low_3; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_ppn_low_4 = ptw_io_tlb_0_resp_bits_ppn_low_4; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_ppn_low_5 = ptw_io_tlb_0_resp_bits_ppn_low_5; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_ppn_low_6 = ptw_io_tlb_0_resp_bits_ppn_low_6; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_ppn_low_7 = ptw_io_tlb_0_resp_bits_ppn_low_7; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_valididx_0 = ptw_io_tlb_0_resp_bits_valididx_0; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_valididx_1 = ptw_io_tlb_0_resp_bits_valididx_1; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_valididx_2 = ptw_io_tlb_0_resp_bits_valididx_2; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_valididx_3 = ptw_io_tlb_0_resp_bits_valididx_3; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_valididx_4 = ptw_io_tlb_0_resp_bits_valididx_4; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_valididx_5 = ptw_io_tlb_0_resp_bits_valididx_5; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_valididx_6 = ptw_io_tlb_0_resp_bits_valididx_6; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_valididx_7 = ptw_io_tlb_0_resp_bits_valididx_7; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_pteidx_0 = ptw_io_tlb_0_resp_bits_pteidx_0; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_pteidx_1 = ptw_io_tlb_0_resp_bits_pteidx_1; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_pteidx_2 = ptw_io_tlb_0_resp_bits_pteidx_2; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_pteidx_3 = ptw_io_tlb_0_resp_bits_pteidx_3; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_pteidx_4 = ptw_io_tlb_0_resp_bits_pteidx_4; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_pteidx_5 = ptw_io_tlb_0_resp_bits_pteidx_5; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_pteidx_6 = ptw_io_tlb_0_resp_bits_pteidx_6; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_pteidx_7 = ptw_io_tlb_0_resp_bits_pteidx_7; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_pf = ptw_io_tlb_0_resp_bits_pf; // @[L2TLB.scala 688:12]
  assign io_tlb_0_resp_bits_af = ptw_io_tlb_0_resp_bits_af; // @[L2TLB.scala 688:12]
  assign io_tlb_1_req_0_ready = ptw_io_tlb_1_req_0_ready; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_valid = ptw_io_tlb_1_resp_valid; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_entry_tag = ptw_io_tlb_1_resp_bits_entry_tag; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_entry_asid = ptw_io_tlb_1_resp_bits_entry_asid; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_entry_perm_d = ptw_io_tlb_1_resp_bits_entry_perm_d; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_entry_perm_a = ptw_io_tlb_1_resp_bits_entry_perm_a; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_entry_perm_g = ptw_io_tlb_1_resp_bits_entry_perm_g; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_entry_perm_u = ptw_io_tlb_1_resp_bits_entry_perm_u; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_entry_perm_x = ptw_io_tlb_1_resp_bits_entry_perm_x; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_entry_perm_w = ptw_io_tlb_1_resp_bits_entry_perm_w; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_entry_perm_r = ptw_io_tlb_1_resp_bits_entry_perm_r; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_entry_level = ptw_io_tlb_1_resp_bits_entry_level; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_entry_ppn = ptw_io_tlb_1_resp_bits_entry_ppn; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_ppn_low_0 = ptw_io_tlb_1_resp_bits_ppn_low_0; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_ppn_low_1 = ptw_io_tlb_1_resp_bits_ppn_low_1; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_ppn_low_2 = ptw_io_tlb_1_resp_bits_ppn_low_2; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_ppn_low_3 = ptw_io_tlb_1_resp_bits_ppn_low_3; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_ppn_low_4 = ptw_io_tlb_1_resp_bits_ppn_low_4; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_ppn_low_5 = ptw_io_tlb_1_resp_bits_ppn_low_5; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_ppn_low_6 = ptw_io_tlb_1_resp_bits_ppn_low_6; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_ppn_low_7 = ptw_io_tlb_1_resp_bits_ppn_low_7; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_valididx_0 = ptw_io_tlb_1_resp_bits_valididx_0; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_valididx_1 = ptw_io_tlb_1_resp_bits_valididx_1; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_valididx_2 = ptw_io_tlb_1_resp_bits_valididx_2; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_valididx_3 = ptw_io_tlb_1_resp_bits_valididx_3; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_valididx_4 = ptw_io_tlb_1_resp_bits_valididx_4; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_valididx_5 = ptw_io_tlb_1_resp_bits_valididx_5; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_valididx_6 = ptw_io_tlb_1_resp_bits_valididx_6; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_valididx_7 = ptw_io_tlb_1_resp_bits_valididx_7; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_pteidx_0 = ptw_io_tlb_1_resp_bits_pteidx_0; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_pteidx_1 = ptw_io_tlb_1_resp_bits_pteidx_1; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_pteidx_2 = ptw_io_tlb_1_resp_bits_pteidx_2; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_pteidx_3 = ptw_io_tlb_1_resp_bits_pteidx_3; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_pteidx_4 = ptw_io_tlb_1_resp_bits_pteidx_4; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_pteidx_5 = ptw_io_tlb_1_resp_bits_pteidx_5; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_pteidx_6 = ptw_io_tlb_1_resp_bits_pteidx_6; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_pteidx_7 = ptw_io_tlb_1_resp_bits_pteidx_7; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_pf = ptw_io_tlb_1_resp_bits_pf; // @[L2TLB.scala 688:12]
  assign io_tlb_1_resp_bits_af = ptw_io_tlb_1_resp_bits_af; // @[L2TLB.scala 688:12]
  assign io_perf_0_value = io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_4_value = io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_5_value = io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_6_value = io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_7_value = io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_8_value = io_perf_8_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_9_value = io_perf_9_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_10_value = io_perf_10_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_11_value = io_perf_11_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_12_value = io_perf_12_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_13_value = io_perf_13_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_14_value = io_perf_14_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_15_value = io_perf_15_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_16_value = io_perf_16_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_17_value = io_perf_17_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_18_value = io_perf_18_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign ptw_clock = clock;
  assign ptw_reset = reset;
  assign ptw_auto_out_a_ready = auto_out_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign ptw_auto_out_d_valid = auto_out_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign ptw_auto_out_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign ptw_auto_out_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign ptw_auto_out_d_bits_source = auto_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign ptw_auto_out_d_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign ptw_io_tlb_0_req_0_valid = io_tlb_0_req_0_valid; // @[L2TLB.scala 688:12]
  assign ptw_io_tlb_0_req_0_bits_vpn = io_tlb_0_req_0_bits_vpn; // @[L2TLB.scala 688:12]
  assign ptw_io_tlb_0_resp_ready = io_tlb_0_resp_ready; // @[L2TLB.scala 688:12]
  assign ptw_io_tlb_1_req_0_valid = io_tlb_1_req_0_valid; // @[L2TLB.scala 688:12]
  assign ptw_io_tlb_1_req_0_bits_vpn = io_tlb_1_req_0_bits_vpn; // @[L2TLB.scala 688:12]
  assign ptw_io_tlb_1_resp_ready = io_tlb_1_resp_ready; // @[L2TLB.scala 688:12]
  assign ptw_io_sfence_valid = io_sfence_valid; // @[L2TLB.scala 688:12]
  assign ptw_io_sfence_bits_rs1 = io_sfence_bits_rs1; // @[L2TLB.scala 688:12]
  assign ptw_io_sfence_bits_rs2 = io_sfence_bits_rs2; // @[L2TLB.scala 688:12]
  assign ptw_io_sfence_bits_addr = io_sfence_bits_addr; // @[L2TLB.scala 688:12]
  assign ptw_io_sfence_bits_asid = io_sfence_bits_asid; // @[L2TLB.scala 688:12]
  assign ptw_io_csr_tlb_satp_asid = io_csr_tlb_satp_asid; // @[L2TLB.scala 688:12]
  assign ptw_io_csr_tlb_satp_ppn = io_csr_tlb_satp_ppn; // @[L2TLB.scala 688:12]
  assign ptw_io_csr_tlb_satp_changed = io_csr_tlb_satp_changed; // @[L2TLB.scala 688:12]
  assign ptw_io_csr_distribute_csr_wvalid = io_csr_distribute_csr_wvalid; // @[L2TLB.scala 688:12]
  assign ptw_io_csr_distribute_csr_waddr = io_csr_distribute_csr_waddr; // @[L2TLB.scala 688:12]
  assign ptw_io_csr_distribute_csr_wdata = io_csr_distribute_csr_wdata; // @[L2TLB.scala 688:12]
  always @(posedge clock) begin
    io_perf_0_value_REG <= ptw_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= ptw_io_perf_1_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= ptw_io_perf_2_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= ptw_io_perf_3_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= ptw_io_perf_4_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_5_value_REG <= ptw_io_perf_5_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_6_value_REG <= ptw_io_perf_6_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_7_value_REG <= ptw_io_perf_7_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_8_value_REG <= ptw_io_perf_8_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_8_value_REG_1 <= io_perf_8_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_9_value_REG <= ptw_io_perf_9_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_9_value_REG_1 <= io_perf_9_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_10_value_REG <= ptw_io_perf_10_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_10_value_REG_1 <= io_perf_10_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_11_value_REG <= ptw_io_perf_11_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_11_value_REG_1 <= io_perf_11_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_12_value_REG <= ptw_io_perf_12_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_12_value_REG_1 <= io_perf_12_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_13_value_REG <= ptw_io_perf_13_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_13_value_REG_1 <= io_perf_13_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_14_value_REG <= ptw_io_perf_14_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_14_value_REG_1 <= io_perf_14_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_15_value_REG <= ptw_io_perf_15_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_15_value_REG_1 <= io_perf_15_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_16_value_REG <= ptw_io_perf_16_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_16_value_REG_1 <= io_perf_16_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_17_value_REG <= ptw_io_perf_17_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_17_value_REG_1 <= io_perf_17_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_18_value_REG <= ptw_io_perf_18_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_18_value_REG_1 <= io_perf_18_value_REG; // @[PerfCounterUtils.scala 295:27]
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
  io_perf_0_value_REG = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  io_perf_8_value_REG = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  io_perf_8_value_REG_1 = _RAND_17[5:0];
  _RAND_18 = {1{`RANDOM}};
  io_perf_9_value_REG = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  io_perf_9_value_REG_1 = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  io_perf_10_value_REG = _RAND_20[5:0];
  _RAND_21 = {1{`RANDOM}};
  io_perf_10_value_REG_1 = _RAND_21[5:0];
  _RAND_22 = {1{`RANDOM}};
  io_perf_11_value_REG = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  io_perf_11_value_REG_1 = _RAND_23[5:0];
  _RAND_24 = {1{`RANDOM}};
  io_perf_12_value_REG = _RAND_24[5:0];
  _RAND_25 = {1{`RANDOM}};
  io_perf_12_value_REG_1 = _RAND_25[5:0];
  _RAND_26 = {1{`RANDOM}};
  io_perf_13_value_REG = _RAND_26[5:0];
  _RAND_27 = {1{`RANDOM}};
  io_perf_13_value_REG_1 = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  io_perf_14_value_REG = _RAND_28[5:0];
  _RAND_29 = {1{`RANDOM}};
  io_perf_14_value_REG_1 = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  io_perf_15_value_REG = _RAND_30[5:0];
  _RAND_31 = {1{`RANDOM}};
  io_perf_15_value_REG_1 = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  io_perf_16_value_REG = _RAND_32[5:0];
  _RAND_33 = {1{`RANDOM}};
  io_perf_16_value_REG_1 = _RAND_33[5:0];
  _RAND_34 = {1{`RANDOM}};
  io_perf_17_value_REG = _RAND_34[5:0];
  _RAND_35 = {1{`RANDOM}};
  io_perf_17_value_REG_1 = _RAND_35[5:0];
  _RAND_36 = {1{`RANDOM}};
  io_perf_18_value_REG = _RAND_36[5:0];
  _RAND_37 = {1{`RANDOM}};
  io_perf_18_value_REG_1 = _RAND_37[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

