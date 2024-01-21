module HPerfCounter(
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
  wire [5:0] _GEN_1 = 6'h1 == io_hpm_event[5:0] ? io_events_sets_1_value : io_events_sets_0_value; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_2 = 6'h2 == io_hpm_event[5:0] ? io_events_sets_2_value : _GEN_1; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_3 = 6'h3 == io_hpm_event[5:0] ? io_events_sets_3_value : _GEN_2; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_4 = 6'h4 == io_hpm_event[5:0] ? io_events_sets_4_value : _GEN_3; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_5 = 6'h5 == io_hpm_event[5:0] ? io_events_sets_5_value : _GEN_4; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_6 = 6'h6 == io_hpm_event[5:0] ? io_events_sets_6_value : _GEN_5; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_7 = 6'h7 == io_hpm_event[5:0] ? io_events_sets_7_value : _GEN_6; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_8 = 6'h8 == io_hpm_event[5:0] ? io_events_sets_8_value : _GEN_7; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_9 = 6'h9 == io_hpm_event[5:0] ? io_events_sets_9_value : _GEN_8; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_10 = 6'ha == io_hpm_event[5:0] ? io_events_sets_10_value : _GEN_9; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_11 = 6'hb == io_hpm_event[5:0] ? io_events_sets_11_value : _GEN_10; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_12 = 6'hc == io_hpm_event[5:0] ? io_events_sets_12_value : _GEN_11; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_13 = 6'hd == io_hpm_event[5:0] ? io_events_sets_13_value : _GEN_12; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_14 = 6'he == io_hpm_event[5:0] ? io_events_sets_14_value : _GEN_13; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_15 = 6'hf == io_hpm_event[5:0] ? io_events_sets_15_value : _GEN_14; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_16 = 6'h10 == io_hpm_event[5:0] ? io_events_sets_16_value : _GEN_15; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_17 = 6'h11 == io_hpm_event[5:0] ? io_events_sets_17_value : _GEN_16; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_18 = 6'h12 == io_hpm_event[5:0] ? io_events_sets_18_value : _GEN_17; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_19 = 6'h13 == io_hpm_event[5:0] ? io_events_sets_19_value : _GEN_18; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_20 = 6'h14 == io_hpm_event[5:0] ? io_events_sets_20_value : _GEN_19; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_21 = 6'h15 == io_hpm_event[5:0] ? 6'h0 : _GEN_20; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_22 = 6'h16 == io_hpm_event[5:0] ? 6'h0 : _GEN_21; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_23 = 6'h17 == io_hpm_event[5:0] ? io_events_sets_23_value : _GEN_22; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_24 = 6'h18 == io_hpm_event[5:0] ? io_events_sets_24_value : _GEN_23; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_25 = 6'h19 == io_hpm_event[5:0] ? io_events_sets_25_value : _GEN_24; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_26 = 6'h1a == io_hpm_event[5:0] ? io_events_sets_26_value : _GEN_25; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_27 = 6'h1b == io_hpm_event[5:0] ? io_events_sets_27_value : _GEN_26; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_28 = 6'h1c == io_hpm_event[5:0] ? io_events_sets_28_value : _GEN_27; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_29 = 6'h1d == io_hpm_event[5:0] ? io_events_sets_29_value : _GEN_28; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_30 = 6'h1e == io_hpm_event[5:0] ? io_events_sets_30_value : _GEN_29; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_31 = 6'h1f == io_hpm_event[5:0] ? io_events_sets_31_value : _GEN_30; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_32 = 6'h20 == io_hpm_event[5:0] ? io_events_sets_32_value : _GEN_31; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_33 = 6'h21 == io_hpm_event[5:0] ? io_events_sets_33_value : _GEN_32; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_34 = 6'h22 == io_hpm_event[5:0] ? io_events_sets_34_value : _GEN_33; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_35 = 6'h23 == io_hpm_event[5:0] ? io_events_sets_35_value : _GEN_34; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_36 = 6'h24 == io_hpm_event[5:0] ? io_events_sets_36_value : _GEN_35; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_37 = 6'h25 == io_hpm_event[5:0] ? io_events_sets_37_value : _GEN_36; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_38 = 6'h26 == io_hpm_event[5:0] ? io_events_sets_38_value : _GEN_37; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_39 = 6'h27 == io_hpm_event[5:0] ? io_events_sets_39_value : _GEN_38; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_40 = 6'h28 == io_hpm_event[5:0] ? io_events_sets_40_value : _GEN_39; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_41 = 6'h29 == io_hpm_event[5:0] ? io_events_sets_41_value : _GEN_40; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_42 = 6'h2a == io_hpm_event[5:0] ? io_events_sets_42_value : _GEN_41; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_43 = 6'h2b == io_hpm_event[5:0] ? io_events_sets_43_value : _GEN_42; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_44 = 6'h2c == io_hpm_event[5:0] ? io_events_sets_44_value : _GEN_43; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_45 = 6'h2d == io_hpm_event[5:0] ? io_events_sets_45_value : _GEN_44; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_46 = 6'h2e == io_hpm_event[5:0] ? io_events_sets_46_value : _GEN_45; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_47 = 6'h2f == io_hpm_event[5:0] ? io_events_sets_47_value : _GEN_46; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_48 = 6'h30 == io_hpm_event[5:0] ? io_events_sets_48_value : _GEN_47; // @[PerfCounterUtils.scala 313:{30,30}]
  wire [5:0] _GEN_49 = 6'h31 == io_hpm_event[5:0] ? io_events_sets_49_value : _GEN_48; // @[PerfCounterUtils.scala 313:{30,30}]
  reg [5:0] events_incr_1_value; // @[PerfCounterUtils.scala 314:30]
  wire [5:0] _GEN_55 = 6'h1 == io_hpm_event[15:10] ? io_events_sets_1_value : io_events_sets_0_value; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_56 = 6'h2 == io_hpm_event[15:10] ? io_events_sets_2_value : _GEN_55; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_57 = 6'h3 == io_hpm_event[15:10] ? io_events_sets_3_value : _GEN_56; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_58 = 6'h4 == io_hpm_event[15:10] ? io_events_sets_4_value : _GEN_57; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_59 = 6'h5 == io_hpm_event[15:10] ? io_events_sets_5_value : _GEN_58; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_60 = 6'h6 == io_hpm_event[15:10] ? io_events_sets_6_value : _GEN_59; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_61 = 6'h7 == io_hpm_event[15:10] ? io_events_sets_7_value : _GEN_60; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_62 = 6'h8 == io_hpm_event[15:10] ? io_events_sets_8_value : _GEN_61; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_63 = 6'h9 == io_hpm_event[15:10] ? io_events_sets_9_value : _GEN_62; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_64 = 6'ha == io_hpm_event[15:10] ? io_events_sets_10_value : _GEN_63; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_65 = 6'hb == io_hpm_event[15:10] ? io_events_sets_11_value : _GEN_64; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_66 = 6'hc == io_hpm_event[15:10] ? io_events_sets_12_value : _GEN_65; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_67 = 6'hd == io_hpm_event[15:10] ? io_events_sets_13_value : _GEN_66; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_68 = 6'he == io_hpm_event[15:10] ? io_events_sets_14_value : _GEN_67; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_69 = 6'hf == io_hpm_event[15:10] ? io_events_sets_15_value : _GEN_68; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_70 = 6'h10 == io_hpm_event[15:10] ? io_events_sets_16_value : _GEN_69; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_71 = 6'h11 == io_hpm_event[15:10] ? io_events_sets_17_value : _GEN_70; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_72 = 6'h12 == io_hpm_event[15:10] ? io_events_sets_18_value : _GEN_71; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_73 = 6'h13 == io_hpm_event[15:10] ? io_events_sets_19_value : _GEN_72; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_74 = 6'h14 == io_hpm_event[15:10] ? io_events_sets_20_value : _GEN_73; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_75 = 6'h15 == io_hpm_event[15:10] ? 6'h0 : _GEN_74; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_76 = 6'h16 == io_hpm_event[15:10] ? 6'h0 : _GEN_75; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_77 = 6'h17 == io_hpm_event[15:10] ? io_events_sets_23_value : _GEN_76; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_78 = 6'h18 == io_hpm_event[15:10] ? io_events_sets_24_value : _GEN_77; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_79 = 6'h19 == io_hpm_event[15:10] ? io_events_sets_25_value : _GEN_78; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_80 = 6'h1a == io_hpm_event[15:10] ? io_events_sets_26_value : _GEN_79; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_81 = 6'h1b == io_hpm_event[15:10] ? io_events_sets_27_value : _GEN_80; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_82 = 6'h1c == io_hpm_event[15:10] ? io_events_sets_28_value : _GEN_81; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_83 = 6'h1d == io_hpm_event[15:10] ? io_events_sets_29_value : _GEN_82; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_84 = 6'h1e == io_hpm_event[15:10] ? io_events_sets_30_value : _GEN_83; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_85 = 6'h1f == io_hpm_event[15:10] ? io_events_sets_31_value : _GEN_84; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_86 = 6'h20 == io_hpm_event[15:10] ? io_events_sets_32_value : _GEN_85; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_87 = 6'h21 == io_hpm_event[15:10] ? io_events_sets_33_value : _GEN_86; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_88 = 6'h22 == io_hpm_event[15:10] ? io_events_sets_34_value : _GEN_87; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_89 = 6'h23 == io_hpm_event[15:10] ? io_events_sets_35_value : _GEN_88; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_90 = 6'h24 == io_hpm_event[15:10] ? io_events_sets_36_value : _GEN_89; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_91 = 6'h25 == io_hpm_event[15:10] ? io_events_sets_37_value : _GEN_90; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_92 = 6'h26 == io_hpm_event[15:10] ? io_events_sets_38_value : _GEN_91; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_93 = 6'h27 == io_hpm_event[15:10] ? io_events_sets_39_value : _GEN_92; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_94 = 6'h28 == io_hpm_event[15:10] ? io_events_sets_40_value : _GEN_93; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_95 = 6'h29 == io_hpm_event[15:10] ? io_events_sets_41_value : _GEN_94; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_96 = 6'h2a == io_hpm_event[15:10] ? io_events_sets_42_value : _GEN_95; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_97 = 6'h2b == io_hpm_event[15:10] ? io_events_sets_43_value : _GEN_96; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_98 = 6'h2c == io_hpm_event[15:10] ? io_events_sets_44_value : _GEN_97; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_99 = 6'h2d == io_hpm_event[15:10] ? io_events_sets_45_value : _GEN_98; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_100 = 6'h2e == io_hpm_event[15:10] ? io_events_sets_46_value : _GEN_99; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_101 = 6'h2f == io_hpm_event[15:10] ? io_events_sets_47_value : _GEN_100; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_102 = 6'h30 == io_hpm_event[15:10] ? io_events_sets_48_value : _GEN_101; // @[PerfCounterUtils.scala 314:{30,30}]
  wire [5:0] _GEN_103 = 6'h31 == io_hpm_event[15:10] ? io_events_sets_49_value : _GEN_102; // @[PerfCounterUtils.scala 314:{30,30}]
  reg [5:0] events_incr_2_value; // @[PerfCounterUtils.scala 315:30]
  wire [5:0] _GEN_109 = 6'h1 == io_hpm_event[25:20] ? io_events_sets_1_value : io_events_sets_0_value; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_110 = 6'h2 == io_hpm_event[25:20] ? io_events_sets_2_value : _GEN_109; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_111 = 6'h3 == io_hpm_event[25:20] ? io_events_sets_3_value : _GEN_110; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_112 = 6'h4 == io_hpm_event[25:20] ? io_events_sets_4_value : _GEN_111; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_113 = 6'h5 == io_hpm_event[25:20] ? io_events_sets_5_value : _GEN_112; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_114 = 6'h6 == io_hpm_event[25:20] ? io_events_sets_6_value : _GEN_113; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_115 = 6'h7 == io_hpm_event[25:20] ? io_events_sets_7_value : _GEN_114; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_116 = 6'h8 == io_hpm_event[25:20] ? io_events_sets_8_value : _GEN_115; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_117 = 6'h9 == io_hpm_event[25:20] ? io_events_sets_9_value : _GEN_116; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_118 = 6'ha == io_hpm_event[25:20] ? io_events_sets_10_value : _GEN_117; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_119 = 6'hb == io_hpm_event[25:20] ? io_events_sets_11_value : _GEN_118; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_120 = 6'hc == io_hpm_event[25:20] ? io_events_sets_12_value : _GEN_119; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_121 = 6'hd == io_hpm_event[25:20] ? io_events_sets_13_value : _GEN_120; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_122 = 6'he == io_hpm_event[25:20] ? io_events_sets_14_value : _GEN_121; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_123 = 6'hf == io_hpm_event[25:20] ? io_events_sets_15_value : _GEN_122; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_124 = 6'h10 == io_hpm_event[25:20] ? io_events_sets_16_value : _GEN_123; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_125 = 6'h11 == io_hpm_event[25:20] ? io_events_sets_17_value : _GEN_124; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_126 = 6'h12 == io_hpm_event[25:20] ? io_events_sets_18_value : _GEN_125; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_127 = 6'h13 == io_hpm_event[25:20] ? io_events_sets_19_value : _GEN_126; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_128 = 6'h14 == io_hpm_event[25:20] ? io_events_sets_20_value : _GEN_127; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_129 = 6'h15 == io_hpm_event[25:20] ? 6'h0 : _GEN_128; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_130 = 6'h16 == io_hpm_event[25:20] ? 6'h0 : _GEN_129; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_131 = 6'h17 == io_hpm_event[25:20] ? io_events_sets_23_value : _GEN_130; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_132 = 6'h18 == io_hpm_event[25:20] ? io_events_sets_24_value : _GEN_131; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_133 = 6'h19 == io_hpm_event[25:20] ? io_events_sets_25_value : _GEN_132; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_134 = 6'h1a == io_hpm_event[25:20] ? io_events_sets_26_value : _GEN_133; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_135 = 6'h1b == io_hpm_event[25:20] ? io_events_sets_27_value : _GEN_134; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_136 = 6'h1c == io_hpm_event[25:20] ? io_events_sets_28_value : _GEN_135; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_137 = 6'h1d == io_hpm_event[25:20] ? io_events_sets_29_value : _GEN_136; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_138 = 6'h1e == io_hpm_event[25:20] ? io_events_sets_30_value : _GEN_137; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_139 = 6'h1f == io_hpm_event[25:20] ? io_events_sets_31_value : _GEN_138; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_140 = 6'h20 == io_hpm_event[25:20] ? io_events_sets_32_value : _GEN_139; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_141 = 6'h21 == io_hpm_event[25:20] ? io_events_sets_33_value : _GEN_140; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_142 = 6'h22 == io_hpm_event[25:20] ? io_events_sets_34_value : _GEN_141; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_143 = 6'h23 == io_hpm_event[25:20] ? io_events_sets_35_value : _GEN_142; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_144 = 6'h24 == io_hpm_event[25:20] ? io_events_sets_36_value : _GEN_143; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_145 = 6'h25 == io_hpm_event[25:20] ? io_events_sets_37_value : _GEN_144; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_146 = 6'h26 == io_hpm_event[25:20] ? io_events_sets_38_value : _GEN_145; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_147 = 6'h27 == io_hpm_event[25:20] ? io_events_sets_39_value : _GEN_146; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_148 = 6'h28 == io_hpm_event[25:20] ? io_events_sets_40_value : _GEN_147; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_149 = 6'h29 == io_hpm_event[25:20] ? io_events_sets_41_value : _GEN_148; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_150 = 6'h2a == io_hpm_event[25:20] ? io_events_sets_42_value : _GEN_149; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_151 = 6'h2b == io_hpm_event[25:20] ? io_events_sets_43_value : _GEN_150; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_152 = 6'h2c == io_hpm_event[25:20] ? io_events_sets_44_value : _GEN_151; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_153 = 6'h2d == io_hpm_event[25:20] ? io_events_sets_45_value : _GEN_152; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_154 = 6'h2e == io_hpm_event[25:20] ? io_events_sets_46_value : _GEN_153; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_155 = 6'h2f == io_hpm_event[25:20] ? io_events_sets_47_value : _GEN_154; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_156 = 6'h30 == io_hpm_event[25:20] ? io_events_sets_48_value : _GEN_155; // @[PerfCounterUtils.scala 315:{30,30}]
  wire [5:0] _GEN_157 = 6'h31 == io_hpm_event[25:20] ? io_events_sets_49_value : _GEN_156; // @[PerfCounterUtils.scala 315:{30,30}]
  reg [5:0] events_incr_3_value; // @[PerfCounterUtils.scala 316:30]
  wire [5:0] _GEN_163 = 6'h1 == io_hpm_event[35:30] ? io_events_sets_1_value : io_events_sets_0_value; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_164 = 6'h2 == io_hpm_event[35:30] ? io_events_sets_2_value : _GEN_163; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_165 = 6'h3 == io_hpm_event[35:30] ? io_events_sets_3_value : _GEN_164; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_166 = 6'h4 == io_hpm_event[35:30] ? io_events_sets_4_value : _GEN_165; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_167 = 6'h5 == io_hpm_event[35:30] ? io_events_sets_5_value : _GEN_166; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_168 = 6'h6 == io_hpm_event[35:30] ? io_events_sets_6_value : _GEN_167; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_169 = 6'h7 == io_hpm_event[35:30] ? io_events_sets_7_value : _GEN_168; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_170 = 6'h8 == io_hpm_event[35:30] ? io_events_sets_8_value : _GEN_169; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_171 = 6'h9 == io_hpm_event[35:30] ? io_events_sets_9_value : _GEN_170; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_172 = 6'ha == io_hpm_event[35:30] ? io_events_sets_10_value : _GEN_171; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_173 = 6'hb == io_hpm_event[35:30] ? io_events_sets_11_value : _GEN_172; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_174 = 6'hc == io_hpm_event[35:30] ? io_events_sets_12_value : _GEN_173; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_175 = 6'hd == io_hpm_event[35:30] ? io_events_sets_13_value : _GEN_174; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_176 = 6'he == io_hpm_event[35:30] ? io_events_sets_14_value : _GEN_175; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_177 = 6'hf == io_hpm_event[35:30] ? io_events_sets_15_value : _GEN_176; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_178 = 6'h10 == io_hpm_event[35:30] ? io_events_sets_16_value : _GEN_177; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_179 = 6'h11 == io_hpm_event[35:30] ? io_events_sets_17_value : _GEN_178; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_180 = 6'h12 == io_hpm_event[35:30] ? io_events_sets_18_value : _GEN_179; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_181 = 6'h13 == io_hpm_event[35:30] ? io_events_sets_19_value : _GEN_180; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_182 = 6'h14 == io_hpm_event[35:30] ? io_events_sets_20_value : _GEN_181; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_183 = 6'h15 == io_hpm_event[35:30] ? 6'h0 : _GEN_182; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_184 = 6'h16 == io_hpm_event[35:30] ? 6'h0 : _GEN_183; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_185 = 6'h17 == io_hpm_event[35:30] ? io_events_sets_23_value : _GEN_184; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_186 = 6'h18 == io_hpm_event[35:30] ? io_events_sets_24_value : _GEN_185; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_187 = 6'h19 == io_hpm_event[35:30] ? io_events_sets_25_value : _GEN_186; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_188 = 6'h1a == io_hpm_event[35:30] ? io_events_sets_26_value : _GEN_187; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_189 = 6'h1b == io_hpm_event[35:30] ? io_events_sets_27_value : _GEN_188; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_190 = 6'h1c == io_hpm_event[35:30] ? io_events_sets_28_value : _GEN_189; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_191 = 6'h1d == io_hpm_event[35:30] ? io_events_sets_29_value : _GEN_190; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_192 = 6'h1e == io_hpm_event[35:30] ? io_events_sets_30_value : _GEN_191; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_193 = 6'h1f == io_hpm_event[35:30] ? io_events_sets_31_value : _GEN_192; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_194 = 6'h20 == io_hpm_event[35:30] ? io_events_sets_32_value : _GEN_193; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_195 = 6'h21 == io_hpm_event[35:30] ? io_events_sets_33_value : _GEN_194; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_196 = 6'h22 == io_hpm_event[35:30] ? io_events_sets_34_value : _GEN_195; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_197 = 6'h23 == io_hpm_event[35:30] ? io_events_sets_35_value : _GEN_196; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_198 = 6'h24 == io_hpm_event[35:30] ? io_events_sets_36_value : _GEN_197; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_199 = 6'h25 == io_hpm_event[35:30] ? io_events_sets_37_value : _GEN_198; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_200 = 6'h26 == io_hpm_event[35:30] ? io_events_sets_38_value : _GEN_199; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_201 = 6'h27 == io_hpm_event[35:30] ? io_events_sets_39_value : _GEN_200; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_202 = 6'h28 == io_hpm_event[35:30] ? io_events_sets_40_value : _GEN_201; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_203 = 6'h29 == io_hpm_event[35:30] ? io_events_sets_41_value : _GEN_202; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_204 = 6'h2a == io_hpm_event[35:30] ? io_events_sets_42_value : _GEN_203; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_205 = 6'h2b == io_hpm_event[35:30] ? io_events_sets_43_value : _GEN_204; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_206 = 6'h2c == io_hpm_event[35:30] ? io_events_sets_44_value : _GEN_205; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_207 = 6'h2d == io_hpm_event[35:30] ? io_events_sets_45_value : _GEN_206; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_208 = 6'h2e == io_hpm_event[35:30] ? io_events_sets_46_value : _GEN_207; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_209 = 6'h2f == io_hpm_event[35:30] ? io_events_sets_47_value : _GEN_208; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_210 = 6'h30 == io_hpm_event[35:30] ? io_events_sets_48_value : _GEN_209; // @[PerfCounterUtils.scala 316:{30,30}]
  wire [5:0] _GEN_211 = 6'h31 == io_hpm_event[35:30] ? io_events_sets_49_value : _GEN_210; // @[PerfCounterUtils.scala 316:{30,30}]
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
    if (6'h35 == io_hpm_event[5:0]) begin // @[PerfCounterUtils.scala 313:30]
      events_incr_0_value <= io_events_sets_53_value; // @[PerfCounterUtils.scala 313:30]
    end else if (6'h34 == io_hpm_event[5:0]) begin // @[PerfCounterUtils.scala 313:30]
      events_incr_0_value <= io_events_sets_52_value; // @[PerfCounterUtils.scala 313:30]
    end else if (6'h33 == io_hpm_event[5:0]) begin // @[PerfCounterUtils.scala 313:30]
      events_incr_0_value <= io_events_sets_51_value; // @[PerfCounterUtils.scala 313:30]
    end else if (6'h32 == io_hpm_event[5:0]) begin // @[PerfCounterUtils.scala 313:30]
      events_incr_0_value <= io_events_sets_50_value; // @[PerfCounterUtils.scala 313:30]
    end else begin
      events_incr_0_value <= _GEN_49;
    end
    if (6'h35 == io_hpm_event[15:10]) begin // @[PerfCounterUtils.scala 314:30]
      events_incr_1_value <= io_events_sets_53_value; // @[PerfCounterUtils.scala 314:30]
    end else if (6'h34 == io_hpm_event[15:10]) begin // @[PerfCounterUtils.scala 314:30]
      events_incr_1_value <= io_events_sets_52_value; // @[PerfCounterUtils.scala 314:30]
    end else if (6'h33 == io_hpm_event[15:10]) begin // @[PerfCounterUtils.scala 314:30]
      events_incr_1_value <= io_events_sets_51_value; // @[PerfCounterUtils.scala 314:30]
    end else if (6'h32 == io_hpm_event[15:10]) begin // @[PerfCounterUtils.scala 314:30]
      events_incr_1_value <= io_events_sets_50_value; // @[PerfCounterUtils.scala 314:30]
    end else begin
      events_incr_1_value <= _GEN_103;
    end
    if (6'h35 == io_hpm_event[25:20]) begin // @[PerfCounterUtils.scala 315:30]
      events_incr_2_value <= io_events_sets_53_value; // @[PerfCounterUtils.scala 315:30]
    end else if (6'h34 == io_hpm_event[25:20]) begin // @[PerfCounterUtils.scala 315:30]
      events_incr_2_value <= io_events_sets_52_value; // @[PerfCounterUtils.scala 315:30]
    end else if (6'h33 == io_hpm_event[25:20]) begin // @[PerfCounterUtils.scala 315:30]
      events_incr_2_value <= io_events_sets_51_value; // @[PerfCounterUtils.scala 315:30]
    end else if (6'h32 == io_hpm_event[25:20]) begin // @[PerfCounterUtils.scala 315:30]
      events_incr_2_value <= io_events_sets_50_value; // @[PerfCounterUtils.scala 315:30]
    end else begin
      events_incr_2_value <= _GEN_157;
    end
    if (6'h35 == io_hpm_event[35:30]) begin // @[PerfCounterUtils.scala 316:30]
      events_incr_3_value <= io_events_sets_53_value; // @[PerfCounterUtils.scala 316:30]
    end else if (6'h34 == io_hpm_event[35:30]) begin // @[PerfCounterUtils.scala 316:30]
      events_incr_3_value <= io_events_sets_52_value; // @[PerfCounterUtils.scala 316:30]
    end else if (6'h33 == io_hpm_event[35:30]) begin // @[PerfCounterUtils.scala 316:30]
      events_incr_3_value <= io_events_sets_51_value; // @[PerfCounterUtils.scala 316:30]
    end else if (6'h32 == io_hpm_event[35:30]) begin // @[PerfCounterUtils.scala 316:30]
      events_incr_3_value <= io_events_sets_50_value; // @[PerfCounterUtils.scala 316:30]
    end else begin
      events_incr_3_value <= _GEN_211;
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

