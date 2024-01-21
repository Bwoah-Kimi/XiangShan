module TLPLIC(
  input         clock,
  input         reset,
  input         auto_int_in_1_0,
  input         auto_int_in_0_0,
  input         auto_int_in_0_1,
  input         auto_int_in_0_2,
  input         auto_int_in_0_3,
  input         auto_int_in_0_4,
  input         auto_int_in_0_5,
  input         auto_int_in_0_6,
  input         auto_int_in_0_7,
  input         auto_int_in_0_8,
  input         auto_int_in_0_9,
  input         auto_int_in_0_10,
  input         auto_int_in_0_11,
  input         auto_int_in_0_12,
  input         auto_int_in_0_13,
  input         auto_int_in_0_14,
  input         auto_int_in_0_15,
  input         auto_int_in_0_16,
  input         auto_int_in_0_17,
  input         auto_int_in_0_18,
  input         auto_int_in_0_19,
  input         auto_int_in_0_20,
  input         auto_int_in_0_21,
  input         auto_int_in_0_22,
  input         auto_int_in_0_23,
  input         auto_int_in_0_24,
  input         auto_int_in_0_25,
  input         auto_int_in_0_26,
  input         auto_int_in_0_27,
  input         auto_int_in_0_28,
  input         auto_int_in_0_29,
  input         auto_int_in_0_30,
  input         auto_int_in_0_31,
  input         auto_int_in_0_32,
  input         auto_int_in_0_33,
  input         auto_int_in_0_34,
  input         auto_int_in_0_35,
  input         auto_int_in_0_36,
  input         auto_int_in_0_37,
  input         auto_int_in_0_38,
  input         auto_int_in_0_39,
  input         auto_int_in_0_40,
  input         auto_int_in_0_41,
  input         auto_int_in_0_42,
  input         auto_int_in_0_43,
  input         auto_int_in_0_44,
  input         auto_int_in_0_45,
  input         auto_int_in_0_46,
  input         auto_int_in_0_47,
  input         auto_int_in_0_48,
  input         auto_int_in_0_49,
  input         auto_int_in_0_50,
  input         auto_int_in_0_51,
  input         auto_int_in_0_52,
  input         auto_int_in_0_53,
  input         auto_int_in_0_54,
  input         auto_int_in_0_55,
  input         auto_int_in_0_56,
  input         auto_int_in_0_57,
  input         auto_int_in_0_58,
  input         auto_int_in_0_59,
  input         auto_int_in_0_60,
  input         auto_int_in_0_61,
  input         auto_int_in_0_62,
  input         auto_int_in_0_63,
  output        auto_int_out_1_0,
  output        auto_int_out_0_0,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [1:0]  auto_in_a_bits_size,
  input  [2:0]  auto_in_a_bits_source,
  input  [29:0] auto_in_a_bits_address,
  input  [7:0]  auto_in_a_bits_mask,
  input  [63:0] auto_in_a_bits_data,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [1:0]  auto_in_d_bits_size,
  output [2:0]  auto_in_d_bits_source,
  output [63:0] auto_in_d_bits_data
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
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
`endif // RANDOMIZE_REG_INIT
  wire  gateways_gateway_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_1_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_1_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_1_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_1_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_1_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_1_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_2_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_2_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_2_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_2_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_2_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_2_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_3_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_3_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_3_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_3_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_3_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_3_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_4_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_4_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_4_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_4_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_4_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_4_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_5_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_5_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_5_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_5_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_5_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_5_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_6_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_6_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_6_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_6_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_6_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_6_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_7_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_7_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_7_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_7_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_7_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_7_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_8_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_8_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_8_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_8_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_8_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_8_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_9_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_9_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_9_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_9_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_9_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_9_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_10_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_10_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_10_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_10_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_10_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_10_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_11_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_11_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_11_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_11_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_11_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_11_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_12_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_12_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_12_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_12_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_12_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_12_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_13_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_13_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_13_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_13_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_13_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_13_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_14_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_14_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_14_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_14_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_14_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_14_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_15_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_15_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_15_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_15_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_15_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_15_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_16_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_16_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_16_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_16_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_16_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_16_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_17_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_17_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_17_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_17_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_17_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_17_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_18_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_18_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_18_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_18_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_18_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_18_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_19_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_19_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_19_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_19_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_19_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_19_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_20_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_20_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_20_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_20_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_20_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_20_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_21_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_21_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_21_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_21_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_21_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_21_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_22_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_22_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_22_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_22_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_22_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_22_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_23_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_23_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_23_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_23_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_23_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_23_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_24_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_24_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_24_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_24_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_24_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_24_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_25_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_25_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_25_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_25_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_25_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_25_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_26_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_26_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_26_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_26_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_26_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_26_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_27_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_27_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_27_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_27_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_27_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_27_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_28_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_28_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_28_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_28_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_28_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_28_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_29_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_29_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_29_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_29_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_29_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_29_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_30_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_30_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_30_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_30_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_30_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_30_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_31_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_31_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_31_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_31_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_31_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_31_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_32_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_32_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_32_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_32_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_32_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_32_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_33_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_33_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_33_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_33_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_33_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_33_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_34_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_34_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_34_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_34_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_34_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_34_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_35_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_35_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_35_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_35_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_35_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_35_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_36_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_36_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_36_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_36_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_36_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_36_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_37_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_37_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_37_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_37_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_37_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_37_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_38_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_38_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_38_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_38_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_38_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_38_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_39_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_39_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_39_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_39_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_39_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_39_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_40_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_40_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_40_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_40_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_40_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_40_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_41_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_41_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_41_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_41_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_41_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_41_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_42_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_42_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_42_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_42_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_42_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_42_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_43_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_43_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_43_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_43_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_43_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_43_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_44_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_44_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_44_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_44_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_44_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_44_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_45_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_45_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_45_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_45_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_45_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_45_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_46_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_46_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_46_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_46_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_46_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_46_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_47_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_47_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_47_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_47_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_47_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_47_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_48_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_48_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_48_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_48_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_48_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_48_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_49_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_49_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_49_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_49_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_49_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_49_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_50_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_50_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_50_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_50_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_50_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_50_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_51_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_51_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_51_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_51_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_51_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_51_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_52_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_52_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_52_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_52_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_52_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_52_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_53_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_53_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_53_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_53_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_53_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_53_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_54_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_54_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_54_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_54_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_54_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_54_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_55_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_55_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_55_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_55_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_55_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_55_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_56_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_56_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_56_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_56_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_56_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_56_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_57_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_57_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_57_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_57_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_57_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_57_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_58_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_58_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_58_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_58_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_58_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_58_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_59_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_59_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_59_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_59_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_59_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_59_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_60_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_60_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_60_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_60_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_60_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_60_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_61_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_61_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_61_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_61_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_61_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_61_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_62_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_62_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_62_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_62_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_62_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_62_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_63_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_63_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_63_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_63_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_63_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_63_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_64_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_64_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_64_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_64_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_64_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_64_io_plic_complete; // @[Plic.scala 155:27]
  wire [2:0] fanin_io_prio_0; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_1; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_2; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_3; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_4; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_5; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_6; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_7; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_8; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_9; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_10; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_11; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_12; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_13; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_14; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_15; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_16; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_17; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_18; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_19; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_20; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_21; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_22; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_23; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_24; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_25; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_26; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_27; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_28; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_29; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_30; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_31; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_32; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_33; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_34; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_35; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_36; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_37; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_38; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_39; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_40; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_41; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_42; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_43; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_44; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_45; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_46; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_47; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_48; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_49; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_50; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_51; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_52; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_53; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_54; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_55; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_56; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_57; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_58; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_59; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_60; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_61; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_62; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_63; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_prio_64; // @[Plic.scala 183:25]
  wire [64:0] fanin_io_ip; // @[Plic.scala 183:25]
  wire [6:0] fanin_io_dev; // @[Plic.scala 183:25]
  wire [2:0] fanin_io_max; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_0; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_1; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_2; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_3; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_4; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_5; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_6; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_7; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_8; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_9; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_10; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_11; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_12; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_13; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_14; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_15; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_16; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_17; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_18; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_19; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_20; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_21; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_22; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_23; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_24; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_25; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_26; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_27; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_28; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_29; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_30; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_31; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_32; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_33; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_34; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_35; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_36; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_37; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_38; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_39; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_40; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_41; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_42; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_43; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_44; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_45; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_46; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_47; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_48; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_49; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_50; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_51; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_52; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_53; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_54; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_55; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_56; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_57; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_58; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_59; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_60; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_61; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_62; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_63; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_prio_64; // @[Plic.scala 183:25]
  wire [64:0] fanin_1_io_ip; // @[Plic.scala 183:25]
  wire [6:0] fanin_1_io_dev; // @[Plic.scala 183:25]
  wire [2:0] fanin_1_io_max; // @[Plic.scala 183:25]
  wire  out_back_clock; // @[Decoupled.scala 361:21]
  wire  out_back_reset; // @[Decoupled.scala 361:21]
  wire  out_back_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  out_back_io_enq_valid; // @[Decoupled.scala 361:21]
  wire  out_back_io_enq_bits_read; // @[Decoupled.scala 361:21]
  wire [22:0] out_back_io_enq_bits_index; // @[Decoupled.scala 361:21]
  wire [63:0] out_back_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire [7:0] out_back_io_enq_bits_mask; // @[Decoupled.scala 361:21]
  wire [2:0] out_back_io_enq_bits_extra_tlrr_extra_source; // @[Decoupled.scala 361:21]
  wire [1:0] out_back_io_enq_bits_extra_tlrr_extra_size; // @[Decoupled.scala 361:21]
  wire  out_back_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  out_back_io_deq_valid; // @[Decoupled.scala 361:21]
  wire  out_back_io_deq_bits_read; // @[Decoupled.scala 361:21]
  wire [22:0] out_back_io_deq_bits_index; // @[Decoupled.scala 361:21]
  wire [63:0] out_back_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire [7:0] out_back_io_deq_bits_mask; // @[Decoupled.scala 361:21]
  wire [2:0] out_back_io_deq_bits_extra_tlrr_extra_source; // @[Decoupled.scala 361:21]
  wire [1:0] out_back_io_deq_bits_extra_tlrr_extra_size; // @[Decoupled.scala 361:21]
  reg [2:0] priority_0; // @[Plic.scala 162:31]
  reg [2:0] priority_1; // @[Plic.scala 162:31]
  reg [2:0] priority_2; // @[Plic.scala 162:31]
  reg [2:0] priority_3; // @[Plic.scala 162:31]
  reg [2:0] priority_4; // @[Plic.scala 162:31]
  reg [2:0] priority_5; // @[Plic.scala 162:31]
  reg [2:0] priority_6; // @[Plic.scala 162:31]
  reg [2:0] priority_7; // @[Plic.scala 162:31]
  reg [2:0] priority_8; // @[Plic.scala 162:31]
  reg [2:0] priority_9; // @[Plic.scala 162:31]
  reg [2:0] priority_10; // @[Plic.scala 162:31]
  reg [2:0] priority_11; // @[Plic.scala 162:31]
  reg [2:0] priority_12; // @[Plic.scala 162:31]
  reg [2:0] priority_13; // @[Plic.scala 162:31]
  reg [2:0] priority_14; // @[Plic.scala 162:31]
  reg [2:0] priority_15; // @[Plic.scala 162:31]
  reg [2:0] priority_16; // @[Plic.scala 162:31]
  reg [2:0] priority_17; // @[Plic.scala 162:31]
  reg [2:0] priority_18; // @[Plic.scala 162:31]
  reg [2:0] priority_19; // @[Plic.scala 162:31]
  reg [2:0] priority_20; // @[Plic.scala 162:31]
  reg [2:0] priority_21; // @[Plic.scala 162:31]
  reg [2:0] priority_22; // @[Plic.scala 162:31]
  reg [2:0] priority_23; // @[Plic.scala 162:31]
  reg [2:0] priority_24; // @[Plic.scala 162:31]
  reg [2:0] priority_25; // @[Plic.scala 162:31]
  reg [2:0] priority_26; // @[Plic.scala 162:31]
  reg [2:0] priority_27; // @[Plic.scala 162:31]
  reg [2:0] priority_28; // @[Plic.scala 162:31]
  reg [2:0] priority_29; // @[Plic.scala 162:31]
  reg [2:0] priority_30; // @[Plic.scala 162:31]
  reg [2:0] priority_31; // @[Plic.scala 162:31]
  reg [2:0] priority_32; // @[Plic.scala 162:31]
  reg [2:0] priority_33; // @[Plic.scala 162:31]
  reg [2:0] priority_34; // @[Plic.scala 162:31]
  reg [2:0] priority_35; // @[Plic.scala 162:31]
  reg [2:0] priority_36; // @[Plic.scala 162:31]
  reg [2:0] priority_37; // @[Plic.scala 162:31]
  reg [2:0] priority_38; // @[Plic.scala 162:31]
  reg [2:0] priority_39; // @[Plic.scala 162:31]
  reg [2:0] priority_40; // @[Plic.scala 162:31]
  reg [2:0] priority_41; // @[Plic.scala 162:31]
  reg [2:0] priority_42; // @[Plic.scala 162:31]
  reg [2:0] priority_43; // @[Plic.scala 162:31]
  reg [2:0] priority_44; // @[Plic.scala 162:31]
  reg [2:0] priority_45; // @[Plic.scala 162:31]
  reg [2:0] priority_46; // @[Plic.scala 162:31]
  reg [2:0] priority_47; // @[Plic.scala 162:31]
  reg [2:0] priority_48; // @[Plic.scala 162:31]
  reg [2:0] priority_49; // @[Plic.scala 162:31]
  reg [2:0] priority_50; // @[Plic.scala 162:31]
  reg [2:0] priority_51; // @[Plic.scala 162:31]
  reg [2:0] priority_52; // @[Plic.scala 162:31]
  reg [2:0] priority_53; // @[Plic.scala 162:31]
  reg [2:0] priority_54; // @[Plic.scala 162:31]
  reg [2:0] priority_55; // @[Plic.scala 162:31]
  reg [2:0] priority_56; // @[Plic.scala 162:31]
  reg [2:0] priority_57; // @[Plic.scala 162:31]
  reg [2:0] priority_58; // @[Plic.scala 162:31]
  reg [2:0] priority_59; // @[Plic.scala 162:31]
  reg [2:0] priority_60; // @[Plic.scala 162:31]
  reg [2:0] priority_61; // @[Plic.scala 162:31]
  reg [2:0] priority_62; // @[Plic.scala 162:31]
  reg [2:0] priority_63; // @[Plic.scala 162:31]
  reg [2:0] priority_64; // @[Plic.scala 162:31]
  reg [2:0] threshold_0; // @[Plic.scala 165:31]
  reg [2:0] threshold_1; // @[Plic.scala 165:31]
  reg  pending_0; // @[Plic.scala 167:22]
  reg  pending_1; // @[Plic.scala 167:22]
  reg  pending_2; // @[Plic.scala 167:22]
  reg  pending_3; // @[Plic.scala 167:22]
  reg  pending_4; // @[Plic.scala 167:22]
  reg  pending_5; // @[Plic.scala 167:22]
  reg  pending_6; // @[Plic.scala 167:22]
  reg  pending_7; // @[Plic.scala 167:22]
  reg  pending_8; // @[Plic.scala 167:22]
  reg  pending_9; // @[Plic.scala 167:22]
  reg  pending_10; // @[Plic.scala 167:22]
  reg  pending_11; // @[Plic.scala 167:22]
  reg  pending_12; // @[Plic.scala 167:22]
  reg  pending_13; // @[Plic.scala 167:22]
  reg  pending_14; // @[Plic.scala 167:22]
  reg  pending_15; // @[Plic.scala 167:22]
  reg  pending_16; // @[Plic.scala 167:22]
  reg  pending_17; // @[Plic.scala 167:22]
  reg  pending_18; // @[Plic.scala 167:22]
  reg  pending_19; // @[Plic.scala 167:22]
  reg  pending_20; // @[Plic.scala 167:22]
  reg  pending_21; // @[Plic.scala 167:22]
  reg  pending_22; // @[Plic.scala 167:22]
  reg  pending_23; // @[Plic.scala 167:22]
  reg  pending_24; // @[Plic.scala 167:22]
  reg  pending_25; // @[Plic.scala 167:22]
  reg  pending_26; // @[Plic.scala 167:22]
  reg  pending_27; // @[Plic.scala 167:22]
  reg  pending_28; // @[Plic.scala 167:22]
  reg  pending_29; // @[Plic.scala 167:22]
  reg  pending_30; // @[Plic.scala 167:22]
  reg  pending_31; // @[Plic.scala 167:22]
  reg  pending_32; // @[Plic.scala 167:22]
  reg  pending_33; // @[Plic.scala 167:22]
  reg  pending_34; // @[Plic.scala 167:22]
  reg  pending_35; // @[Plic.scala 167:22]
  reg  pending_36; // @[Plic.scala 167:22]
  reg  pending_37; // @[Plic.scala 167:22]
  reg  pending_38; // @[Plic.scala 167:22]
  reg  pending_39; // @[Plic.scala 167:22]
  reg  pending_40; // @[Plic.scala 167:22]
  reg  pending_41; // @[Plic.scala 167:22]
  reg  pending_42; // @[Plic.scala 167:22]
  reg  pending_43; // @[Plic.scala 167:22]
  reg  pending_44; // @[Plic.scala 167:22]
  reg  pending_45; // @[Plic.scala 167:22]
  reg  pending_46; // @[Plic.scala 167:22]
  reg  pending_47; // @[Plic.scala 167:22]
  reg  pending_48; // @[Plic.scala 167:22]
  reg  pending_49; // @[Plic.scala 167:22]
  reg  pending_50; // @[Plic.scala 167:22]
  reg  pending_51; // @[Plic.scala 167:22]
  reg  pending_52; // @[Plic.scala 167:22]
  reg  pending_53; // @[Plic.scala 167:22]
  reg  pending_54; // @[Plic.scala 167:22]
  reg  pending_55; // @[Plic.scala 167:22]
  reg  pending_56; // @[Plic.scala 167:22]
  reg  pending_57; // @[Plic.scala 167:22]
  reg  pending_58; // @[Plic.scala 167:22]
  reg  pending_59; // @[Plic.scala 167:22]
  reg  pending_60; // @[Plic.scala 167:22]
  reg  pending_61; // @[Plic.scala 167:22]
  reg  pending_62; // @[Plic.scala 167:22]
  reg  pending_63; // @[Plic.scala 167:22]
  reg  pending_64; // @[Plic.scala 167:22]
  reg [6:0] enables_0_0; // @[Plic.scala 173:26]
  reg [7:0] enables_0_1; // @[Plic.scala 174:50]
  reg [7:0] enables_0_2; // @[Plic.scala 174:50]
  reg [7:0] enables_0_3; // @[Plic.scala 174:50]
  reg [7:0] enables_0_4; // @[Plic.scala 174:50]
  reg [7:0] enables_0_5; // @[Plic.scala 174:50]
  reg [7:0] enables_0_6; // @[Plic.scala 174:50]
  reg [7:0] enables_0_7; // @[Plic.scala 174:50]
  reg [1:0] enables_0_8; // @[Plic.scala 175:51]
  reg [6:0] enables_1_0; // @[Plic.scala 173:26]
  reg [7:0] enables_1_1; // @[Plic.scala 174:50]
  reg [7:0] enables_1_2; // @[Plic.scala 174:50]
  reg [7:0] enables_1_3; // @[Plic.scala 174:50]
  reg [7:0] enables_1_4; // @[Plic.scala 174:50]
  reg [7:0] enables_1_5; // @[Plic.scala 174:50]
  reg [7:0] enables_1_6; // @[Plic.scala 174:50]
  reg [7:0] enables_1_7; // @[Plic.scala 174:50]
  reg [1:0] enables_1_8; // @[Plic.scala 175:51]
  wire [64:0] enableVec_0 = {enables_0_8,enables_0_7,enables_0_6,enables_0_5,enables_0_4,enables_0_3,enables_0_2,
    enables_0_1,enables_0_0}; // @[Cat.scala 31:58]
  wire [64:0] enableVec_1 = {enables_1_8,enables_1_7,enables_1_6,enables_1_5,enables_1_4,enables_1_3,enables_1_2,
    enables_1_1,enables_1_0}; // @[Cat.scala 31:58]
  wire [65:0] enableVec0_0 = {enables_0_8,enables_0_7,enables_0_6,enables_0_5,enables_0_4,enables_0_3,enables_0_2,
    enables_0_1,enables_0_0,1'h0}; // @[Cat.scala 31:58]
  wire [65:0] enableVec0_1 = {enables_1_8,enables_1_7,enables_1_6,enables_1_5,enables_1_4,enables_1_3,enables_1_2,
    enables_1_1,enables_1_0,1'h0}; // @[Cat.scala 31:58]
  reg [6:0] maxDevs_0; // @[Plic.scala 180:22]
  reg [6:0] maxDevs_1; // @[Plic.scala 180:22]
  wire [7:0] pendingUInt_lo_lo_lo = {pending_7,pending_6,pending_5,pending_4,pending_3,pending_2,pending_1,pending_0}; // @[Cat.scala 31:58]
  wire [15:0] pendingUInt_lo_lo = {pending_15,pending_14,pending_13,pending_12,pending_11,pending_10,pending_9,pending_8
    ,pendingUInt_lo_lo_lo}; // @[Cat.scala 31:58]
  wire [7:0] pendingUInt_lo_hi_lo = {pending_23,pending_22,pending_21,pending_20,pending_19,pending_18,pending_17,
    pending_16}; // @[Cat.scala 31:58]
  wire [31:0] pendingUInt_lo = {pending_31,pending_30,pending_29,pending_28,pending_27,pending_26,pending_25,pending_24,
    pendingUInt_lo_hi_lo,pendingUInt_lo_lo}; // @[Cat.scala 31:58]
  wire [7:0] pendingUInt_hi_lo_lo = {pending_39,pending_38,pending_37,pending_36,pending_35,pending_34,pending_33,
    pending_32}; // @[Cat.scala 31:58]
  wire [7:0] pendingUInt_hi_hi_lo = {pending_55,pending_54,pending_53,pending_52,pending_51,pending_50,pending_49,
    pending_48}; // @[Cat.scala 31:58]
  wire [1:0] pendingUInt_hi_hi_hi_hi_hi_hi = {pending_64,pending_63}; // @[Cat.scala 31:58]
  wire [16:0] pendingUInt_hi_hi = {pending_64,pending_63,pending_62,pending_61,pending_60,pending_59,pending_58,
    pending_57,pending_56,pendingUInt_hi_hi_lo}; // @[Cat.scala 31:58]
  wire [32:0] pendingUInt_hi = {pendingUInt_hi_hi,pending_47,pending_46,pending_45,pending_44,pending_43,pending_42,
    pending_41,pending_40,pendingUInt_hi_lo_lo}; // @[Cat.scala 31:58]
  wire [64:0] pendingUInt = {pendingUInt_hi,pendingUInt_lo}; // @[Cat.scala 31:58]
  reg [2:0] bundleOut_0_0_REG; // @[Plic.scala 187:41]
  reg [2:0] bundleOut_1_0_REG; // @[Plic.scala 187:41]
  wire [8:0] out_oindex = {out_back_io_deq_bits_index[18],out_back_io_deq_bits_index[10],out_back_io_deq_bits_index[9],
    out_back_io_deq_bits_index[5],out_back_io_deq_bits_index[4],out_back_io_deq_bits_index[3],out_back_io_deq_bits_index
    [2],out_back_io_deq_bits_index[1],out_back_io_deq_bits_index[0]}; // @[Cat.scala 31:58]
  wire [511:0] _out_backSel_T = 512'h1 << out_oindex; // @[OneHot.scala 57:35]
  wire  out_backSel_320 = _out_backSel_T[320]; // @[RegisterRouter.scala 82:24]
  wire [22:0] out_bindex = out_back_io_deq_bits_index & 23'h7bf9c0; // @[RegisterRouter.scala 82:24]
  wire  _out_T_41 = out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_roready_116 = out_back_io_deq_valid & auto_in_d_ready & out_back_io_deq_bits_read & out_backSel_320 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire [7:0] _out_backMask_T_23 = out_back_io_deq_bits_mask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_21 = out_back_io_deq_bits_mask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_19 = out_back_io_deq_bits_mask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_17 = out_back_io_deq_bits_mask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_15 = out_back_io_deq_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_13 = out_back_io_deq_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_11 = out_back_io_deq_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_9 = out_back_io_deq_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] out_backMask = {_out_backMask_T_23,_out_backMask_T_21,_out_backMask_T_19,_out_backMask_T_17,
    _out_backMask_T_15,_out_backMask_T_13,_out_backMask_T_11,_out_backMask_T_9}; // @[Cat.scala 31:58]
  wire  out_romask_116 = |out_backMask[63:32]; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_116 = out_roready_116 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  out_backSel_256 = _out_backSel_T[256]; // @[RegisterRouter.scala 82:24]
  wire  out_roready_138 = out_back_io_deq_valid & auto_in_d_ready & out_back_io_deq_bits_read & out_backSel_256 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_138 = out_roready_138 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire [6:0] _claiming_T = out_f_roready_138 ? maxDevs_0 : 7'h0; // @[Plic.scala 245:49]
  wire [6:0] _claiming_T_1 = out_f_roready_116 ? maxDevs_1 : 7'h0; // @[Plic.scala 245:49]
  wire [6:0] claiming = _claiming_T | _claiming_T_1; // @[Plic.scala 245:96]
  wire [127:0] _claimedDevs_T = 128'h1 << claiming; // @[OneHot.scala 64:12]
  wire  claimedDevs_1 = _claimedDevs_T[1]; // @[Plic.scala 246:58]
  wire  claimedDevs_2 = _claimedDevs_T[2]; // @[Plic.scala 246:58]
  wire  claimedDevs_3 = _claimedDevs_T[3]; // @[Plic.scala 246:58]
  wire  claimedDevs_4 = _claimedDevs_T[4]; // @[Plic.scala 246:58]
  wire  claimedDevs_5 = _claimedDevs_T[5]; // @[Plic.scala 246:58]
  wire  claimedDevs_6 = _claimedDevs_T[6]; // @[Plic.scala 246:58]
  wire  claimedDevs_7 = _claimedDevs_T[7]; // @[Plic.scala 246:58]
  wire  claimedDevs_8 = _claimedDevs_T[8]; // @[Plic.scala 246:58]
  wire  claimedDevs_9 = _claimedDevs_T[9]; // @[Plic.scala 246:58]
  wire  claimedDevs_10 = _claimedDevs_T[10]; // @[Plic.scala 246:58]
  wire  claimedDevs_11 = _claimedDevs_T[11]; // @[Plic.scala 246:58]
  wire  claimedDevs_12 = _claimedDevs_T[12]; // @[Plic.scala 246:58]
  wire  claimedDevs_13 = _claimedDevs_T[13]; // @[Plic.scala 246:58]
  wire  claimedDevs_14 = _claimedDevs_T[14]; // @[Plic.scala 246:58]
  wire  claimedDevs_15 = _claimedDevs_T[15]; // @[Plic.scala 246:58]
  wire  claimedDevs_16 = _claimedDevs_T[16]; // @[Plic.scala 246:58]
  wire  claimedDevs_17 = _claimedDevs_T[17]; // @[Plic.scala 246:58]
  wire  claimedDevs_18 = _claimedDevs_T[18]; // @[Plic.scala 246:58]
  wire  claimedDevs_19 = _claimedDevs_T[19]; // @[Plic.scala 246:58]
  wire  claimedDevs_20 = _claimedDevs_T[20]; // @[Plic.scala 246:58]
  wire  claimedDevs_21 = _claimedDevs_T[21]; // @[Plic.scala 246:58]
  wire  claimedDevs_22 = _claimedDevs_T[22]; // @[Plic.scala 246:58]
  wire  claimedDevs_23 = _claimedDevs_T[23]; // @[Plic.scala 246:58]
  wire  claimedDevs_24 = _claimedDevs_T[24]; // @[Plic.scala 246:58]
  wire  claimedDevs_25 = _claimedDevs_T[25]; // @[Plic.scala 246:58]
  wire  claimedDevs_26 = _claimedDevs_T[26]; // @[Plic.scala 246:58]
  wire  claimedDevs_27 = _claimedDevs_T[27]; // @[Plic.scala 246:58]
  wire  claimedDevs_28 = _claimedDevs_T[28]; // @[Plic.scala 246:58]
  wire  claimedDevs_29 = _claimedDevs_T[29]; // @[Plic.scala 246:58]
  wire  claimedDevs_30 = _claimedDevs_T[30]; // @[Plic.scala 246:58]
  wire  claimedDevs_31 = _claimedDevs_T[31]; // @[Plic.scala 246:58]
  wire  claimedDevs_32 = _claimedDevs_T[32]; // @[Plic.scala 246:58]
  wire  claimedDevs_33 = _claimedDevs_T[33]; // @[Plic.scala 246:58]
  wire  claimedDevs_34 = _claimedDevs_T[34]; // @[Plic.scala 246:58]
  wire  claimedDevs_35 = _claimedDevs_T[35]; // @[Plic.scala 246:58]
  wire  claimedDevs_36 = _claimedDevs_T[36]; // @[Plic.scala 246:58]
  wire  claimedDevs_37 = _claimedDevs_T[37]; // @[Plic.scala 246:58]
  wire  claimedDevs_38 = _claimedDevs_T[38]; // @[Plic.scala 246:58]
  wire  claimedDevs_39 = _claimedDevs_T[39]; // @[Plic.scala 246:58]
  wire  claimedDevs_40 = _claimedDevs_T[40]; // @[Plic.scala 246:58]
  wire  claimedDevs_41 = _claimedDevs_T[41]; // @[Plic.scala 246:58]
  wire  claimedDevs_42 = _claimedDevs_T[42]; // @[Plic.scala 246:58]
  wire  claimedDevs_43 = _claimedDevs_T[43]; // @[Plic.scala 246:58]
  wire  claimedDevs_44 = _claimedDevs_T[44]; // @[Plic.scala 246:58]
  wire  claimedDevs_45 = _claimedDevs_T[45]; // @[Plic.scala 246:58]
  wire  claimedDevs_46 = _claimedDevs_T[46]; // @[Plic.scala 246:58]
  wire  claimedDevs_47 = _claimedDevs_T[47]; // @[Plic.scala 246:58]
  wire  claimedDevs_48 = _claimedDevs_T[48]; // @[Plic.scala 246:58]
  wire  claimedDevs_49 = _claimedDevs_T[49]; // @[Plic.scala 246:58]
  wire  claimedDevs_50 = _claimedDevs_T[50]; // @[Plic.scala 246:58]
  wire  claimedDevs_51 = _claimedDevs_T[51]; // @[Plic.scala 246:58]
  wire  claimedDevs_52 = _claimedDevs_T[52]; // @[Plic.scala 246:58]
  wire  claimedDevs_53 = _claimedDevs_T[53]; // @[Plic.scala 246:58]
  wire  claimedDevs_54 = _claimedDevs_T[54]; // @[Plic.scala 246:58]
  wire  claimedDevs_55 = _claimedDevs_T[55]; // @[Plic.scala 246:58]
  wire  claimedDevs_56 = _claimedDevs_T[56]; // @[Plic.scala 246:58]
  wire  claimedDevs_57 = _claimedDevs_T[57]; // @[Plic.scala 246:58]
  wire  claimedDevs_58 = _claimedDevs_T[58]; // @[Plic.scala 246:58]
  wire  claimedDevs_59 = _claimedDevs_T[59]; // @[Plic.scala 246:58]
  wire  claimedDevs_60 = _claimedDevs_T[60]; // @[Plic.scala 246:58]
  wire  claimedDevs_61 = _claimedDevs_T[61]; // @[Plic.scala 246:58]
  wire  claimedDevs_62 = _claimedDevs_T[62]; // @[Plic.scala 246:58]
  wire  claimedDevs_63 = _claimedDevs_T[63]; // @[Plic.scala 246:58]
  wire  claimedDevs_64 = _claimedDevs_T[64]; // @[Plic.scala 246:58]
  wire  claimedDevs_65 = _claimedDevs_T[65]; // @[Plic.scala 246:58]
  wire  out_woready_116 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_320 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_womask_116 = &out_backMask[63:32]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_116 = out_woready_116 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire [6:0] completerDev = out_back_io_deq_bits_data[38:32]; // @[package.scala 154:13]
  wire [65:0] _out_completer_1_T = enableVec0_1 >> completerDev; // @[Plic.scala 294:51]
  wire  completer_1 = out_f_woready_116 & _out_completer_1_T[0]; // @[Plic.scala 294:35]
  wire  out_woready_138 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_256 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_138 = out_woready_138 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire [65:0] _out_completer_0_T = enableVec0_0 >> completerDev; // @[Plic.scala 294:51]
  wire  completer_0 = out_f_woready_138 & _out_completer_0_T[0]; // @[Plic.scala 294:35]
  wire [127:0] _completedDevs_T_1 = 128'h1 << completerDev; // @[OneHot.scala 64:12]
  wire [65:0] completedDevs = completer_0 | completer_1 ? _completedDevs_T_1[65:0] : 66'h0; // @[Plic.scala 263:28]
  wire  out_backSel_128 = _out_backSel_T[128]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_0 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_128 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_womask_1 = &out_backMask[7:1]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_1 = out_woready_0 & out_womask_1; // @[RegisterRouter.scala 82:24]
  wire  out_womask_2 = &out_backMask[15:8]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_2 = out_woready_0 & out_womask_2; // @[RegisterRouter.scala 82:24]
  wire  out_womask_3 = &out_backMask[23:16]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_3 = out_woready_0 & out_womask_3; // @[RegisterRouter.scala 82:24]
  wire  out_womask_4 = &out_backMask[31:24]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_4 = out_woready_0 & out_womask_4; // @[RegisterRouter.scala 82:24]
  wire  out_womask_5 = &out_backMask[39:32]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_5 = out_woready_0 & out_womask_5; // @[RegisterRouter.scala 82:24]
  wire  out_womask_6 = &out_backMask[47:40]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_6 = out_woready_0 & out_womask_6; // @[RegisterRouter.scala 82:24]
  wire  out_womask_7 = &out_backMask[55:48]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_7 = out_woready_0 & out_womask_7; // @[RegisterRouter.scala 82:24]
  wire  out_womask_8 = &out_backMask[63:56]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_8 = out_woready_0 & out_womask_8; // @[RegisterRouter.scala 82:24]
  wire [63:0] out_prepend_7 = {enables_0_7,enables_0_6,enables_0_5,enables_0_4,enables_0_3,enables_0_2,enables_0_1,
    enables_0_0,1'h0}; // @[Cat.scala 31:58]
  wire  out_womask_9 = &out_backMask[34:32]; // @[RegisterRouter.scala 82:24]
  wire  out_backSel_0 = _out_backSel_T[0]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_9 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_0 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_9 = out_woready_9 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_8 = {priority_0,32'h0}; // @[Cat.scala 31:58]
  wire  out_womask_10 = &out_backMask[2:0]; // @[RegisterRouter.scala 82:24]
  wire  out_backSel_5 = _out_backSel_T[5]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_10 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_5 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_10 = out_woready_10 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_11 = out_woready_10 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_9 = {{29'd0}, priority_9}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_9 = {priority_10,_out_prepend_T_9}; // @[Cat.scala 31:58]
  wire  out_womask_12 = &out_backMask[1:0]; // @[RegisterRouter.scala 82:24]
  wire  out_backSel_145 = _out_backSel_T[145]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_12 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_145 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_12 = out_woready_12 & out_womask_12; // @[RegisterRouter.scala 82:24]
  wire  out_backSel_10 = _out_backSel_T[10]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_13 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_10 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_13 = out_woready_13 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_14 = out_woready_13 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_10 = {{29'd0}, priority_19}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_10 = {priority_20,_out_prepend_T_10}; // @[Cat.scala 31:58]
  wire  out_backSel_24 = _out_backSel_T[24]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_15 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_24 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_15 = out_woready_15 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_16 = out_woready_15 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_11 = {{29'd0}, priority_47}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_11 = {priority_48,_out_prepend_T_11}; // @[Cat.scala 31:58]
  wire  out_backSel_25 = _out_backSel_T[25]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_17 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_25 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_17 = out_woready_17 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_18 = out_woready_17 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_12 = {{29'd0}, priority_49}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_12 = {priority_50,_out_prepend_T_12}; // @[Cat.scala 31:58]
  wire  out_backSel_14 = _out_backSel_T[14]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_19 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_14 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_19 = out_woready_19 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_20 = out_woready_19 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_13 = {{29'd0}, priority_27}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_13 = {priority_28,_out_prepend_T_13}; // @[Cat.scala 31:58]
  wire  out_backSel_20 = _out_backSel_T[20]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_21 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_20 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_21 = out_woready_21 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_22 = out_woready_21 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_14 = {{29'd0}, priority_39}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_14 = {priority_40,_out_prepend_T_14}; // @[Cat.scala 31:58]
  wire  out_backSel_29 = _out_backSel_T[29]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_23 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_29 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_23 = out_woready_23 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_24 = out_woready_23 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_15 = {{29'd0}, priority_57}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_15 = {priority_58,_out_prepend_T_15}; // @[Cat.scala 31:58]
  wire  out_backSel_144 = _out_backSel_T[144]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_25 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_144 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_26 = out_woready_25 & out_womask_1; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_27 = out_woready_25 & out_womask_2; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_28 = out_woready_25 & out_womask_3; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_29 = out_woready_25 & out_womask_4; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_30 = out_woready_25 & out_womask_5; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_31 = out_woready_25 & out_womask_6; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_32 = out_woready_25 & out_womask_7; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_33 = out_woready_25 & out_womask_8; // @[RegisterRouter.scala 82:24]
  wire [63:0] out_prepend_23 = {enables_1_7,enables_1_6,enables_1_5,enables_1_4,enables_1_3,enables_1_2,enables_1_1,
    enables_1_0,1'h0}; // @[Cat.scala 31:58]
  wire  out_backSel_1 = _out_backSel_T[1]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_34 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_1 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_34 = out_woready_34 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_35 = out_woready_34 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_24 = {{29'd0}, priority_1}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_24 = {priority_2,_out_prepend_T_24}; // @[Cat.scala 31:58]
  wire  out_backSel_6 = _out_backSel_T[6]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_36 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_6 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_36 = out_woready_36 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_37 = out_woready_36 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_25 = {{29'd0}, priority_11}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_25 = {priority_12,_out_prepend_T_25}; // @[Cat.scala 31:58]
  wire [9:0] out_prepend_34 = {pending_8,pending_7,pending_6,pending_5,pending_4,pending_3,pending_2,pending_1,pending_0
    ,1'h0}; // @[Cat.scala 31:58]
  wire [18:0] out_prepend_43 = {pending_17,pending_16,pending_15,pending_14,pending_13,pending_12,pending_11,pending_10,
    pending_9,out_prepend_34}; // @[Cat.scala 31:58]
  wire [27:0] out_prepend_52 = {pending_26,pending_25,pending_24,pending_23,pending_22,pending_21,pending_20,pending_19,
    pending_18,out_prepend_43}; // @[Cat.scala 31:58]
  wire [36:0] out_prepend_61 = {pending_35,pending_34,pending_33,pending_32,pending_31,pending_30,pending_29,pending_28,
    pending_27,out_prepend_52}; // @[Cat.scala 31:58]
  wire [45:0] out_prepend_70 = {pending_44,pending_43,pending_42,pending_41,pending_40,pending_39,pending_38,pending_37,
    pending_36,out_prepend_61}; // @[Cat.scala 31:58]
  wire [54:0] out_prepend_79 = {pending_53,pending_52,pending_51,pending_50,pending_49,pending_48,pending_47,pending_46,
    pending_45,out_prepend_70}; // @[Cat.scala 31:58]
  wire [63:0] out_prepend_88 = {pending_62,pending_61,pending_60,pending_59,pending_58,pending_57,pending_56,pending_55,
    pending_54,out_prepend_79}; // @[Cat.scala 31:58]
  wire  out_backSel_28 = _out_backSel_T[28]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_102 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_28 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_102 = out_woready_102 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_103 = out_woready_102 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_89 = {{29'd0}, priority_55}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_89 = {priority_56,_out_prepend_T_89}; // @[Cat.scala 31:58]
  wire  out_backSel_21 = _out_backSel_T[21]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_104 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_21 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_104 = out_woready_104 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_105 = out_woready_104 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_90 = {{29'd0}, priority_41}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_90 = {priority_42,_out_prepend_T_90}; // @[Cat.scala 31:58]
  wire  out_backSel_9 = _out_backSel_T[9]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_106 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_9 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_106 = out_woready_106 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_107 = out_woready_106 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_91 = {{29'd0}, priority_17}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_91 = {priority_18,_out_prepend_T_91}; // @[Cat.scala 31:58]
  wire  out_backSel_13 = _out_backSel_T[13]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_108 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_13 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_108 = out_woready_108 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_109 = out_woready_108 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_92 = {{29'd0}, priority_25}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_92 = {priority_26,_out_prepend_T_92}; // @[Cat.scala 31:58]
  wire  out_backSel_2 = _out_backSel_T[2]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_110 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_2 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_110 = out_woready_110 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_111 = out_woready_110 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_93 = {{29'd0}, priority_3}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_93 = {priority_4,_out_prepend_T_93}; // @[Cat.scala 31:58]
  wire  out_f_woready_114 = out_woready_116 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire [3:0] out_prepend_95 = {1'h0,threshold_1}; // @[Cat.scala 31:58]
  wire [31:0] _out_T_1218 = {{28'd0}, out_prepend_95}; // @[RegisterRouter.scala 82:24]
  wire [38:0] out_prepend_96 = {maxDevs_1,_out_T_1218}; // @[Cat.scala 31:58]
  wire [63:0] _out_T_1234 = {{25'd0}, out_prepend_96}; // @[RegisterRouter.scala 82:24]
  wire  out_backSel_32 = _out_backSel_T[32]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_117 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_32 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_117 = out_woready_117 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_118 = out_woready_117 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_97 = {{29'd0}, priority_63}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_97 = {priority_64,_out_prepend_T_97}; // @[Cat.scala 31:58]
  wire  out_backSel_17 = _out_backSel_T[17]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_119 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_17 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_119 = out_woready_119 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_120 = out_woready_119 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_98 = {{29'd0}, priority_33}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_98 = {priority_34,_out_prepend_T_98}; // @[Cat.scala 31:58]
  wire  out_backSel_22 = _out_backSel_T[22]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_121 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_22 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_121 = out_woready_121 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_122 = out_woready_121 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_99 = {{29'd0}, priority_43}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_99 = {priority_44,_out_prepend_T_99}; // @[Cat.scala 31:58]
  wire  out_backSel_27 = _out_backSel_T[27]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_123 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_27 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_123 = out_woready_123 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_124 = out_woready_123 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_100 = {{29'd0}, priority_53}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_100 = {priority_54,_out_prepend_T_100}; // @[Cat.scala 31:58]
  wire  out_backSel_12 = _out_backSel_T[12]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_125 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_12 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_125 = out_woready_125 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_126 = out_woready_125 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_101 = {{29'd0}, priority_23}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_101 = {priority_24,_out_prepend_T_101}; // @[Cat.scala 31:58]
  wire  out_backSel_7 = _out_backSel_T[7]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_127 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_7 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_127 = out_woready_127 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_128 = out_woready_127 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_102 = {{29'd0}, priority_13}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_102 = {priority_14,_out_prepend_T_102}; // @[Cat.scala 31:58]
  wire  out_backSel_3 = _out_backSel_T[3]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_129 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_3 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_129 = out_woready_129 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_130 = out_woready_129 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_103 = {{29'd0}, priority_5}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_103 = {priority_6,_out_prepend_T_103}; // @[Cat.scala 31:58]
  wire  out_backSel_129 = _out_backSel_T[129]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_131 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_129 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_131 = out_woready_131 & out_womask_12; // @[RegisterRouter.scala 82:24]
  wire  out_backSel_18 = _out_backSel_T[18]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_132 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_18 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_132 = out_woready_132 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_133 = out_woready_132 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_104 = {{29'd0}, priority_35}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_104 = {priority_36,_out_prepend_T_104}; // @[Cat.scala 31:58]
  wire  out_backSel_16 = _out_backSel_T[16]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_134 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_16 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_134 = out_woready_134 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_135 = out_woready_134 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_105 = {{29'd0}, priority_31}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_105 = {priority_32,_out_prepend_T_105}; // @[Cat.scala 31:58]
  wire  out_f_woready_136 = out_woready_138 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire [3:0] out_prepend_106 = {1'h0,threshold_0}; // @[Cat.scala 31:58]
  wire [31:0] _out_T_1463 = {{28'd0}, out_prepend_106}; // @[RegisterRouter.scala 82:24]
  wire [38:0] out_prepend_107 = {maxDevs_0,_out_T_1463}; // @[Cat.scala 31:58]
  wire [63:0] _out_T_1479 = {{25'd0}, out_prepend_107}; // @[RegisterRouter.scala 82:24]
  wire  out_backSel_31 = _out_backSel_T[31]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_139 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_31 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_139 = out_woready_139 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_140 = out_woready_139 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_108 = {{29'd0}, priority_61}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_108 = {priority_62,_out_prepend_T_108}; // @[Cat.scala 31:58]
  wire  out_backSel_11 = _out_backSel_T[11]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_141 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_11 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_141 = out_woready_141 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_142 = out_woready_141 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_109 = {{29'd0}, priority_21}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_109 = {priority_22,_out_prepend_T_109}; // @[Cat.scala 31:58]
  wire  out_backSel_26 = _out_backSel_T[26]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_143 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_26 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_143 = out_woready_143 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_144 = out_woready_143 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_110 = {{29'd0}, priority_51}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_110 = {priority_52,_out_prepend_T_110}; // @[Cat.scala 31:58]
  wire  out_backSel_23 = _out_backSel_T[23]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_145 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_23 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_145 = out_woready_145 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_146 = out_woready_145 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_111 = {{29'd0}, priority_45}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_111 = {priority_46,_out_prepend_T_111}; // @[Cat.scala 31:58]
  wire  out_backSel_8 = _out_backSel_T[8]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_147 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_8 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_147 = out_woready_147 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_148 = out_woready_147 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_112 = {{29'd0}, priority_15}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_112 = {priority_16,_out_prepend_T_112}; // @[Cat.scala 31:58]
  wire  out_backSel_30 = _out_backSel_T[30]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_149 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_30 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_149 = out_woready_149 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_150 = out_woready_149 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_113 = {{29'd0}, priority_59}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_113 = {priority_60,_out_prepend_T_113}; // @[Cat.scala 31:58]
  wire  out_backSel_19 = _out_backSel_T[19]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_151 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_19 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_151 = out_woready_151 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_152 = out_woready_151 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_114 = {{29'd0}, priority_37}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_114 = {priority_38,_out_prepend_T_114}; // @[Cat.scala 31:58]
  wire  out_backSel_4 = _out_backSel_T[4]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_153 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_4 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_153 = out_woready_153 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_154 = out_woready_153 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_115 = {{29'd0}, priority_7}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_115 = {priority_8,_out_prepend_T_115}; // @[Cat.scala 31:58]
  wire  out_backSel_15 = _out_backSel_T[15]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_155 = out_back_io_deq_valid & auto_in_d_ready & ~out_back_io_deq_bits_read & out_backSel_15 &
    out_bindex == 23'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_155 = out_woready_155 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_156 = out_woready_155 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [31:0] _out_prepend_T_116 = {{29'd0}, priority_29}; // @[RegisterRouter.scala 82:24]
  wire [34:0] out_prepend_116 = {priority_30,_out_prepend_T_116}; // @[Cat.scala 31:58]
  wire  _GEN_2198 = 9'h140 == out_oindex ? _out_T_41 : 1'h1; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2199 = 9'h100 == out_oindex ? _out_T_41 : _GEN_2198; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2200 = 9'h91 == out_oindex ? _out_T_41 : _GEN_2199; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2201 = 9'h90 == out_oindex ? _out_T_41 : _GEN_2200; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2202 = 9'h81 == out_oindex ? _out_T_41 : _GEN_2201; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2203 = 9'h80 == out_oindex ? _out_T_41 : _GEN_2202; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2204 = 9'h41 == out_oindex ? _out_T_41 : _GEN_2203; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2205 = 9'h40 == out_oindex ? _out_T_41 : _GEN_2204; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2206 = 9'h20 == out_oindex ? _out_T_41 : _GEN_2205; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2207 = 9'h1f == out_oindex ? _out_T_41 : _GEN_2206; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2208 = 9'h1e == out_oindex ? _out_T_41 : _GEN_2207; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2209 = 9'h1d == out_oindex ? _out_T_41 : _GEN_2208; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2210 = 9'h1c == out_oindex ? _out_T_41 : _GEN_2209; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2211 = 9'h1b == out_oindex ? _out_T_41 : _GEN_2210; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2212 = 9'h1a == out_oindex ? _out_T_41 : _GEN_2211; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2213 = 9'h19 == out_oindex ? _out_T_41 : _GEN_2212; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2214 = 9'h18 == out_oindex ? _out_T_41 : _GEN_2213; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2215 = 9'h17 == out_oindex ? _out_T_41 : _GEN_2214; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2216 = 9'h16 == out_oindex ? _out_T_41 : _GEN_2215; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2217 = 9'h15 == out_oindex ? _out_T_41 : _GEN_2216; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2218 = 9'h14 == out_oindex ? _out_T_41 : _GEN_2217; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2219 = 9'h13 == out_oindex ? _out_T_41 : _GEN_2218; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2220 = 9'h12 == out_oindex ? _out_T_41 : _GEN_2219; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2221 = 9'h11 == out_oindex ? _out_T_41 : _GEN_2220; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2222 = 9'h10 == out_oindex ? _out_T_41 : _GEN_2221; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2223 = 9'hf == out_oindex ? _out_T_41 : _GEN_2222; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2224 = 9'he == out_oindex ? _out_T_41 : _GEN_2223; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2225 = 9'hd == out_oindex ? _out_T_41 : _GEN_2224; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2226 = 9'hc == out_oindex ? _out_T_41 : _GEN_2225; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2227 = 9'hb == out_oindex ? _out_T_41 : _GEN_2226; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2228 = 9'ha == out_oindex ? _out_T_41 : _GEN_2227; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2229 = 9'h9 == out_oindex ? _out_T_41 : _GEN_2228; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2230 = 9'h8 == out_oindex ? _out_T_41 : _GEN_2229; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2231 = 9'h7 == out_oindex ? _out_T_41 : _GEN_2230; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2232 = 9'h6 == out_oindex ? _out_T_41 : _GEN_2231; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2233 = 9'h5 == out_oindex ? _out_T_41 : _GEN_2232; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2234 = 9'h4 == out_oindex ? _out_T_41 : _GEN_2233; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2235 = 9'h3 == out_oindex ? _out_T_41 : _GEN_2234; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2236 = 9'h2 == out_oindex ? _out_T_41 : _GEN_2235; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_2237 = 9'h1 == out_oindex ? _out_T_41 : _GEN_2236; // @[MuxLiteral.scala 53:{26,32}]
  wire  out_out_bits_data_out = 9'h0 == out_oindex ? _out_T_41 : _GEN_2237; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2239 = 9'h140 == out_oindex ? _out_T_1234 : 64'h0; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2240 = 9'h100 == out_oindex ? _out_T_1479 : _GEN_2239; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2241 = 9'h91 == out_oindex ? {{62'd0}, enables_1_8} : _GEN_2240; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2242 = 9'h90 == out_oindex ? out_prepend_23 : _GEN_2241; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2243 = 9'h81 == out_oindex ? {{62'd0}, enables_0_8} : _GEN_2242; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2244 = 9'h80 == out_oindex ? out_prepend_7 : _GEN_2243; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2245 = 9'h41 == out_oindex ? {{62'd0}, pendingUInt_hi_hi_hi_hi_hi_hi} : _GEN_2244; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2246 = 9'h40 == out_oindex ? out_prepend_88 : _GEN_2245; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2247 = 9'h20 == out_oindex ? {{29'd0}, out_prepend_97} : _GEN_2246; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2248 = 9'h1f == out_oindex ? {{29'd0}, out_prepend_108} : _GEN_2247; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2249 = 9'h1e == out_oindex ? {{29'd0}, out_prepend_113} : _GEN_2248; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2250 = 9'h1d == out_oindex ? {{29'd0}, out_prepend_15} : _GEN_2249; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2251 = 9'h1c == out_oindex ? {{29'd0}, out_prepend_89} : _GEN_2250; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2252 = 9'h1b == out_oindex ? {{29'd0}, out_prepend_100} : _GEN_2251; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2253 = 9'h1a == out_oindex ? {{29'd0}, out_prepend_110} : _GEN_2252; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2254 = 9'h19 == out_oindex ? {{29'd0}, out_prepend_12} : _GEN_2253; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2255 = 9'h18 == out_oindex ? {{29'd0}, out_prepend_11} : _GEN_2254; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2256 = 9'h17 == out_oindex ? {{29'd0}, out_prepend_111} : _GEN_2255; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2257 = 9'h16 == out_oindex ? {{29'd0}, out_prepend_99} : _GEN_2256; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2258 = 9'h15 == out_oindex ? {{29'd0}, out_prepend_90} : _GEN_2257; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2259 = 9'h14 == out_oindex ? {{29'd0}, out_prepend_14} : _GEN_2258; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2260 = 9'h13 == out_oindex ? {{29'd0}, out_prepend_114} : _GEN_2259; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2261 = 9'h12 == out_oindex ? {{29'd0}, out_prepend_104} : _GEN_2260; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2262 = 9'h11 == out_oindex ? {{29'd0}, out_prepend_98} : _GEN_2261; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2263 = 9'h10 == out_oindex ? {{29'd0}, out_prepend_105} : _GEN_2262; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2264 = 9'hf == out_oindex ? {{29'd0}, out_prepend_116} : _GEN_2263; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2265 = 9'he == out_oindex ? {{29'd0}, out_prepend_13} : _GEN_2264; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2266 = 9'hd == out_oindex ? {{29'd0}, out_prepend_92} : _GEN_2265; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2267 = 9'hc == out_oindex ? {{29'd0}, out_prepend_101} : _GEN_2266; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2268 = 9'hb == out_oindex ? {{29'd0}, out_prepend_109} : _GEN_2267; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2269 = 9'ha == out_oindex ? {{29'd0}, out_prepend_10} : _GEN_2268; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2270 = 9'h9 == out_oindex ? {{29'd0}, out_prepend_91} : _GEN_2269; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2271 = 9'h8 == out_oindex ? {{29'd0}, out_prepend_112} : _GEN_2270; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2272 = 9'h7 == out_oindex ? {{29'd0}, out_prepend_102} : _GEN_2271; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2273 = 9'h6 == out_oindex ? {{29'd0}, out_prepend_25} : _GEN_2272; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2274 = 9'h5 == out_oindex ? {{29'd0}, out_prepend_9} : _GEN_2273; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2275 = 9'h4 == out_oindex ? {{29'd0}, out_prepend_115} : _GEN_2274; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2276 = 9'h3 == out_oindex ? {{29'd0}, out_prepend_103} : _GEN_2275; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2277 = 9'h2 == out_oindex ? {{29'd0}, out_prepend_93} : _GEN_2276; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] _GEN_2278 = 9'h1 == out_oindex ? {{29'd0}, out_prepend_24} : _GEN_2277; // @[MuxLiteral.scala 53:{26,32}]
  wire [63:0] out_out_bits_data_out_1 = 9'h0 == out_oindex ? {{29'd0}, out_prepend_8} : _GEN_2278; // @[MuxLiteral.scala 53:{26,32}]
  wire  out_bits_read = out_back_io_deq_bits_read; // @[RegisterRouter.scala 82:{24,24}]
  LevelGateway gateways_gateway ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_clock),
    .reset(gateways_gateway_reset),
    .io_interrupt(gateways_gateway_io_interrupt),
    .io_plic_valid(gateways_gateway_io_plic_valid),
    .io_plic_ready(gateways_gateway_io_plic_ready),
    .io_plic_complete(gateways_gateway_io_plic_complete)
  );
  LevelGateway gateways_gateway_1 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_1_clock),
    .reset(gateways_gateway_1_reset),
    .io_interrupt(gateways_gateway_1_io_interrupt),
    .io_plic_valid(gateways_gateway_1_io_plic_valid),
    .io_plic_ready(gateways_gateway_1_io_plic_ready),
    .io_plic_complete(gateways_gateway_1_io_plic_complete)
  );
  LevelGateway gateways_gateway_2 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_2_clock),
    .reset(gateways_gateway_2_reset),
    .io_interrupt(gateways_gateway_2_io_interrupt),
    .io_plic_valid(gateways_gateway_2_io_plic_valid),
    .io_plic_ready(gateways_gateway_2_io_plic_ready),
    .io_plic_complete(gateways_gateway_2_io_plic_complete)
  );
  LevelGateway gateways_gateway_3 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_3_clock),
    .reset(gateways_gateway_3_reset),
    .io_interrupt(gateways_gateway_3_io_interrupt),
    .io_plic_valid(gateways_gateway_3_io_plic_valid),
    .io_plic_ready(gateways_gateway_3_io_plic_ready),
    .io_plic_complete(gateways_gateway_3_io_plic_complete)
  );
  LevelGateway gateways_gateway_4 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_4_clock),
    .reset(gateways_gateway_4_reset),
    .io_interrupt(gateways_gateway_4_io_interrupt),
    .io_plic_valid(gateways_gateway_4_io_plic_valid),
    .io_plic_ready(gateways_gateway_4_io_plic_ready),
    .io_plic_complete(gateways_gateway_4_io_plic_complete)
  );
  LevelGateway gateways_gateway_5 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_5_clock),
    .reset(gateways_gateway_5_reset),
    .io_interrupt(gateways_gateway_5_io_interrupt),
    .io_plic_valid(gateways_gateway_5_io_plic_valid),
    .io_plic_ready(gateways_gateway_5_io_plic_ready),
    .io_plic_complete(gateways_gateway_5_io_plic_complete)
  );
  LevelGateway gateways_gateway_6 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_6_clock),
    .reset(gateways_gateway_6_reset),
    .io_interrupt(gateways_gateway_6_io_interrupt),
    .io_plic_valid(gateways_gateway_6_io_plic_valid),
    .io_plic_ready(gateways_gateway_6_io_plic_ready),
    .io_plic_complete(gateways_gateway_6_io_plic_complete)
  );
  LevelGateway gateways_gateway_7 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_7_clock),
    .reset(gateways_gateway_7_reset),
    .io_interrupt(gateways_gateway_7_io_interrupt),
    .io_plic_valid(gateways_gateway_7_io_plic_valid),
    .io_plic_ready(gateways_gateway_7_io_plic_ready),
    .io_plic_complete(gateways_gateway_7_io_plic_complete)
  );
  LevelGateway gateways_gateway_8 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_8_clock),
    .reset(gateways_gateway_8_reset),
    .io_interrupt(gateways_gateway_8_io_interrupt),
    .io_plic_valid(gateways_gateway_8_io_plic_valid),
    .io_plic_ready(gateways_gateway_8_io_plic_ready),
    .io_plic_complete(gateways_gateway_8_io_plic_complete)
  );
  LevelGateway gateways_gateway_9 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_9_clock),
    .reset(gateways_gateway_9_reset),
    .io_interrupt(gateways_gateway_9_io_interrupt),
    .io_plic_valid(gateways_gateway_9_io_plic_valid),
    .io_plic_ready(gateways_gateway_9_io_plic_ready),
    .io_plic_complete(gateways_gateway_9_io_plic_complete)
  );
  LevelGateway gateways_gateway_10 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_10_clock),
    .reset(gateways_gateway_10_reset),
    .io_interrupt(gateways_gateway_10_io_interrupt),
    .io_plic_valid(gateways_gateway_10_io_plic_valid),
    .io_plic_ready(gateways_gateway_10_io_plic_ready),
    .io_plic_complete(gateways_gateway_10_io_plic_complete)
  );
  LevelGateway gateways_gateway_11 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_11_clock),
    .reset(gateways_gateway_11_reset),
    .io_interrupt(gateways_gateway_11_io_interrupt),
    .io_plic_valid(gateways_gateway_11_io_plic_valid),
    .io_plic_ready(gateways_gateway_11_io_plic_ready),
    .io_plic_complete(gateways_gateway_11_io_plic_complete)
  );
  LevelGateway gateways_gateway_12 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_12_clock),
    .reset(gateways_gateway_12_reset),
    .io_interrupt(gateways_gateway_12_io_interrupt),
    .io_plic_valid(gateways_gateway_12_io_plic_valid),
    .io_plic_ready(gateways_gateway_12_io_plic_ready),
    .io_plic_complete(gateways_gateway_12_io_plic_complete)
  );
  LevelGateway gateways_gateway_13 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_13_clock),
    .reset(gateways_gateway_13_reset),
    .io_interrupt(gateways_gateway_13_io_interrupt),
    .io_plic_valid(gateways_gateway_13_io_plic_valid),
    .io_plic_ready(gateways_gateway_13_io_plic_ready),
    .io_plic_complete(gateways_gateway_13_io_plic_complete)
  );
  LevelGateway gateways_gateway_14 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_14_clock),
    .reset(gateways_gateway_14_reset),
    .io_interrupt(gateways_gateway_14_io_interrupt),
    .io_plic_valid(gateways_gateway_14_io_plic_valid),
    .io_plic_ready(gateways_gateway_14_io_plic_ready),
    .io_plic_complete(gateways_gateway_14_io_plic_complete)
  );
  LevelGateway gateways_gateway_15 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_15_clock),
    .reset(gateways_gateway_15_reset),
    .io_interrupt(gateways_gateway_15_io_interrupt),
    .io_plic_valid(gateways_gateway_15_io_plic_valid),
    .io_plic_ready(gateways_gateway_15_io_plic_ready),
    .io_plic_complete(gateways_gateway_15_io_plic_complete)
  );
  LevelGateway gateways_gateway_16 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_16_clock),
    .reset(gateways_gateway_16_reset),
    .io_interrupt(gateways_gateway_16_io_interrupt),
    .io_plic_valid(gateways_gateway_16_io_plic_valid),
    .io_plic_ready(gateways_gateway_16_io_plic_ready),
    .io_plic_complete(gateways_gateway_16_io_plic_complete)
  );
  LevelGateway gateways_gateway_17 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_17_clock),
    .reset(gateways_gateway_17_reset),
    .io_interrupt(gateways_gateway_17_io_interrupt),
    .io_plic_valid(gateways_gateway_17_io_plic_valid),
    .io_plic_ready(gateways_gateway_17_io_plic_ready),
    .io_plic_complete(gateways_gateway_17_io_plic_complete)
  );
  LevelGateway gateways_gateway_18 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_18_clock),
    .reset(gateways_gateway_18_reset),
    .io_interrupt(gateways_gateway_18_io_interrupt),
    .io_plic_valid(gateways_gateway_18_io_plic_valid),
    .io_plic_ready(gateways_gateway_18_io_plic_ready),
    .io_plic_complete(gateways_gateway_18_io_plic_complete)
  );
  LevelGateway gateways_gateway_19 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_19_clock),
    .reset(gateways_gateway_19_reset),
    .io_interrupt(gateways_gateway_19_io_interrupt),
    .io_plic_valid(gateways_gateway_19_io_plic_valid),
    .io_plic_ready(gateways_gateway_19_io_plic_ready),
    .io_plic_complete(gateways_gateway_19_io_plic_complete)
  );
  LevelGateway gateways_gateway_20 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_20_clock),
    .reset(gateways_gateway_20_reset),
    .io_interrupt(gateways_gateway_20_io_interrupt),
    .io_plic_valid(gateways_gateway_20_io_plic_valid),
    .io_plic_ready(gateways_gateway_20_io_plic_ready),
    .io_plic_complete(gateways_gateway_20_io_plic_complete)
  );
  LevelGateway gateways_gateway_21 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_21_clock),
    .reset(gateways_gateway_21_reset),
    .io_interrupt(gateways_gateway_21_io_interrupt),
    .io_plic_valid(gateways_gateway_21_io_plic_valid),
    .io_plic_ready(gateways_gateway_21_io_plic_ready),
    .io_plic_complete(gateways_gateway_21_io_plic_complete)
  );
  LevelGateway gateways_gateway_22 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_22_clock),
    .reset(gateways_gateway_22_reset),
    .io_interrupt(gateways_gateway_22_io_interrupt),
    .io_plic_valid(gateways_gateway_22_io_plic_valid),
    .io_plic_ready(gateways_gateway_22_io_plic_ready),
    .io_plic_complete(gateways_gateway_22_io_plic_complete)
  );
  LevelGateway gateways_gateway_23 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_23_clock),
    .reset(gateways_gateway_23_reset),
    .io_interrupt(gateways_gateway_23_io_interrupt),
    .io_plic_valid(gateways_gateway_23_io_plic_valid),
    .io_plic_ready(gateways_gateway_23_io_plic_ready),
    .io_plic_complete(gateways_gateway_23_io_plic_complete)
  );
  LevelGateway gateways_gateway_24 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_24_clock),
    .reset(gateways_gateway_24_reset),
    .io_interrupt(gateways_gateway_24_io_interrupt),
    .io_plic_valid(gateways_gateway_24_io_plic_valid),
    .io_plic_ready(gateways_gateway_24_io_plic_ready),
    .io_plic_complete(gateways_gateway_24_io_plic_complete)
  );
  LevelGateway gateways_gateway_25 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_25_clock),
    .reset(gateways_gateway_25_reset),
    .io_interrupt(gateways_gateway_25_io_interrupt),
    .io_plic_valid(gateways_gateway_25_io_plic_valid),
    .io_plic_ready(gateways_gateway_25_io_plic_ready),
    .io_plic_complete(gateways_gateway_25_io_plic_complete)
  );
  LevelGateway gateways_gateway_26 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_26_clock),
    .reset(gateways_gateway_26_reset),
    .io_interrupt(gateways_gateway_26_io_interrupt),
    .io_plic_valid(gateways_gateway_26_io_plic_valid),
    .io_plic_ready(gateways_gateway_26_io_plic_ready),
    .io_plic_complete(gateways_gateway_26_io_plic_complete)
  );
  LevelGateway gateways_gateway_27 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_27_clock),
    .reset(gateways_gateway_27_reset),
    .io_interrupt(gateways_gateway_27_io_interrupt),
    .io_plic_valid(gateways_gateway_27_io_plic_valid),
    .io_plic_ready(gateways_gateway_27_io_plic_ready),
    .io_plic_complete(gateways_gateway_27_io_plic_complete)
  );
  LevelGateway gateways_gateway_28 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_28_clock),
    .reset(gateways_gateway_28_reset),
    .io_interrupt(gateways_gateway_28_io_interrupt),
    .io_plic_valid(gateways_gateway_28_io_plic_valid),
    .io_plic_ready(gateways_gateway_28_io_plic_ready),
    .io_plic_complete(gateways_gateway_28_io_plic_complete)
  );
  LevelGateway gateways_gateway_29 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_29_clock),
    .reset(gateways_gateway_29_reset),
    .io_interrupt(gateways_gateway_29_io_interrupt),
    .io_plic_valid(gateways_gateway_29_io_plic_valid),
    .io_plic_ready(gateways_gateway_29_io_plic_ready),
    .io_plic_complete(gateways_gateway_29_io_plic_complete)
  );
  LevelGateway gateways_gateway_30 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_30_clock),
    .reset(gateways_gateway_30_reset),
    .io_interrupt(gateways_gateway_30_io_interrupt),
    .io_plic_valid(gateways_gateway_30_io_plic_valid),
    .io_plic_ready(gateways_gateway_30_io_plic_ready),
    .io_plic_complete(gateways_gateway_30_io_plic_complete)
  );
  LevelGateway gateways_gateway_31 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_31_clock),
    .reset(gateways_gateway_31_reset),
    .io_interrupt(gateways_gateway_31_io_interrupt),
    .io_plic_valid(gateways_gateway_31_io_plic_valid),
    .io_plic_ready(gateways_gateway_31_io_plic_ready),
    .io_plic_complete(gateways_gateway_31_io_plic_complete)
  );
  LevelGateway gateways_gateway_32 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_32_clock),
    .reset(gateways_gateway_32_reset),
    .io_interrupt(gateways_gateway_32_io_interrupt),
    .io_plic_valid(gateways_gateway_32_io_plic_valid),
    .io_plic_ready(gateways_gateway_32_io_plic_ready),
    .io_plic_complete(gateways_gateway_32_io_plic_complete)
  );
  LevelGateway gateways_gateway_33 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_33_clock),
    .reset(gateways_gateway_33_reset),
    .io_interrupt(gateways_gateway_33_io_interrupt),
    .io_plic_valid(gateways_gateway_33_io_plic_valid),
    .io_plic_ready(gateways_gateway_33_io_plic_ready),
    .io_plic_complete(gateways_gateway_33_io_plic_complete)
  );
  LevelGateway gateways_gateway_34 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_34_clock),
    .reset(gateways_gateway_34_reset),
    .io_interrupt(gateways_gateway_34_io_interrupt),
    .io_plic_valid(gateways_gateway_34_io_plic_valid),
    .io_plic_ready(gateways_gateway_34_io_plic_ready),
    .io_plic_complete(gateways_gateway_34_io_plic_complete)
  );
  LevelGateway gateways_gateway_35 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_35_clock),
    .reset(gateways_gateway_35_reset),
    .io_interrupt(gateways_gateway_35_io_interrupt),
    .io_plic_valid(gateways_gateway_35_io_plic_valid),
    .io_plic_ready(gateways_gateway_35_io_plic_ready),
    .io_plic_complete(gateways_gateway_35_io_plic_complete)
  );
  LevelGateway gateways_gateway_36 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_36_clock),
    .reset(gateways_gateway_36_reset),
    .io_interrupt(gateways_gateway_36_io_interrupt),
    .io_plic_valid(gateways_gateway_36_io_plic_valid),
    .io_plic_ready(gateways_gateway_36_io_plic_ready),
    .io_plic_complete(gateways_gateway_36_io_plic_complete)
  );
  LevelGateway gateways_gateway_37 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_37_clock),
    .reset(gateways_gateway_37_reset),
    .io_interrupt(gateways_gateway_37_io_interrupt),
    .io_plic_valid(gateways_gateway_37_io_plic_valid),
    .io_plic_ready(gateways_gateway_37_io_plic_ready),
    .io_plic_complete(gateways_gateway_37_io_plic_complete)
  );
  LevelGateway gateways_gateway_38 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_38_clock),
    .reset(gateways_gateway_38_reset),
    .io_interrupt(gateways_gateway_38_io_interrupt),
    .io_plic_valid(gateways_gateway_38_io_plic_valid),
    .io_plic_ready(gateways_gateway_38_io_plic_ready),
    .io_plic_complete(gateways_gateway_38_io_plic_complete)
  );
  LevelGateway gateways_gateway_39 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_39_clock),
    .reset(gateways_gateway_39_reset),
    .io_interrupt(gateways_gateway_39_io_interrupt),
    .io_plic_valid(gateways_gateway_39_io_plic_valid),
    .io_plic_ready(gateways_gateway_39_io_plic_ready),
    .io_plic_complete(gateways_gateway_39_io_plic_complete)
  );
  LevelGateway gateways_gateway_40 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_40_clock),
    .reset(gateways_gateway_40_reset),
    .io_interrupt(gateways_gateway_40_io_interrupt),
    .io_plic_valid(gateways_gateway_40_io_plic_valid),
    .io_plic_ready(gateways_gateway_40_io_plic_ready),
    .io_plic_complete(gateways_gateway_40_io_plic_complete)
  );
  LevelGateway gateways_gateway_41 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_41_clock),
    .reset(gateways_gateway_41_reset),
    .io_interrupt(gateways_gateway_41_io_interrupt),
    .io_plic_valid(gateways_gateway_41_io_plic_valid),
    .io_plic_ready(gateways_gateway_41_io_plic_ready),
    .io_plic_complete(gateways_gateway_41_io_plic_complete)
  );
  LevelGateway gateways_gateway_42 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_42_clock),
    .reset(gateways_gateway_42_reset),
    .io_interrupt(gateways_gateway_42_io_interrupt),
    .io_plic_valid(gateways_gateway_42_io_plic_valid),
    .io_plic_ready(gateways_gateway_42_io_plic_ready),
    .io_plic_complete(gateways_gateway_42_io_plic_complete)
  );
  LevelGateway gateways_gateway_43 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_43_clock),
    .reset(gateways_gateway_43_reset),
    .io_interrupt(gateways_gateway_43_io_interrupt),
    .io_plic_valid(gateways_gateway_43_io_plic_valid),
    .io_plic_ready(gateways_gateway_43_io_plic_ready),
    .io_plic_complete(gateways_gateway_43_io_plic_complete)
  );
  LevelGateway gateways_gateway_44 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_44_clock),
    .reset(gateways_gateway_44_reset),
    .io_interrupt(gateways_gateway_44_io_interrupt),
    .io_plic_valid(gateways_gateway_44_io_plic_valid),
    .io_plic_ready(gateways_gateway_44_io_plic_ready),
    .io_plic_complete(gateways_gateway_44_io_plic_complete)
  );
  LevelGateway gateways_gateway_45 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_45_clock),
    .reset(gateways_gateway_45_reset),
    .io_interrupt(gateways_gateway_45_io_interrupt),
    .io_plic_valid(gateways_gateway_45_io_plic_valid),
    .io_plic_ready(gateways_gateway_45_io_plic_ready),
    .io_plic_complete(gateways_gateway_45_io_plic_complete)
  );
  LevelGateway gateways_gateway_46 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_46_clock),
    .reset(gateways_gateway_46_reset),
    .io_interrupt(gateways_gateway_46_io_interrupt),
    .io_plic_valid(gateways_gateway_46_io_plic_valid),
    .io_plic_ready(gateways_gateway_46_io_plic_ready),
    .io_plic_complete(gateways_gateway_46_io_plic_complete)
  );
  LevelGateway gateways_gateway_47 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_47_clock),
    .reset(gateways_gateway_47_reset),
    .io_interrupt(gateways_gateway_47_io_interrupt),
    .io_plic_valid(gateways_gateway_47_io_plic_valid),
    .io_plic_ready(gateways_gateway_47_io_plic_ready),
    .io_plic_complete(gateways_gateway_47_io_plic_complete)
  );
  LevelGateway gateways_gateway_48 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_48_clock),
    .reset(gateways_gateway_48_reset),
    .io_interrupt(gateways_gateway_48_io_interrupt),
    .io_plic_valid(gateways_gateway_48_io_plic_valid),
    .io_plic_ready(gateways_gateway_48_io_plic_ready),
    .io_plic_complete(gateways_gateway_48_io_plic_complete)
  );
  LevelGateway gateways_gateway_49 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_49_clock),
    .reset(gateways_gateway_49_reset),
    .io_interrupt(gateways_gateway_49_io_interrupt),
    .io_plic_valid(gateways_gateway_49_io_plic_valid),
    .io_plic_ready(gateways_gateway_49_io_plic_ready),
    .io_plic_complete(gateways_gateway_49_io_plic_complete)
  );
  LevelGateway gateways_gateway_50 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_50_clock),
    .reset(gateways_gateway_50_reset),
    .io_interrupt(gateways_gateway_50_io_interrupt),
    .io_plic_valid(gateways_gateway_50_io_plic_valid),
    .io_plic_ready(gateways_gateway_50_io_plic_ready),
    .io_plic_complete(gateways_gateway_50_io_plic_complete)
  );
  LevelGateway gateways_gateway_51 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_51_clock),
    .reset(gateways_gateway_51_reset),
    .io_interrupt(gateways_gateway_51_io_interrupt),
    .io_plic_valid(gateways_gateway_51_io_plic_valid),
    .io_plic_ready(gateways_gateway_51_io_plic_ready),
    .io_plic_complete(gateways_gateway_51_io_plic_complete)
  );
  LevelGateway gateways_gateway_52 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_52_clock),
    .reset(gateways_gateway_52_reset),
    .io_interrupt(gateways_gateway_52_io_interrupt),
    .io_plic_valid(gateways_gateway_52_io_plic_valid),
    .io_plic_ready(gateways_gateway_52_io_plic_ready),
    .io_plic_complete(gateways_gateway_52_io_plic_complete)
  );
  LevelGateway gateways_gateway_53 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_53_clock),
    .reset(gateways_gateway_53_reset),
    .io_interrupt(gateways_gateway_53_io_interrupt),
    .io_plic_valid(gateways_gateway_53_io_plic_valid),
    .io_plic_ready(gateways_gateway_53_io_plic_ready),
    .io_plic_complete(gateways_gateway_53_io_plic_complete)
  );
  LevelGateway gateways_gateway_54 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_54_clock),
    .reset(gateways_gateway_54_reset),
    .io_interrupt(gateways_gateway_54_io_interrupt),
    .io_plic_valid(gateways_gateway_54_io_plic_valid),
    .io_plic_ready(gateways_gateway_54_io_plic_ready),
    .io_plic_complete(gateways_gateway_54_io_plic_complete)
  );
  LevelGateway gateways_gateway_55 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_55_clock),
    .reset(gateways_gateway_55_reset),
    .io_interrupt(gateways_gateway_55_io_interrupt),
    .io_plic_valid(gateways_gateway_55_io_plic_valid),
    .io_plic_ready(gateways_gateway_55_io_plic_ready),
    .io_plic_complete(gateways_gateway_55_io_plic_complete)
  );
  LevelGateway gateways_gateway_56 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_56_clock),
    .reset(gateways_gateway_56_reset),
    .io_interrupt(gateways_gateway_56_io_interrupt),
    .io_plic_valid(gateways_gateway_56_io_plic_valid),
    .io_plic_ready(gateways_gateway_56_io_plic_ready),
    .io_plic_complete(gateways_gateway_56_io_plic_complete)
  );
  LevelGateway gateways_gateway_57 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_57_clock),
    .reset(gateways_gateway_57_reset),
    .io_interrupt(gateways_gateway_57_io_interrupt),
    .io_plic_valid(gateways_gateway_57_io_plic_valid),
    .io_plic_ready(gateways_gateway_57_io_plic_ready),
    .io_plic_complete(gateways_gateway_57_io_plic_complete)
  );
  LevelGateway gateways_gateway_58 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_58_clock),
    .reset(gateways_gateway_58_reset),
    .io_interrupt(gateways_gateway_58_io_interrupt),
    .io_plic_valid(gateways_gateway_58_io_plic_valid),
    .io_plic_ready(gateways_gateway_58_io_plic_ready),
    .io_plic_complete(gateways_gateway_58_io_plic_complete)
  );
  LevelGateway gateways_gateway_59 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_59_clock),
    .reset(gateways_gateway_59_reset),
    .io_interrupt(gateways_gateway_59_io_interrupt),
    .io_plic_valid(gateways_gateway_59_io_plic_valid),
    .io_plic_ready(gateways_gateway_59_io_plic_ready),
    .io_plic_complete(gateways_gateway_59_io_plic_complete)
  );
  LevelGateway gateways_gateway_60 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_60_clock),
    .reset(gateways_gateway_60_reset),
    .io_interrupt(gateways_gateway_60_io_interrupt),
    .io_plic_valid(gateways_gateway_60_io_plic_valid),
    .io_plic_ready(gateways_gateway_60_io_plic_ready),
    .io_plic_complete(gateways_gateway_60_io_plic_complete)
  );
  LevelGateway gateways_gateway_61 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_61_clock),
    .reset(gateways_gateway_61_reset),
    .io_interrupt(gateways_gateway_61_io_interrupt),
    .io_plic_valid(gateways_gateway_61_io_plic_valid),
    .io_plic_ready(gateways_gateway_61_io_plic_ready),
    .io_plic_complete(gateways_gateway_61_io_plic_complete)
  );
  LevelGateway gateways_gateway_62 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_62_clock),
    .reset(gateways_gateway_62_reset),
    .io_interrupt(gateways_gateway_62_io_interrupt),
    .io_plic_valid(gateways_gateway_62_io_plic_valid),
    .io_plic_ready(gateways_gateway_62_io_plic_ready),
    .io_plic_complete(gateways_gateway_62_io_plic_complete)
  );
  LevelGateway gateways_gateway_63 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_63_clock),
    .reset(gateways_gateway_63_reset),
    .io_interrupt(gateways_gateway_63_io_interrupt),
    .io_plic_valid(gateways_gateway_63_io_plic_valid),
    .io_plic_ready(gateways_gateway_63_io_plic_ready),
    .io_plic_complete(gateways_gateway_63_io_plic_complete)
  );
  LevelGateway gateways_gateway_64 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_64_clock),
    .reset(gateways_gateway_64_reset),
    .io_interrupt(gateways_gateway_64_io_interrupt),
    .io_plic_valid(gateways_gateway_64_io_plic_valid),
    .io_plic_ready(gateways_gateway_64_io_plic_ready),
    .io_plic_complete(gateways_gateway_64_io_plic_complete)
  );
  PLICFanIn fanin ( // @[Plic.scala 183:25]
    .io_prio_0(fanin_io_prio_0),
    .io_prio_1(fanin_io_prio_1),
    .io_prio_2(fanin_io_prio_2),
    .io_prio_3(fanin_io_prio_3),
    .io_prio_4(fanin_io_prio_4),
    .io_prio_5(fanin_io_prio_5),
    .io_prio_6(fanin_io_prio_6),
    .io_prio_7(fanin_io_prio_7),
    .io_prio_8(fanin_io_prio_8),
    .io_prio_9(fanin_io_prio_9),
    .io_prio_10(fanin_io_prio_10),
    .io_prio_11(fanin_io_prio_11),
    .io_prio_12(fanin_io_prio_12),
    .io_prio_13(fanin_io_prio_13),
    .io_prio_14(fanin_io_prio_14),
    .io_prio_15(fanin_io_prio_15),
    .io_prio_16(fanin_io_prio_16),
    .io_prio_17(fanin_io_prio_17),
    .io_prio_18(fanin_io_prio_18),
    .io_prio_19(fanin_io_prio_19),
    .io_prio_20(fanin_io_prio_20),
    .io_prio_21(fanin_io_prio_21),
    .io_prio_22(fanin_io_prio_22),
    .io_prio_23(fanin_io_prio_23),
    .io_prio_24(fanin_io_prio_24),
    .io_prio_25(fanin_io_prio_25),
    .io_prio_26(fanin_io_prio_26),
    .io_prio_27(fanin_io_prio_27),
    .io_prio_28(fanin_io_prio_28),
    .io_prio_29(fanin_io_prio_29),
    .io_prio_30(fanin_io_prio_30),
    .io_prio_31(fanin_io_prio_31),
    .io_prio_32(fanin_io_prio_32),
    .io_prio_33(fanin_io_prio_33),
    .io_prio_34(fanin_io_prio_34),
    .io_prio_35(fanin_io_prio_35),
    .io_prio_36(fanin_io_prio_36),
    .io_prio_37(fanin_io_prio_37),
    .io_prio_38(fanin_io_prio_38),
    .io_prio_39(fanin_io_prio_39),
    .io_prio_40(fanin_io_prio_40),
    .io_prio_41(fanin_io_prio_41),
    .io_prio_42(fanin_io_prio_42),
    .io_prio_43(fanin_io_prio_43),
    .io_prio_44(fanin_io_prio_44),
    .io_prio_45(fanin_io_prio_45),
    .io_prio_46(fanin_io_prio_46),
    .io_prio_47(fanin_io_prio_47),
    .io_prio_48(fanin_io_prio_48),
    .io_prio_49(fanin_io_prio_49),
    .io_prio_50(fanin_io_prio_50),
    .io_prio_51(fanin_io_prio_51),
    .io_prio_52(fanin_io_prio_52),
    .io_prio_53(fanin_io_prio_53),
    .io_prio_54(fanin_io_prio_54),
    .io_prio_55(fanin_io_prio_55),
    .io_prio_56(fanin_io_prio_56),
    .io_prio_57(fanin_io_prio_57),
    .io_prio_58(fanin_io_prio_58),
    .io_prio_59(fanin_io_prio_59),
    .io_prio_60(fanin_io_prio_60),
    .io_prio_61(fanin_io_prio_61),
    .io_prio_62(fanin_io_prio_62),
    .io_prio_63(fanin_io_prio_63),
    .io_prio_64(fanin_io_prio_64),
    .io_ip(fanin_io_ip),
    .io_dev(fanin_io_dev),
    .io_max(fanin_io_max)
  );
  PLICFanIn fanin_1 ( // @[Plic.scala 183:25]
    .io_prio_0(fanin_1_io_prio_0),
    .io_prio_1(fanin_1_io_prio_1),
    .io_prio_2(fanin_1_io_prio_2),
    .io_prio_3(fanin_1_io_prio_3),
    .io_prio_4(fanin_1_io_prio_4),
    .io_prio_5(fanin_1_io_prio_5),
    .io_prio_6(fanin_1_io_prio_6),
    .io_prio_7(fanin_1_io_prio_7),
    .io_prio_8(fanin_1_io_prio_8),
    .io_prio_9(fanin_1_io_prio_9),
    .io_prio_10(fanin_1_io_prio_10),
    .io_prio_11(fanin_1_io_prio_11),
    .io_prio_12(fanin_1_io_prio_12),
    .io_prio_13(fanin_1_io_prio_13),
    .io_prio_14(fanin_1_io_prio_14),
    .io_prio_15(fanin_1_io_prio_15),
    .io_prio_16(fanin_1_io_prio_16),
    .io_prio_17(fanin_1_io_prio_17),
    .io_prio_18(fanin_1_io_prio_18),
    .io_prio_19(fanin_1_io_prio_19),
    .io_prio_20(fanin_1_io_prio_20),
    .io_prio_21(fanin_1_io_prio_21),
    .io_prio_22(fanin_1_io_prio_22),
    .io_prio_23(fanin_1_io_prio_23),
    .io_prio_24(fanin_1_io_prio_24),
    .io_prio_25(fanin_1_io_prio_25),
    .io_prio_26(fanin_1_io_prio_26),
    .io_prio_27(fanin_1_io_prio_27),
    .io_prio_28(fanin_1_io_prio_28),
    .io_prio_29(fanin_1_io_prio_29),
    .io_prio_30(fanin_1_io_prio_30),
    .io_prio_31(fanin_1_io_prio_31),
    .io_prio_32(fanin_1_io_prio_32),
    .io_prio_33(fanin_1_io_prio_33),
    .io_prio_34(fanin_1_io_prio_34),
    .io_prio_35(fanin_1_io_prio_35),
    .io_prio_36(fanin_1_io_prio_36),
    .io_prio_37(fanin_1_io_prio_37),
    .io_prio_38(fanin_1_io_prio_38),
    .io_prio_39(fanin_1_io_prio_39),
    .io_prio_40(fanin_1_io_prio_40),
    .io_prio_41(fanin_1_io_prio_41),
    .io_prio_42(fanin_1_io_prio_42),
    .io_prio_43(fanin_1_io_prio_43),
    .io_prio_44(fanin_1_io_prio_44),
    .io_prio_45(fanin_1_io_prio_45),
    .io_prio_46(fanin_1_io_prio_46),
    .io_prio_47(fanin_1_io_prio_47),
    .io_prio_48(fanin_1_io_prio_48),
    .io_prio_49(fanin_1_io_prio_49),
    .io_prio_50(fanin_1_io_prio_50),
    .io_prio_51(fanin_1_io_prio_51),
    .io_prio_52(fanin_1_io_prio_52),
    .io_prio_53(fanin_1_io_prio_53),
    .io_prio_54(fanin_1_io_prio_54),
    .io_prio_55(fanin_1_io_prio_55),
    .io_prio_56(fanin_1_io_prio_56),
    .io_prio_57(fanin_1_io_prio_57),
    .io_prio_58(fanin_1_io_prio_58),
    .io_prio_59(fanin_1_io_prio_59),
    .io_prio_60(fanin_1_io_prio_60),
    .io_prio_61(fanin_1_io_prio_61),
    .io_prio_62(fanin_1_io_prio_62),
    .io_prio_63(fanin_1_io_prio_63),
    .io_prio_64(fanin_1_io_prio_64),
    .io_ip(fanin_1_io_ip),
    .io_dev(fanin_1_io_dev),
    .io_max(fanin_1_io_max)
  );
  Queue_128 out_back ( // @[Decoupled.scala 361:21]
    .clock(out_back_clock),
    .reset(out_back_reset),
    .io_enq_ready(out_back_io_enq_ready),
    .io_enq_valid(out_back_io_enq_valid),
    .io_enq_bits_read(out_back_io_enq_bits_read),
    .io_enq_bits_index(out_back_io_enq_bits_index),
    .io_enq_bits_data(out_back_io_enq_bits_data),
    .io_enq_bits_mask(out_back_io_enq_bits_mask),
    .io_enq_bits_extra_tlrr_extra_source(out_back_io_enq_bits_extra_tlrr_extra_source),
    .io_enq_bits_extra_tlrr_extra_size(out_back_io_enq_bits_extra_tlrr_extra_size),
    .io_deq_ready(out_back_io_deq_ready),
    .io_deq_valid(out_back_io_deq_valid),
    .io_deq_bits_read(out_back_io_deq_bits_read),
    .io_deq_bits_index(out_back_io_deq_bits_index),
    .io_deq_bits_data(out_back_io_deq_bits_data),
    .io_deq_bits_mask(out_back_io_deq_bits_mask),
    .io_deq_bits_extra_tlrr_extra_source(out_back_io_deq_bits_extra_tlrr_extra_source),
    .io_deq_bits_extra_tlrr_extra_size(out_back_io_deq_bits_extra_tlrr_extra_size)
  );
  assign auto_int_out_1_0 = bundleOut_1_0_REG > threshold_1; // @[Plic.scala 187:75]
  assign auto_int_out_0_0 = bundleOut_0_0_REG > threshold_0; // @[Plic.scala 187:75]
  assign auto_in_a_ready = out_back_io_enq_ready; // @[Decoupled.scala 365:17 RegisterRouter.scala 82:24]
  assign auto_in_d_valid = out_back_io_deq_valid; // @[RegisterRouter.scala 82:24]
  assign auto_in_d_bits_opcode = {{2'd0}, out_bits_read}; // @[Nodes.scala 1210:84 RegisterRouter.scala 97:19]
  assign auto_in_d_bits_size = out_back_io_deq_bits_extra_tlrr_extra_size; // @[RegisterRouter.scala 82:{24,24}]
  assign auto_in_d_bits_source = out_back_io_deq_bits_extra_tlrr_extra_source; // @[RegisterRouter.scala 82:{24,24}]
  assign auto_in_d_bits_data = out_out_bits_data_out ? out_out_bits_data_out_1 : 64'h0; // @[RegisterRouter.scala 82:24]
  assign gateways_gateway_clock = clock;
  assign gateways_gateway_reset = reset;
  assign gateways_gateway_io_interrupt = auto_int_in_0_0; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_io_plic_ready = ~pending_0; // @[Plic.scala 249:18]
  assign gateways_gateway_io_plic_complete = completedDevs[1]; // @[Plic.scala 264:33]
  assign gateways_gateway_1_clock = clock;
  assign gateways_gateway_1_reset = reset;
  assign gateways_gateway_1_io_interrupt = auto_int_in_0_1; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_1_io_plic_ready = ~pending_1; // @[Plic.scala 249:18]
  assign gateways_gateway_1_io_plic_complete = completedDevs[2]; // @[Plic.scala 264:33]
  assign gateways_gateway_2_clock = clock;
  assign gateways_gateway_2_reset = reset;
  assign gateways_gateway_2_io_interrupt = auto_int_in_0_2; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_2_io_plic_ready = ~pending_2; // @[Plic.scala 249:18]
  assign gateways_gateway_2_io_plic_complete = completedDevs[3]; // @[Plic.scala 264:33]
  assign gateways_gateway_3_clock = clock;
  assign gateways_gateway_3_reset = reset;
  assign gateways_gateway_3_io_interrupt = auto_int_in_0_3; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_3_io_plic_ready = ~pending_3; // @[Plic.scala 249:18]
  assign gateways_gateway_3_io_plic_complete = completedDevs[4]; // @[Plic.scala 264:33]
  assign gateways_gateway_4_clock = clock;
  assign gateways_gateway_4_reset = reset;
  assign gateways_gateway_4_io_interrupt = auto_int_in_0_4; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_4_io_plic_ready = ~pending_4; // @[Plic.scala 249:18]
  assign gateways_gateway_4_io_plic_complete = completedDevs[5]; // @[Plic.scala 264:33]
  assign gateways_gateway_5_clock = clock;
  assign gateways_gateway_5_reset = reset;
  assign gateways_gateway_5_io_interrupt = auto_int_in_0_5; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_5_io_plic_ready = ~pending_5; // @[Plic.scala 249:18]
  assign gateways_gateway_5_io_plic_complete = completedDevs[6]; // @[Plic.scala 264:33]
  assign gateways_gateway_6_clock = clock;
  assign gateways_gateway_6_reset = reset;
  assign gateways_gateway_6_io_interrupt = auto_int_in_0_6; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_6_io_plic_ready = ~pending_6; // @[Plic.scala 249:18]
  assign gateways_gateway_6_io_plic_complete = completedDevs[7]; // @[Plic.scala 264:33]
  assign gateways_gateway_7_clock = clock;
  assign gateways_gateway_7_reset = reset;
  assign gateways_gateway_7_io_interrupt = auto_int_in_0_7; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_7_io_plic_ready = ~pending_7; // @[Plic.scala 249:18]
  assign gateways_gateway_7_io_plic_complete = completedDevs[8]; // @[Plic.scala 264:33]
  assign gateways_gateway_8_clock = clock;
  assign gateways_gateway_8_reset = reset;
  assign gateways_gateway_8_io_interrupt = auto_int_in_0_8; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_8_io_plic_ready = ~pending_8; // @[Plic.scala 249:18]
  assign gateways_gateway_8_io_plic_complete = completedDevs[9]; // @[Plic.scala 264:33]
  assign gateways_gateway_9_clock = clock;
  assign gateways_gateway_9_reset = reset;
  assign gateways_gateway_9_io_interrupt = auto_int_in_0_9; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_9_io_plic_ready = ~pending_9; // @[Plic.scala 249:18]
  assign gateways_gateway_9_io_plic_complete = completedDevs[10]; // @[Plic.scala 264:33]
  assign gateways_gateway_10_clock = clock;
  assign gateways_gateway_10_reset = reset;
  assign gateways_gateway_10_io_interrupt = auto_int_in_0_10; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_10_io_plic_ready = ~pending_10; // @[Plic.scala 249:18]
  assign gateways_gateway_10_io_plic_complete = completedDevs[11]; // @[Plic.scala 264:33]
  assign gateways_gateway_11_clock = clock;
  assign gateways_gateway_11_reset = reset;
  assign gateways_gateway_11_io_interrupt = auto_int_in_0_11; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_11_io_plic_ready = ~pending_11; // @[Plic.scala 249:18]
  assign gateways_gateway_11_io_plic_complete = completedDevs[12]; // @[Plic.scala 264:33]
  assign gateways_gateway_12_clock = clock;
  assign gateways_gateway_12_reset = reset;
  assign gateways_gateway_12_io_interrupt = auto_int_in_0_12; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_12_io_plic_ready = ~pending_12; // @[Plic.scala 249:18]
  assign gateways_gateway_12_io_plic_complete = completedDevs[13]; // @[Plic.scala 264:33]
  assign gateways_gateway_13_clock = clock;
  assign gateways_gateway_13_reset = reset;
  assign gateways_gateway_13_io_interrupt = auto_int_in_0_13; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_13_io_plic_ready = ~pending_13; // @[Plic.scala 249:18]
  assign gateways_gateway_13_io_plic_complete = completedDevs[14]; // @[Plic.scala 264:33]
  assign gateways_gateway_14_clock = clock;
  assign gateways_gateway_14_reset = reset;
  assign gateways_gateway_14_io_interrupt = auto_int_in_0_14; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_14_io_plic_ready = ~pending_14; // @[Plic.scala 249:18]
  assign gateways_gateway_14_io_plic_complete = completedDevs[15]; // @[Plic.scala 264:33]
  assign gateways_gateway_15_clock = clock;
  assign gateways_gateway_15_reset = reset;
  assign gateways_gateway_15_io_interrupt = auto_int_in_0_15; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_15_io_plic_ready = ~pending_15; // @[Plic.scala 249:18]
  assign gateways_gateway_15_io_plic_complete = completedDevs[16]; // @[Plic.scala 264:33]
  assign gateways_gateway_16_clock = clock;
  assign gateways_gateway_16_reset = reset;
  assign gateways_gateway_16_io_interrupt = auto_int_in_0_16; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_16_io_plic_ready = ~pending_16; // @[Plic.scala 249:18]
  assign gateways_gateway_16_io_plic_complete = completedDevs[17]; // @[Plic.scala 264:33]
  assign gateways_gateway_17_clock = clock;
  assign gateways_gateway_17_reset = reset;
  assign gateways_gateway_17_io_interrupt = auto_int_in_0_17; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_17_io_plic_ready = ~pending_17; // @[Plic.scala 249:18]
  assign gateways_gateway_17_io_plic_complete = completedDevs[18]; // @[Plic.scala 264:33]
  assign gateways_gateway_18_clock = clock;
  assign gateways_gateway_18_reset = reset;
  assign gateways_gateway_18_io_interrupt = auto_int_in_0_18; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_18_io_plic_ready = ~pending_18; // @[Plic.scala 249:18]
  assign gateways_gateway_18_io_plic_complete = completedDevs[19]; // @[Plic.scala 264:33]
  assign gateways_gateway_19_clock = clock;
  assign gateways_gateway_19_reset = reset;
  assign gateways_gateway_19_io_interrupt = auto_int_in_0_19; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_19_io_plic_ready = ~pending_19; // @[Plic.scala 249:18]
  assign gateways_gateway_19_io_plic_complete = completedDevs[20]; // @[Plic.scala 264:33]
  assign gateways_gateway_20_clock = clock;
  assign gateways_gateway_20_reset = reset;
  assign gateways_gateway_20_io_interrupt = auto_int_in_0_20; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_20_io_plic_ready = ~pending_20; // @[Plic.scala 249:18]
  assign gateways_gateway_20_io_plic_complete = completedDevs[21]; // @[Plic.scala 264:33]
  assign gateways_gateway_21_clock = clock;
  assign gateways_gateway_21_reset = reset;
  assign gateways_gateway_21_io_interrupt = auto_int_in_0_21; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_21_io_plic_ready = ~pending_21; // @[Plic.scala 249:18]
  assign gateways_gateway_21_io_plic_complete = completedDevs[22]; // @[Plic.scala 264:33]
  assign gateways_gateway_22_clock = clock;
  assign gateways_gateway_22_reset = reset;
  assign gateways_gateway_22_io_interrupt = auto_int_in_0_22; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_22_io_plic_ready = ~pending_22; // @[Plic.scala 249:18]
  assign gateways_gateway_22_io_plic_complete = completedDevs[23]; // @[Plic.scala 264:33]
  assign gateways_gateway_23_clock = clock;
  assign gateways_gateway_23_reset = reset;
  assign gateways_gateway_23_io_interrupt = auto_int_in_0_23; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_23_io_plic_ready = ~pending_23; // @[Plic.scala 249:18]
  assign gateways_gateway_23_io_plic_complete = completedDevs[24]; // @[Plic.scala 264:33]
  assign gateways_gateway_24_clock = clock;
  assign gateways_gateway_24_reset = reset;
  assign gateways_gateway_24_io_interrupt = auto_int_in_0_24; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_24_io_plic_ready = ~pending_24; // @[Plic.scala 249:18]
  assign gateways_gateway_24_io_plic_complete = completedDevs[25]; // @[Plic.scala 264:33]
  assign gateways_gateway_25_clock = clock;
  assign gateways_gateway_25_reset = reset;
  assign gateways_gateway_25_io_interrupt = auto_int_in_0_25; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_25_io_plic_ready = ~pending_25; // @[Plic.scala 249:18]
  assign gateways_gateway_25_io_plic_complete = completedDevs[26]; // @[Plic.scala 264:33]
  assign gateways_gateway_26_clock = clock;
  assign gateways_gateway_26_reset = reset;
  assign gateways_gateway_26_io_interrupt = auto_int_in_0_26; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_26_io_plic_ready = ~pending_26; // @[Plic.scala 249:18]
  assign gateways_gateway_26_io_plic_complete = completedDevs[27]; // @[Plic.scala 264:33]
  assign gateways_gateway_27_clock = clock;
  assign gateways_gateway_27_reset = reset;
  assign gateways_gateway_27_io_interrupt = auto_int_in_0_27; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_27_io_plic_ready = ~pending_27; // @[Plic.scala 249:18]
  assign gateways_gateway_27_io_plic_complete = completedDevs[28]; // @[Plic.scala 264:33]
  assign gateways_gateway_28_clock = clock;
  assign gateways_gateway_28_reset = reset;
  assign gateways_gateway_28_io_interrupt = auto_int_in_0_28; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_28_io_plic_ready = ~pending_28; // @[Plic.scala 249:18]
  assign gateways_gateway_28_io_plic_complete = completedDevs[29]; // @[Plic.scala 264:33]
  assign gateways_gateway_29_clock = clock;
  assign gateways_gateway_29_reset = reset;
  assign gateways_gateway_29_io_interrupt = auto_int_in_0_29; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_29_io_plic_ready = ~pending_29; // @[Plic.scala 249:18]
  assign gateways_gateway_29_io_plic_complete = completedDevs[30]; // @[Plic.scala 264:33]
  assign gateways_gateway_30_clock = clock;
  assign gateways_gateway_30_reset = reset;
  assign gateways_gateway_30_io_interrupt = auto_int_in_0_30; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_30_io_plic_ready = ~pending_30; // @[Plic.scala 249:18]
  assign gateways_gateway_30_io_plic_complete = completedDevs[31]; // @[Plic.scala 264:33]
  assign gateways_gateway_31_clock = clock;
  assign gateways_gateway_31_reset = reset;
  assign gateways_gateway_31_io_interrupt = auto_int_in_0_31; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_31_io_plic_ready = ~pending_31; // @[Plic.scala 249:18]
  assign gateways_gateway_31_io_plic_complete = completedDevs[32]; // @[Plic.scala 264:33]
  assign gateways_gateway_32_clock = clock;
  assign gateways_gateway_32_reset = reset;
  assign gateways_gateway_32_io_interrupt = auto_int_in_0_32; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_32_io_plic_ready = ~pending_32; // @[Plic.scala 249:18]
  assign gateways_gateway_32_io_plic_complete = completedDevs[33]; // @[Plic.scala 264:33]
  assign gateways_gateway_33_clock = clock;
  assign gateways_gateway_33_reset = reset;
  assign gateways_gateway_33_io_interrupt = auto_int_in_0_33; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_33_io_plic_ready = ~pending_33; // @[Plic.scala 249:18]
  assign gateways_gateway_33_io_plic_complete = completedDevs[34]; // @[Plic.scala 264:33]
  assign gateways_gateway_34_clock = clock;
  assign gateways_gateway_34_reset = reset;
  assign gateways_gateway_34_io_interrupt = auto_int_in_0_34; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_34_io_plic_ready = ~pending_34; // @[Plic.scala 249:18]
  assign gateways_gateway_34_io_plic_complete = completedDevs[35]; // @[Plic.scala 264:33]
  assign gateways_gateway_35_clock = clock;
  assign gateways_gateway_35_reset = reset;
  assign gateways_gateway_35_io_interrupt = auto_int_in_0_35; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_35_io_plic_ready = ~pending_35; // @[Plic.scala 249:18]
  assign gateways_gateway_35_io_plic_complete = completedDevs[36]; // @[Plic.scala 264:33]
  assign gateways_gateway_36_clock = clock;
  assign gateways_gateway_36_reset = reset;
  assign gateways_gateway_36_io_interrupt = auto_int_in_0_36; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_36_io_plic_ready = ~pending_36; // @[Plic.scala 249:18]
  assign gateways_gateway_36_io_plic_complete = completedDevs[37]; // @[Plic.scala 264:33]
  assign gateways_gateway_37_clock = clock;
  assign gateways_gateway_37_reset = reset;
  assign gateways_gateway_37_io_interrupt = auto_int_in_0_37; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_37_io_plic_ready = ~pending_37; // @[Plic.scala 249:18]
  assign gateways_gateway_37_io_plic_complete = completedDevs[38]; // @[Plic.scala 264:33]
  assign gateways_gateway_38_clock = clock;
  assign gateways_gateway_38_reset = reset;
  assign gateways_gateway_38_io_interrupt = auto_int_in_0_38; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_38_io_plic_ready = ~pending_38; // @[Plic.scala 249:18]
  assign gateways_gateway_38_io_plic_complete = completedDevs[39]; // @[Plic.scala 264:33]
  assign gateways_gateway_39_clock = clock;
  assign gateways_gateway_39_reset = reset;
  assign gateways_gateway_39_io_interrupt = auto_int_in_0_39; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_39_io_plic_ready = ~pending_39; // @[Plic.scala 249:18]
  assign gateways_gateway_39_io_plic_complete = completedDevs[40]; // @[Plic.scala 264:33]
  assign gateways_gateway_40_clock = clock;
  assign gateways_gateway_40_reset = reset;
  assign gateways_gateway_40_io_interrupt = auto_int_in_0_40; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_40_io_plic_ready = ~pending_40; // @[Plic.scala 249:18]
  assign gateways_gateway_40_io_plic_complete = completedDevs[41]; // @[Plic.scala 264:33]
  assign gateways_gateway_41_clock = clock;
  assign gateways_gateway_41_reset = reset;
  assign gateways_gateway_41_io_interrupt = auto_int_in_0_41; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_41_io_plic_ready = ~pending_41; // @[Plic.scala 249:18]
  assign gateways_gateway_41_io_plic_complete = completedDevs[42]; // @[Plic.scala 264:33]
  assign gateways_gateway_42_clock = clock;
  assign gateways_gateway_42_reset = reset;
  assign gateways_gateway_42_io_interrupt = auto_int_in_0_42; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_42_io_plic_ready = ~pending_42; // @[Plic.scala 249:18]
  assign gateways_gateway_42_io_plic_complete = completedDevs[43]; // @[Plic.scala 264:33]
  assign gateways_gateway_43_clock = clock;
  assign gateways_gateway_43_reset = reset;
  assign gateways_gateway_43_io_interrupt = auto_int_in_0_43; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_43_io_plic_ready = ~pending_43; // @[Plic.scala 249:18]
  assign gateways_gateway_43_io_plic_complete = completedDevs[44]; // @[Plic.scala 264:33]
  assign gateways_gateway_44_clock = clock;
  assign gateways_gateway_44_reset = reset;
  assign gateways_gateway_44_io_interrupt = auto_int_in_0_44; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_44_io_plic_ready = ~pending_44; // @[Plic.scala 249:18]
  assign gateways_gateway_44_io_plic_complete = completedDevs[45]; // @[Plic.scala 264:33]
  assign gateways_gateway_45_clock = clock;
  assign gateways_gateway_45_reset = reset;
  assign gateways_gateway_45_io_interrupt = auto_int_in_0_45; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_45_io_plic_ready = ~pending_45; // @[Plic.scala 249:18]
  assign gateways_gateway_45_io_plic_complete = completedDevs[46]; // @[Plic.scala 264:33]
  assign gateways_gateway_46_clock = clock;
  assign gateways_gateway_46_reset = reset;
  assign gateways_gateway_46_io_interrupt = auto_int_in_0_46; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_46_io_plic_ready = ~pending_46; // @[Plic.scala 249:18]
  assign gateways_gateway_46_io_plic_complete = completedDevs[47]; // @[Plic.scala 264:33]
  assign gateways_gateway_47_clock = clock;
  assign gateways_gateway_47_reset = reset;
  assign gateways_gateway_47_io_interrupt = auto_int_in_0_47; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_47_io_plic_ready = ~pending_47; // @[Plic.scala 249:18]
  assign gateways_gateway_47_io_plic_complete = completedDevs[48]; // @[Plic.scala 264:33]
  assign gateways_gateway_48_clock = clock;
  assign gateways_gateway_48_reset = reset;
  assign gateways_gateway_48_io_interrupt = auto_int_in_0_48; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_48_io_plic_ready = ~pending_48; // @[Plic.scala 249:18]
  assign gateways_gateway_48_io_plic_complete = completedDevs[49]; // @[Plic.scala 264:33]
  assign gateways_gateway_49_clock = clock;
  assign gateways_gateway_49_reset = reset;
  assign gateways_gateway_49_io_interrupt = auto_int_in_0_49; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_49_io_plic_ready = ~pending_49; // @[Plic.scala 249:18]
  assign gateways_gateway_49_io_plic_complete = completedDevs[50]; // @[Plic.scala 264:33]
  assign gateways_gateway_50_clock = clock;
  assign gateways_gateway_50_reset = reset;
  assign gateways_gateway_50_io_interrupt = auto_int_in_0_50; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_50_io_plic_ready = ~pending_50; // @[Plic.scala 249:18]
  assign gateways_gateway_50_io_plic_complete = completedDevs[51]; // @[Plic.scala 264:33]
  assign gateways_gateway_51_clock = clock;
  assign gateways_gateway_51_reset = reset;
  assign gateways_gateway_51_io_interrupt = auto_int_in_0_51; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_51_io_plic_ready = ~pending_51; // @[Plic.scala 249:18]
  assign gateways_gateway_51_io_plic_complete = completedDevs[52]; // @[Plic.scala 264:33]
  assign gateways_gateway_52_clock = clock;
  assign gateways_gateway_52_reset = reset;
  assign gateways_gateway_52_io_interrupt = auto_int_in_0_52; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_52_io_plic_ready = ~pending_52; // @[Plic.scala 249:18]
  assign gateways_gateway_52_io_plic_complete = completedDevs[53]; // @[Plic.scala 264:33]
  assign gateways_gateway_53_clock = clock;
  assign gateways_gateway_53_reset = reset;
  assign gateways_gateway_53_io_interrupt = auto_int_in_0_53; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_53_io_plic_ready = ~pending_53; // @[Plic.scala 249:18]
  assign gateways_gateway_53_io_plic_complete = completedDevs[54]; // @[Plic.scala 264:33]
  assign gateways_gateway_54_clock = clock;
  assign gateways_gateway_54_reset = reset;
  assign gateways_gateway_54_io_interrupt = auto_int_in_0_54; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_54_io_plic_ready = ~pending_54; // @[Plic.scala 249:18]
  assign gateways_gateway_54_io_plic_complete = completedDevs[55]; // @[Plic.scala 264:33]
  assign gateways_gateway_55_clock = clock;
  assign gateways_gateway_55_reset = reset;
  assign gateways_gateway_55_io_interrupt = auto_int_in_0_55; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_55_io_plic_ready = ~pending_55; // @[Plic.scala 249:18]
  assign gateways_gateway_55_io_plic_complete = completedDevs[56]; // @[Plic.scala 264:33]
  assign gateways_gateway_56_clock = clock;
  assign gateways_gateway_56_reset = reset;
  assign gateways_gateway_56_io_interrupt = auto_int_in_0_56; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_56_io_plic_ready = ~pending_56; // @[Plic.scala 249:18]
  assign gateways_gateway_56_io_plic_complete = completedDevs[57]; // @[Plic.scala 264:33]
  assign gateways_gateway_57_clock = clock;
  assign gateways_gateway_57_reset = reset;
  assign gateways_gateway_57_io_interrupt = auto_int_in_0_57; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_57_io_plic_ready = ~pending_57; // @[Plic.scala 249:18]
  assign gateways_gateway_57_io_plic_complete = completedDevs[58]; // @[Plic.scala 264:33]
  assign gateways_gateway_58_clock = clock;
  assign gateways_gateway_58_reset = reset;
  assign gateways_gateway_58_io_interrupt = auto_int_in_0_58; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_58_io_plic_ready = ~pending_58; // @[Plic.scala 249:18]
  assign gateways_gateway_58_io_plic_complete = completedDevs[59]; // @[Plic.scala 264:33]
  assign gateways_gateway_59_clock = clock;
  assign gateways_gateway_59_reset = reset;
  assign gateways_gateway_59_io_interrupt = auto_int_in_0_59; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_59_io_plic_ready = ~pending_59; // @[Plic.scala 249:18]
  assign gateways_gateway_59_io_plic_complete = completedDevs[60]; // @[Plic.scala 264:33]
  assign gateways_gateway_60_clock = clock;
  assign gateways_gateway_60_reset = reset;
  assign gateways_gateway_60_io_interrupt = auto_int_in_0_60; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_60_io_plic_ready = ~pending_60; // @[Plic.scala 249:18]
  assign gateways_gateway_60_io_plic_complete = completedDevs[61]; // @[Plic.scala 264:33]
  assign gateways_gateway_61_clock = clock;
  assign gateways_gateway_61_reset = reset;
  assign gateways_gateway_61_io_interrupt = auto_int_in_0_61; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_61_io_plic_ready = ~pending_61; // @[Plic.scala 249:18]
  assign gateways_gateway_61_io_plic_complete = completedDevs[62]; // @[Plic.scala 264:33]
  assign gateways_gateway_62_clock = clock;
  assign gateways_gateway_62_reset = reset;
  assign gateways_gateway_62_io_interrupt = auto_int_in_0_62; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_62_io_plic_ready = ~pending_62; // @[Plic.scala 249:18]
  assign gateways_gateway_62_io_plic_complete = completedDevs[63]; // @[Plic.scala 264:33]
  assign gateways_gateway_63_clock = clock;
  assign gateways_gateway_63_reset = reset;
  assign gateways_gateway_63_io_interrupt = auto_int_in_0_63; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_63_io_plic_ready = ~pending_63; // @[Plic.scala 249:18]
  assign gateways_gateway_63_io_plic_complete = completedDevs[64]; // @[Plic.scala 264:33]
  assign gateways_gateway_64_clock = clock;
  assign gateways_gateway_64_reset = reset;
  assign gateways_gateway_64_io_interrupt = auto_int_in_1_0; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign gateways_gateway_64_io_plic_ready = ~pending_64; // @[Plic.scala 249:18]
  assign gateways_gateway_64_io_plic_complete = completedDevs[65]; // @[Plic.scala 264:33]
  assign fanin_io_prio_0 = priority_0; // @[Plic.scala 184:21]
  assign fanin_io_prio_1 = priority_1; // @[Plic.scala 184:21]
  assign fanin_io_prio_2 = priority_2; // @[Plic.scala 184:21]
  assign fanin_io_prio_3 = priority_3; // @[Plic.scala 184:21]
  assign fanin_io_prio_4 = priority_4; // @[Plic.scala 184:21]
  assign fanin_io_prio_5 = priority_5; // @[Plic.scala 184:21]
  assign fanin_io_prio_6 = priority_6; // @[Plic.scala 184:21]
  assign fanin_io_prio_7 = priority_7; // @[Plic.scala 184:21]
  assign fanin_io_prio_8 = priority_8; // @[Plic.scala 184:21]
  assign fanin_io_prio_9 = priority_9; // @[Plic.scala 184:21]
  assign fanin_io_prio_10 = priority_10; // @[Plic.scala 184:21]
  assign fanin_io_prio_11 = priority_11; // @[Plic.scala 184:21]
  assign fanin_io_prio_12 = priority_12; // @[Plic.scala 184:21]
  assign fanin_io_prio_13 = priority_13; // @[Plic.scala 184:21]
  assign fanin_io_prio_14 = priority_14; // @[Plic.scala 184:21]
  assign fanin_io_prio_15 = priority_15; // @[Plic.scala 184:21]
  assign fanin_io_prio_16 = priority_16; // @[Plic.scala 184:21]
  assign fanin_io_prio_17 = priority_17; // @[Plic.scala 184:21]
  assign fanin_io_prio_18 = priority_18; // @[Plic.scala 184:21]
  assign fanin_io_prio_19 = priority_19; // @[Plic.scala 184:21]
  assign fanin_io_prio_20 = priority_20; // @[Plic.scala 184:21]
  assign fanin_io_prio_21 = priority_21; // @[Plic.scala 184:21]
  assign fanin_io_prio_22 = priority_22; // @[Plic.scala 184:21]
  assign fanin_io_prio_23 = priority_23; // @[Plic.scala 184:21]
  assign fanin_io_prio_24 = priority_24; // @[Plic.scala 184:21]
  assign fanin_io_prio_25 = priority_25; // @[Plic.scala 184:21]
  assign fanin_io_prio_26 = priority_26; // @[Plic.scala 184:21]
  assign fanin_io_prio_27 = priority_27; // @[Plic.scala 184:21]
  assign fanin_io_prio_28 = priority_28; // @[Plic.scala 184:21]
  assign fanin_io_prio_29 = priority_29; // @[Plic.scala 184:21]
  assign fanin_io_prio_30 = priority_30; // @[Plic.scala 184:21]
  assign fanin_io_prio_31 = priority_31; // @[Plic.scala 184:21]
  assign fanin_io_prio_32 = priority_32; // @[Plic.scala 184:21]
  assign fanin_io_prio_33 = priority_33; // @[Plic.scala 184:21]
  assign fanin_io_prio_34 = priority_34; // @[Plic.scala 184:21]
  assign fanin_io_prio_35 = priority_35; // @[Plic.scala 184:21]
  assign fanin_io_prio_36 = priority_36; // @[Plic.scala 184:21]
  assign fanin_io_prio_37 = priority_37; // @[Plic.scala 184:21]
  assign fanin_io_prio_38 = priority_38; // @[Plic.scala 184:21]
  assign fanin_io_prio_39 = priority_39; // @[Plic.scala 184:21]
  assign fanin_io_prio_40 = priority_40; // @[Plic.scala 184:21]
  assign fanin_io_prio_41 = priority_41; // @[Plic.scala 184:21]
  assign fanin_io_prio_42 = priority_42; // @[Plic.scala 184:21]
  assign fanin_io_prio_43 = priority_43; // @[Plic.scala 184:21]
  assign fanin_io_prio_44 = priority_44; // @[Plic.scala 184:21]
  assign fanin_io_prio_45 = priority_45; // @[Plic.scala 184:21]
  assign fanin_io_prio_46 = priority_46; // @[Plic.scala 184:21]
  assign fanin_io_prio_47 = priority_47; // @[Plic.scala 184:21]
  assign fanin_io_prio_48 = priority_48; // @[Plic.scala 184:21]
  assign fanin_io_prio_49 = priority_49; // @[Plic.scala 184:21]
  assign fanin_io_prio_50 = priority_50; // @[Plic.scala 184:21]
  assign fanin_io_prio_51 = priority_51; // @[Plic.scala 184:21]
  assign fanin_io_prio_52 = priority_52; // @[Plic.scala 184:21]
  assign fanin_io_prio_53 = priority_53; // @[Plic.scala 184:21]
  assign fanin_io_prio_54 = priority_54; // @[Plic.scala 184:21]
  assign fanin_io_prio_55 = priority_55; // @[Plic.scala 184:21]
  assign fanin_io_prio_56 = priority_56; // @[Plic.scala 184:21]
  assign fanin_io_prio_57 = priority_57; // @[Plic.scala 184:21]
  assign fanin_io_prio_58 = priority_58; // @[Plic.scala 184:21]
  assign fanin_io_prio_59 = priority_59; // @[Plic.scala 184:21]
  assign fanin_io_prio_60 = priority_60; // @[Plic.scala 184:21]
  assign fanin_io_prio_61 = priority_61; // @[Plic.scala 184:21]
  assign fanin_io_prio_62 = priority_62; // @[Plic.scala 184:21]
  assign fanin_io_prio_63 = priority_63; // @[Plic.scala 184:21]
  assign fanin_io_prio_64 = priority_64; // @[Plic.scala 184:21]
  assign fanin_io_ip = enableVec_0 & pendingUInt; // @[Plic.scala 185:40]
  assign fanin_1_io_prio_0 = priority_0; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_1 = priority_1; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_2 = priority_2; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_3 = priority_3; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_4 = priority_4; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_5 = priority_5; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_6 = priority_6; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_7 = priority_7; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_8 = priority_8; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_9 = priority_9; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_10 = priority_10; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_11 = priority_11; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_12 = priority_12; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_13 = priority_13; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_14 = priority_14; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_15 = priority_15; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_16 = priority_16; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_17 = priority_17; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_18 = priority_18; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_19 = priority_19; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_20 = priority_20; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_21 = priority_21; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_22 = priority_22; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_23 = priority_23; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_24 = priority_24; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_25 = priority_25; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_26 = priority_26; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_27 = priority_27; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_28 = priority_28; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_29 = priority_29; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_30 = priority_30; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_31 = priority_31; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_32 = priority_32; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_33 = priority_33; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_34 = priority_34; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_35 = priority_35; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_36 = priority_36; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_37 = priority_37; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_38 = priority_38; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_39 = priority_39; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_40 = priority_40; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_41 = priority_41; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_42 = priority_42; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_43 = priority_43; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_44 = priority_44; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_45 = priority_45; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_46 = priority_46; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_47 = priority_47; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_48 = priority_48; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_49 = priority_49; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_50 = priority_50; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_51 = priority_51; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_52 = priority_52; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_53 = priority_53; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_54 = priority_54; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_55 = priority_55; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_56 = priority_56; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_57 = priority_57; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_58 = priority_58; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_59 = priority_59; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_60 = priority_60; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_61 = priority_61; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_62 = priority_62; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_63 = priority_63; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_64 = priority_64; // @[Plic.scala 184:21]
  assign fanin_1_io_ip = enableVec_1 & pendingUInt; // @[Plic.scala 185:40]
  assign out_back_clock = clock;
  assign out_back_reset = reset;
  assign out_back_io_enq_valid = auto_in_a_valid; // @[RegisterRouter.scala 82:24]
  assign out_back_io_enq_bits_read = auto_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 71:36]
  assign out_back_io_enq_bits_index = auto_in_a_bits_address[25:3]; // @[RegisterRouter.scala 70:18 72:19]
  assign out_back_io_enq_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign out_back_io_enq_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign out_back_io_enq_bits_extra_tlrr_extra_source = auto_in_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign out_back_io_enq_bits_extra_tlrr_extra_size = auto_in_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign out_back_io_deq_ready = auto_in_d_ready; // @[RegisterRouter.scala 82:24]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_0 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_9) begin // @[Plic.scala 162:31]
      priority_0 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_1 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_34) begin // @[Plic.scala 162:31]
      priority_1 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_2 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_35) begin // @[Plic.scala 162:31]
      priority_2 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_3 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_110) begin // @[Plic.scala 162:31]
      priority_3 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_4 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_111) begin // @[Plic.scala 162:31]
      priority_4 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_5 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_129) begin // @[Plic.scala 162:31]
      priority_5 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_6 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_130) begin // @[Plic.scala 162:31]
      priority_6 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_7 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_153) begin // @[Plic.scala 162:31]
      priority_7 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_8 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_154) begin // @[Plic.scala 162:31]
      priority_8 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_9 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_10) begin // @[Plic.scala 162:31]
      priority_9 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_10 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_11) begin // @[Plic.scala 162:31]
      priority_10 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_11 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_36) begin // @[Plic.scala 162:31]
      priority_11 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_12 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_37) begin // @[Plic.scala 162:31]
      priority_12 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_13 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_127) begin // @[Plic.scala 162:31]
      priority_13 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_14 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_128) begin // @[Plic.scala 162:31]
      priority_14 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_15 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_147) begin // @[Plic.scala 162:31]
      priority_15 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_16 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_148) begin // @[Plic.scala 162:31]
      priority_16 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_17 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_106) begin // @[Plic.scala 162:31]
      priority_17 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_18 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_107) begin // @[Plic.scala 162:31]
      priority_18 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_19 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_13) begin // @[Plic.scala 162:31]
      priority_19 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_20 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_14) begin // @[Plic.scala 162:31]
      priority_20 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_21 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_141) begin // @[Plic.scala 162:31]
      priority_21 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_22 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_142) begin // @[Plic.scala 162:31]
      priority_22 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_23 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_125) begin // @[Plic.scala 162:31]
      priority_23 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_24 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_126) begin // @[Plic.scala 162:31]
      priority_24 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_25 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_108) begin // @[Plic.scala 162:31]
      priority_25 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_26 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_109) begin // @[Plic.scala 162:31]
      priority_26 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_27 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_19) begin // @[Plic.scala 162:31]
      priority_27 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_28 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_20) begin // @[Plic.scala 162:31]
      priority_28 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_29 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_155) begin // @[Plic.scala 162:31]
      priority_29 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_30 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_156) begin // @[Plic.scala 162:31]
      priority_30 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_31 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_134) begin // @[Plic.scala 162:31]
      priority_31 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_32 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_135) begin // @[Plic.scala 162:31]
      priority_32 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_33 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_119) begin // @[Plic.scala 162:31]
      priority_33 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_34 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_120) begin // @[Plic.scala 162:31]
      priority_34 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_35 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_132) begin // @[Plic.scala 162:31]
      priority_35 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_36 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_133) begin // @[Plic.scala 162:31]
      priority_36 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_37 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_151) begin // @[Plic.scala 162:31]
      priority_37 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_38 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_152) begin // @[Plic.scala 162:31]
      priority_38 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_39 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_21) begin // @[Plic.scala 162:31]
      priority_39 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_40 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_22) begin // @[Plic.scala 162:31]
      priority_40 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_41 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_104) begin // @[Plic.scala 162:31]
      priority_41 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_42 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_105) begin // @[Plic.scala 162:31]
      priority_42 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_43 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_121) begin // @[Plic.scala 162:31]
      priority_43 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_44 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_122) begin // @[Plic.scala 162:31]
      priority_44 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_45 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_145) begin // @[Plic.scala 162:31]
      priority_45 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_46 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_146) begin // @[Plic.scala 162:31]
      priority_46 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_47 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_15) begin // @[Plic.scala 162:31]
      priority_47 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_48 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_16) begin // @[Plic.scala 162:31]
      priority_48 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_49 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_17) begin // @[Plic.scala 162:31]
      priority_49 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_50 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_18) begin // @[Plic.scala 162:31]
      priority_50 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_51 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_143) begin // @[Plic.scala 162:31]
      priority_51 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_52 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_144) begin // @[Plic.scala 162:31]
      priority_52 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_53 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_123) begin // @[Plic.scala 162:31]
      priority_53 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_54 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_124) begin // @[Plic.scala 162:31]
      priority_54 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_55 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_102) begin // @[Plic.scala 162:31]
      priority_55 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_56 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_103) begin // @[Plic.scala 162:31]
      priority_56 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_57 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_23) begin // @[Plic.scala 162:31]
      priority_57 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_58 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_24) begin // @[Plic.scala 162:31]
      priority_58 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_59 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_149) begin // @[Plic.scala 162:31]
      priority_59 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_60 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_150) begin // @[Plic.scala 162:31]
      priority_60 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_61 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_139) begin // @[Plic.scala 162:31]
      priority_61 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_62 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_140) begin // @[Plic.scala 162:31]
      priority_62 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_63 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_117) begin // @[Plic.scala 162:31]
      priority_63 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      priority_64 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_118) begin // @[Plic.scala 162:31]
      priority_64 <= out_back_io_deq_bits_data[34:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      threshold_0 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_136) begin // @[Plic.scala 165:31]
      threshold_0 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      threshold_1 <= 3'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_114) begin // @[Plic.scala 165:31]
      threshold_1 <= out_back_io_deq_bits_data[2:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_0 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_1 | gateways_gateway_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_0 <= ~claimedDevs_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_1 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_2 | gateways_gateway_1_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_1 <= ~claimedDevs_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_2 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_3 | gateways_gateway_2_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_2 <= ~claimedDevs_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_3 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_4 | gateways_gateway_3_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_3 <= ~claimedDevs_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_4 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_5 | gateways_gateway_4_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_4 <= ~claimedDevs_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_5 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_6 | gateways_gateway_5_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_5 <= ~claimedDevs_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_6 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_7 | gateways_gateway_6_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_6 <= ~claimedDevs_7;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_7 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_8 | gateways_gateway_7_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_7 <= ~claimedDevs_8;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_8 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_9 | gateways_gateway_8_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_8 <= ~claimedDevs_9;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_9 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_10 | gateways_gateway_9_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_9 <= ~claimedDevs_10;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_10 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_11 | gateways_gateway_10_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_10 <= ~claimedDevs_11;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_11 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_12 | gateways_gateway_11_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_11 <= ~claimedDevs_12;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_12 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_13 | gateways_gateway_12_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_12 <= ~claimedDevs_13;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_13 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_14 | gateways_gateway_13_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_13 <= ~claimedDevs_14;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_14 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_15 | gateways_gateway_14_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_14 <= ~claimedDevs_15;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_15 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_16 | gateways_gateway_15_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_15 <= ~claimedDevs_16;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_16 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_17 | gateways_gateway_16_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_16 <= ~claimedDevs_17;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_17 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_18 | gateways_gateway_17_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_17 <= ~claimedDevs_18;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_18 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_19 | gateways_gateway_18_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_18 <= ~claimedDevs_19;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_19 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_20 | gateways_gateway_19_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_19 <= ~claimedDevs_20;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_20 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_21 | gateways_gateway_20_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_20 <= ~claimedDevs_21;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_21 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_22 | gateways_gateway_21_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_21 <= ~claimedDevs_22;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_22 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_23 | gateways_gateway_22_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_22 <= ~claimedDevs_23;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_23 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_24 | gateways_gateway_23_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_23 <= ~claimedDevs_24;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_24 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_25 | gateways_gateway_24_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_24 <= ~claimedDevs_25;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_25 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_26 | gateways_gateway_25_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_25 <= ~claimedDevs_26;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_26 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_27 | gateways_gateway_26_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_26 <= ~claimedDevs_27;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_27 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_28 | gateways_gateway_27_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_27 <= ~claimedDevs_28;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_28 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_29 | gateways_gateway_28_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_28 <= ~claimedDevs_29;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_29 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_30 | gateways_gateway_29_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_29 <= ~claimedDevs_30;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_30 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_31 | gateways_gateway_30_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_30 <= ~claimedDevs_31;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_31 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_32 | gateways_gateway_31_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_31 <= ~claimedDevs_32;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_32 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_33 | gateways_gateway_32_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_32 <= ~claimedDevs_33;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_33 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_34 | gateways_gateway_33_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_33 <= ~claimedDevs_34;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_34 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_35 | gateways_gateway_34_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_34 <= ~claimedDevs_35;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_35 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_36 | gateways_gateway_35_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_35 <= ~claimedDevs_36;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_36 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_37 | gateways_gateway_36_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_36 <= ~claimedDevs_37;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_37 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_38 | gateways_gateway_37_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_37 <= ~claimedDevs_38;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_38 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_39 | gateways_gateway_38_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_38 <= ~claimedDevs_39;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_39 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_40 | gateways_gateway_39_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_39 <= ~claimedDevs_40;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_40 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_41 | gateways_gateway_40_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_40 <= ~claimedDevs_41;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_41 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_42 | gateways_gateway_41_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_41 <= ~claimedDevs_42;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_42 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_43 | gateways_gateway_42_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_42 <= ~claimedDevs_43;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_43 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_44 | gateways_gateway_43_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_43 <= ~claimedDevs_44;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_44 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_45 | gateways_gateway_44_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_44 <= ~claimedDevs_45;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_45 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_46 | gateways_gateway_45_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_45 <= ~claimedDevs_46;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_46 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_47 | gateways_gateway_46_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_46 <= ~claimedDevs_47;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_47 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_48 | gateways_gateway_47_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_47 <= ~claimedDevs_48;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_48 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_49 | gateways_gateway_48_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_48 <= ~claimedDevs_49;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_49 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_50 | gateways_gateway_49_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_49 <= ~claimedDevs_50;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_50 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_51 | gateways_gateway_50_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_50 <= ~claimedDevs_51;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_51 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_52 | gateways_gateway_51_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_51 <= ~claimedDevs_52;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_52 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_53 | gateways_gateway_52_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_52 <= ~claimedDevs_53;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_53 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_54 | gateways_gateway_53_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_53 <= ~claimedDevs_54;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_54 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_55 | gateways_gateway_54_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_54 <= ~claimedDevs_55;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_55 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_56 | gateways_gateway_55_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_55 <= ~claimedDevs_56;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_56 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_57 | gateways_gateway_56_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_56 <= ~claimedDevs_57;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_57 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_58 | gateways_gateway_57_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_57 <= ~claimedDevs_58;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_58 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_59 | gateways_gateway_58_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_58 <= ~claimedDevs_59;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_59 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_60 | gateways_gateway_59_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_59 <= ~claimedDevs_60;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_60 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_61 | gateways_gateway_60_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_60 <= ~claimedDevs_61;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_61 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_62 | gateways_gateway_61_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_61 <= ~claimedDevs_62;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_62 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_63 | gateways_gateway_62_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_62 <= ~claimedDevs_63;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_63 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_64 | gateways_gateway_63_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_63 <= ~claimedDevs_64;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 250:27]
      pending_64 <= 1'h0; // @[Plic.scala 250:31]
    end else if (claimedDevs_65 | gateways_gateway_64_io_plic_valid) begin // @[Plic.scala 167:22]
      pending_64 <= ~claimedDevs_65;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enables_0_0 <= 7'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_1) begin // @[Plic.scala 173:26]
      enables_0_0 <= out_back_io_deq_bits_data[7:1];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enables_0_1 <= 8'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_2) begin // @[Plic.scala 174:50]
      enables_0_1 <= out_back_io_deq_bits_data[15:8];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enables_0_2 <= 8'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_3) begin // @[Plic.scala 174:50]
      enables_0_2 <= out_back_io_deq_bits_data[23:16];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enables_0_3 <= 8'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_4) begin // @[Plic.scala 174:50]
      enables_0_3 <= out_back_io_deq_bits_data[31:24];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enables_0_4 <= 8'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_5) begin // @[Plic.scala 174:50]
      enables_0_4 <= out_back_io_deq_bits_data[39:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enables_0_5 <= 8'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_6) begin // @[Plic.scala 174:50]
      enables_0_5 <= out_back_io_deq_bits_data[47:40];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enables_0_6 <= 8'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_7) begin // @[Plic.scala 174:50]
      enables_0_6 <= out_back_io_deq_bits_data[55:48];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enables_0_7 <= 8'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_8) begin // @[Plic.scala 174:50]
      enables_0_7 <= out_back_io_deq_bits_data[63:56];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enables_0_8 <= 2'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_131) begin // @[Plic.scala 175:51]
      enables_0_8 <= out_back_io_deq_bits_data[1:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enables_1_0 <= 7'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_26) begin // @[Plic.scala 173:26]
      enables_1_0 <= out_back_io_deq_bits_data[7:1];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enables_1_1 <= 8'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_27) begin // @[Plic.scala 174:50]
      enables_1_1 <= out_back_io_deq_bits_data[15:8];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enables_1_2 <= 8'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_28) begin // @[Plic.scala 174:50]
      enables_1_2 <= out_back_io_deq_bits_data[23:16];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enables_1_3 <= 8'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_29) begin // @[Plic.scala 174:50]
      enables_1_3 <= out_back_io_deq_bits_data[31:24];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enables_1_4 <= 8'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_30) begin // @[Plic.scala 174:50]
      enables_1_4 <= out_back_io_deq_bits_data[39:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enables_1_5 <= 8'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_31) begin // @[Plic.scala 174:50]
      enables_1_5 <= out_back_io_deq_bits_data[47:40];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enables_1_6 <= 8'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_32) begin // @[Plic.scala 174:50]
      enables_1_6 <= out_back_io_deq_bits_data[55:48];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enables_1_7 <= 8'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_33) begin // @[Plic.scala 174:50]
      enables_1_7 <= out_back_io_deq_bits_data[63:56];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enables_1_8 <= 2'h0; // @[RegField.scala 74:92]
    end else if (out_f_woready_12) begin // @[Plic.scala 175:51]
      enables_1_8 <= out_back_io_deq_bits_data[1:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 180:22]
      maxDevs_0 <= 7'h0; // @[Plic.scala 180:22]
    end else begin
      maxDevs_0 <= fanin_io_dev; // @[Plic.scala 186:21]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 180:22]
      maxDevs_1 <= 7'h0; // @[Plic.scala 180:22]
    end else begin
      maxDevs_1 <= fanin_1_io_dev; // @[Plic.scala 186:21]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 187:41]
      bundleOut_0_0_REG <= 3'h0; // @[Plic.scala 187:41]
    end else begin
      bundleOut_0_0_REG <= fanin_io_max; // @[Plic.scala 187:41]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Plic.scala 187:41]
      bundleOut_1_0_REG <= 3'h0; // @[Plic.scala 187:41]
    end else begin
      bundleOut_1_0_REG <= fanin_1_io_max; // @[Plic.scala 187:41]
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
  priority_0 = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  priority_1 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  priority_2 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  priority_3 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  priority_4 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  priority_5 = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  priority_6 = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  priority_7 = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  priority_8 = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  priority_9 = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  priority_10 = _RAND_10[2:0];
  _RAND_11 = {1{`RANDOM}};
  priority_11 = _RAND_11[2:0];
  _RAND_12 = {1{`RANDOM}};
  priority_12 = _RAND_12[2:0];
  _RAND_13 = {1{`RANDOM}};
  priority_13 = _RAND_13[2:0];
  _RAND_14 = {1{`RANDOM}};
  priority_14 = _RAND_14[2:0];
  _RAND_15 = {1{`RANDOM}};
  priority_15 = _RAND_15[2:0];
  _RAND_16 = {1{`RANDOM}};
  priority_16 = _RAND_16[2:0];
  _RAND_17 = {1{`RANDOM}};
  priority_17 = _RAND_17[2:0];
  _RAND_18 = {1{`RANDOM}};
  priority_18 = _RAND_18[2:0];
  _RAND_19 = {1{`RANDOM}};
  priority_19 = _RAND_19[2:0];
  _RAND_20 = {1{`RANDOM}};
  priority_20 = _RAND_20[2:0];
  _RAND_21 = {1{`RANDOM}};
  priority_21 = _RAND_21[2:0];
  _RAND_22 = {1{`RANDOM}};
  priority_22 = _RAND_22[2:0];
  _RAND_23 = {1{`RANDOM}};
  priority_23 = _RAND_23[2:0];
  _RAND_24 = {1{`RANDOM}};
  priority_24 = _RAND_24[2:0];
  _RAND_25 = {1{`RANDOM}};
  priority_25 = _RAND_25[2:0];
  _RAND_26 = {1{`RANDOM}};
  priority_26 = _RAND_26[2:0];
  _RAND_27 = {1{`RANDOM}};
  priority_27 = _RAND_27[2:0];
  _RAND_28 = {1{`RANDOM}};
  priority_28 = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  priority_29 = _RAND_29[2:0];
  _RAND_30 = {1{`RANDOM}};
  priority_30 = _RAND_30[2:0];
  _RAND_31 = {1{`RANDOM}};
  priority_31 = _RAND_31[2:0];
  _RAND_32 = {1{`RANDOM}};
  priority_32 = _RAND_32[2:0];
  _RAND_33 = {1{`RANDOM}};
  priority_33 = _RAND_33[2:0];
  _RAND_34 = {1{`RANDOM}};
  priority_34 = _RAND_34[2:0];
  _RAND_35 = {1{`RANDOM}};
  priority_35 = _RAND_35[2:0];
  _RAND_36 = {1{`RANDOM}};
  priority_36 = _RAND_36[2:0];
  _RAND_37 = {1{`RANDOM}};
  priority_37 = _RAND_37[2:0];
  _RAND_38 = {1{`RANDOM}};
  priority_38 = _RAND_38[2:0];
  _RAND_39 = {1{`RANDOM}};
  priority_39 = _RAND_39[2:0];
  _RAND_40 = {1{`RANDOM}};
  priority_40 = _RAND_40[2:0];
  _RAND_41 = {1{`RANDOM}};
  priority_41 = _RAND_41[2:0];
  _RAND_42 = {1{`RANDOM}};
  priority_42 = _RAND_42[2:0];
  _RAND_43 = {1{`RANDOM}};
  priority_43 = _RAND_43[2:0];
  _RAND_44 = {1{`RANDOM}};
  priority_44 = _RAND_44[2:0];
  _RAND_45 = {1{`RANDOM}};
  priority_45 = _RAND_45[2:0];
  _RAND_46 = {1{`RANDOM}};
  priority_46 = _RAND_46[2:0];
  _RAND_47 = {1{`RANDOM}};
  priority_47 = _RAND_47[2:0];
  _RAND_48 = {1{`RANDOM}};
  priority_48 = _RAND_48[2:0];
  _RAND_49 = {1{`RANDOM}};
  priority_49 = _RAND_49[2:0];
  _RAND_50 = {1{`RANDOM}};
  priority_50 = _RAND_50[2:0];
  _RAND_51 = {1{`RANDOM}};
  priority_51 = _RAND_51[2:0];
  _RAND_52 = {1{`RANDOM}};
  priority_52 = _RAND_52[2:0];
  _RAND_53 = {1{`RANDOM}};
  priority_53 = _RAND_53[2:0];
  _RAND_54 = {1{`RANDOM}};
  priority_54 = _RAND_54[2:0];
  _RAND_55 = {1{`RANDOM}};
  priority_55 = _RAND_55[2:0];
  _RAND_56 = {1{`RANDOM}};
  priority_56 = _RAND_56[2:0];
  _RAND_57 = {1{`RANDOM}};
  priority_57 = _RAND_57[2:0];
  _RAND_58 = {1{`RANDOM}};
  priority_58 = _RAND_58[2:0];
  _RAND_59 = {1{`RANDOM}};
  priority_59 = _RAND_59[2:0];
  _RAND_60 = {1{`RANDOM}};
  priority_60 = _RAND_60[2:0];
  _RAND_61 = {1{`RANDOM}};
  priority_61 = _RAND_61[2:0];
  _RAND_62 = {1{`RANDOM}};
  priority_62 = _RAND_62[2:0];
  _RAND_63 = {1{`RANDOM}};
  priority_63 = _RAND_63[2:0];
  _RAND_64 = {1{`RANDOM}};
  priority_64 = _RAND_64[2:0];
  _RAND_65 = {1{`RANDOM}};
  threshold_0 = _RAND_65[2:0];
  _RAND_66 = {1{`RANDOM}};
  threshold_1 = _RAND_66[2:0];
  _RAND_67 = {1{`RANDOM}};
  pending_0 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  pending_1 = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  pending_2 = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  pending_3 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  pending_4 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  pending_5 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  pending_6 = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  pending_7 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  pending_8 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  pending_9 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  pending_10 = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  pending_11 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  pending_12 = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  pending_13 = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  pending_14 = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  pending_15 = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  pending_16 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  pending_17 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  pending_18 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  pending_19 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  pending_20 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  pending_21 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  pending_22 = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  pending_23 = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  pending_24 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  pending_25 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  pending_26 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  pending_27 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  pending_28 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  pending_29 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  pending_30 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  pending_31 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  pending_32 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  pending_33 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  pending_34 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  pending_35 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  pending_36 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  pending_37 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  pending_38 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  pending_39 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  pending_40 = _RAND_107[0:0];
  _RAND_108 = {1{`RANDOM}};
  pending_41 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  pending_42 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  pending_43 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  pending_44 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  pending_45 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  pending_46 = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  pending_47 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  pending_48 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  pending_49 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  pending_50 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  pending_51 = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  pending_52 = _RAND_119[0:0];
  _RAND_120 = {1{`RANDOM}};
  pending_53 = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  pending_54 = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  pending_55 = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  pending_56 = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  pending_57 = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  pending_58 = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  pending_59 = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  pending_60 = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  pending_61 = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  pending_62 = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  pending_63 = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  pending_64 = _RAND_131[0:0];
  _RAND_132 = {1{`RANDOM}};
  enables_0_0 = _RAND_132[6:0];
  _RAND_133 = {1{`RANDOM}};
  enables_0_1 = _RAND_133[7:0];
  _RAND_134 = {1{`RANDOM}};
  enables_0_2 = _RAND_134[7:0];
  _RAND_135 = {1{`RANDOM}};
  enables_0_3 = _RAND_135[7:0];
  _RAND_136 = {1{`RANDOM}};
  enables_0_4 = _RAND_136[7:0];
  _RAND_137 = {1{`RANDOM}};
  enables_0_5 = _RAND_137[7:0];
  _RAND_138 = {1{`RANDOM}};
  enables_0_6 = _RAND_138[7:0];
  _RAND_139 = {1{`RANDOM}};
  enables_0_7 = _RAND_139[7:0];
  _RAND_140 = {1{`RANDOM}};
  enables_0_8 = _RAND_140[1:0];
  _RAND_141 = {1{`RANDOM}};
  enables_1_0 = _RAND_141[6:0];
  _RAND_142 = {1{`RANDOM}};
  enables_1_1 = _RAND_142[7:0];
  _RAND_143 = {1{`RANDOM}};
  enables_1_2 = _RAND_143[7:0];
  _RAND_144 = {1{`RANDOM}};
  enables_1_3 = _RAND_144[7:0];
  _RAND_145 = {1{`RANDOM}};
  enables_1_4 = _RAND_145[7:0];
  _RAND_146 = {1{`RANDOM}};
  enables_1_5 = _RAND_146[7:0];
  _RAND_147 = {1{`RANDOM}};
  enables_1_6 = _RAND_147[7:0];
  _RAND_148 = {1{`RANDOM}};
  enables_1_7 = _RAND_148[7:0];
  _RAND_149 = {1{`RANDOM}};
  enables_1_8 = _RAND_149[1:0];
  _RAND_150 = {1{`RANDOM}};
  maxDevs_0 = _RAND_150[6:0];
  _RAND_151 = {1{`RANDOM}};
  maxDevs_1 = _RAND_151[6:0];
  _RAND_152 = {1{`RANDOM}};
  bundleOut_0_0_REG = _RAND_152[2:0];
  _RAND_153 = {1{`RANDOM}};
  bundleOut_1_0_REG = _RAND_153[2:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    priority_0 = 3'h0;
  end
  if (reset) begin
    priority_1 = 3'h0;
  end
  if (reset) begin
    priority_2 = 3'h0;
  end
  if (reset) begin
    priority_3 = 3'h0;
  end
  if (reset) begin
    priority_4 = 3'h0;
  end
  if (reset) begin
    priority_5 = 3'h0;
  end
  if (reset) begin
    priority_6 = 3'h0;
  end
  if (reset) begin
    priority_7 = 3'h0;
  end
  if (reset) begin
    priority_8 = 3'h0;
  end
  if (reset) begin
    priority_9 = 3'h0;
  end
  if (reset) begin
    priority_10 = 3'h0;
  end
  if (reset) begin
    priority_11 = 3'h0;
  end
  if (reset) begin
    priority_12 = 3'h0;
  end
  if (reset) begin
    priority_13 = 3'h0;
  end
  if (reset) begin
    priority_14 = 3'h0;
  end
  if (reset) begin
    priority_15 = 3'h0;
  end
  if (reset) begin
    priority_16 = 3'h0;
  end
  if (reset) begin
    priority_17 = 3'h0;
  end
  if (reset) begin
    priority_18 = 3'h0;
  end
  if (reset) begin
    priority_19 = 3'h0;
  end
  if (reset) begin
    priority_20 = 3'h0;
  end
  if (reset) begin
    priority_21 = 3'h0;
  end
  if (reset) begin
    priority_22 = 3'h0;
  end
  if (reset) begin
    priority_23 = 3'h0;
  end
  if (reset) begin
    priority_24 = 3'h0;
  end
  if (reset) begin
    priority_25 = 3'h0;
  end
  if (reset) begin
    priority_26 = 3'h0;
  end
  if (reset) begin
    priority_27 = 3'h0;
  end
  if (reset) begin
    priority_28 = 3'h0;
  end
  if (reset) begin
    priority_29 = 3'h0;
  end
  if (reset) begin
    priority_30 = 3'h0;
  end
  if (reset) begin
    priority_31 = 3'h0;
  end
  if (reset) begin
    priority_32 = 3'h0;
  end
  if (reset) begin
    priority_33 = 3'h0;
  end
  if (reset) begin
    priority_34 = 3'h0;
  end
  if (reset) begin
    priority_35 = 3'h0;
  end
  if (reset) begin
    priority_36 = 3'h0;
  end
  if (reset) begin
    priority_37 = 3'h0;
  end
  if (reset) begin
    priority_38 = 3'h0;
  end
  if (reset) begin
    priority_39 = 3'h0;
  end
  if (reset) begin
    priority_40 = 3'h0;
  end
  if (reset) begin
    priority_41 = 3'h0;
  end
  if (reset) begin
    priority_42 = 3'h0;
  end
  if (reset) begin
    priority_43 = 3'h0;
  end
  if (reset) begin
    priority_44 = 3'h0;
  end
  if (reset) begin
    priority_45 = 3'h0;
  end
  if (reset) begin
    priority_46 = 3'h0;
  end
  if (reset) begin
    priority_47 = 3'h0;
  end
  if (reset) begin
    priority_48 = 3'h0;
  end
  if (reset) begin
    priority_49 = 3'h0;
  end
  if (reset) begin
    priority_50 = 3'h0;
  end
  if (reset) begin
    priority_51 = 3'h0;
  end
  if (reset) begin
    priority_52 = 3'h0;
  end
  if (reset) begin
    priority_53 = 3'h0;
  end
  if (reset) begin
    priority_54 = 3'h0;
  end
  if (reset) begin
    priority_55 = 3'h0;
  end
  if (reset) begin
    priority_56 = 3'h0;
  end
  if (reset) begin
    priority_57 = 3'h0;
  end
  if (reset) begin
    priority_58 = 3'h0;
  end
  if (reset) begin
    priority_59 = 3'h0;
  end
  if (reset) begin
    priority_60 = 3'h0;
  end
  if (reset) begin
    priority_61 = 3'h0;
  end
  if (reset) begin
    priority_62 = 3'h0;
  end
  if (reset) begin
    priority_63 = 3'h0;
  end
  if (reset) begin
    priority_64 = 3'h0;
  end
  if (reset) begin
    threshold_0 = 3'h0;
  end
  if (reset) begin
    threshold_1 = 3'h0;
  end
  if (reset) begin
    pending_0 = 1'h0;
  end
  if (reset) begin
    pending_1 = 1'h0;
  end
  if (reset) begin
    pending_2 = 1'h0;
  end
  if (reset) begin
    pending_3 = 1'h0;
  end
  if (reset) begin
    pending_4 = 1'h0;
  end
  if (reset) begin
    pending_5 = 1'h0;
  end
  if (reset) begin
    pending_6 = 1'h0;
  end
  if (reset) begin
    pending_7 = 1'h0;
  end
  if (reset) begin
    pending_8 = 1'h0;
  end
  if (reset) begin
    pending_9 = 1'h0;
  end
  if (reset) begin
    pending_10 = 1'h0;
  end
  if (reset) begin
    pending_11 = 1'h0;
  end
  if (reset) begin
    pending_12 = 1'h0;
  end
  if (reset) begin
    pending_13 = 1'h0;
  end
  if (reset) begin
    pending_14 = 1'h0;
  end
  if (reset) begin
    pending_15 = 1'h0;
  end
  if (reset) begin
    pending_16 = 1'h0;
  end
  if (reset) begin
    pending_17 = 1'h0;
  end
  if (reset) begin
    pending_18 = 1'h0;
  end
  if (reset) begin
    pending_19 = 1'h0;
  end
  if (reset) begin
    pending_20 = 1'h0;
  end
  if (reset) begin
    pending_21 = 1'h0;
  end
  if (reset) begin
    pending_22 = 1'h0;
  end
  if (reset) begin
    pending_23 = 1'h0;
  end
  if (reset) begin
    pending_24 = 1'h0;
  end
  if (reset) begin
    pending_25 = 1'h0;
  end
  if (reset) begin
    pending_26 = 1'h0;
  end
  if (reset) begin
    pending_27 = 1'h0;
  end
  if (reset) begin
    pending_28 = 1'h0;
  end
  if (reset) begin
    pending_29 = 1'h0;
  end
  if (reset) begin
    pending_30 = 1'h0;
  end
  if (reset) begin
    pending_31 = 1'h0;
  end
  if (reset) begin
    pending_32 = 1'h0;
  end
  if (reset) begin
    pending_33 = 1'h0;
  end
  if (reset) begin
    pending_34 = 1'h0;
  end
  if (reset) begin
    pending_35 = 1'h0;
  end
  if (reset) begin
    pending_36 = 1'h0;
  end
  if (reset) begin
    pending_37 = 1'h0;
  end
  if (reset) begin
    pending_38 = 1'h0;
  end
  if (reset) begin
    pending_39 = 1'h0;
  end
  if (reset) begin
    pending_40 = 1'h0;
  end
  if (reset) begin
    pending_41 = 1'h0;
  end
  if (reset) begin
    pending_42 = 1'h0;
  end
  if (reset) begin
    pending_43 = 1'h0;
  end
  if (reset) begin
    pending_44 = 1'h0;
  end
  if (reset) begin
    pending_45 = 1'h0;
  end
  if (reset) begin
    pending_46 = 1'h0;
  end
  if (reset) begin
    pending_47 = 1'h0;
  end
  if (reset) begin
    pending_48 = 1'h0;
  end
  if (reset) begin
    pending_49 = 1'h0;
  end
  if (reset) begin
    pending_50 = 1'h0;
  end
  if (reset) begin
    pending_51 = 1'h0;
  end
  if (reset) begin
    pending_52 = 1'h0;
  end
  if (reset) begin
    pending_53 = 1'h0;
  end
  if (reset) begin
    pending_54 = 1'h0;
  end
  if (reset) begin
    pending_55 = 1'h0;
  end
  if (reset) begin
    pending_56 = 1'h0;
  end
  if (reset) begin
    pending_57 = 1'h0;
  end
  if (reset) begin
    pending_58 = 1'h0;
  end
  if (reset) begin
    pending_59 = 1'h0;
  end
  if (reset) begin
    pending_60 = 1'h0;
  end
  if (reset) begin
    pending_61 = 1'h0;
  end
  if (reset) begin
    pending_62 = 1'h0;
  end
  if (reset) begin
    pending_63 = 1'h0;
  end
  if (reset) begin
    pending_64 = 1'h0;
  end
  if (reset) begin
    enables_0_0 = 7'h0;
  end
  if (reset) begin
    enables_0_1 = 8'h0;
  end
  if (reset) begin
    enables_0_2 = 8'h0;
  end
  if (reset) begin
    enables_0_3 = 8'h0;
  end
  if (reset) begin
    enables_0_4 = 8'h0;
  end
  if (reset) begin
    enables_0_5 = 8'h0;
  end
  if (reset) begin
    enables_0_6 = 8'h0;
  end
  if (reset) begin
    enables_0_7 = 8'h0;
  end
  if (reset) begin
    enables_0_8 = 2'h0;
  end
  if (reset) begin
    enables_1_0 = 7'h0;
  end
  if (reset) begin
    enables_1_1 = 8'h0;
  end
  if (reset) begin
    enables_1_2 = 8'h0;
  end
  if (reset) begin
    enables_1_3 = 8'h0;
  end
  if (reset) begin
    enables_1_4 = 8'h0;
  end
  if (reset) begin
    enables_1_5 = 8'h0;
  end
  if (reset) begin
    enables_1_6 = 8'h0;
  end
  if (reset) begin
    enables_1_7 = 8'h0;
  end
  if (reset) begin
    enables_1_8 = 2'h0;
  end
  if (reset) begin
    maxDevs_0 = 7'h0;
  end
  if (reset) begin
    maxDevs_1 = 7'h0;
  end
  if (reset) begin
    bundleOut_0_0_REG = 3'h0;
  end
  if (reset) begin
    bundleOut_1_0_REG = 3'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

