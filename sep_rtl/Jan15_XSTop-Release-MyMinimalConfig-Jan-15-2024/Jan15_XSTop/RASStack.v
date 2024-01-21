module RASStack(
  input         clock,
  input         reset,
  input         io_push_valid,
  input         io_pop_valid,
  input  [38:0] io_spec_new_addr,
  input  [4:0]  io_recover_sp,
  input  [38:0] io_recover_top_retAddr,
  input  [7:0]  io_recover_top_ctr,
  input         io_recover_valid,
  input         io_recover_push,
  input         io_recover_pop,
  input  [38:0] io_recover_new_addr,
  output [4:0]  io_sp,
  output [38:0] io_top_retAddr,
  output [7:0]  io_top_ctr
);
`ifdef RANDOMIZE_MEM_INIT
  reg [63:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  reg [38:0] stack_retAddr [0:31]; // @[RAS.scala 74:20]
  wire  stack_retAddr_top_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_top_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_top_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_0_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_0_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_0_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_1_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_1_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_1_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_2_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_2_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_2_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_3_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_3_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_3_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_4_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_4_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_4_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_5_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_5_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_5_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_6_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_6_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_6_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_7_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_7_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_7_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_8_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_8_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_8_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_9_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_9_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_9_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_10_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_10_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_10_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_11_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_11_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_11_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_12_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_12_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_12_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_13_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_13_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_13_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_14_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_14_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_14_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_15_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_15_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_15_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_16_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_16_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_16_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_17_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_17_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_17_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_18_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_18_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_18_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_19_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_19_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_19_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_20_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_20_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_20_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_21_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_21_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_21_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_22_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_22_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_22_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_23_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_23_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_23_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_24_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_24_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_24_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_25_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_25_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_25_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_26_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_26_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_26_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_27_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_27_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_27_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_28_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_28_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_28_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_29_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_29_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_29_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_30_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_30_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_30_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_retAddr_debugIO_out_mem_31_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_debugIO_out_mem_31_MPORT_addr; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_debugIO_out_mem_31_MPORT_data; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_MPORT_data; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_MPORT_addr; // @[RAS.scala 74:20]
  wire  stack_retAddr_MPORT_mask; // @[RAS.scala 74:20]
  wire  stack_retAddr_MPORT_en; // @[RAS.scala 74:20]
  wire [38:0] stack_retAddr_MPORT_1_data; // @[RAS.scala 74:20]
  wire [4:0] stack_retAddr_MPORT_1_addr; // @[RAS.scala 74:20]
  wire  stack_retAddr_MPORT_1_mask; // @[RAS.scala 74:20]
  wire  stack_retAddr_MPORT_1_en; // @[RAS.scala 74:20]
  reg [7:0] stack_ctr [0:31]; // @[RAS.scala 74:20]
  wire  stack_ctr_top_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_top_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_top_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_0_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_0_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_0_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_1_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_1_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_1_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_2_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_2_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_2_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_3_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_3_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_3_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_4_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_4_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_4_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_5_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_5_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_5_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_6_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_6_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_6_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_7_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_7_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_7_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_8_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_8_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_8_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_9_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_9_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_9_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_10_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_10_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_10_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_11_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_11_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_11_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_12_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_12_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_12_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_13_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_13_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_13_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_14_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_14_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_14_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_15_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_15_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_15_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_16_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_16_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_16_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_17_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_17_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_17_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_18_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_18_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_18_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_19_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_19_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_19_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_20_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_20_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_20_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_21_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_21_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_21_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_22_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_22_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_22_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_23_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_23_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_23_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_24_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_24_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_24_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_25_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_25_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_25_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_26_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_26_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_26_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_27_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_27_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_27_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_28_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_28_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_28_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_29_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_29_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_29_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_30_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_30_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_30_MPORT_data; // @[RAS.scala 74:20]
  wire  stack_ctr_debugIO_out_mem_31_MPORT_en; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_debugIO_out_mem_31_MPORT_addr; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_debugIO_out_mem_31_MPORT_data; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_MPORT_data; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_MPORT_addr; // @[RAS.scala 74:20]
  wire  stack_ctr_MPORT_mask; // @[RAS.scala 74:20]
  wire  stack_ctr_MPORT_en; // @[RAS.scala 74:20]
  wire [7:0] stack_ctr_MPORT_1_data; // @[RAS.scala 74:20]
  wire [4:0] stack_ctr_MPORT_1_addr; // @[RAS.scala 74:20]
  wire  stack_ctr_MPORT_1_mask; // @[RAS.scala 74:20]
  wire  stack_ctr_MPORT_1_en; // @[RAS.scala 74:20]
  reg [4:0] sp; // @[RAS.scala 75:21]
  reg [38:0] top_retAddr; // @[RAS.scala 76:22]
  reg [7:0] top_ctr; // @[RAS.scala 76:22]
  reg [4:0] topPtr; // @[RAS.scala 77:25]
  reg [38:0] write_bypass_entry_retAddr; // @[RAS.scala 80:37]
  reg [7:0] write_bypass_entry_ctr; // @[RAS.scala 80:37]
  reg [4:0] write_bypass_ptr; // @[RAS.scala 81:35]
  reg  write_bypass_valid; // @[RAS.scala 82:37]
  wire  _GEN_0 = write_bypass_valid ? 1'h0 : write_bypass_valid; // @[RAS.scala 85:37 86:26 82:37]
  wire  _T = io_recover_valid ? io_recover_push : io_push_valid; // @[RAS.scala 162:10]
  wire  recover_alloc_new = io_recover_new_addr != io_recover_top_retAddr | &io_recover_top_ctr; // @[RAS.scala 97:76]
  wire  spec_alloc_new = io_spec_new_addr != top_retAddr | &top_ctr; // @[RAS.scala 96:59]
  wire  _T_2 = io_recover_valid ? recover_alloc_new : spec_alloc_new; // @[RAS.scala 164:10]
  wire  _T_1 = io_recover_valid ? io_recover_pop : io_pop_valid; // @[RAS.scala 163:10]
  wire [7:0] _T_8_ctr = io_recover_valid ? io_recover_top_ctr : top_ctr; // @[RAS.scala 168:10]
  wire  _T_9 = _T_8_ctr == 8'h0; // @[RAS.scala 126:26]
  wire  _GEN_26 = _T_8_ctr == 8'h0 ? 1'h0 : 1'h1; // @[RAS.scala 126:35 143:15]
  wire  _GEN_42 = _T_1 ? _GEN_26 : io_recover_valid; // @[RAS.scala 125:27]
  wire  wen = _T | _GEN_42; // @[RAS.scala 103:22]
  wire [4:0] _T_3 = io_recover_valid ? io_recover_sp : sp; // @[RAS.scala 165:10]
  wire [4:0] _T_5 = io_recover_sp - 5'h1; // @[RAS.scala 166:43]
  wire [4:0] _T_6 = io_recover_valid ? _T_5 : topPtr; // @[RAS.scala 166:10]
  wire [38:0] write_bypass_entry_e_2_retAddr = io_recover_valid ? io_recover_top_retAddr : top_retAddr; // @[RAS.scala 168:10]
  wire [4:0] _sp_T_2 = _T_3 + 5'h1; // @[RAS.scala 93:65]
  wire [4:0] _GEN_8 = io_recover_valid ? _T_3 : sp; // @[RAS.scala 114:26 115:16 75:21]
  wire [4:0] _GEN_9 = io_recover_valid ? _T_6 : topPtr; // @[RAS.scala 114:26 116:20 77:25]
  wire [38:0] _GEN_10 = io_recover_valid ? write_bypass_entry_e_2_retAddr : top_retAddr; // @[RAS.scala 114:26 117:25 76:22]
  wire [7:0] _top_ctr_T_1 = _T_8_ctr + 8'h1; // @[RAS.scala 119:33]
  wire [4:0] _sp_T_6 = _T_3 - 5'h1; // @[RAS.scala 94:65]
  wire  _topPtr_T = _T_6 == 5'h0; // @[RAS.scala 94:37]
  wire [4:0] _topPtr_T_2 = _T_6 - 5'h1; // @[RAS.scala 94:65]
  wire [4:0] _topPtr_T_3 = _T_6 == 5'h0 ? 5'h1f : _topPtr_T_2; // @[RAS.scala 94:32]
  wire [7:0] _top_ctr_T_3 = _T_8_ctr - 8'h1; // @[RAS.scala 141:33]
  wire  _GEN_39 = _T_1 & _T_9; // @[RAS.scala 125:27 74:20]
  reg [4:0] resetIdx; // @[RAS.scala 173:27]
  reg  do_reset; // @[RAS.scala 174:27]
  wire [4:0] _GEN_64 = {{4'd0}, do_reset}; // @[RAS.scala 178:26]
  assign stack_retAddr_top_MPORT_en = _T ? 1'h0 : _GEN_39;
  assign stack_retAddr_top_MPORT_addr = _topPtr_T ? 5'h1f : _topPtr_T_2;
  assign stack_retAddr_top_MPORT_data = stack_retAddr[stack_retAddr_top_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_0_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_0_MPORT_addr = 5'h0;
  assign stack_retAddr_debugIO_out_mem_0_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_0_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_1_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_1_MPORT_addr = 5'h1;
  assign stack_retAddr_debugIO_out_mem_1_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_1_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_2_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_2_MPORT_addr = 5'h2;
  assign stack_retAddr_debugIO_out_mem_2_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_2_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_3_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_3_MPORT_addr = 5'h3;
  assign stack_retAddr_debugIO_out_mem_3_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_3_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_4_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_4_MPORT_addr = 5'h4;
  assign stack_retAddr_debugIO_out_mem_4_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_4_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_5_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_5_MPORT_addr = 5'h5;
  assign stack_retAddr_debugIO_out_mem_5_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_5_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_6_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_6_MPORT_addr = 5'h6;
  assign stack_retAddr_debugIO_out_mem_6_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_6_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_7_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_7_MPORT_addr = 5'h7;
  assign stack_retAddr_debugIO_out_mem_7_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_7_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_8_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_8_MPORT_addr = 5'h8;
  assign stack_retAddr_debugIO_out_mem_8_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_8_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_9_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_9_MPORT_addr = 5'h9;
  assign stack_retAddr_debugIO_out_mem_9_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_9_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_10_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_10_MPORT_addr = 5'ha;
  assign stack_retAddr_debugIO_out_mem_10_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_10_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_11_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_11_MPORT_addr = 5'hb;
  assign stack_retAddr_debugIO_out_mem_11_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_11_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_12_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_12_MPORT_addr = 5'hc;
  assign stack_retAddr_debugIO_out_mem_12_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_12_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_13_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_13_MPORT_addr = 5'hd;
  assign stack_retAddr_debugIO_out_mem_13_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_13_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_14_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_14_MPORT_addr = 5'he;
  assign stack_retAddr_debugIO_out_mem_14_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_14_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_15_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_15_MPORT_addr = 5'hf;
  assign stack_retAddr_debugIO_out_mem_15_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_15_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_16_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_16_MPORT_addr = 5'h10;
  assign stack_retAddr_debugIO_out_mem_16_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_16_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_17_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_17_MPORT_addr = 5'h11;
  assign stack_retAddr_debugIO_out_mem_17_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_17_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_18_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_18_MPORT_addr = 5'h12;
  assign stack_retAddr_debugIO_out_mem_18_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_18_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_19_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_19_MPORT_addr = 5'h13;
  assign stack_retAddr_debugIO_out_mem_19_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_19_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_20_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_20_MPORT_addr = 5'h14;
  assign stack_retAddr_debugIO_out_mem_20_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_20_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_21_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_21_MPORT_addr = 5'h15;
  assign stack_retAddr_debugIO_out_mem_21_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_21_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_22_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_22_MPORT_addr = 5'h16;
  assign stack_retAddr_debugIO_out_mem_22_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_22_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_23_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_23_MPORT_addr = 5'h17;
  assign stack_retAddr_debugIO_out_mem_23_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_23_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_24_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_24_MPORT_addr = 5'h18;
  assign stack_retAddr_debugIO_out_mem_24_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_24_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_25_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_25_MPORT_addr = 5'h19;
  assign stack_retAddr_debugIO_out_mem_25_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_25_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_26_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_26_MPORT_addr = 5'h1a;
  assign stack_retAddr_debugIO_out_mem_26_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_26_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_27_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_27_MPORT_addr = 5'h1b;
  assign stack_retAddr_debugIO_out_mem_27_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_27_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_28_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_28_MPORT_addr = 5'h1c;
  assign stack_retAddr_debugIO_out_mem_28_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_28_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_29_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_29_MPORT_addr = 5'h1d;
  assign stack_retAddr_debugIO_out_mem_29_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_29_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_30_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_30_MPORT_addr = 5'h1e;
  assign stack_retAddr_debugIO_out_mem_30_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_30_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_debugIO_out_mem_31_MPORT_en = 1'h1;
  assign stack_retAddr_debugIO_out_mem_31_MPORT_addr = 5'h1f;
  assign stack_retAddr_debugIO_out_mem_31_MPORT_data = stack_retAddr[stack_retAddr_debugIO_out_mem_31_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_retAddr_MPORT_data = write_bypass_entry_retAddr;
  assign stack_retAddr_MPORT_addr = write_bypass_ptr;
  assign stack_retAddr_MPORT_mask = 1'h1;
  assign stack_retAddr_MPORT_en = write_bypass_valid;
  assign stack_retAddr_MPORT_1_data = 39'h80000000;
  assign stack_retAddr_MPORT_1_addr = resetIdx;
  assign stack_retAddr_MPORT_1_mask = 1'h1;
  assign stack_retAddr_MPORT_1_en = do_reset;
  assign stack_ctr_top_MPORT_en = _T ? 1'h0 : _GEN_39;
  assign stack_ctr_top_MPORT_addr = _topPtr_T ? 5'h1f : _topPtr_T_2;
  assign stack_ctr_top_MPORT_data = stack_ctr[stack_ctr_top_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_0_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_0_MPORT_addr = 5'h0;
  assign stack_ctr_debugIO_out_mem_0_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_0_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_1_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_1_MPORT_addr = 5'h1;
  assign stack_ctr_debugIO_out_mem_1_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_1_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_2_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_2_MPORT_addr = 5'h2;
  assign stack_ctr_debugIO_out_mem_2_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_2_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_3_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_3_MPORT_addr = 5'h3;
  assign stack_ctr_debugIO_out_mem_3_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_3_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_4_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_4_MPORT_addr = 5'h4;
  assign stack_ctr_debugIO_out_mem_4_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_4_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_5_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_5_MPORT_addr = 5'h5;
  assign stack_ctr_debugIO_out_mem_5_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_5_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_6_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_6_MPORT_addr = 5'h6;
  assign stack_ctr_debugIO_out_mem_6_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_6_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_7_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_7_MPORT_addr = 5'h7;
  assign stack_ctr_debugIO_out_mem_7_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_7_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_8_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_8_MPORT_addr = 5'h8;
  assign stack_ctr_debugIO_out_mem_8_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_8_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_9_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_9_MPORT_addr = 5'h9;
  assign stack_ctr_debugIO_out_mem_9_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_9_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_10_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_10_MPORT_addr = 5'ha;
  assign stack_ctr_debugIO_out_mem_10_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_10_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_11_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_11_MPORT_addr = 5'hb;
  assign stack_ctr_debugIO_out_mem_11_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_11_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_12_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_12_MPORT_addr = 5'hc;
  assign stack_ctr_debugIO_out_mem_12_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_12_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_13_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_13_MPORT_addr = 5'hd;
  assign stack_ctr_debugIO_out_mem_13_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_13_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_14_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_14_MPORT_addr = 5'he;
  assign stack_ctr_debugIO_out_mem_14_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_14_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_15_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_15_MPORT_addr = 5'hf;
  assign stack_ctr_debugIO_out_mem_15_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_15_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_16_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_16_MPORT_addr = 5'h10;
  assign stack_ctr_debugIO_out_mem_16_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_16_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_17_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_17_MPORT_addr = 5'h11;
  assign stack_ctr_debugIO_out_mem_17_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_17_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_18_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_18_MPORT_addr = 5'h12;
  assign stack_ctr_debugIO_out_mem_18_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_18_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_19_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_19_MPORT_addr = 5'h13;
  assign stack_ctr_debugIO_out_mem_19_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_19_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_20_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_20_MPORT_addr = 5'h14;
  assign stack_ctr_debugIO_out_mem_20_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_20_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_21_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_21_MPORT_addr = 5'h15;
  assign stack_ctr_debugIO_out_mem_21_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_21_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_22_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_22_MPORT_addr = 5'h16;
  assign stack_ctr_debugIO_out_mem_22_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_22_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_23_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_23_MPORT_addr = 5'h17;
  assign stack_ctr_debugIO_out_mem_23_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_23_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_24_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_24_MPORT_addr = 5'h18;
  assign stack_ctr_debugIO_out_mem_24_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_24_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_25_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_25_MPORT_addr = 5'h19;
  assign stack_ctr_debugIO_out_mem_25_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_25_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_26_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_26_MPORT_addr = 5'h1a;
  assign stack_ctr_debugIO_out_mem_26_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_26_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_27_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_27_MPORT_addr = 5'h1b;
  assign stack_ctr_debugIO_out_mem_27_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_27_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_28_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_28_MPORT_addr = 5'h1c;
  assign stack_ctr_debugIO_out_mem_28_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_28_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_29_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_29_MPORT_addr = 5'h1d;
  assign stack_ctr_debugIO_out_mem_29_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_29_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_30_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_30_MPORT_addr = 5'h1e;
  assign stack_ctr_debugIO_out_mem_30_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_30_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_debugIO_out_mem_31_MPORT_en = 1'h1;
  assign stack_ctr_debugIO_out_mem_31_MPORT_addr = 5'h1f;
  assign stack_ctr_debugIO_out_mem_31_MPORT_data = stack_ctr[stack_ctr_debugIO_out_mem_31_MPORT_addr]; // @[RAS.scala 74:20]
  assign stack_ctr_MPORT_data = write_bypass_entry_ctr;
  assign stack_ctr_MPORT_addr = write_bypass_ptr;
  assign stack_ctr_MPORT_mask = 1'h1;
  assign stack_ctr_MPORT_en = write_bypass_valid;
  assign stack_ctr_MPORT_1_data = 8'h0;
  assign stack_ctr_MPORT_1_addr = resetIdx;
  assign stack_ctr_MPORT_1_mask = 1'h1;
  assign stack_ctr_MPORT_1_en = do_reset;
  assign io_sp = sp; // @[RAS.scala 170:11]
  assign io_top_retAddr = top_retAddr; // @[RAS.scala 171:12]
  assign io_top_ctr = top_ctr; // @[RAS.scala 171:12]
  always @(posedge clock) begin
    if (stack_retAddr_MPORT_en & stack_retAddr_MPORT_mask) begin
      stack_retAddr[stack_retAddr_MPORT_addr] <= stack_retAddr_MPORT_data; // @[RAS.scala 74:20]
    end
    if (stack_retAddr_MPORT_1_en & stack_retAddr_MPORT_1_mask) begin
      stack_retAddr[stack_retAddr_MPORT_1_addr] <= stack_retAddr_MPORT_1_data; // @[RAS.scala 74:20]
    end
    if (stack_ctr_MPORT_en & stack_ctr_MPORT_mask) begin
      stack_ctr[stack_ctr_MPORT_addr] <= stack_ctr_MPORT_data; // @[RAS.scala 74:20]
    end
    if (stack_ctr_MPORT_1_en & stack_ctr_MPORT_1_mask) begin
      stack_ctr[stack_ctr_MPORT_1_addr] <= stack_ctr_MPORT_1_data; // @[RAS.scala 74:20]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RAS.scala 103:22]
      sp <= 5'h0; // @[RAS.scala 104:29 93:32]
    end else if (_T) begin // @[RAS.scala 125:27]
      if (_T_2) begin // @[RAS.scala 126:35]
        if (_T_3 == 5'h1f) begin // @[RAS.scala 94:32]
          sp <= 5'h0;
        end else begin
          sp <= _sp_T_2;
        end
      end else begin
        sp <= _GEN_8;
      end
    end else if (_T_1) begin
      if (_T_8_ctr == 8'h0) begin
        if (_T_3 == 5'h0) begin
          sp <= 5'h1f;
        end else begin
          sp <= _sp_T_6;
        end
      end else begin
        sp <= _GEN_8;
      end
    end else begin
      sp <= _GEN_8;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RAS.scala 103:22]
      top_retAddr <= 39'h0; // @[RAS.scala 104:29 167:10]
    end else if (_T) begin // @[RAS.scala 125:27]
      if (_T_2) begin // @[RAS.scala 126:35]
        if (io_recover_valid) begin // @[RAS.scala 131:16]
          top_retAddr <= io_recover_new_addr;
        end else begin
          top_retAddr <= io_spec_new_addr;
        end
      end else begin
        top_retAddr <= _GEN_10;
      end
    end else if (_T_1) begin
      if (_T_8_ctr == 8'h0) begin
        if (_topPtr_T_3 == write_bypass_ptr & write_bypass_valid) begin
          top_retAddr <= write_bypass_entry_retAddr;
        end else begin
          top_retAddr <= stack_retAddr_top_MPORT_data;
        end
      end else begin
        top_retAddr <= _GEN_10;
      end
    end else begin
      top_retAddr <= _GEN_10;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RAS.scala 103:22]
      top_ctr <= 8'h0; // @[RAS.scala 104:29 108:19 119:19]
    end else if (_T) begin // @[RAS.scala 125:27]
      if (_T_2) begin // @[RAS.scala 126:35]
        top_ctr <= 8'h0; // @[RAS.scala 131:16]
      end else begin
        top_ctr <= _top_ctr_T_1; // @[RAS.scala 141:19]
      end
    end else if (_T_1) begin // @[RAS.scala 148:24]
      if (_T_8_ctr == 8'h0) begin // @[RAS.scala 168:10]
        if (_topPtr_T_3 == write_bypass_ptr & write_bypass_valid) begin
          top_ctr <= write_bypass_entry_ctr;
        end else begin
          top_ctr <= stack_ctr_top_MPORT_data;
        end
      end else begin
        top_ctr <= _top_ctr_T_3;
      end
    end else if (io_recover_valid) begin // @[RAS.scala 76:22]
      if (io_recover_valid) begin
        top_ctr <= io_recover_top_ctr;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RAS.scala 103:22]
      topPtr <= 5'h0; // @[RAS.scala 104:29 165:10]
    end else if (_T) begin // @[RAS.scala 125:27]
      if (_T_2) begin // @[RAS.scala 126:35]
        if (io_recover_valid) begin // @[RAS.scala 94:32]
          topPtr <= io_recover_sp;
        end else begin
          topPtr <= sp;
        end
      end else begin
        topPtr <= _GEN_9;
      end
    end else if (_T_1) begin
      if (_T_8_ctr == 8'h0) begin
        if (_T_6 == 5'h0) begin
          topPtr <= 5'h1f;
        end else begin
          topPtr <= _topPtr_T_2;
        end
      end else begin
        topPtr <= _GEN_9;
      end
    end else begin
      topPtr <= _GEN_9;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RAS.scala 103:22]
      write_bypass_entry_retAddr <= 39'h0; // @[RAS.scala 167:10]
    end else if (_T) begin // @[RAS.scala 125:27]
      if (io_recover_valid) begin // @[RAS.scala 126:35]
        write_bypass_entry_retAddr <= io_recover_new_addr; // @[RAS.scala 80:37]
      end else begin
        write_bypass_entry_retAddr <= io_spec_new_addr; // @[RAS.scala 144:30]
      end
    end else if (_T_1) begin // @[RAS.scala 148:24]
      if (!(_T_8_ctr == 8'h0)) begin // @[RAS.scala 154:30]
        write_bypass_entry_retAddr <= write_bypass_entry_e_2_retAddr;
      end
    end else if (io_recover_valid) begin // @[RAS.scala 80:37]
      write_bypass_entry_retAddr <= write_bypass_entry_e_2_retAddr;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RAS.scala 103:22]
      write_bypass_entry_ctr <= 8'h0; // @[RAS.scala 104:29 108:19 119:19]
    end else if (_T) begin // @[RAS.scala 125:27]
      if (_T_2) begin // @[RAS.scala 126:35]
        write_bypass_entry_ctr <= 8'h0; // @[RAS.scala 80:37]
      end else begin
        write_bypass_entry_ctr <= _top_ctr_T_1; // @[RAS.scala 144:30]
      end
    end else if (_T_1) begin // @[RAS.scala 148:24]
      if (!(_T_8_ctr == 8'h0)) begin // @[RAS.scala 168:10]
        write_bypass_entry_ctr <= _top_ctr_T_3;
      end
    end else if (io_recover_valid) begin // @[RAS.scala 80:37]
      if (io_recover_valid) begin
        write_bypass_entry_ctr <= io_recover_top_ctr;
      end else begin
        write_bypass_entry_ctr <= top_ctr;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RAS.scala 103:22]
      write_bypass_ptr <= 5'h0; // @[RAS.scala 104:29 165:10 123:28]
    end else if (_T) begin // @[RAS.scala 125:27]
      if (_T_2) begin // @[RAS.scala 126:35]
        if (io_recover_valid) begin // @[RAS.scala 81:35]
          write_bypass_ptr <= io_recover_sp;
        end else begin
          write_bypass_ptr <= sp;
        end
      end else begin
        write_bypass_ptr <= _T_6; // @[RAS.scala 145:28]
      end
    end else if (_T_1) begin // @[RAS.scala 148:24]
      if (!(_T_8_ctr == 8'h0)) begin // @[RAS.scala 155:28]
        write_bypass_ptr <= _T_6;
      end
    end else if (io_recover_valid) begin // @[RAS.scala 81:35]
      write_bypass_ptr <= _T_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RAS.scala 83:16]
      write_bypass_valid <= 1'h0; // @[RAS.scala 84:26]
    end else begin
      write_bypass_valid <= wen | _GEN_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RAS.scala 178:26]
      resetIdx <= 5'h0;
    end else begin
      resetIdx <= resetIdx + _GEN_64;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RAS.scala 179:39]
      do_reset <= 1'h1; // @[RAS.scala 180:16]
    end else if (resetIdx == 5'h1f) begin // @[RAS.scala 174:27]
      do_reset <= 1'h0;
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {2{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    stack_retAddr[initvar] = _RAND_0[38:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    stack_ctr[initvar] = _RAND_1[7:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  sp = _RAND_2[4:0];
  _RAND_3 = {2{`RANDOM}};
  top_retAddr = _RAND_3[38:0];
  _RAND_4 = {1{`RANDOM}};
  top_ctr = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  topPtr = _RAND_5[4:0];
  _RAND_6 = {2{`RANDOM}};
  write_bypass_entry_retAddr = _RAND_6[38:0];
  _RAND_7 = {1{`RANDOM}};
  write_bypass_entry_ctr = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  write_bypass_ptr = _RAND_8[4:0];
  _RAND_9 = {1{`RANDOM}};
  write_bypass_valid = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  resetIdx = _RAND_10[4:0];
  _RAND_11 = {1{`RANDOM}};
  do_reset = _RAND_11[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    sp = 5'h0;
  end
  if (reset) begin
    top_retAddr = 39'h0;
  end
  if (reset) begin
    top_ctr = 8'h0;
  end
  if (reset) begin
    topPtr = 5'h0;
  end
  if (reset) begin
    write_bypass_entry_retAddr = 39'h0;
  end
  if (reset) begin
    write_bypass_entry_ctr = 8'h0;
  end
  if (reset) begin
    write_bypass_ptr = 5'h0;
  end
  if (reset) begin
    write_bypass_valid = 1'h0;
  end
  if (reset) begin
    resetIdx = 5'h0;
  end
  if (reset) begin
    do_reset = 1'h1;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

