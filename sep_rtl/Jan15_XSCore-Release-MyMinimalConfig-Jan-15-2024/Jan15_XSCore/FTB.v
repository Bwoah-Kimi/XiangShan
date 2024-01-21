module FTB(
  input          clock,
  input          reset,
  input  [35:0]  io_reset_vector,
  input  [38:0]  io_in_bits_s0_pc_0,
  input  [38:0]  io_in_bits_s0_pc_1,
  input  [38:0]  io_in_bits_s0_pc_2,
  input  [38:0]  io_in_bits_s0_pc_3,
  input          io_in_bits_resp_in_0_s2_full_pred_0_br_taken_mask_0,
  input          io_in_bits_resp_in_0_s2_full_pred_0_br_taken_mask_1,
  input          io_in_bits_resp_in_0_s2_full_pred_1_br_taken_mask_0,
  input          io_in_bits_resp_in_0_s2_full_pred_1_br_taken_mask_1,
  input          io_in_bits_resp_in_0_s2_full_pred_2_br_taken_mask_0,
  input          io_in_bits_resp_in_0_s2_full_pred_2_br_taken_mask_1,
  input          io_in_bits_resp_in_0_s2_full_pred_3_br_taken_mask_0,
  input          io_in_bits_resp_in_0_s2_full_pred_3_br_taken_mask_1,
  input          io_in_bits_resp_in_0_s3_full_pred_0_br_taken_mask_0,
  input          io_in_bits_resp_in_0_s3_full_pred_0_br_taken_mask_1,
  input          io_in_bits_resp_in_0_s3_full_pred_1_br_taken_mask_0,
  input          io_in_bits_resp_in_0_s3_full_pred_1_br_taken_mask_1,
  input          io_in_bits_resp_in_0_s3_full_pred_2_br_taken_mask_0,
  input          io_in_bits_resp_in_0_s3_full_pred_2_br_taken_mask_1,
  input          io_in_bits_resp_in_0_s3_full_pred_3_br_taken_mask_0,
  input          io_in_bits_resp_in_0_s3_full_pred_3_br_taken_mask_1,
  output         io_out_s2_full_pred_0_br_taken_mask_0,
  output         io_out_s2_full_pred_0_br_taken_mask_1,
  output         io_out_s2_full_pred_0_slot_valids_0,
  output         io_out_s2_full_pred_0_slot_valids_1,
  output [38:0]  io_out_s2_full_pred_0_targets_0,
  output [38:0]  io_out_s2_full_pred_0_targets_1,
  output [38:0]  io_out_s2_full_pred_0_jalr_target,
  output [2:0]   io_out_s2_full_pred_0_offsets_0,
  output [2:0]   io_out_s2_full_pred_0_offsets_1,
  output [38:0]  io_out_s2_full_pred_0_fallThroughAddr,
  output         io_out_s2_full_pred_0_fallThroughErr,
  output         io_out_s2_full_pred_0_is_jalr,
  output         io_out_s2_full_pred_0_is_ret,
  output         io_out_s2_full_pred_0_is_br_sharing,
  output         io_out_s2_full_pred_0_hit,
  output         io_out_s2_full_pred_1_br_taken_mask_0,
  output         io_out_s2_full_pred_1_br_taken_mask_1,
  output         io_out_s2_full_pred_1_slot_valids_0,
  output         io_out_s2_full_pred_1_slot_valids_1,
  output [38:0]  io_out_s2_full_pred_1_targets_0,
  output [38:0]  io_out_s2_full_pred_1_targets_1,
  output [38:0]  io_out_s2_full_pred_1_jalr_target,
  output [2:0]   io_out_s2_full_pred_1_offsets_0,
  output [2:0]   io_out_s2_full_pred_1_offsets_1,
  output [38:0]  io_out_s2_full_pred_1_fallThroughAddr,
  output         io_out_s2_full_pred_1_fallThroughErr,
  output         io_out_s2_full_pred_1_is_jalr,
  output         io_out_s2_full_pred_1_is_ret,
  output         io_out_s2_full_pred_1_is_br_sharing,
  output         io_out_s2_full_pred_1_hit,
  output         io_out_s2_full_pred_2_br_taken_mask_0,
  output         io_out_s2_full_pred_2_br_taken_mask_1,
  output         io_out_s2_full_pred_2_slot_valids_0,
  output         io_out_s2_full_pred_2_slot_valids_1,
  output [38:0]  io_out_s2_full_pred_2_targets_0,
  output [38:0]  io_out_s2_full_pred_2_targets_1,
  output [38:0]  io_out_s2_full_pred_2_jalr_target,
  output [2:0]   io_out_s2_full_pred_2_offsets_0,
  output [2:0]   io_out_s2_full_pred_2_offsets_1,
  output [38:0]  io_out_s2_full_pred_2_fallThroughAddr,
  output         io_out_s2_full_pred_2_fallThroughErr,
  output         io_out_s2_full_pred_2_is_jalr,
  output         io_out_s2_full_pred_2_is_call,
  output         io_out_s2_full_pred_2_is_ret,
  output         io_out_s2_full_pred_2_last_may_be_rvi_call,
  output         io_out_s2_full_pred_2_is_br_sharing,
  output         io_out_s2_full_pred_2_hit,
  output         io_out_s2_full_pred_3_br_taken_mask_0,
  output         io_out_s2_full_pred_3_br_taken_mask_1,
  output         io_out_s2_full_pred_3_slot_valids_0,
  output         io_out_s2_full_pred_3_slot_valids_1,
  output [38:0]  io_out_s2_full_pred_3_targets_0,
  output [38:0]  io_out_s2_full_pred_3_targets_1,
  output [38:0]  io_out_s2_full_pred_3_jalr_target,
  output [2:0]   io_out_s2_full_pred_3_offsets_0,
  output [2:0]   io_out_s2_full_pred_3_offsets_1,
  output [38:0]  io_out_s2_full_pred_3_fallThroughAddr,
  output         io_out_s2_full_pred_3_fallThroughErr,
  output         io_out_s2_full_pred_3_is_jalr,
  output         io_out_s2_full_pred_3_is_ret,
  output         io_out_s2_full_pred_3_is_br_sharing,
  output         io_out_s2_full_pred_3_hit,
  output         io_out_s3_full_pred_0_br_taken_mask_0,
  output         io_out_s3_full_pred_0_br_taken_mask_1,
  output         io_out_s3_full_pred_0_slot_valids_0,
  output         io_out_s3_full_pred_0_slot_valids_1,
  output [38:0]  io_out_s3_full_pred_0_targets_0,
  output [38:0]  io_out_s3_full_pred_0_targets_1,
  output [38:0]  io_out_s3_full_pred_0_jalr_target,
  output [38:0]  io_out_s3_full_pred_0_fallThroughAddr,
  output         io_out_s3_full_pred_0_fallThroughErr,
  output         io_out_s3_full_pred_0_is_jalr,
  output         io_out_s3_full_pred_0_is_ret,
  output         io_out_s3_full_pred_0_is_br_sharing,
  output         io_out_s3_full_pred_0_hit,
  output         io_out_s3_full_pred_1_br_taken_mask_0,
  output         io_out_s3_full_pred_1_br_taken_mask_1,
  output         io_out_s3_full_pred_1_slot_valids_0,
  output         io_out_s3_full_pred_1_slot_valids_1,
  output [38:0]  io_out_s3_full_pred_1_targets_0,
  output [38:0]  io_out_s3_full_pred_1_targets_1,
  output [38:0]  io_out_s3_full_pred_1_jalr_target,
  output [38:0]  io_out_s3_full_pred_1_fallThroughAddr,
  output         io_out_s3_full_pred_1_fallThroughErr,
  output         io_out_s3_full_pred_1_is_jalr,
  output         io_out_s3_full_pred_1_is_ret,
  output         io_out_s3_full_pred_1_is_br_sharing,
  output         io_out_s3_full_pred_1_hit,
  output         io_out_s3_full_pred_2_br_taken_mask_0,
  output         io_out_s3_full_pred_2_br_taken_mask_1,
  output         io_out_s3_full_pred_2_slot_valids_0,
  output         io_out_s3_full_pred_2_slot_valids_1,
  output [38:0]  io_out_s3_full_pred_2_targets_0,
  output [38:0]  io_out_s3_full_pred_2_targets_1,
  output [38:0]  io_out_s3_full_pred_2_jalr_target,
  output [38:0]  io_out_s3_full_pred_2_fallThroughAddr,
  output         io_out_s3_full_pred_2_fallThroughErr,
  output         io_out_s3_full_pred_2_is_jalr,
  output         io_out_s3_full_pred_2_is_call,
  output         io_out_s3_full_pred_2_is_ret,
  output         io_out_s3_full_pred_2_is_br_sharing,
  output         io_out_s3_full_pred_2_hit,
  output         io_out_s3_full_pred_3_br_taken_mask_0,
  output         io_out_s3_full_pred_3_br_taken_mask_1,
  output         io_out_s3_full_pred_3_slot_valids_0,
  output         io_out_s3_full_pred_3_slot_valids_1,
  output [38:0]  io_out_s3_full_pred_3_targets_0,
  output [38:0]  io_out_s3_full_pred_3_targets_1,
  output [38:0]  io_out_s3_full_pred_3_jalr_target,
  output [2:0]   io_out_s3_full_pred_3_offsets_0,
  output [2:0]   io_out_s3_full_pred_3_offsets_1,
  output [38:0]  io_out_s3_full_pred_3_fallThroughAddr,
  output         io_out_s3_full_pred_3_fallThroughErr,
  output         io_out_s3_full_pred_3_is_jalr,
  output         io_out_s3_full_pred_3_is_ret,
  output         io_out_s3_full_pred_3_is_br_sharing,
  output         io_out_s3_full_pred_3_hit,
  output [255:0] io_out_last_stage_meta,
  output         io_out_last_stage_ftb_entry_valid,
  output [2:0]   io_out_last_stage_ftb_entry_brSlots_0_offset,
  output [11:0]  io_out_last_stage_ftb_entry_brSlots_0_lower,
  output [1:0]   io_out_last_stage_ftb_entry_brSlots_0_tarStat,
  output         io_out_last_stage_ftb_entry_brSlots_0_sharing,
  output         io_out_last_stage_ftb_entry_brSlots_0_valid,
  output         io_out_last_stage_ftb_entry_brSlots_0_sc,
  output [2:0]   io_out_last_stage_ftb_entry_tailSlot_offset,
  output [19:0]  io_out_last_stage_ftb_entry_tailSlot_lower,
  output [1:0]   io_out_last_stage_ftb_entry_tailSlot_tarStat,
  output         io_out_last_stage_ftb_entry_tailSlot_sharing,
  output         io_out_last_stage_ftb_entry_tailSlot_valid,
  output         io_out_last_stage_ftb_entry_tailSlot_sc,
  output [2:0]   io_out_last_stage_ftb_entry_pftAddr,
  output         io_out_last_stage_ftb_entry_carry,
  output         io_out_last_stage_ftb_entry_isCall,
  output         io_out_last_stage_ftb_entry_isRet,
  output         io_out_last_stage_ftb_entry_isJalr,
  output         io_out_last_stage_ftb_entry_last_may_be_rvi_call,
  output         io_out_last_stage_ftb_entry_always_taken_0,
  output         io_out_last_stage_ftb_entry_always_taken_1,
  input          io_ctrl_btb_enable,
  input          io_s0_fire_0,
  input          io_s0_fire_1,
  input          io_s0_fire_2,
  input          io_s0_fire_3,
  input          io_s1_fire_0,
  input          io_s1_fire_1,
  input          io_s1_fire_2,
  input          io_s1_fire_3,
  input          io_s2_fire_0,
  input          io_s2_fire_1,
  input          io_s2_fire_2,
  input          io_s2_fire_3,
  output         io_s1_ready,
  input          io_update_valid,
  input  [38:0]  io_update_bits_pc,
  input          io_update_bits_ftb_entry_valid,
  input  [2:0]   io_update_bits_ftb_entry_brSlots_0_offset,
  input  [11:0]  io_update_bits_ftb_entry_brSlots_0_lower,
  input  [1:0]   io_update_bits_ftb_entry_brSlots_0_tarStat,
  input          io_update_bits_ftb_entry_brSlots_0_sharing,
  input          io_update_bits_ftb_entry_brSlots_0_valid,
  input          io_update_bits_ftb_entry_brSlots_0_sc,
  input  [2:0]   io_update_bits_ftb_entry_tailSlot_offset,
  input  [19:0]  io_update_bits_ftb_entry_tailSlot_lower,
  input  [1:0]   io_update_bits_ftb_entry_tailSlot_tarStat,
  input          io_update_bits_ftb_entry_tailSlot_sharing,
  input          io_update_bits_ftb_entry_tailSlot_valid,
  input          io_update_bits_ftb_entry_tailSlot_sc,
  input  [2:0]   io_update_bits_ftb_entry_pftAddr,
  input          io_update_bits_ftb_entry_carry,
  input          io_update_bits_ftb_entry_isCall,
  input          io_update_bits_ftb_entry_isRet,
  input          io_update_bits_ftb_entry_isJalr,
  input          io_update_bits_ftb_entry_last_may_be_rvi_call,
  input          io_update_bits_ftb_entry_always_taken_0,
  input          io_update_bits_ftb_entry_always_taken_1,
  input          io_update_bits_old_entry,
  input  [255:0] io_update_bits_meta,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
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
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [31:0] _RAND_164;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_169;
  reg [31:0] _RAND_170;
  reg [31:0] _RAND_171;
  reg [31:0] _RAND_172;
  reg [31:0] _RAND_173;
  reg [31:0] _RAND_174;
  reg [31:0] _RAND_175;
  reg [31:0] _RAND_176;
  reg [31:0] _RAND_177;
  reg [31:0] _RAND_178;
  reg [31:0] _RAND_179;
  reg [31:0] _RAND_180;
  reg [31:0] _RAND_181;
  reg [31:0] _RAND_182;
  reg [31:0] _RAND_183;
  reg [31:0] _RAND_184;
  reg [31:0] _RAND_185;
  reg [31:0] _RAND_186;
  reg [31:0] _RAND_187;
  reg [31:0] _RAND_188;
  reg [31:0] _RAND_189;
  reg [31:0] _RAND_190;
  reg [31:0] _RAND_191;
  reg [31:0] _RAND_192;
  reg [31:0] _RAND_193;
  reg [31:0] _RAND_194;
  reg [31:0] _RAND_195;
  reg [31:0] _RAND_196;
  reg [31:0] _RAND_197;
  reg [31:0] _RAND_198;
  reg [31:0] _RAND_199;
  reg [31:0] _RAND_200;
  reg [31:0] _RAND_201;
  reg [31:0] _RAND_202;
  reg [31:0] _RAND_203;
  reg [31:0] _RAND_204;
  reg [31:0] _RAND_205;
  reg [31:0] _RAND_206;
  reg [31:0] _RAND_207;
  reg [31:0] _RAND_208;
  reg [31:0] _RAND_209;
  reg [31:0] _RAND_210;
  reg [31:0] _RAND_211;
  reg [31:0] _RAND_212;
  reg [31:0] _RAND_213;
  reg [31:0] _RAND_214;
  reg [31:0] _RAND_215;
  reg [31:0] _RAND_216;
  reg [31:0] _RAND_217;
  reg [31:0] _RAND_218;
  reg [31:0] _RAND_219;
  reg [31:0] _RAND_220;
  reg [31:0] _RAND_221;
  reg [31:0] _RAND_222;
  reg [31:0] _RAND_223;
  reg [31:0] _RAND_224;
  reg [31:0] _RAND_225;
  reg [31:0] _RAND_226;
  reg [31:0] _RAND_227;
  reg [31:0] _RAND_228;
  reg [31:0] _RAND_229;
  reg [31:0] _RAND_230;
  reg [31:0] _RAND_231;
  reg [31:0] _RAND_232;
  reg [31:0] _RAND_233;
  reg [31:0] _RAND_234;
  reg [31:0] _RAND_235;
  reg [31:0] _RAND_236;
  reg [31:0] _RAND_237;
`endif // RANDOMIZE_REG_INIT
  wire  reset_vector_delay_clock; // @[Hold.scala 97:23]
  wire [35:0] reset_vector_delay_io_in; // @[Hold.scala 97:23]
  wire [35:0] reset_vector_delay_io_out; // @[Hold.scala 97:23]
  wire  ftbBank_clock; // @[FTB.scala 426:23]
  wire  ftbBank_reset; // @[FTB.scala 426:23]
  wire  ftbBank_io_s1_fire; // @[FTB.scala 426:23]
  wire  ftbBank_io_req_pc_ready; // @[FTB.scala 426:23]
  wire  ftbBank_io_req_pc_valid; // @[FTB.scala 426:23]
  wire [38:0] ftbBank_io_req_pc_bits; // @[FTB.scala 426:23]
  wire  ftbBank_io_read_resp_valid; // @[FTB.scala 426:23]
  wire [2:0] ftbBank_io_read_resp_brSlots_0_offset; // @[FTB.scala 426:23]
  wire [11:0] ftbBank_io_read_resp_brSlots_0_lower; // @[FTB.scala 426:23]
  wire [1:0] ftbBank_io_read_resp_brSlots_0_tarStat; // @[FTB.scala 426:23]
  wire  ftbBank_io_read_resp_brSlots_0_sharing; // @[FTB.scala 426:23]
  wire  ftbBank_io_read_resp_brSlots_0_valid; // @[FTB.scala 426:23]
  wire  ftbBank_io_read_resp_brSlots_0_sc; // @[FTB.scala 426:23]
  wire [2:0] ftbBank_io_read_resp_tailSlot_offset; // @[FTB.scala 426:23]
  wire [19:0] ftbBank_io_read_resp_tailSlot_lower; // @[FTB.scala 426:23]
  wire [1:0] ftbBank_io_read_resp_tailSlot_tarStat; // @[FTB.scala 426:23]
  wire  ftbBank_io_read_resp_tailSlot_sharing; // @[FTB.scala 426:23]
  wire  ftbBank_io_read_resp_tailSlot_valid; // @[FTB.scala 426:23]
  wire  ftbBank_io_read_resp_tailSlot_sc; // @[FTB.scala 426:23]
  wire [2:0] ftbBank_io_read_resp_pftAddr; // @[FTB.scala 426:23]
  wire  ftbBank_io_read_resp_carry; // @[FTB.scala 426:23]
  wire  ftbBank_io_read_resp_isCall; // @[FTB.scala 426:23]
  wire  ftbBank_io_read_resp_isRet; // @[FTB.scala 426:23]
  wire  ftbBank_io_read_resp_isJalr; // @[FTB.scala 426:23]
  wire  ftbBank_io_read_resp_last_may_be_rvi_call; // @[FTB.scala 426:23]
  wire  ftbBank_io_read_resp_always_taken_0; // @[FTB.scala 426:23]
  wire  ftbBank_io_read_resp_always_taken_1; // @[FTB.scala 426:23]
  wire  ftbBank_io_read_hits_valid; // @[FTB.scala 426:23]
  wire [1:0] ftbBank_io_read_hits_bits; // @[FTB.scala 426:23]
  wire  ftbBank_io_u_req_pc_valid; // @[FTB.scala 426:23]
  wire [38:0] ftbBank_io_u_req_pc_bits; // @[FTB.scala 426:23]
  wire  ftbBank_io_update_hits_valid; // @[FTB.scala 426:23]
  wire [1:0] ftbBank_io_update_hits_bits; // @[FTB.scala 426:23]
  wire  ftbBank_io_update_access; // @[FTB.scala 426:23]
  wire [38:0] ftbBank_io_update_pc; // @[FTB.scala 426:23]
  wire  ftbBank_io_update_write_data_valid; // @[FTB.scala 426:23]
  wire  ftbBank_io_update_write_data_bits_entry_valid; // @[FTB.scala 426:23]
  wire [2:0] ftbBank_io_update_write_data_bits_entry_brSlots_0_offset; // @[FTB.scala 426:23]
  wire [11:0] ftbBank_io_update_write_data_bits_entry_brSlots_0_lower; // @[FTB.scala 426:23]
  wire [1:0] ftbBank_io_update_write_data_bits_entry_brSlots_0_tarStat; // @[FTB.scala 426:23]
  wire  ftbBank_io_update_write_data_bits_entry_brSlots_0_sharing; // @[FTB.scala 426:23]
  wire  ftbBank_io_update_write_data_bits_entry_brSlots_0_valid; // @[FTB.scala 426:23]
  wire  ftbBank_io_update_write_data_bits_entry_brSlots_0_sc; // @[FTB.scala 426:23]
  wire [2:0] ftbBank_io_update_write_data_bits_entry_tailSlot_offset; // @[FTB.scala 426:23]
  wire [19:0] ftbBank_io_update_write_data_bits_entry_tailSlot_lower; // @[FTB.scala 426:23]
  wire [1:0] ftbBank_io_update_write_data_bits_entry_tailSlot_tarStat; // @[FTB.scala 426:23]
  wire  ftbBank_io_update_write_data_bits_entry_tailSlot_sharing; // @[FTB.scala 426:23]
  wire  ftbBank_io_update_write_data_bits_entry_tailSlot_valid; // @[FTB.scala 426:23]
  wire  ftbBank_io_update_write_data_bits_entry_tailSlot_sc; // @[FTB.scala 426:23]
  wire [2:0] ftbBank_io_update_write_data_bits_entry_pftAddr; // @[FTB.scala 426:23]
  wire  ftbBank_io_update_write_data_bits_entry_carry; // @[FTB.scala 426:23]
  wire  ftbBank_io_update_write_data_bits_entry_isCall; // @[FTB.scala 426:23]
  wire  ftbBank_io_update_write_data_bits_entry_isRet; // @[FTB.scala 426:23]
  wire  ftbBank_io_update_write_data_bits_entry_isJalr; // @[FTB.scala 426:23]
  wire  ftbBank_io_update_write_data_bits_entry_last_may_be_rvi_call; // @[FTB.scala 426:23]
  wire  ftbBank_io_update_write_data_bits_entry_always_taken_0; // @[FTB.scala 426:23]
  wire  ftbBank_io_update_write_data_bits_entry_always_taken_1; // @[FTB.scala 426:23]
  wire [19:0] ftbBank_io_update_write_data_bits_tag; // @[FTB.scala 426:23]
  wire [1:0] ftbBank_io_update_write_way; // @[FTB.scala 426:23]
  wire  ftbBank_io_update_write_alloc; // @[FTB.scala 426:23]
  wire  delay2_pc_delay_clock; // @[Hold.scala 97:23]
  wire [38:0] delay2_pc_delay_io_in; // @[Hold.scala 97:23]
  wire [38:0] delay2_pc_delay_io_out; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_clock; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_in_valid; // @[Hold.scala 97:23]
  wire [2:0] delay2_entry_delay_io_in_brSlots_0_offset; // @[Hold.scala 97:23]
  wire [11:0] delay2_entry_delay_io_in_brSlots_0_lower; // @[Hold.scala 97:23]
  wire [1:0] delay2_entry_delay_io_in_brSlots_0_tarStat; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_in_brSlots_0_sharing; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_in_brSlots_0_valid; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_in_brSlots_0_sc; // @[Hold.scala 97:23]
  wire [2:0] delay2_entry_delay_io_in_tailSlot_offset; // @[Hold.scala 97:23]
  wire [19:0] delay2_entry_delay_io_in_tailSlot_lower; // @[Hold.scala 97:23]
  wire [1:0] delay2_entry_delay_io_in_tailSlot_tarStat; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_in_tailSlot_sharing; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_in_tailSlot_valid; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_in_tailSlot_sc; // @[Hold.scala 97:23]
  wire [2:0] delay2_entry_delay_io_in_pftAddr; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_in_carry; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_in_isCall; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_in_isRet; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_in_isJalr; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_in_last_may_be_rvi_call; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_in_always_taken_0; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_in_always_taken_1; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_out_valid; // @[Hold.scala 97:23]
  wire [2:0] delay2_entry_delay_io_out_brSlots_0_offset; // @[Hold.scala 97:23]
  wire [11:0] delay2_entry_delay_io_out_brSlots_0_lower; // @[Hold.scala 97:23]
  wire [1:0] delay2_entry_delay_io_out_brSlots_0_tarStat; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_out_brSlots_0_sharing; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_out_brSlots_0_valid; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_out_brSlots_0_sc; // @[Hold.scala 97:23]
  wire [2:0] delay2_entry_delay_io_out_tailSlot_offset; // @[Hold.scala 97:23]
  wire [19:0] delay2_entry_delay_io_out_tailSlot_lower; // @[Hold.scala 97:23]
  wire [1:0] delay2_entry_delay_io_out_tailSlot_tarStat; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_out_tailSlot_sharing; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_out_tailSlot_valid; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_out_tailSlot_sc; // @[Hold.scala 97:23]
  wire [2:0] delay2_entry_delay_io_out_pftAddr; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_out_carry; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_out_isCall; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_out_isRet; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_out_isJalr; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_out_last_may_be_rvi_call; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_out_always_taken_0; // @[Hold.scala 97:23]
  wire  delay2_entry_delay_io_out_always_taken_1; // @[Hold.scala 97:23]
  wire  write_valid_delay_clock; // @[Hold.scala 97:23]
  wire  write_valid_delay_io_in; // @[Hold.scala 97:23]
  wire  write_valid_delay_io_out; // @[Hold.scala 97:23]
  reg [38:0] s1_pc_dup_0; // @[Reg.scala 16:16]
  reg [38:0] s1_pc_dup_1; // @[Reg.scala 16:16]
  reg [38:0] s1_pc_dup_2; // @[Reg.scala 16:16]
  reg [38:0] s1_pc_dup_3; // @[Reg.scala 16:16]
  reg [38:0] s2_pc_dup_0; // @[Reg.scala 16:16]
  reg [38:0] s2_pc_dup_1; // @[Reg.scala 16:16]
  reg [38:0] s2_pc_dup_2; // @[Reg.scala 16:16]
  reg [38:0] s2_pc_dup_3; // @[Reg.scala 16:16]
  reg [38:0] s3_pc_dup_0; // @[Reg.scala 16:16]
  reg [38:0] s3_pc_dup_1; // @[Reg.scala 16:16]
  reg [38:0] s3_pc_dup_2; // @[Reg.scala 16:16]
  reg [38:0] s3_pc_dup_3; // @[Reg.scala 16:16]
  reg  REG; // @[BPU.scala 191:24]
  reg  REG_1; // @[BPU.scala 191:16]
  reg  s2_ftb_entry_dup_0_valid; // @[Reg.scala 16:16]
  reg [2:0] s2_ftb_entry_dup_0_brSlots_0_offset; // @[Reg.scala 16:16]
  reg [11:0] s2_ftb_entry_dup_0_brSlots_0_lower; // @[Reg.scala 16:16]
  reg [1:0] s2_ftb_entry_dup_0_brSlots_0_tarStat; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_0_brSlots_0_sharing; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_0_brSlots_0_valid; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_0_brSlots_0_sc; // @[Reg.scala 16:16]
  reg [2:0] s2_ftb_entry_dup_0_tailSlot_offset; // @[Reg.scala 16:16]
  reg [19:0] s2_ftb_entry_dup_0_tailSlot_lower; // @[Reg.scala 16:16]
  reg [1:0] s2_ftb_entry_dup_0_tailSlot_tarStat; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_0_tailSlot_sharing; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_0_tailSlot_valid; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_0_tailSlot_sc; // @[Reg.scala 16:16]
  reg [2:0] s2_ftb_entry_dup_0_pftAddr; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_0_carry; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_0_isCall; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_0_isRet; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_0_isJalr; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_0_last_may_be_rvi_call; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_0_always_taken_0; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_0_always_taken_1; // @[Reg.scala 16:16]
  reg [2:0] s2_ftb_entry_dup_1_brSlots_0_offset; // @[Reg.scala 16:16]
  reg [11:0] s2_ftb_entry_dup_1_brSlots_0_lower; // @[Reg.scala 16:16]
  reg [1:0] s2_ftb_entry_dup_1_brSlots_0_tarStat; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_1_brSlots_0_valid; // @[Reg.scala 16:16]
  reg [2:0] s2_ftb_entry_dup_1_tailSlot_offset; // @[Reg.scala 16:16]
  reg [19:0] s2_ftb_entry_dup_1_tailSlot_lower; // @[Reg.scala 16:16]
  reg [1:0] s2_ftb_entry_dup_1_tailSlot_tarStat; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_1_tailSlot_sharing; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_1_tailSlot_valid; // @[Reg.scala 16:16]
  reg [2:0] s2_ftb_entry_dup_1_pftAddr; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_1_carry; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_1_isRet; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_1_isJalr; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_1_always_taken_0; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_1_always_taken_1; // @[Reg.scala 16:16]
  reg [2:0] s2_ftb_entry_dup_2_brSlots_0_offset; // @[Reg.scala 16:16]
  reg [11:0] s2_ftb_entry_dup_2_brSlots_0_lower; // @[Reg.scala 16:16]
  reg [1:0] s2_ftb_entry_dup_2_brSlots_0_tarStat; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_2_brSlots_0_valid; // @[Reg.scala 16:16]
  reg [2:0] s2_ftb_entry_dup_2_tailSlot_offset; // @[Reg.scala 16:16]
  reg [19:0] s2_ftb_entry_dup_2_tailSlot_lower; // @[Reg.scala 16:16]
  reg [1:0] s2_ftb_entry_dup_2_tailSlot_tarStat; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_2_tailSlot_sharing; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_2_tailSlot_valid; // @[Reg.scala 16:16]
  reg [2:0] s2_ftb_entry_dup_2_pftAddr; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_2_carry; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_2_isCall; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_2_isRet; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_2_isJalr; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_2_last_may_be_rvi_call; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_2_always_taken_0; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_2_always_taken_1; // @[Reg.scala 16:16]
  reg [2:0] s2_ftb_entry_dup_3_brSlots_0_offset; // @[Reg.scala 16:16]
  reg [11:0] s2_ftb_entry_dup_3_brSlots_0_lower; // @[Reg.scala 16:16]
  reg [1:0] s2_ftb_entry_dup_3_brSlots_0_tarStat; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_3_brSlots_0_valid; // @[Reg.scala 16:16]
  reg [2:0] s2_ftb_entry_dup_3_tailSlot_offset; // @[Reg.scala 16:16]
  reg [19:0] s2_ftb_entry_dup_3_tailSlot_lower; // @[Reg.scala 16:16]
  reg [1:0] s2_ftb_entry_dup_3_tailSlot_tarStat; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_3_tailSlot_sharing; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_3_tailSlot_valid; // @[Reg.scala 16:16]
  reg [2:0] s2_ftb_entry_dup_3_pftAddr; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_3_carry; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_3_isRet; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_3_isJalr; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_3_always_taken_0; // @[Reg.scala 16:16]
  reg  s2_ftb_entry_dup_3_always_taken_1; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_0_valid; // @[Reg.scala 16:16]
  reg [2:0] s3_ftb_entry_dup_0_brSlots_0_offset; // @[Reg.scala 16:16]
  reg [11:0] s3_ftb_entry_dup_0_brSlots_0_lower; // @[Reg.scala 16:16]
  reg [1:0] s3_ftb_entry_dup_0_brSlots_0_tarStat; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_0_brSlots_0_sharing; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_0_brSlots_0_valid; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_0_brSlots_0_sc; // @[Reg.scala 16:16]
  reg [2:0] s3_ftb_entry_dup_0_tailSlot_offset; // @[Reg.scala 16:16]
  reg [19:0] s3_ftb_entry_dup_0_tailSlot_lower; // @[Reg.scala 16:16]
  reg [1:0] s3_ftb_entry_dup_0_tailSlot_tarStat; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_0_tailSlot_sharing; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_0_tailSlot_valid; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_0_tailSlot_sc; // @[Reg.scala 16:16]
  reg [2:0] s3_ftb_entry_dup_0_pftAddr; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_0_carry; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_0_isCall; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_0_isRet; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_0_isJalr; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_0_last_may_be_rvi_call; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_0_always_taken_0; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_0_always_taken_1; // @[Reg.scala 16:16]
  reg [11:0] s3_ftb_entry_dup_1_brSlots_0_lower; // @[Reg.scala 16:16]
  reg [1:0] s3_ftb_entry_dup_1_brSlots_0_tarStat; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_1_brSlots_0_valid; // @[Reg.scala 16:16]
  reg [19:0] s3_ftb_entry_dup_1_tailSlot_lower; // @[Reg.scala 16:16]
  reg [1:0] s3_ftb_entry_dup_1_tailSlot_tarStat; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_1_tailSlot_sharing; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_1_tailSlot_valid; // @[Reg.scala 16:16]
  reg [2:0] s3_ftb_entry_dup_1_pftAddr; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_1_carry; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_1_isRet; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_1_isJalr; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_1_always_taken_0; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_1_always_taken_1; // @[Reg.scala 16:16]
  reg [11:0] s3_ftb_entry_dup_2_brSlots_0_lower; // @[Reg.scala 16:16]
  reg [1:0] s3_ftb_entry_dup_2_brSlots_0_tarStat; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_2_brSlots_0_valid; // @[Reg.scala 16:16]
  reg [19:0] s3_ftb_entry_dup_2_tailSlot_lower; // @[Reg.scala 16:16]
  reg [1:0] s3_ftb_entry_dup_2_tailSlot_tarStat; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_2_tailSlot_sharing; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_2_tailSlot_valid; // @[Reg.scala 16:16]
  reg [2:0] s3_ftb_entry_dup_2_pftAddr; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_2_carry; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_2_isCall; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_2_isRet; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_2_isJalr; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_2_always_taken_0; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_2_always_taken_1; // @[Reg.scala 16:16]
  reg [2:0] s3_ftb_entry_dup_3_brSlots_0_offset; // @[Reg.scala 16:16]
  reg [11:0] s3_ftb_entry_dup_3_brSlots_0_lower; // @[Reg.scala 16:16]
  reg [1:0] s3_ftb_entry_dup_3_brSlots_0_tarStat; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_3_brSlots_0_valid; // @[Reg.scala 16:16]
  reg [2:0] s3_ftb_entry_dup_3_tailSlot_offset; // @[Reg.scala 16:16]
  reg [19:0] s3_ftb_entry_dup_3_tailSlot_lower; // @[Reg.scala 16:16]
  reg [1:0] s3_ftb_entry_dup_3_tailSlot_tarStat; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_3_tailSlot_sharing; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_3_tailSlot_valid; // @[Reg.scala 16:16]
  reg [2:0] s3_ftb_entry_dup_3_pftAddr; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_3_carry; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_3_isRet; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_3_isJalr; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_3_always_taken_0; // @[Reg.scala 16:16]
  reg  s3_ftb_entry_dup_3_always_taken_1; // @[Reg.scala 16:16]
  wire  s1_hit = ftbBank_io_read_hits_valid & io_ctrl_btb_enable; // @[FTB.scala 435:43]
  reg  s2_hit_dup_0; // @[Reg.scala 16:16]
  reg  s2_hit_dup_1; // @[Reg.scala 16:16]
  reg  s2_hit_dup_2; // @[Reg.scala 16:16]
  reg  s2_hit_dup_3; // @[Reg.scala 16:16]
  reg  s3_hit_dup_0; // @[Reg.scala 16:16]
  reg  s3_hit_dup_1; // @[Reg.scala 16:16]
  reg  s3_hit_dup_2; // @[Reg.scala 16:16]
  reg  s3_hit_dup_3; // @[Reg.scala 16:16]
  wire [25:0] h = s2_pc_dup_0[38:13]; // @[FTB.scala 80:32]
  wire [25:0] last_stage_pc_h = s1_pc_dup_0[38:13]; // @[FTB.scala 89:44]
  reg [25:0] higher_r; // @[Reg.scala 16:16]
  wire [25:0] _higher_plus_one_T_1 = last_stage_pc_h + 26'h1; // @[FTB.scala 92:53]
  reg [25:0] higher_plus_one_r; // @[Reg.scala 16:16]
  wire [25:0] _higher_minus_one_T_1 = last_stage_pc_h - 26'h1; // @[FTB.scala 93:54]
  reg [25:0] higher_minus_one_r; // @[Reg.scala 16:16]
  wire  _target_T = s2_ftb_entry_dup_0_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_1 = s2_ftb_entry_dup_0_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_2 = s2_ftb_entry_dup_0_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_3 = _target_T ? higher_plus_one_r : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_4 = _target_T_1 ? higher_minus_one_r : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_5 = _target_T_2 ? higher_r : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_6 = _target_T_3 | _target_T_4; // @[Mux.scala 27:73]
  wire [25:0] _target_T_7 = _target_T_6 | _target_T_5; // @[Mux.scala 27:73]
  wire [37:0] target_hi = {_target_T_7,s2_ftb_entry_dup_0_brSlots_0_lower}; // @[Cat.scala 31:58]
  reg [25:0] higher_r1; // @[Reg.scala 16:16]
  reg [25:0] higher_plus_one_r1; // @[Reg.scala 16:16]
  reg [25:0] higher_minus_one_r1; // @[Reg.scala 16:16]
  wire  _target_T_9 = s2_ftb_entry_dup_0_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_10 = s2_ftb_entry_dup_0_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_11 = s2_ftb_entry_dup_0_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_12 = _target_T_9 ? higher_plus_one_r1 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_13 = _target_T_10 ? higher_minus_one_r1 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_14 = _target_T_11 ? higher_r1 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_15 = _target_T_12 | _target_T_13; // @[Mux.scala 27:73]
  wire [25:0] _target_T_16 = _target_T_15 | _target_T_14; // @[Mux.scala 27:73]
  wire [38:0] target_1 = {_target_T_16,s2_ftb_entry_dup_0_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] h_2 = s2_pc_dup_0[38:21]; // @[FTB.scala 80:32]
  wire [17:0] last_stage_pc_h_2 = s1_pc_dup_0[38:21]; // @[FTB.scala 89:44]
  reg [17:0] higher_r2; // @[Reg.scala 16:16]
  wire [17:0] _higher_plus_one_T_5 = last_stage_pc_h_2 + 18'h1; // @[FTB.scala 92:53]
  reg [17:0] higher_plus_one_r2; // @[Reg.scala 16:16]
  wire [17:0] _higher_minus_one_T_5 = last_stage_pc_h_2 - 18'h1; // @[FTB.scala 93:54]
  reg [17:0] higher_minus_one_r2; // @[Reg.scala 16:16]
  wire [17:0] _target_T_21 = _target_T_9 ? higher_plus_one_r2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_22 = _target_T_10 ? higher_minus_one_r2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_23 = _target_T_11 ? higher_r2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_24 = _target_T_21 | _target_T_22; // @[Mux.scala 27:73]
  wire [17:0] _target_T_25 = _target_T_24 | _target_T_23; // @[Mux.scala 27:73]
  wire [38:0] target_2 = {_target_T_25,s2_ftb_entry_dup_0_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire [3:0] startLower = {1'h0,s2_pc_dup_0[3:1]}; // @[Cat.scala 31:58]
  wire [3:0] endLowerwithCarry = {s2_ftb_entry_dup_0_carry,s2_ftb_entry_dup_0_pftAddr}; // @[Cat.scala 31:58]
  wire [38:0] _io_out_s2_full_pred_0_fallThroughAddr_T_1 = s2_pc_dup_0 + 39'h10; // @[FrontendBundle.scala 534:47]
  reg  io_out_s2_full_pred_0_fallThroughAddr_stashed_carry; // @[Reg.scala 16:16]
  wire [34:0] io_out_s2_full_pred_0_fallThroughAddr_higher = s2_pc_dup_0[38:4]; // @[BPU.scala 111:28]
  wire [34:0] _io_out_s2_full_pred_0_fallThroughAddr_T_3 = io_out_s2_full_pred_0_fallThroughAddr_higher + 35'h1; // @[BPU.scala 112:26]
  wire [34:0] _io_out_s2_full_pred_0_fallThroughAddr_T_4 = io_out_s2_full_pred_0_fallThroughAddr_stashed_carry ?
    _io_out_s2_full_pred_0_fallThroughAddr_T_3 : io_out_s2_full_pred_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _io_out_s2_full_pred_0_fallThroughAddr_T_5 = {_io_out_s2_full_pred_0_fallThroughAddr_T_4,
    s2_ftb_entry_dup_0_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [25:0] h_3 = s2_pc_dup_1[38:13]; // @[FTB.scala 80:32]
  wire [25:0] last_stage_pc_h_3 = s1_pc_dup_1[38:13]; // @[FTB.scala 89:44]
  reg [25:0] higher_r3; // @[Reg.scala 16:16]
  wire [25:0] _higher_plus_one_T_7 = last_stage_pc_h_3 + 26'h1; // @[FTB.scala 92:53]
  reg [25:0] higher_plus_one_r3; // @[Reg.scala 16:16]
  wire [25:0] _higher_minus_one_T_7 = last_stage_pc_h_3 - 26'h1; // @[FTB.scala 93:54]
  reg [25:0] higher_minus_one_r3; // @[Reg.scala 16:16]
  wire  _target_T_27 = s2_ftb_entry_dup_1_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_28 = s2_ftb_entry_dup_1_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_29 = s2_ftb_entry_dup_1_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_30 = _target_T_27 ? higher_plus_one_r3 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_31 = _target_T_28 ? higher_minus_one_r3 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_32 = _target_T_29 ? higher_r3 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_33 = _target_T_30 | _target_T_31; // @[Mux.scala 27:73]
  wire [25:0] _target_T_34 = _target_T_33 | _target_T_32; // @[Mux.scala 27:73]
  wire [37:0] target_hi_3 = {_target_T_34,s2_ftb_entry_dup_1_brSlots_0_lower}; // @[Cat.scala 31:58]
  reg [25:0] higher_r4; // @[Reg.scala 16:16]
  reg [25:0] higher_plus_one_r4; // @[Reg.scala 16:16]
  reg [25:0] higher_minus_one_r4; // @[Reg.scala 16:16]
  wire  _target_T_36 = s2_ftb_entry_dup_1_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_37 = s2_ftb_entry_dup_1_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_38 = s2_ftb_entry_dup_1_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_39 = _target_T_36 ? higher_plus_one_r4 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_40 = _target_T_37 ? higher_minus_one_r4 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_41 = _target_T_38 ? higher_r4 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_42 = _target_T_39 | _target_T_40; // @[Mux.scala 27:73]
  wire [25:0] _target_T_43 = _target_T_42 | _target_T_41; // @[Mux.scala 27:73]
  wire [38:0] target_4 = {_target_T_43,s2_ftb_entry_dup_1_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] h_5 = s2_pc_dup_1[38:21]; // @[FTB.scala 80:32]
  wire [17:0] last_stage_pc_h_5 = s1_pc_dup_1[38:21]; // @[FTB.scala 89:44]
  reg [17:0] higher_r5; // @[Reg.scala 16:16]
  wire [17:0] _higher_plus_one_T_11 = last_stage_pc_h_5 + 18'h1; // @[FTB.scala 92:53]
  reg [17:0] higher_plus_one_r5; // @[Reg.scala 16:16]
  wire [17:0] _higher_minus_one_T_11 = last_stage_pc_h_5 - 18'h1; // @[FTB.scala 93:54]
  reg [17:0] higher_minus_one_r5; // @[Reg.scala 16:16]
  wire [17:0] _target_T_48 = _target_T_36 ? higher_plus_one_r5 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_49 = _target_T_37 ? higher_minus_one_r5 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_50 = _target_T_38 ? higher_r5 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_51 = _target_T_48 | _target_T_49; // @[Mux.scala 27:73]
  wire [17:0] _target_T_52 = _target_T_51 | _target_T_50; // @[Mux.scala 27:73]
  wire [38:0] target_5 = {_target_T_52,s2_ftb_entry_dup_1_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire [3:0] startLower_1 = {1'h0,s2_pc_dup_1[3:1]}; // @[Cat.scala 31:58]
  wire [3:0] endLowerwithCarry_1 = {s2_ftb_entry_dup_1_carry,s2_ftb_entry_dup_1_pftAddr}; // @[Cat.scala 31:58]
  wire [38:0] _io_out_s2_full_pred_1_fallThroughAddr_T_1 = s2_pc_dup_1 + 39'h10; // @[FrontendBundle.scala 534:47]
  reg  io_out_s2_full_pred_1_fallThroughAddr_stashed_carry; // @[Reg.scala 16:16]
  wire [34:0] io_out_s2_full_pred_1_fallThroughAddr_higher = s2_pc_dup_1[38:4]; // @[BPU.scala 111:28]
  wire [34:0] _io_out_s2_full_pred_1_fallThroughAddr_T_3 = io_out_s2_full_pred_1_fallThroughAddr_higher + 35'h1; // @[BPU.scala 112:26]
  wire [34:0] _io_out_s2_full_pred_1_fallThroughAddr_T_4 = io_out_s2_full_pred_1_fallThroughAddr_stashed_carry ?
    _io_out_s2_full_pred_1_fallThroughAddr_T_3 : io_out_s2_full_pred_1_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _io_out_s2_full_pred_1_fallThroughAddr_T_5 = {_io_out_s2_full_pred_1_fallThroughAddr_T_4,
    s2_ftb_entry_dup_1_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [25:0] h_6 = s2_pc_dup_2[38:13]; // @[FTB.scala 80:32]
  wire [25:0] last_stage_pc_h_6 = s1_pc_dup_2[38:13]; // @[FTB.scala 89:44]
  reg [25:0] higher_r6; // @[Reg.scala 16:16]
  wire [25:0] _higher_plus_one_T_13 = last_stage_pc_h_6 + 26'h1; // @[FTB.scala 92:53]
  reg [25:0] higher_plus_one_r6; // @[Reg.scala 16:16]
  wire [25:0] _higher_minus_one_T_13 = last_stage_pc_h_6 - 26'h1; // @[FTB.scala 93:54]
  reg [25:0] higher_minus_one_r6; // @[Reg.scala 16:16]
  wire  _target_T_54 = s2_ftb_entry_dup_2_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_55 = s2_ftb_entry_dup_2_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_56 = s2_ftb_entry_dup_2_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_57 = _target_T_54 ? higher_plus_one_r6 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_58 = _target_T_55 ? higher_minus_one_r6 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_59 = _target_T_56 ? higher_r6 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_60 = _target_T_57 | _target_T_58; // @[Mux.scala 27:73]
  wire [25:0] _target_T_61 = _target_T_60 | _target_T_59; // @[Mux.scala 27:73]
  wire [37:0] target_hi_6 = {_target_T_61,s2_ftb_entry_dup_2_brSlots_0_lower}; // @[Cat.scala 31:58]
  reg [25:0] higher_r7; // @[Reg.scala 16:16]
  reg [25:0] higher_plus_one_r7; // @[Reg.scala 16:16]
  reg [25:0] higher_minus_one_r7; // @[Reg.scala 16:16]
  wire  _target_T_63 = s2_ftb_entry_dup_2_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_64 = s2_ftb_entry_dup_2_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_65 = s2_ftb_entry_dup_2_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_66 = _target_T_63 ? higher_plus_one_r7 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_67 = _target_T_64 ? higher_minus_one_r7 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_68 = _target_T_65 ? higher_r7 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_69 = _target_T_66 | _target_T_67; // @[Mux.scala 27:73]
  wire [25:0] _target_T_70 = _target_T_69 | _target_T_68; // @[Mux.scala 27:73]
  wire [38:0] target_7 = {_target_T_70,s2_ftb_entry_dup_2_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] h_8 = s2_pc_dup_2[38:21]; // @[FTB.scala 80:32]
  wire [17:0] last_stage_pc_h_8 = s1_pc_dup_2[38:21]; // @[FTB.scala 89:44]
  reg [17:0] higher_r8; // @[Reg.scala 16:16]
  wire [17:0] _higher_plus_one_T_17 = last_stage_pc_h_8 + 18'h1; // @[FTB.scala 92:53]
  reg [17:0] higher_plus_one_r8; // @[Reg.scala 16:16]
  wire [17:0] _higher_minus_one_T_17 = last_stage_pc_h_8 - 18'h1; // @[FTB.scala 93:54]
  reg [17:0] higher_minus_one_r8; // @[Reg.scala 16:16]
  wire [17:0] _target_T_75 = _target_T_63 ? higher_plus_one_r8 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_76 = _target_T_64 ? higher_minus_one_r8 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_77 = _target_T_65 ? higher_r8 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_78 = _target_T_75 | _target_T_76; // @[Mux.scala 27:73]
  wire [17:0] _target_T_79 = _target_T_78 | _target_T_77; // @[Mux.scala 27:73]
  wire [38:0] target_8 = {_target_T_79,s2_ftb_entry_dup_2_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire [3:0] startLower_2 = {1'h0,s2_pc_dup_2[3:1]}; // @[Cat.scala 31:58]
  wire [3:0] endLowerwithCarry_2 = {s2_ftb_entry_dup_2_carry,s2_ftb_entry_dup_2_pftAddr}; // @[Cat.scala 31:58]
  wire [38:0] _io_out_s2_full_pred_2_fallThroughAddr_T_1 = s2_pc_dup_2 + 39'h10; // @[FrontendBundle.scala 534:47]
  reg  io_out_s2_full_pred_2_fallThroughAddr_stashed_carry; // @[Reg.scala 16:16]
  wire [34:0] io_out_s2_full_pred_2_fallThroughAddr_higher = s2_pc_dup_2[38:4]; // @[BPU.scala 111:28]
  wire [34:0] _io_out_s2_full_pred_2_fallThroughAddr_T_3 = io_out_s2_full_pred_2_fallThroughAddr_higher + 35'h1; // @[BPU.scala 112:26]
  wire [34:0] _io_out_s2_full_pred_2_fallThroughAddr_T_4 = io_out_s2_full_pred_2_fallThroughAddr_stashed_carry ?
    _io_out_s2_full_pred_2_fallThroughAddr_T_3 : io_out_s2_full_pred_2_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _io_out_s2_full_pred_2_fallThroughAddr_T_5 = {_io_out_s2_full_pred_2_fallThroughAddr_T_4,
    s2_ftb_entry_dup_2_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [25:0] h_9 = s2_pc_dup_3[38:13]; // @[FTB.scala 80:32]
  wire [25:0] last_stage_pc_h_9 = s1_pc_dup_3[38:13]; // @[FTB.scala 89:44]
  reg [25:0] higher_r9; // @[Reg.scala 16:16]
  wire [25:0] _higher_plus_one_T_19 = last_stage_pc_h_9 + 26'h1; // @[FTB.scala 92:53]
  reg [25:0] higher_plus_one_r9; // @[Reg.scala 16:16]
  wire [25:0] _higher_minus_one_T_19 = last_stage_pc_h_9 - 26'h1; // @[FTB.scala 93:54]
  reg [25:0] higher_minus_one_r9; // @[Reg.scala 16:16]
  wire  _target_T_81 = s2_ftb_entry_dup_3_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_82 = s2_ftb_entry_dup_3_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_83 = s2_ftb_entry_dup_3_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_84 = _target_T_81 ? higher_plus_one_r9 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_85 = _target_T_82 ? higher_minus_one_r9 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_86 = _target_T_83 ? higher_r9 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_87 = _target_T_84 | _target_T_85; // @[Mux.scala 27:73]
  wire [25:0] _target_T_88 = _target_T_87 | _target_T_86; // @[Mux.scala 27:73]
  wire [37:0] target_hi_9 = {_target_T_88,s2_ftb_entry_dup_3_brSlots_0_lower}; // @[Cat.scala 31:58]
  reg [25:0] higher_r10; // @[Reg.scala 16:16]
  reg [25:0] higher_plus_one_r10; // @[Reg.scala 16:16]
  reg [25:0] higher_minus_one_r10; // @[Reg.scala 16:16]
  wire  _target_T_90 = s2_ftb_entry_dup_3_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_91 = s2_ftb_entry_dup_3_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_92 = s2_ftb_entry_dup_3_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_93 = _target_T_90 ? higher_plus_one_r10 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_94 = _target_T_91 ? higher_minus_one_r10 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_95 = _target_T_92 ? higher_r10 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_96 = _target_T_93 | _target_T_94; // @[Mux.scala 27:73]
  wire [25:0] _target_T_97 = _target_T_96 | _target_T_95; // @[Mux.scala 27:73]
  wire [38:0] target_10 = {_target_T_97,s2_ftb_entry_dup_3_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] h_11 = s2_pc_dup_3[38:21]; // @[FTB.scala 80:32]
  wire [17:0] last_stage_pc_h_11 = s1_pc_dup_3[38:21]; // @[FTB.scala 89:44]
  reg [17:0] higher_r11; // @[Reg.scala 16:16]
  wire [17:0] _higher_plus_one_T_23 = last_stage_pc_h_11 + 18'h1; // @[FTB.scala 92:53]
  reg [17:0] higher_plus_one_r11; // @[Reg.scala 16:16]
  wire [17:0] _higher_minus_one_T_23 = last_stage_pc_h_11 - 18'h1; // @[FTB.scala 93:54]
  reg [17:0] higher_minus_one_r11; // @[Reg.scala 16:16]
  wire [17:0] _target_T_102 = _target_T_90 ? higher_plus_one_r11 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_103 = _target_T_91 ? higher_minus_one_r11 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_104 = _target_T_92 ? higher_r11 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_105 = _target_T_102 | _target_T_103; // @[Mux.scala 27:73]
  wire [17:0] _target_T_106 = _target_T_105 | _target_T_104; // @[Mux.scala 27:73]
  wire [38:0] target_11 = {_target_T_106,s2_ftb_entry_dup_3_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire [3:0] startLower_3 = {1'h0,s2_pc_dup_3[3:1]}; // @[Cat.scala 31:58]
  wire [3:0] endLowerwithCarry_3 = {s2_ftb_entry_dup_3_carry,s2_ftb_entry_dup_3_pftAddr}; // @[Cat.scala 31:58]
  wire [38:0] _io_out_s2_full_pred_3_fallThroughAddr_T_1 = s2_pc_dup_3 + 39'h10; // @[FrontendBundle.scala 534:47]
  reg  io_out_s2_full_pred_3_fallThroughAddr_stashed_carry; // @[Reg.scala 16:16]
  wire [34:0] io_out_s2_full_pred_3_fallThroughAddr_higher = s2_pc_dup_3[38:4]; // @[BPU.scala 111:28]
  wire [34:0] _io_out_s2_full_pred_3_fallThroughAddr_T_3 = io_out_s2_full_pred_3_fallThroughAddr_higher + 35'h1; // @[BPU.scala 112:26]
  wire [34:0] _io_out_s2_full_pred_3_fallThroughAddr_T_4 = io_out_s2_full_pred_3_fallThroughAddr_stashed_carry ?
    _io_out_s2_full_pred_3_fallThroughAddr_T_3 : io_out_s2_full_pred_3_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _io_out_s2_full_pred_3_fallThroughAddr_T_5 = {_io_out_s2_full_pred_3_fallThroughAddr_T_4,
    s2_ftb_entry_dup_3_pftAddr,1'h0}; // @[Cat.scala 31:58]
  reg [25:0] higher_r12; // @[Reg.scala 16:16]
  wire [25:0] _higher_plus_one_T_25 = h + 26'h1; // @[FTB.scala 92:53]
  reg [25:0] higher_plus_one_r12; // @[Reg.scala 16:16]
  wire [25:0] _higher_minus_one_T_25 = h - 26'h1; // @[FTB.scala 93:54]
  reg [25:0] higher_minus_one_r12; // @[Reg.scala 16:16]
  wire  _target_T_108 = s3_ftb_entry_dup_0_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_109 = s3_ftb_entry_dup_0_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_110 = s3_ftb_entry_dup_0_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_111 = _target_T_108 ? higher_plus_one_r12 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_112 = _target_T_109 ? higher_minus_one_r12 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_113 = _target_T_110 ? higher_r12 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_114 = _target_T_111 | _target_T_112; // @[Mux.scala 27:73]
  wire [25:0] _target_T_115 = _target_T_114 | _target_T_113; // @[Mux.scala 27:73]
  wire [37:0] target_hi_12 = {_target_T_115,s3_ftb_entry_dup_0_brSlots_0_lower}; // @[Cat.scala 31:58]
  reg [25:0] higher_r13; // @[Reg.scala 16:16]
  reg [25:0] higher_plus_one_r13; // @[Reg.scala 16:16]
  reg [25:0] higher_minus_one_r13; // @[Reg.scala 16:16]
  wire  _target_T_117 = s3_ftb_entry_dup_0_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_118 = s3_ftb_entry_dup_0_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_119 = s3_ftb_entry_dup_0_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_120 = _target_T_117 ? higher_plus_one_r13 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_121 = _target_T_118 ? higher_minus_one_r13 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_122 = _target_T_119 ? higher_r13 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_123 = _target_T_120 | _target_T_121; // @[Mux.scala 27:73]
  wire [25:0] _target_T_124 = _target_T_123 | _target_T_122; // @[Mux.scala 27:73]
  wire [38:0] target_13 = {_target_T_124,s3_ftb_entry_dup_0_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  reg [17:0] higher_r14; // @[Reg.scala 16:16]
  wire [17:0] _higher_plus_one_T_29 = h_2 + 18'h1; // @[FTB.scala 92:53]
  reg [17:0] higher_plus_one_r14; // @[Reg.scala 16:16]
  wire [17:0] _higher_minus_one_T_29 = h_2 - 18'h1; // @[FTB.scala 93:54]
  reg [17:0] higher_minus_one_r14; // @[Reg.scala 16:16]
  wire [17:0] _target_T_129 = _target_T_117 ? higher_plus_one_r14 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_130 = _target_T_118 ? higher_minus_one_r14 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_131 = _target_T_119 ? higher_r14 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_132 = _target_T_129 | _target_T_130; // @[Mux.scala 27:73]
  wire [17:0] _target_T_133 = _target_T_132 | _target_T_131; // @[Mux.scala 27:73]
  wire [38:0] target_14 = {_target_T_133,s3_ftb_entry_dup_0_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire [3:0] startLower_4 = {1'h0,s3_pc_dup_0[3:1]}; // @[Cat.scala 31:58]
  wire [3:0] endLowerwithCarry_4 = {s3_ftb_entry_dup_0_carry,s3_ftb_entry_dup_0_pftAddr}; // @[Cat.scala 31:58]
  wire [38:0] _io_out_s3_full_pred_0_fallThroughAddr_T_1 = s3_pc_dup_0 + 39'h10; // @[FrontendBundle.scala 534:47]
  wire [34:0] io_out_s3_full_pred_0_fallThroughAddr_higher = s3_pc_dup_0[38:4]; // @[BPU.scala 111:28]
  wire [34:0] _io_out_s3_full_pred_0_fallThroughAddr_T_3 = io_out_s3_full_pred_0_fallThroughAddr_higher + 35'h1; // @[BPU.scala 112:26]
  wire [34:0] _io_out_s3_full_pred_0_fallThroughAddr_T_4 = s3_ftb_entry_dup_0_carry ?
    _io_out_s3_full_pred_0_fallThroughAddr_T_3 : io_out_s3_full_pred_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _io_out_s3_full_pred_0_fallThroughAddr_T_5 = {_io_out_s3_full_pred_0_fallThroughAddr_T_4,
    s3_ftb_entry_dup_0_pftAddr,1'h0}; // @[Cat.scala 31:58]
  reg [25:0] higher_r15; // @[Reg.scala 16:16]
  wire [25:0] _higher_plus_one_T_31 = h_3 + 26'h1; // @[FTB.scala 92:53]
  reg [25:0] higher_plus_one_r15; // @[Reg.scala 16:16]
  wire [25:0] _higher_minus_one_T_31 = h_3 - 26'h1; // @[FTB.scala 93:54]
  reg [25:0] higher_minus_one_r15; // @[Reg.scala 16:16]
  wire  _target_T_135 = s3_ftb_entry_dup_1_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_136 = s3_ftb_entry_dup_1_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_137 = s3_ftb_entry_dup_1_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_138 = _target_T_135 ? higher_plus_one_r15 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_139 = _target_T_136 ? higher_minus_one_r15 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_140 = _target_T_137 ? higher_r15 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_141 = _target_T_138 | _target_T_139; // @[Mux.scala 27:73]
  wire [25:0] _target_T_142 = _target_T_141 | _target_T_140; // @[Mux.scala 27:73]
  wire [37:0] target_hi_15 = {_target_T_142,s3_ftb_entry_dup_1_brSlots_0_lower}; // @[Cat.scala 31:58]
  reg [25:0] higher_r16; // @[Reg.scala 16:16]
  reg [25:0] higher_plus_one_r16; // @[Reg.scala 16:16]
  reg [25:0] higher_minus_one_r16; // @[Reg.scala 16:16]
  wire  _target_T_144 = s3_ftb_entry_dup_1_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_145 = s3_ftb_entry_dup_1_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_146 = s3_ftb_entry_dup_1_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_147 = _target_T_144 ? higher_plus_one_r16 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_148 = _target_T_145 ? higher_minus_one_r16 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_149 = _target_T_146 ? higher_r16 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_150 = _target_T_147 | _target_T_148; // @[Mux.scala 27:73]
  wire [25:0] _target_T_151 = _target_T_150 | _target_T_149; // @[Mux.scala 27:73]
  wire [38:0] target_16 = {_target_T_151,s3_ftb_entry_dup_1_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  reg [17:0] higher_r17; // @[Reg.scala 16:16]
  wire [17:0] _higher_plus_one_T_35 = h_5 + 18'h1; // @[FTB.scala 92:53]
  reg [17:0] higher_plus_one_r17; // @[Reg.scala 16:16]
  wire [17:0] _higher_minus_one_T_35 = h_5 - 18'h1; // @[FTB.scala 93:54]
  reg [17:0] higher_minus_one_r17; // @[Reg.scala 16:16]
  wire [17:0] _target_T_156 = _target_T_144 ? higher_plus_one_r17 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_157 = _target_T_145 ? higher_minus_one_r17 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_158 = _target_T_146 ? higher_r17 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_159 = _target_T_156 | _target_T_157; // @[Mux.scala 27:73]
  wire [17:0] _target_T_160 = _target_T_159 | _target_T_158; // @[Mux.scala 27:73]
  wire [38:0] target_17 = {_target_T_160,s3_ftb_entry_dup_1_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire [3:0] startLower_5 = {1'h0,s3_pc_dup_1[3:1]}; // @[Cat.scala 31:58]
  wire [3:0] endLowerwithCarry_5 = {s3_ftb_entry_dup_1_carry,s3_ftb_entry_dup_1_pftAddr}; // @[Cat.scala 31:58]
  wire [38:0] _io_out_s3_full_pred_1_fallThroughAddr_T_1 = s3_pc_dup_1 + 39'h10; // @[FrontendBundle.scala 534:47]
  wire [34:0] io_out_s3_full_pred_1_fallThroughAddr_higher = s3_pc_dup_1[38:4]; // @[BPU.scala 111:28]
  wire [34:0] _io_out_s3_full_pred_1_fallThroughAddr_T_3 = io_out_s3_full_pred_1_fallThroughAddr_higher + 35'h1; // @[BPU.scala 112:26]
  wire [34:0] _io_out_s3_full_pred_1_fallThroughAddr_T_4 = s3_ftb_entry_dup_1_carry ?
    _io_out_s3_full_pred_1_fallThroughAddr_T_3 : io_out_s3_full_pred_1_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _io_out_s3_full_pred_1_fallThroughAddr_T_5 = {_io_out_s3_full_pred_1_fallThroughAddr_T_4,
    s3_ftb_entry_dup_1_pftAddr,1'h0}; // @[Cat.scala 31:58]
  reg [25:0] higher_r18; // @[Reg.scala 16:16]
  wire [25:0] _higher_plus_one_T_37 = h_6 + 26'h1; // @[FTB.scala 92:53]
  reg [25:0] higher_plus_one_r18; // @[Reg.scala 16:16]
  wire [25:0] _higher_minus_one_T_37 = h_6 - 26'h1; // @[FTB.scala 93:54]
  reg [25:0] higher_minus_one_r18; // @[Reg.scala 16:16]
  wire  _target_T_162 = s3_ftb_entry_dup_2_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_163 = s3_ftb_entry_dup_2_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_164 = s3_ftb_entry_dup_2_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_165 = _target_T_162 ? higher_plus_one_r18 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_166 = _target_T_163 ? higher_minus_one_r18 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_167 = _target_T_164 ? higher_r18 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_168 = _target_T_165 | _target_T_166; // @[Mux.scala 27:73]
  wire [25:0] _target_T_169 = _target_T_168 | _target_T_167; // @[Mux.scala 27:73]
  wire [37:0] target_hi_18 = {_target_T_169,s3_ftb_entry_dup_2_brSlots_0_lower}; // @[Cat.scala 31:58]
  reg [25:0] higher_r19; // @[Reg.scala 16:16]
  reg [25:0] higher_plus_one_r19; // @[Reg.scala 16:16]
  reg [25:0] higher_minus_one_r19; // @[Reg.scala 16:16]
  wire  _target_T_171 = s3_ftb_entry_dup_2_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_172 = s3_ftb_entry_dup_2_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_173 = s3_ftb_entry_dup_2_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_174 = _target_T_171 ? higher_plus_one_r19 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_175 = _target_T_172 ? higher_minus_one_r19 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_176 = _target_T_173 ? higher_r19 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_177 = _target_T_174 | _target_T_175; // @[Mux.scala 27:73]
  wire [25:0] _target_T_178 = _target_T_177 | _target_T_176; // @[Mux.scala 27:73]
  wire [38:0] target_19 = {_target_T_178,s3_ftb_entry_dup_2_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  reg [17:0] higher_r20; // @[Reg.scala 16:16]
  wire [17:0] _higher_plus_one_T_41 = h_8 + 18'h1; // @[FTB.scala 92:53]
  reg [17:0] higher_plus_one_r20; // @[Reg.scala 16:16]
  wire [17:0] _higher_minus_one_T_41 = h_8 - 18'h1; // @[FTB.scala 93:54]
  reg [17:0] higher_minus_one_r20; // @[Reg.scala 16:16]
  wire [17:0] _target_T_183 = _target_T_171 ? higher_plus_one_r20 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_184 = _target_T_172 ? higher_minus_one_r20 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_185 = _target_T_173 ? higher_r20 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_186 = _target_T_183 | _target_T_184; // @[Mux.scala 27:73]
  wire [17:0] _target_T_187 = _target_T_186 | _target_T_185; // @[Mux.scala 27:73]
  wire [38:0] target_20 = {_target_T_187,s3_ftb_entry_dup_2_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire [3:0] startLower_6 = {1'h0,s3_pc_dup_2[3:1]}; // @[Cat.scala 31:58]
  wire [3:0] endLowerwithCarry_6 = {s3_ftb_entry_dup_2_carry,s3_ftb_entry_dup_2_pftAddr}; // @[Cat.scala 31:58]
  wire [38:0] _io_out_s3_full_pred_2_fallThroughAddr_T_1 = s3_pc_dup_2 + 39'h10; // @[FrontendBundle.scala 534:47]
  wire [34:0] io_out_s3_full_pred_2_fallThroughAddr_higher = s3_pc_dup_2[38:4]; // @[BPU.scala 111:28]
  wire [34:0] _io_out_s3_full_pred_2_fallThroughAddr_T_3 = io_out_s3_full_pred_2_fallThroughAddr_higher + 35'h1; // @[BPU.scala 112:26]
  wire [34:0] _io_out_s3_full_pred_2_fallThroughAddr_T_4 = s3_ftb_entry_dup_2_carry ?
    _io_out_s3_full_pred_2_fallThroughAddr_T_3 : io_out_s3_full_pred_2_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _io_out_s3_full_pred_2_fallThroughAddr_T_5 = {_io_out_s3_full_pred_2_fallThroughAddr_T_4,
    s3_ftb_entry_dup_2_pftAddr,1'h0}; // @[Cat.scala 31:58]
  reg [25:0] higher_r21; // @[Reg.scala 16:16]
  wire [25:0] _higher_plus_one_T_43 = h_9 + 26'h1; // @[FTB.scala 92:53]
  reg [25:0] higher_plus_one_r21; // @[Reg.scala 16:16]
  wire [25:0] _higher_minus_one_T_43 = h_9 - 26'h1; // @[FTB.scala 93:54]
  reg [25:0] higher_minus_one_r21; // @[Reg.scala 16:16]
  wire  _target_T_189 = s3_ftb_entry_dup_3_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_190 = s3_ftb_entry_dup_3_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_191 = s3_ftb_entry_dup_3_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_192 = _target_T_189 ? higher_plus_one_r21 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_193 = _target_T_190 ? higher_minus_one_r21 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_194 = _target_T_191 ? higher_r21 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_195 = _target_T_192 | _target_T_193; // @[Mux.scala 27:73]
  wire [25:0] _target_T_196 = _target_T_195 | _target_T_194; // @[Mux.scala 27:73]
  wire [37:0] target_hi_21 = {_target_T_196,s3_ftb_entry_dup_3_brSlots_0_lower}; // @[Cat.scala 31:58]
  reg [25:0] higher_r22; // @[Reg.scala 16:16]
  reg [25:0] higher_plus_one_r22; // @[Reg.scala 16:16]
  reg [25:0] higher_minus_one_r22; // @[Reg.scala 16:16]
  wire  _target_T_198 = s3_ftb_entry_dup_3_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_199 = s3_ftb_entry_dup_3_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_200 = s3_ftb_entry_dup_3_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_201 = _target_T_198 ? higher_plus_one_r22 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_202 = _target_T_199 ? higher_minus_one_r22 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_203 = _target_T_200 ? higher_r22 : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_204 = _target_T_201 | _target_T_202; // @[Mux.scala 27:73]
  wire [25:0] _target_T_205 = _target_T_204 | _target_T_203; // @[Mux.scala 27:73]
  wire [38:0] target_22 = {_target_T_205,s3_ftb_entry_dup_3_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  reg [17:0] higher_r23; // @[Reg.scala 16:16]
  wire [17:0] _higher_plus_one_T_47 = h_11 + 18'h1; // @[FTB.scala 92:53]
  reg [17:0] higher_plus_one_r23; // @[Reg.scala 16:16]
  wire [17:0] _higher_minus_one_T_47 = h_11 - 18'h1; // @[FTB.scala 93:54]
  reg [17:0] higher_minus_one_r23; // @[Reg.scala 16:16]
  wire [17:0] _target_T_210 = _target_T_198 ? higher_plus_one_r23 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_211 = _target_T_199 ? higher_minus_one_r23 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_212 = _target_T_200 ? higher_r23 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_213 = _target_T_210 | _target_T_211; // @[Mux.scala 27:73]
  wire [17:0] _target_T_214 = _target_T_213 | _target_T_212; // @[Mux.scala 27:73]
  wire [38:0] target_23 = {_target_T_214,s3_ftb_entry_dup_3_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire [3:0] startLower_7 = {1'h0,s3_pc_dup_3[3:1]}; // @[Cat.scala 31:58]
  wire [3:0] endLowerwithCarry_7 = {s3_ftb_entry_dup_3_carry,s3_ftb_entry_dup_3_pftAddr}; // @[Cat.scala 31:58]
  wire [38:0] _io_out_s3_full_pred_3_fallThroughAddr_T_1 = s3_pc_dup_3 + 39'h10; // @[FrontendBundle.scala 534:47]
  wire [34:0] io_out_s3_full_pred_3_fallThroughAddr_higher = s3_pc_dup_3[38:4]; // @[BPU.scala 111:28]
  wire [34:0] _io_out_s3_full_pred_3_fallThroughAddr_T_3 = io_out_s3_full_pred_3_fallThroughAddr_higher + 35'h1; // @[BPU.scala 112:26]
  wire [34:0] _io_out_s3_full_pred_3_fallThroughAddr_T_4 = s3_ftb_entry_dup_3_carry ?
    _io_out_s3_full_pred_3_fallThroughAddr_T_3 : io_out_s3_full_pred_3_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _io_out_s3_full_pred_3_fallThroughAddr_T_5 = {_io_out_s3_full_pred_3_fallThroughAddr_T_4,
    s3_ftb_entry_dup_3_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] io_out_last_stage_meta_e_writeWay = ftbBank_io_read_hits_bits; // @[FTB.scala 262:17 263:16]
  wire [2:0] _io_out_last_stage_meta_T = {io_out_last_stage_meta_e_writeWay,s1_hit}; // @[FTB.scala 462:100]
  reg [2:0] io_out_last_stage_meta_r; // @[Reg.scala 16:16]
  reg [2:0] io_out_last_stage_meta_r1; // @[Reg.scala 16:16]
  wire  u_meta_hit = io_update_bits_meta[0]; // @[FTB.scala 477:36]
  wire [1:0] u_meta_writeWay = io_update_bits_meta[2:1]; // @[FTB.scala 477:36]
  wire  u_valid = io_update_valid & ~io_update_bits_old_entry; // @[FTB.scala 478:33]
  wire  update_now = u_valid & u_meta_hit; // @[FTB.scala 484:28]
  wire  _update_need_read_T = ~u_meta_hit; // @[FTB.scala 485:37]
  wire  update_need_read = u_valid & ~u_meta_hit; // @[FTB.scala 485:34]
  reg  io_s1_ready_REG; // @[FTB.scala 487:76]
  wire [38:0] _ftb_write_tag_T = update_now ? io_update_bits_pc : delay2_pc_delay_io_out; // @[FTB.scala 496:40]
  reg [1:0] ftbBank_io_update_write_way_REG; // @[FTB.scala 503:76]
  reg  ftbBank_io_update_write_alloc_REG; // @[FTB.scala 504:76]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  DelayN_2 reset_vector_delay ( // @[Hold.scala 97:23]
    .clock(reset_vector_delay_clock),
    .io_in(reset_vector_delay_io_in),
    .io_out(reset_vector_delay_io_out)
  );
  FTBBank ftbBank ( // @[FTB.scala 426:23]
    .clock(ftbBank_clock),
    .reset(ftbBank_reset),
    .io_s1_fire(ftbBank_io_s1_fire),
    .io_req_pc_ready(ftbBank_io_req_pc_ready),
    .io_req_pc_valid(ftbBank_io_req_pc_valid),
    .io_req_pc_bits(ftbBank_io_req_pc_bits),
    .io_read_resp_valid(ftbBank_io_read_resp_valid),
    .io_read_resp_brSlots_0_offset(ftbBank_io_read_resp_brSlots_0_offset),
    .io_read_resp_brSlots_0_lower(ftbBank_io_read_resp_brSlots_0_lower),
    .io_read_resp_brSlots_0_tarStat(ftbBank_io_read_resp_brSlots_0_tarStat),
    .io_read_resp_brSlots_0_sharing(ftbBank_io_read_resp_brSlots_0_sharing),
    .io_read_resp_brSlots_0_valid(ftbBank_io_read_resp_brSlots_0_valid),
    .io_read_resp_brSlots_0_sc(ftbBank_io_read_resp_brSlots_0_sc),
    .io_read_resp_tailSlot_offset(ftbBank_io_read_resp_tailSlot_offset),
    .io_read_resp_tailSlot_lower(ftbBank_io_read_resp_tailSlot_lower),
    .io_read_resp_tailSlot_tarStat(ftbBank_io_read_resp_tailSlot_tarStat),
    .io_read_resp_tailSlot_sharing(ftbBank_io_read_resp_tailSlot_sharing),
    .io_read_resp_tailSlot_valid(ftbBank_io_read_resp_tailSlot_valid),
    .io_read_resp_tailSlot_sc(ftbBank_io_read_resp_tailSlot_sc),
    .io_read_resp_pftAddr(ftbBank_io_read_resp_pftAddr),
    .io_read_resp_carry(ftbBank_io_read_resp_carry),
    .io_read_resp_isCall(ftbBank_io_read_resp_isCall),
    .io_read_resp_isRet(ftbBank_io_read_resp_isRet),
    .io_read_resp_isJalr(ftbBank_io_read_resp_isJalr),
    .io_read_resp_last_may_be_rvi_call(ftbBank_io_read_resp_last_may_be_rvi_call),
    .io_read_resp_always_taken_0(ftbBank_io_read_resp_always_taken_0),
    .io_read_resp_always_taken_1(ftbBank_io_read_resp_always_taken_1),
    .io_read_hits_valid(ftbBank_io_read_hits_valid),
    .io_read_hits_bits(ftbBank_io_read_hits_bits),
    .io_u_req_pc_valid(ftbBank_io_u_req_pc_valid),
    .io_u_req_pc_bits(ftbBank_io_u_req_pc_bits),
    .io_update_hits_valid(ftbBank_io_update_hits_valid),
    .io_update_hits_bits(ftbBank_io_update_hits_bits),
    .io_update_access(ftbBank_io_update_access),
    .io_update_pc(ftbBank_io_update_pc),
    .io_update_write_data_valid(ftbBank_io_update_write_data_valid),
    .io_update_write_data_bits_entry_valid(ftbBank_io_update_write_data_bits_entry_valid),
    .io_update_write_data_bits_entry_brSlots_0_offset(ftbBank_io_update_write_data_bits_entry_brSlots_0_offset),
    .io_update_write_data_bits_entry_brSlots_0_lower(ftbBank_io_update_write_data_bits_entry_brSlots_0_lower),
    .io_update_write_data_bits_entry_brSlots_0_tarStat(ftbBank_io_update_write_data_bits_entry_brSlots_0_tarStat),
    .io_update_write_data_bits_entry_brSlots_0_sharing(ftbBank_io_update_write_data_bits_entry_brSlots_0_sharing),
    .io_update_write_data_bits_entry_brSlots_0_valid(ftbBank_io_update_write_data_bits_entry_brSlots_0_valid),
    .io_update_write_data_bits_entry_brSlots_0_sc(ftbBank_io_update_write_data_bits_entry_brSlots_0_sc),
    .io_update_write_data_bits_entry_tailSlot_offset(ftbBank_io_update_write_data_bits_entry_tailSlot_offset),
    .io_update_write_data_bits_entry_tailSlot_lower(ftbBank_io_update_write_data_bits_entry_tailSlot_lower),
    .io_update_write_data_bits_entry_tailSlot_tarStat(ftbBank_io_update_write_data_bits_entry_tailSlot_tarStat),
    .io_update_write_data_bits_entry_tailSlot_sharing(ftbBank_io_update_write_data_bits_entry_tailSlot_sharing),
    .io_update_write_data_bits_entry_tailSlot_valid(ftbBank_io_update_write_data_bits_entry_tailSlot_valid),
    .io_update_write_data_bits_entry_tailSlot_sc(ftbBank_io_update_write_data_bits_entry_tailSlot_sc),
    .io_update_write_data_bits_entry_pftAddr(ftbBank_io_update_write_data_bits_entry_pftAddr),
    .io_update_write_data_bits_entry_carry(ftbBank_io_update_write_data_bits_entry_carry),
    .io_update_write_data_bits_entry_isCall(ftbBank_io_update_write_data_bits_entry_isCall),
    .io_update_write_data_bits_entry_isRet(ftbBank_io_update_write_data_bits_entry_isRet),
    .io_update_write_data_bits_entry_isJalr(ftbBank_io_update_write_data_bits_entry_isJalr),
    .io_update_write_data_bits_entry_last_may_be_rvi_call(ftbBank_io_update_write_data_bits_entry_last_may_be_rvi_call),
    .io_update_write_data_bits_entry_always_taken_0(ftbBank_io_update_write_data_bits_entry_always_taken_0),
    .io_update_write_data_bits_entry_always_taken_1(ftbBank_io_update_write_data_bits_entry_always_taken_1),
    .io_update_write_data_bits_tag(ftbBank_io_update_write_data_bits_tag),
    .io_update_write_way(ftbBank_io_update_write_way),
    .io_update_write_alloc(ftbBank_io_update_write_alloc)
  );
  DelayN_4 delay2_pc_delay ( // @[Hold.scala 97:23]
    .clock(delay2_pc_delay_clock),
    .io_in(delay2_pc_delay_io_in),
    .io_out(delay2_pc_delay_io_out)
  );
  DelayN_5 delay2_entry_delay ( // @[Hold.scala 97:23]
    .clock(delay2_entry_delay_clock),
    .io_in_valid(delay2_entry_delay_io_in_valid),
    .io_in_brSlots_0_offset(delay2_entry_delay_io_in_brSlots_0_offset),
    .io_in_brSlots_0_lower(delay2_entry_delay_io_in_brSlots_0_lower),
    .io_in_brSlots_0_tarStat(delay2_entry_delay_io_in_brSlots_0_tarStat),
    .io_in_brSlots_0_sharing(delay2_entry_delay_io_in_brSlots_0_sharing),
    .io_in_brSlots_0_valid(delay2_entry_delay_io_in_brSlots_0_valid),
    .io_in_brSlots_0_sc(delay2_entry_delay_io_in_brSlots_0_sc),
    .io_in_tailSlot_offset(delay2_entry_delay_io_in_tailSlot_offset),
    .io_in_tailSlot_lower(delay2_entry_delay_io_in_tailSlot_lower),
    .io_in_tailSlot_tarStat(delay2_entry_delay_io_in_tailSlot_tarStat),
    .io_in_tailSlot_sharing(delay2_entry_delay_io_in_tailSlot_sharing),
    .io_in_tailSlot_valid(delay2_entry_delay_io_in_tailSlot_valid),
    .io_in_tailSlot_sc(delay2_entry_delay_io_in_tailSlot_sc),
    .io_in_pftAddr(delay2_entry_delay_io_in_pftAddr),
    .io_in_carry(delay2_entry_delay_io_in_carry),
    .io_in_isCall(delay2_entry_delay_io_in_isCall),
    .io_in_isRet(delay2_entry_delay_io_in_isRet),
    .io_in_isJalr(delay2_entry_delay_io_in_isJalr),
    .io_in_last_may_be_rvi_call(delay2_entry_delay_io_in_last_may_be_rvi_call),
    .io_in_always_taken_0(delay2_entry_delay_io_in_always_taken_0),
    .io_in_always_taken_1(delay2_entry_delay_io_in_always_taken_1),
    .io_out_valid(delay2_entry_delay_io_out_valid),
    .io_out_brSlots_0_offset(delay2_entry_delay_io_out_brSlots_0_offset),
    .io_out_brSlots_0_lower(delay2_entry_delay_io_out_brSlots_0_lower),
    .io_out_brSlots_0_tarStat(delay2_entry_delay_io_out_brSlots_0_tarStat),
    .io_out_brSlots_0_sharing(delay2_entry_delay_io_out_brSlots_0_sharing),
    .io_out_brSlots_0_valid(delay2_entry_delay_io_out_brSlots_0_valid),
    .io_out_brSlots_0_sc(delay2_entry_delay_io_out_brSlots_0_sc),
    .io_out_tailSlot_offset(delay2_entry_delay_io_out_tailSlot_offset),
    .io_out_tailSlot_lower(delay2_entry_delay_io_out_tailSlot_lower),
    .io_out_tailSlot_tarStat(delay2_entry_delay_io_out_tailSlot_tarStat),
    .io_out_tailSlot_sharing(delay2_entry_delay_io_out_tailSlot_sharing),
    .io_out_tailSlot_valid(delay2_entry_delay_io_out_tailSlot_valid),
    .io_out_tailSlot_sc(delay2_entry_delay_io_out_tailSlot_sc),
    .io_out_pftAddr(delay2_entry_delay_io_out_pftAddr),
    .io_out_carry(delay2_entry_delay_io_out_carry),
    .io_out_isCall(delay2_entry_delay_io_out_isCall),
    .io_out_isRet(delay2_entry_delay_io_out_isRet),
    .io_out_isJalr(delay2_entry_delay_io_out_isJalr),
    .io_out_last_may_be_rvi_call(delay2_entry_delay_io_out_last_may_be_rvi_call),
    .io_out_always_taken_0(delay2_entry_delay_io_out_always_taken_0),
    .io_out_always_taken_1(delay2_entry_delay_io_out_always_taken_1)
  );
  DelayN_6 write_valid_delay ( // @[Hold.scala 97:23]
    .clock(write_valid_delay_clock),
    .io_in(write_valid_delay_io_in),
    .io_out(write_valid_delay_io_out)
  );
  assign io_out_s2_full_pred_0_br_taken_mask_0 = io_in_bits_resp_in_0_s2_full_pred_0_br_taken_mask_0 | s2_hit_dup_0 &
    s2_ftb_entry_dup_0_always_taken_0; // @[FTB.scala 468:57]
  assign io_out_s2_full_pred_0_br_taken_mask_1 = io_in_bits_resp_in_0_s2_full_pred_0_br_taken_mask_1 | s2_hit_dup_0 &
    s2_ftb_entry_dup_0_always_taken_1; // @[FTB.scala 468:57]
  assign io_out_s2_full_pred_0_slot_valids_0 = s2_ftb_entry_dup_0_brSlots_0_valid; // @[FrontendBundle.scala 520:17]
  assign io_out_s2_full_pred_0_slot_valids_1 = s2_ftb_entry_dup_0_tailSlot_valid; // @[FrontendBundle.scala 520:17]
  assign io_out_s2_full_pred_0_targets_0 = {target_hi,1'h0}; // @[Cat.scala 31:58]
  assign io_out_s2_full_pred_0_targets_1 = s2_ftb_entry_dup_0_tailSlot_sharing ? target_1 : target_2; // @[FTB.scala 113:10]
  assign io_out_s2_full_pred_0_jalr_target = io_out_s2_full_pred_0_targets_1; // @[FrontendBundle.scala 522:17]
  assign io_out_s2_full_pred_0_offsets_0 = s2_ftb_entry_dup_0_brSlots_0_offset; // @[FTB.scala 177:{29,29}]
  assign io_out_s2_full_pred_0_offsets_1 = s2_ftb_entry_dup_0_tailSlot_offset; // @[FTB.scala 177:{29,29}]
  assign io_out_s2_full_pred_0_fallThroughAddr = io_out_s2_full_pred_0_fallThroughErr ?
    _io_out_s2_full_pred_0_fallThroughAddr_T_1 : _io_out_s2_full_pred_0_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  assign io_out_s2_full_pred_0_fallThroughErr = startLower >= endLowerwithCarry; // @[FrontendBundle.scala 533:34]
  assign io_out_s2_full_pred_0_is_jalr = s2_ftb_entry_dup_0_tailSlot_valid & s2_ftb_entry_dup_0_isJalr; // @[FrontendBundle.scala 525:37]
  assign io_out_s2_full_pred_0_is_ret = s2_ftb_entry_dup_0_tailSlot_valid & s2_ftb_entry_dup_0_isRet; // @[FrontendBundle.scala 527:36]
  assign io_out_s2_full_pred_0_is_br_sharing = s2_ftb_entry_dup_0_tailSlot_valid & s2_ftb_entry_dup_0_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  assign io_out_s2_full_pred_0_hit = s2_hit_dup_0; // @[FTB.scala 443:67]
  assign io_out_s2_full_pred_1_br_taken_mask_0 = io_in_bits_resp_in_0_s2_full_pred_1_br_taken_mask_0 | s2_hit_dup_1 &
    s2_ftb_entry_dup_1_always_taken_0; // @[FTB.scala 468:57]
  assign io_out_s2_full_pred_1_br_taken_mask_1 = io_in_bits_resp_in_0_s2_full_pred_1_br_taken_mask_1 | s2_hit_dup_1 &
    s2_ftb_entry_dup_1_always_taken_1; // @[FTB.scala 468:57]
  assign io_out_s2_full_pred_1_slot_valids_0 = s2_ftb_entry_dup_1_brSlots_0_valid; // @[FrontendBundle.scala 520:17]
  assign io_out_s2_full_pred_1_slot_valids_1 = s2_ftb_entry_dup_1_tailSlot_valid; // @[FrontendBundle.scala 520:17]
  assign io_out_s2_full_pred_1_targets_0 = {target_hi_3,1'h0}; // @[Cat.scala 31:58]
  assign io_out_s2_full_pred_1_targets_1 = s2_ftb_entry_dup_1_tailSlot_sharing ? target_4 : target_5; // @[FTB.scala 113:10]
  assign io_out_s2_full_pred_1_jalr_target = io_out_s2_full_pred_1_targets_1; // @[FrontendBundle.scala 522:17]
  assign io_out_s2_full_pred_1_offsets_0 = s2_ftb_entry_dup_1_brSlots_0_offset; // @[FTB.scala 177:{29,29}]
  assign io_out_s2_full_pred_1_offsets_1 = s2_ftb_entry_dup_1_tailSlot_offset; // @[FTB.scala 177:{29,29}]
  assign io_out_s2_full_pred_1_fallThroughAddr = io_out_s2_full_pred_1_fallThroughErr ?
    _io_out_s2_full_pred_1_fallThroughAddr_T_1 : _io_out_s2_full_pred_1_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  assign io_out_s2_full_pred_1_fallThroughErr = startLower_1 >= endLowerwithCarry_1; // @[FrontendBundle.scala 533:34]
  assign io_out_s2_full_pred_1_is_jalr = s2_ftb_entry_dup_1_tailSlot_valid & s2_ftb_entry_dup_1_isJalr; // @[FrontendBundle.scala 525:37]
  assign io_out_s2_full_pred_1_is_ret = s2_ftb_entry_dup_1_tailSlot_valid & s2_ftb_entry_dup_1_isRet; // @[FrontendBundle.scala 527:36]
  assign io_out_s2_full_pred_1_is_br_sharing = s2_ftb_entry_dup_1_tailSlot_valid & s2_ftb_entry_dup_1_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  assign io_out_s2_full_pred_1_hit = s2_hit_dup_1; // @[FTB.scala 443:67]
  assign io_out_s2_full_pred_2_br_taken_mask_0 = io_in_bits_resp_in_0_s2_full_pred_2_br_taken_mask_0 | s2_hit_dup_2 &
    s2_ftb_entry_dup_2_always_taken_0; // @[FTB.scala 468:57]
  assign io_out_s2_full_pred_2_br_taken_mask_1 = io_in_bits_resp_in_0_s2_full_pred_2_br_taken_mask_1 | s2_hit_dup_2 &
    s2_ftb_entry_dup_2_always_taken_1; // @[FTB.scala 468:57]
  assign io_out_s2_full_pred_2_slot_valids_0 = s2_ftb_entry_dup_2_brSlots_0_valid; // @[FrontendBundle.scala 520:17]
  assign io_out_s2_full_pred_2_slot_valids_1 = s2_ftb_entry_dup_2_tailSlot_valid; // @[FrontendBundle.scala 520:17]
  assign io_out_s2_full_pred_2_targets_0 = {target_hi_6,1'h0}; // @[Cat.scala 31:58]
  assign io_out_s2_full_pred_2_targets_1 = s2_ftb_entry_dup_2_tailSlot_sharing ? target_7 : target_8; // @[FTB.scala 113:10]
  assign io_out_s2_full_pred_2_jalr_target = io_out_s2_full_pred_2_targets_1; // @[FrontendBundle.scala 522:17]
  assign io_out_s2_full_pred_2_offsets_0 = s2_ftb_entry_dup_2_brSlots_0_offset; // @[FTB.scala 177:{29,29}]
  assign io_out_s2_full_pred_2_offsets_1 = s2_ftb_entry_dup_2_tailSlot_offset; // @[FTB.scala 177:{29,29}]
  assign io_out_s2_full_pred_2_fallThroughAddr = io_out_s2_full_pred_2_fallThroughErr ?
    _io_out_s2_full_pred_2_fallThroughAddr_T_1 : _io_out_s2_full_pred_2_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  assign io_out_s2_full_pred_2_fallThroughErr = startLower_2 >= endLowerwithCarry_2; // @[FrontendBundle.scala 533:34]
  assign io_out_s2_full_pred_2_is_jalr = s2_ftb_entry_dup_2_tailSlot_valid & s2_ftb_entry_dup_2_isJalr; // @[FrontendBundle.scala 525:37]
  assign io_out_s2_full_pred_2_is_call = s2_ftb_entry_dup_2_tailSlot_valid & s2_ftb_entry_dup_2_isCall; // @[FrontendBundle.scala 526:37]
  assign io_out_s2_full_pred_2_is_ret = s2_ftb_entry_dup_2_tailSlot_valid & s2_ftb_entry_dup_2_isRet; // @[FrontendBundle.scala 527:36]
  assign io_out_s2_full_pred_2_last_may_be_rvi_call = s2_ftb_entry_dup_2_last_may_be_rvi_call; // @[FrontendBundle.scala 528:26]
  assign io_out_s2_full_pred_2_is_br_sharing = s2_ftb_entry_dup_2_tailSlot_valid & s2_ftb_entry_dup_2_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  assign io_out_s2_full_pred_2_hit = s2_hit_dup_2; // @[FTB.scala 443:67]
  assign io_out_s2_full_pred_3_br_taken_mask_0 = io_in_bits_resp_in_0_s2_full_pred_3_br_taken_mask_0 | s2_hit_dup_3 &
    s2_ftb_entry_dup_3_always_taken_0; // @[FTB.scala 468:57]
  assign io_out_s2_full_pred_3_br_taken_mask_1 = io_in_bits_resp_in_0_s2_full_pred_3_br_taken_mask_1 | s2_hit_dup_3 &
    s2_ftb_entry_dup_3_always_taken_1; // @[FTB.scala 468:57]
  assign io_out_s2_full_pred_3_slot_valids_0 = s2_ftb_entry_dup_3_brSlots_0_valid; // @[FrontendBundle.scala 520:17]
  assign io_out_s2_full_pred_3_slot_valids_1 = s2_ftb_entry_dup_3_tailSlot_valid; // @[FrontendBundle.scala 520:17]
  assign io_out_s2_full_pred_3_targets_0 = {target_hi_9,1'h0}; // @[Cat.scala 31:58]
  assign io_out_s2_full_pred_3_targets_1 = s2_ftb_entry_dup_3_tailSlot_sharing ? target_10 : target_11; // @[FTB.scala 113:10]
  assign io_out_s2_full_pred_3_jalr_target = io_out_s2_full_pred_3_targets_1; // @[FrontendBundle.scala 522:17]
  assign io_out_s2_full_pred_3_offsets_0 = s2_ftb_entry_dup_3_brSlots_0_offset; // @[FTB.scala 177:{29,29}]
  assign io_out_s2_full_pred_3_offsets_1 = s2_ftb_entry_dup_3_tailSlot_offset; // @[FTB.scala 177:{29,29}]
  assign io_out_s2_full_pred_3_fallThroughAddr = io_out_s2_full_pred_3_fallThroughErr ?
    _io_out_s2_full_pred_3_fallThroughAddr_T_1 : _io_out_s2_full_pred_3_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  assign io_out_s2_full_pred_3_fallThroughErr = startLower_3 >= endLowerwithCarry_3; // @[FrontendBundle.scala 533:34]
  assign io_out_s2_full_pred_3_is_jalr = s2_ftb_entry_dup_3_tailSlot_valid & s2_ftb_entry_dup_3_isJalr; // @[FrontendBundle.scala 525:37]
  assign io_out_s2_full_pred_3_is_ret = s2_ftb_entry_dup_3_tailSlot_valid & s2_ftb_entry_dup_3_isRet; // @[FrontendBundle.scala 527:36]
  assign io_out_s2_full_pred_3_is_br_sharing = s2_ftb_entry_dup_3_tailSlot_valid & s2_ftb_entry_dup_3_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  assign io_out_s2_full_pred_3_hit = s2_hit_dup_3; // @[FTB.scala 443:67]
  assign io_out_s3_full_pred_0_br_taken_mask_0 = io_in_bits_resp_in_0_s3_full_pred_0_br_taken_mask_0 | s3_hit_dup_0 &
    s3_ftb_entry_dup_0_always_taken_0; // @[FTB.scala 471:57]
  assign io_out_s3_full_pred_0_br_taken_mask_1 = io_in_bits_resp_in_0_s3_full_pred_0_br_taken_mask_1 | s3_hit_dup_0 &
    s3_ftb_entry_dup_0_always_taken_1; // @[FTB.scala 471:57]
  assign io_out_s3_full_pred_0_slot_valids_0 = s3_ftb_entry_dup_0_brSlots_0_valid; // @[FrontendBundle.scala 520:17]
  assign io_out_s3_full_pred_0_slot_valids_1 = s3_ftb_entry_dup_0_tailSlot_valid; // @[FrontendBundle.scala 520:17]
  assign io_out_s3_full_pred_0_targets_0 = {target_hi_12,1'h0}; // @[Cat.scala 31:58]
  assign io_out_s3_full_pred_0_targets_1 = s3_ftb_entry_dup_0_tailSlot_sharing ? target_13 : target_14; // @[FTB.scala 113:10]
  assign io_out_s3_full_pred_0_jalr_target = io_out_s3_full_pred_0_targets_1; // @[FrontendBundle.scala 522:17]
  assign io_out_s3_full_pred_0_fallThroughAddr = io_out_s3_full_pred_0_fallThroughErr ?
    _io_out_s3_full_pred_0_fallThroughAddr_T_1 : _io_out_s3_full_pred_0_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  assign io_out_s3_full_pred_0_fallThroughErr = startLower_4 >= endLowerwithCarry_4; // @[FrontendBundle.scala 533:34]
  assign io_out_s3_full_pred_0_is_jalr = s3_ftb_entry_dup_0_tailSlot_valid & s3_ftb_entry_dup_0_isJalr; // @[FrontendBundle.scala 525:37]
  assign io_out_s3_full_pred_0_is_ret = s3_ftb_entry_dup_0_tailSlot_valid & s3_ftb_entry_dup_0_isRet; // @[FrontendBundle.scala 527:36]
  assign io_out_s3_full_pred_0_is_br_sharing = s3_ftb_entry_dup_0_tailSlot_valid & s3_ftb_entry_dup_0_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  assign io_out_s3_full_pred_0_hit = s3_hit_dup_0; // @[FTB.scala 455:67]
  assign io_out_s3_full_pred_1_br_taken_mask_0 = io_in_bits_resp_in_0_s3_full_pred_1_br_taken_mask_0 | s3_hit_dup_1 &
    s3_ftb_entry_dup_1_always_taken_0; // @[FTB.scala 471:57]
  assign io_out_s3_full_pred_1_br_taken_mask_1 = io_in_bits_resp_in_0_s3_full_pred_1_br_taken_mask_1 | s3_hit_dup_1 &
    s3_ftb_entry_dup_1_always_taken_1; // @[FTB.scala 471:57]
  assign io_out_s3_full_pred_1_slot_valids_0 = s3_ftb_entry_dup_1_brSlots_0_valid; // @[FrontendBundle.scala 520:17]
  assign io_out_s3_full_pred_1_slot_valids_1 = s3_ftb_entry_dup_1_tailSlot_valid; // @[FrontendBundle.scala 520:17]
  assign io_out_s3_full_pred_1_targets_0 = {target_hi_15,1'h0}; // @[Cat.scala 31:58]
  assign io_out_s3_full_pred_1_targets_1 = s3_ftb_entry_dup_1_tailSlot_sharing ? target_16 : target_17; // @[FTB.scala 113:10]
  assign io_out_s3_full_pred_1_jalr_target = io_out_s3_full_pred_1_targets_1; // @[FrontendBundle.scala 522:17]
  assign io_out_s3_full_pred_1_fallThroughAddr = io_out_s3_full_pred_1_fallThroughErr ?
    _io_out_s3_full_pred_1_fallThroughAddr_T_1 : _io_out_s3_full_pred_1_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  assign io_out_s3_full_pred_1_fallThroughErr = startLower_5 >= endLowerwithCarry_5; // @[FrontendBundle.scala 533:34]
  assign io_out_s3_full_pred_1_is_jalr = s3_ftb_entry_dup_1_tailSlot_valid & s3_ftb_entry_dup_1_isJalr; // @[FrontendBundle.scala 525:37]
  assign io_out_s3_full_pred_1_is_ret = s3_ftb_entry_dup_1_tailSlot_valid & s3_ftb_entry_dup_1_isRet; // @[FrontendBundle.scala 527:36]
  assign io_out_s3_full_pred_1_is_br_sharing = s3_ftb_entry_dup_1_tailSlot_valid & s3_ftb_entry_dup_1_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  assign io_out_s3_full_pred_1_hit = s3_hit_dup_1; // @[FTB.scala 455:67]
  assign io_out_s3_full_pred_2_br_taken_mask_0 = io_in_bits_resp_in_0_s3_full_pred_2_br_taken_mask_0 | s3_hit_dup_2 &
    s3_ftb_entry_dup_2_always_taken_0; // @[FTB.scala 471:57]
  assign io_out_s3_full_pred_2_br_taken_mask_1 = io_in_bits_resp_in_0_s3_full_pred_2_br_taken_mask_1 | s3_hit_dup_2 &
    s3_ftb_entry_dup_2_always_taken_1; // @[FTB.scala 471:57]
  assign io_out_s3_full_pred_2_slot_valids_0 = s3_ftb_entry_dup_2_brSlots_0_valid; // @[FrontendBundle.scala 520:17]
  assign io_out_s3_full_pred_2_slot_valids_1 = s3_ftb_entry_dup_2_tailSlot_valid; // @[FrontendBundle.scala 520:17]
  assign io_out_s3_full_pred_2_targets_0 = {target_hi_18,1'h0}; // @[Cat.scala 31:58]
  assign io_out_s3_full_pred_2_targets_1 = s3_ftb_entry_dup_2_tailSlot_sharing ? target_19 : target_20; // @[FTB.scala 113:10]
  assign io_out_s3_full_pred_2_jalr_target = io_out_s3_full_pred_2_targets_1; // @[FrontendBundle.scala 522:17]
  assign io_out_s3_full_pred_2_fallThroughAddr = io_out_s3_full_pred_2_fallThroughErr ?
    _io_out_s3_full_pred_2_fallThroughAddr_T_1 : _io_out_s3_full_pred_2_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  assign io_out_s3_full_pred_2_fallThroughErr = startLower_6 >= endLowerwithCarry_6; // @[FrontendBundle.scala 533:34]
  assign io_out_s3_full_pred_2_is_jalr = s3_ftb_entry_dup_2_tailSlot_valid & s3_ftb_entry_dup_2_isJalr; // @[FrontendBundle.scala 525:37]
  assign io_out_s3_full_pred_2_is_call = s3_ftb_entry_dup_2_tailSlot_valid & s3_ftb_entry_dup_2_isCall; // @[FrontendBundle.scala 526:37]
  assign io_out_s3_full_pred_2_is_ret = s3_ftb_entry_dup_2_tailSlot_valid & s3_ftb_entry_dup_2_isRet; // @[FrontendBundle.scala 527:36]
  assign io_out_s3_full_pred_2_is_br_sharing = s3_ftb_entry_dup_2_tailSlot_valid & s3_ftb_entry_dup_2_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  assign io_out_s3_full_pred_2_hit = s3_hit_dup_2; // @[FTB.scala 455:67]
  assign io_out_s3_full_pred_3_br_taken_mask_0 = io_in_bits_resp_in_0_s3_full_pred_3_br_taken_mask_0 | s3_hit_dup_3 &
    s3_ftb_entry_dup_3_always_taken_0; // @[FTB.scala 471:57]
  assign io_out_s3_full_pred_3_br_taken_mask_1 = io_in_bits_resp_in_0_s3_full_pred_3_br_taken_mask_1 | s3_hit_dup_3 &
    s3_ftb_entry_dup_3_always_taken_1; // @[FTB.scala 471:57]
  assign io_out_s3_full_pred_3_slot_valids_0 = s3_ftb_entry_dup_3_brSlots_0_valid; // @[FrontendBundle.scala 520:17]
  assign io_out_s3_full_pred_3_slot_valids_1 = s3_ftb_entry_dup_3_tailSlot_valid; // @[FrontendBundle.scala 520:17]
  assign io_out_s3_full_pred_3_targets_0 = {target_hi_21,1'h0}; // @[Cat.scala 31:58]
  assign io_out_s3_full_pred_3_targets_1 = s3_ftb_entry_dup_3_tailSlot_sharing ? target_22 : target_23; // @[FTB.scala 113:10]
  assign io_out_s3_full_pred_3_jalr_target = io_out_s3_full_pred_3_targets_1; // @[FrontendBundle.scala 522:17]
  assign io_out_s3_full_pred_3_offsets_0 = s3_ftb_entry_dup_3_brSlots_0_offset; // @[FTB.scala 177:{29,29}]
  assign io_out_s3_full_pred_3_offsets_1 = s3_ftb_entry_dup_3_tailSlot_offset; // @[FTB.scala 177:{29,29}]
  assign io_out_s3_full_pred_3_fallThroughAddr = io_out_s3_full_pred_3_fallThroughErr ?
    _io_out_s3_full_pred_3_fallThroughAddr_T_1 : _io_out_s3_full_pred_3_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  assign io_out_s3_full_pred_3_fallThroughErr = startLower_7 >= endLowerwithCarry_7; // @[FrontendBundle.scala 533:34]
  assign io_out_s3_full_pred_3_is_jalr = s3_ftb_entry_dup_3_tailSlot_valid & s3_ftb_entry_dup_3_isJalr; // @[FrontendBundle.scala 525:37]
  assign io_out_s3_full_pred_3_is_ret = s3_ftb_entry_dup_3_tailSlot_valid & s3_ftb_entry_dup_3_isRet; // @[FrontendBundle.scala 527:36]
  assign io_out_s3_full_pred_3_is_br_sharing = s3_ftb_entry_dup_3_tailSlot_valid & s3_ftb_entry_dup_3_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  assign io_out_s3_full_pred_3_hit = s3_hit_dup_3; // @[FTB.scala 455:67]
  assign io_out_last_stage_meta = {{253'd0}, io_out_last_stage_meta_r1}; // @[FTB.scala 462:26]
  assign io_out_last_stage_ftb_entry_valid = s3_ftb_entry_dup_0_valid; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_brSlots_0_offset = s3_ftb_entry_dup_0_brSlots_0_offset; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_brSlots_0_lower = s3_ftb_entry_dup_0_brSlots_0_lower; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_brSlots_0_tarStat = s3_ftb_entry_dup_0_brSlots_0_tarStat; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_brSlots_0_sharing = s3_ftb_entry_dup_0_brSlots_0_sharing; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_brSlots_0_valid = s3_ftb_entry_dup_0_brSlots_0_valid; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_brSlots_0_sc = s3_ftb_entry_dup_0_brSlots_0_sc; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_tailSlot_offset = s3_ftb_entry_dup_0_tailSlot_offset; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_tailSlot_lower = s3_ftb_entry_dup_0_tailSlot_lower; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_tailSlot_tarStat = s3_ftb_entry_dup_0_tailSlot_tarStat; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_tailSlot_sharing = s3_ftb_entry_dup_0_tailSlot_sharing; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_tailSlot_valid = s3_ftb_entry_dup_0_tailSlot_valid; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_tailSlot_sc = s3_ftb_entry_dup_0_tailSlot_sc; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_pftAddr = s3_ftb_entry_dup_0_pftAddr; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_carry = s3_ftb_entry_dup_0_carry; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_isCall = s3_ftb_entry_dup_0_isCall; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_isRet = s3_ftb_entry_dup_0_isRet; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_isJalr = s3_ftb_entry_dup_0_isJalr; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_last_may_be_rvi_call = s3_ftb_entry_dup_0_last_may_be_rvi_call; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_always_taken_0 = s3_ftb_entry_dup_0_always_taken_0; // @[FTB.scala 461:31]
  assign io_out_last_stage_ftb_entry_always_taken_1 = s3_ftb_entry_dup_0_always_taken_1; // @[FTB.scala 461:31]
  assign io_s1_ready = ftbBank_io_req_pc_ready & ~update_need_read & ~io_s1_ready_REG; // @[FTB.scala 487:65]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign reset_vector_delay_clock = clock;
  assign reset_vector_delay_io_in = io_reset_vector; // @[Hold.scala 98:17]
  assign ftbBank_clock = clock;
  assign ftbBank_reset = reset;
  assign ftbBank_io_s1_fire = io_s1_fire_0; // @[FTB.scala 506:22]
  assign ftbBank_io_req_pc_valid = io_s0_fire_0; // @[FTB.scala 428:27]
  assign ftbBank_io_req_pc_bits = io_in_bits_s0_pc_0; // @[FTB.scala 429:26]
  assign ftbBank_io_u_req_pc_valid = u_valid & ~u_meta_hit; // @[FTB.scala 485:34]
  assign ftbBank_io_u_req_pc_bits = io_update_bits_pc; // @[FTB.scala 490:28]
  assign ftbBank_io_update_access = u_valid & _update_need_read_T; // @[FTB.scala 505:39]
  assign ftbBank_io_update_pc = update_now ? io_update_bits_pc : delay2_pc_delay_io_out; // @[FTB.scala 502:39]
  assign ftbBank_io_update_write_data_valid = update_now | write_valid_delay_io_out; // @[FTB.scala 498:32]
  assign ftbBank_io_update_write_data_bits_entry_valid = update_now ? io_update_bits_ftb_entry_valid :
    delay2_entry_delay_io_out_valid; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_brSlots_0_offset = update_now ?
    io_update_bits_ftb_entry_brSlots_0_offset : delay2_entry_delay_io_out_brSlots_0_offset; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_brSlots_0_lower = update_now ? io_update_bits_ftb_entry_brSlots_0_lower
     : delay2_entry_delay_io_out_brSlots_0_lower; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_brSlots_0_tarStat = update_now ?
    io_update_bits_ftb_entry_brSlots_0_tarStat : delay2_entry_delay_io_out_brSlots_0_tarStat; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_brSlots_0_sharing = update_now ?
    io_update_bits_ftb_entry_brSlots_0_sharing : delay2_entry_delay_io_out_brSlots_0_sharing; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_brSlots_0_valid = update_now ? io_update_bits_ftb_entry_brSlots_0_valid
     : delay2_entry_delay_io_out_brSlots_0_valid; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_brSlots_0_sc = update_now ? io_update_bits_ftb_entry_brSlots_0_sc :
    delay2_entry_delay_io_out_brSlots_0_sc; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_tailSlot_offset = update_now ? io_update_bits_ftb_entry_tailSlot_offset
     : delay2_entry_delay_io_out_tailSlot_offset; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_tailSlot_lower = update_now ? io_update_bits_ftb_entry_tailSlot_lower
     : delay2_entry_delay_io_out_tailSlot_lower; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_tailSlot_tarStat = update_now ?
    io_update_bits_ftb_entry_tailSlot_tarStat : delay2_entry_delay_io_out_tailSlot_tarStat; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_tailSlot_sharing = update_now ?
    io_update_bits_ftb_entry_tailSlot_sharing : delay2_entry_delay_io_out_tailSlot_sharing; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_tailSlot_valid = update_now ? io_update_bits_ftb_entry_tailSlot_valid
     : delay2_entry_delay_io_out_tailSlot_valid; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_tailSlot_sc = update_now ? io_update_bits_ftb_entry_tailSlot_sc :
    delay2_entry_delay_io_out_tailSlot_sc; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_pftAddr = update_now ? io_update_bits_ftb_entry_pftAddr :
    delay2_entry_delay_io_out_pftAddr; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_carry = update_now ? io_update_bits_ftb_entry_carry :
    delay2_entry_delay_io_out_carry; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_isCall = update_now ? io_update_bits_ftb_entry_isCall :
    delay2_entry_delay_io_out_isCall; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_isRet = update_now ? io_update_bits_ftb_entry_isRet :
    delay2_entry_delay_io_out_isRet; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_isJalr = update_now ? io_update_bits_ftb_entry_isJalr :
    delay2_entry_delay_io_out_isJalr; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_last_may_be_rvi_call = update_now ?
    io_update_bits_ftb_entry_last_may_be_rvi_call : delay2_entry_delay_io_out_last_may_be_rvi_call; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_always_taken_0 = update_now ? io_update_bits_ftb_entry_always_taken_0
     : delay2_entry_delay_io_out_always_taken_0; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_entry_always_taken_1 = update_now ? io_update_bits_ftb_entry_always_taken_1
     : delay2_entry_delay_io_out_always_taken_1; // @[FTB.scala 495:25]
  assign ftbBank_io_update_write_data_bits_tag = _ftb_write_tag_T[29:10]; // @[FTB.scala 496:75]
  assign ftbBank_io_update_write_way = update_now ? u_meta_writeWay : ftbBank_io_update_write_way_REG; // @[FTB.scala 503:39]
  assign ftbBank_io_update_write_alloc = update_now ? 1'h0 : ftbBank_io_update_write_alloc_REG; // @[FTB.scala 504:39]
  assign delay2_pc_delay_clock = clock;
  assign delay2_pc_delay_io_in = io_update_bits_pc; // @[Hold.scala 98:17]
  assign delay2_entry_delay_clock = clock;
  assign delay2_entry_delay_io_in_valid = io_update_bits_ftb_entry_valid; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_brSlots_0_offset = io_update_bits_ftb_entry_brSlots_0_offset; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_brSlots_0_lower = io_update_bits_ftb_entry_brSlots_0_lower; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_brSlots_0_tarStat = io_update_bits_ftb_entry_brSlots_0_tarStat; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_brSlots_0_sharing = io_update_bits_ftb_entry_brSlots_0_sharing; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_brSlots_0_valid = io_update_bits_ftb_entry_brSlots_0_valid; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_brSlots_0_sc = io_update_bits_ftb_entry_brSlots_0_sc; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_tailSlot_offset = io_update_bits_ftb_entry_tailSlot_offset; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_tailSlot_lower = io_update_bits_ftb_entry_tailSlot_lower; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_tailSlot_tarStat = io_update_bits_ftb_entry_tailSlot_tarStat; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_tailSlot_sharing = io_update_bits_ftb_entry_tailSlot_sharing; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_tailSlot_valid = io_update_bits_ftb_entry_tailSlot_valid; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_tailSlot_sc = io_update_bits_ftb_entry_tailSlot_sc; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_pftAddr = io_update_bits_ftb_entry_pftAddr; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_carry = io_update_bits_ftb_entry_carry; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_isCall = io_update_bits_ftb_entry_isCall; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_isRet = io_update_bits_ftb_entry_isRet; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_isJalr = io_update_bits_ftb_entry_isJalr; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_last_may_be_rvi_call = io_update_bits_ftb_entry_last_may_be_rvi_call; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_always_taken_0 = io_update_bits_ftb_entry_always_taken_0; // @[Hold.scala 98:17]
  assign delay2_entry_delay_io_in_always_taken_1 = io_update_bits_ftb_entry_always_taken_1; // @[Hold.scala 98:17]
  assign write_valid_delay_clock = clock;
  assign write_valid_delay_io_in = u_valid & _update_need_read_T; // @[FTB.scala 498:50]
  always @(posedge clock) begin
    if (REG_1) begin // @[BPU.scala 191:58]
      s1_pc_dup_0 <= {{3'd0}, reset_vector_delay_io_out}; // @[BPU.scala 192:39]
    end else if (io_s0_fire_0) begin // @[Reg.scala 17:18]
      s1_pc_dup_0 <= io_in_bits_s0_pc_0; // @[Reg.scala 17:22]
    end
    if (REG_1) begin // @[BPU.scala 191:58]
      s1_pc_dup_1 <= {{3'd0}, reset_vector_delay_io_out}; // @[BPU.scala 192:39]
    end else if (io_s0_fire_1) begin // @[Reg.scala 17:18]
      s1_pc_dup_1 <= io_in_bits_s0_pc_1; // @[Reg.scala 17:22]
    end
    if (REG_1) begin // @[BPU.scala 191:58]
      s1_pc_dup_2 <= {{3'd0}, reset_vector_delay_io_out}; // @[BPU.scala 192:39]
    end else if (io_s0_fire_2) begin // @[Reg.scala 17:18]
      s1_pc_dup_2 <= io_in_bits_s0_pc_2; // @[Reg.scala 17:22]
    end
    if (REG_1) begin // @[BPU.scala 191:58]
      s1_pc_dup_3 <= {{3'd0}, reset_vector_delay_io_out}; // @[BPU.scala 192:39]
    end else if (io_s0_fire_3) begin // @[Reg.scala 17:18]
      s1_pc_dup_3 <= io_in_bits_s0_pc_3; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_pc_dup_0 <= s1_pc_dup_0; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_pc_dup_1 <= s1_pc_dup_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_pc_dup_2 <= s1_pc_dup_2; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_pc_dup_3 <= s1_pc_dup_3; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_pc_dup_0 <= s2_pc_dup_0; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      s3_pc_dup_1 <= s2_pc_dup_1; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_pc_dup_2 <= s2_pc_dup_2; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      s3_pc_dup_3 <= s2_pc_dup_3; // @[Reg.scala 17:22]
    end
    REG <= reset; // @[BPU.scala 191:31]
    REG_1 <= REG & ~reset; // @[BPU.scala 191:39]
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_valid <= ftbBank_io_read_resp_valid; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_brSlots_0_offset <= ftbBank_io_read_resp_brSlots_0_offset; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_brSlots_0_lower <= ftbBank_io_read_resp_brSlots_0_lower; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_brSlots_0_tarStat <= ftbBank_io_read_resp_brSlots_0_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_brSlots_0_sharing <= ftbBank_io_read_resp_brSlots_0_sharing; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_brSlots_0_valid <= ftbBank_io_read_resp_brSlots_0_valid; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_brSlots_0_sc <= ftbBank_io_read_resp_brSlots_0_sc; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_tailSlot_offset <= ftbBank_io_read_resp_tailSlot_offset; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_tailSlot_lower <= ftbBank_io_read_resp_tailSlot_lower; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_tailSlot_tarStat <= ftbBank_io_read_resp_tailSlot_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_tailSlot_sharing <= ftbBank_io_read_resp_tailSlot_sharing; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_tailSlot_valid <= ftbBank_io_read_resp_tailSlot_valid; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_tailSlot_sc <= ftbBank_io_read_resp_tailSlot_sc; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_pftAddr <= ftbBank_io_read_resp_pftAddr; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_carry <= ftbBank_io_read_resp_carry; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_isCall <= ftbBank_io_read_resp_isCall; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_isRet <= ftbBank_io_read_resp_isRet; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_isJalr <= ftbBank_io_read_resp_isJalr; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_last_may_be_rvi_call <= ftbBank_io_read_resp_last_may_be_rvi_call; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_always_taken_0 <= ftbBank_io_read_resp_always_taken_0; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_0_always_taken_1 <= ftbBank_io_read_resp_always_taken_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_1_brSlots_0_offset <= ftbBank_io_read_resp_brSlots_0_offset; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_1_brSlots_0_lower <= ftbBank_io_read_resp_brSlots_0_lower; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_1_brSlots_0_tarStat <= ftbBank_io_read_resp_brSlots_0_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_1_brSlots_0_valid <= ftbBank_io_read_resp_brSlots_0_valid; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_1_tailSlot_offset <= ftbBank_io_read_resp_tailSlot_offset; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_1_tailSlot_lower <= ftbBank_io_read_resp_tailSlot_lower; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_1_tailSlot_tarStat <= ftbBank_io_read_resp_tailSlot_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_1_tailSlot_sharing <= ftbBank_io_read_resp_tailSlot_sharing; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_1_tailSlot_valid <= ftbBank_io_read_resp_tailSlot_valid; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_1_pftAddr <= ftbBank_io_read_resp_pftAddr; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_1_carry <= ftbBank_io_read_resp_carry; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_1_isRet <= ftbBank_io_read_resp_isRet; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_1_isJalr <= ftbBank_io_read_resp_isJalr; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_1_always_taken_0 <= ftbBank_io_read_resp_always_taken_0; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_1_always_taken_1 <= ftbBank_io_read_resp_always_taken_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_2_brSlots_0_offset <= ftbBank_io_read_resp_brSlots_0_offset; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_2_brSlots_0_lower <= ftbBank_io_read_resp_brSlots_0_lower; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_2_brSlots_0_tarStat <= ftbBank_io_read_resp_brSlots_0_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_2_brSlots_0_valid <= ftbBank_io_read_resp_brSlots_0_valid; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_2_tailSlot_offset <= ftbBank_io_read_resp_tailSlot_offset; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_2_tailSlot_lower <= ftbBank_io_read_resp_tailSlot_lower; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_2_tailSlot_tarStat <= ftbBank_io_read_resp_tailSlot_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_2_tailSlot_sharing <= ftbBank_io_read_resp_tailSlot_sharing; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_2_tailSlot_valid <= ftbBank_io_read_resp_tailSlot_valid; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_2_pftAddr <= ftbBank_io_read_resp_pftAddr; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_2_carry <= ftbBank_io_read_resp_carry; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_2_isCall <= ftbBank_io_read_resp_isCall; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_2_isRet <= ftbBank_io_read_resp_isRet; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_2_isJalr <= ftbBank_io_read_resp_isJalr; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_2_last_may_be_rvi_call <= ftbBank_io_read_resp_last_may_be_rvi_call; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_2_always_taken_0 <= ftbBank_io_read_resp_always_taken_0; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_2_always_taken_1 <= ftbBank_io_read_resp_always_taken_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_3_brSlots_0_offset <= ftbBank_io_read_resp_brSlots_0_offset; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_3_brSlots_0_lower <= ftbBank_io_read_resp_brSlots_0_lower; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_3_brSlots_0_tarStat <= ftbBank_io_read_resp_brSlots_0_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_3_brSlots_0_valid <= ftbBank_io_read_resp_brSlots_0_valid; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_3_tailSlot_offset <= ftbBank_io_read_resp_tailSlot_offset; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_3_tailSlot_lower <= ftbBank_io_read_resp_tailSlot_lower; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_3_tailSlot_tarStat <= ftbBank_io_read_resp_tailSlot_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_3_tailSlot_sharing <= ftbBank_io_read_resp_tailSlot_sharing; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_3_tailSlot_valid <= ftbBank_io_read_resp_tailSlot_valid; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_3_pftAddr <= ftbBank_io_read_resp_pftAddr; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_3_carry <= ftbBank_io_read_resp_carry; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_3_isRet <= ftbBank_io_read_resp_isRet; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_3_isJalr <= ftbBank_io_read_resp_isJalr; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_3_always_taken_0 <= ftbBank_io_read_resp_always_taken_0; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_ftb_entry_dup_3_always_taken_1 <= ftbBank_io_read_resp_always_taken_1; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_valid <= s2_ftb_entry_dup_0_valid; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_brSlots_0_offset <= s2_ftb_entry_dup_0_brSlots_0_offset; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_brSlots_0_lower <= s2_ftb_entry_dup_0_brSlots_0_lower; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_brSlots_0_tarStat <= s2_ftb_entry_dup_0_brSlots_0_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_brSlots_0_sharing <= s2_ftb_entry_dup_0_brSlots_0_sharing; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_brSlots_0_valid <= s2_ftb_entry_dup_0_brSlots_0_valid; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_brSlots_0_sc <= s2_ftb_entry_dup_0_brSlots_0_sc; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_tailSlot_offset <= s2_ftb_entry_dup_0_tailSlot_offset; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_tailSlot_lower <= s2_ftb_entry_dup_0_tailSlot_lower; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_tailSlot_tarStat <= s2_ftb_entry_dup_0_tailSlot_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_tailSlot_sharing <= s2_ftb_entry_dup_0_tailSlot_sharing; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_tailSlot_valid <= s2_ftb_entry_dup_0_tailSlot_valid; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_tailSlot_sc <= s2_ftb_entry_dup_0_tailSlot_sc; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_pftAddr <= s2_ftb_entry_dup_0_pftAddr; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_carry <= s2_ftb_entry_dup_0_carry; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_isCall <= s2_ftb_entry_dup_0_isCall; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_isRet <= s2_ftb_entry_dup_0_isRet; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_isJalr <= s2_ftb_entry_dup_0_isJalr; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_last_may_be_rvi_call <= s2_ftb_entry_dup_0_last_may_be_rvi_call; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_always_taken_0 <= s2_ftb_entry_dup_0_always_taken_0; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_0_always_taken_1 <= s2_ftb_entry_dup_0_always_taken_1; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_1_brSlots_0_lower <= s2_ftb_entry_dup_1_brSlots_0_lower; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_1_brSlots_0_tarStat <= s2_ftb_entry_dup_1_brSlots_0_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_1_brSlots_0_valid <= s2_ftb_entry_dup_1_brSlots_0_valid; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_1_tailSlot_lower <= s2_ftb_entry_dup_1_tailSlot_lower; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_1_tailSlot_tarStat <= s2_ftb_entry_dup_1_tailSlot_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_1_tailSlot_sharing <= s2_ftb_entry_dup_1_tailSlot_sharing; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_1_tailSlot_valid <= s2_ftb_entry_dup_1_tailSlot_valid; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_1_pftAddr <= s2_ftb_entry_dup_1_pftAddr; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_1_carry <= s2_ftb_entry_dup_1_carry; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_1_isRet <= s2_ftb_entry_dup_1_isRet; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_1_isJalr <= s2_ftb_entry_dup_1_isJalr; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_1_always_taken_0 <= s2_ftb_entry_dup_1_always_taken_0; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_1_always_taken_1 <= s2_ftb_entry_dup_1_always_taken_1; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_2_brSlots_0_lower <= s2_ftb_entry_dup_2_brSlots_0_lower; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_2_brSlots_0_tarStat <= s2_ftb_entry_dup_2_brSlots_0_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_2_brSlots_0_valid <= s2_ftb_entry_dup_2_brSlots_0_valid; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_2_tailSlot_lower <= s2_ftb_entry_dup_2_tailSlot_lower; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_2_tailSlot_tarStat <= s2_ftb_entry_dup_2_tailSlot_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_2_tailSlot_sharing <= s2_ftb_entry_dup_2_tailSlot_sharing; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_2_tailSlot_valid <= s2_ftb_entry_dup_2_tailSlot_valid; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_2_pftAddr <= s2_ftb_entry_dup_2_pftAddr; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_2_carry <= s2_ftb_entry_dup_2_carry; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_2_isCall <= s2_ftb_entry_dup_2_isCall; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_2_isRet <= s2_ftb_entry_dup_2_isRet; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_2_isJalr <= s2_ftb_entry_dup_2_isJalr; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_2_always_taken_0 <= s2_ftb_entry_dup_2_always_taken_0; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_2_always_taken_1 <= s2_ftb_entry_dup_2_always_taken_1; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_3_brSlots_0_offset <= s2_ftb_entry_dup_3_brSlots_0_offset; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_3_brSlots_0_lower <= s2_ftb_entry_dup_3_brSlots_0_lower; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_3_brSlots_0_tarStat <= s2_ftb_entry_dup_3_brSlots_0_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_3_brSlots_0_valid <= s2_ftb_entry_dup_3_brSlots_0_valid; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_3_tailSlot_offset <= s2_ftb_entry_dup_3_tailSlot_offset; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_3_tailSlot_lower <= s2_ftb_entry_dup_3_tailSlot_lower; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_3_tailSlot_tarStat <= s2_ftb_entry_dup_3_tailSlot_tarStat; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_3_tailSlot_sharing <= s2_ftb_entry_dup_3_tailSlot_sharing; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_3_tailSlot_valid <= s2_ftb_entry_dup_3_tailSlot_valid; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_3_pftAddr <= s2_ftb_entry_dup_3_pftAddr; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_3_carry <= s2_ftb_entry_dup_3_carry; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_3_isRet <= s2_ftb_entry_dup_3_isRet; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_3_isJalr <= s2_ftb_entry_dup_3_isJalr; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_3_always_taken_0 <= s2_ftb_entry_dup_3_always_taken_0; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      s3_ftb_entry_dup_3_always_taken_1 <= s2_ftb_entry_dup_3_always_taken_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      s2_hit_dup_0 <= s1_hit; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      s2_hit_dup_1 <= s1_hit; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      s2_hit_dup_2 <= s1_hit; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      s2_hit_dup_3 <= s1_hit; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_hit_dup_0 <= s2_hit_dup_0; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      s3_hit_dup_1 <= s2_hit_dup_1; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_hit_dup_2 <= s2_hit_dup_2; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      s3_hit_dup_3 <= s2_hit_dup_3; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      higher_r <= last_stage_pc_h; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      higher_plus_one_r <= _higher_plus_one_T_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      higher_minus_one_r <= _higher_minus_one_T_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      higher_r1 <= last_stage_pc_h; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      higher_plus_one_r1 <= _higher_plus_one_T_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      higher_minus_one_r1 <= _higher_minus_one_T_1; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      higher_r2 <= last_stage_pc_h_2; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      higher_plus_one_r2 <= _higher_plus_one_T_5; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      higher_minus_one_r2 <= _higher_minus_one_T_5; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      io_out_s2_full_pred_0_fallThroughAddr_stashed_carry <= ftbBank_io_read_resp_carry; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      higher_r3 <= last_stage_pc_h_3; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      higher_plus_one_r3 <= _higher_plus_one_T_7; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      higher_minus_one_r3 <= _higher_minus_one_T_7; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      higher_r4 <= last_stage_pc_h_3; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      higher_plus_one_r4 <= _higher_plus_one_T_7; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      higher_minus_one_r4 <= _higher_minus_one_T_7; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      higher_r5 <= last_stage_pc_h_5; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      higher_plus_one_r5 <= _higher_plus_one_T_11; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      higher_minus_one_r5 <= _higher_minus_one_T_11; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_1) begin // @[Reg.scala 17:18]
      io_out_s2_full_pred_1_fallThroughAddr_stashed_carry <= ftbBank_io_read_resp_carry; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      higher_r6 <= last_stage_pc_h_6; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      higher_plus_one_r6 <= _higher_plus_one_T_13; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      higher_minus_one_r6 <= _higher_minus_one_T_13; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      higher_r7 <= last_stage_pc_h_6; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      higher_plus_one_r7 <= _higher_plus_one_T_13; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      higher_minus_one_r7 <= _higher_minus_one_T_13; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      higher_r8 <= last_stage_pc_h_8; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      higher_plus_one_r8 <= _higher_plus_one_T_17; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      higher_minus_one_r8 <= _higher_minus_one_T_17; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_2) begin // @[Reg.scala 17:18]
      io_out_s2_full_pred_2_fallThroughAddr_stashed_carry <= ftbBank_io_read_resp_carry; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      higher_r9 <= last_stage_pc_h_9; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      higher_plus_one_r9 <= _higher_plus_one_T_19; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      higher_minus_one_r9 <= _higher_minus_one_T_19; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      higher_r10 <= last_stage_pc_h_9; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      higher_plus_one_r10 <= _higher_plus_one_T_19; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      higher_minus_one_r10 <= _higher_minus_one_T_19; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      higher_r11 <= last_stage_pc_h_11; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      higher_plus_one_r11 <= _higher_plus_one_T_23; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      higher_minus_one_r11 <= _higher_minus_one_T_23; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_3) begin // @[Reg.scala 17:18]
      io_out_s2_full_pred_3_fallThroughAddr_stashed_carry <= ftbBank_io_read_resp_carry; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      higher_r12 <= h; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      higher_plus_one_r12 <= _higher_plus_one_T_25; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      higher_minus_one_r12 <= _higher_minus_one_T_25; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      higher_r13 <= h; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      higher_plus_one_r13 <= _higher_plus_one_T_25; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      higher_minus_one_r13 <= _higher_minus_one_T_25; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      higher_r14 <= h_2; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      higher_plus_one_r14 <= _higher_plus_one_T_29; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      higher_minus_one_r14 <= _higher_minus_one_T_29; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      higher_r15 <= h_3; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      higher_plus_one_r15 <= _higher_plus_one_T_31; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      higher_minus_one_r15 <= _higher_minus_one_T_31; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      higher_r16 <= h_3; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      higher_plus_one_r16 <= _higher_plus_one_T_31; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      higher_minus_one_r16 <= _higher_minus_one_T_31; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      higher_r17 <= h_5; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      higher_plus_one_r17 <= _higher_plus_one_T_35; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      higher_minus_one_r17 <= _higher_minus_one_T_35; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      higher_r18 <= h_6; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      higher_plus_one_r18 <= _higher_plus_one_T_37; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      higher_minus_one_r18 <= _higher_minus_one_T_37; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      higher_r19 <= h_6; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      higher_plus_one_r19 <= _higher_plus_one_T_37; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      higher_minus_one_r19 <= _higher_minus_one_T_37; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      higher_r20 <= h_8; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      higher_plus_one_r20 <= _higher_plus_one_T_41; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      higher_minus_one_r20 <= _higher_minus_one_T_41; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      higher_r21 <= h_9; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      higher_plus_one_r21 <= _higher_plus_one_T_43; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      higher_minus_one_r21 <= _higher_minus_one_T_43; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      higher_r22 <= h_9; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      higher_plus_one_r22 <= _higher_plus_one_T_43; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      higher_minus_one_r22 <= _higher_minus_one_T_43; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      higher_r23 <= h_11; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      higher_plus_one_r23 <= _higher_plus_one_T_47; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      higher_minus_one_r23 <= _higher_minus_one_T_47; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      io_out_last_stage_meta_r <= _io_out_last_stage_meta_T; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      io_out_last_stage_meta_r1 <= io_out_last_stage_meta_r; // @[Reg.scala 17:22]
    end
    io_s1_ready_REG <= u_valid & ~u_meta_hit; // @[FTB.scala 485:34]
    ftbBank_io_update_write_way_REG <= ftbBank_io_update_hits_bits; // @[FTB.scala 503:76]
    ftbBank_io_update_write_alloc_REG <= ~ftbBank_io_update_hits_valid; // @[FTB.scala 504:77]
    io_perf_0_value_REG <= io_update_valid & u_meta_hit; // @[FTB.scala 527:54]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= io_update_valid & _update_need_read_T; // @[FTB.scala 528:54]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
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
  _RAND_0 = {2{`RANDOM}};
  s1_pc_dup_0 = _RAND_0[38:0];
  _RAND_1 = {2{`RANDOM}};
  s1_pc_dup_1 = _RAND_1[38:0];
  _RAND_2 = {2{`RANDOM}};
  s1_pc_dup_2 = _RAND_2[38:0];
  _RAND_3 = {2{`RANDOM}};
  s1_pc_dup_3 = _RAND_3[38:0];
  _RAND_4 = {2{`RANDOM}};
  s2_pc_dup_0 = _RAND_4[38:0];
  _RAND_5 = {2{`RANDOM}};
  s2_pc_dup_1 = _RAND_5[38:0];
  _RAND_6 = {2{`RANDOM}};
  s2_pc_dup_2 = _RAND_6[38:0];
  _RAND_7 = {2{`RANDOM}};
  s2_pc_dup_3 = _RAND_7[38:0];
  _RAND_8 = {2{`RANDOM}};
  s3_pc_dup_0 = _RAND_8[38:0];
  _RAND_9 = {2{`RANDOM}};
  s3_pc_dup_1 = _RAND_9[38:0];
  _RAND_10 = {2{`RANDOM}};
  s3_pc_dup_2 = _RAND_10[38:0];
  _RAND_11 = {2{`RANDOM}};
  s3_pc_dup_3 = _RAND_11[38:0];
  _RAND_12 = {1{`RANDOM}};
  REG = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  REG_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_valid = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_brSlots_0_offset = _RAND_15[2:0];
  _RAND_16 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_brSlots_0_lower = _RAND_16[11:0];
  _RAND_17 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_brSlots_0_tarStat = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_brSlots_0_sharing = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_brSlots_0_valid = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_brSlots_0_sc = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_tailSlot_offset = _RAND_21[2:0];
  _RAND_22 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_tailSlot_lower = _RAND_22[19:0];
  _RAND_23 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_tailSlot_tarStat = _RAND_23[1:0];
  _RAND_24 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_tailSlot_sharing = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_tailSlot_valid = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_tailSlot_sc = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_pftAddr = _RAND_27[2:0];
  _RAND_28 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_carry = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_isCall = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_isRet = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_isJalr = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_last_may_be_rvi_call = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_always_taken_0 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  s2_ftb_entry_dup_0_always_taken_1 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  s2_ftb_entry_dup_1_brSlots_0_offset = _RAND_35[2:0];
  _RAND_36 = {1{`RANDOM}};
  s2_ftb_entry_dup_1_brSlots_0_lower = _RAND_36[11:0];
  _RAND_37 = {1{`RANDOM}};
  s2_ftb_entry_dup_1_brSlots_0_tarStat = _RAND_37[1:0];
  _RAND_38 = {1{`RANDOM}};
  s2_ftb_entry_dup_1_brSlots_0_valid = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  s2_ftb_entry_dup_1_tailSlot_offset = _RAND_39[2:0];
  _RAND_40 = {1{`RANDOM}};
  s2_ftb_entry_dup_1_tailSlot_lower = _RAND_40[19:0];
  _RAND_41 = {1{`RANDOM}};
  s2_ftb_entry_dup_1_tailSlot_tarStat = _RAND_41[1:0];
  _RAND_42 = {1{`RANDOM}};
  s2_ftb_entry_dup_1_tailSlot_sharing = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  s2_ftb_entry_dup_1_tailSlot_valid = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  s2_ftb_entry_dup_1_pftAddr = _RAND_44[2:0];
  _RAND_45 = {1{`RANDOM}};
  s2_ftb_entry_dup_1_carry = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  s2_ftb_entry_dup_1_isRet = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  s2_ftb_entry_dup_1_isJalr = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  s2_ftb_entry_dup_1_always_taken_0 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  s2_ftb_entry_dup_1_always_taken_1 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  s2_ftb_entry_dup_2_brSlots_0_offset = _RAND_50[2:0];
  _RAND_51 = {1{`RANDOM}};
  s2_ftb_entry_dup_2_brSlots_0_lower = _RAND_51[11:0];
  _RAND_52 = {1{`RANDOM}};
  s2_ftb_entry_dup_2_brSlots_0_tarStat = _RAND_52[1:0];
  _RAND_53 = {1{`RANDOM}};
  s2_ftb_entry_dup_2_brSlots_0_valid = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  s2_ftb_entry_dup_2_tailSlot_offset = _RAND_54[2:0];
  _RAND_55 = {1{`RANDOM}};
  s2_ftb_entry_dup_2_tailSlot_lower = _RAND_55[19:0];
  _RAND_56 = {1{`RANDOM}};
  s2_ftb_entry_dup_2_tailSlot_tarStat = _RAND_56[1:0];
  _RAND_57 = {1{`RANDOM}};
  s2_ftb_entry_dup_2_tailSlot_sharing = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  s2_ftb_entry_dup_2_tailSlot_valid = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  s2_ftb_entry_dup_2_pftAddr = _RAND_59[2:0];
  _RAND_60 = {1{`RANDOM}};
  s2_ftb_entry_dup_2_carry = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  s2_ftb_entry_dup_2_isCall = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  s2_ftb_entry_dup_2_isRet = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  s2_ftb_entry_dup_2_isJalr = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  s2_ftb_entry_dup_2_last_may_be_rvi_call = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  s2_ftb_entry_dup_2_always_taken_0 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  s2_ftb_entry_dup_2_always_taken_1 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  s2_ftb_entry_dup_3_brSlots_0_offset = _RAND_67[2:0];
  _RAND_68 = {1{`RANDOM}};
  s2_ftb_entry_dup_3_brSlots_0_lower = _RAND_68[11:0];
  _RAND_69 = {1{`RANDOM}};
  s2_ftb_entry_dup_3_brSlots_0_tarStat = _RAND_69[1:0];
  _RAND_70 = {1{`RANDOM}};
  s2_ftb_entry_dup_3_brSlots_0_valid = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  s2_ftb_entry_dup_3_tailSlot_offset = _RAND_71[2:0];
  _RAND_72 = {1{`RANDOM}};
  s2_ftb_entry_dup_3_tailSlot_lower = _RAND_72[19:0];
  _RAND_73 = {1{`RANDOM}};
  s2_ftb_entry_dup_3_tailSlot_tarStat = _RAND_73[1:0];
  _RAND_74 = {1{`RANDOM}};
  s2_ftb_entry_dup_3_tailSlot_sharing = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  s2_ftb_entry_dup_3_tailSlot_valid = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  s2_ftb_entry_dup_3_pftAddr = _RAND_76[2:0];
  _RAND_77 = {1{`RANDOM}};
  s2_ftb_entry_dup_3_carry = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  s2_ftb_entry_dup_3_isRet = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  s2_ftb_entry_dup_3_isJalr = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  s2_ftb_entry_dup_3_always_taken_0 = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  s2_ftb_entry_dup_3_always_taken_1 = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_valid = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_brSlots_0_offset = _RAND_83[2:0];
  _RAND_84 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_brSlots_0_lower = _RAND_84[11:0];
  _RAND_85 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_brSlots_0_tarStat = _RAND_85[1:0];
  _RAND_86 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_brSlots_0_sharing = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_brSlots_0_valid = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_brSlots_0_sc = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_tailSlot_offset = _RAND_89[2:0];
  _RAND_90 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_tailSlot_lower = _RAND_90[19:0];
  _RAND_91 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_tailSlot_tarStat = _RAND_91[1:0];
  _RAND_92 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_tailSlot_sharing = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_tailSlot_valid = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_tailSlot_sc = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_pftAddr = _RAND_95[2:0];
  _RAND_96 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_carry = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_isCall = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_isRet = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_isJalr = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_last_may_be_rvi_call = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_always_taken_0 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  s3_ftb_entry_dup_0_always_taken_1 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  s3_ftb_entry_dup_1_brSlots_0_lower = _RAND_103[11:0];
  _RAND_104 = {1{`RANDOM}};
  s3_ftb_entry_dup_1_brSlots_0_tarStat = _RAND_104[1:0];
  _RAND_105 = {1{`RANDOM}};
  s3_ftb_entry_dup_1_brSlots_0_valid = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  s3_ftb_entry_dup_1_tailSlot_lower = _RAND_106[19:0];
  _RAND_107 = {1{`RANDOM}};
  s3_ftb_entry_dup_1_tailSlot_tarStat = _RAND_107[1:0];
  _RAND_108 = {1{`RANDOM}};
  s3_ftb_entry_dup_1_tailSlot_sharing = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  s3_ftb_entry_dup_1_tailSlot_valid = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  s3_ftb_entry_dup_1_pftAddr = _RAND_110[2:0];
  _RAND_111 = {1{`RANDOM}};
  s3_ftb_entry_dup_1_carry = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  s3_ftb_entry_dup_1_isRet = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  s3_ftb_entry_dup_1_isJalr = _RAND_113[0:0];
  _RAND_114 = {1{`RANDOM}};
  s3_ftb_entry_dup_1_always_taken_0 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  s3_ftb_entry_dup_1_always_taken_1 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  s3_ftb_entry_dup_2_brSlots_0_lower = _RAND_116[11:0];
  _RAND_117 = {1{`RANDOM}};
  s3_ftb_entry_dup_2_brSlots_0_tarStat = _RAND_117[1:0];
  _RAND_118 = {1{`RANDOM}};
  s3_ftb_entry_dup_2_brSlots_0_valid = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  s3_ftb_entry_dup_2_tailSlot_lower = _RAND_119[19:0];
  _RAND_120 = {1{`RANDOM}};
  s3_ftb_entry_dup_2_tailSlot_tarStat = _RAND_120[1:0];
  _RAND_121 = {1{`RANDOM}};
  s3_ftb_entry_dup_2_tailSlot_sharing = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  s3_ftb_entry_dup_2_tailSlot_valid = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  s3_ftb_entry_dup_2_pftAddr = _RAND_123[2:0];
  _RAND_124 = {1{`RANDOM}};
  s3_ftb_entry_dup_2_carry = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  s3_ftb_entry_dup_2_isCall = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  s3_ftb_entry_dup_2_isRet = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  s3_ftb_entry_dup_2_isJalr = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  s3_ftb_entry_dup_2_always_taken_0 = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  s3_ftb_entry_dup_2_always_taken_1 = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  s3_ftb_entry_dup_3_brSlots_0_offset = _RAND_130[2:0];
  _RAND_131 = {1{`RANDOM}};
  s3_ftb_entry_dup_3_brSlots_0_lower = _RAND_131[11:0];
  _RAND_132 = {1{`RANDOM}};
  s3_ftb_entry_dup_3_brSlots_0_tarStat = _RAND_132[1:0];
  _RAND_133 = {1{`RANDOM}};
  s3_ftb_entry_dup_3_brSlots_0_valid = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  s3_ftb_entry_dup_3_tailSlot_offset = _RAND_134[2:0];
  _RAND_135 = {1{`RANDOM}};
  s3_ftb_entry_dup_3_tailSlot_lower = _RAND_135[19:0];
  _RAND_136 = {1{`RANDOM}};
  s3_ftb_entry_dup_3_tailSlot_tarStat = _RAND_136[1:0];
  _RAND_137 = {1{`RANDOM}};
  s3_ftb_entry_dup_3_tailSlot_sharing = _RAND_137[0:0];
  _RAND_138 = {1{`RANDOM}};
  s3_ftb_entry_dup_3_tailSlot_valid = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  s3_ftb_entry_dup_3_pftAddr = _RAND_139[2:0];
  _RAND_140 = {1{`RANDOM}};
  s3_ftb_entry_dup_3_carry = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  s3_ftb_entry_dup_3_isRet = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  s3_ftb_entry_dup_3_isJalr = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  s3_ftb_entry_dup_3_always_taken_0 = _RAND_143[0:0];
  _RAND_144 = {1{`RANDOM}};
  s3_ftb_entry_dup_3_always_taken_1 = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  s2_hit_dup_0 = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  s2_hit_dup_1 = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  s2_hit_dup_2 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  s2_hit_dup_3 = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  s3_hit_dup_0 = _RAND_149[0:0];
  _RAND_150 = {1{`RANDOM}};
  s3_hit_dup_1 = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  s3_hit_dup_2 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  s3_hit_dup_3 = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  higher_r = _RAND_153[25:0];
  _RAND_154 = {1{`RANDOM}};
  higher_plus_one_r = _RAND_154[25:0];
  _RAND_155 = {1{`RANDOM}};
  higher_minus_one_r = _RAND_155[25:0];
  _RAND_156 = {1{`RANDOM}};
  higher_r1 = _RAND_156[25:0];
  _RAND_157 = {1{`RANDOM}};
  higher_plus_one_r1 = _RAND_157[25:0];
  _RAND_158 = {1{`RANDOM}};
  higher_minus_one_r1 = _RAND_158[25:0];
  _RAND_159 = {1{`RANDOM}};
  higher_r2 = _RAND_159[17:0];
  _RAND_160 = {1{`RANDOM}};
  higher_plus_one_r2 = _RAND_160[17:0];
  _RAND_161 = {1{`RANDOM}};
  higher_minus_one_r2 = _RAND_161[17:0];
  _RAND_162 = {1{`RANDOM}};
  io_out_s2_full_pred_0_fallThroughAddr_stashed_carry = _RAND_162[0:0];
  _RAND_163 = {1{`RANDOM}};
  higher_r3 = _RAND_163[25:0];
  _RAND_164 = {1{`RANDOM}};
  higher_plus_one_r3 = _RAND_164[25:0];
  _RAND_165 = {1{`RANDOM}};
  higher_minus_one_r3 = _RAND_165[25:0];
  _RAND_166 = {1{`RANDOM}};
  higher_r4 = _RAND_166[25:0];
  _RAND_167 = {1{`RANDOM}};
  higher_plus_one_r4 = _RAND_167[25:0];
  _RAND_168 = {1{`RANDOM}};
  higher_minus_one_r4 = _RAND_168[25:0];
  _RAND_169 = {1{`RANDOM}};
  higher_r5 = _RAND_169[17:0];
  _RAND_170 = {1{`RANDOM}};
  higher_plus_one_r5 = _RAND_170[17:0];
  _RAND_171 = {1{`RANDOM}};
  higher_minus_one_r5 = _RAND_171[17:0];
  _RAND_172 = {1{`RANDOM}};
  io_out_s2_full_pred_1_fallThroughAddr_stashed_carry = _RAND_172[0:0];
  _RAND_173 = {1{`RANDOM}};
  higher_r6 = _RAND_173[25:0];
  _RAND_174 = {1{`RANDOM}};
  higher_plus_one_r6 = _RAND_174[25:0];
  _RAND_175 = {1{`RANDOM}};
  higher_minus_one_r6 = _RAND_175[25:0];
  _RAND_176 = {1{`RANDOM}};
  higher_r7 = _RAND_176[25:0];
  _RAND_177 = {1{`RANDOM}};
  higher_plus_one_r7 = _RAND_177[25:0];
  _RAND_178 = {1{`RANDOM}};
  higher_minus_one_r7 = _RAND_178[25:0];
  _RAND_179 = {1{`RANDOM}};
  higher_r8 = _RAND_179[17:0];
  _RAND_180 = {1{`RANDOM}};
  higher_plus_one_r8 = _RAND_180[17:0];
  _RAND_181 = {1{`RANDOM}};
  higher_minus_one_r8 = _RAND_181[17:0];
  _RAND_182 = {1{`RANDOM}};
  io_out_s2_full_pred_2_fallThroughAddr_stashed_carry = _RAND_182[0:0];
  _RAND_183 = {1{`RANDOM}};
  higher_r9 = _RAND_183[25:0];
  _RAND_184 = {1{`RANDOM}};
  higher_plus_one_r9 = _RAND_184[25:0];
  _RAND_185 = {1{`RANDOM}};
  higher_minus_one_r9 = _RAND_185[25:0];
  _RAND_186 = {1{`RANDOM}};
  higher_r10 = _RAND_186[25:0];
  _RAND_187 = {1{`RANDOM}};
  higher_plus_one_r10 = _RAND_187[25:0];
  _RAND_188 = {1{`RANDOM}};
  higher_minus_one_r10 = _RAND_188[25:0];
  _RAND_189 = {1{`RANDOM}};
  higher_r11 = _RAND_189[17:0];
  _RAND_190 = {1{`RANDOM}};
  higher_plus_one_r11 = _RAND_190[17:0];
  _RAND_191 = {1{`RANDOM}};
  higher_minus_one_r11 = _RAND_191[17:0];
  _RAND_192 = {1{`RANDOM}};
  io_out_s2_full_pred_3_fallThroughAddr_stashed_carry = _RAND_192[0:0];
  _RAND_193 = {1{`RANDOM}};
  higher_r12 = _RAND_193[25:0];
  _RAND_194 = {1{`RANDOM}};
  higher_plus_one_r12 = _RAND_194[25:0];
  _RAND_195 = {1{`RANDOM}};
  higher_minus_one_r12 = _RAND_195[25:0];
  _RAND_196 = {1{`RANDOM}};
  higher_r13 = _RAND_196[25:0];
  _RAND_197 = {1{`RANDOM}};
  higher_plus_one_r13 = _RAND_197[25:0];
  _RAND_198 = {1{`RANDOM}};
  higher_minus_one_r13 = _RAND_198[25:0];
  _RAND_199 = {1{`RANDOM}};
  higher_r14 = _RAND_199[17:0];
  _RAND_200 = {1{`RANDOM}};
  higher_plus_one_r14 = _RAND_200[17:0];
  _RAND_201 = {1{`RANDOM}};
  higher_minus_one_r14 = _RAND_201[17:0];
  _RAND_202 = {1{`RANDOM}};
  higher_r15 = _RAND_202[25:0];
  _RAND_203 = {1{`RANDOM}};
  higher_plus_one_r15 = _RAND_203[25:0];
  _RAND_204 = {1{`RANDOM}};
  higher_minus_one_r15 = _RAND_204[25:0];
  _RAND_205 = {1{`RANDOM}};
  higher_r16 = _RAND_205[25:0];
  _RAND_206 = {1{`RANDOM}};
  higher_plus_one_r16 = _RAND_206[25:0];
  _RAND_207 = {1{`RANDOM}};
  higher_minus_one_r16 = _RAND_207[25:0];
  _RAND_208 = {1{`RANDOM}};
  higher_r17 = _RAND_208[17:0];
  _RAND_209 = {1{`RANDOM}};
  higher_plus_one_r17 = _RAND_209[17:0];
  _RAND_210 = {1{`RANDOM}};
  higher_minus_one_r17 = _RAND_210[17:0];
  _RAND_211 = {1{`RANDOM}};
  higher_r18 = _RAND_211[25:0];
  _RAND_212 = {1{`RANDOM}};
  higher_plus_one_r18 = _RAND_212[25:0];
  _RAND_213 = {1{`RANDOM}};
  higher_minus_one_r18 = _RAND_213[25:0];
  _RAND_214 = {1{`RANDOM}};
  higher_r19 = _RAND_214[25:0];
  _RAND_215 = {1{`RANDOM}};
  higher_plus_one_r19 = _RAND_215[25:0];
  _RAND_216 = {1{`RANDOM}};
  higher_minus_one_r19 = _RAND_216[25:0];
  _RAND_217 = {1{`RANDOM}};
  higher_r20 = _RAND_217[17:0];
  _RAND_218 = {1{`RANDOM}};
  higher_plus_one_r20 = _RAND_218[17:0];
  _RAND_219 = {1{`RANDOM}};
  higher_minus_one_r20 = _RAND_219[17:0];
  _RAND_220 = {1{`RANDOM}};
  higher_r21 = _RAND_220[25:0];
  _RAND_221 = {1{`RANDOM}};
  higher_plus_one_r21 = _RAND_221[25:0];
  _RAND_222 = {1{`RANDOM}};
  higher_minus_one_r21 = _RAND_222[25:0];
  _RAND_223 = {1{`RANDOM}};
  higher_r22 = _RAND_223[25:0];
  _RAND_224 = {1{`RANDOM}};
  higher_plus_one_r22 = _RAND_224[25:0];
  _RAND_225 = {1{`RANDOM}};
  higher_minus_one_r22 = _RAND_225[25:0];
  _RAND_226 = {1{`RANDOM}};
  higher_r23 = _RAND_226[17:0];
  _RAND_227 = {1{`RANDOM}};
  higher_plus_one_r23 = _RAND_227[17:0];
  _RAND_228 = {1{`RANDOM}};
  higher_minus_one_r23 = _RAND_228[17:0];
  _RAND_229 = {1{`RANDOM}};
  io_out_last_stage_meta_r = _RAND_229[2:0];
  _RAND_230 = {1{`RANDOM}};
  io_out_last_stage_meta_r1 = _RAND_230[2:0];
  _RAND_231 = {1{`RANDOM}};
  io_s1_ready_REG = _RAND_231[0:0];
  _RAND_232 = {1{`RANDOM}};
  ftbBank_io_update_write_way_REG = _RAND_232[1:0];
  _RAND_233 = {1{`RANDOM}};
  ftbBank_io_update_write_alloc_REG = _RAND_233[0:0];
  _RAND_234 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_234[0:0];
  _RAND_235 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_235[0:0];
  _RAND_236 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_236[0:0];
  _RAND_237 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_237[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

