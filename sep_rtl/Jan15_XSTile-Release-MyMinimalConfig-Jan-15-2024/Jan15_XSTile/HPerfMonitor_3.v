module HPerfMonitor_3(
  input         clock,
  input  [63:0] io_hpm_event_0,
  input  [63:0] io_hpm_event_1,
  input  [63:0] io_hpm_event_2,
  input  [63:0] io_hpm_event_3,
  input  [63:0] io_hpm_event_4,
  input  [63:0] io_hpm_event_5,
  input  [63:0] io_hpm_event_6,
  input  [63:0] io_hpm_event_7,
  input  [5:0]  io_events_sets_0_value,
  input  [5:0]  io_events_sets_1_value,
  input  [5:0]  io_events_sets_2_value,
  input  [5:0]  io_events_sets_3_value,
  input  [5:0]  io_events_sets_4_value,
  input  [5:0]  io_events_sets_5_value,
  input  [5:0]  io_events_sets_6_value,
  input  [5:0]  io_events_sets_7_value,
  input  [5:0]  io_events_sets_8_value,
  input  [5:0]  io_events_sets_9_value,
  input  [5:0]  io_events_sets_10_value,
  input  [5:0]  io_events_sets_11_value,
  input  [5:0]  io_events_sets_12_value,
  input  [5:0]  io_events_sets_13_value,
  input  [5:0]  io_events_sets_14_value,
  input  [5:0]  io_events_sets_15_value,
  input  [5:0]  io_events_sets_16_value,
  input  [5:0]  io_events_sets_17_value,
  input  [5:0]  io_events_sets_18_value,
  input  [5:0]  io_events_sets_19_value,
  input  [5:0]  io_events_sets_20_value,
  input  [5:0]  io_events_sets_21_value,
  input  [5:0]  io_events_sets_23_value,
  input  [5:0]  io_events_sets_24_value,
  input  [5:0]  io_events_sets_25_value,
  input  [5:0]  io_events_sets_26_value,
  input  [5:0]  io_events_sets_27_value,
  input  [5:0]  io_events_sets_28_value,
  input  [5:0]  io_events_sets_29_value,
  input  [5:0]  io_events_sets_30_value,
  input  [5:0]  io_events_sets_31_value,
  input  [5:0]  io_events_sets_32_value,
  input  [5:0]  io_events_sets_33_value,
  input  [5:0]  io_events_sets_34_value,
  input  [5:0]  io_events_sets_35_value,
  input  [5:0]  io_events_sets_36_value,
  input  [5:0]  io_events_sets_37_value,
  input  [5:0]  io_events_sets_38_value,
  input  [5:0]  io_events_sets_39_value,
  input  [5:0]  io_events_sets_40_value,
  input  [5:0]  io_events_sets_41_value,
  input  [5:0]  io_events_sets_42_value,
  input  [5:0]  io_events_sets_43_value,
  input  [5:0]  io_events_sets_44_value,
  input  [5:0]  io_events_sets_45_value,
  input  [5:0]  io_events_sets_46_value,
  input  [5:0]  io_events_sets_47_value,
  input  [5:0]  io_events_sets_48_value,
  input  [5:0]  io_events_sets_49_value,
  input  [5:0]  io_events_sets_50_value,
  input  [5:0]  io_events_sets_51_value,
  input  [5:0]  io_events_sets_52_value,
  input  [5:0]  io_events_sets_53_value,
  input  [5:0]  io_events_sets_54_value,
  input  [5:0]  io_events_sets_55_value,
  input  [5:0]  io_events_sets_56_value,
  input  [5:0]  io_events_sets_57_value,
  input  [5:0]  io_events_sets_58_value,
  input  [5:0]  io_events_sets_59_value,
  input  [5:0]  io_events_sets_60_value,
  input  [5:0]  io_events_sets_61_value,
  input  [5:0]  io_events_sets_62_value,
  input  [5:0]  io_events_sets_63_value,
  input  [5:0]  io_events_sets_64_value,
  input  [5:0]  io_events_sets_65_value,
  input  [5:0]  io_events_sets_66_value,
  input  [5:0]  io_events_sets_67_value,
  input  [5:0]  io_events_sets_68_value,
  input  [5:0]  io_events_sets_69_value,
  input  [5:0]  io_events_sets_70_value,
  input  [5:0]  io_events_sets_71_value,
  input  [5:0]  io_events_sets_72_value,
  input  [5:0]  io_events_sets_73_value,
  input  [5:0]  io_events_sets_74_value,
  input  [5:0]  io_events_sets_75_value,
  input  [5:0]  io_events_sets_76_value,
  input  [5:0]  io_events_sets_77_value,
  input  [5:0]  io_events_sets_78_value,
  input  [5:0]  io_events_sets_79_value,
  input  [5:0]  io_events_sets_80_value,
  input  [5:0]  io_events_sets_81_value,
  input  [5:0]  io_events_sets_82_value,
  input  [5:0]  io_events_sets_83_value,
  input  [5:0]  io_events_sets_84_value,
  input  [5:0]  io_events_sets_85_value,
  input  [5:0]  io_events_sets_86_value,
  input  [5:0]  io_events_sets_87_value,
  input  [5:0]  io_events_sets_88_value,
  output [5:0]  io_perf_0_value,
  output [5:0]  io_perf_1_value,
  output [5:0]  io_perf_2_value,
  output [5:0]  io_perf_3_value,
  output [5:0]  io_perf_4_value,
  output [5:0]  io_perf_5_value,
  output [5:0]  io_perf_6_value,
  output [5:0]  io_perf_7_value
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
  wire  hpc_clock; // @[PerfCounterUtils.scala 351:21]
  wire [63:0] hpc_io_hpm_event; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_0_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_1_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_2_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_3_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_4_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_5_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_6_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_7_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_8_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_9_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_10_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_11_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_12_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_13_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_14_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_15_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_16_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_17_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_18_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_19_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_20_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_21_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_23_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_24_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_25_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_26_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_27_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_28_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_29_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_30_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_31_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_32_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_33_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_34_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_35_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_36_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_37_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_38_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_39_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_40_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_41_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_42_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_43_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_44_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_45_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_46_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_47_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_48_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_49_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_50_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_51_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_52_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_53_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_54_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_55_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_56_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_57_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_58_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_59_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_60_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_61_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_62_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_63_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_64_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_65_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_66_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_67_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_68_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_69_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_70_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_71_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_72_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_73_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_74_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_75_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_76_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_77_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_78_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_79_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_80_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_81_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_82_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_83_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_84_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_85_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_86_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_87_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_events_sets_88_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_io_perf_0_value; // @[PerfCounterUtils.scala 351:21]
  wire  hpc_1_clock; // @[PerfCounterUtils.scala 351:21]
  wire [63:0] hpc_1_io_hpm_event; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_0_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_1_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_2_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_3_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_4_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_5_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_6_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_7_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_8_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_9_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_10_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_11_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_12_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_13_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_14_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_15_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_16_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_17_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_18_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_19_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_20_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_21_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_23_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_24_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_25_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_26_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_27_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_28_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_29_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_30_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_31_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_32_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_33_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_34_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_35_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_36_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_37_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_38_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_39_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_40_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_41_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_42_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_43_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_44_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_45_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_46_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_47_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_48_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_49_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_50_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_51_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_52_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_53_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_54_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_55_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_56_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_57_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_58_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_59_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_60_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_61_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_62_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_63_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_64_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_65_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_66_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_67_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_68_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_69_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_70_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_71_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_72_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_73_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_74_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_75_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_76_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_77_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_78_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_79_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_80_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_81_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_82_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_83_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_84_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_85_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_86_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_87_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_events_sets_88_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_1_io_perf_0_value; // @[PerfCounterUtils.scala 351:21]
  wire  hpc_2_clock; // @[PerfCounterUtils.scala 351:21]
  wire [63:0] hpc_2_io_hpm_event; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_0_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_1_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_2_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_3_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_4_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_5_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_6_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_7_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_8_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_9_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_10_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_11_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_12_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_13_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_14_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_15_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_16_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_17_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_18_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_19_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_20_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_21_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_23_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_24_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_25_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_26_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_27_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_28_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_29_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_30_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_31_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_32_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_33_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_34_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_35_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_36_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_37_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_38_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_39_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_40_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_41_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_42_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_43_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_44_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_45_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_46_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_47_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_48_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_49_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_50_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_51_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_52_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_53_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_54_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_55_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_56_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_57_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_58_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_59_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_60_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_61_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_62_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_63_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_64_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_65_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_66_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_67_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_68_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_69_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_70_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_71_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_72_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_73_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_74_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_75_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_76_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_77_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_78_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_79_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_80_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_81_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_82_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_83_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_84_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_85_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_86_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_87_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_events_sets_88_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_2_io_perf_0_value; // @[PerfCounterUtils.scala 351:21]
  wire  hpc_3_clock; // @[PerfCounterUtils.scala 351:21]
  wire [63:0] hpc_3_io_hpm_event; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_0_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_1_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_2_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_3_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_4_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_5_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_6_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_7_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_8_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_9_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_10_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_11_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_12_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_13_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_14_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_15_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_16_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_17_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_18_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_19_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_20_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_21_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_23_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_24_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_25_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_26_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_27_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_28_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_29_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_30_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_31_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_32_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_33_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_34_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_35_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_36_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_37_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_38_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_39_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_40_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_41_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_42_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_43_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_44_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_45_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_46_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_47_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_48_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_49_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_50_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_51_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_52_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_53_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_54_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_55_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_56_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_57_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_58_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_59_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_60_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_61_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_62_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_63_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_64_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_65_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_66_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_67_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_68_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_69_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_70_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_71_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_72_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_73_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_74_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_75_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_76_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_77_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_78_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_79_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_80_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_81_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_82_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_83_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_84_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_85_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_86_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_87_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_events_sets_88_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_3_io_perf_0_value; // @[PerfCounterUtils.scala 351:21]
  wire  hpc_4_clock; // @[PerfCounterUtils.scala 351:21]
  wire [63:0] hpc_4_io_hpm_event; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_0_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_1_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_2_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_3_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_4_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_5_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_6_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_7_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_8_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_9_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_10_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_11_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_12_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_13_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_14_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_15_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_16_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_17_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_18_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_19_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_20_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_21_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_23_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_24_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_25_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_26_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_27_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_28_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_29_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_30_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_31_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_32_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_33_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_34_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_35_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_36_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_37_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_38_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_39_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_40_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_41_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_42_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_43_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_44_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_45_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_46_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_47_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_48_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_49_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_50_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_51_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_52_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_53_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_54_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_55_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_56_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_57_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_58_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_59_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_60_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_61_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_62_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_63_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_64_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_65_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_66_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_67_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_68_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_69_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_70_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_71_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_72_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_73_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_74_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_75_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_76_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_77_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_78_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_79_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_80_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_81_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_82_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_83_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_84_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_85_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_86_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_87_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_events_sets_88_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_4_io_perf_0_value; // @[PerfCounterUtils.scala 351:21]
  wire  hpc_5_clock; // @[PerfCounterUtils.scala 351:21]
  wire [63:0] hpc_5_io_hpm_event; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_0_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_1_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_2_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_3_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_4_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_5_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_6_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_7_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_8_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_9_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_10_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_11_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_12_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_13_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_14_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_15_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_16_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_17_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_18_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_19_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_20_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_21_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_23_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_24_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_25_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_26_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_27_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_28_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_29_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_30_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_31_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_32_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_33_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_34_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_35_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_36_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_37_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_38_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_39_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_40_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_41_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_42_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_43_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_44_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_45_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_46_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_47_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_48_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_49_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_50_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_51_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_52_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_53_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_54_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_55_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_56_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_57_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_58_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_59_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_60_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_61_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_62_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_63_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_64_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_65_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_66_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_67_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_68_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_69_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_70_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_71_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_72_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_73_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_74_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_75_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_76_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_77_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_78_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_79_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_80_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_81_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_82_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_83_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_84_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_85_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_86_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_87_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_events_sets_88_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_5_io_perf_0_value; // @[PerfCounterUtils.scala 351:21]
  wire  hpc_6_clock; // @[PerfCounterUtils.scala 351:21]
  wire [63:0] hpc_6_io_hpm_event; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_0_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_1_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_2_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_3_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_4_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_5_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_6_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_7_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_8_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_9_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_10_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_11_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_12_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_13_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_14_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_15_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_16_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_17_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_18_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_19_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_20_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_21_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_23_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_24_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_25_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_26_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_27_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_28_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_29_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_30_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_31_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_32_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_33_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_34_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_35_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_36_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_37_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_38_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_39_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_40_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_41_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_42_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_43_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_44_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_45_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_46_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_47_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_48_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_49_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_50_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_51_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_52_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_53_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_54_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_55_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_56_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_57_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_58_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_59_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_60_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_61_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_62_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_63_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_64_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_65_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_66_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_67_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_68_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_69_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_70_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_71_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_72_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_73_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_74_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_75_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_76_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_77_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_78_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_79_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_80_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_81_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_82_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_83_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_84_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_85_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_86_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_87_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_events_sets_88_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_6_io_perf_0_value; // @[PerfCounterUtils.scala 351:21]
  wire  hpc_7_clock; // @[PerfCounterUtils.scala 351:21]
  wire [63:0] hpc_7_io_hpm_event; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_0_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_1_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_2_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_3_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_4_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_5_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_6_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_7_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_8_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_9_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_10_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_11_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_12_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_13_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_14_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_15_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_16_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_17_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_18_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_19_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_20_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_21_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_23_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_24_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_25_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_26_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_27_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_28_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_29_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_30_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_31_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_32_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_33_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_34_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_35_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_36_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_37_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_38_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_39_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_40_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_41_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_42_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_43_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_44_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_45_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_46_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_47_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_48_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_49_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_50_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_51_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_52_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_53_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_54_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_55_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_56_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_57_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_58_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_59_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_60_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_61_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_62_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_63_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_64_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_65_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_66_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_67_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_68_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_69_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_70_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_71_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_72_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_73_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_74_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_75_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_76_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_77_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_78_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_79_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_80_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_81_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_82_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_83_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_84_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_85_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_86_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_87_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_events_sets_88_value; // @[PerfCounterUtils.scala 351:21]
  wire [5:0] hpc_7_io_perf_0_value; // @[PerfCounterUtils.scala 351:21]
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
  HPerfCounter_21 hpc ( // @[PerfCounterUtils.scala 351:21]
    .clock(hpc_clock),
    .io_hpm_event(hpc_io_hpm_event),
    .io_events_sets_0_value(hpc_io_events_sets_0_value),
    .io_events_sets_1_value(hpc_io_events_sets_1_value),
    .io_events_sets_2_value(hpc_io_events_sets_2_value),
    .io_events_sets_3_value(hpc_io_events_sets_3_value),
    .io_events_sets_4_value(hpc_io_events_sets_4_value),
    .io_events_sets_5_value(hpc_io_events_sets_5_value),
    .io_events_sets_6_value(hpc_io_events_sets_6_value),
    .io_events_sets_7_value(hpc_io_events_sets_7_value),
    .io_events_sets_8_value(hpc_io_events_sets_8_value),
    .io_events_sets_9_value(hpc_io_events_sets_9_value),
    .io_events_sets_10_value(hpc_io_events_sets_10_value),
    .io_events_sets_11_value(hpc_io_events_sets_11_value),
    .io_events_sets_12_value(hpc_io_events_sets_12_value),
    .io_events_sets_13_value(hpc_io_events_sets_13_value),
    .io_events_sets_14_value(hpc_io_events_sets_14_value),
    .io_events_sets_15_value(hpc_io_events_sets_15_value),
    .io_events_sets_16_value(hpc_io_events_sets_16_value),
    .io_events_sets_17_value(hpc_io_events_sets_17_value),
    .io_events_sets_18_value(hpc_io_events_sets_18_value),
    .io_events_sets_19_value(hpc_io_events_sets_19_value),
    .io_events_sets_20_value(hpc_io_events_sets_20_value),
    .io_events_sets_21_value(hpc_io_events_sets_21_value),
    .io_events_sets_23_value(hpc_io_events_sets_23_value),
    .io_events_sets_24_value(hpc_io_events_sets_24_value),
    .io_events_sets_25_value(hpc_io_events_sets_25_value),
    .io_events_sets_26_value(hpc_io_events_sets_26_value),
    .io_events_sets_27_value(hpc_io_events_sets_27_value),
    .io_events_sets_28_value(hpc_io_events_sets_28_value),
    .io_events_sets_29_value(hpc_io_events_sets_29_value),
    .io_events_sets_30_value(hpc_io_events_sets_30_value),
    .io_events_sets_31_value(hpc_io_events_sets_31_value),
    .io_events_sets_32_value(hpc_io_events_sets_32_value),
    .io_events_sets_33_value(hpc_io_events_sets_33_value),
    .io_events_sets_34_value(hpc_io_events_sets_34_value),
    .io_events_sets_35_value(hpc_io_events_sets_35_value),
    .io_events_sets_36_value(hpc_io_events_sets_36_value),
    .io_events_sets_37_value(hpc_io_events_sets_37_value),
    .io_events_sets_38_value(hpc_io_events_sets_38_value),
    .io_events_sets_39_value(hpc_io_events_sets_39_value),
    .io_events_sets_40_value(hpc_io_events_sets_40_value),
    .io_events_sets_41_value(hpc_io_events_sets_41_value),
    .io_events_sets_42_value(hpc_io_events_sets_42_value),
    .io_events_sets_43_value(hpc_io_events_sets_43_value),
    .io_events_sets_44_value(hpc_io_events_sets_44_value),
    .io_events_sets_45_value(hpc_io_events_sets_45_value),
    .io_events_sets_46_value(hpc_io_events_sets_46_value),
    .io_events_sets_47_value(hpc_io_events_sets_47_value),
    .io_events_sets_48_value(hpc_io_events_sets_48_value),
    .io_events_sets_49_value(hpc_io_events_sets_49_value),
    .io_events_sets_50_value(hpc_io_events_sets_50_value),
    .io_events_sets_51_value(hpc_io_events_sets_51_value),
    .io_events_sets_52_value(hpc_io_events_sets_52_value),
    .io_events_sets_53_value(hpc_io_events_sets_53_value),
    .io_events_sets_54_value(hpc_io_events_sets_54_value),
    .io_events_sets_55_value(hpc_io_events_sets_55_value),
    .io_events_sets_56_value(hpc_io_events_sets_56_value),
    .io_events_sets_57_value(hpc_io_events_sets_57_value),
    .io_events_sets_58_value(hpc_io_events_sets_58_value),
    .io_events_sets_59_value(hpc_io_events_sets_59_value),
    .io_events_sets_60_value(hpc_io_events_sets_60_value),
    .io_events_sets_61_value(hpc_io_events_sets_61_value),
    .io_events_sets_62_value(hpc_io_events_sets_62_value),
    .io_events_sets_63_value(hpc_io_events_sets_63_value),
    .io_events_sets_64_value(hpc_io_events_sets_64_value),
    .io_events_sets_65_value(hpc_io_events_sets_65_value),
    .io_events_sets_66_value(hpc_io_events_sets_66_value),
    .io_events_sets_67_value(hpc_io_events_sets_67_value),
    .io_events_sets_68_value(hpc_io_events_sets_68_value),
    .io_events_sets_69_value(hpc_io_events_sets_69_value),
    .io_events_sets_70_value(hpc_io_events_sets_70_value),
    .io_events_sets_71_value(hpc_io_events_sets_71_value),
    .io_events_sets_72_value(hpc_io_events_sets_72_value),
    .io_events_sets_73_value(hpc_io_events_sets_73_value),
    .io_events_sets_74_value(hpc_io_events_sets_74_value),
    .io_events_sets_75_value(hpc_io_events_sets_75_value),
    .io_events_sets_76_value(hpc_io_events_sets_76_value),
    .io_events_sets_77_value(hpc_io_events_sets_77_value),
    .io_events_sets_78_value(hpc_io_events_sets_78_value),
    .io_events_sets_79_value(hpc_io_events_sets_79_value),
    .io_events_sets_80_value(hpc_io_events_sets_80_value),
    .io_events_sets_81_value(hpc_io_events_sets_81_value),
    .io_events_sets_82_value(hpc_io_events_sets_82_value),
    .io_events_sets_83_value(hpc_io_events_sets_83_value),
    .io_events_sets_84_value(hpc_io_events_sets_84_value),
    .io_events_sets_85_value(hpc_io_events_sets_85_value),
    .io_events_sets_86_value(hpc_io_events_sets_86_value),
    .io_events_sets_87_value(hpc_io_events_sets_87_value),
    .io_events_sets_88_value(hpc_io_events_sets_88_value),
    .io_perf_0_value(hpc_io_perf_0_value)
  );
  HPerfCounter_21 hpc_1 ( // @[PerfCounterUtils.scala 351:21]
    .clock(hpc_1_clock),
    .io_hpm_event(hpc_1_io_hpm_event),
    .io_events_sets_0_value(hpc_1_io_events_sets_0_value),
    .io_events_sets_1_value(hpc_1_io_events_sets_1_value),
    .io_events_sets_2_value(hpc_1_io_events_sets_2_value),
    .io_events_sets_3_value(hpc_1_io_events_sets_3_value),
    .io_events_sets_4_value(hpc_1_io_events_sets_4_value),
    .io_events_sets_5_value(hpc_1_io_events_sets_5_value),
    .io_events_sets_6_value(hpc_1_io_events_sets_6_value),
    .io_events_sets_7_value(hpc_1_io_events_sets_7_value),
    .io_events_sets_8_value(hpc_1_io_events_sets_8_value),
    .io_events_sets_9_value(hpc_1_io_events_sets_9_value),
    .io_events_sets_10_value(hpc_1_io_events_sets_10_value),
    .io_events_sets_11_value(hpc_1_io_events_sets_11_value),
    .io_events_sets_12_value(hpc_1_io_events_sets_12_value),
    .io_events_sets_13_value(hpc_1_io_events_sets_13_value),
    .io_events_sets_14_value(hpc_1_io_events_sets_14_value),
    .io_events_sets_15_value(hpc_1_io_events_sets_15_value),
    .io_events_sets_16_value(hpc_1_io_events_sets_16_value),
    .io_events_sets_17_value(hpc_1_io_events_sets_17_value),
    .io_events_sets_18_value(hpc_1_io_events_sets_18_value),
    .io_events_sets_19_value(hpc_1_io_events_sets_19_value),
    .io_events_sets_20_value(hpc_1_io_events_sets_20_value),
    .io_events_sets_21_value(hpc_1_io_events_sets_21_value),
    .io_events_sets_23_value(hpc_1_io_events_sets_23_value),
    .io_events_sets_24_value(hpc_1_io_events_sets_24_value),
    .io_events_sets_25_value(hpc_1_io_events_sets_25_value),
    .io_events_sets_26_value(hpc_1_io_events_sets_26_value),
    .io_events_sets_27_value(hpc_1_io_events_sets_27_value),
    .io_events_sets_28_value(hpc_1_io_events_sets_28_value),
    .io_events_sets_29_value(hpc_1_io_events_sets_29_value),
    .io_events_sets_30_value(hpc_1_io_events_sets_30_value),
    .io_events_sets_31_value(hpc_1_io_events_sets_31_value),
    .io_events_sets_32_value(hpc_1_io_events_sets_32_value),
    .io_events_sets_33_value(hpc_1_io_events_sets_33_value),
    .io_events_sets_34_value(hpc_1_io_events_sets_34_value),
    .io_events_sets_35_value(hpc_1_io_events_sets_35_value),
    .io_events_sets_36_value(hpc_1_io_events_sets_36_value),
    .io_events_sets_37_value(hpc_1_io_events_sets_37_value),
    .io_events_sets_38_value(hpc_1_io_events_sets_38_value),
    .io_events_sets_39_value(hpc_1_io_events_sets_39_value),
    .io_events_sets_40_value(hpc_1_io_events_sets_40_value),
    .io_events_sets_41_value(hpc_1_io_events_sets_41_value),
    .io_events_sets_42_value(hpc_1_io_events_sets_42_value),
    .io_events_sets_43_value(hpc_1_io_events_sets_43_value),
    .io_events_sets_44_value(hpc_1_io_events_sets_44_value),
    .io_events_sets_45_value(hpc_1_io_events_sets_45_value),
    .io_events_sets_46_value(hpc_1_io_events_sets_46_value),
    .io_events_sets_47_value(hpc_1_io_events_sets_47_value),
    .io_events_sets_48_value(hpc_1_io_events_sets_48_value),
    .io_events_sets_49_value(hpc_1_io_events_sets_49_value),
    .io_events_sets_50_value(hpc_1_io_events_sets_50_value),
    .io_events_sets_51_value(hpc_1_io_events_sets_51_value),
    .io_events_sets_52_value(hpc_1_io_events_sets_52_value),
    .io_events_sets_53_value(hpc_1_io_events_sets_53_value),
    .io_events_sets_54_value(hpc_1_io_events_sets_54_value),
    .io_events_sets_55_value(hpc_1_io_events_sets_55_value),
    .io_events_sets_56_value(hpc_1_io_events_sets_56_value),
    .io_events_sets_57_value(hpc_1_io_events_sets_57_value),
    .io_events_sets_58_value(hpc_1_io_events_sets_58_value),
    .io_events_sets_59_value(hpc_1_io_events_sets_59_value),
    .io_events_sets_60_value(hpc_1_io_events_sets_60_value),
    .io_events_sets_61_value(hpc_1_io_events_sets_61_value),
    .io_events_sets_62_value(hpc_1_io_events_sets_62_value),
    .io_events_sets_63_value(hpc_1_io_events_sets_63_value),
    .io_events_sets_64_value(hpc_1_io_events_sets_64_value),
    .io_events_sets_65_value(hpc_1_io_events_sets_65_value),
    .io_events_sets_66_value(hpc_1_io_events_sets_66_value),
    .io_events_sets_67_value(hpc_1_io_events_sets_67_value),
    .io_events_sets_68_value(hpc_1_io_events_sets_68_value),
    .io_events_sets_69_value(hpc_1_io_events_sets_69_value),
    .io_events_sets_70_value(hpc_1_io_events_sets_70_value),
    .io_events_sets_71_value(hpc_1_io_events_sets_71_value),
    .io_events_sets_72_value(hpc_1_io_events_sets_72_value),
    .io_events_sets_73_value(hpc_1_io_events_sets_73_value),
    .io_events_sets_74_value(hpc_1_io_events_sets_74_value),
    .io_events_sets_75_value(hpc_1_io_events_sets_75_value),
    .io_events_sets_76_value(hpc_1_io_events_sets_76_value),
    .io_events_sets_77_value(hpc_1_io_events_sets_77_value),
    .io_events_sets_78_value(hpc_1_io_events_sets_78_value),
    .io_events_sets_79_value(hpc_1_io_events_sets_79_value),
    .io_events_sets_80_value(hpc_1_io_events_sets_80_value),
    .io_events_sets_81_value(hpc_1_io_events_sets_81_value),
    .io_events_sets_82_value(hpc_1_io_events_sets_82_value),
    .io_events_sets_83_value(hpc_1_io_events_sets_83_value),
    .io_events_sets_84_value(hpc_1_io_events_sets_84_value),
    .io_events_sets_85_value(hpc_1_io_events_sets_85_value),
    .io_events_sets_86_value(hpc_1_io_events_sets_86_value),
    .io_events_sets_87_value(hpc_1_io_events_sets_87_value),
    .io_events_sets_88_value(hpc_1_io_events_sets_88_value),
    .io_perf_0_value(hpc_1_io_perf_0_value)
  );
  HPerfCounter_21 hpc_2 ( // @[PerfCounterUtils.scala 351:21]
    .clock(hpc_2_clock),
    .io_hpm_event(hpc_2_io_hpm_event),
    .io_events_sets_0_value(hpc_2_io_events_sets_0_value),
    .io_events_sets_1_value(hpc_2_io_events_sets_1_value),
    .io_events_sets_2_value(hpc_2_io_events_sets_2_value),
    .io_events_sets_3_value(hpc_2_io_events_sets_3_value),
    .io_events_sets_4_value(hpc_2_io_events_sets_4_value),
    .io_events_sets_5_value(hpc_2_io_events_sets_5_value),
    .io_events_sets_6_value(hpc_2_io_events_sets_6_value),
    .io_events_sets_7_value(hpc_2_io_events_sets_7_value),
    .io_events_sets_8_value(hpc_2_io_events_sets_8_value),
    .io_events_sets_9_value(hpc_2_io_events_sets_9_value),
    .io_events_sets_10_value(hpc_2_io_events_sets_10_value),
    .io_events_sets_11_value(hpc_2_io_events_sets_11_value),
    .io_events_sets_12_value(hpc_2_io_events_sets_12_value),
    .io_events_sets_13_value(hpc_2_io_events_sets_13_value),
    .io_events_sets_14_value(hpc_2_io_events_sets_14_value),
    .io_events_sets_15_value(hpc_2_io_events_sets_15_value),
    .io_events_sets_16_value(hpc_2_io_events_sets_16_value),
    .io_events_sets_17_value(hpc_2_io_events_sets_17_value),
    .io_events_sets_18_value(hpc_2_io_events_sets_18_value),
    .io_events_sets_19_value(hpc_2_io_events_sets_19_value),
    .io_events_sets_20_value(hpc_2_io_events_sets_20_value),
    .io_events_sets_21_value(hpc_2_io_events_sets_21_value),
    .io_events_sets_23_value(hpc_2_io_events_sets_23_value),
    .io_events_sets_24_value(hpc_2_io_events_sets_24_value),
    .io_events_sets_25_value(hpc_2_io_events_sets_25_value),
    .io_events_sets_26_value(hpc_2_io_events_sets_26_value),
    .io_events_sets_27_value(hpc_2_io_events_sets_27_value),
    .io_events_sets_28_value(hpc_2_io_events_sets_28_value),
    .io_events_sets_29_value(hpc_2_io_events_sets_29_value),
    .io_events_sets_30_value(hpc_2_io_events_sets_30_value),
    .io_events_sets_31_value(hpc_2_io_events_sets_31_value),
    .io_events_sets_32_value(hpc_2_io_events_sets_32_value),
    .io_events_sets_33_value(hpc_2_io_events_sets_33_value),
    .io_events_sets_34_value(hpc_2_io_events_sets_34_value),
    .io_events_sets_35_value(hpc_2_io_events_sets_35_value),
    .io_events_sets_36_value(hpc_2_io_events_sets_36_value),
    .io_events_sets_37_value(hpc_2_io_events_sets_37_value),
    .io_events_sets_38_value(hpc_2_io_events_sets_38_value),
    .io_events_sets_39_value(hpc_2_io_events_sets_39_value),
    .io_events_sets_40_value(hpc_2_io_events_sets_40_value),
    .io_events_sets_41_value(hpc_2_io_events_sets_41_value),
    .io_events_sets_42_value(hpc_2_io_events_sets_42_value),
    .io_events_sets_43_value(hpc_2_io_events_sets_43_value),
    .io_events_sets_44_value(hpc_2_io_events_sets_44_value),
    .io_events_sets_45_value(hpc_2_io_events_sets_45_value),
    .io_events_sets_46_value(hpc_2_io_events_sets_46_value),
    .io_events_sets_47_value(hpc_2_io_events_sets_47_value),
    .io_events_sets_48_value(hpc_2_io_events_sets_48_value),
    .io_events_sets_49_value(hpc_2_io_events_sets_49_value),
    .io_events_sets_50_value(hpc_2_io_events_sets_50_value),
    .io_events_sets_51_value(hpc_2_io_events_sets_51_value),
    .io_events_sets_52_value(hpc_2_io_events_sets_52_value),
    .io_events_sets_53_value(hpc_2_io_events_sets_53_value),
    .io_events_sets_54_value(hpc_2_io_events_sets_54_value),
    .io_events_sets_55_value(hpc_2_io_events_sets_55_value),
    .io_events_sets_56_value(hpc_2_io_events_sets_56_value),
    .io_events_sets_57_value(hpc_2_io_events_sets_57_value),
    .io_events_sets_58_value(hpc_2_io_events_sets_58_value),
    .io_events_sets_59_value(hpc_2_io_events_sets_59_value),
    .io_events_sets_60_value(hpc_2_io_events_sets_60_value),
    .io_events_sets_61_value(hpc_2_io_events_sets_61_value),
    .io_events_sets_62_value(hpc_2_io_events_sets_62_value),
    .io_events_sets_63_value(hpc_2_io_events_sets_63_value),
    .io_events_sets_64_value(hpc_2_io_events_sets_64_value),
    .io_events_sets_65_value(hpc_2_io_events_sets_65_value),
    .io_events_sets_66_value(hpc_2_io_events_sets_66_value),
    .io_events_sets_67_value(hpc_2_io_events_sets_67_value),
    .io_events_sets_68_value(hpc_2_io_events_sets_68_value),
    .io_events_sets_69_value(hpc_2_io_events_sets_69_value),
    .io_events_sets_70_value(hpc_2_io_events_sets_70_value),
    .io_events_sets_71_value(hpc_2_io_events_sets_71_value),
    .io_events_sets_72_value(hpc_2_io_events_sets_72_value),
    .io_events_sets_73_value(hpc_2_io_events_sets_73_value),
    .io_events_sets_74_value(hpc_2_io_events_sets_74_value),
    .io_events_sets_75_value(hpc_2_io_events_sets_75_value),
    .io_events_sets_76_value(hpc_2_io_events_sets_76_value),
    .io_events_sets_77_value(hpc_2_io_events_sets_77_value),
    .io_events_sets_78_value(hpc_2_io_events_sets_78_value),
    .io_events_sets_79_value(hpc_2_io_events_sets_79_value),
    .io_events_sets_80_value(hpc_2_io_events_sets_80_value),
    .io_events_sets_81_value(hpc_2_io_events_sets_81_value),
    .io_events_sets_82_value(hpc_2_io_events_sets_82_value),
    .io_events_sets_83_value(hpc_2_io_events_sets_83_value),
    .io_events_sets_84_value(hpc_2_io_events_sets_84_value),
    .io_events_sets_85_value(hpc_2_io_events_sets_85_value),
    .io_events_sets_86_value(hpc_2_io_events_sets_86_value),
    .io_events_sets_87_value(hpc_2_io_events_sets_87_value),
    .io_events_sets_88_value(hpc_2_io_events_sets_88_value),
    .io_perf_0_value(hpc_2_io_perf_0_value)
  );
  HPerfCounter_21 hpc_3 ( // @[PerfCounterUtils.scala 351:21]
    .clock(hpc_3_clock),
    .io_hpm_event(hpc_3_io_hpm_event),
    .io_events_sets_0_value(hpc_3_io_events_sets_0_value),
    .io_events_sets_1_value(hpc_3_io_events_sets_1_value),
    .io_events_sets_2_value(hpc_3_io_events_sets_2_value),
    .io_events_sets_3_value(hpc_3_io_events_sets_3_value),
    .io_events_sets_4_value(hpc_3_io_events_sets_4_value),
    .io_events_sets_5_value(hpc_3_io_events_sets_5_value),
    .io_events_sets_6_value(hpc_3_io_events_sets_6_value),
    .io_events_sets_7_value(hpc_3_io_events_sets_7_value),
    .io_events_sets_8_value(hpc_3_io_events_sets_8_value),
    .io_events_sets_9_value(hpc_3_io_events_sets_9_value),
    .io_events_sets_10_value(hpc_3_io_events_sets_10_value),
    .io_events_sets_11_value(hpc_3_io_events_sets_11_value),
    .io_events_sets_12_value(hpc_3_io_events_sets_12_value),
    .io_events_sets_13_value(hpc_3_io_events_sets_13_value),
    .io_events_sets_14_value(hpc_3_io_events_sets_14_value),
    .io_events_sets_15_value(hpc_3_io_events_sets_15_value),
    .io_events_sets_16_value(hpc_3_io_events_sets_16_value),
    .io_events_sets_17_value(hpc_3_io_events_sets_17_value),
    .io_events_sets_18_value(hpc_3_io_events_sets_18_value),
    .io_events_sets_19_value(hpc_3_io_events_sets_19_value),
    .io_events_sets_20_value(hpc_3_io_events_sets_20_value),
    .io_events_sets_21_value(hpc_3_io_events_sets_21_value),
    .io_events_sets_23_value(hpc_3_io_events_sets_23_value),
    .io_events_sets_24_value(hpc_3_io_events_sets_24_value),
    .io_events_sets_25_value(hpc_3_io_events_sets_25_value),
    .io_events_sets_26_value(hpc_3_io_events_sets_26_value),
    .io_events_sets_27_value(hpc_3_io_events_sets_27_value),
    .io_events_sets_28_value(hpc_3_io_events_sets_28_value),
    .io_events_sets_29_value(hpc_3_io_events_sets_29_value),
    .io_events_sets_30_value(hpc_3_io_events_sets_30_value),
    .io_events_sets_31_value(hpc_3_io_events_sets_31_value),
    .io_events_sets_32_value(hpc_3_io_events_sets_32_value),
    .io_events_sets_33_value(hpc_3_io_events_sets_33_value),
    .io_events_sets_34_value(hpc_3_io_events_sets_34_value),
    .io_events_sets_35_value(hpc_3_io_events_sets_35_value),
    .io_events_sets_36_value(hpc_3_io_events_sets_36_value),
    .io_events_sets_37_value(hpc_3_io_events_sets_37_value),
    .io_events_sets_38_value(hpc_3_io_events_sets_38_value),
    .io_events_sets_39_value(hpc_3_io_events_sets_39_value),
    .io_events_sets_40_value(hpc_3_io_events_sets_40_value),
    .io_events_sets_41_value(hpc_3_io_events_sets_41_value),
    .io_events_sets_42_value(hpc_3_io_events_sets_42_value),
    .io_events_sets_43_value(hpc_3_io_events_sets_43_value),
    .io_events_sets_44_value(hpc_3_io_events_sets_44_value),
    .io_events_sets_45_value(hpc_3_io_events_sets_45_value),
    .io_events_sets_46_value(hpc_3_io_events_sets_46_value),
    .io_events_sets_47_value(hpc_3_io_events_sets_47_value),
    .io_events_sets_48_value(hpc_3_io_events_sets_48_value),
    .io_events_sets_49_value(hpc_3_io_events_sets_49_value),
    .io_events_sets_50_value(hpc_3_io_events_sets_50_value),
    .io_events_sets_51_value(hpc_3_io_events_sets_51_value),
    .io_events_sets_52_value(hpc_3_io_events_sets_52_value),
    .io_events_sets_53_value(hpc_3_io_events_sets_53_value),
    .io_events_sets_54_value(hpc_3_io_events_sets_54_value),
    .io_events_sets_55_value(hpc_3_io_events_sets_55_value),
    .io_events_sets_56_value(hpc_3_io_events_sets_56_value),
    .io_events_sets_57_value(hpc_3_io_events_sets_57_value),
    .io_events_sets_58_value(hpc_3_io_events_sets_58_value),
    .io_events_sets_59_value(hpc_3_io_events_sets_59_value),
    .io_events_sets_60_value(hpc_3_io_events_sets_60_value),
    .io_events_sets_61_value(hpc_3_io_events_sets_61_value),
    .io_events_sets_62_value(hpc_3_io_events_sets_62_value),
    .io_events_sets_63_value(hpc_3_io_events_sets_63_value),
    .io_events_sets_64_value(hpc_3_io_events_sets_64_value),
    .io_events_sets_65_value(hpc_3_io_events_sets_65_value),
    .io_events_sets_66_value(hpc_3_io_events_sets_66_value),
    .io_events_sets_67_value(hpc_3_io_events_sets_67_value),
    .io_events_sets_68_value(hpc_3_io_events_sets_68_value),
    .io_events_sets_69_value(hpc_3_io_events_sets_69_value),
    .io_events_sets_70_value(hpc_3_io_events_sets_70_value),
    .io_events_sets_71_value(hpc_3_io_events_sets_71_value),
    .io_events_sets_72_value(hpc_3_io_events_sets_72_value),
    .io_events_sets_73_value(hpc_3_io_events_sets_73_value),
    .io_events_sets_74_value(hpc_3_io_events_sets_74_value),
    .io_events_sets_75_value(hpc_3_io_events_sets_75_value),
    .io_events_sets_76_value(hpc_3_io_events_sets_76_value),
    .io_events_sets_77_value(hpc_3_io_events_sets_77_value),
    .io_events_sets_78_value(hpc_3_io_events_sets_78_value),
    .io_events_sets_79_value(hpc_3_io_events_sets_79_value),
    .io_events_sets_80_value(hpc_3_io_events_sets_80_value),
    .io_events_sets_81_value(hpc_3_io_events_sets_81_value),
    .io_events_sets_82_value(hpc_3_io_events_sets_82_value),
    .io_events_sets_83_value(hpc_3_io_events_sets_83_value),
    .io_events_sets_84_value(hpc_3_io_events_sets_84_value),
    .io_events_sets_85_value(hpc_3_io_events_sets_85_value),
    .io_events_sets_86_value(hpc_3_io_events_sets_86_value),
    .io_events_sets_87_value(hpc_3_io_events_sets_87_value),
    .io_events_sets_88_value(hpc_3_io_events_sets_88_value),
    .io_perf_0_value(hpc_3_io_perf_0_value)
  );
  HPerfCounter_21 hpc_4 ( // @[PerfCounterUtils.scala 351:21]
    .clock(hpc_4_clock),
    .io_hpm_event(hpc_4_io_hpm_event),
    .io_events_sets_0_value(hpc_4_io_events_sets_0_value),
    .io_events_sets_1_value(hpc_4_io_events_sets_1_value),
    .io_events_sets_2_value(hpc_4_io_events_sets_2_value),
    .io_events_sets_3_value(hpc_4_io_events_sets_3_value),
    .io_events_sets_4_value(hpc_4_io_events_sets_4_value),
    .io_events_sets_5_value(hpc_4_io_events_sets_5_value),
    .io_events_sets_6_value(hpc_4_io_events_sets_6_value),
    .io_events_sets_7_value(hpc_4_io_events_sets_7_value),
    .io_events_sets_8_value(hpc_4_io_events_sets_8_value),
    .io_events_sets_9_value(hpc_4_io_events_sets_9_value),
    .io_events_sets_10_value(hpc_4_io_events_sets_10_value),
    .io_events_sets_11_value(hpc_4_io_events_sets_11_value),
    .io_events_sets_12_value(hpc_4_io_events_sets_12_value),
    .io_events_sets_13_value(hpc_4_io_events_sets_13_value),
    .io_events_sets_14_value(hpc_4_io_events_sets_14_value),
    .io_events_sets_15_value(hpc_4_io_events_sets_15_value),
    .io_events_sets_16_value(hpc_4_io_events_sets_16_value),
    .io_events_sets_17_value(hpc_4_io_events_sets_17_value),
    .io_events_sets_18_value(hpc_4_io_events_sets_18_value),
    .io_events_sets_19_value(hpc_4_io_events_sets_19_value),
    .io_events_sets_20_value(hpc_4_io_events_sets_20_value),
    .io_events_sets_21_value(hpc_4_io_events_sets_21_value),
    .io_events_sets_23_value(hpc_4_io_events_sets_23_value),
    .io_events_sets_24_value(hpc_4_io_events_sets_24_value),
    .io_events_sets_25_value(hpc_4_io_events_sets_25_value),
    .io_events_sets_26_value(hpc_4_io_events_sets_26_value),
    .io_events_sets_27_value(hpc_4_io_events_sets_27_value),
    .io_events_sets_28_value(hpc_4_io_events_sets_28_value),
    .io_events_sets_29_value(hpc_4_io_events_sets_29_value),
    .io_events_sets_30_value(hpc_4_io_events_sets_30_value),
    .io_events_sets_31_value(hpc_4_io_events_sets_31_value),
    .io_events_sets_32_value(hpc_4_io_events_sets_32_value),
    .io_events_sets_33_value(hpc_4_io_events_sets_33_value),
    .io_events_sets_34_value(hpc_4_io_events_sets_34_value),
    .io_events_sets_35_value(hpc_4_io_events_sets_35_value),
    .io_events_sets_36_value(hpc_4_io_events_sets_36_value),
    .io_events_sets_37_value(hpc_4_io_events_sets_37_value),
    .io_events_sets_38_value(hpc_4_io_events_sets_38_value),
    .io_events_sets_39_value(hpc_4_io_events_sets_39_value),
    .io_events_sets_40_value(hpc_4_io_events_sets_40_value),
    .io_events_sets_41_value(hpc_4_io_events_sets_41_value),
    .io_events_sets_42_value(hpc_4_io_events_sets_42_value),
    .io_events_sets_43_value(hpc_4_io_events_sets_43_value),
    .io_events_sets_44_value(hpc_4_io_events_sets_44_value),
    .io_events_sets_45_value(hpc_4_io_events_sets_45_value),
    .io_events_sets_46_value(hpc_4_io_events_sets_46_value),
    .io_events_sets_47_value(hpc_4_io_events_sets_47_value),
    .io_events_sets_48_value(hpc_4_io_events_sets_48_value),
    .io_events_sets_49_value(hpc_4_io_events_sets_49_value),
    .io_events_sets_50_value(hpc_4_io_events_sets_50_value),
    .io_events_sets_51_value(hpc_4_io_events_sets_51_value),
    .io_events_sets_52_value(hpc_4_io_events_sets_52_value),
    .io_events_sets_53_value(hpc_4_io_events_sets_53_value),
    .io_events_sets_54_value(hpc_4_io_events_sets_54_value),
    .io_events_sets_55_value(hpc_4_io_events_sets_55_value),
    .io_events_sets_56_value(hpc_4_io_events_sets_56_value),
    .io_events_sets_57_value(hpc_4_io_events_sets_57_value),
    .io_events_sets_58_value(hpc_4_io_events_sets_58_value),
    .io_events_sets_59_value(hpc_4_io_events_sets_59_value),
    .io_events_sets_60_value(hpc_4_io_events_sets_60_value),
    .io_events_sets_61_value(hpc_4_io_events_sets_61_value),
    .io_events_sets_62_value(hpc_4_io_events_sets_62_value),
    .io_events_sets_63_value(hpc_4_io_events_sets_63_value),
    .io_events_sets_64_value(hpc_4_io_events_sets_64_value),
    .io_events_sets_65_value(hpc_4_io_events_sets_65_value),
    .io_events_sets_66_value(hpc_4_io_events_sets_66_value),
    .io_events_sets_67_value(hpc_4_io_events_sets_67_value),
    .io_events_sets_68_value(hpc_4_io_events_sets_68_value),
    .io_events_sets_69_value(hpc_4_io_events_sets_69_value),
    .io_events_sets_70_value(hpc_4_io_events_sets_70_value),
    .io_events_sets_71_value(hpc_4_io_events_sets_71_value),
    .io_events_sets_72_value(hpc_4_io_events_sets_72_value),
    .io_events_sets_73_value(hpc_4_io_events_sets_73_value),
    .io_events_sets_74_value(hpc_4_io_events_sets_74_value),
    .io_events_sets_75_value(hpc_4_io_events_sets_75_value),
    .io_events_sets_76_value(hpc_4_io_events_sets_76_value),
    .io_events_sets_77_value(hpc_4_io_events_sets_77_value),
    .io_events_sets_78_value(hpc_4_io_events_sets_78_value),
    .io_events_sets_79_value(hpc_4_io_events_sets_79_value),
    .io_events_sets_80_value(hpc_4_io_events_sets_80_value),
    .io_events_sets_81_value(hpc_4_io_events_sets_81_value),
    .io_events_sets_82_value(hpc_4_io_events_sets_82_value),
    .io_events_sets_83_value(hpc_4_io_events_sets_83_value),
    .io_events_sets_84_value(hpc_4_io_events_sets_84_value),
    .io_events_sets_85_value(hpc_4_io_events_sets_85_value),
    .io_events_sets_86_value(hpc_4_io_events_sets_86_value),
    .io_events_sets_87_value(hpc_4_io_events_sets_87_value),
    .io_events_sets_88_value(hpc_4_io_events_sets_88_value),
    .io_perf_0_value(hpc_4_io_perf_0_value)
  );
  HPerfCounter_21 hpc_5 ( // @[PerfCounterUtils.scala 351:21]
    .clock(hpc_5_clock),
    .io_hpm_event(hpc_5_io_hpm_event),
    .io_events_sets_0_value(hpc_5_io_events_sets_0_value),
    .io_events_sets_1_value(hpc_5_io_events_sets_1_value),
    .io_events_sets_2_value(hpc_5_io_events_sets_2_value),
    .io_events_sets_3_value(hpc_5_io_events_sets_3_value),
    .io_events_sets_4_value(hpc_5_io_events_sets_4_value),
    .io_events_sets_5_value(hpc_5_io_events_sets_5_value),
    .io_events_sets_6_value(hpc_5_io_events_sets_6_value),
    .io_events_sets_7_value(hpc_5_io_events_sets_7_value),
    .io_events_sets_8_value(hpc_5_io_events_sets_8_value),
    .io_events_sets_9_value(hpc_5_io_events_sets_9_value),
    .io_events_sets_10_value(hpc_5_io_events_sets_10_value),
    .io_events_sets_11_value(hpc_5_io_events_sets_11_value),
    .io_events_sets_12_value(hpc_5_io_events_sets_12_value),
    .io_events_sets_13_value(hpc_5_io_events_sets_13_value),
    .io_events_sets_14_value(hpc_5_io_events_sets_14_value),
    .io_events_sets_15_value(hpc_5_io_events_sets_15_value),
    .io_events_sets_16_value(hpc_5_io_events_sets_16_value),
    .io_events_sets_17_value(hpc_5_io_events_sets_17_value),
    .io_events_sets_18_value(hpc_5_io_events_sets_18_value),
    .io_events_sets_19_value(hpc_5_io_events_sets_19_value),
    .io_events_sets_20_value(hpc_5_io_events_sets_20_value),
    .io_events_sets_21_value(hpc_5_io_events_sets_21_value),
    .io_events_sets_23_value(hpc_5_io_events_sets_23_value),
    .io_events_sets_24_value(hpc_5_io_events_sets_24_value),
    .io_events_sets_25_value(hpc_5_io_events_sets_25_value),
    .io_events_sets_26_value(hpc_5_io_events_sets_26_value),
    .io_events_sets_27_value(hpc_5_io_events_sets_27_value),
    .io_events_sets_28_value(hpc_5_io_events_sets_28_value),
    .io_events_sets_29_value(hpc_5_io_events_sets_29_value),
    .io_events_sets_30_value(hpc_5_io_events_sets_30_value),
    .io_events_sets_31_value(hpc_5_io_events_sets_31_value),
    .io_events_sets_32_value(hpc_5_io_events_sets_32_value),
    .io_events_sets_33_value(hpc_5_io_events_sets_33_value),
    .io_events_sets_34_value(hpc_5_io_events_sets_34_value),
    .io_events_sets_35_value(hpc_5_io_events_sets_35_value),
    .io_events_sets_36_value(hpc_5_io_events_sets_36_value),
    .io_events_sets_37_value(hpc_5_io_events_sets_37_value),
    .io_events_sets_38_value(hpc_5_io_events_sets_38_value),
    .io_events_sets_39_value(hpc_5_io_events_sets_39_value),
    .io_events_sets_40_value(hpc_5_io_events_sets_40_value),
    .io_events_sets_41_value(hpc_5_io_events_sets_41_value),
    .io_events_sets_42_value(hpc_5_io_events_sets_42_value),
    .io_events_sets_43_value(hpc_5_io_events_sets_43_value),
    .io_events_sets_44_value(hpc_5_io_events_sets_44_value),
    .io_events_sets_45_value(hpc_5_io_events_sets_45_value),
    .io_events_sets_46_value(hpc_5_io_events_sets_46_value),
    .io_events_sets_47_value(hpc_5_io_events_sets_47_value),
    .io_events_sets_48_value(hpc_5_io_events_sets_48_value),
    .io_events_sets_49_value(hpc_5_io_events_sets_49_value),
    .io_events_sets_50_value(hpc_5_io_events_sets_50_value),
    .io_events_sets_51_value(hpc_5_io_events_sets_51_value),
    .io_events_sets_52_value(hpc_5_io_events_sets_52_value),
    .io_events_sets_53_value(hpc_5_io_events_sets_53_value),
    .io_events_sets_54_value(hpc_5_io_events_sets_54_value),
    .io_events_sets_55_value(hpc_5_io_events_sets_55_value),
    .io_events_sets_56_value(hpc_5_io_events_sets_56_value),
    .io_events_sets_57_value(hpc_5_io_events_sets_57_value),
    .io_events_sets_58_value(hpc_5_io_events_sets_58_value),
    .io_events_sets_59_value(hpc_5_io_events_sets_59_value),
    .io_events_sets_60_value(hpc_5_io_events_sets_60_value),
    .io_events_sets_61_value(hpc_5_io_events_sets_61_value),
    .io_events_sets_62_value(hpc_5_io_events_sets_62_value),
    .io_events_sets_63_value(hpc_5_io_events_sets_63_value),
    .io_events_sets_64_value(hpc_5_io_events_sets_64_value),
    .io_events_sets_65_value(hpc_5_io_events_sets_65_value),
    .io_events_sets_66_value(hpc_5_io_events_sets_66_value),
    .io_events_sets_67_value(hpc_5_io_events_sets_67_value),
    .io_events_sets_68_value(hpc_5_io_events_sets_68_value),
    .io_events_sets_69_value(hpc_5_io_events_sets_69_value),
    .io_events_sets_70_value(hpc_5_io_events_sets_70_value),
    .io_events_sets_71_value(hpc_5_io_events_sets_71_value),
    .io_events_sets_72_value(hpc_5_io_events_sets_72_value),
    .io_events_sets_73_value(hpc_5_io_events_sets_73_value),
    .io_events_sets_74_value(hpc_5_io_events_sets_74_value),
    .io_events_sets_75_value(hpc_5_io_events_sets_75_value),
    .io_events_sets_76_value(hpc_5_io_events_sets_76_value),
    .io_events_sets_77_value(hpc_5_io_events_sets_77_value),
    .io_events_sets_78_value(hpc_5_io_events_sets_78_value),
    .io_events_sets_79_value(hpc_5_io_events_sets_79_value),
    .io_events_sets_80_value(hpc_5_io_events_sets_80_value),
    .io_events_sets_81_value(hpc_5_io_events_sets_81_value),
    .io_events_sets_82_value(hpc_5_io_events_sets_82_value),
    .io_events_sets_83_value(hpc_5_io_events_sets_83_value),
    .io_events_sets_84_value(hpc_5_io_events_sets_84_value),
    .io_events_sets_85_value(hpc_5_io_events_sets_85_value),
    .io_events_sets_86_value(hpc_5_io_events_sets_86_value),
    .io_events_sets_87_value(hpc_5_io_events_sets_87_value),
    .io_events_sets_88_value(hpc_5_io_events_sets_88_value),
    .io_perf_0_value(hpc_5_io_perf_0_value)
  );
  HPerfCounter_21 hpc_6 ( // @[PerfCounterUtils.scala 351:21]
    .clock(hpc_6_clock),
    .io_hpm_event(hpc_6_io_hpm_event),
    .io_events_sets_0_value(hpc_6_io_events_sets_0_value),
    .io_events_sets_1_value(hpc_6_io_events_sets_1_value),
    .io_events_sets_2_value(hpc_6_io_events_sets_2_value),
    .io_events_sets_3_value(hpc_6_io_events_sets_3_value),
    .io_events_sets_4_value(hpc_6_io_events_sets_4_value),
    .io_events_sets_5_value(hpc_6_io_events_sets_5_value),
    .io_events_sets_6_value(hpc_6_io_events_sets_6_value),
    .io_events_sets_7_value(hpc_6_io_events_sets_7_value),
    .io_events_sets_8_value(hpc_6_io_events_sets_8_value),
    .io_events_sets_9_value(hpc_6_io_events_sets_9_value),
    .io_events_sets_10_value(hpc_6_io_events_sets_10_value),
    .io_events_sets_11_value(hpc_6_io_events_sets_11_value),
    .io_events_sets_12_value(hpc_6_io_events_sets_12_value),
    .io_events_sets_13_value(hpc_6_io_events_sets_13_value),
    .io_events_sets_14_value(hpc_6_io_events_sets_14_value),
    .io_events_sets_15_value(hpc_6_io_events_sets_15_value),
    .io_events_sets_16_value(hpc_6_io_events_sets_16_value),
    .io_events_sets_17_value(hpc_6_io_events_sets_17_value),
    .io_events_sets_18_value(hpc_6_io_events_sets_18_value),
    .io_events_sets_19_value(hpc_6_io_events_sets_19_value),
    .io_events_sets_20_value(hpc_6_io_events_sets_20_value),
    .io_events_sets_21_value(hpc_6_io_events_sets_21_value),
    .io_events_sets_23_value(hpc_6_io_events_sets_23_value),
    .io_events_sets_24_value(hpc_6_io_events_sets_24_value),
    .io_events_sets_25_value(hpc_6_io_events_sets_25_value),
    .io_events_sets_26_value(hpc_6_io_events_sets_26_value),
    .io_events_sets_27_value(hpc_6_io_events_sets_27_value),
    .io_events_sets_28_value(hpc_6_io_events_sets_28_value),
    .io_events_sets_29_value(hpc_6_io_events_sets_29_value),
    .io_events_sets_30_value(hpc_6_io_events_sets_30_value),
    .io_events_sets_31_value(hpc_6_io_events_sets_31_value),
    .io_events_sets_32_value(hpc_6_io_events_sets_32_value),
    .io_events_sets_33_value(hpc_6_io_events_sets_33_value),
    .io_events_sets_34_value(hpc_6_io_events_sets_34_value),
    .io_events_sets_35_value(hpc_6_io_events_sets_35_value),
    .io_events_sets_36_value(hpc_6_io_events_sets_36_value),
    .io_events_sets_37_value(hpc_6_io_events_sets_37_value),
    .io_events_sets_38_value(hpc_6_io_events_sets_38_value),
    .io_events_sets_39_value(hpc_6_io_events_sets_39_value),
    .io_events_sets_40_value(hpc_6_io_events_sets_40_value),
    .io_events_sets_41_value(hpc_6_io_events_sets_41_value),
    .io_events_sets_42_value(hpc_6_io_events_sets_42_value),
    .io_events_sets_43_value(hpc_6_io_events_sets_43_value),
    .io_events_sets_44_value(hpc_6_io_events_sets_44_value),
    .io_events_sets_45_value(hpc_6_io_events_sets_45_value),
    .io_events_sets_46_value(hpc_6_io_events_sets_46_value),
    .io_events_sets_47_value(hpc_6_io_events_sets_47_value),
    .io_events_sets_48_value(hpc_6_io_events_sets_48_value),
    .io_events_sets_49_value(hpc_6_io_events_sets_49_value),
    .io_events_sets_50_value(hpc_6_io_events_sets_50_value),
    .io_events_sets_51_value(hpc_6_io_events_sets_51_value),
    .io_events_sets_52_value(hpc_6_io_events_sets_52_value),
    .io_events_sets_53_value(hpc_6_io_events_sets_53_value),
    .io_events_sets_54_value(hpc_6_io_events_sets_54_value),
    .io_events_sets_55_value(hpc_6_io_events_sets_55_value),
    .io_events_sets_56_value(hpc_6_io_events_sets_56_value),
    .io_events_sets_57_value(hpc_6_io_events_sets_57_value),
    .io_events_sets_58_value(hpc_6_io_events_sets_58_value),
    .io_events_sets_59_value(hpc_6_io_events_sets_59_value),
    .io_events_sets_60_value(hpc_6_io_events_sets_60_value),
    .io_events_sets_61_value(hpc_6_io_events_sets_61_value),
    .io_events_sets_62_value(hpc_6_io_events_sets_62_value),
    .io_events_sets_63_value(hpc_6_io_events_sets_63_value),
    .io_events_sets_64_value(hpc_6_io_events_sets_64_value),
    .io_events_sets_65_value(hpc_6_io_events_sets_65_value),
    .io_events_sets_66_value(hpc_6_io_events_sets_66_value),
    .io_events_sets_67_value(hpc_6_io_events_sets_67_value),
    .io_events_sets_68_value(hpc_6_io_events_sets_68_value),
    .io_events_sets_69_value(hpc_6_io_events_sets_69_value),
    .io_events_sets_70_value(hpc_6_io_events_sets_70_value),
    .io_events_sets_71_value(hpc_6_io_events_sets_71_value),
    .io_events_sets_72_value(hpc_6_io_events_sets_72_value),
    .io_events_sets_73_value(hpc_6_io_events_sets_73_value),
    .io_events_sets_74_value(hpc_6_io_events_sets_74_value),
    .io_events_sets_75_value(hpc_6_io_events_sets_75_value),
    .io_events_sets_76_value(hpc_6_io_events_sets_76_value),
    .io_events_sets_77_value(hpc_6_io_events_sets_77_value),
    .io_events_sets_78_value(hpc_6_io_events_sets_78_value),
    .io_events_sets_79_value(hpc_6_io_events_sets_79_value),
    .io_events_sets_80_value(hpc_6_io_events_sets_80_value),
    .io_events_sets_81_value(hpc_6_io_events_sets_81_value),
    .io_events_sets_82_value(hpc_6_io_events_sets_82_value),
    .io_events_sets_83_value(hpc_6_io_events_sets_83_value),
    .io_events_sets_84_value(hpc_6_io_events_sets_84_value),
    .io_events_sets_85_value(hpc_6_io_events_sets_85_value),
    .io_events_sets_86_value(hpc_6_io_events_sets_86_value),
    .io_events_sets_87_value(hpc_6_io_events_sets_87_value),
    .io_events_sets_88_value(hpc_6_io_events_sets_88_value),
    .io_perf_0_value(hpc_6_io_perf_0_value)
  );
  HPerfCounter_21 hpc_7 ( // @[PerfCounterUtils.scala 351:21]
    .clock(hpc_7_clock),
    .io_hpm_event(hpc_7_io_hpm_event),
    .io_events_sets_0_value(hpc_7_io_events_sets_0_value),
    .io_events_sets_1_value(hpc_7_io_events_sets_1_value),
    .io_events_sets_2_value(hpc_7_io_events_sets_2_value),
    .io_events_sets_3_value(hpc_7_io_events_sets_3_value),
    .io_events_sets_4_value(hpc_7_io_events_sets_4_value),
    .io_events_sets_5_value(hpc_7_io_events_sets_5_value),
    .io_events_sets_6_value(hpc_7_io_events_sets_6_value),
    .io_events_sets_7_value(hpc_7_io_events_sets_7_value),
    .io_events_sets_8_value(hpc_7_io_events_sets_8_value),
    .io_events_sets_9_value(hpc_7_io_events_sets_9_value),
    .io_events_sets_10_value(hpc_7_io_events_sets_10_value),
    .io_events_sets_11_value(hpc_7_io_events_sets_11_value),
    .io_events_sets_12_value(hpc_7_io_events_sets_12_value),
    .io_events_sets_13_value(hpc_7_io_events_sets_13_value),
    .io_events_sets_14_value(hpc_7_io_events_sets_14_value),
    .io_events_sets_15_value(hpc_7_io_events_sets_15_value),
    .io_events_sets_16_value(hpc_7_io_events_sets_16_value),
    .io_events_sets_17_value(hpc_7_io_events_sets_17_value),
    .io_events_sets_18_value(hpc_7_io_events_sets_18_value),
    .io_events_sets_19_value(hpc_7_io_events_sets_19_value),
    .io_events_sets_20_value(hpc_7_io_events_sets_20_value),
    .io_events_sets_21_value(hpc_7_io_events_sets_21_value),
    .io_events_sets_23_value(hpc_7_io_events_sets_23_value),
    .io_events_sets_24_value(hpc_7_io_events_sets_24_value),
    .io_events_sets_25_value(hpc_7_io_events_sets_25_value),
    .io_events_sets_26_value(hpc_7_io_events_sets_26_value),
    .io_events_sets_27_value(hpc_7_io_events_sets_27_value),
    .io_events_sets_28_value(hpc_7_io_events_sets_28_value),
    .io_events_sets_29_value(hpc_7_io_events_sets_29_value),
    .io_events_sets_30_value(hpc_7_io_events_sets_30_value),
    .io_events_sets_31_value(hpc_7_io_events_sets_31_value),
    .io_events_sets_32_value(hpc_7_io_events_sets_32_value),
    .io_events_sets_33_value(hpc_7_io_events_sets_33_value),
    .io_events_sets_34_value(hpc_7_io_events_sets_34_value),
    .io_events_sets_35_value(hpc_7_io_events_sets_35_value),
    .io_events_sets_36_value(hpc_7_io_events_sets_36_value),
    .io_events_sets_37_value(hpc_7_io_events_sets_37_value),
    .io_events_sets_38_value(hpc_7_io_events_sets_38_value),
    .io_events_sets_39_value(hpc_7_io_events_sets_39_value),
    .io_events_sets_40_value(hpc_7_io_events_sets_40_value),
    .io_events_sets_41_value(hpc_7_io_events_sets_41_value),
    .io_events_sets_42_value(hpc_7_io_events_sets_42_value),
    .io_events_sets_43_value(hpc_7_io_events_sets_43_value),
    .io_events_sets_44_value(hpc_7_io_events_sets_44_value),
    .io_events_sets_45_value(hpc_7_io_events_sets_45_value),
    .io_events_sets_46_value(hpc_7_io_events_sets_46_value),
    .io_events_sets_47_value(hpc_7_io_events_sets_47_value),
    .io_events_sets_48_value(hpc_7_io_events_sets_48_value),
    .io_events_sets_49_value(hpc_7_io_events_sets_49_value),
    .io_events_sets_50_value(hpc_7_io_events_sets_50_value),
    .io_events_sets_51_value(hpc_7_io_events_sets_51_value),
    .io_events_sets_52_value(hpc_7_io_events_sets_52_value),
    .io_events_sets_53_value(hpc_7_io_events_sets_53_value),
    .io_events_sets_54_value(hpc_7_io_events_sets_54_value),
    .io_events_sets_55_value(hpc_7_io_events_sets_55_value),
    .io_events_sets_56_value(hpc_7_io_events_sets_56_value),
    .io_events_sets_57_value(hpc_7_io_events_sets_57_value),
    .io_events_sets_58_value(hpc_7_io_events_sets_58_value),
    .io_events_sets_59_value(hpc_7_io_events_sets_59_value),
    .io_events_sets_60_value(hpc_7_io_events_sets_60_value),
    .io_events_sets_61_value(hpc_7_io_events_sets_61_value),
    .io_events_sets_62_value(hpc_7_io_events_sets_62_value),
    .io_events_sets_63_value(hpc_7_io_events_sets_63_value),
    .io_events_sets_64_value(hpc_7_io_events_sets_64_value),
    .io_events_sets_65_value(hpc_7_io_events_sets_65_value),
    .io_events_sets_66_value(hpc_7_io_events_sets_66_value),
    .io_events_sets_67_value(hpc_7_io_events_sets_67_value),
    .io_events_sets_68_value(hpc_7_io_events_sets_68_value),
    .io_events_sets_69_value(hpc_7_io_events_sets_69_value),
    .io_events_sets_70_value(hpc_7_io_events_sets_70_value),
    .io_events_sets_71_value(hpc_7_io_events_sets_71_value),
    .io_events_sets_72_value(hpc_7_io_events_sets_72_value),
    .io_events_sets_73_value(hpc_7_io_events_sets_73_value),
    .io_events_sets_74_value(hpc_7_io_events_sets_74_value),
    .io_events_sets_75_value(hpc_7_io_events_sets_75_value),
    .io_events_sets_76_value(hpc_7_io_events_sets_76_value),
    .io_events_sets_77_value(hpc_7_io_events_sets_77_value),
    .io_events_sets_78_value(hpc_7_io_events_sets_78_value),
    .io_events_sets_79_value(hpc_7_io_events_sets_79_value),
    .io_events_sets_80_value(hpc_7_io_events_sets_80_value),
    .io_events_sets_81_value(hpc_7_io_events_sets_81_value),
    .io_events_sets_82_value(hpc_7_io_events_sets_82_value),
    .io_events_sets_83_value(hpc_7_io_events_sets_83_value),
    .io_events_sets_84_value(hpc_7_io_events_sets_84_value),
    .io_events_sets_85_value(hpc_7_io_events_sets_85_value),
    .io_events_sets_86_value(hpc_7_io_events_sets_86_value),
    .io_events_sets_87_value(hpc_7_io_events_sets_87_value),
    .io_events_sets_88_value(hpc_7_io_events_sets_88_value),
    .io_perf_0_value(hpc_7_io_perf_0_value)
  );
  assign io_perf_0_value = io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_4_value = io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_5_value = io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_6_value = io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_7_value = io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign hpc_clock = clock;
  assign hpc_io_hpm_event = io_hpm_event_0; // @[PerfCounterUtils.scala 353:24]
  assign hpc_io_events_sets_0_value = io_events_sets_0_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_1_value = io_events_sets_1_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_2_value = io_events_sets_2_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_3_value = io_events_sets_3_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_4_value = io_events_sets_4_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_5_value = io_events_sets_5_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_6_value = io_events_sets_6_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_7_value = io_events_sets_7_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_8_value = io_events_sets_8_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_9_value = io_events_sets_9_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_10_value = io_events_sets_10_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_11_value = io_events_sets_11_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_12_value = io_events_sets_12_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_13_value = io_events_sets_13_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_14_value = io_events_sets_14_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_15_value = io_events_sets_15_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_16_value = io_events_sets_16_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_17_value = io_events_sets_17_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_18_value = io_events_sets_18_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_19_value = io_events_sets_19_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_20_value = io_events_sets_20_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_21_value = io_events_sets_21_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_23_value = io_events_sets_23_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_24_value = io_events_sets_24_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_25_value = io_events_sets_25_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_26_value = io_events_sets_26_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_27_value = io_events_sets_27_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_28_value = io_events_sets_28_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_29_value = io_events_sets_29_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_30_value = io_events_sets_30_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_31_value = io_events_sets_31_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_32_value = io_events_sets_32_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_33_value = io_events_sets_33_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_34_value = io_events_sets_34_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_35_value = io_events_sets_35_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_36_value = io_events_sets_36_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_37_value = io_events_sets_37_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_38_value = io_events_sets_38_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_39_value = io_events_sets_39_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_40_value = io_events_sets_40_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_41_value = io_events_sets_41_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_42_value = io_events_sets_42_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_43_value = io_events_sets_43_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_44_value = io_events_sets_44_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_45_value = io_events_sets_45_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_46_value = io_events_sets_46_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_47_value = io_events_sets_47_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_48_value = io_events_sets_48_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_49_value = io_events_sets_49_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_50_value = io_events_sets_50_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_51_value = io_events_sets_51_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_52_value = io_events_sets_52_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_53_value = io_events_sets_53_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_54_value = io_events_sets_54_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_55_value = io_events_sets_55_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_56_value = io_events_sets_56_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_57_value = io_events_sets_57_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_58_value = io_events_sets_58_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_59_value = io_events_sets_59_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_60_value = io_events_sets_60_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_61_value = io_events_sets_61_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_62_value = io_events_sets_62_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_63_value = io_events_sets_63_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_64_value = io_events_sets_64_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_65_value = io_events_sets_65_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_66_value = io_events_sets_66_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_67_value = io_events_sets_67_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_68_value = io_events_sets_68_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_69_value = io_events_sets_69_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_70_value = io_events_sets_70_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_71_value = io_events_sets_71_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_72_value = io_events_sets_72_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_73_value = io_events_sets_73_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_74_value = io_events_sets_74_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_75_value = io_events_sets_75_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_76_value = io_events_sets_76_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_77_value = io_events_sets_77_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_78_value = io_events_sets_78_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_79_value = io_events_sets_79_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_80_value = io_events_sets_80_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_81_value = io_events_sets_81_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_82_value = io_events_sets_82_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_83_value = io_events_sets_83_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_84_value = io_events_sets_84_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_85_value = io_events_sets_85_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_86_value = io_events_sets_86_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_87_value = io_events_sets_87_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_io_events_sets_88_value = io_events_sets_88_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_clock = clock;
  assign hpc_1_io_hpm_event = io_hpm_event_1; // @[PerfCounterUtils.scala 353:24]
  assign hpc_1_io_events_sets_0_value = io_events_sets_0_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_1_value = io_events_sets_1_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_2_value = io_events_sets_2_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_3_value = io_events_sets_3_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_4_value = io_events_sets_4_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_5_value = io_events_sets_5_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_6_value = io_events_sets_6_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_7_value = io_events_sets_7_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_8_value = io_events_sets_8_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_9_value = io_events_sets_9_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_10_value = io_events_sets_10_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_11_value = io_events_sets_11_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_12_value = io_events_sets_12_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_13_value = io_events_sets_13_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_14_value = io_events_sets_14_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_15_value = io_events_sets_15_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_16_value = io_events_sets_16_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_17_value = io_events_sets_17_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_18_value = io_events_sets_18_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_19_value = io_events_sets_19_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_20_value = io_events_sets_20_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_21_value = io_events_sets_21_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_23_value = io_events_sets_23_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_24_value = io_events_sets_24_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_25_value = io_events_sets_25_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_26_value = io_events_sets_26_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_27_value = io_events_sets_27_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_28_value = io_events_sets_28_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_29_value = io_events_sets_29_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_30_value = io_events_sets_30_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_31_value = io_events_sets_31_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_32_value = io_events_sets_32_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_33_value = io_events_sets_33_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_34_value = io_events_sets_34_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_35_value = io_events_sets_35_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_36_value = io_events_sets_36_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_37_value = io_events_sets_37_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_38_value = io_events_sets_38_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_39_value = io_events_sets_39_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_40_value = io_events_sets_40_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_41_value = io_events_sets_41_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_42_value = io_events_sets_42_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_43_value = io_events_sets_43_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_44_value = io_events_sets_44_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_45_value = io_events_sets_45_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_46_value = io_events_sets_46_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_47_value = io_events_sets_47_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_48_value = io_events_sets_48_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_49_value = io_events_sets_49_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_50_value = io_events_sets_50_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_51_value = io_events_sets_51_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_52_value = io_events_sets_52_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_53_value = io_events_sets_53_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_54_value = io_events_sets_54_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_55_value = io_events_sets_55_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_56_value = io_events_sets_56_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_57_value = io_events_sets_57_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_58_value = io_events_sets_58_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_59_value = io_events_sets_59_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_60_value = io_events_sets_60_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_61_value = io_events_sets_61_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_62_value = io_events_sets_62_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_63_value = io_events_sets_63_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_64_value = io_events_sets_64_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_65_value = io_events_sets_65_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_66_value = io_events_sets_66_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_67_value = io_events_sets_67_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_68_value = io_events_sets_68_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_69_value = io_events_sets_69_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_70_value = io_events_sets_70_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_71_value = io_events_sets_71_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_72_value = io_events_sets_72_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_73_value = io_events_sets_73_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_74_value = io_events_sets_74_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_75_value = io_events_sets_75_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_76_value = io_events_sets_76_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_77_value = io_events_sets_77_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_78_value = io_events_sets_78_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_79_value = io_events_sets_79_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_80_value = io_events_sets_80_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_81_value = io_events_sets_81_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_82_value = io_events_sets_82_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_83_value = io_events_sets_83_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_84_value = io_events_sets_84_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_85_value = io_events_sets_85_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_86_value = io_events_sets_86_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_87_value = io_events_sets_87_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_1_io_events_sets_88_value = io_events_sets_88_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_clock = clock;
  assign hpc_2_io_hpm_event = io_hpm_event_2; // @[PerfCounterUtils.scala 353:24]
  assign hpc_2_io_events_sets_0_value = io_events_sets_0_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_1_value = io_events_sets_1_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_2_value = io_events_sets_2_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_3_value = io_events_sets_3_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_4_value = io_events_sets_4_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_5_value = io_events_sets_5_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_6_value = io_events_sets_6_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_7_value = io_events_sets_7_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_8_value = io_events_sets_8_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_9_value = io_events_sets_9_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_10_value = io_events_sets_10_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_11_value = io_events_sets_11_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_12_value = io_events_sets_12_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_13_value = io_events_sets_13_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_14_value = io_events_sets_14_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_15_value = io_events_sets_15_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_16_value = io_events_sets_16_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_17_value = io_events_sets_17_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_18_value = io_events_sets_18_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_19_value = io_events_sets_19_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_20_value = io_events_sets_20_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_21_value = io_events_sets_21_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_23_value = io_events_sets_23_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_24_value = io_events_sets_24_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_25_value = io_events_sets_25_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_26_value = io_events_sets_26_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_27_value = io_events_sets_27_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_28_value = io_events_sets_28_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_29_value = io_events_sets_29_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_30_value = io_events_sets_30_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_31_value = io_events_sets_31_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_32_value = io_events_sets_32_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_33_value = io_events_sets_33_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_34_value = io_events_sets_34_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_35_value = io_events_sets_35_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_36_value = io_events_sets_36_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_37_value = io_events_sets_37_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_38_value = io_events_sets_38_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_39_value = io_events_sets_39_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_40_value = io_events_sets_40_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_41_value = io_events_sets_41_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_42_value = io_events_sets_42_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_43_value = io_events_sets_43_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_44_value = io_events_sets_44_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_45_value = io_events_sets_45_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_46_value = io_events_sets_46_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_47_value = io_events_sets_47_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_48_value = io_events_sets_48_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_49_value = io_events_sets_49_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_50_value = io_events_sets_50_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_51_value = io_events_sets_51_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_52_value = io_events_sets_52_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_53_value = io_events_sets_53_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_54_value = io_events_sets_54_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_55_value = io_events_sets_55_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_56_value = io_events_sets_56_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_57_value = io_events_sets_57_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_58_value = io_events_sets_58_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_59_value = io_events_sets_59_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_60_value = io_events_sets_60_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_61_value = io_events_sets_61_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_62_value = io_events_sets_62_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_63_value = io_events_sets_63_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_64_value = io_events_sets_64_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_65_value = io_events_sets_65_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_66_value = io_events_sets_66_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_67_value = io_events_sets_67_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_68_value = io_events_sets_68_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_69_value = io_events_sets_69_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_70_value = io_events_sets_70_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_71_value = io_events_sets_71_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_72_value = io_events_sets_72_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_73_value = io_events_sets_73_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_74_value = io_events_sets_74_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_75_value = io_events_sets_75_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_76_value = io_events_sets_76_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_77_value = io_events_sets_77_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_78_value = io_events_sets_78_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_79_value = io_events_sets_79_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_80_value = io_events_sets_80_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_81_value = io_events_sets_81_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_82_value = io_events_sets_82_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_83_value = io_events_sets_83_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_84_value = io_events_sets_84_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_85_value = io_events_sets_85_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_86_value = io_events_sets_86_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_87_value = io_events_sets_87_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_2_io_events_sets_88_value = io_events_sets_88_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_clock = clock;
  assign hpc_3_io_hpm_event = io_hpm_event_3; // @[PerfCounterUtils.scala 353:24]
  assign hpc_3_io_events_sets_0_value = io_events_sets_0_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_1_value = io_events_sets_1_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_2_value = io_events_sets_2_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_3_value = io_events_sets_3_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_4_value = io_events_sets_4_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_5_value = io_events_sets_5_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_6_value = io_events_sets_6_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_7_value = io_events_sets_7_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_8_value = io_events_sets_8_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_9_value = io_events_sets_9_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_10_value = io_events_sets_10_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_11_value = io_events_sets_11_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_12_value = io_events_sets_12_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_13_value = io_events_sets_13_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_14_value = io_events_sets_14_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_15_value = io_events_sets_15_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_16_value = io_events_sets_16_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_17_value = io_events_sets_17_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_18_value = io_events_sets_18_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_19_value = io_events_sets_19_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_20_value = io_events_sets_20_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_21_value = io_events_sets_21_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_23_value = io_events_sets_23_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_24_value = io_events_sets_24_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_25_value = io_events_sets_25_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_26_value = io_events_sets_26_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_27_value = io_events_sets_27_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_28_value = io_events_sets_28_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_29_value = io_events_sets_29_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_30_value = io_events_sets_30_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_31_value = io_events_sets_31_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_32_value = io_events_sets_32_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_33_value = io_events_sets_33_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_34_value = io_events_sets_34_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_35_value = io_events_sets_35_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_36_value = io_events_sets_36_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_37_value = io_events_sets_37_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_38_value = io_events_sets_38_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_39_value = io_events_sets_39_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_40_value = io_events_sets_40_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_41_value = io_events_sets_41_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_42_value = io_events_sets_42_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_43_value = io_events_sets_43_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_44_value = io_events_sets_44_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_45_value = io_events_sets_45_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_46_value = io_events_sets_46_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_47_value = io_events_sets_47_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_48_value = io_events_sets_48_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_49_value = io_events_sets_49_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_50_value = io_events_sets_50_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_51_value = io_events_sets_51_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_52_value = io_events_sets_52_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_53_value = io_events_sets_53_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_54_value = io_events_sets_54_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_55_value = io_events_sets_55_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_56_value = io_events_sets_56_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_57_value = io_events_sets_57_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_58_value = io_events_sets_58_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_59_value = io_events_sets_59_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_60_value = io_events_sets_60_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_61_value = io_events_sets_61_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_62_value = io_events_sets_62_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_63_value = io_events_sets_63_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_64_value = io_events_sets_64_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_65_value = io_events_sets_65_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_66_value = io_events_sets_66_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_67_value = io_events_sets_67_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_68_value = io_events_sets_68_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_69_value = io_events_sets_69_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_70_value = io_events_sets_70_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_71_value = io_events_sets_71_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_72_value = io_events_sets_72_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_73_value = io_events_sets_73_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_74_value = io_events_sets_74_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_75_value = io_events_sets_75_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_76_value = io_events_sets_76_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_77_value = io_events_sets_77_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_78_value = io_events_sets_78_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_79_value = io_events_sets_79_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_80_value = io_events_sets_80_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_81_value = io_events_sets_81_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_82_value = io_events_sets_82_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_83_value = io_events_sets_83_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_84_value = io_events_sets_84_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_85_value = io_events_sets_85_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_86_value = io_events_sets_86_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_87_value = io_events_sets_87_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_3_io_events_sets_88_value = io_events_sets_88_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_clock = clock;
  assign hpc_4_io_hpm_event = io_hpm_event_4; // @[PerfCounterUtils.scala 353:24]
  assign hpc_4_io_events_sets_0_value = io_events_sets_0_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_1_value = io_events_sets_1_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_2_value = io_events_sets_2_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_3_value = io_events_sets_3_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_4_value = io_events_sets_4_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_5_value = io_events_sets_5_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_6_value = io_events_sets_6_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_7_value = io_events_sets_7_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_8_value = io_events_sets_8_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_9_value = io_events_sets_9_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_10_value = io_events_sets_10_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_11_value = io_events_sets_11_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_12_value = io_events_sets_12_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_13_value = io_events_sets_13_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_14_value = io_events_sets_14_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_15_value = io_events_sets_15_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_16_value = io_events_sets_16_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_17_value = io_events_sets_17_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_18_value = io_events_sets_18_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_19_value = io_events_sets_19_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_20_value = io_events_sets_20_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_21_value = io_events_sets_21_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_23_value = io_events_sets_23_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_24_value = io_events_sets_24_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_25_value = io_events_sets_25_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_26_value = io_events_sets_26_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_27_value = io_events_sets_27_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_28_value = io_events_sets_28_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_29_value = io_events_sets_29_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_30_value = io_events_sets_30_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_31_value = io_events_sets_31_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_32_value = io_events_sets_32_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_33_value = io_events_sets_33_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_34_value = io_events_sets_34_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_35_value = io_events_sets_35_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_36_value = io_events_sets_36_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_37_value = io_events_sets_37_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_38_value = io_events_sets_38_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_39_value = io_events_sets_39_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_40_value = io_events_sets_40_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_41_value = io_events_sets_41_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_42_value = io_events_sets_42_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_43_value = io_events_sets_43_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_44_value = io_events_sets_44_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_45_value = io_events_sets_45_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_46_value = io_events_sets_46_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_47_value = io_events_sets_47_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_48_value = io_events_sets_48_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_49_value = io_events_sets_49_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_50_value = io_events_sets_50_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_51_value = io_events_sets_51_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_52_value = io_events_sets_52_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_53_value = io_events_sets_53_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_54_value = io_events_sets_54_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_55_value = io_events_sets_55_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_56_value = io_events_sets_56_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_57_value = io_events_sets_57_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_58_value = io_events_sets_58_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_59_value = io_events_sets_59_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_60_value = io_events_sets_60_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_61_value = io_events_sets_61_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_62_value = io_events_sets_62_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_63_value = io_events_sets_63_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_64_value = io_events_sets_64_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_65_value = io_events_sets_65_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_66_value = io_events_sets_66_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_67_value = io_events_sets_67_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_68_value = io_events_sets_68_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_69_value = io_events_sets_69_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_70_value = io_events_sets_70_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_71_value = io_events_sets_71_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_72_value = io_events_sets_72_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_73_value = io_events_sets_73_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_74_value = io_events_sets_74_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_75_value = io_events_sets_75_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_76_value = io_events_sets_76_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_77_value = io_events_sets_77_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_78_value = io_events_sets_78_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_79_value = io_events_sets_79_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_80_value = io_events_sets_80_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_81_value = io_events_sets_81_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_82_value = io_events_sets_82_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_83_value = io_events_sets_83_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_84_value = io_events_sets_84_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_85_value = io_events_sets_85_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_86_value = io_events_sets_86_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_87_value = io_events_sets_87_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_4_io_events_sets_88_value = io_events_sets_88_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_clock = clock;
  assign hpc_5_io_hpm_event = io_hpm_event_5; // @[PerfCounterUtils.scala 353:24]
  assign hpc_5_io_events_sets_0_value = io_events_sets_0_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_1_value = io_events_sets_1_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_2_value = io_events_sets_2_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_3_value = io_events_sets_3_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_4_value = io_events_sets_4_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_5_value = io_events_sets_5_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_6_value = io_events_sets_6_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_7_value = io_events_sets_7_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_8_value = io_events_sets_8_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_9_value = io_events_sets_9_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_10_value = io_events_sets_10_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_11_value = io_events_sets_11_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_12_value = io_events_sets_12_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_13_value = io_events_sets_13_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_14_value = io_events_sets_14_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_15_value = io_events_sets_15_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_16_value = io_events_sets_16_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_17_value = io_events_sets_17_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_18_value = io_events_sets_18_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_19_value = io_events_sets_19_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_20_value = io_events_sets_20_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_21_value = io_events_sets_21_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_23_value = io_events_sets_23_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_24_value = io_events_sets_24_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_25_value = io_events_sets_25_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_26_value = io_events_sets_26_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_27_value = io_events_sets_27_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_28_value = io_events_sets_28_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_29_value = io_events_sets_29_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_30_value = io_events_sets_30_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_31_value = io_events_sets_31_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_32_value = io_events_sets_32_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_33_value = io_events_sets_33_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_34_value = io_events_sets_34_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_35_value = io_events_sets_35_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_36_value = io_events_sets_36_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_37_value = io_events_sets_37_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_38_value = io_events_sets_38_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_39_value = io_events_sets_39_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_40_value = io_events_sets_40_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_41_value = io_events_sets_41_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_42_value = io_events_sets_42_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_43_value = io_events_sets_43_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_44_value = io_events_sets_44_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_45_value = io_events_sets_45_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_46_value = io_events_sets_46_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_47_value = io_events_sets_47_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_48_value = io_events_sets_48_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_49_value = io_events_sets_49_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_50_value = io_events_sets_50_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_51_value = io_events_sets_51_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_52_value = io_events_sets_52_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_53_value = io_events_sets_53_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_54_value = io_events_sets_54_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_55_value = io_events_sets_55_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_56_value = io_events_sets_56_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_57_value = io_events_sets_57_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_58_value = io_events_sets_58_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_59_value = io_events_sets_59_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_60_value = io_events_sets_60_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_61_value = io_events_sets_61_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_62_value = io_events_sets_62_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_63_value = io_events_sets_63_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_64_value = io_events_sets_64_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_65_value = io_events_sets_65_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_66_value = io_events_sets_66_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_67_value = io_events_sets_67_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_68_value = io_events_sets_68_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_69_value = io_events_sets_69_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_70_value = io_events_sets_70_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_71_value = io_events_sets_71_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_72_value = io_events_sets_72_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_73_value = io_events_sets_73_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_74_value = io_events_sets_74_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_75_value = io_events_sets_75_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_76_value = io_events_sets_76_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_77_value = io_events_sets_77_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_78_value = io_events_sets_78_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_79_value = io_events_sets_79_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_80_value = io_events_sets_80_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_81_value = io_events_sets_81_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_82_value = io_events_sets_82_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_83_value = io_events_sets_83_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_84_value = io_events_sets_84_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_85_value = io_events_sets_85_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_86_value = io_events_sets_86_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_87_value = io_events_sets_87_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_5_io_events_sets_88_value = io_events_sets_88_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_clock = clock;
  assign hpc_6_io_hpm_event = io_hpm_event_6; // @[PerfCounterUtils.scala 353:24]
  assign hpc_6_io_events_sets_0_value = io_events_sets_0_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_1_value = io_events_sets_1_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_2_value = io_events_sets_2_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_3_value = io_events_sets_3_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_4_value = io_events_sets_4_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_5_value = io_events_sets_5_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_6_value = io_events_sets_6_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_7_value = io_events_sets_7_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_8_value = io_events_sets_8_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_9_value = io_events_sets_9_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_10_value = io_events_sets_10_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_11_value = io_events_sets_11_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_12_value = io_events_sets_12_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_13_value = io_events_sets_13_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_14_value = io_events_sets_14_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_15_value = io_events_sets_15_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_16_value = io_events_sets_16_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_17_value = io_events_sets_17_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_18_value = io_events_sets_18_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_19_value = io_events_sets_19_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_20_value = io_events_sets_20_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_21_value = io_events_sets_21_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_23_value = io_events_sets_23_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_24_value = io_events_sets_24_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_25_value = io_events_sets_25_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_26_value = io_events_sets_26_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_27_value = io_events_sets_27_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_28_value = io_events_sets_28_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_29_value = io_events_sets_29_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_30_value = io_events_sets_30_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_31_value = io_events_sets_31_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_32_value = io_events_sets_32_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_33_value = io_events_sets_33_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_34_value = io_events_sets_34_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_35_value = io_events_sets_35_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_36_value = io_events_sets_36_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_37_value = io_events_sets_37_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_38_value = io_events_sets_38_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_39_value = io_events_sets_39_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_40_value = io_events_sets_40_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_41_value = io_events_sets_41_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_42_value = io_events_sets_42_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_43_value = io_events_sets_43_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_44_value = io_events_sets_44_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_45_value = io_events_sets_45_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_46_value = io_events_sets_46_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_47_value = io_events_sets_47_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_48_value = io_events_sets_48_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_49_value = io_events_sets_49_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_50_value = io_events_sets_50_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_51_value = io_events_sets_51_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_52_value = io_events_sets_52_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_53_value = io_events_sets_53_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_54_value = io_events_sets_54_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_55_value = io_events_sets_55_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_56_value = io_events_sets_56_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_57_value = io_events_sets_57_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_58_value = io_events_sets_58_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_59_value = io_events_sets_59_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_60_value = io_events_sets_60_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_61_value = io_events_sets_61_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_62_value = io_events_sets_62_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_63_value = io_events_sets_63_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_64_value = io_events_sets_64_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_65_value = io_events_sets_65_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_66_value = io_events_sets_66_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_67_value = io_events_sets_67_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_68_value = io_events_sets_68_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_69_value = io_events_sets_69_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_70_value = io_events_sets_70_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_71_value = io_events_sets_71_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_72_value = io_events_sets_72_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_73_value = io_events_sets_73_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_74_value = io_events_sets_74_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_75_value = io_events_sets_75_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_76_value = io_events_sets_76_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_77_value = io_events_sets_77_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_78_value = io_events_sets_78_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_79_value = io_events_sets_79_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_80_value = io_events_sets_80_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_81_value = io_events_sets_81_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_82_value = io_events_sets_82_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_83_value = io_events_sets_83_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_84_value = io_events_sets_84_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_85_value = io_events_sets_85_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_86_value = io_events_sets_86_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_87_value = io_events_sets_87_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_6_io_events_sets_88_value = io_events_sets_88_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_clock = clock;
  assign hpc_7_io_hpm_event = io_hpm_event_7; // @[PerfCounterUtils.scala 353:24]
  assign hpc_7_io_events_sets_0_value = io_events_sets_0_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_1_value = io_events_sets_1_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_2_value = io_events_sets_2_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_3_value = io_events_sets_3_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_4_value = io_events_sets_4_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_5_value = io_events_sets_5_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_6_value = io_events_sets_6_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_7_value = io_events_sets_7_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_8_value = io_events_sets_8_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_9_value = io_events_sets_9_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_10_value = io_events_sets_10_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_11_value = io_events_sets_11_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_12_value = io_events_sets_12_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_13_value = io_events_sets_13_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_14_value = io_events_sets_14_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_15_value = io_events_sets_15_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_16_value = io_events_sets_16_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_17_value = io_events_sets_17_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_18_value = io_events_sets_18_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_19_value = io_events_sets_19_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_20_value = io_events_sets_20_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_21_value = io_events_sets_21_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_23_value = io_events_sets_23_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_24_value = io_events_sets_24_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_25_value = io_events_sets_25_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_26_value = io_events_sets_26_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_27_value = io_events_sets_27_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_28_value = io_events_sets_28_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_29_value = io_events_sets_29_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_30_value = io_events_sets_30_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_31_value = io_events_sets_31_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_32_value = io_events_sets_32_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_33_value = io_events_sets_33_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_34_value = io_events_sets_34_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_35_value = io_events_sets_35_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_36_value = io_events_sets_36_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_37_value = io_events_sets_37_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_38_value = io_events_sets_38_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_39_value = io_events_sets_39_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_40_value = io_events_sets_40_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_41_value = io_events_sets_41_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_42_value = io_events_sets_42_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_43_value = io_events_sets_43_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_44_value = io_events_sets_44_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_45_value = io_events_sets_45_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_46_value = io_events_sets_46_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_47_value = io_events_sets_47_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_48_value = io_events_sets_48_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_49_value = io_events_sets_49_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_50_value = io_events_sets_50_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_51_value = io_events_sets_51_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_52_value = io_events_sets_52_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_53_value = io_events_sets_53_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_54_value = io_events_sets_54_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_55_value = io_events_sets_55_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_56_value = io_events_sets_56_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_57_value = io_events_sets_57_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_58_value = io_events_sets_58_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_59_value = io_events_sets_59_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_60_value = io_events_sets_60_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_61_value = io_events_sets_61_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_62_value = io_events_sets_62_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_63_value = io_events_sets_63_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_64_value = io_events_sets_64_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_65_value = io_events_sets_65_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_66_value = io_events_sets_66_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_67_value = io_events_sets_67_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_68_value = io_events_sets_68_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_69_value = io_events_sets_69_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_70_value = io_events_sets_70_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_71_value = io_events_sets_71_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_72_value = io_events_sets_72_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_73_value = io_events_sets_73_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_74_value = io_events_sets_74_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_75_value = io_events_sets_75_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_76_value = io_events_sets_76_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_77_value = io_events_sets_77_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_78_value = io_events_sets_78_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_79_value = io_events_sets_79_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_80_value = io_events_sets_80_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_81_value = io_events_sets_81_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_82_value = io_events_sets_82_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_83_value = io_events_sets_83_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_84_value = io_events_sets_84_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_85_value = io_events_sets_85_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_86_value = io_events_sets_86_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_87_value = io_events_sets_87_value; // @[PerfCounterUtils.scala 352:24]
  assign hpc_7_io_events_sets_88_value = io_events_sets_88_value; // @[PerfCounterUtils.scala 352:24]
  always @(posedge clock) begin
    io_perf_0_value_REG <= hpc_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= hpc_1_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= hpc_2_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= hpc_3_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= hpc_4_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_5_value_REG <= hpc_5_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_6_value_REG <= hpc_6_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_7_value_REG <= hpc_7_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:27]
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
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

