module HPerfCounter_13(
  input         clock,
  input  [63:0] io_hpm_event,
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
  input  [5:0]  io_events_sets_22_value,
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
  input  [5:0]  io_events_sets_89_value,
  input  [5:0]  io_events_sets_94_value,
  input  [5:0]  io_events_sets_95_value,
  input  [5:0]  io_events_sets_96_value,
  input  [5:0]  io_events_sets_97_value,
  input  [5:0]  io_events_sets_98_value,
  input  [5:0]  io_events_sets_99_value,
  input  [5:0]  io_events_sets_100_value,
  input  [5:0]  io_events_sets_101_value,
  input  [5:0]  io_events_sets_102_value,
  input  [5:0]  io_events_sets_103_value,
  input  [5:0]  io_events_sets_104_value,
  input  [5:0]  io_events_sets_105_value,
  input  [5:0]  io_events_sets_106_value,
  input  [5:0]  io_events_sets_107_value,
  input  [5:0]  io_events_sets_108_value,
  input  [5:0]  io_events_sets_109_value,
  input  [5:0]  io_events_sets_110_value,
  input  [5:0]  io_events_sets_111_value,
  input  [5:0]  io_events_sets_112_value,
  output [5:0]  io_perf_0_value
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
`endif // RANDOMIZE_REG_INIT
  reg [5:0] events_incr_0_value; // @[PerfCounterUtils.scala 313:30]
  wire [5:0] _GEN_1 = 7'h1 == io_hpm_event[6:0] ? io_events_sets_1_value : io_events_sets_0_value; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_2 = 7'h2 == io_hpm_event[6:0] ? io_events_sets_2_value : _GEN_1; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_3 = 7'h3 == io_hpm_event[6:0] ? io_events_sets_3_value : _GEN_2; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_4 = 7'h4 == io_hpm_event[6:0] ? io_events_sets_4_value : _GEN_3; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_5 = 7'h5 == io_hpm_event[6:0] ? io_events_sets_5_value : _GEN_4; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_6 = 7'h6 == io_hpm_event[6:0] ? io_events_sets_6_value : _GEN_5; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_7 = 7'h7 == io_hpm_event[6:0] ? io_events_sets_7_value : _GEN_6; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_8 = 7'h8 == io_hpm_event[6:0] ? io_events_sets_8_value : _GEN_7; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_9 = 7'h9 == io_hpm_event[6:0] ? io_events_sets_9_value : _GEN_8; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_10 = 7'ha == io_hpm_event[6:0] ? io_events_sets_10_value : _GEN_9; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_11 = 7'hb == io_hpm_event[6:0] ? io_events_sets_11_value : _GEN_10; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_12 = 7'hc == io_hpm_event[6:0] ? io_events_sets_12_value : _GEN_11; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_13 = 7'hd == io_hpm_event[6:0] ? io_events_sets_13_value : _GEN_12; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_14 = 7'he == io_hpm_event[6:0] ? io_events_sets_14_value : _GEN_13; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_15 = 7'hf == io_hpm_event[6:0] ? io_events_sets_15_value : _GEN_14; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_16 = 7'h10 == io_hpm_event[6:0] ? io_events_sets_16_value : _GEN_15; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_17 = 7'h11 == io_hpm_event[6:0] ? io_events_sets_17_value : _GEN_16; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_18 = 7'h12 == io_hpm_event[6:0] ? io_events_sets_18_value : _GEN_17; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_19 = 7'h13 == io_hpm_event[6:0] ? io_events_sets_19_value : _GEN_18; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_20 = 7'h14 == io_hpm_event[6:0] ? io_events_sets_20_value : _GEN_19; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_21 = 7'h15 == io_hpm_event[6:0] ? io_events_sets_21_value : _GEN_20; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_22 = 7'h16 == io_hpm_event[6:0] ? io_events_sets_22_value : _GEN_21; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_23 = 7'h17 == io_hpm_event[6:0] ? io_events_sets_23_value : _GEN_22; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_24 = 7'h18 == io_hpm_event[6:0] ? io_events_sets_24_value : _GEN_23; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_25 = 7'h19 == io_hpm_event[6:0] ? io_events_sets_25_value : _GEN_24; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_26 = 7'h1a == io_hpm_event[6:0] ? io_events_sets_26_value : _GEN_25; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_27 = 7'h1b == io_hpm_event[6:0] ? io_events_sets_27_value : _GEN_26; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_28 = 7'h1c == io_hpm_event[6:0] ? io_events_sets_28_value : _GEN_27; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_29 = 7'h1d == io_hpm_event[6:0] ? io_events_sets_29_value : _GEN_28; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_30 = 7'h1e == io_hpm_event[6:0] ? io_events_sets_30_value : _GEN_29; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_31 = 7'h1f == io_hpm_event[6:0] ? io_events_sets_31_value : _GEN_30; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_32 = 7'h20 == io_hpm_event[6:0] ? io_events_sets_32_value : _GEN_31; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_33 = 7'h21 == io_hpm_event[6:0] ? io_events_sets_33_value : _GEN_32; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_34 = 7'h22 == io_hpm_event[6:0] ? io_events_sets_34_value : _GEN_33; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_35 = 7'h23 == io_hpm_event[6:0] ? io_events_sets_35_value : _GEN_34; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_36 = 7'h24 == io_hpm_event[6:0] ? io_events_sets_36_value : _GEN_35; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_37 = 7'h25 == io_hpm_event[6:0] ? io_events_sets_37_value : _GEN_36; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_38 = 7'h26 == io_hpm_event[6:0] ? io_events_sets_38_value : _GEN_37; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_39 = 7'h27 == io_hpm_event[6:0] ? io_events_sets_39_value : _GEN_38; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_40 = 7'h28 == io_hpm_event[6:0] ? io_events_sets_40_value : _GEN_39; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_41 = 7'h29 == io_hpm_event[6:0] ? io_events_sets_41_value : _GEN_40; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_42 = 7'h2a == io_hpm_event[6:0] ? io_events_sets_42_value : _GEN_41; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_43 = 7'h2b == io_hpm_event[6:0] ? io_events_sets_43_value : _GEN_42; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_44 = 7'h2c == io_hpm_event[6:0] ? io_events_sets_44_value : _GEN_43; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_45 = 7'h2d == io_hpm_event[6:0] ? io_events_sets_45_value : _GEN_44; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_46 = 7'h2e == io_hpm_event[6:0] ? io_events_sets_46_value : _GEN_45; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_47 = 7'h2f == io_hpm_event[6:0] ? io_events_sets_47_value : _GEN_46; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_48 = 7'h30 == io_hpm_event[6:0] ? io_events_sets_48_value : _GEN_47; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_49 = 7'h31 == io_hpm_event[6:0] ? io_events_sets_49_value : _GEN_48; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_50 = 7'h32 == io_hpm_event[6:0] ? io_events_sets_50_value : _GEN_49; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_51 = 7'h33 == io_hpm_event[6:0] ? io_events_sets_51_value : _GEN_50; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_52 = 7'h34 == io_hpm_event[6:0] ? io_events_sets_52_value : _GEN_51; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_53 = 7'h35 == io_hpm_event[6:0] ? io_events_sets_53_value : _GEN_52; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_54 = 7'h36 == io_hpm_event[6:0] ? io_events_sets_54_value : _GEN_53; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_55 = 7'h37 == io_hpm_event[6:0] ? io_events_sets_55_value : _GEN_54; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_56 = 7'h38 == io_hpm_event[6:0] ? io_events_sets_56_value : _GEN_55; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_57 = 7'h39 == io_hpm_event[6:0] ? io_events_sets_57_value : _GEN_56; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_58 = 7'h3a == io_hpm_event[6:0] ? io_events_sets_58_value : _GEN_57; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_59 = 7'h3b == io_hpm_event[6:0] ? io_events_sets_59_value : _GEN_58; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_60 = 7'h3c == io_hpm_event[6:0] ? io_events_sets_60_value : _GEN_59; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_61 = 7'h3d == io_hpm_event[6:0] ? io_events_sets_61_value : _GEN_60; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_62 = 7'h3e == io_hpm_event[6:0] ? io_events_sets_62_value : _GEN_61; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_63 = 7'h3f == io_hpm_event[6:0] ? io_events_sets_63_value : _GEN_62; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_64 = 7'h40 == io_hpm_event[6:0] ? io_events_sets_64_value : _GEN_63; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_65 = 7'h41 == io_hpm_event[6:0] ? io_events_sets_65_value : _GEN_64; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_66 = 7'h42 == io_hpm_event[6:0] ? io_events_sets_66_value : _GEN_65; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_67 = 7'h43 == io_hpm_event[6:0] ? io_events_sets_67_value : _GEN_66; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_68 = 7'h44 == io_hpm_event[6:0] ? io_events_sets_68_value : _GEN_67; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_69 = 7'h45 == io_hpm_event[6:0] ? io_events_sets_69_value : _GEN_68; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_70 = 7'h46 == io_hpm_event[6:0] ? io_events_sets_70_value : _GEN_69; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_71 = 7'h47 == io_hpm_event[6:0] ? io_events_sets_71_value : _GEN_70; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_72 = 7'h48 == io_hpm_event[6:0] ? io_events_sets_72_value : _GEN_71; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_73 = 7'h49 == io_hpm_event[6:0] ? io_events_sets_73_value : _GEN_72; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_74 = 7'h4a == io_hpm_event[6:0] ? io_events_sets_74_value : _GEN_73; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_75 = 7'h4b == io_hpm_event[6:0] ? io_events_sets_75_value : _GEN_74; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_76 = 7'h4c == io_hpm_event[6:0] ? io_events_sets_76_value : _GEN_75; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_77 = 7'h4d == io_hpm_event[6:0] ? io_events_sets_77_value : _GEN_76; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_78 = 7'h4e == io_hpm_event[6:0] ? io_events_sets_78_value : _GEN_77; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_79 = 7'h4f == io_hpm_event[6:0] ? io_events_sets_79_value : _GEN_78; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_80 = 7'h50 == io_hpm_event[6:0] ? io_events_sets_80_value : _GEN_79; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_81 = 7'h51 == io_hpm_event[6:0] ? io_events_sets_81_value : _GEN_80; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_82 = 7'h52 == io_hpm_event[6:0] ? io_events_sets_82_value : _GEN_81; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_83 = 7'h53 == io_hpm_event[6:0] ? io_events_sets_83_value : _GEN_82; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_84 = 7'h54 == io_hpm_event[6:0] ? io_events_sets_84_value : _GEN_83; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_85 = 7'h55 == io_hpm_event[6:0] ? 6'h0 : _GEN_84; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_86 = 7'h56 == io_hpm_event[6:0] ? 6'h0 : _GEN_85; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_87 = 7'h57 == io_hpm_event[6:0] ? 6'h0 : _GEN_86; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_88 = 7'h58 == io_hpm_event[6:0] ? 6'h0 : _GEN_87; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_89 = 7'h59 == io_hpm_event[6:0] ? io_events_sets_89_value : _GEN_88; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_90 = 7'h5a == io_hpm_event[6:0] ? 6'h0 : _GEN_89; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_91 = 7'h5b == io_hpm_event[6:0] ? 6'h0 : _GEN_90; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_92 = 7'h5c == io_hpm_event[6:0] ? 6'h0 : _GEN_91; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_93 = 7'h5d == io_hpm_event[6:0] ? 6'h0 : _GEN_92; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_94 = 7'h5e == io_hpm_event[6:0] ? io_events_sets_94_value : _GEN_93; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_95 = 7'h5f == io_hpm_event[6:0] ? io_events_sets_95_value : _GEN_94; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_96 = 7'h60 == io_hpm_event[6:0] ? io_events_sets_96_value : _GEN_95; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_97 = 7'h61 == io_hpm_event[6:0] ? io_events_sets_97_value : _GEN_96; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_98 = 7'h62 == io_hpm_event[6:0] ? io_events_sets_98_value : _GEN_97; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_99 = 7'h63 == io_hpm_event[6:0] ? io_events_sets_99_value : _GEN_98; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_100 = 7'h64 == io_hpm_event[6:0] ? io_events_sets_100_value : _GEN_99; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_101 = 7'h65 == io_hpm_event[6:0] ? io_events_sets_101_value : _GEN_100; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_102 = 7'h66 == io_hpm_event[6:0] ? io_events_sets_102_value : _GEN_101; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_103 = 7'h67 == io_hpm_event[6:0] ? io_events_sets_103_value : _GEN_102; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_104 = 7'h68 == io_hpm_event[6:0] ? io_events_sets_104_value : _GEN_103; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_105 = 7'h69 == io_hpm_event[6:0] ? io_events_sets_105_value : _GEN_104; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_106 = 7'h6a == io_hpm_event[6:0] ? io_events_sets_106_value : _GEN_105; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_107 = 7'h6b == io_hpm_event[6:0] ? io_events_sets_107_value : _GEN_106; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_108 = 7'h6c == io_hpm_event[6:0] ? io_events_sets_108_value : _GEN_107; // @[PerfCounterUtils.scala 313:{30,30}]
  reg [5:0] events_incr_1_value; // @[PerfCounterUtils.scala 314:30]
  wire [5:0] _GEN_114 = 7'h1 == io_hpm_event[16:10] ? io_events_sets_1_value : io_events_sets_0_value; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_115 = 7'h2 == io_hpm_event[16:10] ? io_events_sets_2_value : _GEN_114; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_116 = 7'h3 == io_hpm_event[16:10] ? io_events_sets_3_value : _GEN_115; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_117 = 7'h4 == io_hpm_event[16:10] ? io_events_sets_4_value : _GEN_116; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_118 = 7'h5 == io_hpm_event[16:10] ? io_events_sets_5_value : _GEN_117; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_119 = 7'h6 == io_hpm_event[16:10] ? io_events_sets_6_value : _GEN_118; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_120 = 7'h7 == io_hpm_event[16:10] ? io_events_sets_7_value : _GEN_119; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_121 = 7'h8 == io_hpm_event[16:10] ? io_events_sets_8_value : _GEN_120; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_122 = 7'h9 == io_hpm_event[16:10] ? io_events_sets_9_value : _GEN_121; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_123 = 7'ha == io_hpm_event[16:10] ? io_events_sets_10_value : _GEN_122; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_124 = 7'hb == io_hpm_event[16:10] ? io_events_sets_11_value : _GEN_123; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_125 = 7'hc == io_hpm_event[16:10] ? io_events_sets_12_value : _GEN_124; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_126 = 7'hd == io_hpm_event[16:10] ? io_events_sets_13_value : _GEN_125; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_127 = 7'he == io_hpm_event[16:10] ? io_events_sets_14_value : _GEN_126; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_128 = 7'hf == io_hpm_event[16:10] ? io_events_sets_15_value : _GEN_127; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_129 = 7'h10 == io_hpm_event[16:10] ? io_events_sets_16_value : _GEN_128; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_130 = 7'h11 == io_hpm_event[16:10] ? io_events_sets_17_value : _GEN_129; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_131 = 7'h12 == io_hpm_event[16:10] ? io_events_sets_18_value : _GEN_130; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_132 = 7'h13 == io_hpm_event[16:10] ? io_events_sets_19_value : _GEN_131; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_133 = 7'h14 == io_hpm_event[16:10] ? io_events_sets_20_value : _GEN_132; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_134 = 7'h15 == io_hpm_event[16:10] ? io_events_sets_21_value : _GEN_133; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_135 = 7'h16 == io_hpm_event[16:10] ? io_events_sets_22_value : _GEN_134; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_136 = 7'h17 == io_hpm_event[16:10] ? io_events_sets_23_value : _GEN_135; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_137 = 7'h18 == io_hpm_event[16:10] ? io_events_sets_24_value : _GEN_136; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_138 = 7'h19 == io_hpm_event[16:10] ? io_events_sets_25_value : _GEN_137; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_139 = 7'h1a == io_hpm_event[16:10] ? io_events_sets_26_value : _GEN_138; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_140 = 7'h1b == io_hpm_event[16:10] ? io_events_sets_27_value : _GEN_139; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_141 = 7'h1c == io_hpm_event[16:10] ? io_events_sets_28_value : _GEN_140; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_142 = 7'h1d == io_hpm_event[16:10] ? io_events_sets_29_value : _GEN_141; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_143 = 7'h1e == io_hpm_event[16:10] ? io_events_sets_30_value : _GEN_142; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_144 = 7'h1f == io_hpm_event[16:10] ? io_events_sets_31_value : _GEN_143; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_145 = 7'h20 == io_hpm_event[16:10] ? io_events_sets_32_value : _GEN_144; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_146 = 7'h21 == io_hpm_event[16:10] ? io_events_sets_33_value : _GEN_145; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_147 = 7'h22 == io_hpm_event[16:10] ? io_events_sets_34_value : _GEN_146; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_148 = 7'h23 == io_hpm_event[16:10] ? io_events_sets_35_value : _GEN_147; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_149 = 7'h24 == io_hpm_event[16:10] ? io_events_sets_36_value : _GEN_148; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_150 = 7'h25 == io_hpm_event[16:10] ? io_events_sets_37_value : _GEN_149; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_151 = 7'h26 == io_hpm_event[16:10] ? io_events_sets_38_value : _GEN_150; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_152 = 7'h27 == io_hpm_event[16:10] ? io_events_sets_39_value : _GEN_151; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_153 = 7'h28 == io_hpm_event[16:10] ? io_events_sets_40_value : _GEN_152; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_154 = 7'h29 == io_hpm_event[16:10] ? io_events_sets_41_value : _GEN_153; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_155 = 7'h2a == io_hpm_event[16:10] ? io_events_sets_42_value : _GEN_154; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_156 = 7'h2b == io_hpm_event[16:10] ? io_events_sets_43_value : _GEN_155; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_157 = 7'h2c == io_hpm_event[16:10] ? io_events_sets_44_value : _GEN_156; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_158 = 7'h2d == io_hpm_event[16:10] ? io_events_sets_45_value : _GEN_157; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_159 = 7'h2e == io_hpm_event[16:10] ? io_events_sets_46_value : _GEN_158; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_160 = 7'h2f == io_hpm_event[16:10] ? io_events_sets_47_value : _GEN_159; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_161 = 7'h30 == io_hpm_event[16:10] ? io_events_sets_48_value : _GEN_160; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_162 = 7'h31 == io_hpm_event[16:10] ? io_events_sets_49_value : _GEN_161; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_163 = 7'h32 == io_hpm_event[16:10] ? io_events_sets_50_value : _GEN_162; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_164 = 7'h33 == io_hpm_event[16:10] ? io_events_sets_51_value : _GEN_163; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_165 = 7'h34 == io_hpm_event[16:10] ? io_events_sets_52_value : _GEN_164; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_166 = 7'h35 == io_hpm_event[16:10] ? io_events_sets_53_value : _GEN_165; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_167 = 7'h36 == io_hpm_event[16:10] ? io_events_sets_54_value : _GEN_166; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_168 = 7'h37 == io_hpm_event[16:10] ? io_events_sets_55_value : _GEN_167; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_169 = 7'h38 == io_hpm_event[16:10] ? io_events_sets_56_value : _GEN_168; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_170 = 7'h39 == io_hpm_event[16:10] ? io_events_sets_57_value : _GEN_169; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_171 = 7'h3a == io_hpm_event[16:10] ? io_events_sets_58_value : _GEN_170; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_172 = 7'h3b == io_hpm_event[16:10] ? io_events_sets_59_value : _GEN_171; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_173 = 7'h3c == io_hpm_event[16:10] ? io_events_sets_60_value : _GEN_172; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_174 = 7'h3d == io_hpm_event[16:10] ? io_events_sets_61_value : _GEN_173; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_175 = 7'h3e == io_hpm_event[16:10] ? io_events_sets_62_value : _GEN_174; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_176 = 7'h3f == io_hpm_event[16:10] ? io_events_sets_63_value : _GEN_175; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_177 = 7'h40 == io_hpm_event[16:10] ? io_events_sets_64_value : _GEN_176; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_178 = 7'h41 == io_hpm_event[16:10] ? io_events_sets_65_value : _GEN_177; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_179 = 7'h42 == io_hpm_event[16:10] ? io_events_sets_66_value : _GEN_178; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_180 = 7'h43 == io_hpm_event[16:10] ? io_events_sets_67_value : _GEN_179; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_181 = 7'h44 == io_hpm_event[16:10] ? io_events_sets_68_value : _GEN_180; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_182 = 7'h45 == io_hpm_event[16:10] ? io_events_sets_69_value : _GEN_181; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_183 = 7'h46 == io_hpm_event[16:10] ? io_events_sets_70_value : _GEN_182; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_184 = 7'h47 == io_hpm_event[16:10] ? io_events_sets_71_value : _GEN_183; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_185 = 7'h48 == io_hpm_event[16:10] ? io_events_sets_72_value : _GEN_184; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_186 = 7'h49 == io_hpm_event[16:10] ? io_events_sets_73_value : _GEN_185; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_187 = 7'h4a == io_hpm_event[16:10] ? io_events_sets_74_value : _GEN_186; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_188 = 7'h4b == io_hpm_event[16:10] ? io_events_sets_75_value : _GEN_187; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_189 = 7'h4c == io_hpm_event[16:10] ? io_events_sets_76_value : _GEN_188; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_190 = 7'h4d == io_hpm_event[16:10] ? io_events_sets_77_value : _GEN_189; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_191 = 7'h4e == io_hpm_event[16:10] ? io_events_sets_78_value : _GEN_190; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_192 = 7'h4f == io_hpm_event[16:10] ? io_events_sets_79_value : _GEN_191; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_193 = 7'h50 == io_hpm_event[16:10] ? io_events_sets_80_value : _GEN_192; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_194 = 7'h51 == io_hpm_event[16:10] ? io_events_sets_81_value : _GEN_193; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_195 = 7'h52 == io_hpm_event[16:10] ? io_events_sets_82_value : _GEN_194; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_196 = 7'h53 == io_hpm_event[16:10] ? io_events_sets_83_value : _GEN_195; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_197 = 7'h54 == io_hpm_event[16:10] ? io_events_sets_84_value : _GEN_196; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_198 = 7'h55 == io_hpm_event[16:10] ? 6'h0 : _GEN_197; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_199 = 7'h56 == io_hpm_event[16:10] ? 6'h0 : _GEN_198; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_200 = 7'h57 == io_hpm_event[16:10] ? 6'h0 : _GEN_199; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_201 = 7'h58 == io_hpm_event[16:10] ? 6'h0 : _GEN_200; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_202 = 7'h59 == io_hpm_event[16:10] ? io_events_sets_89_value : _GEN_201; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_203 = 7'h5a == io_hpm_event[16:10] ? 6'h0 : _GEN_202; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_204 = 7'h5b == io_hpm_event[16:10] ? 6'h0 : _GEN_203; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_205 = 7'h5c == io_hpm_event[16:10] ? 6'h0 : _GEN_204; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_206 = 7'h5d == io_hpm_event[16:10] ? 6'h0 : _GEN_205; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_207 = 7'h5e == io_hpm_event[16:10] ? io_events_sets_94_value : _GEN_206; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_208 = 7'h5f == io_hpm_event[16:10] ? io_events_sets_95_value : _GEN_207; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_209 = 7'h60 == io_hpm_event[16:10] ? io_events_sets_96_value : _GEN_208; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_210 = 7'h61 == io_hpm_event[16:10] ? io_events_sets_97_value : _GEN_209; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_211 = 7'h62 == io_hpm_event[16:10] ? io_events_sets_98_value : _GEN_210; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_212 = 7'h63 == io_hpm_event[16:10] ? io_events_sets_99_value : _GEN_211; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_213 = 7'h64 == io_hpm_event[16:10] ? io_events_sets_100_value : _GEN_212; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_214 = 7'h65 == io_hpm_event[16:10] ? io_events_sets_101_value : _GEN_213; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_215 = 7'h66 == io_hpm_event[16:10] ? io_events_sets_102_value : _GEN_214; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_216 = 7'h67 == io_hpm_event[16:10] ? io_events_sets_103_value : _GEN_215; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_217 = 7'h68 == io_hpm_event[16:10] ? io_events_sets_104_value : _GEN_216; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_218 = 7'h69 == io_hpm_event[16:10] ? io_events_sets_105_value : _GEN_217; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_219 = 7'h6a == io_hpm_event[16:10] ? io_events_sets_106_value : _GEN_218; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_220 = 7'h6b == io_hpm_event[16:10] ? io_events_sets_107_value : _GEN_219; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_221 = 7'h6c == io_hpm_event[16:10] ? io_events_sets_108_value : _GEN_220; // @[PerfCounterUtils.scala 314:{30,30}]
  reg [5:0] events_incr_2_value; // @[PerfCounterUtils.scala 315:30]
  wire [5:0] _GEN_227 = 7'h1 == io_hpm_event[26:20] ? io_events_sets_1_value : io_events_sets_0_value; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_228 = 7'h2 == io_hpm_event[26:20] ? io_events_sets_2_value : _GEN_227; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_229 = 7'h3 == io_hpm_event[26:20] ? io_events_sets_3_value : _GEN_228; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_230 = 7'h4 == io_hpm_event[26:20] ? io_events_sets_4_value : _GEN_229; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_231 = 7'h5 == io_hpm_event[26:20] ? io_events_sets_5_value : _GEN_230; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_232 = 7'h6 == io_hpm_event[26:20] ? io_events_sets_6_value : _GEN_231; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_233 = 7'h7 == io_hpm_event[26:20] ? io_events_sets_7_value : _GEN_232; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_234 = 7'h8 == io_hpm_event[26:20] ? io_events_sets_8_value : _GEN_233; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_235 = 7'h9 == io_hpm_event[26:20] ? io_events_sets_9_value : _GEN_234; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_236 = 7'ha == io_hpm_event[26:20] ? io_events_sets_10_value : _GEN_235; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_237 = 7'hb == io_hpm_event[26:20] ? io_events_sets_11_value : _GEN_236; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_238 = 7'hc == io_hpm_event[26:20] ? io_events_sets_12_value : _GEN_237; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_239 = 7'hd == io_hpm_event[26:20] ? io_events_sets_13_value : _GEN_238; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_240 = 7'he == io_hpm_event[26:20] ? io_events_sets_14_value : _GEN_239; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_241 = 7'hf == io_hpm_event[26:20] ? io_events_sets_15_value : _GEN_240; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_242 = 7'h10 == io_hpm_event[26:20] ? io_events_sets_16_value : _GEN_241; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_243 = 7'h11 == io_hpm_event[26:20] ? io_events_sets_17_value : _GEN_242; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_244 = 7'h12 == io_hpm_event[26:20] ? io_events_sets_18_value : _GEN_243; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_245 = 7'h13 == io_hpm_event[26:20] ? io_events_sets_19_value : _GEN_244; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_246 = 7'h14 == io_hpm_event[26:20] ? io_events_sets_20_value : _GEN_245; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_247 = 7'h15 == io_hpm_event[26:20] ? io_events_sets_21_value : _GEN_246; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_248 = 7'h16 == io_hpm_event[26:20] ? io_events_sets_22_value : _GEN_247; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_249 = 7'h17 == io_hpm_event[26:20] ? io_events_sets_23_value : _GEN_248; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_250 = 7'h18 == io_hpm_event[26:20] ? io_events_sets_24_value : _GEN_249; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_251 = 7'h19 == io_hpm_event[26:20] ? io_events_sets_25_value : _GEN_250; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_252 = 7'h1a == io_hpm_event[26:20] ? io_events_sets_26_value : _GEN_251; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_253 = 7'h1b == io_hpm_event[26:20] ? io_events_sets_27_value : _GEN_252; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_254 = 7'h1c == io_hpm_event[26:20] ? io_events_sets_28_value : _GEN_253; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_255 = 7'h1d == io_hpm_event[26:20] ? io_events_sets_29_value : _GEN_254; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_256 = 7'h1e == io_hpm_event[26:20] ? io_events_sets_30_value : _GEN_255; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_257 = 7'h1f == io_hpm_event[26:20] ? io_events_sets_31_value : _GEN_256; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_258 = 7'h20 == io_hpm_event[26:20] ? io_events_sets_32_value : _GEN_257; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_259 = 7'h21 == io_hpm_event[26:20] ? io_events_sets_33_value : _GEN_258; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_260 = 7'h22 == io_hpm_event[26:20] ? io_events_sets_34_value : _GEN_259; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_261 = 7'h23 == io_hpm_event[26:20] ? io_events_sets_35_value : _GEN_260; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_262 = 7'h24 == io_hpm_event[26:20] ? io_events_sets_36_value : _GEN_261; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_263 = 7'h25 == io_hpm_event[26:20] ? io_events_sets_37_value : _GEN_262; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_264 = 7'h26 == io_hpm_event[26:20] ? io_events_sets_38_value : _GEN_263; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_265 = 7'h27 == io_hpm_event[26:20] ? io_events_sets_39_value : _GEN_264; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_266 = 7'h28 == io_hpm_event[26:20] ? io_events_sets_40_value : _GEN_265; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_267 = 7'h29 == io_hpm_event[26:20] ? io_events_sets_41_value : _GEN_266; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_268 = 7'h2a == io_hpm_event[26:20] ? io_events_sets_42_value : _GEN_267; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_269 = 7'h2b == io_hpm_event[26:20] ? io_events_sets_43_value : _GEN_268; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_270 = 7'h2c == io_hpm_event[26:20] ? io_events_sets_44_value : _GEN_269; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_271 = 7'h2d == io_hpm_event[26:20] ? io_events_sets_45_value : _GEN_270; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_272 = 7'h2e == io_hpm_event[26:20] ? io_events_sets_46_value : _GEN_271; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_273 = 7'h2f == io_hpm_event[26:20] ? io_events_sets_47_value : _GEN_272; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_274 = 7'h30 == io_hpm_event[26:20] ? io_events_sets_48_value : _GEN_273; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_275 = 7'h31 == io_hpm_event[26:20] ? io_events_sets_49_value : _GEN_274; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_276 = 7'h32 == io_hpm_event[26:20] ? io_events_sets_50_value : _GEN_275; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_277 = 7'h33 == io_hpm_event[26:20] ? io_events_sets_51_value : _GEN_276; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_278 = 7'h34 == io_hpm_event[26:20] ? io_events_sets_52_value : _GEN_277; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_279 = 7'h35 == io_hpm_event[26:20] ? io_events_sets_53_value : _GEN_278; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_280 = 7'h36 == io_hpm_event[26:20] ? io_events_sets_54_value : _GEN_279; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_281 = 7'h37 == io_hpm_event[26:20] ? io_events_sets_55_value : _GEN_280; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_282 = 7'h38 == io_hpm_event[26:20] ? io_events_sets_56_value : _GEN_281; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_283 = 7'h39 == io_hpm_event[26:20] ? io_events_sets_57_value : _GEN_282; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_284 = 7'h3a == io_hpm_event[26:20] ? io_events_sets_58_value : _GEN_283; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_285 = 7'h3b == io_hpm_event[26:20] ? io_events_sets_59_value : _GEN_284; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_286 = 7'h3c == io_hpm_event[26:20] ? io_events_sets_60_value : _GEN_285; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_287 = 7'h3d == io_hpm_event[26:20] ? io_events_sets_61_value : _GEN_286; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_288 = 7'h3e == io_hpm_event[26:20] ? io_events_sets_62_value : _GEN_287; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_289 = 7'h3f == io_hpm_event[26:20] ? io_events_sets_63_value : _GEN_288; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_290 = 7'h40 == io_hpm_event[26:20] ? io_events_sets_64_value : _GEN_289; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_291 = 7'h41 == io_hpm_event[26:20] ? io_events_sets_65_value : _GEN_290; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_292 = 7'h42 == io_hpm_event[26:20] ? io_events_sets_66_value : _GEN_291; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_293 = 7'h43 == io_hpm_event[26:20] ? io_events_sets_67_value : _GEN_292; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_294 = 7'h44 == io_hpm_event[26:20] ? io_events_sets_68_value : _GEN_293; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_295 = 7'h45 == io_hpm_event[26:20] ? io_events_sets_69_value : _GEN_294; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_296 = 7'h46 == io_hpm_event[26:20] ? io_events_sets_70_value : _GEN_295; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_297 = 7'h47 == io_hpm_event[26:20] ? io_events_sets_71_value : _GEN_296; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_298 = 7'h48 == io_hpm_event[26:20] ? io_events_sets_72_value : _GEN_297; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_299 = 7'h49 == io_hpm_event[26:20] ? io_events_sets_73_value : _GEN_298; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_300 = 7'h4a == io_hpm_event[26:20] ? io_events_sets_74_value : _GEN_299; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_301 = 7'h4b == io_hpm_event[26:20] ? io_events_sets_75_value : _GEN_300; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_302 = 7'h4c == io_hpm_event[26:20] ? io_events_sets_76_value : _GEN_301; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_303 = 7'h4d == io_hpm_event[26:20] ? io_events_sets_77_value : _GEN_302; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_304 = 7'h4e == io_hpm_event[26:20] ? io_events_sets_78_value : _GEN_303; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_305 = 7'h4f == io_hpm_event[26:20] ? io_events_sets_79_value : _GEN_304; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_306 = 7'h50 == io_hpm_event[26:20] ? io_events_sets_80_value : _GEN_305; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_307 = 7'h51 == io_hpm_event[26:20] ? io_events_sets_81_value : _GEN_306; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_308 = 7'h52 == io_hpm_event[26:20] ? io_events_sets_82_value : _GEN_307; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_309 = 7'h53 == io_hpm_event[26:20] ? io_events_sets_83_value : _GEN_308; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_310 = 7'h54 == io_hpm_event[26:20] ? io_events_sets_84_value : _GEN_309; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_311 = 7'h55 == io_hpm_event[26:20] ? 6'h0 : _GEN_310; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_312 = 7'h56 == io_hpm_event[26:20] ? 6'h0 : _GEN_311; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_313 = 7'h57 == io_hpm_event[26:20] ? 6'h0 : _GEN_312; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_314 = 7'h58 == io_hpm_event[26:20] ? 6'h0 : _GEN_313; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_315 = 7'h59 == io_hpm_event[26:20] ? io_events_sets_89_value : _GEN_314; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_316 = 7'h5a == io_hpm_event[26:20] ? 6'h0 : _GEN_315; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_317 = 7'h5b == io_hpm_event[26:20] ? 6'h0 : _GEN_316; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_318 = 7'h5c == io_hpm_event[26:20] ? 6'h0 : _GEN_317; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_319 = 7'h5d == io_hpm_event[26:20] ? 6'h0 : _GEN_318; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_320 = 7'h5e == io_hpm_event[26:20] ? io_events_sets_94_value : _GEN_319; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_321 = 7'h5f == io_hpm_event[26:20] ? io_events_sets_95_value : _GEN_320; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_322 = 7'h60 == io_hpm_event[26:20] ? io_events_sets_96_value : _GEN_321; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_323 = 7'h61 == io_hpm_event[26:20] ? io_events_sets_97_value : _GEN_322; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_324 = 7'h62 == io_hpm_event[26:20] ? io_events_sets_98_value : _GEN_323; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_325 = 7'h63 == io_hpm_event[26:20] ? io_events_sets_99_value : _GEN_324; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_326 = 7'h64 == io_hpm_event[26:20] ? io_events_sets_100_value : _GEN_325; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_327 = 7'h65 == io_hpm_event[26:20] ? io_events_sets_101_value : _GEN_326; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_328 = 7'h66 == io_hpm_event[26:20] ? io_events_sets_102_value : _GEN_327; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_329 = 7'h67 == io_hpm_event[26:20] ? io_events_sets_103_value : _GEN_328; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_330 = 7'h68 == io_hpm_event[26:20] ? io_events_sets_104_value : _GEN_329; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_331 = 7'h69 == io_hpm_event[26:20] ? io_events_sets_105_value : _GEN_330; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_332 = 7'h6a == io_hpm_event[26:20] ? io_events_sets_106_value : _GEN_331; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_333 = 7'h6b == io_hpm_event[26:20] ? io_events_sets_107_value : _GEN_332; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_334 = 7'h6c == io_hpm_event[26:20] ? io_events_sets_108_value : _GEN_333; // @[PerfCounterUtils.scala 315:{30,30}]
  reg [5:0] events_incr_3_value; // @[PerfCounterUtils.scala 316:30]
  wire [5:0] _GEN_340 = 7'h1 == io_hpm_event[36:30] ? io_events_sets_1_value : io_events_sets_0_value; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_341 = 7'h2 == io_hpm_event[36:30] ? io_events_sets_2_value : _GEN_340; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_342 = 7'h3 == io_hpm_event[36:30] ? io_events_sets_3_value : _GEN_341; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_343 = 7'h4 == io_hpm_event[36:30] ? io_events_sets_4_value : _GEN_342; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_344 = 7'h5 == io_hpm_event[36:30] ? io_events_sets_5_value : _GEN_343; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_345 = 7'h6 == io_hpm_event[36:30] ? io_events_sets_6_value : _GEN_344; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_346 = 7'h7 == io_hpm_event[36:30] ? io_events_sets_7_value : _GEN_345; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_347 = 7'h8 == io_hpm_event[36:30] ? io_events_sets_8_value : _GEN_346; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_348 = 7'h9 == io_hpm_event[36:30] ? io_events_sets_9_value : _GEN_347; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_349 = 7'ha == io_hpm_event[36:30] ? io_events_sets_10_value : _GEN_348; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_350 = 7'hb == io_hpm_event[36:30] ? io_events_sets_11_value : _GEN_349; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_351 = 7'hc == io_hpm_event[36:30] ? io_events_sets_12_value : _GEN_350; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_352 = 7'hd == io_hpm_event[36:30] ? io_events_sets_13_value : _GEN_351; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_353 = 7'he == io_hpm_event[36:30] ? io_events_sets_14_value : _GEN_352; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_354 = 7'hf == io_hpm_event[36:30] ? io_events_sets_15_value : _GEN_353; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_355 = 7'h10 == io_hpm_event[36:30] ? io_events_sets_16_value : _GEN_354; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_356 = 7'h11 == io_hpm_event[36:30] ? io_events_sets_17_value : _GEN_355; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_357 = 7'h12 == io_hpm_event[36:30] ? io_events_sets_18_value : _GEN_356; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_358 = 7'h13 == io_hpm_event[36:30] ? io_events_sets_19_value : _GEN_357; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_359 = 7'h14 == io_hpm_event[36:30] ? io_events_sets_20_value : _GEN_358; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_360 = 7'h15 == io_hpm_event[36:30] ? io_events_sets_21_value : _GEN_359; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_361 = 7'h16 == io_hpm_event[36:30] ? io_events_sets_22_value : _GEN_360; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_362 = 7'h17 == io_hpm_event[36:30] ? io_events_sets_23_value : _GEN_361; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_363 = 7'h18 == io_hpm_event[36:30] ? io_events_sets_24_value : _GEN_362; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_364 = 7'h19 == io_hpm_event[36:30] ? io_events_sets_25_value : _GEN_363; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_365 = 7'h1a == io_hpm_event[36:30] ? io_events_sets_26_value : _GEN_364; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_366 = 7'h1b == io_hpm_event[36:30] ? io_events_sets_27_value : _GEN_365; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_367 = 7'h1c == io_hpm_event[36:30] ? io_events_sets_28_value : _GEN_366; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_368 = 7'h1d == io_hpm_event[36:30] ? io_events_sets_29_value : _GEN_367; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_369 = 7'h1e == io_hpm_event[36:30] ? io_events_sets_30_value : _GEN_368; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_370 = 7'h1f == io_hpm_event[36:30] ? io_events_sets_31_value : _GEN_369; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_371 = 7'h20 == io_hpm_event[36:30] ? io_events_sets_32_value : _GEN_370; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_372 = 7'h21 == io_hpm_event[36:30] ? io_events_sets_33_value : _GEN_371; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_373 = 7'h22 == io_hpm_event[36:30] ? io_events_sets_34_value : _GEN_372; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_374 = 7'h23 == io_hpm_event[36:30] ? io_events_sets_35_value : _GEN_373; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_375 = 7'h24 == io_hpm_event[36:30] ? io_events_sets_36_value : _GEN_374; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_376 = 7'h25 == io_hpm_event[36:30] ? io_events_sets_37_value : _GEN_375; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_377 = 7'h26 == io_hpm_event[36:30] ? io_events_sets_38_value : _GEN_376; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_378 = 7'h27 == io_hpm_event[36:30] ? io_events_sets_39_value : _GEN_377; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_379 = 7'h28 == io_hpm_event[36:30] ? io_events_sets_40_value : _GEN_378; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_380 = 7'h29 == io_hpm_event[36:30] ? io_events_sets_41_value : _GEN_379; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_381 = 7'h2a == io_hpm_event[36:30] ? io_events_sets_42_value : _GEN_380; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_382 = 7'h2b == io_hpm_event[36:30] ? io_events_sets_43_value : _GEN_381; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_383 = 7'h2c == io_hpm_event[36:30] ? io_events_sets_44_value : _GEN_382; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_384 = 7'h2d == io_hpm_event[36:30] ? io_events_sets_45_value : _GEN_383; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_385 = 7'h2e == io_hpm_event[36:30] ? io_events_sets_46_value : _GEN_384; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_386 = 7'h2f == io_hpm_event[36:30] ? io_events_sets_47_value : _GEN_385; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_387 = 7'h30 == io_hpm_event[36:30] ? io_events_sets_48_value : _GEN_386; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_388 = 7'h31 == io_hpm_event[36:30] ? io_events_sets_49_value : _GEN_387; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_389 = 7'h32 == io_hpm_event[36:30] ? io_events_sets_50_value : _GEN_388; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_390 = 7'h33 == io_hpm_event[36:30] ? io_events_sets_51_value : _GEN_389; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_391 = 7'h34 == io_hpm_event[36:30] ? io_events_sets_52_value : _GEN_390; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_392 = 7'h35 == io_hpm_event[36:30] ? io_events_sets_53_value : _GEN_391; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_393 = 7'h36 == io_hpm_event[36:30] ? io_events_sets_54_value : _GEN_392; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_394 = 7'h37 == io_hpm_event[36:30] ? io_events_sets_55_value : _GEN_393; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_395 = 7'h38 == io_hpm_event[36:30] ? io_events_sets_56_value : _GEN_394; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_396 = 7'h39 == io_hpm_event[36:30] ? io_events_sets_57_value : _GEN_395; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_397 = 7'h3a == io_hpm_event[36:30] ? io_events_sets_58_value : _GEN_396; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_398 = 7'h3b == io_hpm_event[36:30] ? io_events_sets_59_value : _GEN_397; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_399 = 7'h3c == io_hpm_event[36:30] ? io_events_sets_60_value : _GEN_398; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_400 = 7'h3d == io_hpm_event[36:30] ? io_events_sets_61_value : _GEN_399; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_401 = 7'h3e == io_hpm_event[36:30] ? io_events_sets_62_value : _GEN_400; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_402 = 7'h3f == io_hpm_event[36:30] ? io_events_sets_63_value : _GEN_401; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_403 = 7'h40 == io_hpm_event[36:30] ? io_events_sets_64_value : _GEN_402; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_404 = 7'h41 == io_hpm_event[36:30] ? io_events_sets_65_value : _GEN_403; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_405 = 7'h42 == io_hpm_event[36:30] ? io_events_sets_66_value : _GEN_404; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_406 = 7'h43 == io_hpm_event[36:30] ? io_events_sets_67_value : _GEN_405; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_407 = 7'h44 == io_hpm_event[36:30] ? io_events_sets_68_value : _GEN_406; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_408 = 7'h45 == io_hpm_event[36:30] ? io_events_sets_69_value : _GEN_407; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_409 = 7'h46 == io_hpm_event[36:30] ? io_events_sets_70_value : _GEN_408; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_410 = 7'h47 == io_hpm_event[36:30] ? io_events_sets_71_value : _GEN_409; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_411 = 7'h48 == io_hpm_event[36:30] ? io_events_sets_72_value : _GEN_410; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_412 = 7'h49 == io_hpm_event[36:30] ? io_events_sets_73_value : _GEN_411; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_413 = 7'h4a == io_hpm_event[36:30] ? io_events_sets_74_value : _GEN_412; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_414 = 7'h4b == io_hpm_event[36:30] ? io_events_sets_75_value : _GEN_413; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_415 = 7'h4c == io_hpm_event[36:30] ? io_events_sets_76_value : _GEN_414; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_416 = 7'h4d == io_hpm_event[36:30] ? io_events_sets_77_value : _GEN_415; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_417 = 7'h4e == io_hpm_event[36:30] ? io_events_sets_78_value : _GEN_416; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_418 = 7'h4f == io_hpm_event[36:30] ? io_events_sets_79_value : _GEN_417; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_419 = 7'h50 == io_hpm_event[36:30] ? io_events_sets_80_value : _GEN_418; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_420 = 7'h51 == io_hpm_event[36:30] ? io_events_sets_81_value : _GEN_419; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_421 = 7'h52 == io_hpm_event[36:30] ? io_events_sets_82_value : _GEN_420; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_422 = 7'h53 == io_hpm_event[36:30] ? io_events_sets_83_value : _GEN_421; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_423 = 7'h54 == io_hpm_event[36:30] ? io_events_sets_84_value : _GEN_422; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_424 = 7'h55 == io_hpm_event[36:30] ? 6'h0 : _GEN_423; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_425 = 7'h56 == io_hpm_event[36:30] ? 6'h0 : _GEN_424; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_426 = 7'h57 == io_hpm_event[36:30] ? 6'h0 : _GEN_425; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_427 = 7'h58 == io_hpm_event[36:30] ? 6'h0 : _GEN_426; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_428 = 7'h59 == io_hpm_event[36:30] ? io_events_sets_89_value : _GEN_427; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_429 = 7'h5a == io_hpm_event[36:30] ? 6'h0 : _GEN_428; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_430 = 7'h5b == io_hpm_event[36:30] ? 6'h0 : _GEN_429; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_431 = 7'h5c == io_hpm_event[36:30] ? 6'h0 : _GEN_430; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_432 = 7'h5d == io_hpm_event[36:30] ? 6'h0 : _GEN_431; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_433 = 7'h5e == io_hpm_event[36:30] ? io_events_sets_94_value : _GEN_432; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_434 = 7'h5f == io_hpm_event[36:30] ? io_events_sets_95_value : _GEN_433; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_435 = 7'h60 == io_hpm_event[36:30] ? io_events_sets_96_value : _GEN_434; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_436 = 7'h61 == io_hpm_event[36:30] ? io_events_sets_97_value : _GEN_435; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_437 = 7'h62 == io_hpm_event[36:30] ? io_events_sets_98_value : _GEN_436; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_438 = 7'h63 == io_hpm_event[36:30] ? io_events_sets_99_value : _GEN_437; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_439 = 7'h64 == io_hpm_event[36:30] ? io_events_sets_100_value : _GEN_438; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_440 = 7'h65 == io_hpm_event[36:30] ? io_events_sets_101_value : _GEN_439; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_441 = 7'h66 == io_hpm_event[36:30] ? io_events_sets_102_value : _GEN_440; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_442 = 7'h67 == io_hpm_event[36:30] ? io_events_sets_103_value : _GEN_441; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_443 = 7'h68 == io_hpm_event[36:30] ? io_events_sets_104_value : _GEN_442; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_444 = 7'h69 == io_hpm_event[36:30] ? io_events_sets_105_value : _GEN_443; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_445 = 7'h6a == io_hpm_event[36:30] ? io_events_sets_106_value : _GEN_444; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_446 = 7'h6b == io_hpm_event[36:30] ? io_events_sets_107_value : _GEN_445; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_447 = 7'h6c == io_hpm_event[36:30] ? io_events_sets_108_value : _GEN_446; // @[PerfCounterUtils.scala 316:{30,30}]
  reg [4:0] event_op_0; // @[PerfCounterUtils.scala 318:27]
  reg [4:0] event_op_1; // @[PerfCounterUtils.scala 319:27]
  wire [5:0] _event_step_0_T_1 = events_incr_3_value & events_incr_2_value; // @[PerfCounterUtils.scala 323:61]
  wire [5:0] _event_step_0_T_3 = events_incr_3_value ^ events_incr_2_value; // @[PerfCounterUtils.scala 324:61]
  wire [5:0] _event_step_0_T_6 = events_incr_3_value + events_incr_2_value; // @[PerfCounterUtils.scala 325:61]
  wire [5:0] _event_step_0_T_7 = events_incr_3_value | events_incr_2_value; // @[PerfCounterUtils.scala 326:61]
  wire [5:0] _event_step_1_T_1 = events_incr_1_value & events_incr_0_value; // @[PerfCounterUtils.scala 327:61]
  wire [5:0] _event_step_1_T_3 = events_incr_1_value ^ events_incr_0_value; // @[PerfCounterUtils.scala 328:61]
  wire [5:0] _event_step_1_T_6 = events_incr_1_value + events_incr_0_value; // @[PerfCounterUtils.scala 329:61]
  wire [5:0] _event_step_1_T_7 = events_incr_1_value | events_incr_0_value; // @[PerfCounterUtils.scala 330:61]
  reg [4:0] event_op_1_reg; // @[PerfCounterUtils.scala 332:31]
  reg [5:0] event_step_0_reg; // @[PerfCounterUtils.scala 333:33]
  reg [5:0] event_step_1_reg; // @[PerfCounterUtils.scala 334:33]
  wire [5:0] _selected_T_1 = event_step_0_reg & event_step_1_reg; // @[PerfCounterUtils.scala 335:58]
  wire [5:0] _selected_T_3 = event_step_0_reg ^ event_step_1_reg; // @[PerfCounterUtils.scala 336:58]
  wire [5:0] _selected_T_6 = event_step_0_reg + event_step_1_reg; // @[PerfCounterUtils.scala 337:58]
  wire [5:0] _selected_T_7 = event_step_0_reg | event_step_1_reg; // @[PerfCounterUtils.scala 338:37]
  reg [5:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  assign io_perf_0_value = io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  always @(posedge clock) begin
    if (7'h70 == io_hpm_event[6:0]) begin // @[PerfCounterUtils.scala 313:30]
      events_incr_0_value <= io_events_sets_112_value; // @[PerfCounterUtils.scala 313:30]
    end else if (7'h6f == io_hpm_event[6:0]) begin // @[PerfCounterUtils.scala 313:30]
      events_incr_0_value <= io_events_sets_111_value; // @[PerfCounterUtils.scala 313:30]
    end else if (7'h6e == io_hpm_event[6:0]) begin // @[PerfCounterUtils.scala 313:30]
      events_incr_0_value <= io_events_sets_110_value; // @[PerfCounterUtils.scala 313:30]
    end else if (7'h6d == io_hpm_event[6:0]) begin // @[PerfCounterUtils.scala 313:30]
      events_incr_0_value <= io_events_sets_109_value; // @[PerfCounterUtils.scala 313:30]
    end else begin
      events_incr_0_value <= _GEN_108;
    end
    if (7'h70 == io_hpm_event[16:10]) begin // @[PerfCounterUtils.scala 314:30]
      events_incr_1_value <= io_events_sets_112_value; // @[PerfCounterUtils.scala 314:30]
    end else if (7'h6f == io_hpm_event[16:10]) begin // @[PerfCounterUtils.scala 314:30]
      events_incr_1_value <= io_events_sets_111_value; // @[PerfCounterUtils.scala 314:30]
    end else if (7'h6e == io_hpm_event[16:10]) begin // @[PerfCounterUtils.scala 314:30]
      events_incr_1_value <= io_events_sets_110_value; // @[PerfCounterUtils.scala 314:30]
    end else if (7'h6d == io_hpm_event[16:10]) begin // @[PerfCounterUtils.scala 314:30]
      events_incr_1_value <= io_events_sets_109_value; // @[PerfCounterUtils.scala 314:30]
    end else begin
      events_incr_1_value <= _GEN_221;
    end
    if (7'h70 == io_hpm_event[26:20]) begin // @[PerfCounterUtils.scala 315:30]
      events_incr_2_value <= io_events_sets_112_value; // @[PerfCounterUtils.scala 315:30]
    end else if (7'h6f == io_hpm_event[26:20]) begin // @[PerfCounterUtils.scala 315:30]
      events_incr_2_value <= io_events_sets_111_value; // @[PerfCounterUtils.scala 315:30]
    end else if (7'h6e == io_hpm_event[26:20]) begin // @[PerfCounterUtils.scala 315:30]
      events_incr_2_value <= io_events_sets_110_value; // @[PerfCounterUtils.scala 315:30]
    end else if (7'h6d == io_hpm_event[26:20]) begin // @[PerfCounterUtils.scala 315:30]
      events_incr_2_value <= io_events_sets_109_value; // @[PerfCounterUtils.scala 315:30]
    end else begin
      events_incr_2_value <= _GEN_334;
    end
    if (7'h70 == io_hpm_event[36:30]) begin // @[PerfCounterUtils.scala 316:30]
      events_incr_3_value <= io_events_sets_112_value; // @[PerfCounterUtils.scala 316:30]
    end else if (7'h6f == io_hpm_event[36:30]) begin // @[PerfCounterUtils.scala 316:30]
      events_incr_3_value <= io_events_sets_111_value; // @[PerfCounterUtils.scala 316:30]
    end else if (7'h6e == io_hpm_event[36:30]) begin // @[PerfCounterUtils.scala 316:30]
      events_incr_3_value <= io_events_sets_110_value; // @[PerfCounterUtils.scala 316:30]
    end else if (7'h6d == io_hpm_event[36:30]) begin // @[PerfCounterUtils.scala 316:30]
      events_incr_3_value <= io_events_sets_109_value; // @[PerfCounterUtils.scala 316:30]
    end else begin
      events_incr_3_value <= _GEN_447;
    end
    event_op_0 <= io_hpm_event[44:40]; // @[PerfCounterUtils.scala 318:40]
    event_op_1 <= io_hpm_event[49:45]; // @[PerfCounterUtils.scala 319:40]
    event_op_1_reg <= event_op_1; // @[PerfCounterUtils.scala 332:31]
    if (event_op_0[0]) begin // @[PerfCounterUtils.scala 323:25]
      event_step_0_reg <= _event_step_0_T_1;
    end else if (event_op_0[1]) begin // @[PerfCounterUtils.scala 324:25]
      event_step_0_reg <= _event_step_0_T_3;
    end else if (event_op_0[2]) begin // @[PerfCounterUtils.scala 325:25]
      event_step_0_reg <= _event_step_0_T_6;
    end else begin
      event_step_0_reg <= _event_step_0_T_7;
    end
    if (event_op_1[0]) begin // @[PerfCounterUtils.scala 327:25]
      event_step_1_reg <= _event_step_1_T_1;
    end else if (event_op_1[1]) begin // @[PerfCounterUtils.scala 328:25]
      event_step_1_reg <= _event_step_1_T_3;
    end else if (event_op_1[2]) begin // @[PerfCounterUtils.scala 329:25]
      event_step_1_reg <= _event_step_1_T_6;
    end else begin
      event_step_1_reg <= _event_step_1_T_7;
    end
    if (event_op_1_reg[0]) begin // @[PerfCounterUtils.scala 335:21]
      io_perf_0_value_REG <= _selected_T_1;
    end else if (event_op_1_reg[1]) begin // @[PerfCounterUtils.scala 336:21]
      io_perf_0_value_REG <= _selected_T_3;
    end else if (event_op_1_reg[2]) begin // @[PerfCounterUtils.scala 337:21]
      io_perf_0_value_REG <= _selected_T_6;
    end else begin
      io_perf_0_value_REG <= _selected_T_7;
    end
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
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
  events_incr_0_value = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  events_incr_1_value = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  events_incr_2_value = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  events_incr_3_value = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  event_op_0 = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  event_op_1 = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  event_op_1_reg = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  event_step_0_reg = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  event_step_1_reg = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_10[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

