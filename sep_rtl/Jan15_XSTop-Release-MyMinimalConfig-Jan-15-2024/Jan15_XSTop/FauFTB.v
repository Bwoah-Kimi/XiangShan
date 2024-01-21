module FauFTB(
  input          clock,
  input          reset,
  input  [35:0]  io_reset_vector,
  input  [38:0]  io_in_bits_s0_pc_0,
  input  [38:0]  io_in_bits_s0_pc_1,
  input  [38:0]  io_in_bits_s0_pc_2,
  input  [38:0]  io_in_bits_s0_pc_3,
  output [38:0]  io_out_s1_pc_0,
  output [38:0]  io_out_s1_pc_1,
  output [38:0]  io_out_s1_pc_2,
  output [38:0]  io_out_s1_pc_3,
  output         io_out_s1_full_pred_0_br_taken_mask_0,
  output         io_out_s1_full_pred_0_br_taken_mask_1,
  output         io_out_s1_full_pred_0_slot_valids_0,
  output         io_out_s1_full_pred_0_slot_valids_1,
  output [38:0]  io_out_s1_full_pred_0_targets_0,
  output [38:0]  io_out_s1_full_pred_0_targets_1,
  output [2:0]   io_out_s1_full_pred_0_offsets_0,
  output [2:0]   io_out_s1_full_pred_0_offsets_1,
  output [38:0]  io_out_s1_full_pred_0_fallThroughAddr,
  output         io_out_s1_full_pred_0_is_br_sharing,
  output         io_out_s1_full_pred_0_hit,
  output         io_out_s1_full_pred_1_br_taken_mask_0,
  output         io_out_s1_full_pred_1_br_taken_mask_1,
  output         io_out_s1_full_pred_1_slot_valids_0,
  output         io_out_s1_full_pred_1_slot_valids_1,
  output [38:0]  io_out_s1_full_pred_1_targets_0,
  output [38:0]  io_out_s1_full_pred_1_targets_1,
  output [2:0]   io_out_s1_full_pred_1_offsets_0,
  output [2:0]   io_out_s1_full_pred_1_offsets_1,
  output [38:0]  io_out_s1_full_pred_1_fallThroughAddr,
  output         io_out_s1_full_pred_1_is_br_sharing,
  output         io_out_s1_full_pred_1_hit,
  output         io_out_s1_full_pred_2_br_taken_mask_0,
  output         io_out_s1_full_pred_2_br_taken_mask_1,
  output         io_out_s1_full_pred_2_slot_valids_0,
  output         io_out_s1_full_pred_2_slot_valids_1,
  output [38:0]  io_out_s1_full_pred_2_targets_0,
  output [38:0]  io_out_s1_full_pred_2_targets_1,
  output [2:0]   io_out_s1_full_pred_2_offsets_0,
  output [2:0]   io_out_s1_full_pred_2_offsets_1,
  output [38:0]  io_out_s1_full_pred_2_fallThroughAddr,
  output         io_out_s1_full_pred_2_is_br_sharing,
  output         io_out_s1_full_pred_2_hit,
  output         io_out_s1_full_pred_3_br_taken_mask_0,
  output         io_out_s1_full_pred_3_br_taken_mask_1,
  output         io_out_s1_full_pred_3_slot_valids_0,
  output         io_out_s1_full_pred_3_slot_valids_1,
  output [38:0]  io_out_s1_full_pred_3_targets_0,
  output [38:0]  io_out_s1_full_pred_3_targets_1,
  output [2:0]   io_out_s1_full_pred_3_offsets_0,
  output [2:0]   io_out_s1_full_pred_3_offsets_1,
  output [38:0]  io_out_s1_full_pred_3_fallThroughAddr,
  output         io_out_s1_full_pred_3_fallThroughErr,
  output         io_out_s1_full_pred_3_is_br_sharing,
  output         io_out_s1_full_pred_3_hit,
  output [255:0] io_out_last_stage_meta,
  input          io_ctrl_ubtb_enable,
  input          io_s0_fire_0,
  input          io_s0_fire_1,
  input          io_s0_fire_2,
  input          io_s0_fire_3,
  input          io_s1_fire_0,
  input          io_s2_fire_0,
  input          io_update_valid,
  input  [38:0]  io_update_bits_pc,
  input  [2:0]   io_update_bits_ftb_entry_brSlots_0_offset,
  input  [11:0]  io_update_bits_ftb_entry_brSlots_0_lower,
  input  [1:0]   io_update_bits_ftb_entry_brSlots_0_tarStat,
  input          io_update_bits_ftb_entry_brSlots_0_valid,
  input  [2:0]   io_update_bits_ftb_entry_tailSlot_offset,
  input  [19:0]  io_update_bits_ftb_entry_tailSlot_lower,
  input  [1:0]   io_update_bits_ftb_entry_tailSlot_tarStat,
  input          io_update_bits_ftb_entry_tailSlot_sharing,
  input          io_update_bits_ftb_entry_tailSlot_valid,
  input  [2:0]   io_update_bits_ftb_entry_pftAddr,
  input          io_update_bits_ftb_entry_carry,
  input          io_update_bits_ftb_entry_always_taken_0,
  input          io_update_bits_ftb_entry_always_taken_1,
  input          io_update_bits_br_taken_mask_0,
  input          io_update_bits_br_taken_mask_1,
  input  [255:0] io_update_bits_meta,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
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
`endif // RANDOMIZE_REG_INIT
  wire  reset_vector_delay_clock; // @[Hold.scala 97:23]
  wire [35:0] reset_vector_delay_io_in; // @[Hold.scala 97:23]
  wire [35:0] reset_vector_delay_io_out; // @[Hold.scala 97:23]
  wire  ways_0_clock; // @[FauFTB.scala 91:47]
  wire  ways_0_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_0_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_0_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_0_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_0_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_0_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_0_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_0_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_0_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_0_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_0_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_0_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_0_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_0_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_0_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_0_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_0_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_0_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_0_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_0_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_0_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_0_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_0_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_0_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_0_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_0_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_0_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_0_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_0_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_0_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_0_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_0_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_0_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_1_clock; // @[FauFTB.scala 91:47]
  wire  ways_1_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_1_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_1_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_1_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_1_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_1_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_1_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_1_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_1_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_1_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_1_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_1_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_1_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_1_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_1_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_1_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_1_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_1_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_1_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_1_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_1_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_1_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_1_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_1_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_1_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_1_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_1_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_1_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_1_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_1_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_1_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_1_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_1_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_2_clock; // @[FauFTB.scala 91:47]
  wire  ways_2_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_2_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_2_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_2_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_2_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_2_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_2_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_2_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_2_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_2_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_2_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_2_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_2_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_2_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_2_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_2_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_2_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_2_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_2_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_2_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_2_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_2_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_2_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_2_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_2_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_2_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_2_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_2_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_2_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_2_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_2_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_2_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_2_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_3_clock; // @[FauFTB.scala 91:47]
  wire  ways_3_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_3_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_3_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_3_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_3_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_3_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_3_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_3_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_3_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_3_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_3_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_3_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_3_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_3_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_3_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_3_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_3_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_3_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_3_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_3_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_3_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_3_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_3_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_3_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_3_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_3_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_3_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_3_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_3_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_3_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_3_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_3_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_3_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_4_clock; // @[FauFTB.scala 91:47]
  wire  ways_4_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_4_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_4_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_4_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_4_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_4_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_4_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_4_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_4_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_4_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_4_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_4_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_4_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_4_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_4_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_4_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_4_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_4_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_4_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_4_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_4_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_4_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_4_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_4_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_4_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_4_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_4_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_4_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_4_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_4_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_4_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_4_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_4_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_5_clock; // @[FauFTB.scala 91:47]
  wire  ways_5_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_5_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_5_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_5_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_5_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_5_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_5_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_5_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_5_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_5_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_5_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_5_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_5_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_5_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_5_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_5_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_5_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_5_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_5_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_5_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_5_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_5_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_5_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_5_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_5_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_5_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_5_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_5_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_5_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_5_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_5_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_5_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_5_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_6_clock; // @[FauFTB.scala 91:47]
  wire  ways_6_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_6_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_6_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_6_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_6_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_6_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_6_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_6_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_6_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_6_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_6_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_6_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_6_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_6_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_6_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_6_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_6_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_6_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_6_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_6_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_6_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_6_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_6_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_6_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_6_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_6_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_6_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_6_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_6_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_6_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_6_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_6_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_6_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_7_clock; // @[FauFTB.scala 91:47]
  wire  ways_7_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_7_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_7_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_7_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_7_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_7_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_7_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_7_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_7_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_7_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_7_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_7_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_7_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_7_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_7_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_7_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_7_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_7_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_7_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_7_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_7_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_7_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_7_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_7_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_7_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_7_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_7_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_7_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_7_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_7_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_7_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_7_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_7_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_8_clock; // @[FauFTB.scala 91:47]
  wire  ways_8_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_8_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_8_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_8_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_8_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_8_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_8_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_8_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_8_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_8_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_8_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_8_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_8_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_8_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_8_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_8_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_8_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_8_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_8_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_8_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_8_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_8_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_8_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_8_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_8_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_8_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_8_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_8_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_8_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_8_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_8_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_8_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_8_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_9_clock; // @[FauFTB.scala 91:47]
  wire  ways_9_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_9_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_9_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_9_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_9_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_9_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_9_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_9_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_9_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_9_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_9_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_9_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_9_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_9_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_9_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_9_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_9_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_9_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_9_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_9_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_9_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_9_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_9_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_9_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_9_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_9_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_9_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_9_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_9_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_9_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_9_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_9_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_9_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_10_clock; // @[FauFTB.scala 91:47]
  wire  ways_10_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_10_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_10_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_10_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_10_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_10_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_10_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_10_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_10_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_10_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_10_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_10_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_10_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_10_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_10_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_10_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_10_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_10_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_10_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_10_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_10_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_10_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_10_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_10_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_10_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_10_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_10_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_10_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_10_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_10_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_10_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_10_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_10_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_11_clock; // @[FauFTB.scala 91:47]
  wire  ways_11_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_11_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_11_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_11_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_11_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_11_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_11_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_11_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_11_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_11_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_11_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_11_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_11_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_11_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_11_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_11_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_11_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_11_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_11_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_11_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_11_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_11_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_11_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_11_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_11_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_11_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_11_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_11_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_11_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_11_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_11_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_11_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_11_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_12_clock; // @[FauFTB.scala 91:47]
  wire  ways_12_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_12_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_12_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_12_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_12_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_12_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_12_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_12_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_12_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_12_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_12_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_12_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_12_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_12_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_12_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_12_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_12_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_12_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_12_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_12_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_12_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_12_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_12_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_12_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_12_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_12_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_12_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_12_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_12_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_12_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_12_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_12_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_12_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_13_clock; // @[FauFTB.scala 91:47]
  wire  ways_13_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_13_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_13_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_13_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_13_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_13_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_13_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_13_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_13_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_13_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_13_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_13_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_13_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_13_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_13_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_13_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_13_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_13_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_13_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_13_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_13_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_13_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_13_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_13_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_13_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_13_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_13_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_13_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_13_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_13_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_13_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_13_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_13_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_14_clock; // @[FauFTB.scala 91:47]
  wire  ways_14_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_14_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_14_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_14_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_14_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_14_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_14_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_14_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_14_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_14_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_14_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_14_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_14_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_14_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_14_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_14_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_14_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_14_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_14_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_14_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_14_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_14_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_14_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_14_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_14_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_14_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_14_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_14_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_14_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_14_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_14_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_14_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_14_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_15_clock; // @[FauFTB.scala 91:47]
  wire  ways_15_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_15_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_15_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_15_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_15_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_15_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_15_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_15_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_15_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_15_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_15_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_15_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_15_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_15_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_15_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_15_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_15_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_15_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_15_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_15_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_15_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_15_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_15_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_15_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_15_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_15_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_15_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_15_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_15_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_15_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_15_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_15_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_15_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_16_clock; // @[FauFTB.scala 91:47]
  wire  ways_16_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_16_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_16_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_16_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_16_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_16_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_16_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_16_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_16_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_16_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_16_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_16_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_16_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_16_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_16_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_16_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_16_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_16_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_16_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_16_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_16_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_16_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_16_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_16_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_16_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_16_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_16_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_16_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_16_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_16_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_16_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_16_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_16_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_17_clock; // @[FauFTB.scala 91:47]
  wire  ways_17_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_17_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_17_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_17_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_17_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_17_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_17_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_17_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_17_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_17_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_17_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_17_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_17_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_17_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_17_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_17_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_17_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_17_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_17_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_17_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_17_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_17_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_17_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_17_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_17_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_17_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_17_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_17_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_17_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_17_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_17_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_17_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_17_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_18_clock; // @[FauFTB.scala 91:47]
  wire  ways_18_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_18_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_18_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_18_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_18_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_18_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_18_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_18_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_18_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_18_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_18_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_18_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_18_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_18_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_18_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_18_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_18_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_18_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_18_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_18_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_18_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_18_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_18_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_18_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_18_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_18_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_18_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_18_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_18_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_18_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_18_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_18_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_18_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_19_clock; // @[FauFTB.scala 91:47]
  wire  ways_19_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_19_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_19_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_19_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_19_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_19_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_19_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_19_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_19_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_19_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_19_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_19_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_19_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_19_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_19_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_19_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_19_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_19_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_19_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_19_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_19_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_19_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_19_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_19_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_19_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_19_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_19_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_19_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_19_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_19_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_19_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_19_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_19_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_20_clock; // @[FauFTB.scala 91:47]
  wire  ways_20_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_20_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_20_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_20_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_20_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_20_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_20_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_20_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_20_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_20_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_20_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_20_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_20_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_20_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_20_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_20_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_20_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_20_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_20_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_20_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_20_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_20_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_20_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_20_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_20_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_20_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_20_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_20_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_20_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_20_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_20_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_20_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_20_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_21_clock; // @[FauFTB.scala 91:47]
  wire  ways_21_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_21_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_21_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_21_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_21_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_21_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_21_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_21_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_21_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_21_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_21_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_21_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_21_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_21_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_21_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_21_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_21_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_21_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_21_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_21_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_21_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_21_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_21_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_21_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_21_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_21_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_21_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_21_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_21_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_21_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_21_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_21_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_21_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_22_clock; // @[FauFTB.scala 91:47]
  wire  ways_22_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_22_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_22_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_22_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_22_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_22_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_22_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_22_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_22_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_22_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_22_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_22_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_22_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_22_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_22_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_22_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_22_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_22_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_22_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_22_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_22_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_22_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_22_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_22_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_22_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_22_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_22_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_22_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_22_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_22_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_22_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_22_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_22_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_23_clock; // @[FauFTB.scala 91:47]
  wire  ways_23_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_23_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_23_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_23_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_23_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_23_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_23_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_23_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_23_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_23_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_23_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_23_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_23_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_23_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_23_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_23_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_23_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_23_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_23_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_23_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_23_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_23_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_23_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_23_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_23_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_23_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_23_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_23_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_23_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_23_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_23_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_23_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_23_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_24_clock; // @[FauFTB.scala 91:47]
  wire  ways_24_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_24_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_24_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_24_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_24_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_24_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_24_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_24_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_24_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_24_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_24_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_24_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_24_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_24_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_24_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_24_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_24_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_24_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_24_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_24_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_24_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_24_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_24_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_24_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_24_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_24_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_24_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_24_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_24_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_24_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_24_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_24_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_24_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_25_clock; // @[FauFTB.scala 91:47]
  wire  ways_25_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_25_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_25_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_25_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_25_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_25_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_25_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_25_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_25_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_25_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_25_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_25_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_25_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_25_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_25_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_25_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_25_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_25_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_25_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_25_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_25_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_25_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_25_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_25_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_25_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_25_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_25_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_25_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_25_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_25_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_25_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_25_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_25_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_26_clock; // @[FauFTB.scala 91:47]
  wire  ways_26_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_26_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_26_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_26_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_26_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_26_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_26_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_26_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_26_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_26_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_26_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_26_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_26_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_26_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_26_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_26_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_26_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_26_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_26_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_26_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_26_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_26_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_26_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_26_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_26_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_26_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_26_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_26_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_26_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_26_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_26_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_26_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_26_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_27_clock; // @[FauFTB.scala 91:47]
  wire  ways_27_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_27_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_27_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_27_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_27_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_27_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_27_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_27_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_27_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_27_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_27_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_27_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_27_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_27_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_27_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_27_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_27_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_27_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_27_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_27_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_27_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_27_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_27_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_27_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_27_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_27_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_27_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_27_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_27_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_27_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_27_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_27_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_27_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_28_clock; // @[FauFTB.scala 91:47]
  wire  ways_28_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_28_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_28_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_28_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_28_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_28_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_28_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_28_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_28_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_28_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_28_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_28_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_28_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_28_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_28_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_28_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_28_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_28_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_28_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_28_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_28_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_28_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_28_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_28_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_28_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_28_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_28_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_28_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_28_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_28_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_28_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_28_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_28_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_29_clock; // @[FauFTB.scala 91:47]
  wire  ways_29_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_29_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_29_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_29_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_29_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_29_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_29_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_29_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_29_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_29_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_29_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_29_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_29_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_29_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_29_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_29_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_29_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_29_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_29_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_29_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_29_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_29_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_29_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_29_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_29_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_29_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_29_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_29_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_29_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_29_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_29_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_29_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_29_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_30_clock; // @[FauFTB.scala 91:47]
  wire  ways_30_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_30_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_30_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_30_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_30_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_30_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_30_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_30_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_30_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_30_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_30_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_30_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_30_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_30_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_30_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_30_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_30_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_30_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_30_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_30_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_30_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_30_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_30_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_30_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_30_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_30_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_30_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_30_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_30_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_30_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_30_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_30_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_30_io_write_tag; // @[FauFTB.scala 91:47]
  wire  ways_31_clock; // @[FauFTB.scala 91:47]
  wire  ways_31_reset; // @[FauFTB.scala 91:47]
  wire [15:0] ways_31_io_req_tag; // @[FauFTB.scala 91:47]
  wire [2:0] ways_31_io_resp_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_31_io_resp_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_31_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_31_io_resp_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_31_io_resp_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_31_io_resp_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_31_io_resp_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_31_io_resp_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_31_io_resp_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_31_io_resp_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_31_io_resp_carry; // @[FauFTB.scala 91:47]
  wire  ways_31_io_resp_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_31_io_resp_always_taken_1; // @[FauFTB.scala 91:47]
  wire  ways_31_io_resp_hit; // @[FauFTB.scala 91:47]
  wire [15:0] ways_31_io_update_req_tag; // @[FauFTB.scala 91:47]
  wire  ways_31_io_update_hit; // @[FauFTB.scala 91:47]
  wire  ways_31_io_write_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_31_io_write_entry_brSlots_0_offset; // @[FauFTB.scala 91:47]
  wire [11:0] ways_31_io_write_entry_brSlots_0_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_31_io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_31_io_write_entry_brSlots_0_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_31_io_write_entry_tailSlot_offset; // @[FauFTB.scala 91:47]
  wire [19:0] ways_31_io_write_entry_tailSlot_lower; // @[FauFTB.scala 91:47]
  wire [1:0] ways_31_io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 91:47]
  wire  ways_31_io_write_entry_tailSlot_sharing; // @[FauFTB.scala 91:47]
  wire  ways_31_io_write_entry_tailSlot_valid; // @[FauFTB.scala 91:47]
  wire [2:0] ways_31_io_write_entry_pftAddr; // @[FauFTB.scala 91:47]
  wire  ways_31_io_write_entry_carry; // @[FauFTB.scala 91:47]
  wire  ways_31_io_write_entry_always_taken_0; // @[FauFTB.scala 91:47]
  wire  ways_31_io_write_entry_always_taken_1; // @[FauFTB.scala 91:47]
  wire [15:0] ways_31_io_write_tag; // @[FauFTB.scala 91:47]
  reg [38:0] s1_pc_dup_0; // @[Reg.scala 16:16]
  reg [38:0] s1_pc_dup_1; // @[Reg.scala 16:16]
  reg [38:0] s1_pc_dup_2; // @[Reg.scala 16:16]
  reg [38:0] s1_pc_dup_3; // @[Reg.scala 16:16]
  reg  REG; // @[BPU.scala 191:24]
  reg  REG_1; // @[BPU.scala 191:16]
  reg [1:0] ctrs_0_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_0_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_1_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_1_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_2_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_2_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_3_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_3_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_4_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_4_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_5_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_5_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_6_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_6_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_7_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_7_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_8_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_8_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_9_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_9_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_10_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_10_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_11_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_11_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_12_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_12_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_13_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_13_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_14_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_14_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_15_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_15_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_16_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_16_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_17_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_17_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_18_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_18_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_19_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_19_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_20_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_20_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_21_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_21_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_22_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_22_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_23_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_23_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_24_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_24_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_25_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_25_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_26_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_26_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_27_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_27_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_28_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_28_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_29_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_29_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_30_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_30_1; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_31_0; // @[FauFTB.scala 93:73]
  reg [1:0] ctrs_31_1; // @[FauFTB.scala 93:73]
  reg [30:0] state_reg; // @[Replacement.scala 168:72]
  wire  _s1_hit_oh_WIRE_1 = ways_1_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_0 = ways_0_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_3 = ways_3_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_2 = ways_2_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_5 = ways_5_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_4 = ways_4_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_7 = ways_7_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_6 = ways_6_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire [7:0] s1_hit_oh_lo_lo = {_s1_hit_oh_WIRE_7,_s1_hit_oh_WIRE_6,_s1_hit_oh_WIRE_5,_s1_hit_oh_WIRE_4,
    _s1_hit_oh_WIRE_3,_s1_hit_oh_WIRE_2,_s1_hit_oh_WIRE_1,_s1_hit_oh_WIRE_0}; // @[FauFTB.scala 102:52]
  wire  _s1_hit_oh_WIRE_9 = ways_9_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_8 = ways_8_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_11 = ways_11_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_10 = ways_10_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_13 = ways_13_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_12 = ways_12_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_15 = ways_15_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_14 = ways_14_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire [15:0] s1_hit_oh_lo = {_s1_hit_oh_WIRE_15,_s1_hit_oh_WIRE_14,_s1_hit_oh_WIRE_13,_s1_hit_oh_WIRE_12,
    _s1_hit_oh_WIRE_11,_s1_hit_oh_WIRE_10,_s1_hit_oh_WIRE_9,_s1_hit_oh_WIRE_8,s1_hit_oh_lo_lo}; // @[FauFTB.scala 102:52]
  wire  _s1_hit_oh_WIRE_17 = ways_17_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_16 = ways_16_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_19 = ways_19_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_18 = ways_18_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_21 = ways_21_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_20 = ways_20_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_23 = ways_23_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_22 = ways_22_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire [7:0] s1_hit_oh_hi_lo = {_s1_hit_oh_WIRE_23,_s1_hit_oh_WIRE_22,_s1_hit_oh_WIRE_21,_s1_hit_oh_WIRE_20,
    _s1_hit_oh_WIRE_19,_s1_hit_oh_WIRE_18,_s1_hit_oh_WIRE_17,_s1_hit_oh_WIRE_16}; // @[FauFTB.scala 102:52]
  wire  _s1_hit_oh_WIRE_25 = ways_25_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_24 = ways_24_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_27 = ways_27_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_26 = ways_26_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_29 = ways_29_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_28 = ways_28_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_31 = ways_31_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire  _s1_hit_oh_WIRE_30 = ways_30_io_resp_hit; // @[FauFTB.scala 102:{26,26}]
  wire [31:0] s1_hit_oh = {_s1_hit_oh_WIRE_31,_s1_hit_oh_WIRE_30,_s1_hit_oh_WIRE_29,_s1_hit_oh_WIRE_28,
    _s1_hit_oh_WIRE_27,_s1_hit_oh_WIRE_26,_s1_hit_oh_WIRE_25,_s1_hit_oh_WIRE_24,s1_hit_oh_hi_lo,s1_hit_oh_lo}; // @[FauFTB.scala 102:52]
  wire  s1_hit = |s1_hit_oh; // @[FauFTB.scala 103:26]
  wire [15:0] s1_hit_way_hi = s1_hit_oh[31:16]; // @[OneHot.scala 30:18]
  wire [15:0] s1_hit_way_lo = s1_hit_oh[15:0]; // @[OneHot.scala 31:18]
  wire  _s1_hit_way_T = |s1_hit_way_hi; // @[OneHot.scala 32:14]
  wire [15:0] _s1_hit_way_T_1 = s1_hit_way_hi | s1_hit_way_lo; // @[OneHot.scala 32:28]
  wire [7:0] s1_hit_way_hi_1 = _s1_hit_way_T_1[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] s1_hit_way_lo_1 = _s1_hit_way_T_1[7:0]; // @[OneHot.scala 31:18]
  wire  _s1_hit_way_T_2 = |s1_hit_way_hi_1; // @[OneHot.scala 32:14]
  wire [7:0] _s1_hit_way_T_3 = s1_hit_way_hi_1 | s1_hit_way_lo_1; // @[OneHot.scala 32:28]
  wire [3:0] s1_hit_way_hi_2 = _s1_hit_way_T_3[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] s1_hit_way_lo_2 = _s1_hit_way_T_3[3:0]; // @[OneHot.scala 31:18]
  wire  _s1_hit_way_T_4 = |s1_hit_way_hi_2; // @[OneHot.scala 32:14]
  wire [3:0] _s1_hit_way_T_5 = s1_hit_way_hi_2 | s1_hit_way_lo_2; // @[OneHot.scala 32:28]
  wire [1:0] s1_hit_way_hi_3 = _s1_hit_way_T_5[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] s1_hit_way_lo_3 = _s1_hit_way_T_5[1:0]; // @[OneHot.scala 31:18]
  wire  _s1_hit_way_T_6 = |s1_hit_way_hi_3; // @[OneHot.scala 32:14]
  wire [1:0] _s1_hit_way_T_7 = s1_hit_way_hi_3 | s1_hit_way_lo_3; // @[OneHot.scala 32:28]
  wire [4:0] s1_hit_way = {_s1_hit_way_T,_s1_hit_way_T_2,_s1_hit_way_T_4,_s1_hit_way_T_6,_s1_hit_way_T_7[1]}; // @[Cat.scala 31:58]
  wire [25:0] h = s1_pc_dup_0[38:13]; // @[FTB.scala 80:32]
  wire [25:0] higher_plus_one = h + 26'h1; // @[FTB.scala 96:30]
  wire [25:0] higher_minus_one = h - 26'h1; // @[FTB.scala 97:31]
  wire [1:0] s1_all_entries_0_brSlots_0_tarStat = ways_0_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T = s1_all_entries_0_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_1 = s1_all_entries_0_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_2 = s1_all_entries_0_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_3 = _target_T ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_4 = _target_T_1 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_5 = _target_T_2 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_6 = _target_T_3 | _target_T_4; // @[Mux.scala 27:73]
  wire [25:0] _target_T_7 = _target_T_6 | _target_T_5; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_0_brSlots_0_lower = ways_0_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target = {_target_T_7,s1_all_entries_0_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_0_tailSlot_tarStat = ways_0_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_9 = s1_all_entries_0_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_10 = s1_all_entries_0_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_11 = s1_all_entries_0_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_12 = _target_T_9 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_13 = _target_T_10 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_14 = _target_T_11 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_15 = _target_T_12 | _target_T_13; // @[Mux.scala 27:73]
  wire [25:0] _target_T_16 = _target_T_15 | _target_T_14; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_0_tailSlot_lower = ways_0_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_1 = {_target_T_16,s1_all_entries_0_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] h_2 = s1_pc_dup_0[38:21]; // @[FTB.scala 80:32]
  wire [17:0] higher_plus_one_2 = h_2 + 18'h1; // @[FTB.scala 96:30]
  wire [17:0] higher_minus_one_2 = h_2 - 18'h1; // @[FTB.scala 97:31]
  wire [17:0] _target_T_21 = _target_T_9 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_22 = _target_T_10 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_23 = _target_T_11 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_24 = _target_T_21 | _target_T_22; // @[Mux.scala 27:73]
  wire [17:0] _target_T_25 = _target_T_24 | _target_T_23; // @[Mux.scala 27:73]
  wire [38:0] target_2 = {_target_T_25,s1_all_entries_0_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_0_tailSlot_sharing = ways_0_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_0_targets_1 = s1_all_entries_0_tailSlot_sharing ? target_1 : target_2; // @[FTB.scala 113:10]
  wire  s1_all_entries_0_tailSlot_valid = ways_0_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_0_is_br_sharing = s1_all_entries_0_tailSlot_valid & s1_all_entries_0_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire [3:0] startLower = {1'h0,s1_pc_dup_0[3:1]}; // @[Cat.scala 31:58]
  wire  s1_all_entries_0_carry = ways_0_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_0_pftAddr = ways_0_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry = {s1_all_entries_0_carry,s1_all_entries_0_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_0_fallThroughErr = startLower >= endLowerwithCarry; // @[FrontendBundle.scala 533:34]
  wire [38:0] _s1_possible_full_preds_0_fallThroughAddr_T_1 = s1_pc_dup_0 + 39'h10; // @[FrontendBundle.scala 534:47]
  wire [34:0] s1_possible_full_preds_0_fallThroughAddr_higher = s1_pc_dup_0[38:4]; // @[BPU.scala 111:28]
  wire [34:0] _s1_possible_full_preds_0_fallThroughAddr_T_3 = s1_possible_full_preds_0_fallThroughAddr_higher + 35'h1; // @[BPU.scala 112:26]
  wire [34:0] _s1_possible_full_preds_0_fallThroughAddr_T_4 = s1_all_entries_0_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_0_fallThroughAddr_T_5 = {_s1_possible_full_preds_0_fallThroughAddr_T_4,
    s1_all_entries_0_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_0_fallThroughAddr = s1_possible_full_preds_0_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_0_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_0_always_taken_0 = ways_0_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_0_br_taken_mask_0 = ctrs_0_0[1] | s1_all_entries_0_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_0_always_taken_1 = ways_0_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_0_br_taken_mask_1 = ctrs_0_1[1] | s1_all_entries_0_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_1_brSlots_0_tarStat = ways_1_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_27 = s1_all_entries_1_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_28 = s1_all_entries_1_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_29 = s1_all_entries_1_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_30 = _target_T_27 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_31 = _target_T_28 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_32 = _target_T_29 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_33 = _target_T_30 | _target_T_31; // @[Mux.scala 27:73]
  wire [25:0] _target_T_34 = _target_T_33 | _target_T_32; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_1_brSlots_0_lower = ways_1_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_3 = {_target_T_34,s1_all_entries_1_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_1_tailSlot_tarStat = ways_1_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_36 = s1_all_entries_1_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_37 = s1_all_entries_1_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_38 = s1_all_entries_1_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_39 = _target_T_36 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_40 = _target_T_37 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_41 = _target_T_38 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_42 = _target_T_39 | _target_T_40; // @[Mux.scala 27:73]
  wire [25:0] _target_T_43 = _target_T_42 | _target_T_41; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_1_tailSlot_lower = ways_1_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_4 = {_target_T_43,s1_all_entries_1_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_48 = _target_T_36 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_49 = _target_T_37 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_50 = _target_T_38 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_51 = _target_T_48 | _target_T_49; // @[Mux.scala 27:73]
  wire [17:0] _target_T_52 = _target_T_51 | _target_T_50; // @[Mux.scala 27:73]
  wire [38:0] target_5 = {_target_T_52,s1_all_entries_1_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_1_tailSlot_sharing = ways_1_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_1_targets_1 = s1_all_entries_1_tailSlot_sharing ? target_4 : target_5; // @[FTB.scala 113:10]
  wire  s1_all_entries_1_tailSlot_valid = ways_1_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_1_is_br_sharing = s1_all_entries_1_tailSlot_valid & s1_all_entries_1_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_1_carry = ways_1_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_1_pftAddr = ways_1_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_1 = {s1_all_entries_1_carry,s1_all_entries_1_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_1_fallThroughErr = startLower >= endLowerwithCarry_1; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_1_fallThroughAddr_T_4 = s1_all_entries_1_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_1_fallThroughAddr_T_5 = {_s1_possible_full_preds_1_fallThroughAddr_T_4,
    s1_all_entries_1_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_1_fallThroughAddr = s1_possible_full_preds_1_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_1_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_1_always_taken_0 = ways_1_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_1_br_taken_mask_0 = ctrs_1_0[1] | s1_all_entries_1_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_1_always_taken_1 = ways_1_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_1_br_taken_mask_1 = ctrs_1_1[1] | s1_all_entries_1_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_2_brSlots_0_tarStat = ways_2_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_54 = s1_all_entries_2_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_55 = s1_all_entries_2_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_56 = s1_all_entries_2_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_57 = _target_T_54 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_58 = _target_T_55 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_59 = _target_T_56 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_60 = _target_T_57 | _target_T_58; // @[Mux.scala 27:73]
  wire [25:0] _target_T_61 = _target_T_60 | _target_T_59; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_2_brSlots_0_lower = ways_2_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_6 = {_target_T_61,s1_all_entries_2_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_2_tailSlot_tarStat = ways_2_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_63 = s1_all_entries_2_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_64 = s1_all_entries_2_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_65 = s1_all_entries_2_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_66 = _target_T_63 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_67 = _target_T_64 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_68 = _target_T_65 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_69 = _target_T_66 | _target_T_67; // @[Mux.scala 27:73]
  wire [25:0] _target_T_70 = _target_T_69 | _target_T_68; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_2_tailSlot_lower = ways_2_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_7 = {_target_T_70,s1_all_entries_2_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_75 = _target_T_63 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_76 = _target_T_64 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_77 = _target_T_65 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_78 = _target_T_75 | _target_T_76; // @[Mux.scala 27:73]
  wire [17:0] _target_T_79 = _target_T_78 | _target_T_77; // @[Mux.scala 27:73]
  wire [38:0] target_8 = {_target_T_79,s1_all_entries_2_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_2_tailSlot_sharing = ways_2_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_2_targets_1 = s1_all_entries_2_tailSlot_sharing ? target_7 : target_8; // @[FTB.scala 113:10]
  wire  s1_all_entries_2_tailSlot_valid = ways_2_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_2_is_br_sharing = s1_all_entries_2_tailSlot_valid & s1_all_entries_2_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_2_carry = ways_2_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_2_pftAddr = ways_2_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_2 = {s1_all_entries_2_carry,s1_all_entries_2_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_2_fallThroughErr = startLower >= endLowerwithCarry_2; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_2_fallThroughAddr_T_4 = s1_all_entries_2_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_2_fallThroughAddr_T_5 = {_s1_possible_full_preds_2_fallThroughAddr_T_4,
    s1_all_entries_2_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_2_fallThroughAddr = s1_possible_full_preds_2_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_2_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_2_always_taken_0 = ways_2_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_2_br_taken_mask_0 = ctrs_2_0[1] | s1_all_entries_2_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_2_always_taken_1 = ways_2_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_2_br_taken_mask_1 = ctrs_2_1[1] | s1_all_entries_2_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_3_brSlots_0_tarStat = ways_3_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_81 = s1_all_entries_3_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_82 = s1_all_entries_3_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_83 = s1_all_entries_3_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_84 = _target_T_81 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_85 = _target_T_82 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_86 = _target_T_83 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_87 = _target_T_84 | _target_T_85; // @[Mux.scala 27:73]
  wire [25:0] _target_T_88 = _target_T_87 | _target_T_86; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_3_brSlots_0_lower = ways_3_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_9 = {_target_T_88,s1_all_entries_3_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_3_tailSlot_tarStat = ways_3_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_90 = s1_all_entries_3_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_91 = s1_all_entries_3_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_92 = s1_all_entries_3_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_93 = _target_T_90 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_94 = _target_T_91 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_95 = _target_T_92 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_96 = _target_T_93 | _target_T_94; // @[Mux.scala 27:73]
  wire [25:0] _target_T_97 = _target_T_96 | _target_T_95; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_3_tailSlot_lower = ways_3_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_10 = {_target_T_97,s1_all_entries_3_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_102 = _target_T_90 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_103 = _target_T_91 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_104 = _target_T_92 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_105 = _target_T_102 | _target_T_103; // @[Mux.scala 27:73]
  wire [17:0] _target_T_106 = _target_T_105 | _target_T_104; // @[Mux.scala 27:73]
  wire [38:0] target_11 = {_target_T_106,s1_all_entries_3_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_3_tailSlot_sharing = ways_3_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_3_targets_1 = s1_all_entries_3_tailSlot_sharing ? target_10 : target_11; // @[FTB.scala 113:10]
  wire  s1_all_entries_3_tailSlot_valid = ways_3_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_3_is_br_sharing = s1_all_entries_3_tailSlot_valid & s1_all_entries_3_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_3_carry = ways_3_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_3_pftAddr = ways_3_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_3 = {s1_all_entries_3_carry,s1_all_entries_3_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_3_fallThroughErr = startLower >= endLowerwithCarry_3; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_3_fallThroughAddr_T_4 = s1_all_entries_3_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_3_fallThroughAddr_T_5 = {_s1_possible_full_preds_3_fallThroughAddr_T_4,
    s1_all_entries_3_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_3_fallThroughAddr = s1_possible_full_preds_3_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_3_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_3_always_taken_0 = ways_3_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_3_br_taken_mask_0 = ctrs_3_0[1] | s1_all_entries_3_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_3_always_taken_1 = ways_3_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_3_br_taken_mask_1 = ctrs_3_1[1] | s1_all_entries_3_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_4_brSlots_0_tarStat = ways_4_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_108 = s1_all_entries_4_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_109 = s1_all_entries_4_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_110 = s1_all_entries_4_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_111 = _target_T_108 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_112 = _target_T_109 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_113 = _target_T_110 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_114 = _target_T_111 | _target_T_112; // @[Mux.scala 27:73]
  wire [25:0] _target_T_115 = _target_T_114 | _target_T_113; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_4_brSlots_0_lower = ways_4_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_12 = {_target_T_115,s1_all_entries_4_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_4_tailSlot_tarStat = ways_4_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_117 = s1_all_entries_4_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_118 = s1_all_entries_4_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_119 = s1_all_entries_4_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_120 = _target_T_117 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_121 = _target_T_118 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_122 = _target_T_119 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_123 = _target_T_120 | _target_T_121; // @[Mux.scala 27:73]
  wire [25:0] _target_T_124 = _target_T_123 | _target_T_122; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_4_tailSlot_lower = ways_4_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_13 = {_target_T_124,s1_all_entries_4_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_129 = _target_T_117 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_130 = _target_T_118 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_131 = _target_T_119 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_132 = _target_T_129 | _target_T_130; // @[Mux.scala 27:73]
  wire [17:0] _target_T_133 = _target_T_132 | _target_T_131; // @[Mux.scala 27:73]
  wire [38:0] target_14 = {_target_T_133,s1_all_entries_4_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_4_tailSlot_sharing = ways_4_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_4_targets_1 = s1_all_entries_4_tailSlot_sharing ? target_13 : target_14; // @[FTB.scala 113:10]
  wire  s1_all_entries_4_tailSlot_valid = ways_4_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_4_is_br_sharing = s1_all_entries_4_tailSlot_valid & s1_all_entries_4_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_4_carry = ways_4_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_4_pftAddr = ways_4_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_4 = {s1_all_entries_4_carry,s1_all_entries_4_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_4_fallThroughErr = startLower >= endLowerwithCarry_4; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_4_fallThroughAddr_T_4 = s1_all_entries_4_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_4_fallThroughAddr_T_5 = {_s1_possible_full_preds_4_fallThroughAddr_T_4,
    s1_all_entries_4_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_4_fallThroughAddr = s1_possible_full_preds_4_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_4_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_4_always_taken_0 = ways_4_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_4_br_taken_mask_0 = ctrs_4_0[1] | s1_all_entries_4_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_4_always_taken_1 = ways_4_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_4_br_taken_mask_1 = ctrs_4_1[1] | s1_all_entries_4_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_5_brSlots_0_tarStat = ways_5_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_135 = s1_all_entries_5_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_136 = s1_all_entries_5_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_137 = s1_all_entries_5_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_138 = _target_T_135 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_139 = _target_T_136 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_140 = _target_T_137 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_141 = _target_T_138 | _target_T_139; // @[Mux.scala 27:73]
  wire [25:0] _target_T_142 = _target_T_141 | _target_T_140; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_5_brSlots_0_lower = ways_5_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_15 = {_target_T_142,s1_all_entries_5_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_5_tailSlot_tarStat = ways_5_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_144 = s1_all_entries_5_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_145 = s1_all_entries_5_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_146 = s1_all_entries_5_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_147 = _target_T_144 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_148 = _target_T_145 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_149 = _target_T_146 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_150 = _target_T_147 | _target_T_148; // @[Mux.scala 27:73]
  wire [25:0] _target_T_151 = _target_T_150 | _target_T_149; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_5_tailSlot_lower = ways_5_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_16 = {_target_T_151,s1_all_entries_5_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_156 = _target_T_144 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_157 = _target_T_145 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_158 = _target_T_146 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_159 = _target_T_156 | _target_T_157; // @[Mux.scala 27:73]
  wire [17:0] _target_T_160 = _target_T_159 | _target_T_158; // @[Mux.scala 27:73]
  wire [38:0] target_17 = {_target_T_160,s1_all_entries_5_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_5_tailSlot_sharing = ways_5_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_5_targets_1 = s1_all_entries_5_tailSlot_sharing ? target_16 : target_17; // @[FTB.scala 113:10]
  wire  s1_all_entries_5_tailSlot_valid = ways_5_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_5_is_br_sharing = s1_all_entries_5_tailSlot_valid & s1_all_entries_5_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_5_carry = ways_5_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_5_pftAddr = ways_5_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_5 = {s1_all_entries_5_carry,s1_all_entries_5_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_5_fallThroughErr = startLower >= endLowerwithCarry_5; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_5_fallThroughAddr_T_4 = s1_all_entries_5_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_5_fallThroughAddr_T_5 = {_s1_possible_full_preds_5_fallThroughAddr_T_4,
    s1_all_entries_5_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_5_fallThroughAddr = s1_possible_full_preds_5_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_5_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_5_always_taken_0 = ways_5_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_5_br_taken_mask_0 = ctrs_5_0[1] | s1_all_entries_5_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_5_always_taken_1 = ways_5_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_5_br_taken_mask_1 = ctrs_5_1[1] | s1_all_entries_5_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_6_brSlots_0_tarStat = ways_6_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_162 = s1_all_entries_6_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_163 = s1_all_entries_6_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_164 = s1_all_entries_6_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_165 = _target_T_162 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_166 = _target_T_163 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_167 = _target_T_164 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_168 = _target_T_165 | _target_T_166; // @[Mux.scala 27:73]
  wire [25:0] _target_T_169 = _target_T_168 | _target_T_167; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_6_brSlots_0_lower = ways_6_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_18 = {_target_T_169,s1_all_entries_6_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_6_tailSlot_tarStat = ways_6_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_171 = s1_all_entries_6_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_172 = s1_all_entries_6_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_173 = s1_all_entries_6_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_174 = _target_T_171 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_175 = _target_T_172 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_176 = _target_T_173 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_177 = _target_T_174 | _target_T_175; // @[Mux.scala 27:73]
  wire [25:0] _target_T_178 = _target_T_177 | _target_T_176; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_6_tailSlot_lower = ways_6_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_19 = {_target_T_178,s1_all_entries_6_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_183 = _target_T_171 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_184 = _target_T_172 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_185 = _target_T_173 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_186 = _target_T_183 | _target_T_184; // @[Mux.scala 27:73]
  wire [17:0] _target_T_187 = _target_T_186 | _target_T_185; // @[Mux.scala 27:73]
  wire [38:0] target_20 = {_target_T_187,s1_all_entries_6_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_6_tailSlot_sharing = ways_6_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_6_targets_1 = s1_all_entries_6_tailSlot_sharing ? target_19 : target_20; // @[FTB.scala 113:10]
  wire  s1_all_entries_6_tailSlot_valid = ways_6_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_6_is_br_sharing = s1_all_entries_6_tailSlot_valid & s1_all_entries_6_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_6_carry = ways_6_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_6_pftAddr = ways_6_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_6 = {s1_all_entries_6_carry,s1_all_entries_6_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_6_fallThroughErr = startLower >= endLowerwithCarry_6; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_6_fallThroughAddr_T_4 = s1_all_entries_6_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_6_fallThroughAddr_T_5 = {_s1_possible_full_preds_6_fallThroughAddr_T_4,
    s1_all_entries_6_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_6_fallThroughAddr = s1_possible_full_preds_6_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_6_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_6_always_taken_0 = ways_6_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_6_br_taken_mask_0 = ctrs_6_0[1] | s1_all_entries_6_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_6_always_taken_1 = ways_6_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_6_br_taken_mask_1 = ctrs_6_1[1] | s1_all_entries_6_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_7_brSlots_0_tarStat = ways_7_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_189 = s1_all_entries_7_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_190 = s1_all_entries_7_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_191 = s1_all_entries_7_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_192 = _target_T_189 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_193 = _target_T_190 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_194 = _target_T_191 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_195 = _target_T_192 | _target_T_193; // @[Mux.scala 27:73]
  wire [25:0] _target_T_196 = _target_T_195 | _target_T_194; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_7_brSlots_0_lower = ways_7_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_21 = {_target_T_196,s1_all_entries_7_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_7_tailSlot_tarStat = ways_7_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_198 = s1_all_entries_7_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_199 = s1_all_entries_7_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_200 = s1_all_entries_7_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_201 = _target_T_198 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_202 = _target_T_199 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_203 = _target_T_200 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_204 = _target_T_201 | _target_T_202; // @[Mux.scala 27:73]
  wire [25:0] _target_T_205 = _target_T_204 | _target_T_203; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_7_tailSlot_lower = ways_7_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_22 = {_target_T_205,s1_all_entries_7_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_210 = _target_T_198 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_211 = _target_T_199 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_212 = _target_T_200 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_213 = _target_T_210 | _target_T_211; // @[Mux.scala 27:73]
  wire [17:0] _target_T_214 = _target_T_213 | _target_T_212; // @[Mux.scala 27:73]
  wire [38:0] target_23 = {_target_T_214,s1_all_entries_7_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_7_tailSlot_sharing = ways_7_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_7_targets_1 = s1_all_entries_7_tailSlot_sharing ? target_22 : target_23; // @[FTB.scala 113:10]
  wire  s1_all_entries_7_tailSlot_valid = ways_7_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_7_is_br_sharing = s1_all_entries_7_tailSlot_valid & s1_all_entries_7_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_7_carry = ways_7_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_7_pftAddr = ways_7_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_7 = {s1_all_entries_7_carry,s1_all_entries_7_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_7_fallThroughErr = startLower >= endLowerwithCarry_7; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_7_fallThroughAddr_T_4 = s1_all_entries_7_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_7_fallThroughAddr_T_5 = {_s1_possible_full_preds_7_fallThroughAddr_T_4,
    s1_all_entries_7_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_7_fallThroughAddr = s1_possible_full_preds_7_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_7_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_7_always_taken_0 = ways_7_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_7_br_taken_mask_0 = ctrs_7_0[1] | s1_all_entries_7_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_7_always_taken_1 = ways_7_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_7_br_taken_mask_1 = ctrs_7_1[1] | s1_all_entries_7_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_8_brSlots_0_tarStat = ways_8_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_216 = s1_all_entries_8_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_217 = s1_all_entries_8_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_218 = s1_all_entries_8_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_219 = _target_T_216 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_220 = _target_T_217 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_221 = _target_T_218 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_222 = _target_T_219 | _target_T_220; // @[Mux.scala 27:73]
  wire [25:0] _target_T_223 = _target_T_222 | _target_T_221; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_8_brSlots_0_lower = ways_8_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_24 = {_target_T_223,s1_all_entries_8_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_8_tailSlot_tarStat = ways_8_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_225 = s1_all_entries_8_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_226 = s1_all_entries_8_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_227 = s1_all_entries_8_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_228 = _target_T_225 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_229 = _target_T_226 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_230 = _target_T_227 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_231 = _target_T_228 | _target_T_229; // @[Mux.scala 27:73]
  wire [25:0] _target_T_232 = _target_T_231 | _target_T_230; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_8_tailSlot_lower = ways_8_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_25 = {_target_T_232,s1_all_entries_8_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_237 = _target_T_225 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_238 = _target_T_226 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_239 = _target_T_227 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_240 = _target_T_237 | _target_T_238; // @[Mux.scala 27:73]
  wire [17:0] _target_T_241 = _target_T_240 | _target_T_239; // @[Mux.scala 27:73]
  wire [38:0] target_26 = {_target_T_241,s1_all_entries_8_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_8_tailSlot_sharing = ways_8_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_8_targets_1 = s1_all_entries_8_tailSlot_sharing ? target_25 : target_26; // @[FTB.scala 113:10]
  wire  s1_all_entries_8_tailSlot_valid = ways_8_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_8_is_br_sharing = s1_all_entries_8_tailSlot_valid & s1_all_entries_8_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_8_carry = ways_8_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_8_pftAddr = ways_8_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_8 = {s1_all_entries_8_carry,s1_all_entries_8_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_8_fallThroughErr = startLower >= endLowerwithCarry_8; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_8_fallThroughAddr_T_4 = s1_all_entries_8_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_8_fallThroughAddr_T_5 = {_s1_possible_full_preds_8_fallThroughAddr_T_4,
    s1_all_entries_8_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_8_fallThroughAddr = s1_possible_full_preds_8_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_8_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_8_always_taken_0 = ways_8_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_8_br_taken_mask_0 = ctrs_8_0[1] | s1_all_entries_8_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_8_always_taken_1 = ways_8_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_8_br_taken_mask_1 = ctrs_8_1[1] | s1_all_entries_8_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_9_brSlots_0_tarStat = ways_9_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_243 = s1_all_entries_9_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_244 = s1_all_entries_9_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_245 = s1_all_entries_9_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_246 = _target_T_243 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_247 = _target_T_244 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_248 = _target_T_245 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_249 = _target_T_246 | _target_T_247; // @[Mux.scala 27:73]
  wire [25:0] _target_T_250 = _target_T_249 | _target_T_248; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_9_brSlots_0_lower = ways_9_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_27 = {_target_T_250,s1_all_entries_9_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_9_tailSlot_tarStat = ways_9_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_252 = s1_all_entries_9_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_253 = s1_all_entries_9_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_254 = s1_all_entries_9_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_255 = _target_T_252 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_256 = _target_T_253 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_257 = _target_T_254 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_258 = _target_T_255 | _target_T_256; // @[Mux.scala 27:73]
  wire [25:0] _target_T_259 = _target_T_258 | _target_T_257; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_9_tailSlot_lower = ways_9_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_28 = {_target_T_259,s1_all_entries_9_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_264 = _target_T_252 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_265 = _target_T_253 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_266 = _target_T_254 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_267 = _target_T_264 | _target_T_265; // @[Mux.scala 27:73]
  wire [17:0] _target_T_268 = _target_T_267 | _target_T_266; // @[Mux.scala 27:73]
  wire [38:0] target_29 = {_target_T_268,s1_all_entries_9_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_9_tailSlot_sharing = ways_9_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_9_targets_1 = s1_all_entries_9_tailSlot_sharing ? target_28 : target_29; // @[FTB.scala 113:10]
  wire  s1_all_entries_9_tailSlot_valid = ways_9_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_9_is_br_sharing = s1_all_entries_9_tailSlot_valid & s1_all_entries_9_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_9_carry = ways_9_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_9_pftAddr = ways_9_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_9 = {s1_all_entries_9_carry,s1_all_entries_9_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_9_fallThroughErr = startLower >= endLowerwithCarry_9; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_9_fallThroughAddr_T_4 = s1_all_entries_9_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_9_fallThroughAddr_T_5 = {_s1_possible_full_preds_9_fallThroughAddr_T_4,
    s1_all_entries_9_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_9_fallThroughAddr = s1_possible_full_preds_9_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_9_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_9_always_taken_0 = ways_9_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_9_br_taken_mask_0 = ctrs_9_0[1] | s1_all_entries_9_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_9_always_taken_1 = ways_9_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_9_br_taken_mask_1 = ctrs_9_1[1] | s1_all_entries_9_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_10_brSlots_0_tarStat = ways_10_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_270 = s1_all_entries_10_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_271 = s1_all_entries_10_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_272 = s1_all_entries_10_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_273 = _target_T_270 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_274 = _target_T_271 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_275 = _target_T_272 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_276 = _target_T_273 | _target_T_274; // @[Mux.scala 27:73]
  wire [25:0] _target_T_277 = _target_T_276 | _target_T_275; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_10_brSlots_0_lower = ways_10_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_30 = {_target_T_277,s1_all_entries_10_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_10_tailSlot_tarStat = ways_10_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_279 = s1_all_entries_10_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_280 = s1_all_entries_10_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_281 = s1_all_entries_10_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_282 = _target_T_279 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_283 = _target_T_280 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_284 = _target_T_281 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_285 = _target_T_282 | _target_T_283; // @[Mux.scala 27:73]
  wire [25:0] _target_T_286 = _target_T_285 | _target_T_284; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_10_tailSlot_lower = ways_10_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_31 = {_target_T_286,s1_all_entries_10_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_291 = _target_T_279 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_292 = _target_T_280 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_293 = _target_T_281 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_294 = _target_T_291 | _target_T_292; // @[Mux.scala 27:73]
  wire [17:0] _target_T_295 = _target_T_294 | _target_T_293; // @[Mux.scala 27:73]
  wire [38:0] target_32 = {_target_T_295,s1_all_entries_10_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_10_tailSlot_sharing = ways_10_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_10_targets_1 = s1_all_entries_10_tailSlot_sharing ? target_31 : target_32; // @[FTB.scala 113:10]
  wire  s1_all_entries_10_tailSlot_valid = ways_10_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_10_is_br_sharing = s1_all_entries_10_tailSlot_valid & s1_all_entries_10_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_10_carry = ways_10_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_10_pftAddr = ways_10_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_10 = {s1_all_entries_10_carry,s1_all_entries_10_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_10_fallThroughErr = startLower >= endLowerwithCarry_10; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_10_fallThroughAddr_T_4 = s1_all_entries_10_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_10_fallThroughAddr_T_5 = {_s1_possible_full_preds_10_fallThroughAddr_T_4,
    s1_all_entries_10_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_10_fallThroughAddr = s1_possible_full_preds_10_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_10_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_10_always_taken_0 = ways_10_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_10_br_taken_mask_0 = ctrs_10_0[1] | s1_all_entries_10_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_10_always_taken_1 = ways_10_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_10_br_taken_mask_1 = ctrs_10_1[1] | s1_all_entries_10_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_11_brSlots_0_tarStat = ways_11_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_297 = s1_all_entries_11_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_298 = s1_all_entries_11_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_299 = s1_all_entries_11_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_300 = _target_T_297 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_301 = _target_T_298 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_302 = _target_T_299 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_303 = _target_T_300 | _target_T_301; // @[Mux.scala 27:73]
  wire [25:0] _target_T_304 = _target_T_303 | _target_T_302; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_11_brSlots_0_lower = ways_11_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_33 = {_target_T_304,s1_all_entries_11_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_11_tailSlot_tarStat = ways_11_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_306 = s1_all_entries_11_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_307 = s1_all_entries_11_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_308 = s1_all_entries_11_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_309 = _target_T_306 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_310 = _target_T_307 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_311 = _target_T_308 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_312 = _target_T_309 | _target_T_310; // @[Mux.scala 27:73]
  wire [25:0] _target_T_313 = _target_T_312 | _target_T_311; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_11_tailSlot_lower = ways_11_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_34 = {_target_T_313,s1_all_entries_11_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_318 = _target_T_306 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_319 = _target_T_307 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_320 = _target_T_308 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_321 = _target_T_318 | _target_T_319; // @[Mux.scala 27:73]
  wire [17:0] _target_T_322 = _target_T_321 | _target_T_320; // @[Mux.scala 27:73]
  wire [38:0] target_35 = {_target_T_322,s1_all_entries_11_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_11_tailSlot_sharing = ways_11_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_11_targets_1 = s1_all_entries_11_tailSlot_sharing ? target_34 : target_35; // @[FTB.scala 113:10]
  wire  s1_all_entries_11_tailSlot_valid = ways_11_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_11_is_br_sharing = s1_all_entries_11_tailSlot_valid & s1_all_entries_11_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_11_carry = ways_11_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_11_pftAddr = ways_11_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_11 = {s1_all_entries_11_carry,s1_all_entries_11_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_11_fallThroughErr = startLower >= endLowerwithCarry_11; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_11_fallThroughAddr_T_4 = s1_all_entries_11_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_11_fallThroughAddr_T_5 = {_s1_possible_full_preds_11_fallThroughAddr_T_4,
    s1_all_entries_11_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_11_fallThroughAddr = s1_possible_full_preds_11_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_11_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_11_always_taken_0 = ways_11_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_11_br_taken_mask_0 = ctrs_11_0[1] | s1_all_entries_11_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_11_always_taken_1 = ways_11_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_11_br_taken_mask_1 = ctrs_11_1[1] | s1_all_entries_11_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_12_brSlots_0_tarStat = ways_12_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_324 = s1_all_entries_12_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_325 = s1_all_entries_12_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_326 = s1_all_entries_12_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_327 = _target_T_324 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_328 = _target_T_325 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_329 = _target_T_326 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_330 = _target_T_327 | _target_T_328; // @[Mux.scala 27:73]
  wire [25:0] _target_T_331 = _target_T_330 | _target_T_329; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_12_brSlots_0_lower = ways_12_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_36 = {_target_T_331,s1_all_entries_12_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_12_tailSlot_tarStat = ways_12_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_333 = s1_all_entries_12_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_334 = s1_all_entries_12_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_335 = s1_all_entries_12_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_336 = _target_T_333 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_337 = _target_T_334 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_338 = _target_T_335 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_339 = _target_T_336 | _target_T_337; // @[Mux.scala 27:73]
  wire [25:0] _target_T_340 = _target_T_339 | _target_T_338; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_12_tailSlot_lower = ways_12_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_37 = {_target_T_340,s1_all_entries_12_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_345 = _target_T_333 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_346 = _target_T_334 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_347 = _target_T_335 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_348 = _target_T_345 | _target_T_346; // @[Mux.scala 27:73]
  wire [17:0] _target_T_349 = _target_T_348 | _target_T_347; // @[Mux.scala 27:73]
  wire [38:0] target_38 = {_target_T_349,s1_all_entries_12_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_12_tailSlot_sharing = ways_12_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_12_targets_1 = s1_all_entries_12_tailSlot_sharing ? target_37 : target_38; // @[FTB.scala 113:10]
  wire  s1_all_entries_12_tailSlot_valid = ways_12_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_12_is_br_sharing = s1_all_entries_12_tailSlot_valid & s1_all_entries_12_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_12_carry = ways_12_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_12_pftAddr = ways_12_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_12 = {s1_all_entries_12_carry,s1_all_entries_12_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_12_fallThroughErr = startLower >= endLowerwithCarry_12; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_12_fallThroughAddr_T_4 = s1_all_entries_12_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_12_fallThroughAddr_T_5 = {_s1_possible_full_preds_12_fallThroughAddr_T_4,
    s1_all_entries_12_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_12_fallThroughAddr = s1_possible_full_preds_12_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_12_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_12_always_taken_0 = ways_12_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_12_br_taken_mask_0 = ctrs_12_0[1] | s1_all_entries_12_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_12_always_taken_1 = ways_12_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_12_br_taken_mask_1 = ctrs_12_1[1] | s1_all_entries_12_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_13_brSlots_0_tarStat = ways_13_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_351 = s1_all_entries_13_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_352 = s1_all_entries_13_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_353 = s1_all_entries_13_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_354 = _target_T_351 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_355 = _target_T_352 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_356 = _target_T_353 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_357 = _target_T_354 | _target_T_355; // @[Mux.scala 27:73]
  wire [25:0] _target_T_358 = _target_T_357 | _target_T_356; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_13_brSlots_0_lower = ways_13_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_39 = {_target_T_358,s1_all_entries_13_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_13_tailSlot_tarStat = ways_13_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_360 = s1_all_entries_13_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_361 = s1_all_entries_13_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_362 = s1_all_entries_13_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_363 = _target_T_360 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_364 = _target_T_361 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_365 = _target_T_362 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_366 = _target_T_363 | _target_T_364; // @[Mux.scala 27:73]
  wire [25:0] _target_T_367 = _target_T_366 | _target_T_365; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_13_tailSlot_lower = ways_13_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_40 = {_target_T_367,s1_all_entries_13_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_372 = _target_T_360 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_373 = _target_T_361 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_374 = _target_T_362 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_375 = _target_T_372 | _target_T_373; // @[Mux.scala 27:73]
  wire [17:0] _target_T_376 = _target_T_375 | _target_T_374; // @[Mux.scala 27:73]
  wire [38:0] target_41 = {_target_T_376,s1_all_entries_13_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_13_tailSlot_sharing = ways_13_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_13_targets_1 = s1_all_entries_13_tailSlot_sharing ? target_40 : target_41; // @[FTB.scala 113:10]
  wire  s1_all_entries_13_tailSlot_valid = ways_13_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_13_is_br_sharing = s1_all_entries_13_tailSlot_valid & s1_all_entries_13_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_13_carry = ways_13_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_13_pftAddr = ways_13_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_13 = {s1_all_entries_13_carry,s1_all_entries_13_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_13_fallThroughErr = startLower >= endLowerwithCarry_13; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_13_fallThroughAddr_T_4 = s1_all_entries_13_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_13_fallThroughAddr_T_5 = {_s1_possible_full_preds_13_fallThroughAddr_T_4,
    s1_all_entries_13_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_13_fallThroughAddr = s1_possible_full_preds_13_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_13_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_13_always_taken_0 = ways_13_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_13_br_taken_mask_0 = ctrs_13_0[1] | s1_all_entries_13_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_13_always_taken_1 = ways_13_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_13_br_taken_mask_1 = ctrs_13_1[1] | s1_all_entries_13_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_14_brSlots_0_tarStat = ways_14_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_378 = s1_all_entries_14_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_379 = s1_all_entries_14_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_380 = s1_all_entries_14_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_381 = _target_T_378 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_382 = _target_T_379 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_383 = _target_T_380 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_384 = _target_T_381 | _target_T_382; // @[Mux.scala 27:73]
  wire [25:0] _target_T_385 = _target_T_384 | _target_T_383; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_14_brSlots_0_lower = ways_14_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_42 = {_target_T_385,s1_all_entries_14_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_14_tailSlot_tarStat = ways_14_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_387 = s1_all_entries_14_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_388 = s1_all_entries_14_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_389 = s1_all_entries_14_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_390 = _target_T_387 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_391 = _target_T_388 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_392 = _target_T_389 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_393 = _target_T_390 | _target_T_391; // @[Mux.scala 27:73]
  wire [25:0] _target_T_394 = _target_T_393 | _target_T_392; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_14_tailSlot_lower = ways_14_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_43 = {_target_T_394,s1_all_entries_14_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_399 = _target_T_387 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_400 = _target_T_388 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_401 = _target_T_389 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_402 = _target_T_399 | _target_T_400; // @[Mux.scala 27:73]
  wire [17:0] _target_T_403 = _target_T_402 | _target_T_401; // @[Mux.scala 27:73]
  wire [38:0] target_44 = {_target_T_403,s1_all_entries_14_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_14_tailSlot_sharing = ways_14_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_14_targets_1 = s1_all_entries_14_tailSlot_sharing ? target_43 : target_44; // @[FTB.scala 113:10]
  wire  s1_all_entries_14_tailSlot_valid = ways_14_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_14_is_br_sharing = s1_all_entries_14_tailSlot_valid & s1_all_entries_14_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_14_carry = ways_14_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_14_pftAddr = ways_14_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_14 = {s1_all_entries_14_carry,s1_all_entries_14_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_14_fallThroughErr = startLower >= endLowerwithCarry_14; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_14_fallThroughAddr_T_4 = s1_all_entries_14_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_14_fallThroughAddr_T_5 = {_s1_possible_full_preds_14_fallThroughAddr_T_4,
    s1_all_entries_14_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_14_fallThroughAddr = s1_possible_full_preds_14_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_14_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_14_always_taken_0 = ways_14_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_14_br_taken_mask_0 = ctrs_14_0[1] | s1_all_entries_14_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_14_always_taken_1 = ways_14_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_14_br_taken_mask_1 = ctrs_14_1[1] | s1_all_entries_14_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_15_brSlots_0_tarStat = ways_15_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_405 = s1_all_entries_15_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_406 = s1_all_entries_15_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_407 = s1_all_entries_15_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_408 = _target_T_405 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_409 = _target_T_406 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_410 = _target_T_407 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_411 = _target_T_408 | _target_T_409; // @[Mux.scala 27:73]
  wire [25:0] _target_T_412 = _target_T_411 | _target_T_410; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_15_brSlots_0_lower = ways_15_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_45 = {_target_T_412,s1_all_entries_15_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_15_tailSlot_tarStat = ways_15_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_414 = s1_all_entries_15_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_415 = s1_all_entries_15_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_416 = s1_all_entries_15_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_417 = _target_T_414 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_418 = _target_T_415 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_419 = _target_T_416 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_420 = _target_T_417 | _target_T_418; // @[Mux.scala 27:73]
  wire [25:0] _target_T_421 = _target_T_420 | _target_T_419; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_15_tailSlot_lower = ways_15_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_46 = {_target_T_421,s1_all_entries_15_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_426 = _target_T_414 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_427 = _target_T_415 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_428 = _target_T_416 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_429 = _target_T_426 | _target_T_427; // @[Mux.scala 27:73]
  wire [17:0] _target_T_430 = _target_T_429 | _target_T_428; // @[Mux.scala 27:73]
  wire [38:0] target_47 = {_target_T_430,s1_all_entries_15_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_15_tailSlot_sharing = ways_15_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_15_targets_1 = s1_all_entries_15_tailSlot_sharing ? target_46 : target_47; // @[FTB.scala 113:10]
  wire  s1_all_entries_15_tailSlot_valid = ways_15_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_15_is_br_sharing = s1_all_entries_15_tailSlot_valid & s1_all_entries_15_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_15_carry = ways_15_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_15_pftAddr = ways_15_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_15 = {s1_all_entries_15_carry,s1_all_entries_15_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_15_fallThroughErr = startLower >= endLowerwithCarry_15; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_15_fallThroughAddr_T_4 = s1_all_entries_15_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_15_fallThroughAddr_T_5 = {_s1_possible_full_preds_15_fallThroughAddr_T_4,
    s1_all_entries_15_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_15_fallThroughAddr = s1_possible_full_preds_15_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_15_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_15_always_taken_0 = ways_15_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_15_br_taken_mask_0 = ctrs_15_0[1] | s1_all_entries_15_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_15_always_taken_1 = ways_15_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_15_br_taken_mask_1 = ctrs_15_1[1] | s1_all_entries_15_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_16_brSlots_0_tarStat = ways_16_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_432 = s1_all_entries_16_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_433 = s1_all_entries_16_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_434 = s1_all_entries_16_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_435 = _target_T_432 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_436 = _target_T_433 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_437 = _target_T_434 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_438 = _target_T_435 | _target_T_436; // @[Mux.scala 27:73]
  wire [25:0] _target_T_439 = _target_T_438 | _target_T_437; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_16_brSlots_0_lower = ways_16_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_48 = {_target_T_439,s1_all_entries_16_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_16_tailSlot_tarStat = ways_16_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_441 = s1_all_entries_16_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_442 = s1_all_entries_16_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_443 = s1_all_entries_16_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_444 = _target_T_441 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_445 = _target_T_442 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_446 = _target_T_443 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_447 = _target_T_444 | _target_T_445; // @[Mux.scala 27:73]
  wire [25:0] _target_T_448 = _target_T_447 | _target_T_446; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_16_tailSlot_lower = ways_16_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_49 = {_target_T_448,s1_all_entries_16_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_453 = _target_T_441 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_454 = _target_T_442 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_455 = _target_T_443 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_456 = _target_T_453 | _target_T_454; // @[Mux.scala 27:73]
  wire [17:0] _target_T_457 = _target_T_456 | _target_T_455; // @[Mux.scala 27:73]
  wire [38:0] target_50 = {_target_T_457,s1_all_entries_16_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_16_tailSlot_sharing = ways_16_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_16_targets_1 = s1_all_entries_16_tailSlot_sharing ? target_49 : target_50; // @[FTB.scala 113:10]
  wire  s1_all_entries_16_tailSlot_valid = ways_16_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_16_is_br_sharing = s1_all_entries_16_tailSlot_valid & s1_all_entries_16_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_16_carry = ways_16_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_16_pftAddr = ways_16_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_16 = {s1_all_entries_16_carry,s1_all_entries_16_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_16_fallThroughErr = startLower >= endLowerwithCarry_16; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_16_fallThroughAddr_T_4 = s1_all_entries_16_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_16_fallThroughAddr_T_5 = {_s1_possible_full_preds_16_fallThroughAddr_T_4,
    s1_all_entries_16_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_16_fallThroughAddr = s1_possible_full_preds_16_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_16_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_16_always_taken_0 = ways_16_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_16_br_taken_mask_0 = ctrs_16_0[1] | s1_all_entries_16_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_16_always_taken_1 = ways_16_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_16_br_taken_mask_1 = ctrs_16_1[1] | s1_all_entries_16_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_17_brSlots_0_tarStat = ways_17_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_459 = s1_all_entries_17_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_460 = s1_all_entries_17_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_461 = s1_all_entries_17_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_462 = _target_T_459 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_463 = _target_T_460 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_464 = _target_T_461 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_465 = _target_T_462 | _target_T_463; // @[Mux.scala 27:73]
  wire [25:0] _target_T_466 = _target_T_465 | _target_T_464; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_17_brSlots_0_lower = ways_17_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_51 = {_target_T_466,s1_all_entries_17_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_17_tailSlot_tarStat = ways_17_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_468 = s1_all_entries_17_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_469 = s1_all_entries_17_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_470 = s1_all_entries_17_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_471 = _target_T_468 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_472 = _target_T_469 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_473 = _target_T_470 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_474 = _target_T_471 | _target_T_472; // @[Mux.scala 27:73]
  wire [25:0] _target_T_475 = _target_T_474 | _target_T_473; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_17_tailSlot_lower = ways_17_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_52 = {_target_T_475,s1_all_entries_17_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_480 = _target_T_468 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_481 = _target_T_469 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_482 = _target_T_470 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_483 = _target_T_480 | _target_T_481; // @[Mux.scala 27:73]
  wire [17:0] _target_T_484 = _target_T_483 | _target_T_482; // @[Mux.scala 27:73]
  wire [38:0] target_53 = {_target_T_484,s1_all_entries_17_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_17_tailSlot_sharing = ways_17_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_17_targets_1 = s1_all_entries_17_tailSlot_sharing ? target_52 : target_53; // @[FTB.scala 113:10]
  wire  s1_all_entries_17_tailSlot_valid = ways_17_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_17_is_br_sharing = s1_all_entries_17_tailSlot_valid & s1_all_entries_17_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_17_carry = ways_17_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_17_pftAddr = ways_17_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_17 = {s1_all_entries_17_carry,s1_all_entries_17_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_17_fallThroughErr = startLower >= endLowerwithCarry_17; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_17_fallThroughAddr_T_4 = s1_all_entries_17_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_17_fallThroughAddr_T_5 = {_s1_possible_full_preds_17_fallThroughAddr_T_4,
    s1_all_entries_17_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_17_fallThroughAddr = s1_possible_full_preds_17_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_17_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_17_always_taken_0 = ways_17_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_17_br_taken_mask_0 = ctrs_17_0[1] | s1_all_entries_17_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_17_always_taken_1 = ways_17_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_17_br_taken_mask_1 = ctrs_17_1[1] | s1_all_entries_17_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_18_brSlots_0_tarStat = ways_18_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_486 = s1_all_entries_18_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_487 = s1_all_entries_18_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_488 = s1_all_entries_18_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_489 = _target_T_486 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_490 = _target_T_487 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_491 = _target_T_488 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_492 = _target_T_489 | _target_T_490; // @[Mux.scala 27:73]
  wire [25:0] _target_T_493 = _target_T_492 | _target_T_491; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_18_brSlots_0_lower = ways_18_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_54 = {_target_T_493,s1_all_entries_18_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_18_tailSlot_tarStat = ways_18_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_495 = s1_all_entries_18_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_496 = s1_all_entries_18_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_497 = s1_all_entries_18_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_498 = _target_T_495 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_499 = _target_T_496 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_500 = _target_T_497 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_501 = _target_T_498 | _target_T_499; // @[Mux.scala 27:73]
  wire [25:0] _target_T_502 = _target_T_501 | _target_T_500; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_18_tailSlot_lower = ways_18_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_55 = {_target_T_502,s1_all_entries_18_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_507 = _target_T_495 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_508 = _target_T_496 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_509 = _target_T_497 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_510 = _target_T_507 | _target_T_508; // @[Mux.scala 27:73]
  wire [17:0] _target_T_511 = _target_T_510 | _target_T_509; // @[Mux.scala 27:73]
  wire [38:0] target_56 = {_target_T_511,s1_all_entries_18_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_18_tailSlot_sharing = ways_18_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_18_targets_1 = s1_all_entries_18_tailSlot_sharing ? target_55 : target_56; // @[FTB.scala 113:10]
  wire  s1_all_entries_18_tailSlot_valid = ways_18_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_18_is_br_sharing = s1_all_entries_18_tailSlot_valid & s1_all_entries_18_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_18_carry = ways_18_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_18_pftAddr = ways_18_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_18 = {s1_all_entries_18_carry,s1_all_entries_18_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_18_fallThroughErr = startLower >= endLowerwithCarry_18; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_18_fallThroughAddr_T_4 = s1_all_entries_18_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_18_fallThroughAddr_T_5 = {_s1_possible_full_preds_18_fallThroughAddr_T_4,
    s1_all_entries_18_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_18_fallThroughAddr = s1_possible_full_preds_18_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_18_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_18_always_taken_0 = ways_18_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_18_br_taken_mask_0 = ctrs_18_0[1] | s1_all_entries_18_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_18_always_taken_1 = ways_18_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_18_br_taken_mask_1 = ctrs_18_1[1] | s1_all_entries_18_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_19_brSlots_0_tarStat = ways_19_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_513 = s1_all_entries_19_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_514 = s1_all_entries_19_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_515 = s1_all_entries_19_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_516 = _target_T_513 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_517 = _target_T_514 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_518 = _target_T_515 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_519 = _target_T_516 | _target_T_517; // @[Mux.scala 27:73]
  wire [25:0] _target_T_520 = _target_T_519 | _target_T_518; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_19_brSlots_0_lower = ways_19_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_57 = {_target_T_520,s1_all_entries_19_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_19_tailSlot_tarStat = ways_19_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_522 = s1_all_entries_19_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_523 = s1_all_entries_19_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_524 = s1_all_entries_19_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_525 = _target_T_522 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_526 = _target_T_523 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_527 = _target_T_524 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_528 = _target_T_525 | _target_T_526; // @[Mux.scala 27:73]
  wire [25:0] _target_T_529 = _target_T_528 | _target_T_527; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_19_tailSlot_lower = ways_19_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_58 = {_target_T_529,s1_all_entries_19_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_534 = _target_T_522 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_535 = _target_T_523 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_536 = _target_T_524 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_537 = _target_T_534 | _target_T_535; // @[Mux.scala 27:73]
  wire [17:0] _target_T_538 = _target_T_537 | _target_T_536; // @[Mux.scala 27:73]
  wire [38:0] target_59 = {_target_T_538,s1_all_entries_19_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_19_tailSlot_sharing = ways_19_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_19_targets_1 = s1_all_entries_19_tailSlot_sharing ? target_58 : target_59; // @[FTB.scala 113:10]
  wire  s1_all_entries_19_tailSlot_valid = ways_19_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_19_is_br_sharing = s1_all_entries_19_tailSlot_valid & s1_all_entries_19_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_19_carry = ways_19_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_19_pftAddr = ways_19_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_19 = {s1_all_entries_19_carry,s1_all_entries_19_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_19_fallThroughErr = startLower >= endLowerwithCarry_19; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_19_fallThroughAddr_T_4 = s1_all_entries_19_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_19_fallThroughAddr_T_5 = {_s1_possible_full_preds_19_fallThroughAddr_T_4,
    s1_all_entries_19_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_19_fallThroughAddr = s1_possible_full_preds_19_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_19_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_19_always_taken_0 = ways_19_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_19_br_taken_mask_0 = ctrs_19_0[1] | s1_all_entries_19_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_19_always_taken_1 = ways_19_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_19_br_taken_mask_1 = ctrs_19_1[1] | s1_all_entries_19_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_20_brSlots_0_tarStat = ways_20_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_540 = s1_all_entries_20_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_541 = s1_all_entries_20_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_542 = s1_all_entries_20_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_543 = _target_T_540 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_544 = _target_T_541 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_545 = _target_T_542 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_546 = _target_T_543 | _target_T_544; // @[Mux.scala 27:73]
  wire [25:0] _target_T_547 = _target_T_546 | _target_T_545; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_20_brSlots_0_lower = ways_20_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_60 = {_target_T_547,s1_all_entries_20_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_20_tailSlot_tarStat = ways_20_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_549 = s1_all_entries_20_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_550 = s1_all_entries_20_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_551 = s1_all_entries_20_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_552 = _target_T_549 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_553 = _target_T_550 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_554 = _target_T_551 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_555 = _target_T_552 | _target_T_553; // @[Mux.scala 27:73]
  wire [25:0] _target_T_556 = _target_T_555 | _target_T_554; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_20_tailSlot_lower = ways_20_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_61 = {_target_T_556,s1_all_entries_20_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_561 = _target_T_549 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_562 = _target_T_550 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_563 = _target_T_551 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_564 = _target_T_561 | _target_T_562; // @[Mux.scala 27:73]
  wire [17:0] _target_T_565 = _target_T_564 | _target_T_563; // @[Mux.scala 27:73]
  wire [38:0] target_62 = {_target_T_565,s1_all_entries_20_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_20_tailSlot_sharing = ways_20_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_20_targets_1 = s1_all_entries_20_tailSlot_sharing ? target_61 : target_62; // @[FTB.scala 113:10]
  wire  s1_all_entries_20_tailSlot_valid = ways_20_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_20_is_br_sharing = s1_all_entries_20_tailSlot_valid & s1_all_entries_20_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_20_carry = ways_20_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_20_pftAddr = ways_20_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_20 = {s1_all_entries_20_carry,s1_all_entries_20_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_20_fallThroughErr = startLower >= endLowerwithCarry_20; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_20_fallThroughAddr_T_4 = s1_all_entries_20_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_20_fallThroughAddr_T_5 = {_s1_possible_full_preds_20_fallThroughAddr_T_4,
    s1_all_entries_20_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_20_fallThroughAddr = s1_possible_full_preds_20_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_20_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_20_always_taken_0 = ways_20_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_20_br_taken_mask_0 = ctrs_20_0[1] | s1_all_entries_20_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_20_always_taken_1 = ways_20_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_20_br_taken_mask_1 = ctrs_20_1[1] | s1_all_entries_20_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_21_brSlots_0_tarStat = ways_21_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_567 = s1_all_entries_21_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_568 = s1_all_entries_21_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_569 = s1_all_entries_21_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_570 = _target_T_567 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_571 = _target_T_568 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_572 = _target_T_569 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_573 = _target_T_570 | _target_T_571; // @[Mux.scala 27:73]
  wire [25:0] _target_T_574 = _target_T_573 | _target_T_572; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_21_brSlots_0_lower = ways_21_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_63 = {_target_T_574,s1_all_entries_21_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_21_tailSlot_tarStat = ways_21_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_576 = s1_all_entries_21_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_577 = s1_all_entries_21_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_578 = s1_all_entries_21_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_579 = _target_T_576 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_580 = _target_T_577 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_581 = _target_T_578 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_582 = _target_T_579 | _target_T_580; // @[Mux.scala 27:73]
  wire [25:0] _target_T_583 = _target_T_582 | _target_T_581; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_21_tailSlot_lower = ways_21_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_64 = {_target_T_583,s1_all_entries_21_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_588 = _target_T_576 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_589 = _target_T_577 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_590 = _target_T_578 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_591 = _target_T_588 | _target_T_589; // @[Mux.scala 27:73]
  wire [17:0] _target_T_592 = _target_T_591 | _target_T_590; // @[Mux.scala 27:73]
  wire [38:0] target_65 = {_target_T_592,s1_all_entries_21_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_21_tailSlot_sharing = ways_21_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_21_targets_1 = s1_all_entries_21_tailSlot_sharing ? target_64 : target_65; // @[FTB.scala 113:10]
  wire  s1_all_entries_21_tailSlot_valid = ways_21_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_21_is_br_sharing = s1_all_entries_21_tailSlot_valid & s1_all_entries_21_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_21_carry = ways_21_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_21_pftAddr = ways_21_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_21 = {s1_all_entries_21_carry,s1_all_entries_21_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_21_fallThroughErr = startLower >= endLowerwithCarry_21; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_21_fallThroughAddr_T_4 = s1_all_entries_21_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_21_fallThroughAddr_T_5 = {_s1_possible_full_preds_21_fallThroughAddr_T_4,
    s1_all_entries_21_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_21_fallThroughAddr = s1_possible_full_preds_21_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_21_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_21_always_taken_0 = ways_21_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_21_br_taken_mask_0 = ctrs_21_0[1] | s1_all_entries_21_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_21_always_taken_1 = ways_21_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_21_br_taken_mask_1 = ctrs_21_1[1] | s1_all_entries_21_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_22_brSlots_0_tarStat = ways_22_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_594 = s1_all_entries_22_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_595 = s1_all_entries_22_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_596 = s1_all_entries_22_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_597 = _target_T_594 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_598 = _target_T_595 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_599 = _target_T_596 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_600 = _target_T_597 | _target_T_598; // @[Mux.scala 27:73]
  wire [25:0] _target_T_601 = _target_T_600 | _target_T_599; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_22_brSlots_0_lower = ways_22_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_66 = {_target_T_601,s1_all_entries_22_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_22_tailSlot_tarStat = ways_22_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_603 = s1_all_entries_22_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_604 = s1_all_entries_22_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_605 = s1_all_entries_22_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_606 = _target_T_603 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_607 = _target_T_604 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_608 = _target_T_605 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_609 = _target_T_606 | _target_T_607; // @[Mux.scala 27:73]
  wire [25:0] _target_T_610 = _target_T_609 | _target_T_608; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_22_tailSlot_lower = ways_22_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_67 = {_target_T_610,s1_all_entries_22_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_615 = _target_T_603 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_616 = _target_T_604 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_617 = _target_T_605 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_618 = _target_T_615 | _target_T_616; // @[Mux.scala 27:73]
  wire [17:0] _target_T_619 = _target_T_618 | _target_T_617; // @[Mux.scala 27:73]
  wire [38:0] target_68 = {_target_T_619,s1_all_entries_22_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_22_tailSlot_sharing = ways_22_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_22_targets_1 = s1_all_entries_22_tailSlot_sharing ? target_67 : target_68; // @[FTB.scala 113:10]
  wire  s1_all_entries_22_tailSlot_valid = ways_22_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_22_is_br_sharing = s1_all_entries_22_tailSlot_valid & s1_all_entries_22_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_22_carry = ways_22_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_22_pftAddr = ways_22_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_22 = {s1_all_entries_22_carry,s1_all_entries_22_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_22_fallThroughErr = startLower >= endLowerwithCarry_22; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_22_fallThroughAddr_T_4 = s1_all_entries_22_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_22_fallThroughAddr_T_5 = {_s1_possible_full_preds_22_fallThroughAddr_T_4,
    s1_all_entries_22_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_22_fallThroughAddr = s1_possible_full_preds_22_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_22_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_22_always_taken_0 = ways_22_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_22_br_taken_mask_0 = ctrs_22_0[1] | s1_all_entries_22_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_22_always_taken_1 = ways_22_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_22_br_taken_mask_1 = ctrs_22_1[1] | s1_all_entries_22_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_23_brSlots_0_tarStat = ways_23_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_621 = s1_all_entries_23_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_622 = s1_all_entries_23_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_623 = s1_all_entries_23_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_624 = _target_T_621 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_625 = _target_T_622 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_626 = _target_T_623 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_627 = _target_T_624 | _target_T_625; // @[Mux.scala 27:73]
  wire [25:0] _target_T_628 = _target_T_627 | _target_T_626; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_23_brSlots_0_lower = ways_23_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_69 = {_target_T_628,s1_all_entries_23_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_23_tailSlot_tarStat = ways_23_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_630 = s1_all_entries_23_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_631 = s1_all_entries_23_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_632 = s1_all_entries_23_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_633 = _target_T_630 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_634 = _target_T_631 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_635 = _target_T_632 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_636 = _target_T_633 | _target_T_634; // @[Mux.scala 27:73]
  wire [25:0] _target_T_637 = _target_T_636 | _target_T_635; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_23_tailSlot_lower = ways_23_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_70 = {_target_T_637,s1_all_entries_23_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_642 = _target_T_630 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_643 = _target_T_631 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_644 = _target_T_632 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_645 = _target_T_642 | _target_T_643; // @[Mux.scala 27:73]
  wire [17:0] _target_T_646 = _target_T_645 | _target_T_644; // @[Mux.scala 27:73]
  wire [38:0] target_71 = {_target_T_646,s1_all_entries_23_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_23_tailSlot_sharing = ways_23_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_23_targets_1 = s1_all_entries_23_tailSlot_sharing ? target_70 : target_71; // @[FTB.scala 113:10]
  wire  s1_all_entries_23_tailSlot_valid = ways_23_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_23_is_br_sharing = s1_all_entries_23_tailSlot_valid & s1_all_entries_23_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_23_carry = ways_23_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_23_pftAddr = ways_23_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_23 = {s1_all_entries_23_carry,s1_all_entries_23_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_23_fallThroughErr = startLower >= endLowerwithCarry_23; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_23_fallThroughAddr_T_4 = s1_all_entries_23_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_23_fallThroughAddr_T_5 = {_s1_possible_full_preds_23_fallThroughAddr_T_4,
    s1_all_entries_23_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_23_fallThroughAddr = s1_possible_full_preds_23_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_23_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_23_always_taken_0 = ways_23_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_23_br_taken_mask_0 = ctrs_23_0[1] | s1_all_entries_23_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_23_always_taken_1 = ways_23_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_23_br_taken_mask_1 = ctrs_23_1[1] | s1_all_entries_23_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_24_brSlots_0_tarStat = ways_24_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_648 = s1_all_entries_24_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_649 = s1_all_entries_24_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_650 = s1_all_entries_24_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_651 = _target_T_648 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_652 = _target_T_649 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_653 = _target_T_650 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_654 = _target_T_651 | _target_T_652; // @[Mux.scala 27:73]
  wire [25:0] _target_T_655 = _target_T_654 | _target_T_653; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_24_brSlots_0_lower = ways_24_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_72 = {_target_T_655,s1_all_entries_24_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_24_tailSlot_tarStat = ways_24_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_657 = s1_all_entries_24_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_658 = s1_all_entries_24_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_659 = s1_all_entries_24_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_660 = _target_T_657 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_661 = _target_T_658 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_662 = _target_T_659 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_663 = _target_T_660 | _target_T_661; // @[Mux.scala 27:73]
  wire [25:0] _target_T_664 = _target_T_663 | _target_T_662; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_24_tailSlot_lower = ways_24_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_73 = {_target_T_664,s1_all_entries_24_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_669 = _target_T_657 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_670 = _target_T_658 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_671 = _target_T_659 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_672 = _target_T_669 | _target_T_670; // @[Mux.scala 27:73]
  wire [17:0] _target_T_673 = _target_T_672 | _target_T_671; // @[Mux.scala 27:73]
  wire [38:0] target_74 = {_target_T_673,s1_all_entries_24_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_24_tailSlot_sharing = ways_24_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_24_targets_1 = s1_all_entries_24_tailSlot_sharing ? target_73 : target_74; // @[FTB.scala 113:10]
  wire  s1_all_entries_24_tailSlot_valid = ways_24_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_24_is_br_sharing = s1_all_entries_24_tailSlot_valid & s1_all_entries_24_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_24_carry = ways_24_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_24_pftAddr = ways_24_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_24 = {s1_all_entries_24_carry,s1_all_entries_24_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_24_fallThroughErr = startLower >= endLowerwithCarry_24; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_24_fallThroughAddr_T_4 = s1_all_entries_24_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_24_fallThroughAddr_T_5 = {_s1_possible_full_preds_24_fallThroughAddr_T_4,
    s1_all_entries_24_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_24_fallThroughAddr = s1_possible_full_preds_24_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_24_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_24_always_taken_0 = ways_24_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_24_br_taken_mask_0 = ctrs_24_0[1] | s1_all_entries_24_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_24_always_taken_1 = ways_24_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_24_br_taken_mask_1 = ctrs_24_1[1] | s1_all_entries_24_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_25_brSlots_0_tarStat = ways_25_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_675 = s1_all_entries_25_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_676 = s1_all_entries_25_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_677 = s1_all_entries_25_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_678 = _target_T_675 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_679 = _target_T_676 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_680 = _target_T_677 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_681 = _target_T_678 | _target_T_679; // @[Mux.scala 27:73]
  wire [25:0] _target_T_682 = _target_T_681 | _target_T_680; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_25_brSlots_0_lower = ways_25_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_75 = {_target_T_682,s1_all_entries_25_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_25_tailSlot_tarStat = ways_25_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_684 = s1_all_entries_25_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_685 = s1_all_entries_25_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_686 = s1_all_entries_25_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_687 = _target_T_684 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_688 = _target_T_685 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_689 = _target_T_686 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_690 = _target_T_687 | _target_T_688; // @[Mux.scala 27:73]
  wire [25:0] _target_T_691 = _target_T_690 | _target_T_689; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_25_tailSlot_lower = ways_25_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_76 = {_target_T_691,s1_all_entries_25_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_696 = _target_T_684 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_697 = _target_T_685 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_698 = _target_T_686 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_699 = _target_T_696 | _target_T_697; // @[Mux.scala 27:73]
  wire [17:0] _target_T_700 = _target_T_699 | _target_T_698; // @[Mux.scala 27:73]
  wire [38:0] target_77 = {_target_T_700,s1_all_entries_25_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_25_tailSlot_sharing = ways_25_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_25_targets_1 = s1_all_entries_25_tailSlot_sharing ? target_76 : target_77; // @[FTB.scala 113:10]
  wire  s1_all_entries_25_tailSlot_valid = ways_25_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_25_is_br_sharing = s1_all_entries_25_tailSlot_valid & s1_all_entries_25_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_25_carry = ways_25_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_25_pftAddr = ways_25_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_25 = {s1_all_entries_25_carry,s1_all_entries_25_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_25_fallThroughErr = startLower >= endLowerwithCarry_25; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_25_fallThroughAddr_T_4 = s1_all_entries_25_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_25_fallThroughAddr_T_5 = {_s1_possible_full_preds_25_fallThroughAddr_T_4,
    s1_all_entries_25_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_25_fallThroughAddr = s1_possible_full_preds_25_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_25_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_25_always_taken_0 = ways_25_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_25_br_taken_mask_0 = ctrs_25_0[1] | s1_all_entries_25_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_25_always_taken_1 = ways_25_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_25_br_taken_mask_1 = ctrs_25_1[1] | s1_all_entries_25_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_26_brSlots_0_tarStat = ways_26_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_702 = s1_all_entries_26_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_703 = s1_all_entries_26_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_704 = s1_all_entries_26_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_705 = _target_T_702 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_706 = _target_T_703 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_707 = _target_T_704 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_708 = _target_T_705 | _target_T_706; // @[Mux.scala 27:73]
  wire [25:0] _target_T_709 = _target_T_708 | _target_T_707; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_26_brSlots_0_lower = ways_26_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_78 = {_target_T_709,s1_all_entries_26_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_26_tailSlot_tarStat = ways_26_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_711 = s1_all_entries_26_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_712 = s1_all_entries_26_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_713 = s1_all_entries_26_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_714 = _target_T_711 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_715 = _target_T_712 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_716 = _target_T_713 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_717 = _target_T_714 | _target_T_715; // @[Mux.scala 27:73]
  wire [25:0] _target_T_718 = _target_T_717 | _target_T_716; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_26_tailSlot_lower = ways_26_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_79 = {_target_T_718,s1_all_entries_26_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_723 = _target_T_711 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_724 = _target_T_712 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_725 = _target_T_713 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_726 = _target_T_723 | _target_T_724; // @[Mux.scala 27:73]
  wire [17:0] _target_T_727 = _target_T_726 | _target_T_725; // @[Mux.scala 27:73]
  wire [38:0] target_80 = {_target_T_727,s1_all_entries_26_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_26_tailSlot_sharing = ways_26_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_26_targets_1 = s1_all_entries_26_tailSlot_sharing ? target_79 : target_80; // @[FTB.scala 113:10]
  wire  s1_all_entries_26_tailSlot_valid = ways_26_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_26_is_br_sharing = s1_all_entries_26_tailSlot_valid & s1_all_entries_26_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_26_carry = ways_26_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_26_pftAddr = ways_26_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_26 = {s1_all_entries_26_carry,s1_all_entries_26_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_26_fallThroughErr = startLower >= endLowerwithCarry_26; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_26_fallThroughAddr_T_4 = s1_all_entries_26_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_26_fallThroughAddr_T_5 = {_s1_possible_full_preds_26_fallThroughAddr_T_4,
    s1_all_entries_26_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_26_fallThroughAddr = s1_possible_full_preds_26_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_26_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_26_always_taken_0 = ways_26_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_26_br_taken_mask_0 = ctrs_26_0[1] | s1_all_entries_26_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_26_always_taken_1 = ways_26_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_26_br_taken_mask_1 = ctrs_26_1[1] | s1_all_entries_26_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_27_brSlots_0_tarStat = ways_27_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_729 = s1_all_entries_27_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_730 = s1_all_entries_27_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_731 = s1_all_entries_27_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_732 = _target_T_729 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_733 = _target_T_730 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_734 = _target_T_731 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_735 = _target_T_732 | _target_T_733; // @[Mux.scala 27:73]
  wire [25:0] _target_T_736 = _target_T_735 | _target_T_734; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_27_brSlots_0_lower = ways_27_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_81 = {_target_T_736,s1_all_entries_27_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_27_tailSlot_tarStat = ways_27_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_738 = s1_all_entries_27_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_739 = s1_all_entries_27_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_740 = s1_all_entries_27_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_741 = _target_T_738 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_742 = _target_T_739 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_743 = _target_T_740 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_744 = _target_T_741 | _target_T_742; // @[Mux.scala 27:73]
  wire [25:0] _target_T_745 = _target_T_744 | _target_T_743; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_27_tailSlot_lower = ways_27_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_82 = {_target_T_745,s1_all_entries_27_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_750 = _target_T_738 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_751 = _target_T_739 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_752 = _target_T_740 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_753 = _target_T_750 | _target_T_751; // @[Mux.scala 27:73]
  wire [17:0] _target_T_754 = _target_T_753 | _target_T_752; // @[Mux.scala 27:73]
  wire [38:0] target_83 = {_target_T_754,s1_all_entries_27_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_27_tailSlot_sharing = ways_27_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_27_targets_1 = s1_all_entries_27_tailSlot_sharing ? target_82 : target_83; // @[FTB.scala 113:10]
  wire  s1_all_entries_27_tailSlot_valid = ways_27_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_27_is_br_sharing = s1_all_entries_27_tailSlot_valid & s1_all_entries_27_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_27_carry = ways_27_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_27_pftAddr = ways_27_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_27 = {s1_all_entries_27_carry,s1_all_entries_27_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_27_fallThroughErr = startLower >= endLowerwithCarry_27; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_27_fallThroughAddr_T_4 = s1_all_entries_27_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_27_fallThroughAddr_T_5 = {_s1_possible_full_preds_27_fallThroughAddr_T_4,
    s1_all_entries_27_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_27_fallThroughAddr = s1_possible_full_preds_27_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_27_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_27_always_taken_0 = ways_27_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_27_br_taken_mask_0 = ctrs_27_0[1] | s1_all_entries_27_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_27_always_taken_1 = ways_27_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_27_br_taken_mask_1 = ctrs_27_1[1] | s1_all_entries_27_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_28_brSlots_0_tarStat = ways_28_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_756 = s1_all_entries_28_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_757 = s1_all_entries_28_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_758 = s1_all_entries_28_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_759 = _target_T_756 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_760 = _target_T_757 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_761 = _target_T_758 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_762 = _target_T_759 | _target_T_760; // @[Mux.scala 27:73]
  wire [25:0] _target_T_763 = _target_T_762 | _target_T_761; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_28_brSlots_0_lower = ways_28_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_84 = {_target_T_763,s1_all_entries_28_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_28_tailSlot_tarStat = ways_28_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_765 = s1_all_entries_28_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_766 = s1_all_entries_28_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_767 = s1_all_entries_28_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_768 = _target_T_765 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_769 = _target_T_766 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_770 = _target_T_767 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_771 = _target_T_768 | _target_T_769; // @[Mux.scala 27:73]
  wire [25:0] _target_T_772 = _target_T_771 | _target_T_770; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_28_tailSlot_lower = ways_28_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_85 = {_target_T_772,s1_all_entries_28_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_777 = _target_T_765 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_778 = _target_T_766 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_779 = _target_T_767 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_780 = _target_T_777 | _target_T_778; // @[Mux.scala 27:73]
  wire [17:0] _target_T_781 = _target_T_780 | _target_T_779; // @[Mux.scala 27:73]
  wire [38:0] target_86 = {_target_T_781,s1_all_entries_28_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_28_tailSlot_sharing = ways_28_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_28_targets_1 = s1_all_entries_28_tailSlot_sharing ? target_85 : target_86; // @[FTB.scala 113:10]
  wire  s1_all_entries_28_tailSlot_valid = ways_28_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_28_is_br_sharing = s1_all_entries_28_tailSlot_valid & s1_all_entries_28_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_28_carry = ways_28_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_28_pftAddr = ways_28_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_28 = {s1_all_entries_28_carry,s1_all_entries_28_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_28_fallThroughErr = startLower >= endLowerwithCarry_28; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_28_fallThroughAddr_T_4 = s1_all_entries_28_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_28_fallThroughAddr_T_5 = {_s1_possible_full_preds_28_fallThroughAddr_T_4,
    s1_all_entries_28_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_28_fallThroughAddr = s1_possible_full_preds_28_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_28_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_28_always_taken_0 = ways_28_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_28_br_taken_mask_0 = ctrs_28_0[1] | s1_all_entries_28_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_28_always_taken_1 = ways_28_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_28_br_taken_mask_1 = ctrs_28_1[1] | s1_all_entries_28_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_29_brSlots_0_tarStat = ways_29_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_783 = s1_all_entries_29_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_784 = s1_all_entries_29_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_785 = s1_all_entries_29_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_786 = _target_T_783 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_787 = _target_T_784 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_788 = _target_T_785 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_789 = _target_T_786 | _target_T_787; // @[Mux.scala 27:73]
  wire [25:0] _target_T_790 = _target_T_789 | _target_T_788; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_29_brSlots_0_lower = ways_29_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_87 = {_target_T_790,s1_all_entries_29_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_29_tailSlot_tarStat = ways_29_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_792 = s1_all_entries_29_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_793 = s1_all_entries_29_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_794 = s1_all_entries_29_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_795 = _target_T_792 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_796 = _target_T_793 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_797 = _target_T_794 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_798 = _target_T_795 | _target_T_796; // @[Mux.scala 27:73]
  wire [25:0] _target_T_799 = _target_T_798 | _target_T_797; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_29_tailSlot_lower = ways_29_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_88 = {_target_T_799,s1_all_entries_29_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_804 = _target_T_792 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_805 = _target_T_793 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_806 = _target_T_794 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_807 = _target_T_804 | _target_T_805; // @[Mux.scala 27:73]
  wire [17:0] _target_T_808 = _target_T_807 | _target_T_806; // @[Mux.scala 27:73]
  wire [38:0] target_89 = {_target_T_808,s1_all_entries_29_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_29_tailSlot_sharing = ways_29_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_29_targets_1 = s1_all_entries_29_tailSlot_sharing ? target_88 : target_89; // @[FTB.scala 113:10]
  wire  s1_all_entries_29_tailSlot_valid = ways_29_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_29_is_br_sharing = s1_all_entries_29_tailSlot_valid & s1_all_entries_29_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_29_carry = ways_29_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_29_pftAddr = ways_29_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_29 = {s1_all_entries_29_carry,s1_all_entries_29_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_29_fallThroughErr = startLower >= endLowerwithCarry_29; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_29_fallThroughAddr_T_4 = s1_all_entries_29_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_29_fallThroughAddr_T_5 = {_s1_possible_full_preds_29_fallThroughAddr_T_4,
    s1_all_entries_29_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_29_fallThroughAddr = s1_possible_full_preds_29_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_29_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_29_always_taken_0 = ways_29_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_29_br_taken_mask_0 = ctrs_29_0[1] | s1_all_entries_29_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_29_always_taken_1 = ways_29_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_29_br_taken_mask_1 = ctrs_29_1[1] | s1_all_entries_29_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_30_brSlots_0_tarStat = ways_30_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_810 = s1_all_entries_30_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_811 = s1_all_entries_30_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_812 = s1_all_entries_30_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_813 = _target_T_810 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_814 = _target_T_811 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_815 = _target_T_812 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_816 = _target_T_813 | _target_T_814; // @[Mux.scala 27:73]
  wire [25:0] _target_T_817 = _target_T_816 | _target_T_815; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_30_brSlots_0_lower = ways_30_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_90 = {_target_T_817,s1_all_entries_30_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_30_tailSlot_tarStat = ways_30_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_819 = s1_all_entries_30_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_820 = s1_all_entries_30_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_821 = s1_all_entries_30_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_822 = _target_T_819 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_823 = _target_T_820 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_824 = _target_T_821 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_825 = _target_T_822 | _target_T_823; // @[Mux.scala 27:73]
  wire [25:0] _target_T_826 = _target_T_825 | _target_T_824; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_30_tailSlot_lower = ways_30_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_91 = {_target_T_826,s1_all_entries_30_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_831 = _target_T_819 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_832 = _target_T_820 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_833 = _target_T_821 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_834 = _target_T_831 | _target_T_832; // @[Mux.scala 27:73]
  wire [17:0] _target_T_835 = _target_T_834 | _target_T_833; // @[Mux.scala 27:73]
  wire [38:0] target_92 = {_target_T_835,s1_all_entries_30_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_30_tailSlot_sharing = ways_30_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_30_targets_1 = s1_all_entries_30_tailSlot_sharing ? target_91 : target_92; // @[FTB.scala 113:10]
  wire  s1_all_entries_30_tailSlot_valid = ways_30_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_30_is_br_sharing = s1_all_entries_30_tailSlot_valid & s1_all_entries_30_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_30_carry = ways_30_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_30_pftAddr = ways_30_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_30 = {s1_all_entries_30_carry,s1_all_entries_30_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_30_fallThroughErr = startLower >= endLowerwithCarry_30; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_30_fallThroughAddr_T_4 = s1_all_entries_30_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_30_fallThroughAddr_T_5 = {_s1_possible_full_preds_30_fallThroughAddr_T_4,
    s1_all_entries_30_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_30_fallThroughAddr = s1_possible_full_preds_30_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_30_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_30_always_taken_0 = ways_30_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_30_br_taken_mask_0 = ctrs_30_0[1] | s1_all_entries_30_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_30_always_taken_1 = ways_30_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_30_br_taken_mask_1 = ctrs_30_1[1] | s1_all_entries_30_always_taken_1; // @[FauFTB.scala 112:38]
  wire [1:0] s1_all_entries_31_brSlots_0_tarStat = ways_31_io_resp_brSlots_0_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_837 = s1_all_entries_31_brSlots_0_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_838 = s1_all_entries_31_brSlots_0_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_839 = s1_all_entries_31_brSlots_0_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_840 = _target_T_837 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_841 = _target_T_838 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_842 = _target_T_839 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_843 = _target_T_840 | _target_T_841; // @[Mux.scala 27:73]
  wire [25:0] _target_T_844 = _target_T_843 | _target_T_842; // @[Mux.scala 27:73]
  wire [11:0] s1_all_entries_31_brSlots_0_lower = ways_31_io_resp_brSlots_0_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_93 = {_target_T_844,s1_all_entries_31_brSlots_0_lower,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] s1_all_entries_31_tailSlot_tarStat = ways_31_io_resp_tailSlot_tarStat; // @[FauFTB.scala 107:{31,31}]
  wire  _target_T_846 = s1_all_entries_31_tailSlot_tarStat == 2'h1; // @[FTB.scala 102:19]
  wire  _target_T_847 = s1_all_entries_31_tailSlot_tarStat == 2'h2; // @[FTB.scala 103:19]
  wire  _target_T_848 = s1_all_entries_31_tailSlot_tarStat == 2'h0; // @[FTB.scala 104:19]
  wire [25:0] _target_T_849 = _target_T_846 ? higher_plus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_850 = _target_T_847 ? higher_minus_one : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_851 = _target_T_848 ? h : 26'h0; // @[Mux.scala 27:73]
  wire [25:0] _target_T_852 = _target_T_849 | _target_T_850; // @[Mux.scala 27:73]
  wire [25:0] _target_T_853 = _target_T_852 | _target_T_851; // @[Mux.scala 27:73]
  wire [19:0] s1_all_entries_31_tailSlot_lower = ways_31_io_resp_tailSlot_lower; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] target_94 = {_target_T_853,s1_all_entries_31_tailSlot_lower[11:0],1'h0}; // @[Cat.scala 31:58]
  wire [17:0] _target_T_858 = _target_T_846 ? higher_plus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_859 = _target_T_847 ? higher_minus_one_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_860 = _target_T_848 ? h_2 : 18'h0; // @[Mux.scala 27:73]
  wire [17:0] _target_T_861 = _target_T_858 | _target_T_859; // @[Mux.scala 27:73]
  wire [17:0] _target_T_862 = _target_T_861 | _target_T_860; // @[Mux.scala 27:73]
  wire [38:0] target_95 = {_target_T_862,s1_all_entries_31_tailSlot_lower,1'h0}; // @[Cat.scala 31:58]
  wire  s1_all_entries_31_tailSlot_sharing = ways_31_io_resp_tailSlot_sharing; // @[FauFTB.scala 107:{31,31}]
  wire [38:0] s1_possible_full_preds_31_targets_1 = s1_all_entries_31_tailSlot_sharing ? target_94 : target_95; // @[FTB.scala 113:10]
  wire  s1_all_entries_31_tailSlot_valid = ways_31_io_resp_tailSlot_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_31_is_br_sharing = s1_all_entries_31_tailSlot_valid & s1_all_entries_31_tailSlot_sharing; // @[FrontendBundle.scala 529:43]
  wire  s1_all_entries_31_carry = ways_31_io_resp_carry; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] s1_all_entries_31_pftAddr = ways_31_io_resp_pftAddr; // @[FauFTB.scala 107:{31,31}]
  wire [3:0] endLowerwithCarry_31 = {s1_all_entries_31_carry,s1_all_entries_31_pftAddr}; // @[Cat.scala 31:58]
  wire  s1_possible_full_preds_31_fallThroughErr = startLower >= endLowerwithCarry_31; // @[FrontendBundle.scala 533:34]
  wire [34:0] _s1_possible_full_preds_31_fallThroughAddr_T_4 = s1_all_entries_31_carry ?
    _s1_possible_full_preds_0_fallThroughAddr_T_3 : s1_possible_full_preds_0_fallThroughAddr_higher; // @[BPU.scala 112:12]
  wire [38:0] _s1_possible_full_preds_31_fallThroughAddr_T_5 = {_s1_possible_full_preds_31_fallThroughAddr_T_4,
    s1_all_entries_31_pftAddr,1'h0}; // @[Cat.scala 31:58]
  wire [38:0] s1_possible_full_preds_31_fallThroughAddr = s1_possible_full_preds_31_fallThroughErr ?
    _s1_possible_full_preds_0_fallThroughAddr_T_1 : _s1_possible_full_preds_31_fallThroughAddr_T_5; // @[FrontendBundle.scala 534:27]
  wire  s1_all_entries_31_always_taken_0 = ways_31_io_resp_always_taken_0; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_31_br_taken_mask_0 = ctrs_31_0[1] | s1_all_entries_31_always_taken_0; // @[FauFTB.scala 112:38]
  wire  s1_all_entries_31_always_taken_1 = ways_31_io_resp_always_taken_1; // @[FauFTB.scala 107:{31,31}]
  wire  s1_possible_full_preds_31_br_taken_mask_1 = ctrs_31_1[1] | s1_all_entries_31_always_taken_1; // @[FauFTB.scala 112:38]
  wire  _s1_hit_full_pred_T_110 = s1_hit_oh[15] & s1_possible_full_preds_15_is_br_sharing; // @[Mux.scala 27:73]
  wire  _s1_hit_full_pred_T_141 = s1_hit_oh[0] & s1_possible_full_preds_0_is_br_sharing | s1_hit_oh[1] &
    s1_possible_full_preds_1_is_br_sharing | s1_hit_oh[2] & s1_possible_full_preds_2_is_br_sharing | s1_hit_oh[3] &
    s1_possible_full_preds_3_is_br_sharing | s1_hit_oh[4] & s1_possible_full_preds_4_is_br_sharing | s1_hit_oh[5] &
    s1_possible_full_preds_5_is_br_sharing | s1_hit_oh[6] & s1_possible_full_preds_6_is_br_sharing | s1_hit_oh[7] &
    s1_possible_full_preds_7_is_br_sharing | s1_hit_oh[8] & s1_possible_full_preds_8_is_br_sharing | s1_hit_oh[9] &
    s1_possible_full_preds_9_is_br_sharing | s1_hit_oh[10] & s1_possible_full_preds_10_is_br_sharing | s1_hit_oh[11] &
    s1_possible_full_preds_11_is_br_sharing | s1_hit_oh[12] & s1_possible_full_preds_12_is_br_sharing | s1_hit_oh[13] &
    s1_possible_full_preds_13_is_br_sharing | s1_hit_oh[14] & s1_possible_full_preds_14_is_br_sharing |
    _s1_hit_full_pred_T_110; // @[Mux.scala 27:73]
  wire  _s1_hit_full_pred_T_156 = _s1_hit_full_pred_T_141 | s1_hit_oh[16] & s1_possible_full_preds_16_is_br_sharing |
    s1_hit_oh[17] & s1_possible_full_preds_17_is_br_sharing | s1_hit_oh[18] & s1_possible_full_preds_18_is_br_sharing |
    s1_hit_oh[19] & s1_possible_full_preds_19_is_br_sharing | s1_hit_oh[20] & s1_possible_full_preds_20_is_br_sharing |
    s1_hit_oh[21] & s1_possible_full_preds_21_is_br_sharing | s1_hit_oh[22] & s1_possible_full_preds_22_is_br_sharing |
    s1_hit_oh[23] & s1_possible_full_preds_23_is_br_sharing | s1_hit_oh[24] & s1_possible_full_preds_24_is_br_sharing |
    s1_hit_oh[25] & s1_possible_full_preds_25_is_br_sharing | s1_hit_oh[26] & s1_possible_full_preds_26_is_br_sharing |
    s1_hit_oh[27] & s1_possible_full_preds_27_is_br_sharing | s1_hit_oh[28] & s1_possible_full_preds_28_is_br_sharing |
    s1_hit_oh[29] & s1_possible_full_preds_29_is_br_sharing | s1_hit_oh[30] & s1_possible_full_preds_30_is_br_sharing; // @[Mux.scala 27:73]
  wire  _s1_hit_full_pred_T_488 = s1_hit_oh[15] & s1_possible_full_preds_15_fallThroughErr; // @[Mux.scala 27:73]
  wire  _s1_hit_full_pred_T_519 = s1_hit_oh[0] & s1_possible_full_preds_0_fallThroughErr | s1_hit_oh[1] &
    s1_possible_full_preds_1_fallThroughErr | s1_hit_oh[2] & s1_possible_full_preds_2_fallThroughErr | s1_hit_oh[3] &
    s1_possible_full_preds_3_fallThroughErr | s1_hit_oh[4] & s1_possible_full_preds_4_fallThroughErr | s1_hit_oh[5] &
    s1_possible_full_preds_5_fallThroughErr | s1_hit_oh[6] & s1_possible_full_preds_6_fallThroughErr | s1_hit_oh[7] &
    s1_possible_full_preds_7_fallThroughErr | s1_hit_oh[8] & s1_possible_full_preds_8_fallThroughErr | s1_hit_oh[9] &
    s1_possible_full_preds_9_fallThroughErr | s1_hit_oh[10] & s1_possible_full_preds_10_fallThroughErr | s1_hit_oh[11]
     & s1_possible_full_preds_11_fallThroughErr | s1_hit_oh[12] & s1_possible_full_preds_12_fallThroughErr | s1_hit_oh[
    13] & s1_possible_full_preds_13_fallThroughErr | s1_hit_oh[14] & s1_possible_full_preds_14_fallThroughErr |
    _s1_hit_full_pred_T_488; // @[Mux.scala 27:73]
  wire  _s1_hit_full_pred_T_534 = _s1_hit_full_pred_T_519 | s1_hit_oh[16] & s1_possible_full_preds_16_fallThroughErr |
    s1_hit_oh[17] & s1_possible_full_preds_17_fallThroughErr | s1_hit_oh[18] & s1_possible_full_preds_18_fallThroughErr
     | s1_hit_oh[19] & s1_possible_full_preds_19_fallThroughErr | s1_hit_oh[20] &
    s1_possible_full_preds_20_fallThroughErr | s1_hit_oh[21] & s1_possible_full_preds_21_fallThroughErr | s1_hit_oh[22]
     & s1_possible_full_preds_22_fallThroughErr | s1_hit_oh[23] & s1_possible_full_preds_23_fallThroughErr | s1_hit_oh[
    24] & s1_possible_full_preds_24_fallThroughErr | s1_hit_oh[25] & s1_possible_full_preds_25_fallThroughErr |
    s1_hit_oh[26] & s1_possible_full_preds_26_fallThroughErr | s1_hit_oh[27] & s1_possible_full_preds_27_fallThroughErr
     | s1_hit_oh[28] & s1_possible_full_preds_28_fallThroughErr | s1_hit_oh[29] &
    s1_possible_full_preds_29_fallThroughErr | s1_hit_oh[30] & s1_possible_full_preds_30_fallThroughErr; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_536 = s1_hit_oh[0] ? s1_possible_full_preds_0_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_537 = s1_hit_oh[1] ? s1_possible_full_preds_1_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_538 = s1_hit_oh[2] ? s1_possible_full_preds_2_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_539 = s1_hit_oh[3] ? s1_possible_full_preds_3_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_540 = s1_hit_oh[4] ? s1_possible_full_preds_4_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_541 = s1_hit_oh[5] ? s1_possible_full_preds_5_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_542 = s1_hit_oh[6] ? s1_possible_full_preds_6_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_543 = s1_hit_oh[7] ? s1_possible_full_preds_7_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_544 = s1_hit_oh[8] ? s1_possible_full_preds_8_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_545 = s1_hit_oh[9] ? s1_possible_full_preds_9_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_546 = s1_hit_oh[10] ? s1_possible_full_preds_10_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_547 = s1_hit_oh[11] ? s1_possible_full_preds_11_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_548 = s1_hit_oh[12] ? s1_possible_full_preds_12_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_549 = s1_hit_oh[13] ? s1_possible_full_preds_13_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_550 = s1_hit_oh[14] ? s1_possible_full_preds_14_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_551 = s1_hit_oh[15] ? s1_possible_full_preds_15_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_552 = s1_hit_oh[16] ? s1_possible_full_preds_16_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_553 = s1_hit_oh[17] ? s1_possible_full_preds_17_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_554 = s1_hit_oh[18] ? s1_possible_full_preds_18_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_555 = s1_hit_oh[19] ? s1_possible_full_preds_19_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_556 = s1_hit_oh[20] ? s1_possible_full_preds_20_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_557 = s1_hit_oh[21] ? s1_possible_full_preds_21_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_558 = s1_hit_oh[22] ? s1_possible_full_preds_22_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_559 = s1_hit_oh[23] ? s1_possible_full_preds_23_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_560 = s1_hit_oh[24] ? s1_possible_full_preds_24_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_561 = s1_hit_oh[25] ? s1_possible_full_preds_25_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_562 = s1_hit_oh[26] ? s1_possible_full_preds_26_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_563 = s1_hit_oh[27] ? s1_possible_full_preds_27_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_564 = s1_hit_oh[28] ? s1_possible_full_preds_28_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_565 = s1_hit_oh[29] ? s1_possible_full_preds_29_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_566 = s1_hit_oh[30] ? s1_possible_full_preds_30_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_567 = s1_hit_oh[31] ? s1_possible_full_preds_31_fallThroughAddr : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_568 = _s1_hit_full_pred_T_536 | _s1_hit_full_pred_T_537; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_569 = _s1_hit_full_pred_T_568 | _s1_hit_full_pred_T_538; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_570 = _s1_hit_full_pred_T_569 | _s1_hit_full_pred_T_539; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_571 = _s1_hit_full_pred_T_570 | _s1_hit_full_pred_T_540; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_572 = _s1_hit_full_pred_T_571 | _s1_hit_full_pred_T_541; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_573 = _s1_hit_full_pred_T_572 | _s1_hit_full_pred_T_542; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_574 = _s1_hit_full_pred_T_573 | _s1_hit_full_pred_T_543; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_575 = _s1_hit_full_pred_T_574 | _s1_hit_full_pred_T_544; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_576 = _s1_hit_full_pred_T_575 | _s1_hit_full_pred_T_545; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_577 = _s1_hit_full_pred_T_576 | _s1_hit_full_pred_T_546; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_578 = _s1_hit_full_pred_T_577 | _s1_hit_full_pred_T_547; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_579 = _s1_hit_full_pred_T_578 | _s1_hit_full_pred_T_548; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_580 = _s1_hit_full_pred_T_579 | _s1_hit_full_pred_T_549; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_581 = _s1_hit_full_pred_T_580 | _s1_hit_full_pred_T_550; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_582 = _s1_hit_full_pred_T_581 | _s1_hit_full_pred_T_551; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_583 = _s1_hit_full_pred_T_582 | _s1_hit_full_pred_T_552; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_584 = _s1_hit_full_pred_T_583 | _s1_hit_full_pred_T_553; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_585 = _s1_hit_full_pred_T_584 | _s1_hit_full_pred_T_554; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_586 = _s1_hit_full_pred_T_585 | _s1_hit_full_pred_T_555; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_587 = _s1_hit_full_pred_T_586 | _s1_hit_full_pred_T_556; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_588 = _s1_hit_full_pred_T_587 | _s1_hit_full_pred_T_557; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_589 = _s1_hit_full_pred_T_588 | _s1_hit_full_pred_T_558; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_590 = _s1_hit_full_pred_T_589 | _s1_hit_full_pred_T_559; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_591 = _s1_hit_full_pred_T_590 | _s1_hit_full_pred_T_560; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_592 = _s1_hit_full_pred_T_591 | _s1_hit_full_pred_T_561; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_593 = _s1_hit_full_pred_T_592 | _s1_hit_full_pred_T_562; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_594 = _s1_hit_full_pred_T_593 | _s1_hit_full_pred_T_563; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_595 = _s1_hit_full_pred_T_594 | _s1_hit_full_pred_T_564; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_596 = _s1_hit_full_pred_T_595 | _s1_hit_full_pred_T_565; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_597 = _s1_hit_full_pred_T_596 | _s1_hit_full_pred_T_566; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_0_brSlots_0_offset = ways_0_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_599 = s1_hit_oh[0] ? s1_all_entries_0_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_1_brSlots_0_offset = ways_1_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_600 = s1_hit_oh[1] ? s1_all_entries_1_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_2_brSlots_0_offset = ways_2_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_601 = s1_hit_oh[2] ? s1_all_entries_2_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_3_brSlots_0_offset = ways_3_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_602 = s1_hit_oh[3] ? s1_all_entries_3_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_4_brSlots_0_offset = ways_4_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_603 = s1_hit_oh[4] ? s1_all_entries_4_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_5_brSlots_0_offset = ways_5_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_604 = s1_hit_oh[5] ? s1_all_entries_5_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_6_brSlots_0_offset = ways_6_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_605 = s1_hit_oh[6] ? s1_all_entries_6_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_7_brSlots_0_offset = ways_7_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_606 = s1_hit_oh[7] ? s1_all_entries_7_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_8_brSlots_0_offset = ways_8_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_607 = s1_hit_oh[8] ? s1_all_entries_8_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_9_brSlots_0_offset = ways_9_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_608 = s1_hit_oh[9] ? s1_all_entries_9_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_10_brSlots_0_offset = ways_10_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_609 = s1_hit_oh[10] ? s1_all_entries_10_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_11_brSlots_0_offset = ways_11_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_610 = s1_hit_oh[11] ? s1_all_entries_11_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_12_brSlots_0_offset = ways_12_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_611 = s1_hit_oh[12] ? s1_all_entries_12_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_13_brSlots_0_offset = ways_13_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_612 = s1_hit_oh[13] ? s1_all_entries_13_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_14_brSlots_0_offset = ways_14_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_613 = s1_hit_oh[14] ? s1_all_entries_14_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_15_brSlots_0_offset = ways_15_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_614 = s1_hit_oh[15] ? s1_all_entries_15_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_16_brSlots_0_offset = ways_16_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_615 = s1_hit_oh[16] ? s1_all_entries_16_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_17_brSlots_0_offset = ways_17_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_616 = s1_hit_oh[17] ? s1_all_entries_17_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_18_brSlots_0_offset = ways_18_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_617 = s1_hit_oh[18] ? s1_all_entries_18_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_19_brSlots_0_offset = ways_19_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_618 = s1_hit_oh[19] ? s1_all_entries_19_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_20_brSlots_0_offset = ways_20_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_619 = s1_hit_oh[20] ? s1_all_entries_20_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_21_brSlots_0_offset = ways_21_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_620 = s1_hit_oh[21] ? s1_all_entries_21_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_22_brSlots_0_offset = ways_22_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_621 = s1_hit_oh[22] ? s1_all_entries_22_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_23_brSlots_0_offset = ways_23_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_622 = s1_hit_oh[23] ? s1_all_entries_23_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_24_brSlots_0_offset = ways_24_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_623 = s1_hit_oh[24] ? s1_all_entries_24_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_25_brSlots_0_offset = ways_25_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_624 = s1_hit_oh[25] ? s1_all_entries_25_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_26_brSlots_0_offset = ways_26_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_625 = s1_hit_oh[26] ? s1_all_entries_26_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_27_brSlots_0_offset = ways_27_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_626 = s1_hit_oh[27] ? s1_all_entries_27_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_28_brSlots_0_offset = ways_28_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_627 = s1_hit_oh[28] ? s1_all_entries_28_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_29_brSlots_0_offset = ways_29_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_628 = s1_hit_oh[29] ? s1_all_entries_29_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_30_brSlots_0_offset = ways_30_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_629 = s1_hit_oh[30] ? s1_all_entries_30_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_31_brSlots_0_offset = ways_31_io_resp_brSlots_0_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_630 = s1_hit_oh[31] ? s1_all_entries_31_brSlots_0_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_631 = _s1_hit_full_pred_T_599 | _s1_hit_full_pred_T_600; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_632 = _s1_hit_full_pred_T_631 | _s1_hit_full_pred_T_601; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_633 = _s1_hit_full_pred_T_632 | _s1_hit_full_pred_T_602; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_634 = _s1_hit_full_pred_T_633 | _s1_hit_full_pred_T_603; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_635 = _s1_hit_full_pred_T_634 | _s1_hit_full_pred_T_604; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_636 = _s1_hit_full_pred_T_635 | _s1_hit_full_pred_T_605; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_637 = _s1_hit_full_pred_T_636 | _s1_hit_full_pred_T_606; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_638 = _s1_hit_full_pred_T_637 | _s1_hit_full_pred_T_607; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_639 = _s1_hit_full_pred_T_638 | _s1_hit_full_pred_T_608; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_640 = _s1_hit_full_pred_T_639 | _s1_hit_full_pred_T_609; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_641 = _s1_hit_full_pred_T_640 | _s1_hit_full_pred_T_610; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_642 = _s1_hit_full_pred_T_641 | _s1_hit_full_pred_T_611; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_643 = _s1_hit_full_pred_T_642 | _s1_hit_full_pred_T_612; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_644 = _s1_hit_full_pred_T_643 | _s1_hit_full_pred_T_613; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_645 = _s1_hit_full_pred_T_644 | _s1_hit_full_pred_T_614; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_646 = _s1_hit_full_pred_T_645 | _s1_hit_full_pred_T_615; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_647 = _s1_hit_full_pred_T_646 | _s1_hit_full_pred_T_616; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_648 = _s1_hit_full_pred_T_647 | _s1_hit_full_pred_T_617; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_649 = _s1_hit_full_pred_T_648 | _s1_hit_full_pred_T_618; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_650 = _s1_hit_full_pred_T_649 | _s1_hit_full_pred_T_619; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_651 = _s1_hit_full_pred_T_650 | _s1_hit_full_pred_T_620; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_652 = _s1_hit_full_pred_T_651 | _s1_hit_full_pred_T_621; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_653 = _s1_hit_full_pred_T_652 | _s1_hit_full_pred_T_622; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_654 = _s1_hit_full_pred_T_653 | _s1_hit_full_pred_T_623; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_655 = _s1_hit_full_pred_T_654 | _s1_hit_full_pred_T_624; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_656 = _s1_hit_full_pred_T_655 | _s1_hit_full_pred_T_625; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_657 = _s1_hit_full_pred_T_656 | _s1_hit_full_pred_T_626; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_658 = _s1_hit_full_pred_T_657 | _s1_hit_full_pred_T_627; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_659 = _s1_hit_full_pred_T_658 | _s1_hit_full_pred_T_628; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_660 = _s1_hit_full_pred_T_659 | _s1_hit_full_pred_T_629; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_0_tailSlot_offset = ways_0_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_662 = s1_hit_oh[0] ? s1_all_entries_0_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_1_tailSlot_offset = ways_1_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_663 = s1_hit_oh[1] ? s1_all_entries_1_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_2_tailSlot_offset = ways_2_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_664 = s1_hit_oh[2] ? s1_all_entries_2_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_3_tailSlot_offset = ways_3_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_665 = s1_hit_oh[3] ? s1_all_entries_3_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_4_tailSlot_offset = ways_4_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_666 = s1_hit_oh[4] ? s1_all_entries_4_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_5_tailSlot_offset = ways_5_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_667 = s1_hit_oh[5] ? s1_all_entries_5_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_6_tailSlot_offset = ways_6_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_668 = s1_hit_oh[6] ? s1_all_entries_6_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_7_tailSlot_offset = ways_7_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_669 = s1_hit_oh[7] ? s1_all_entries_7_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_8_tailSlot_offset = ways_8_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_670 = s1_hit_oh[8] ? s1_all_entries_8_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_9_tailSlot_offset = ways_9_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_671 = s1_hit_oh[9] ? s1_all_entries_9_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_10_tailSlot_offset = ways_10_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_672 = s1_hit_oh[10] ? s1_all_entries_10_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_11_tailSlot_offset = ways_11_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_673 = s1_hit_oh[11] ? s1_all_entries_11_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_12_tailSlot_offset = ways_12_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_674 = s1_hit_oh[12] ? s1_all_entries_12_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_13_tailSlot_offset = ways_13_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_675 = s1_hit_oh[13] ? s1_all_entries_13_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_14_tailSlot_offset = ways_14_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_676 = s1_hit_oh[14] ? s1_all_entries_14_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_15_tailSlot_offset = ways_15_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_677 = s1_hit_oh[15] ? s1_all_entries_15_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_16_tailSlot_offset = ways_16_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_678 = s1_hit_oh[16] ? s1_all_entries_16_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_17_tailSlot_offset = ways_17_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_679 = s1_hit_oh[17] ? s1_all_entries_17_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_18_tailSlot_offset = ways_18_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_680 = s1_hit_oh[18] ? s1_all_entries_18_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_19_tailSlot_offset = ways_19_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_681 = s1_hit_oh[19] ? s1_all_entries_19_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_20_tailSlot_offset = ways_20_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_682 = s1_hit_oh[20] ? s1_all_entries_20_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_21_tailSlot_offset = ways_21_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_683 = s1_hit_oh[21] ? s1_all_entries_21_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_22_tailSlot_offset = ways_22_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_684 = s1_hit_oh[22] ? s1_all_entries_22_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_23_tailSlot_offset = ways_23_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_685 = s1_hit_oh[23] ? s1_all_entries_23_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_24_tailSlot_offset = ways_24_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_686 = s1_hit_oh[24] ? s1_all_entries_24_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_25_tailSlot_offset = ways_25_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_687 = s1_hit_oh[25] ? s1_all_entries_25_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_26_tailSlot_offset = ways_26_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_688 = s1_hit_oh[26] ? s1_all_entries_26_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_27_tailSlot_offset = ways_27_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_689 = s1_hit_oh[27] ? s1_all_entries_27_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_28_tailSlot_offset = ways_28_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_690 = s1_hit_oh[28] ? s1_all_entries_28_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_29_tailSlot_offset = ways_29_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_691 = s1_hit_oh[29] ? s1_all_entries_29_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_30_tailSlot_offset = ways_30_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_692 = s1_hit_oh[30] ? s1_all_entries_30_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] s1_all_entries_31_tailSlot_offset = ways_31_io_resp_tailSlot_offset; // @[FauFTB.scala 107:{31,31}]
  wire [2:0] _s1_hit_full_pred_T_693 = s1_hit_oh[31] ? s1_all_entries_31_tailSlot_offset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_694 = _s1_hit_full_pred_T_662 | _s1_hit_full_pred_T_663; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_695 = _s1_hit_full_pred_T_694 | _s1_hit_full_pred_T_664; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_696 = _s1_hit_full_pred_T_695 | _s1_hit_full_pred_T_665; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_697 = _s1_hit_full_pred_T_696 | _s1_hit_full_pred_T_666; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_698 = _s1_hit_full_pred_T_697 | _s1_hit_full_pred_T_667; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_699 = _s1_hit_full_pred_T_698 | _s1_hit_full_pred_T_668; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_700 = _s1_hit_full_pred_T_699 | _s1_hit_full_pred_T_669; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_701 = _s1_hit_full_pred_T_700 | _s1_hit_full_pred_T_670; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_702 = _s1_hit_full_pred_T_701 | _s1_hit_full_pred_T_671; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_703 = _s1_hit_full_pred_T_702 | _s1_hit_full_pred_T_672; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_704 = _s1_hit_full_pred_T_703 | _s1_hit_full_pred_T_673; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_705 = _s1_hit_full_pred_T_704 | _s1_hit_full_pred_T_674; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_706 = _s1_hit_full_pred_T_705 | _s1_hit_full_pred_T_675; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_707 = _s1_hit_full_pred_T_706 | _s1_hit_full_pred_T_676; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_708 = _s1_hit_full_pred_T_707 | _s1_hit_full_pred_T_677; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_709 = _s1_hit_full_pred_T_708 | _s1_hit_full_pred_T_678; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_710 = _s1_hit_full_pred_T_709 | _s1_hit_full_pred_T_679; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_711 = _s1_hit_full_pred_T_710 | _s1_hit_full_pred_T_680; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_712 = _s1_hit_full_pred_T_711 | _s1_hit_full_pred_T_681; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_713 = _s1_hit_full_pred_T_712 | _s1_hit_full_pred_T_682; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_714 = _s1_hit_full_pred_T_713 | _s1_hit_full_pred_T_683; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_715 = _s1_hit_full_pred_T_714 | _s1_hit_full_pred_T_684; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_716 = _s1_hit_full_pred_T_715 | _s1_hit_full_pred_T_685; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_717 = _s1_hit_full_pred_T_716 | _s1_hit_full_pred_T_686; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_718 = _s1_hit_full_pred_T_717 | _s1_hit_full_pred_T_687; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_719 = _s1_hit_full_pred_T_718 | _s1_hit_full_pred_T_688; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_720 = _s1_hit_full_pred_T_719 | _s1_hit_full_pred_T_689; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_721 = _s1_hit_full_pred_T_720 | _s1_hit_full_pred_T_690; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_722 = _s1_hit_full_pred_T_721 | _s1_hit_full_pred_T_691; // @[Mux.scala 27:73]
  wire [2:0] _s1_hit_full_pred_T_723 = _s1_hit_full_pred_T_722 | _s1_hit_full_pred_T_692; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_725 = s1_hit_oh[0] ? s1_possible_full_preds_0_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_726 = s1_hit_oh[1] ? s1_possible_full_preds_1_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_727 = s1_hit_oh[2] ? s1_possible_full_preds_2_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_728 = s1_hit_oh[3] ? s1_possible_full_preds_3_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_729 = s1_hit_oh[4] ? s1_possible_full_preds_4_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_730 = s1_hit_oh[5] ? s1_possible_full_preds_5_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_731 = s1_hit_oh[6] ? s1_possible_full_preds_6_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_732 = s1_hit_oh[7] ? s1_possible_full_preds_7_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_733 = s1_hit_oh[8] ? s1_possible_full_preds_8_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_734 = s1_hit_oh[9] ? s1_possible_full_preds_9_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_735 = s1_hit_oh[10] ? s1_possible_full_preds_10_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_736 = s1_hit_oh[11] ? s1_possible_full_preds_11_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_737 = s1_hit_oh[12] ? s1_possible_full_preds_12_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_738 = s1_hit_oh[13] ? s1_possible_full_preds_13_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_739 = s1_hit_oh[14] ? s1_possible_full_preds_14_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_740 = s1_hit_oh[15] ? s1_possible_full_preds_15_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_741 = s1_hit_oh[16] ? s1_possible_full_preds_16_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_742 = s1_hit_oh[17] ? s1_possible_full_preds_17_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_743 = s1_hit_oh[18] ? s1_possible_full_preds_18_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_744 = s1_hit_oh[19] ? s1_possible_full_preds_19_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_745 = s1_hit_oh[20] ? s1_possible_full_preds_20_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_746 = s1_hit_oh[21] ? s1_possible_full_preds_21_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_747 = s1_hit_oh[22] ? s1_possible_full_preds_22_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_748 = s1_hit_oh[23] ? s1_possible_full_preds_23_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_749 = s1_hit_oh[24] ? s1_possible_full_preds_24_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_750 = s1_hit_oh[25] ? s1_possible_full_preds_25_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_751 = s1_hit_oh[26] ? s1_possible_full_preds_26_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_752 = s1_hit_oh[27] ? s1_possible_full_preds_27_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_753 = s1_hit_oh[28] ? s1_possible_full_preds_28_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_754 = s1_hit_oh[29] ? s1_possible_full_preds_29_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_755 = s1_hit_oh[30] ? s1_possible_full_preds_30_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_756 = s1_hit_oh[31] ? s1_possible_full_preds_31_targets_1 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_757 = _s1_hit_full_pred_T_725 | _s1_hit_full_pred_T_726; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_758 = _s1_hit_full_pred_T_757 | _s1_hit_full_pred_T_727; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_759 = _s1_hit_full_pred_T_758 | _s1_hit_full_pred_T_728; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_760 = _s1_hit_full_pred_T_759 | _s1_hit_full_pred_T_729; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_761 = _s1_hit_full_pred_T_760 | _s1_hit_full_pred_T_730; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_762 = _s1_hit_full_pred_T_761 | _s1_hit_full_pred_T_731; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_763 = _s1_hit_full_pred_T_762 | _s1_hit_full_pred_T_732; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_764 = _s1_hit_full_pred_T_763 | _s1_hit_full_pred_T_733; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_765 = _s1_hit_full_pred_T_764 | _s1_hit_full_pred_T_734; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_766 = _s1_hit_full_pred_T_765 | _s1_hit_full_pred_T_735; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_767 = _s1_hit_full_pred_T_766 | _s1_hit_full_pred_T_736; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_768 = _s1_hit_full_pred_T_767 | _s1_hit_full_pred_T_737; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_769 = _s1_hit_full_pred_T_768 | _s1_hit_full_pred_T_738; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_770 = _s1_hit_full_pred_T_769 | _s1_hit_full_pred_T_739; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_771 = _s1_hit_full_pred_T_770 | _s1_hit_full_pred_T_740; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_772 = _s1_hit_full_pred_T_771 | _s1_hit_full_pred_T_741; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_773 = _s1_hit_full_pred_T_772 | _s1_hit_full_pred_T_742; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_774 = _s1_hit_full_pred_T_773 | _s1_hit_full_pred_T_743; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_775 = _s1_hit_full_pred_T_774 | _s1_hit_full_pred_T_744; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_776 = _s1_hit_full_pred_T_775 | _s1_hit_full_pred_T_745; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_777 = _s1_hit_full_pred_T_776 | _s1_hit_full_pred_T_746; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_778 = _s1_hit_full_pred_T_777 | _s1_hit_full_pred_T_747; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_779 = _s1_hit_full_pred_T_778 | _s1_hit_full_pred_T_748; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_780 = _s1_hit_full_pred_T_779 | _s1_hit_full_pred_T_749; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_781 = _s1_hit_full_pred_T_780 | _s1_hit_full_pred_T_750; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_782 = _s1_hit_full_pred_T_781 | _s1_hit_full_pred_T_751; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_783 = _s1_hit_full_pred_T_782 | _s1_hit_full_pred_T_752; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_784 = _s1_hit_full_pred_T_783 | _s1_hit_full_pred_T_753; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_785 = _s1_hit_full_pred_T_784 | _s1_hit_full_pred_T_754; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_786 = _s1_hit_full_pred_T_785 | _s1_hit_full_pred_T_755; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_788 = s1_hit_oh[0] ? target : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_789 = s1_hit_oh[1] ? target_3 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_790 = s1_hit_oh[2] ? target_6 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_791 = s1_hit_oh[3] ? target_9 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_792 = s1_hit_oh[4] ? target_12 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_793 = s1_hit_oh[5] ? target_15 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_794 = s1_hit_oh[6] ? target_18 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_795 = s1_hit_oh[7] ? target_21 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_796 = s1_hit_oh[8] ? target_24 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_797 = s1_hit_oh[9] ? target_27 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_798 = s1_hit_oh[10] ? target_30 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_799 = s1_hit_oh[11] ? target_33 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_800 = s1_hit_oh[12] ? target_36 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_801 = s1_hit_oh[13] ? target_39 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_802 = s1_hit_oh[14] ? target_42 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_803 = s1_hit_oh[15] ? target_45 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_804 = s1_hit_oh[16] ? target_48 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_805 = s1_hit_oh[17] ? target_51 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_806 = s1_hit_oh[18] ? target_54 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_807 = s1_hit_oh[19] ? target_57 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_808 = s1_hit_oh[20] ? target_60 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_809 = s1_hit_oh[21] ? target_63 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_810 = s1_hit_oh[22] ? target_66 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_811 = s1_hit_oh[23] ? target_69 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_812 = s1_hit_oh[24] ? target_72 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_813 = s1_hit_oh[25] ? target_75 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_814 = s1_hit_oh[26] ? target_78 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_815 = s1_hit_oh[27] ? target_81 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_816 = s1_hit_oh[28] ? target_84 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_817 = s1_hit_oh[29] ? target_87 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_818 = s1_hit_oh[30] ? target_90 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_819 = s1_hit_oh[31] ? target_93 : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_820 = _s1_hit_full_pred_T_788 | _s1_hit_full_pred_T_789; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_821 = _s1_hit_full_pred_T_820 | _s1_hit_full_pred_T_790; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_822 = _s1_hit_full_pred_T_821 | _s1_hit_full_pred_T_791; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_823 = _s1_hit_full_pred_T_822 | _s1_hit_full_pred_T_792; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_824 = _s1_hit_full_pred_T_823 | _s1_hit_full_pred_T_793; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_825 = _s1_hit_full_pred_T_824 | _s1_hit_full_pred_T_794; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_826 = _s1_hit_full_pred_T_825 | _s1_hit_full_pred_T_795; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_827 = _s1_hit_full_pred_T_826 | _s1_hit_full_pred_T_796; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_828 = _s1_hit_full_pred_T_827 | _s1_hit_full_pred_T_797; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_829 = _s1_hit_full_pred_T_828 | _s1_hit_full_pred_T_798; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_830 = _s1_hit_full_pred_T_829 | _s1_hit_full_pred_T_799; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_831 = _s1_hit_full_pred_T_830 | _s1_hit_full_pred_T_800; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_832 = _s1_hit_full_pred_T_831 | _s1_hit_full_pred_T_801; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_833 = _s1_hit_full_pred_T_832 | _s1_hit_full_pred_T_802; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_834 = _s1_hit_full_pred_T_833 | _s1_hit_full_pred_T_803; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_835 = _s1_hit_full_pred_T_834 | _s1_hit_full_pred_T_804; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_836 = _s1_hit_full_pred_T_835 | _s1_hit_full_pred_T_805; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_837 = _s1_hit_full_pred_T_836 | _s1_hit_full_pred_T_806; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_838 = _s1_hit_full_pred_T_837 | _s1_hit_full_pred_T_807; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_839 = _s1_hit_full_pred_T_838 | _s1_hit_full_pred_T_808; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_840 = _s1_hit_full_pred_T_839 | _s1_hit_full_pred_T_809; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_841 = _s1_hit_full_pred_T_840 | _s1_hit_full_pred_T_810; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_842 = _s1_hit_full_pred_T_841 | _s1_hit_full_pred_T_811; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_843 = _s1_hit_full_pred_T_842 | _s1_hit_full_pred_T_812; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_844 = _s1_hit_full_pred_T_843 | _s1_hit_full_pred_T_813; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_845 = _s1_hit_full_pred_T_844 | _s1_hit_full_pred_T_814; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_846 = _s1_hit_full_pred_T_845 | _s1_hit_full_pred_T_815; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_847 = _s1_hit_full_pred_T_846 | _s1_hit_full_pred_T_816; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_848 = _s1_hit_full_pred_T_847 | _s1_hit_full_pred_T_817; // @[Mux.scala 27:73]
  wire [38:0] _s1_hit_full_pred_T_849 = _s1_hit_full_pred_T_848 | _s1_hit_full_pred_T_818; // @[Mux.scala 27:73]
  wire  s1_all_entries_0_brSlots_0_valid = ways_0_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_1_brSlots_0_valid = ways_1_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_2_brSlots_0_valid = ways_2_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_3_brSlots_0_valid = ways_3_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_4_brSlots_0_valid = ways_4_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_5_brSlots_0_valid = ways_5_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_6_brSlots_0_valid = ways_6_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_7_brSlots_0_valid = ways_7_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_8_brSlots_0_valid = ways_8_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_9_brSlots_0_valid = ways_9_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_10_brSlots_0_valid = ways_10_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_11_brSlots_0_valid = ways_11_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_12_brSlots_0_valid = ways_12_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_13_brSlots_0_valid = ways_13_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_14_brSlots_0_valid = ways_14_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_15_brSlots_0_valid = ways_15_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  _s1_hit_full_pred_T_929 = s1_hit_oh[15] & s1_all_entries_15_brSlots_0_valid; // @[Mux.scala 27:73]
  wire  s1_all_entries_16_brSlots_0_valid = ways_16_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_17_brSlots_0_valid = ways_17_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_18_brSlots_0_valid = ways_18_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_19_brSlots_0_valid = ways_19_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_20_brSlots_0_valid = ways_20_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_21_brSlots_0_valid = ways_21_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_22_brSlots_0_valid = ways_22_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_23_brSlots_0_valid = ways_23_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_24_brSlots_0_valid = ways_24_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_25_brSlots_0_valid = ways_25_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_26_brSlots_0_valid = ways_26_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_27_brSlots_0_valid = ways_27_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_28_brSlots_0_valid = ways_28_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_29_brSlots_0_valid = ways_29_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_30_brSlots_0_valid = ways_30_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  s1_all_entries_31_brSlots_0_valid = ways_31_io_resp_brSlots_0_valid; // @[FauFTB.scala 107:{31,31}]
  wire  _s1_hit_full_pred_T_960 = s1_hit_oh[0] & s1_all_entries_0_brSlots_0_valid | s1_hit_oh[1] &
    s1_all_entries_1_brSlots_0_valid | s1_hit_oh[2] & s1_all_entries_2_brSlots_0_valid | s1_hit_oh[3] &
    s1_all_entries_3_brSlots_0_valid | s1_hit_oh[4] & s1_all_entries_4_brSlots_0_valid | s1_hit_oh[5] &
    s1_all_entries_5_brSlots_0_valid | s1_hit_oh[6] & s1_all_entries_6_brSlots_0_valid | s1_hit_oh[7] &
    s1_all_entries_7_brSlots_0_valid | s1_hit_oh[8] & s1_all_entries_8_brSlots_0_valid | s1_hit_oh[9] &
    s1_all_entries_9_brSlots_0_valid | s1_hit_oh[10] & s1_all_entries_10_brSlots_0_valid | s1_hit_oh[11] &
    s1_all_entries_11_brSlots_0_valid | s1_hit_oh[12] & s1_all_entries_12_brSlots_0_valid | s1_hit_oh[13] &
    s1_all_entries_13_brSlots_0_valid | s1_hit_oh[14] & s1_all_entries_14_brSlots_0_valid | _s1_hit_full_pred_T_929; // @[Mux.scala 27:73]
  wire  _s1_hit_full_pred_T_975 = _s1_hit_full_pred_T_960 | s1_hit_oh[16] & s1_all_entries_16_brSlots_0_valid |
    s1_hit_oh[17] & s1_all_entries_17_brSlots_0_valid | s1_hit_oh[18] & s1_all_entries_18_brSlots_0_valid | s1_hit_oh[19
    ] & s1_all_entries_19_brSlots_0_valid | s1_hit_oh[20] & s1_all_entries_20_brSlots_0_valid | s1_hit_oh[21] &
    s1_all_entries_21_brSlots_0_valid | s1_hit_oh[22] & s1_all_entries_22_brSlots_0_valid | s1_hit_oh[23] &
    s1_all_entries_23_brSlots_0_valid | s1_hit_oh[24] & s1_all_entries_24_brSlots_0_valid | s1_hit_oh[25] &
    s1_all_entries_25_brSlots_0_valid | s1_hit_oh[26] & s1_all_entries_26_brSlots_0_valid | s1_hit_oh[27] &
    s1_all_entries_27_brSlots_0_valid | s1_hit_oh[28] & s1_all_entries_28_brSlots_0_valid | s1_hit_oh[29] &
    s1_all_entries_29_brSlots_0_valid | s1_hit_oh[30] & s1_all_entries_30_brSlots_0_valid; // @[Mux.scala 27:73]
  wire  _s1_hit_full_pred_T_992 = s1_hit_oh[15] & s1_all_entries_15_tailSlot_valid; // @[Mux.scala 27:73]
  wire  _s1_hit_full_pred_T_1023 = s1_hit_oh[0] & s1_all_entries_0_tailSlot_valid | s1_hit_oh[1] &
    s1_all_entries_1_tailSlot_valid | s1_hit_oh[2] & s1_all_entries_2_tailSlot_valid | s1_hit_oh[3] &
    s1_all_entries_3_tailSlot_valid | s1_hit_oh[4] & s1_all_entries_4_tailSlot_valid | s1_hit_oh[5] &
    s1_all_entries_5_tailSlot_valid | s1_hit_oh[6] & s1_all_entries_6_tailSlot_valid | s1_hit_oh[7] &
    s1_all_entries_7_tailSlot_valid | s1_hit_oh[8] & s1_all_entries_8_tailSlot_valid | s1_hit_oh[9] &
    s1_all_entries_9_tailSlot_valid | s1_hit_oh[10] & s1_all_entries_10_tailSlot_valid | s1_hit_oh[11] &
    s1_all_entries_11_tailSlot_valid | s1_hit_oh[12] & s1_all_entries_12_tailSlot_valid | s1_hit_oh[13] &
    s1_all_entries_13_tailSlot_valid | s1_hit_oh[14] & s1_all_entries_14_tailSlot_valid | _s1_hit_full_pred_T_992; // @[Mux.scala 27:73]
  wire  _s1_hit_full_pred_T_1038 = _s1_hit_full_pred_T_1023 | s1_hit_oh[16] & s1_all_entries_16_tailSlot_valid |
    s1_hit_oh[17] & s1_all_entries_17_tailSlot_valid | s1_hit_oh[18] & s1_all_entries_18_tailSlot_valid | s1_hit_oh[19]
     & s1_all_entries_19_tailSlot_valid | s1_hit_oh[20] & s1_all_entries_20_tailSlot_valid | s1_hit_oh[21] &
    s1_all_entries_21_tailSlot_valid | s1_hit_oh[22] & s1_all_entries_22_tailSlot_valid | s1_hit_oh[23] &
    s1_all_entries_23_tailSlot_valid | s1_hit_oh[24] & s1_all_entries_24_tailSlot_valid | s1_hit_oh[25] &
    s1_all_entries_25_tailSlot_valid | s1_hit_oh[26] & s1_all_entries_26_tailSlot_valid | s1_hit_oh[27] &
    s1_all_entries_27_tailSlot_valid | s1_hit_oh[28] & s1_all_entries_28_tailSlot_valid | s1_hit_oh[29] &
    s1_all_entries_29_tailSlot_valid | s1_hit_oh[30] & s1_all_entries_30_tailSlot_valid; // @[Mux.scala 27:73]
  wire  _s1_hit_full_pred_T_1055 = s1_hit_oh[15] & s1_possible_full_preds_15_br_taken_mask_0; // @[Mux.scala 27:73]
  wire  _s1_hit_full_pred_T_1086 = s1_hit_oh[0] & s1_possible_full_preds_0_br_taken_mask_0 | s1_hit_oh[1] &
    s1_possible_full_preds_1_br_taken_mask_0 | s1_hit_oh[2] & s1_possible_full_preds_2_br_taken_mask_0 | s1_hit_oh[3] &
    s1_possible_full_preds_3_br_taken_mask_0 | s1_hit_oh[4] & s1_possible_full_preds_4_br_taken_mask_0 | s1_hit_oh[5] &
    s1_possible_full_preds_5_br_taken_mask_0 | s1_hit_oh[6] & s1_possible_full_preds_6_br_taken_mask_0 | s1_hit_oh[7] &
    s1_possible_full_preds_7_br_taken_mask_0 | s1_hit_oh[8] & s1_possible_full_preds_8_br_taken_mask_0 | s1_hit_oh[9] &
    s1_possible_full_preds_9_br_taken_mask_0 | s1_hit_oh[10] & s1_possible_full_preds_10_br_taken_mask_0 | s1_hit_oh[11]
     & s1_possible_full_preds_11_br_taken_mask_0 | s1_hit_oh[12] & s1_possible_full_preds_12_br_taken_mask_0 | s1_hit_oh
    [13] & s1_possible_full_preds_13_br_taken_mask_0 | s1_hit_oh[14] & s1_possible_full_preds_14_br_taken_mask_0 |
    _s1_hit_full_pred_T_1055; // @[Mux.scala 27:73]
  wire  _s1_hit_full_pred_T_1101 = _s1_hit_full_pred_T_1086 | s1_hit_oh[16] & s1_possible_full_preds_16_br_taken_mask_0
     | s1_hit_oh[17] & s1_possible_full_preds_17_br_taken_mask_0 | s1_hit_oh[18] &
    s1_possible_full_preds_18_br_taken_mask_0 | s1_hit_oh[19] & s1_possible_full_preds_19_br_taken_mask_0 | s1_hit_oh[20
    ] & s1_possible_full_preds_20_br_taken_mask_0 | s1_hit_oh[21] & s1_possible_full_preds_21_br_taken_mask_0 |
    s1_hit_oh[22] & s1_possible_full_preds_22_br_taken_mask_0 | s1_hit_oh[23] &
    s1_possible_full_preds_23_br_taken_mask_0 | s1_hit_oh[24] & s1_possible_full_preds_24_br_taken_mask_0 | s1_hit_oh[25
    ] & s1_possible_full_preds_25_br_taken_mask_0 | s1_hit_oh[26] & s1_possible_full_preds_26_br_taken_mask_0 |
    s1_hit_oh[27] & s1_possible_full_preds_27_br_taken_mask_0 | s1_hit_oh[28] &
    s1_possible_full_preds_28_br_taken_mask_0 | s1_hit_oh[29] & s1_possible_full_preds_29_br_taken_mask_0 | s1_hit_oh[30
    ] & s1_possible_full_preds_30_br_taken_mask_0; // @[Mux.scala 27:73]
  wire  _s1_hit_full_pred_T_1118 = s1_hit_oh[15] & s1_possible_full_preds_15_br_taken_mask_1; // @[Mux.scala 27:73]
  wire  _s1_hit_full_pred_T_1149 = s1_hit_oh[0] & s1_possible_full_preds_0_br_taken_mask_1 | s1_hit_oh[1] &
    s1_possible_full_preds_1_br_taken_mask_1 | s1_hit_oh[2] & s1_possible_full_preds_2_br_taken_mask_1 | s1_hit_oh[3] &
    s1_possible_full_preds_3_br_taken_mask_1 | s1_hit_oh[4] & s1_possible_full_preds_4_br_taken_mask_1 | s1_hit_oh[5] &
    s1_possible_full_preds_5_br_taken_mask_1 | s1_hit_oh[6] & s1_possible_full_preds_6_br_taken_mask_1 | s1_hit_oh[7] &
    s1_possible_full_preds_7_br_taken_mask_1 | s1_hit_oh[8] & s1_possible_full_preds_8_br_taken_mask_1 | s1_hit_oh[9] &
    s1_possible_full_preds_9_br_taken_mask_1 | s1_hit_oh[10] & s1_possible_full_preds_10_br_taken_mask_1 | s1_hit_oh[11]
     & s1_possible_full_preds_11_br_taken_mask_1 | s1_hit_oh[12] & s1_possible_full_preds_12_br_taken_mask_1 | s1_hit_oh
    [13] & s1_possible_full_preds_13_br_taken_mask_1 | s1_hit_oh[14] & s1_possible_full_preds_14_br_taken_mask_1 |
    _s1_hit_full_pred_T_1118; // @[Mux.scala 27:73]
  wire  _s1_hit_full_pred_T_1164 = _s1_hit_full_pred_T_1149 | s1_hit_oh[16] & s1_possible_full_preds_16_br_taken_mask_1
     | s1_hit_oh[17] & s1_possible_full_preds_17_br_taken_mask_1 | s1_hit_oh[18] &
    s1_possible_full_preds_18_br_taken_mask_1 | s1_hit_oh[19] & s1_possible_full_preds_19_br_taken_mask_1 | s1_hit_oh[20
    ] & s1_possible_full_preds_20_br_taken_mask_1 | s1_hit_oh[21] & s1_possible_full_preds_21_br_taken_mask_1 |
    s1_hit_oh[22] & s1_possible_full_preds_22_br_taken_mask_1 | s1_hit_oh[23] &
    s1_possible_full_preds_23_br_taken_mask_1 | s1_hit_oh[24] & s1_possible_full_preds_24_br_taken_mask_1 | s1_hit_oh[25
    ] & s1_possible_full_preds_25_br_taken_mask_1 | s1_hit_oh[26] & s1_possible_full_preds_26_br_taken_mask_1 |
    s1_hit_oh[27] & s1_possible_full_preds_27_br_taken_mask_1 | s1_hit_oh[28] &
    s1_possible_full_preds_28_br_taken_mask_1 | s1_hit_oh[29] & s1_possible_full_preds_29_br_taken_mask_1 | s1_hit_oh[30
    ] & s1_possible_full_preds_30_br_taken_mask_1; // @[Mux.scala 27:73]
  reg  fauftb_enable; // @[FauFTB.scala 117:30]
  reg [4:0] resp_meta_pred_way_r1; // @[Reg.scala 16:16]
  reg  resp_meta_hit_r1; // @[Reg.scala 16:16]
  wire [5:0] _io_out_last_stage_meta_T = {resp_meta_pred_way_r1,resp_meta_hit_r1}; // @[FauFTB.scala 122:39]
  reg  resp_meta_hit_r; // @[Reg.scala 16:16]
  reg [4:0] resp_meta_pred_way_r; // @[Reg.scala 16:16]
  wire  _replacer_touch_ways_0_valid_T_1 = io_s1_fire_0 & s1_hit; // @[FauFTB.scala 128:54]
  reg  replacer_touch_ways_0_valid_REG; // @[FauFTB.scala 128:42]
  reg [4:0] replacer_touch_ways_0_bits_r; // @[Reg.scala 16:16]
  wire  u_meta_hit = io_update_bits_meta[0]; // @[FauFTB.scala 137:36]
  wire [15:0] u_s0_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  wire  _u_s0_hit_oh_WIRE_1 = ways_1_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_0 = ways_0_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_3 = ways_3_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_2 = ways_2_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_5 = ways_5_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_4 = ways_4_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_7 = ways_7_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_6 = ways_6_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire [7:0] u_s0_hit_oh_lo_lo = {_u_s0_hit_oh_WIRE_7,_u_s0_hit_oh_WIRE_6,_u_s0_hit_oh_WIRE_5,_u_s0_hit_oh_WIRE_4,
    _u_s0_hit_oh_WIRE_3,_u_s0_hit_oh_WIRE_2,_u_s0_hit_oh_WIRE_1,_u_s0_hit_oh_WIRE_0}; // @[FauFTB.scala 140:56]
  wire  _u_s0_hit_oh_WIRE_9 = ways_9_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_8 = ways_8_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_11 = ways_11_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_10 = ways_10_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_13 = ways_13_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_12 = ways_12_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_15 = ways_15_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_14 = ways_14_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire [15:0] u_s0_hit_oh_lo = {_u_s0_hit_oh_WIRE_15,_u_s0_hit_oh_WIRE_14,_u_s0_hit_oh_WIRE_13,_u_s0_hit_oh_WIRE_12,
    _u_s0_hit_oh_WIRE_11,_u_s0_hit_oh_WIRE_10,_u_s0_hit_oh_WIRE_9,_u_s0_hit_oh_WIRE_8,u_s0_hit_oh_lo_lo}; // @[FauFTB.scala 140:56]
  wire  _u_s0_hit_oh_WIRE_17 = ways_17_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_16 = ways_16_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_19 = ways_19_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_18 = ways_18_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_21 = ways_21_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_20 = ways_20_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_23 = ways_23_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_22 = ways_22_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire [7:0] u_s0_hit_oh_hi_lo = {_u_s0_hit_oh_WIRE_23,_u_s0_hit_oh_WIRE_22,_u_s0_hit_oh_WIRE_21,_u_s0_hit_oh_WIRE_20,
    _u_s0_hit_oh_WIRE_19,_u_s0_hit_oh_WIRE_18,_u_s0_hit_oh_WIRE_17,_u_s0_hit_oh_WIRE_16}; // @[FauFTB.scala 140:56]
  wire  _u_s0_hit_oh_WIRE_25 = ways_25_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_24 = ways_24_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_27 = ways_27_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_26 = ways_26_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_29 = ways_29_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_28 = ways_28_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_31 = ways_31_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire  _u_s0_hit_oh_WIRE_30 = ways_30_io_update_hit; // @[FauFTB.scala 140:{28,28}]
  wire [31:0] u_s0_hit_oh = {_u_s0_hit_oh_WIRE_31,_u_s0_hit_oh_WIRE_30,_u_s0_hit_oh_WIRE_29,_u_s0_hit_oh_WIRE_28,
    _u_s0_hit_oh_WIRE_27,_u_s0_hit_oh_WIRE_26,_u_s0_hit_oh_WIRE_25,_u_s0_hit_oh_WIRE_24,u_s0_hit_oh_hi_lo,u_s0_hit_oh_lo
    }; // @[FauFTB.scala 140:56]
  wire  u_s0_hit = |u_s0_hit_oh; // @[FauFTB.scala 141:30]
  wire  _u_s0_br_update_valids_T = io_update_bits_ftb_entry_tailSlot_valid & io_update_bits_ftb_entry_tailSlot_sharing; // @[FTB.scala 207:47]
  wire  u_s0_br_update_valids_0 = io_update_bits_ftb_entry_brSlots_0_valid & io_update_valid & ~
    io_update_bits_ftb_entry_always_taken_0; // @[FauFTB.scala 144:47]
  wire  _u_s0_br_update_valids_T_4 = io_update_bits_br_taken_mask_0 ? 1'h0 : 1'h1; // @[Mux.scala 47:70]
  wire  _u_s0_br_update_valids_T_14 = ~(_u_s0_br_update_valids_T_4 < 1'h1); // @[FauFTB.scala 145:7]
  wire  u_s0_br_update_valids_1 = _u_s0_br_update_valids_T & io_update_valid & ~io_update_bits_ftb_entry_always_taken_1
     & _u_s0_br_update_valids_T_14; // @[FauFTB.scala 144:84]
  reg  u_s1_valid; // @[FauFTB.scala 148:27]
  reg [15:0] u_s1_tag; // @[Reg.scala 16:16]
  reg [31:0] u_s1_hit_oh; // @[Reg.scala 16:16]
  reg  u_s1_hit; // @[Reg.scala 16:16]
  wire  u_s1_alloc_way_left_subtree_older = state_reg[30]; // @[Replacement.scala 243:38]
  wire [14:0] u_s1_alloc_way_left_subtree_state = state_reg[29:15]; // @[package.scala 154:13]
  wire [14:0] u_s1_alloc_way_right_subtree_state = state_reg[14:0]; // @[Replacement.scala 245:38]
  wire  u_s1_alloc_way_left_subtree_older_1 = u_s1_alloc_way_left_subtree_state[14]; // @[Replacement.scala 243:38]
  wire [6:0] u_s1_alloc_way_left_subtree_state_1 = u_s1_alloc_way_left_subtree_state[13:7]; // @[package.scala 154:13]
  wire [6:0] u_s1_alloc_way_right_subtree_state_1 = u_s1_alloc_way_left_subtree_state[6:0]; // @[Replacement.scala 245:38]
  wire  u_s1_alloc_way_left_subtree_older_2 = u_s1_alloc_way_left_subtree_state_1[6]; // @[Replacement.scala 243:38]
  wire [2:0] u_s1_alloc_way_left_subtree_state_2 = u_s1_alloc_way_left_subtree_state_1[5:3]; // @[package.scala 154:13]
  wire [2:0] u_s1_alloc_way_right_subtree_state_2 = u_s1_alloc_way_left_subtree_state_1[2:0]; // @[Replacement.scala 245:38]
  wire  u_s1_alloc_way_left_subtree_older_3 = u_s1_alloc_way_left_subtree_state_2[2]; // @[Replacement.scala 243:38]
  wire  u_s1_alloc_way_left_subtree_state_3 = u_s1_alloc_way_left_subtree_state_2[1]; // @[package.scala 154:13]
  wire  u_s1_alloc_way_right_subtree_state_3 = u_s1_alloc_way_left_subtree_state_2[0]; // @[Replacement.scala 245:38]
  wire  _u_s1_alloc_way_T_2 = u_s1_alloc_way_left_subtree_older_3 ? u_s1_alloc_way_left_subtree_state_3 :
    u_s1_alloc_way_right_subtree_state_3; // @[Replacement.scala 250:16]
  wire [1:0] _u_s1_alloc_way_T_3 = {u_s1_alloc_way_left_subtree_older_3,_u_s1_alloc_way_T_2}; // @[Cat.scala 31:58]
  wire  u_s1_alloc_way_left_subtree_older_4 = u_s1_alloc_way_right_subtree_state_2[2]; // @[Replacement.scala 243:38]
  wire  u_s1_alloc_way_left_subtree_state_4 = u_s1_alloc_way_right_subtree_state_2[1]; // @[package.scala 154:13]
  wire  u_s1_alloc_way_right_subtree_state_4 = u_s1_alloc_way_right_subtree_state_2[0]; // @[Replacement.scala 245:38]
  wire  _u_s1_alloc_way_T_6 = u_s1_alloc_way_left_subtree_older_4 ? u_s1_alloc_way_left_subtree_state_4 :
    u_s1_alloc_way_right_subtree_state_4; // @[Replacement.scala 250:16]
  wire [1:0] _u_s1_alloc_way_T_7 = {u_s1_alloc_way_left_subtree_older_4,_u_s1_alloc_way_T_6}; // @[Cat.scala 31:58]
  wire [1:0] _u_s1_alloc_way_T_8 = u_s1_alloc_way_left_subtree_older_2 ? _u_s1_alloc_way_T_3 : _u_s1_alloc_way_T_7; // @[Replacement.scala 250:16]
  wire [2:0] _u_s1_alloc_way_T_9 = {u_s1_alloc_way_left_subtree_older_2,_u_s1_alloc_way_T_8}; // @[Cat.scala 31:58]
  wire  u_s1_alloc_way_left_subtree_older_5 = u_s1_alloc_way_right_subtree_state_1[6]; // @[Replacement.scala 243:38]
  wire [2:0] u_s1_alloc_way_left_subtree_state_5 = u_s1_alloc_way_right_subtree_state_1[5:3]; // @[package.scala 154:13]
  wire [2:0] u_s1_alloc_way_right_subtree_state_5 = u_s1_alloc_way_right_subtree_state_1[2:0]; // @[Replacement.scala 245:38]
  wire  u_s1_alloc_way_left_subtree_older_6 = u_s1_alloc_way_left_subtree_state_5[2]; // @[Replacement.scala 243:38]
  wire  u_s1_alloc_way_left_subtree_state_6 = u_s1_alloc_way_left_subtree_state_5[1]; // @[package.scala 154:13]
  wire  u_s1_alloc_way_right_subtree_state_6 = u_s1_alloc_way_left_subtree_state_5[0]; // @[Replacement.scala 245:38]
  wire  _u_s1_alloc_way_T_12 = u_s1_alloc_way_left_subtree_older_6 ? u_s1_alloc_way_left_subtree_state_6 :
    u_s1_alloc_way_right_subtree_state_6; // @[Replacement.scala 250:16]
  wire [1:0] _u_s1_alloc_way_T_13 = {u_s1_alloc_way_left_subtree_older_6,_u_s1_alloc_way_T_12}; // @[Cat.scala 31:58]
  wire  u_s1_alloc_way_left_subtree_older_7 = u_s1_alloc_way_right_subtree_state_5[2]; // @[Replacement.scala 243:38]
  wire  u_s1_alloc_way_left_subtree_state_7 = u_s1_alloc_way_right_subtree_state_5[1]; // @[package.scala 154:13]
  wire  u_s1_alloc_way_right_subtree_state_7 = u_s1_alloc_way_right_subtree_state_5[0]; // @[Replacement.scala 245:38]
  wire  _u_s1_alloc_way_T_16 = u_s1_alloc_way_left_subtree_older_7 ? u_s1_alloc_way_left_subtree_state_7 :
    u_s1_alloc_way_right_subtree_state_7; // @[Replacement.scala 250:16]
  wire [1:0] _u_s1_alloc_way_T_17 = {u_s1_alloc_way_left_subtree_older_7,_u_s1_alloc_way_T_16}; // @[Cat.scala 31:58]
  wire [1:0] _u_s1_alloc_way_T_18 = u_s1_alloc_way_left_subtree_older_5 ? _u_s1_alloc_way_T_13 : _u_s1_alloc_way_T_17; // @[Replacement.scala 250:16]
  wire [2:0] _u_s1_alloc_way_T_19 = {u_s1_alloc_way_left_subtree_older_5,_u_s1_alloc_way_T_18}; // @[Cat.scala 31:58]
  wire [2:0] _u_s1_alloc_way_T_20 = u_s1_alloc_way_left_subtree_older_1 ? _u_s1_alloc_way_T_9 : _u_s1_alloc_way_T_19; // @[Replacement.scala 250:16]
  wire [3:0] _u_s1_alloc_way_T_21 = {u_s1_alloc_way_left_subtree_older_1,_u_s1_alloc_way_T_20}; // @[Cat.scala 31:58]
  wire  u_s1_alloc_way_left_subtree_older_8 = u_s1_alloc_way_right_subtree_state[14]; // @[Replacement.scala 243:38]
  wire [6:0] u_s1_alloc_way_left_subtree_state_8 = u_s1_alloc_way_right_subtree_state[13:7]; // @[package.scala 154:13]
  wire [6:0] u_s1_alloc_way_right_subtree_state_8 = u_s1_alloc_way_right_subtree_state[6:0]; // @[Replacement.scala 245:38]
  wire  u_s1_alloc_way_left_subtree_older_9 = u_s1_alloc_way_left_subtree_state_8[6]; // @[Replacement.scala 243:38]
  wire [2:0] u_s1_alloc_way_left_subtree_state_9 = u_s1_alloc_way_left_subtree_state_8[5:3]; // @[package.scala 154:13]
  wire [2:0] u_s1_alloc_way_right_subtree_state_9 = u_s1_alloc_way_left_subtree_state_8[2:0]; // @[Replacement.scala 245:38]
  wire  u_s1_alloc_way_left_subtree_older_10 = u_s1_alloc_way_left_subtree_state_9[2]; // @[Replacement.scala 243:38]
  wire  u_s1_alloc_way_left_subtree_state_10 = u_s1_alloc_way_left_subtree_state_9[1]; // @[package.scala 154:13]
  wire  u_s1_alloc_way_right_subtree_state_10 = u_s1_alloc_way_left_subtree_state_9[0]; // @[Replacement.scala 245:38]
  wire  _u_s1_alloc_way_T_24 = u_s1_alloc_way_left_subtree_older_10 ? u_s1_alloc_way_left_subtree_state_10 :
    u_s1_alloc_way_right_subtree_state_10; // @[Replacement.scala 250:16]
  wire [1:0] _u_s1_alloc_way_T_25 = {u_s1_alloc_way_left_subtree_older_10,_u_s1_alloc_way_T_24}; // @[Cat.scala 31:58]
  wire  u_s1_alloc_way_left_subtree_older_11 = u_s1_alloc_way_right_subtree_state_9[2]; // @[Replacement.scala 243:38]
  wire  u_s1_alloc_way_left_subtree_state_11 = u_s1_alloc_way_right_subtree_state_9[1]; // @[package.scala 154:13]
  wire  u_s1_alloc_way_right_subtree_state_11 = u_s1_alloc_way_right_subtree_state_9[0]; // @[Replacement.scala 245:38]
  wire  _u_s1_alloc_way_T_28 = u_s1_alloc_way_left_subtree_older_11 ? u_s1_alloc_way_left_subtree_state_11 :
    u_s1_alloc_way_right_subtree_state_11; // @[Replacement.scala 250:16]
  wire [1:0] _u_s1_alloc_way_T_29 = {u_s1_alloc_way_left_subtree_older_11,_u_s1_alloc_way_T_28}; // @[Cat.scala 31:58]
  wire [1:0] _u_s1_alloc_way_T_30 = u_s1_alloc_way_left_subtree_older_9 ? _u_s1_alloc_way_T_25 : _u_s1_alloc_way_T_29; // @[Replacement.scala 250:16]
  wire [2:0] _u_s1_alloc_way_T_31 = {u_s1_alloc_way_left_subtree_older_9,_u_s1_alloc_way_T_30}; // @[Cat.scala 31:58]
  wire  u_s1_alloc_way_left_subtree_older_12 = u_s1_alloc_way_right_subtree_state_8[6]; // @[Replacement.scala 243:38]
  wire [2:0] u_s1_alloc_way_left_subtree_state_12 = u_s1_alloc_way_right_subtree_state_8[5:3]; // @[package.scala 154:13]
  wire [2:0] u_s1_alloc_way_right_subtree_state_12 = u_s1_alloc_way_right_subtree_state_8[2:0]; // @[Replacement.scala 245:38]
  wire  u_s1_alloc_way_left_subtree_older_13 = u_s1_alloc_way_left_subtree_state_12[2]; // @[Replacement.scala 243:38]
  wire  u_s1_alloc_way_left_subtree_state_13 = u_s1_alloc_way_left_subtree_state_12[1]; // @[package.scala 154:13]
  wire  u_s1_alloc_way_right_subtree_state_13 = u_s1_alloc_way_left_subtree_state_12[0]; // @[Replacement.scala 245:38]
  wire  _u_s1_alloc_way_T_34 = u_s1_alloc_way_left_subtree_older_13 ? u_s1_alloc_way_left_subtree_state_13 :
    u_s1_alloc_way_right_subtree_state_13; // @[Replacement.scala 250:16]
  wire [1:0] _u_s1_alloc_way_T_35 = {u_s1_alloc_way_left_subtree_older_13,_u_s1_alloc_way_T_34}; // @[Cat.scala 31:58]
  wire  u_s1_alloc_way_left_subtree_older_14 = u_s1_alloc_way_right_subtree_state_12[2]; // @[Replacement.scala 243:38]
  wire  u_s1_alloc_way_left_subtree_state_14 = u_s1_alloc_way_right_subtree_state_12[1]; // @[package.scala 154:13]
  wire  u_s1_alloc_way_right_subtree_state_14 = u_s1_alloc_way_right_subtree_state_12[0]; // @[Replacement.scala 245:38]
  wire  _u_s1_alloc_way_T_38 = u_s1_alloc_way_left_subtree_older_14 ? u_s1_alloc_way_left_subtree_state_14 :
    u_s1_alloc_way_right_subtree_state_14; // @[Replacement.scala 250:16]
  wire [1:0] _u_s1_alloc_way_T_39 = {u_s1_alloc_way_left_subtree_older_14,_u_s1_alloc_way_T_38}; // @[Cat.scala 31:58]
  wire [1:0] _u_s1_alloc_way_T_40 = u_s1_alloc_way_left_subtree_older_12 ? _u_s1_alloc_way_T_35 : _u_s1_alloc_way_T_39; // @[Replacement.scala 250:16]
  wire [2:0] _u_s1_alloc_way_T_41 = {u_s1_alloc_way_left_subtree_older_12,_u_s1_alloc_way_T_40}; // @[Cat.scala 31:58]
  wire [2:0] _u_s1_alloc_way_T_42 = u_s1_alloc_way_left_subtree_older_8 ? _u_s1_alloc_way_T_31 : _u_s1_alloc_way_T_41; // @[Replacement.scala 250:16]
  wire [3:0] _u_s1_alloc_way_T_43 = {u_s1_alloc_way_left_subtree_older_8,_u_s1_alloc_way_T_42}; // @[Cat.scala 31:58]
  wire [3:0] _u_s1_alloc_way_T_44 = u_s1_alloc_way_left_subtree_older ? _u_s1_alloc_way_T_21 : _u_s1_alloc_way_T_43; // @[Replacement.scala 250:16]
  wire [4:0] u_s1_alloc_way = {u_s1_alloc_way_left_subtree_older,_u_s1_alloc_way_T_44}; // @[Cat.scala 31:58]
  wire [31:0] _u_s1_write_way_oh_T = 32'h1 << u_s1_alloc_way; // @[OneHot.scala 57:35]
  wire [31:0] u_s1_write_way_oh = u_s1_hit ? u_s1_hit_oh : _u_s1_write_way_oh_T; // @[FauFTB.scala 153:30]
  reg [2:0] u_s1_ftb_entry_brSlots_0_offset; // @[Reg.scala 16:16]
  reg [11:0] u_s1_ftb_entry_brSlots_0_lower; // @[Reg.scala 16:16]
  reg [1:0] u_s1_ftb_entry_brSlots_0_tarStat; // @[Reg.scala 16:16]
  reg  u_s1_ftb_entry_brSlots_0_valid; // @[Reg.scala 16:16]
  reg [2:0] u_s1_ftb_entry_tailSlot_offset; // @[Reg.scala 16:16]
  reg [19:0] u_s1_ftb_entry_tailSlot_lower; // @[Reg.scala 16:16]
  reg [1:0] u_s1_ftb_entry_tailSlot_tarStat; // @[Reg.scala 16:16]
  reg  u_s1_ftb_entry_tailSlot_sharing; // @[Reg.scala 16:16]
  reg  u_s1_ftb_entry_tailSlot_valid; // @[Reg.scala 16:16]
  reg [2:0] u_s1_ftb_entry_pftAddr; // @[Reg.scala 16:16]
  reg  u_s1_ftb_entry_carry; // @[Reg.scala 16:16]
  reg  u_s1_ftb_entry_always_taken_0; // @[Reg.scala 16:16]
  reg  u_s1_ftb_entry_always_taken_1; // @[Reg.scala 16:16]
  wire  u_s1_ways_write_valid_0 = u_s1_write_way_oh[0] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_1 = u_s1_write_way_oh[1] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_2 = u_s1_write_way_oh[2] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_3 = u_s1_write_way_oh[3] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_4 = u_s1_write_way_oh[4] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_5 = u_s1_write_way_oh[5] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_6 = u_s1_write_way_oh[6] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_7 = u_s1_write_way_oh[7] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_8 = u_s1_write_way_oh[8] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_9 = u_s1_write_way_oh[9] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_10 = u_s1_write_way_oh[10] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_11 = u_s1_write_way_oh[11] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_12 = u_s1_write_way_oh[12] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_13 = u_s1_write_way_oh[13] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_14 = u_s1_write_way_oh[14] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_15 = u_s1_write_way_oh[15] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_16 = u_s1_write_way_oh[16] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_17 = u_s1_write_way_oh[17] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_18 = u_s1_write_way_oh[18] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_19 = u_s1_write_way_oh[19] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_20 = u_s1_write_way_oh[20] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_21 = u_s1_write_way_oh[21] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_22 = u_s1_write_way_oh[22] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_23 = u_s1_write_way_oh[23] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_24 = u_s1_write_way_oh[24] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_25 = u_s1_write_way_oh[25] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_26 = u_s1_write_way_oh[26] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_27 = u_s1_write_way_oh[27] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_28 = u_s1_write_way_oh[28] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_29 = u_s1_write_way_oh[29] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_30 = u_s1_write_way_oh[30] & u_s1_valid; // @[FauFTB.scala 155:94]
  wire  u_s1_ways_write_valid_31 = u_s1_write_way_oh[31] & u_s1_valid; // @[FauFTB.scala 155:94]
  reg  u_s1_br_update_valids_0; // @[Reg.scala 16:16]
  reg  u_s1_br_update_valids_1; // @[Reg.scala 16:16]
  reg  u_s1_br_takens_0; // @[Reg.scala 16:16]
  reg  u_s1_br_takens_1; // @[Reg.scala 16:16]
  wire  ctrs_0_0_oldSatTaken = ctrs_0_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_0_0_oldSatNotTaken = ctrs_0_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_0_0_T_4 = ctrs_0_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_0_0_T_6 = ctrs_0_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_0_0_T_7 = u_s1_br_takens_0 ? _ctrs_0_0_T_4 : _ctrs_0_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_0_1_oldSatTaken = ctrs_0_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_0_1_oldSatNotTaken = ctrs_0_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_0_1_T_4 = ctrs_0_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_0_1_T_6 = ctrs_0_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_0_1_T_7 = u_s1_br_takens_1 ? _ctrs_0_1_T_4 : _ctrs_0_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_1_0_oldSatTaken = ctrs_1_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_1_0_oldSatNotTaken = ctrs_1_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_1_0_T_4 = ctrs_1_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_1_0_T_6 = ctrs_1_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_1_0_T_7 = u_s1_br_takens_0 ? _ctrs_1_0_T_4 : _ctrs_1_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_1_1_oldSatTaken = ctrs_1_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_1_1_oldSatNotTaken = ctrs_1_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_1_1_T_4 = ctrs_1_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_1_1_T_6 = ctrs_1_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_1_1_T_7 = u_s1_br_takens_1 ? _ctrs_1_1_T_4 : _ctrs_1_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_2_0_oldSatTaken = ctrs_2_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_2_0_oldSatNotTaken = ctrs_2_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_2_0_T_4 = ctrs_2_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_2_0_T_6 = ctrs_2_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_2_0_T_7 = u_s1_br_takens_0 ? _ctrs_2_0_T_4 : _ctrs_2_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_2_1_oldSatTaken = ctrs_2_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_2_1_oldSatNotTaken = ctrs_2_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_2_1_T_4 = ctrs_2_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_2_1_T_6 = ctrs_2_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_2_1_T_7 = u_s1_br_takens_1 ? _ctrs_2_1_T_4 : _ctrs_2_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_3_0_oldSatTaken = ctrs_3_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_3_0_oldSatNotTaken = ctrs_3_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_3_0_T_4 = ctrs_3_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_3_0_T_6 = ctrs_3_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_3_0_T_7 = u_s1_br_takens_0 ? _ctrs_3_0_T_4 : _ctrs_3_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_3_1_oldSatTaken = ctrs_3_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_3_1_oldSatNotTaken = ctrs_3_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_3_1_T_4 = ctrs_3_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_3_1_T_6 = ctrs_3_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_3_1_T_7 = u_s1_br_takens_1 ? _ctrs_3_1_T_4 : _ctrs_3_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_4_0_oldSatTaken = ctrs_4_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_4_0_oldSatNotTaken = ctrs_4_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_4_0_T_4 = ctrs_4_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_4_0_T_6 = ctrs_4_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_4_0_T_7 = u_s1_br_takens_0 ? _ctrs_4_0_T_4 : _ctrs_4_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_4_1_oldSatTaken = ctrs_4_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_4_1_oldSatNotTaken = ctrs_4_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_4_1_T_4 = ctrs_4_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_4_1_T_6 = ctrs_4_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_4_1_T_7 = u_s1_br_takens_1 ? _ctrs_4_1_T_4 : _ctrs_4_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_5_0_oldSatTaken = ctrs_5_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_5_0_oldSatNotTaken = ctrs_5_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_5_0_T_4 = ctrs_5_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_5_0_T_6 = ctrs_5_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_5_0_T_7 = u_s1_br_takens_0 ? _ctrs_5_0_T_4 : _ctrs_5_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_5_1_oldSatTaken = ctrs_5_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_5_1_oldSatNotTaken = ctrs_5_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_5_1_T_4 = ctrs_5_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_5_1_T_6 = ctrs_5_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_5_1_T_7 = u_s1_br_takens_1 ? _ctrs_5_1_T_4 : _ctrs_5_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_6_0_oldSatTaken = ctrs_6_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_6_0_oldSatNotTaken = ctrs_6_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_6_0_T_4 = ctrs_6_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_6_0_T_6 = ctrs_6_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_6_0_T_7 = u_s1_br_takens_0 ? _ctrs_6_0_T_4 : _ctrs_6_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_6_1_oldSatTaken = ctrs_6_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_6_1_oldSatNotTaken = ctrs_6_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_6_1_T_4 = ctrs_6_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_6_1_T_6 = ctrs_6_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_6_1_T_7 = u_s1_br_takens_1 ? _ctrs_6_1_T_4 : _ctrs_6_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_7_0_oldSatTaken = ctrs_7_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_7_0_oldSatNotTaken = ctrs_7_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_7_0_T_4 = ctrs_7_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_7_0_T_6 = ctrs_7_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_7_0_T_7 = u_s1_br_takens_0 ? _ctrs_7_0_T_4 : _ctrs_7_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_7_1_oldSatTaken = ctrs_7_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_7_1_oldSatNotTaken = ctrs_7_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_7_1_T_4 = ctrs_7_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_7_1_T_6 = ctrs_7_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_7_1_T_7 = u_s1_br_takens_1 ? _ctrs_7_1_T_4 : _ctrs_7_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_8_0_oldSatTaken = ctrs_8_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_8_0_oldSatNotTaken = ctrs_8_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_8_0_T_4 = ctrs_8_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_8_0_T_6 = ctrs_8_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_8_0_T_7 = u_s1_br_takens_0 ? _ctrs_8_0_T_4 : _ctrs_8_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_8_1_oldSatTaken = ctrs_8_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_8_1_oldSatNotTaken = ctrs_8_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_8_1_T_4 = ctrs_8_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_8_1_T_6 = ctrs_8_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_8_1_T_7 = u_s1_br_takens_1 ? _ctrs_8_1_T_4 : _ctrs_8_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_9_0_oldSatTaken = ctrs_9_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_9_0_oldSatNotTaken = ctrs_9_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_9_0_T_4 = ctrs_9_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_9_0_T_6 = ctrs_9_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_9_0_T_7 = u_s1_br_takens_0 ? _ctrs_9_0_T_4 : _ctrs_9_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_9_1_oldSatTaken = ctrs_9_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_9_1_oldSatNotTaken = ctrs_9_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_9_1_T_4 = ctrs_9_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_9_1_T_6 = ctrs_9_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_9_1_T_7 = u_s1_br_takens_1 ? _ctrs_9_1_T_4 : _ctrs_9_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_10_0_oldSatTaken = ctrs_10_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_10_0_oldSatNotTaken = ctrs_10_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_10_0_T_4 = ctrs_10_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_10_0_T_6 = ctrs_10_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_10_0_T_7 = u_s1_br_takens_0 ? _ctrs_10_0_T_4 : _ctrs_10_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_10_1_oldSatTaken = ctrs_10_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_10_1_oldSatNotTaken = ctrs_10_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_10_1_T_4 = ctrs_10_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_10_1_T_6 = ctrs_10_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_10_1_T_7 = u_s1_br_takens_1 ? _ctrs_10_1_T_4 : _ctrs_10_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_11_0_oldSatTaken = ctrs_11_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_11_0_oldSatNotTaken = ctrs_11_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_11_0_T_4 = ctrs_11_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_11_0_T_6 = ctrs_11_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_11_0_T_7 = u_s1_br_takens_0 ? _ctrs_11_0_T_4 : _ctrs_11_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_11_1_oldSatTaken = ctrs_11_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_11_1_oldSatNotTaken = ctrs_11_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_11_1_T_4 = ctrs_11_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_11_1_T_6 = ctrs_11_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_11_1_T_7 = u_s1_br_takens_1 ? _ctrs_11_1_T_4 : _ctrs_11_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_12_0_oldSatTaken = ctrs_12_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_12_0_oldSatNotTaken = ctrs_12_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_12_0_T_4 = ctrs_12_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_12_0_T_6 = ctrs_12_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_12_0_T_7 = u_s1_br_takens_0 ? _ctrs_12_0_T_4 : _ctrs_12_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_12_1_oldSatTaken = ctrs_12_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_12_1_oldSatNotTaken = ctrs_12_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_12_1_T_4 = ctrs_12_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_12_1_T_6 = ctrs_12_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_12_1_T_7 = u_s1_br_takens_1 ? _ctrs_12_1_T_4 : _ctrs_12_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_13_0_oldSatTaken = ctrs_13_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_13_0_oldSatNotTaken = ctrs_13_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_13_0_T_4 = ctrs_13_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_13_0_T_6 = ctrs_13_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_13_0_T_7 = u_s1_br_takens_0 ? _ctrs_13_0_T_4 : _ctrs_13_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_13_1_oldSatTaken = ctrs_13_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_13_1_oldSatNotTaken = ctrs_13_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_13_1_T_4 = ctrs_13_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_13_1_T_6 = ctrs_13_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_13_1_T_7 = u_s1_br_takens_1 ? _ctrs_13_1_T_4 : _ctrs_13_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_14_0_oldSatTaken = ctrs_14_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_14_0_oldSatNotTaken = ctrs_14_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_14_0_T_4 = ctrs_14_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_14_0_T_6 = ctrs_14_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_14_0_T_7 = u_s1_br_takens_0 ? _ctrs_14_0_T_4 : _ctrs_14_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_14_1_oldSatTaken = ctrs_14_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_14_1_oldSatNotTaken = ctrs_14_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_14_1_T_4 = ctrs_14_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_14_1_T_6 = ctrs_14_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_14_1_T_7 = u_s1_br_takens_1 ? _ctrs_14_1_T_4 : _ctrs_14_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_15_0_oldSatTaken = ctrs_15_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_15_0_oldSatNotTaken = ctrs_15_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_15_0_T_4 = ctrs_15_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_15_0_T_6 = ctrs_15_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_15_0_T_7 = u_s1_br_takens_0 ? _ctrs_15_0_T_4 : _ctrs_15_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_15_1_oldSatTaken = ctrs_15_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_15_1_oldSatNotTaken = ctrs_15_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_15_1_T_4 = ctrs_15_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_15_1_T_6 = ctrs_15_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_15_1_T_7 = u_s1_br_takens_1 ? _ctrs_15_1_T_4 : _ctrs_15_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_16_0_oldSatTaken = ctrs_16_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_16_0_oldSatNotTaken = ctrs_16_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_16_0_T_4 = ctrs_16_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_16_0_T_6 = ctrs_16_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_16_0_T_7 = u_s1_br_takens_0 ? _ctrs_16_0_T_4 : _ctrs_16_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_16_1_oldSatTaken = ctrs_16_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_16_1_oldSatNotTaken = ctrs_16_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_16_1_T_4 = ctrs_16_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_16_1_T_6 = ctrs_16_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_16_1_T_7 = u_s1_br_takens_1 ? _ctrs_16_1_T_4 : _ctrs_16_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_17_0_oldSatTaken = ctrs_17_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_17_0_oldSatNotTaken = ctrs_17_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_17_0_T_4 = ctrs_17_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_17_0_T_6 = ctrs_17_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_17_0_T_7 = u_s1_br_takens_0 ? _ctrs_17_0_T_4 : _ctrs_17_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_17_1_oldSatTaken = ctrs_17_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_17_1_oldSatNotTaken = ctrs_17_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_17_1_T_4 = ctrs_17_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_17_1_T_6 = ctrs_17_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_17_1_T_7 = u_s1_br_takens_1 ? _ctrs_17_1_T_4 : _ctrs_17_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_18_0_oldSatTaken = ctrs_18_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_18_0_oldSatNotTaken = ctrs_18_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_18_0_T_4 = ctrs_18_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_18_0_T_6 = ctrs_18_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_18_0_T_7 = u_s1_br_takens_0 ? _ctrs_18_0_T_4 : _ctrs_18_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_18_1_oldSatTaken = ctrs_18_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_18_1_oldSatNotTaken = ctrs_18_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_18_1_T_4 = ctrs_18_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_18_1_T_6 = ctrs_18_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_18_1_T_7 = u_s1_br_takens_1 ? _ctrs_18_1_T_4 : _ctrs_18_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_19_0_oldSatTaken = ctrs_19_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_19_0_oldSatNotTaken = ctrs_19_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_19_0_T_4 = ctrs_19_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_19_0_T_6 = ctrs_19_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_19_0_T_7 = u_s1_br_takens_0 ? _ctrs_19_0_T_4 : _ctrs_19_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_19_1_oldSatTaken = ctrs_19_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_19_1_oldSatNotTaken = ctrs_19_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_19_1_T_4 = ctrs_19_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_19_1_T_6 = ctrs_19_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_19_1_T_7 = u_s1_br_takens_1 ? _ctrs_19_1_T_4 : _ctrs_19_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_20_0_oldSatTaken = ctrs_20_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_20_0_oldSatNotTaken = ctrs_20_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_20_0_T_4 = ctrs_20_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_20_0_T_6 = ctrs_20_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_20_0_T_7 = u_s1_br_takens_0 ? _ctrs_20_0_T_4 : _ctrs_20_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_20_1_oldSatTaken = ctrs_20_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_20_1_oldSatNotTaken = ctrs_20_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_20_1_T_4 = ctrs_20_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_20_1_T_6 = ctrs_20_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_20_1_T_7 = u_s1_br_takens_1 ? _ctrs_20_1_T_4 : _ctrs_20_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_21_0_oldSatTaken = ctrs_21_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_21_0_oldSatNotTaken = ctrs_21_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_21_0_T_4 = ctrs_21_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_21_0_T_6 = ctrs_21_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_21_0_T_7 = u_s1_br_takens_0 ? _ctrs_21_0_T_4 : _ctrs_21_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_21_1_oldSatTaken = ctrs_21_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_21_1_oldSatNotTaken = ctrs_21_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_21_1_T_4 = ctrs_21_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_21_1_T_6 = ctrs_21_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_21_1_T_7 = u_s1_br_takens_1 ? _ctrs_21_1_T_4 : _ctrs_21_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_22_0_oldSatTaken = ctrs_22_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_22_0_oldSatNotTaken = ctrs_22_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_22_0_T_4 = ctrs_22_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_22_0_T_6 = ctrs_22_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_22_0_T_7 = u_s1_br_takens_0 ? _ctrs_22_0_T_4 : _ctrs_22_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_22_1_oldSatTaken = ctrs_22_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_22_1_oldSatNotTaken = ctrs_22_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_22_1_T_4 = ctrs_22_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_22_1_T_6 = ctrs_22_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_22_1_T_7 = u_s1_br_takens_1 ? _ctrs_22_1_T_4 : _ctrs_22_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_23_0_oldSatTaken = ctrs_23_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_23_0_oldSatNotTaken = ctrs_23_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_23_0_T_4 = ctrs_23_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_23_0_T_6 = ctrs_23_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_23_0_T_7 = u_s1_br_takens_0 ? _ctrs_23_0_T_4 : _ctrs_23_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_23_1_oldSatTaken = ctrs_23_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_23_1_oldSatNotTaken = ctrs_23_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_23_1_T_4 = ctrs_23_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_23_1_T_6 = ctrs_23_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_23_1_T_7 = u_s1_br_takens_1 ? _ctrs_23_1_T_4 : _ctrs_23_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_24_0_oldSatTaken = ctrs_24_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_24_0_oldSatNotTaken = ctrs_24_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_24_0_T_4 = ctrs_24_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_24_0_T_6 = ctrs_24_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_24_0_T_7 = u_s1_br_takens_0 ? _ctrs_24_0_T_4 : _ctrs_24_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_24_1_oldSatTaken = ctrs_24_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_24_1_oldSatNotTaken = ctrs_24_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_24_1_T_4 = ctrs_24_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_24_1_T_6 = ctrs_24_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_24_1_T_7 = u_s1_br_takens_1 ? _ctrs_24_1_T_4 : _ctrs_24_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_25_0_oldSatTaken = ctrs_25_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_25_0_oldSatNotTaken = ctrs_25_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_25_0_T_4 = ctrs_25_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_25_0_T_6 = ctrs_25_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_25_0_T_7 = u_s1_br_takens_0 ? _ctrs_25_0_T_4 : _ctrs_25_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_25_1_oldSatTaken = ctrs_25_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_25_1_oldSatNotTaken = ctrs_25_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_25_1_T_4 = ctrs_25_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_25_1_T_6 = ctrs_25_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_25_1_T_7 = u_s1_br_takens_1 ? _ctrs_25_1_T_4 : _ctrs_25_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_26_0_oldSatTaken = ctrs_26_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_26_0_oldSatNotTaken = ctrs_26_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_26_0_T_4 = ctrs_26_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_26_0_T_6 = ctrs_26_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_26_0_T_7 = u_s1_br_takens_0 ? _ctrs_26_0_T_4 : _ctrs_26_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_26_1_oldSatTaken = ctrs_26_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_26_1_oldSatNotTaken = ctrs_26_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_26_1_T_4 = ctrs_26_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_26_1_T_6 = ctrs_26_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_26_1_T_7 = u_s1_br_takens_1 ? _ctrs_26_1_T_4 : _ctrs_26_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_27_0_oldSatTaken = ctrs_27_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_27_0_oldSatNotTaken = ctrs_27_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_27_0_T_4 = ctrs_27_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_27_0_T_6 = ctrs_27_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_27_0_T_7 = u_s1_br_takens_0 ? _ctrs_27_0_T_4 : _ctrs_27_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_27_1_oldSatTaken = ctrs_27_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_27_1_oldSatNotTaken = ctrs_27_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_27_1_T_4 = ctrs_27_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_27_1_T_6 = ctrs_27_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_27_1_T_7 = u_s1_br_takens_1 ? _ctrs_27_1_T_4 : _ctrs_27_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_28_0_oldSatTaken = ctrs_28_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_28_0_oldSatNotTaken = ctrs_28_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_28_0_T_4 = ctrs_28_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_28_0_T_6 = ctrs_28_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_28_0_T_7 = u_s1_br_takens_0 ? _ctrs_28_0_T_4 : _ctrs_28_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_28_1_oldSatTaken = ctrs_28_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_28_1_oldSatNotTaken = ctrs_28_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_28_1_T_4 = ctrs_28_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_28_1_T_6 = ctrs_28_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_28_1_T_7 = u_s1_br_takens_1 ? _ctrs_28_1_T_4 : _ctrs_28_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_29_0_oldSatTaken = ctrs_29_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_29_0_oldSatNotTaken = ctrs_29_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_29_0_T_4 = ctrs_29_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_29_0_T_6 = ctrs_29_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_29_0_T_7 = u_s1_br_takens_0 ? _ctrs_29_0_T_4 : _ctrs_29_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_29_1_oldSatTaken = ctrs_29_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_29_1_oldSatNotTaken = ctrs_29_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_29_1_T_4 = ctrs_29_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_29_1_T_6 = ctrs_29_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_29_1_T_7 = u_s1_br_takens_1 ? _ctrs_29_1_T_4 : _ctrs_29_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_30_0_oldSatTaken = ctrs_30_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_30_0_oldSatNotTaken = ctrs_30_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_30_0_T_4 = ctrs_30_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_30_0_T_6 = ctrs_30_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_30_0_T_7 = u_s1_br_takens_0 ? _ctrs_30_0_T_4 : _ctrs_30_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_30_1_oldSatTaken = ctrs_30_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_30_1_oldSatNotTaken = ctrs_30_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_30_1_T_4 = ctrs_30_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_30_1_T_6 = ctrs_30_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_30_1_T_7 = u_s1_br_takens_1 ? _ctrs_30_1_T_4 : _ctrs_30_1_T_6; // @[BPU.scala 99:12]
  wire  ctrs_31_0_oldSatTaken = ctrs_31_0 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_31_0_oldSatNotTaken = ctrs_31_0 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_31_0_T_4 = ctrs_31_0 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_31_0_T_6 = ctrs_31_0 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_31_0_T_7 = u_s1_br_takens_0 ? _ctrs_31_0_T_4 : _ctrs_31_0_T_6; // @[BPU.scala 99:12]
  wire  ctrs_31_1_oldSatTaken = ctrs_31_1 == 2'h3; // @[BPU.scala 95:27]
  wire  ctrs_31_1_oldSatNotTaken = ctrs_31_1 == 2'h0; // @[BPU.scala 96:30]
  wire [1:0] _ctrs_31_1_T_4 = ctrs_31_1 + 2'h1; // @[BPU.scala 99:24]
  wire [1:0] _ctrs_31_1_T_6 = ctrs_31_1 - 2'h1; // @[BPU.scala 99:35]
  wire [1:0] _ctrs_31_1_T_7 = u_s1_br_takens_1 ? _ctrs_31_1_T_4 : _ctrs_31_1_T_6; // @[BPU.scala 99:12]
  wire [15:0] replacer_touch_ways_1_bits_hi = u_s1_write_way_oh[31:16]; // @[OneHot.scala 30:18]
  wire [15:0] replacer_touch_ways_1_bits_lo = u_s1_write_way_oh[15:0]; // @[OneHot.scala 31:18]
  wire  _replacer_touch_ways_1_bits_T = |replacer_touch_ways_1_bits_hi; // @[OneHot.scala 32:14]
  wire [15:0] _replacer_touch_ways_1_bits_T_1 = replacer_touch_ways_1_bits_hi | replacer_touch_ways_1_bits_lo; // @[OneHot.scala 32:28]
  wire [7:0] replacer_touch_ways_1_bits_hi_1 = _replacer_touch_ways_1_bits_T_1[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] replacer_touch_ways_1_bits_lo_1 = _replacer_touch_ways_1_bits_T_1[7:0]; // @[OneHot.scala 31:18]
  wire  _replacer_touch_ways_1_bits_T_2 = |replacer_touch_ways_1_bits_hi_1; // @[OneHot.scala 32:14]
  wire [7:0] _replacer_touch_ways_1_bits_T_3 = replacer_touch_ways_1_bits_hi_1 | replacer_touch_ways_1_bits_lo_1; // @[OneHot.scala 32:28]
  wire [3:0] replacer_touch_ways_1_bits_hi_2 = _replacer_touch_ways_1_bits_T_3[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] replacer_touch_ways_1_bits_lo_2 = _replacer_touch_ways_1_bits_T_3[3:0]; // @[OneHot.scala 31:18]
  wire  _replacer_touch_ways_1_bits_T_4 = |replacer_touch_ways_1_bits_hi_2; // @[OneHot.scala 32:14]
  wire [3:0] _replacer_touch_ways_1_bits_T_5 = replacer_touch_ways_1_bits_hi_2 | replacer_touch_ways_1_bits_lo_2; // @[OneHot.scala 32:28]
  wire [1:0] replacer_touch_ways_1_bits_hi_3 = _replacer_touch_ways_1_bits_T_5[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] replacer_touch_ways_1_bits_lo_3 = _replacer_touch_ways_1_bits_T_5[1:0]; // @[OneHot.scala 31:18]
  wire  _replacer_touch_ways_1_bits_T_6 = |replacer_touch_ways_1_bits_hi_3; // @[OneHot.scala 32:14]
  wire [1:0] _replacer_touch_ways_1_bits_T_7 = replacer_touch_ways_1_bits_hi_3 | replacer_touch_ways_1_bits_lo_3; // @[OneHot.scala 32:28]
  wire [4:0] replacer_touch_ways_1_bits = {_replacer_touch_ways_1_bits_T,_replacer_touch_ways_1_bits_T_2,
    _replacer_touch_ways_1_bits_T_4,_replacer_touch_ways_1_bits_T_6,_replacer_touch_ways_1_bits_T_7[1]}; // @[Cat.scala 31:58]
  wire  _T_131 = replacer_touch_ways_0_valid_REG | u_s1_valid; // @[package.scala 72:59]
  wire  state_reg_set_left_older = ~replacer_touch_ways_0_bits_r[4]; // @[Replacement.scala 196:33]
  wire  state_reg_set_left_older_1 = ~replacer_touch_ways_0_bits_r[3]; // @[Replacement.scala 196:33]
  wire  state_reg_set_left_older_2 = ~replacer_touch_ways_0_bits_r[2]; // @[Replacement.scala 196:33]
  wire  state_reg_set_left_older_3 = ~replacer_touch_ways_0_bits_r[1]; // @[Replacement.scala 196:33]
  wire  _state_reg_T_5 = ~replacer_touch_ways_0_bits_r[0]; // @[Replacement.scala 218:7]
  wire  _state_reg_T_6 = state_reg_set_left_older_3 ? u_s1_alloc_way_left_subtree_state_3 : _state_reg_T_5; // @[Replacement.scala 203:16]
  wire  _state_reg_T_10 = state_reg_set_left_older_3 ? _state_reg_T_5 : u_s1_alloc_way_right_subtree_state_3; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_11 = {state_reg_set_left_older_3,_state_reg_T_6,_state_reg_T_10}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_12 = state_reg_set_left_older_2 ? u_s1_alloc_way_left_subtree_state_2 : _state_reg_T_11; // @[Replacement.scala 203:16]
  wire  _state_reg_T_17 = state_reg_set_left_older_3 ? u_s1_alloc_way_left_subtree_state_4 : _state_reg_T_5; // @[Replacement.scala 203:16]
  wire  _state_reg_T_21 = state_reg_set_left_older_3 ? _state_reg_T_5 : u_s1_alloc_way_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_22 = {state_reg_set_left_older_3,_state_reg_T_17,_state_reg_T_21}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_23 = state_reg_set_left_older_2 ? _state_reg_T_22 : u_s1_alloc_way_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [6:0] _state_reg_T_24 = {state_reg_set_left_older_2,_state_reg_T_12,_state_reg_T_23}; // @[Cat.scala 31:58]
  wire [6:0] _state_reg_T_25 = state_reg_set_left_older_1 ? u_s1_alloc_way_left_subtree_state_1 : _state_reg_T_24; // @[Replacement.scala 203:16]
  wire  _state_reg_T_31 = state_reg_set_left_older_3 ? u_s1_alloc_way_left_subtree_state_6 : _state_reg_T_5; // @[Replacement.scala 203:16]
  wire  _state_reg_T_35 = state_reg_set_left_older_3 ? _state_reg_T_5 : u_s1_alloc_way_right_subtree_state_6; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_36 = {state_reg_set_left_older_3,_state_reg_T_31,_state_reg_T_35}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_37 = state_reg_set_left_older_2 ? u_s1_alloc_way_left_subtree_state_5 : _state_reg_T_36; // @[Replacement.scala 203:16]
  wire  _state_reg_T_42 = state_reg_set_left_older_3 ? u_s1_alloc_way_left_subtree_state_7 : _state_reg_T_5; // @[Replacement.scala 203:16]
  wire  _state_reg_T_46 = state_reg_set_left_older_3 ? _state_reg_T_5 : u_s1_alloc_way_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_47 = {state_reg_set_left_older_3,_state_reg_T_42,_state_reg_T_46}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_48 = state_reg_set_left_older_2 ? _state_reg_T_47 : u_s1_alloc_way_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [6:0] _state_reg_T_49 = {state_reg_set_left_older_2,_state_reg_T_37,_state_reg_T_48}; // @[Cat.scala 31:58]
  wire [6:0] _state_reg_T_50 = state_reg_set_left_older_1 ? _state_reg_T_49 : u_s1_alloc_way_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [14:0] _state_reg_T_51 = {state_reg_set_left_older_1,_state_reg_T_25,_state_reg_T_50}; // @[Cat.scala 31:58]
  wire [14:0] _state_reg_T_52 = state_reg_set_left_older ? u_s1_alloc_way_left_subtree_state : _state_reg_T_51; // @[Replacement.scala 203:16]
  wire  _state_reg_T_59 = state_reg_set_left_older_3 ? u_s1_alloc_way_left_subtree_state_10 : _state_reg_T_5; // @[Replacement.scala 203:16]
  wire  _state_reg_T_63 = state_reg_set_left_older_3 ? _state_reg_T_5 : u_s1_alloc_way_right_subtree_state_10; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_64 = {state_reg_set_left_older_3,_state_reg_T_59,_state_reg_T_63}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_65 = state_reg_set_left_older_2 ? u_s1_alloc_way_left_subtree_state_9 : _state_reg_T_64; // @[Replacement.scala 203:16]
  wire  _state_reg_T_70 = state_reg_set_left_older_3 ? u_s1_alloc_way_left_subtree_state_11 : _state_reg_T_5; // @[Replacement.scala 203:16]
  wire  _state_reg_T_74 = state_reg_set_left_older_3 ? _state_reg_T_5 : u_s1_alloc_way_right_subtree_state_11; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_75 = {state_reg_set_left_older_3,_state_reg_T_70,_state_reg_T_74}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_76 = state_reg_set_left_older_2 ? _state_reg_T_75 : u_s1_alloc_way_right_subtree_state_9; // @[Replacement.scala 206:16]
  wire [6:0] _state_reg_T_77 = {state_reg_set_left_older_2,_state_reg_T_65,_state_reg_T_76}; // @[Cat.scala 31:58]
  wire [6:0] _state_reg_T_78 = state_reg_set_left_older_1 ? u_s1_alloc_way_left_subtree_state_8 : _state_reg_T_77; // @[Replacement.scala 203:16]
  wire  _state_reg_T_84 = state_reg_set_left_older_3 ? u_s1_alloc_way_left_subtree_state_13 : _state_reg_T_5; // @[Replacement.scala 203:16]
  wire  _state_reg_T_88 = state_reg_set_left_older_3 ? _state_reg_T_5 : u_s1_alloc_way_right_subtree_state_13; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_89 = {state_reg_set_left_older_3,_state_reg_T_84,_state_reg_T_88}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_90 = state_reg_set_left_older_2 ? u_s1_alloc_way_left_subtree_state_12 : _state_reg_T_89; // @[Replacement.scala 203:16]
  wire  _state_reg_T_95 = state_reg_set_left_older_3 ? u_s1_alloc_way_left_subtree_state_14 : _state_reg_T_5; // @[Replacement.scala 203:16]
  wire  _state_reg_T_99 = state_reg_set_left_older_3 ? _state_reg_T_5 : u_s1_alloc_way_right_subtree_state_14; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_100 = {state_reg_set_left_older_3,_state_reg_T_95,_state_reg_T_99}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_101 = state_reg_set_left_older_2 ? _state_reg_T_100 : u_s1_alloc_way_right_subtree_state_12; // @[Replacement.scala 206:16]
  wire [6:0] _state_reg_T_102 = {state_reg_set_left_older_2,_state_reg_T_90,_state_reg_T_101}; // @[Cat.scala 31:58]
  wire [6:0] _state_reg_T_103 = state_reg_set_left_older_1 ? _state_reg_T_102 : u_s1_alloc_way_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [14:0] _state_reg_T_104 = {state_reg_set_left_older_1,_state_reg_T_78,_state_reg_T_103}; // @[Cat.scala 31:58]
  wire [14:0] _state_reg_T_105 = state_reg_set_left_older ? _state_reg_T_104 : u_s1_alloc_way_right_subtree_state; // @[Replacement.scala 206:16]
  wire [30:0] _state_reg_T_106 = {state_reg_set_left_older,_state_reg_T_52,_state_reg_T_105}; // @[Cat.scala 31:58]
  wire [30:0] _state_reg_T_107 = replacer_touch_ways_0_valid_REG ? _state_reg_T_106 : state_reg; // @[Replacement.scala 22:56]
  wire  state_reg_set_left_older_15 = ~replacer_touch_ways_1_bits[4]; // @[Replacement.scala 196:33]
  wire [14:0] state_reg_left_subtree_state_15 = _state_reg_T_107[29:15]; // @[package.scala 154:13]
  wire [14:0] state_reg_right_subtree_state_15 = _state_reg_T_107[14:0]; // @[Replacement.scala 198:38]
  wire  state_reg_set_left_older_16 = ~replacer_touch_ways_1_bits[3]; // @[Replacement.scala 196:33]
  wire [6:0] state_reg_left_subtree_state_16 = state_reg_left_subtree_state_15[13:7]; // @[package.scala 154:13]
  wire [6:0] state_reg_right_subtree_state_16 = state_reg_left_subtree_state_15[6:0]; // @[Replacement.scala 198:38]
  wire  state_reg_set_left_older_17 = ~replacer_touch_ways_1_bits[2]; // @[Replacement.scala 196:33]
  wire [2:0] state_reg_left_subtree_state_17 = state_reg_left_subtree_state_16[5:3]; // @[package.scala 154:13]
  wire [2:0] state_reg_right_subtree_state_17 = state_reg_left_subtree_state_16[2:0]; // @[Replacement.scala 198:38]
  wire  state_reg_set_left_older_18 = ~replacer_touch_ways_1_bits[1]; // @[Replacement.scala 196:33]
  wire  state_reg_left_subtree_state_18 = state_reg_left_subtree_state_17[1]; // @[package.scala 154:13]
  wire  state_reg_right_subtree_state_18 = state_reg_left_subtree_state_17[0]; // @[Replacement.scala 198:38]
  wire  _state_reg_T_113 = ~replacer_touch_ways_1_bits[0]; // @[Replacement.scala 218:7]
  wire  _state_reg_T_114 = state_reg_set_left_older_18 ? state_reg_left_subtree_state_18 : _state_reg_T_113; // @[Replacement.scala 203:16]
  wire  _state_reg_T_118 = state_reg_set_left_older_18 ? _state_reg_T_113 : state_reg_right_subtree_state_18; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_119 = {state_reg_set_left_older_18,_state_reg_T_114,_state_reg_T_118}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_120 = state_reg_set_left_older_17 ? state_reg_left_subtree_state_17 : _state_reg_T_119; // @[Replacement.scala 203:16]
  wire  state_reg_left_subtree_state_19 = state_reg_right_subtree_state_17[1]; // @[package.scala 154:13]
  wire  state_reg_right_subtree_state_19 = state_reg_right_subtree_state_17[0]; // @[Replacement.scala 198:38]
  wire  _state_reg_T_125 = state_reg_set_left_older_18 ? state_reg_left_subtree_state_19 : _state_reg_T_113; // @[Replacement.scala 203:16]
  wire  _state_reg_T_129 = state_reg_set_left_older_18 ? _state_reg_T_113 : state_reg_right_subtree_state_19; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_130 = {state_reg_set_left_older_18,_state_reg_T_125,_state_reg_T_129}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_131 = state_reg_set_left_older_17 ? _state_reg_T_130 : state_reg_right_subtree_state_17; // @[Replacement.scala 206:16]
  wire [6:0] _state_reg_T_132 = {state_reg_set_left_older_17,_state_reg_T_120,_state_reg_T_131}; // @[Cat.scala 31:58]
  wire [6:0] _state_reg_T_133 = state_reg_set_left_older_16 ? state_reg_left_subtree_state_16 : _state_reg_T_132; // @[Replacement.scala 203:16]
  wire [2:0] state_reg_left_subtree_state_20 = state_reg_right_subtree_state_16[5:3]; // @[package.scala 154:13]
  wire [2:0] state_reg_right_subtree_state_20 = state_reg_right_subtree_state_16[2:0]; // @[Replacement.scala 198:38]
  wire  state_reg_left_subtree_state_21 = state_reg_left_subtree_state_20[1]; // @[package.scala 154:13]
  wire  state_reg_right_subtree_state_21 = state_reg_left_subtree_state_20[0]; // @[Replacement.scala 198:38]
  wire  _state_reg_T_139 = state_reg_set_left_older_18 ? state_reg_left_subtree_state_21 : _state_reg_T_113; // @[Replacement.scala 203:16]
  wire  _state_reg_T_143 = state_reg_set_left_older_18 ? _state_reg_T_113 : state_reg_right_subtree_state_21; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_144 = {state_reg_set_left_older_18,_state_reg_T_139,_state_reg_T_143}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_145 = state_reg_set_left_older_17 ? state_reg_left_subtree_state_20 : _state_reg_T_144; // @[Replacement.scala 203:16]
  wire  state_reg_left_subtree_state_22 = state_reg_right_subtree_state_20[1]; // @[package.scala 154:13]
  wire  state_reg_right_subtree_state_22 = state_reg_right_subtree_state_20[0]; // @[Replacement.scala 198:38]
  wire  _state_reg_T_150 = state_reg_set_left_older_18 ? state_reg_left_subtree_state_22 : _state_reg_T_113; // @[Replacement.scala 203:16]
  wire  _state_reg_T_154 = state_reg_set_left_older_18 ? _state_reg_T_113 : state_reg_right_subtree_state_22; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_155 = {state_reg_set_left_older_18,_state_reg_T_150,_state_reg_T_154}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_156 = state_reg_set_left_older_17 ? _state_reg_T_155 : state_reg_right_subtree_state_20; // @[Replacement.scala 206:16]
  wire [6:0] _state_reg_T_157 = {state_reg_set_left_older_17,_state_reg_T_145,_state_reg_T_156}; // @[Cat.scala 31:58]
  wire [6:0] _state_reg_T_158 = state_reg_set_left_older_16 ? _state_reg_T_157 : state_reg_right_subtree_state_16; // @[Replacement.scala 206:16]
  wire [14:0] _state_reg_T_159 = {state_reg_set_left_older_16,_state_reg_T_133,_state_reg_T_158}; // @[Cat.scala 31:58]
  wire [14:0] _state_reg_T_160 = state_reg_set_left_older_15 ? state_reg_left_subtree_state_15 : _state_reg_T_159; // @[Replacement.scala 203:16]
  wire [6:0] state_reg_left_subtree_state_23 = state_reg_right_subtree_state_15[13:7]; // @[package.scala 154:13]
  wire [6:0] state_reg_right_subtree_state_23 = state_reg_right_subtree_state_15[6:0]; // @[Replacement.scala 198:38]
  wire [2:0] state_reg_left_subtree_state_24 = state_reg_left_subtree_state_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_reg_right_subtree_state_24 = state_reg_left_subtree_state_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_reg_left_subtree_state_25 = state_reg_left_subtree_state_24[1]; // @[package.scala 154:13]
  wire  state_reg_right_subtree_state_25 = state_reg_left_subtree_state_24[0]; // @[Replacement.scala 198:38]
  wire  _state_reg_T_167 = state_reg_set_left_older_18 ? state_reg_left_subtree_state_25 : _state_reg_T_113; // @[Replacement.scala 203:16]
  wire  _state_reg_T_171 = state_reg_set_left_older_18 ? _state_reg_T_113 : state_reg_right_subtree_state_25; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_172 = {state_reg_set_left_older_18,_state_reg_T_167,_state_reg_T_171}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_173 = state_reg_set_left_older_17 ? state_reg_left_subtree_state_24 : _state_reg_T_172; // @[Replacement.scala 203:16]
  wire  state_reg_left_subtree_state_26 = state_reg_right_subtree_state_24[1]; // @[package.scala 154:13]
  wire  state_reg_right_subtree_state_26 = state_reg_right_subtree_state_24[0]; // @[Replacement.scala 198:38]
  wire  _state_reg_T_178 = state_reg_set_left_older_18 ? state_reg_left_subtree_state_26 : _state_reg_T_113; // @[Replacement.scala 203:16]
  wire  _state_reg_T_182 = state_reg_set_left_older_18 ? _state_reg_T_113 : state_reg_right_subtree_state_26; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_183 = {state_reg_set_left_older_18,_state_reg_T_178,_state_reg_T_182}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_184 = state_reg_set_left_older_17 ? _state_reg_T_183 : state_reg_right_subtree_state_24; // @[Replacement.scala 206:16]
  wire [6:0] _state_reg_T_185 = {state_reg_set_left_older_17,_state_reg_T_173,_state_reg_T_184}; // @[Cat.scala 31:58]
  wire [6:0] _state_reg_T_186 = state_reg_set_left_older_16 ? state_reg_left_subtree_state_23 : _state_reg_T_185; // @[Replacement.scala 203:16]
  wire [2:0] state_reg_left_subtree_state_27 = state_reg_right_subtree_state_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_reg_right_subtree_state_27 = state_reg_right_subtree_state_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_reg_left_subtree_state_28 = state_reg_left_subtree_state_27[1]; // @[package.scala 154:13]
  wire  state_reg_right_subtree_state_28 = state_reg_left_subtree_state_27[0]; // @[Replacement.scala 198:38]
  wire  _state_reg_T_192 = state_reg_set_left_older_18 ? state_reg_left_subtree_state_28 : _state_reg_T_113; // @[Replacement.scala 203:16]
  wire  _state_reg_T_196 = state_reg_set_left_older_18 ? _state_reg_T_113 : state_reg_right_subtree_state_28; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_197 = {state_reg_set_left_older_18,_state_reg_T_192,_state_reg_T_196}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_198 = state_reg_set_left_older_17 ? state_reg_left_subtree_state_27 : _state_reg_T_197; // @[Replacement.scala 203:16]
  wire  state_reg_left_subtree_state_29 = state_reg_right_subtree_state_27[1]; // @[package.scala 154:13]
  wire  state_reg_right_subtree_state_29 = state_reg_right_subtree_state_27[0]; // @[Replacement.scala 198:38]
  wire  _state_reg_T_203 = state_reg_set_left_older_18 ? state_reg_left_subtree_state_29 : _state_reg_T_113; // @[Replacement.scala 203:16]
  wire  _state_reg_T_207 = state_reg_set_left_older_18 ? _state_reg_T_113 : state_reg_right_subtree_state_29; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_208 = {state_reg_set_left_older_18,_state_reg_T_203,_state_reg_T_207}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_209 = state_reg_set_left_older_17 ? _state_reg_T_208 : state_reg_right_subtree_state_27; // @[Replacement.scala 206:16]
  wire [6:0] _state_reg_T_210 = {state_reg_set_left_older_17,_state_reg_T_198,_state_reg_T_209}; // @[Cat.scala 31:58]
  wire [6:0] _state_reg_T_211 = state_reg_set_left_older_16 ? _state_reg_T_210 : state_reg_right_subtree_state_23; // @[Replacement.scala 206:16]
  wire [14:0] _state_reg_T_212 = {state_reg_set_left_older_16,_state_reg_T_186,_state_reg_T_211}; // @[Cat.scala 31:58]
  wire [14:0] _state_reg_T_213 = state_reg_set_left_older_15 ? _state_reg_T_212 : state_reg_right_subtree_state_15; // @[Replacement.scala 206:16]
  wire [30:0] _state_reg_T_214 = {state_reg_set_left_older_15,_state_reg_T_160,_state_reg_T_213}; // @[Cat.scala 31:58]
  wire  _T_139 = ~u_meta_hit; // @[FauFTB.scala 190:53]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  DelayN_2 reset_vector_delay ( // @[Hold.scala 97:23]
    .clock(reset_vector_delay_clock),
    .io_in(reset_vector_delay_io_in),
    .io_out(reset_vector_delay_io_out)
  );
  FauFTBWay ways_0 ( // @[FauFTB.scala 91:47]
    .clock(ways_0_clock),
    .reset(ways_0_reset),
    .io_req_tag(ways_0_io_req_tag),
    .io_resp_brSlots_0_offset(ways_0_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_0_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_0_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_0_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_0_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_0_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_0_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_0_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_0_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_0_io_resp_pftAddr),
    .io_resp_carry(ways_0_io_resp_carry),
    .io_resp_always_taken_0(ways_0_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_0_io_resp_always_taken_1),
    .io_resp_hit(ways_0_io_resp_hit),
    .io_update_req_tag(ways_0_io_update_req_tag),
    .io_update_hit(ways_0_io_update_hit),
    .io_write_valid(ways_0_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_0_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_0_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_0_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_0_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_0_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_0_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_0_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_0_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_0_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_0_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_0_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_0_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_0_io_write_entry_always_taken_1),
    .io_write_tag(ways_0_io_write_tag)
  );
  FauFTBWay ways_1 ( // @[FauFTB.scala 91:47]
    .clock(ways_1_clock),
    .reset(ways_1_reset),
    .io_req_tag(ways_1_io_req_tag),
    .io_resp_brSlots_0_offset(ways_1_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_1_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_1_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_1_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_1_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_1_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_1_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_1_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_1_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_1_io_resp_pftAddr),
    .io_resp_carry(ways_1_io_resp_carry),
    .io_resp_always_taken_0(ways_1_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_1_io_resp_always_taken_1),
    .io_resp_hit(ways_1_io_resp_hit),
    .io_update_req_tag(ways_1_io_update_req_tag),
    .io_update_hit(ways_1_io_update_hit),
    .io_write_valid(ways_1_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_1_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_1_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_1_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_1_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_1_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_1_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_1_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_1_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_1_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_1_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_1_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_1_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_1_io_write_entry_always_taken_1),
    .io_write_tag(ways_1_io_write_tag)
  );
  FauFTBWay ways_2 ( // @[FauFTB.scala 91:47]
    .clock(ways_2_clock),
    .reset(ways_2_reset),
    .io_req_tag(ways_2_io_req_tag),
    .io_resp_brSlots_0_offset(ways_2_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_2_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_2_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_2_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_2_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_2_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_2_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_2_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_2_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_2_io_resp_pftAddr),
    .io_resp_carry(ways_2_io_resp_carry),
    .io_resp_always_taken_0(ways_2_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_2_io_resp_always_taken_1),
    .io_resp_hit(ways_2_io_resp_hit),
    .io_update_req_tag(ways_2_io_update_req_tag),
    .io_update_hit(ways_2_io_update_hit),
    .io_write_valid(ways_2_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_2_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_2_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_2_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_2_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_2_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_2_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_2_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_2_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_2_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_2_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_2_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_2_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_2_io_write_entry_always_taken_1),
    .io_write_tag(ways_2_io_write_tag)
  );
  FauFTBWay ways_3 ( // @[FauFTB.scala 91:47]
    .clock(ways_3_clock),
    .reset(ways_3_reset),
    .io_req_tag(ways_3_io_req_tag),
    .io_resp_brSlots_0_offset(ways_3_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_3_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_3_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_3_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_3_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_3_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_3_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_3_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_3_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_3_io_resp_pftAddr),
    .io_resp_carry(ways_3_io_resp_carry),
    .io_resp_always_taken_0(ways_3_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_3_io_resp_always_taken_1),
    .io_resp_hit(ways_3_io_resp_hit),
    .io_update_req_tag(ways_3_io_update_req_tag),
    .io_update_hit(ways_3_io_update_hit),
    .io_write_valid(ways_3_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_3_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_3_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_3_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_3_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_3_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_3_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_3_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_3_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_3_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_3_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_3_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_3_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_3_io_write_entry_always_taken_1),
    .io_write_tag(ways_3_io_write_tag)
  );
  FauFTBWay ways_4 ( // @[FauFTB.scala 91:47]
    .clock(ways_4_clock),
    .reset(ways_4_reset),
    .io_req_tag(ways_4_io_req_tag),
    .io_resp_brSlots_0_offset(ways_4_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_4_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_4_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_4_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_4_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_4_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_4_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_4_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_4_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_4_io_resp_pftAddr),
    .io_resp_carry(ways_4_io_resp_carry),
    .io_resp_always_taken_0(ways_4_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_4_io_resp_always_taken_1),
    .io_resp_hit(ways_4_io_resp_hit),
    .io_update_req_tag(ways_4_io_update_req_tag),
    .io_update_hit(ways_4_io_update_hit),
    .io_write_valid(ways_4_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_4_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_4_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_4_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_4_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_4_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_4_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_4_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_4_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_4_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_4_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_4_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_4_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_4_io_write_entry_always_taken_1),
    .io_write_tag(ways_4_io_write_tag)
  );
  FauFTBWay ways_5 ( // @[FauFTB.scala 91:47]
    .clock(ways_5_clock),
    .reset(ways_5_reset),
    .io_req_tag(ways_5_io_req_tag),
    .io_resp_brSlots_0_offset(ways_5_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_5_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_5_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_5_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_5_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_5_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_5_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_5_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_5_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_5_io_resp_pftAddr),
    .io_resp_carry(ways_5_io_resp_carry),
    .io_resp_always_taken_0(ways_5_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_5_io_resp_always_taken_1),
    .io_resp_hit(ways_5_io_resp_hit),
    .io_update_req_tag(ways_5_io_update_req_tag),
    .io_update_hit(ways_5_io_update_hit),
    .io_write_valid(ways_5_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_5_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_5_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_5_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_5_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_5_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_5_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_5_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_5_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_5_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_5_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_5_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_5_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_5_io_write_entry_always_taken_1),
    .io_write_tag(ways_5_io_write_tag)
  );
  FauFTBWay ways_6 ( // @[FauFTB.scala 91:47]
    .clock(ways_6_clock),
    .reset(ways_6_reset),
    .io_req_tag(ways_6_io_req_tag),
    .io_resp_brSlots_0_offset(ways_6_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_6_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_6_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_6_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_6_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_6_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_6_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_6_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_6_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_6_io_resp_pftAddr),
    .io_resp_carry(ways_6_io_resp_carry),
    .io_resp_always_taken_0(ways_6_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_6_io_resp_always_taken_1),
    .io_resp_hit(ways_6_io_resp_hit),
    .io_update_req_tag(ways_6_io_update_req_tag),
    .io_update_hit(ways_6_io_update_hit),
    .io_write_valid(ways_6_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_6_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_6_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_6_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_6_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_6_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_6_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_6_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_6_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_6_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_6_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_6_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_6_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_6_io_write_entry_always_taken_1),
    .io_write_tag(ways_6_io_write_tag)
  );
  FauFTBWay ways_7 ( // @[FauFTB.scala 91:47]
    .clock(ways_7_clock),
    .reset(ways_7_reset),
    .io_req_tag(ways_7_io_req_tag),
    .io_resp_brSlots_0_offset(ways_7_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_7_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_7_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_7_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_7_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_7_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_7_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_7_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_7_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_7_io_resp_pftAddr),
    .io_resp_carry(ways_7_io_resp_carry),
    .io_resp_always_taken_0(ways_7_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_7_io_resp_always_taken_1),
    .io_resp_hit(ways_7_io_resp_hit),
    .io_update_req_tag(ways_7_io_update_req_tag),
    .io_update_hit(ways_7_io_update_hit),
    .io_write_valid(ways_7_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_7_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_7_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_7_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_7_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_7_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_7_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_7_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_7_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_7_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_7_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_7_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_7_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_7_io_write_entry_always_taken_1),
    .io_write_tag(ways_7_io_write_tag)
  );
  FauFTBWay ways_8 ( // @[FauFTB.scala 91:47]
    .clock(ways_8_clock),
    .reset(ways_8_reset),
    .io_req_tag(ways_8_io_req_tag),
    .io_resp_brSlots_0_offset(ways_8_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_8_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_8_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_8_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_8_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_8_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_8_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_8_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_8_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_8_io_resp_pftAddr),
    .io_resp_carry(ways_8_io_resp_carry),
    .io_resp_always_taken_0(ways_8_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_8_io_resp_always_taken_1),
    .io_resp_hit(ways_8_io_resp_hit),
    .io_update_req_tag(ways_8_io_update_req_tag),
    .io_update_hit(ways_8_io_update_hit),
    .io_write_valid(ways_8_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_8_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_8_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_8_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_8_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_8_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_8_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_8_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_8_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_8_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_8_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_8_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_8_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_8_io_write_entry_always_taken_1),
    .io_write_tag(ways_8_io_write_tag)
  );
  FauFTBWay ways_9 ( // @[FauFTB.scala 91:47]
    .clock(ways_9_clock),
    .reset(ways_9_reset),
    .io_req_tag(ways_9_io_req_tag),
    .io_resp_brSlots_0_offset(ways_9_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_9_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_9_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_9_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_9_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_9_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_9_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_9_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_9_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_9_io_resp_pftAddr),
    .io_resp_carry(ways_9_io_resp_carry),
    .io_resp_always_taken_0(ways_9_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_9_io_resp_always_taken_1),
    .io_resp_hit(ways_9_io_resp_hit),
    .io_update_req_tag(ways_9_io_update_req_tag),
    .io_update_hit(ways_9_io_update_hit),
    .io_write_valid(ways_9_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_9_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_9_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_9_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_9_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_9_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_9_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_9_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_9_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_9_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_9_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_9_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_9_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_9_io_write_entry_always_taken_1),
    .io_write_tag(ways_9_io_write_tag)
  );
  FauFTBWay ways_10 ( // @[FauFTB.scala 91:47]
    .clock(ways_10_clock),
    .reset(ways_10_reset),
    .io_req_tag(ways_10_io_req_tag),
    .io_resp_brSlots_0_offset(ways_10_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_10_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_10_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_10_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_10_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_10_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_10_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_10_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_10_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_10_io_resp_pftAddr),
    .io_resp_carry(ways_10_io_resp_carry),
    .io_resp_always_taken_0(ways_10_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_10_io_resp_always_taken_1),
    .io_resp_hit(ways_10_io_resp_hit),
    .io_update_req_tag(ways_10_io_update_req_tag),
    .io_update_hit(ways_10_io_update_hit),
    .io_write_valid(ways_10_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_10_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_10_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_10_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_10_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_10_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_10_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_10_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_10_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_10_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_10_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_10_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_10_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_10_io_write_entry_always_taken_1),
    .io_write_tag(ways_10_io_write_tag)
  );
  FauFTBWay ways_11 ( // @[FauFTB.scala 91:47]
    .clock(ways_11_clock),
    .reset(ways_11_reset),
    .io_req_tag(ways_11_io_req_tag),
    .io_resp_brSlots_0_offset(ways_11_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_11_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_11_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_11_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_11_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_11_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_11_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_11_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_11_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_11_io_resp_pftAddr),
    .io_resp_carry(ways_11_io_resp_carry),
    .io_resp_always_taken_0(ways_11_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_11_io_resp_always_taken_1),
    .io_resp_hit(ways_11_io_resp_hit),
    .io_update_req_tag(ways_11_io_update_req_tag),
    .io_update_hit(ways_11_io_update_hit),
    .io_write_valid(ways_11_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_11_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_11_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_11_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_11_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_11_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_11_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_11_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_11_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_11_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_11_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_11_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_11_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_11_io_write_entry_always_taken_1),
    .io_write_tag(ways_11_io_write_tag)
  );
  FauFTBWay ways_12 ( // @[FauFTB.scala 91:47]
    .clock(ways_12_clock),
    .reset(ways_12_reset),
    .io_req_tag(ways_12_io_req_tag),
    .io_resp_brSlots_0_offset(ways_12_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_12_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_12_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_12_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_12_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_12_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_12_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_12_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_12_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_12_io_resp_pftAddr),
    .io_resp_carry(ways_12_io_resp_carry),
    .io_resp_always_taken_0(ways_12_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_12_io_resp_always_taken_1),
    .io_resp_hit(ways_12_io_resp_hit),
    .io_update_req_tag(ways_12_io_update_req_tag),
    .io_update_hit(ways_12_io_update_hit),
    .io_write_valid(ways_12_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_12_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_12_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_12_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_12_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_12_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_12_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_12_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_12_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_12_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_12_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_12_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_12_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_12_io_write_entry_always_taken_1),
    .io_write_tag(ways_12_io_write_tag)
  );
  FauFTBWay ways_13 ( // @[FauFTB.scala 91:47]
    .clock(ways_13_clock),
    .reset(ways_13_reset),
    .io_req_tag(ways_13_io_req_tag),
    .io_resp_brSlots_0_offset(ways_13_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_13_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_13_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_13_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_13_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_13_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_13_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_13_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_13_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_13_io_resp_pftAddr),
    .io_resp_carry(ways_13_io_resp_carry),
    .io_resp_always_taken_0(ways_13_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_13_io_resp_always_taken_1),
    .io_resp_hit(ways_13_io_resp_hit),
    .io_update_req_tag(ways_13_io_update_req_tag),
    .io_update_hit(ways_13_io_update_hit),
    .io_write_valid(ways_13_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_13_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_13_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_13_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_13_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_13_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_13_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_13_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_13_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_13_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_13_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_13_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_13_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_13_io_write_entry_always_taken_1),
    .io_write_tag(ways_13_io_write_tag)
  );
  FauFTBWay ways_14 ( // @[FauFTB.scala 91:47]
    .clock(ways_14_clock),
    .reset(ways_14_reset),
    .io_req_tag(ways_14_io_req_tag),
    .io_resp_brSlots_0_offset(ways_14_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_14_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_14_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_14_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_14_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_14_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_14_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_14_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_14_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_14_io_resp_pftAddr),
    .io_resp_carry(ways_14_io_resp_carry),
    .io_resp_always_taken_0(ways_14_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_14_io_resp_always_taken_1),
    .io_resp_hit(ways_14_io_resp_hit),
    .io_update_req_tag(ways_14_io_update_req_tag),
    .io_update_hit(ways_14_io_update_hit),
    .io_write_valid(ways_14_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_14_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_14_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_14_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_14_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_14_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_14_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_14_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_14_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_14_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_14_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_14_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_14_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_14_io_write_entry_always_taken_1),
    .io_write_tag(ways_14_io_write_tag)
  );
  FauFTBWay ways_15 ( // @[FauFTB.scala 91:47]
    .clock(ways_15_clock),
    .reset(ways_15_reset),
    .io_req_tag(ways_15_io_req_tag),
    .io_resp_brSlots_0_offset(ways_15_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_15_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_15_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_15_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_15_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_15_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_15_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_15_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_15_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_15_io_resp_pftAddr),
    .io_resp_carry(ways_15_io_resp_carry),
    .io_resp_always_taken_0(ways_15_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_15_io_resp_always_taken_1),
    .io_resp_hit(ways_15_io_resp_hit),
    .io_update_req_tag(ways_15_io_update_req_tag),
    .io_update_hit(ways_15_io_update_hit),
    .io_write_valid(ways_15_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_15_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_15_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_15_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_15_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_15_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_15_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_15_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_15_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_15_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_15_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_15_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_15_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_15_io_write_entry_always_taken_1),
    .io_write_tag(ways_15_io_write_tag)
  );
  FauFTBWay ways_16 ( // @[FauFTB.scala 91:47]
    .clock(ways_16_clock),
    .reset(ways_16_reset),
    .io_req_tag(ways_16_io_req_tag),
    .io_resp_brSlots_0_offset(ways_16_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_16_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_16_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_16_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_16_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_16_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_16_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_16_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_16_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_16_io_resp_pftAddr),
    .io_resp_carry(ways_16_io_resp_carry),
    .io_resp_always_taken_0(ways_16_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_16_io_resp_always_taken_1),
    .io_resp_hit(ways_16_io_resp_hit),
    .io_update_req_tag(ways_16_io_update_req_tag),
    .io_update_hit(ways_16_io_update_hit),
    .io_write_valid(ways_16_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_16_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_16_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_16_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_16_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_16_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_16_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_16_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_16_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_16_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_16_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_16_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_16_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_16_io_write_entry_always_taken_1),
    .io_write_tag(ways_16_io_write_tag)
  );
  FauFTBWay ways_17 ( // @[FauFTB.scala 91:47]
    .clock(ways_17_clock),
    .reset(ways_17_reset),
    .io_req_tag(ways_17_io_req_tag),
    .io_resp_brSlots_0_offset(ways_17_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_17_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_17_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_17_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_17_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_17_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_17_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_17_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_17_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_17_io_resp_pftAddr),
    .io_resp_carry(ways_17_io_resp_carry),
    .io_resp_always_taken_0(ways_17_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_17_io_resp_always_taken_1),
    .io_resp_hit(ways_17_io_resp_hit),
    .io_update_req_tag(ways_17_io_update_req_tag),
    .io_update_hit(ways_17_io_update_hit),
    .io_write_valid(ways_17_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_17_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_17_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_17_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_17_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_17_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_17_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_17_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_17_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_17_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_17_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_17_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_17_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_17_io_write_entry_always_taken_1),
    .io_write_tag(ways_17_io_write_tag)
  );
  FauFTBWay ways_18 ( // @[FauFTB.scala 91:47]
    .clock(ways_18_clock),
    .reset(ways_18_reset),
    .io_req_tag(ways_18_io_req_tag),
    .io_resp_brSlots_0_offset(ways_18_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_18_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_18_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_18_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_18_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_18_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_18_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_18_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_18_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_18_io_resp_pftAddr),
    .io_resp_carry(ways_18_io_resp_carry),
    .io_resp_always_taken_0(ways_18_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_18_io_resp_always_taken_1),
    .io_resp_hit(ways_18_io_resp_hit),
    .io_update_req_tag(ways_18_io_update_req_tag),
    .io_update_hit(ways_18_io_update_hit),
    .io_write_valid(ways_18_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_18_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_18_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_18_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_18_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_18_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_18_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_18_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_18_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_18_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_18_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_18_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_18_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_18_io_write_entry_always_taken_1),
    .io_write_tag(ways_18_io_write_tag)
  );
  FauFTBWay ways_19 ( // @[FauFTB.scala 91:47]
    .clock(ways_19_clock),
    .reset(ways_19_reset),
    .io_req_tag(ways_19_io_req_tag),
    .io_resp_brSlots_0_offset(ways_19_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_19_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_19_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_19_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_19_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_19_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_19_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_19_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_19_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_19_io_resp_pftAddr),
    .io_resp_carry(ways_19_io_resp_carry),
    .io_resp_always_taken_0(ways_19_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_19_io_resp_always_taken_1),
    .io_resp_hit(ways_19_io_resp_hit),
    .io_update_req_tag(ways_19_io_update_req_tag),
    .io_update_hit(ways_19_io_update_hit),
    .io_write_valid(ways_19_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_19_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_19_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_19_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_19_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_19_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_19_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_19_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_19_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_19_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_19_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_19_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_19_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_19_io_write_entry_always_taken_1),
    .io_write_tag(ways_19_io_write_tag)
  );
  FauFTBWay ways_20 ( // @[FauFTB.scala 91:47]
    .clock(ways_20_clock),
    .reset(ways_20_reset),
    .io_req_tag(ways_20_io_req_tag),
    .io_resp_brSlots_0_offset(ways_20_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_20_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_20_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_20_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_20_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_20_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_20_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_20_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_20_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_20_io_resp_pftAddr),
    .io_resp_carry(ways_20_io_resp_carry),
    .io_resp_always_taken_0(ways_20_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_20_io_resp_always_taken_1),
    .io_resp_hit(ways_20_io_resp_hit),
    .io_update_req_tag(ways_20_io_update_req_tag),
    .io_update_hit(ways_20_io_update_hit),
    .io_write_valid(ways_20_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_20_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_20_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_20_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_20_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_20_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_20_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_20_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_20_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_20_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_20_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_20_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_20_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_20_io_write_entry_always_taken_1),
    .io_write_tag(ways_20_io_write_tag)
  );
  FauFTBWay ways_21 ( // @[FauFTB.scala 91:47]
    .clock(ways_21_clock),
    .reset(ways_21_reset),
    .io_req_tag(ways_21_io_req_tag),
    .io_resp_brSlots_0_offset(ways_21_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_21_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_21_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_21_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_21_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_21_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_21_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_21_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_21_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_21_io_resp_pftAddr),
    .io_resp_carry(ways_21_io_resp_carry),
    .io_resp_always_taken_0(ways_21_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_21_io_resp_always_taken_1),
    .io_resp_hit(ways_21_io_resp_hit),
    .io_update_req_tag(ways_21_io_update_req_tag),
    .io_update_hit(ways_21_io_update_hit),
    .io_write_valid(ways_21_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_21_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_21_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_21_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_21_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_21_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_21_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_21_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_21_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_21_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_21_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_21_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_21_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_21_io_write_entry_always_taken_1),
    .io_write_tag(ways_21_io_write_tag)
  );
  FauFTBWay ways_22 ( // @[FauFTB.scala 91:47]
    .clock(ways_22_clock),
    .reset(ways_22_reset),
    .io_req_tag(ways_22_io_req_tag),
    .io_resp_brSlots_0_offset(ways_22_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_22_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_22_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_22_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_22_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_22_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_22_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_22_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_22_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_22_io_resp_pftAddr),
    .io_resp_carry(ways_22_io_resp_carry),
    .io_resp_always_taken_0(ways_22_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_22_io_resp_always_taken_1),
    .io_resp_hit(ways_22_io_resp_hit),
    .io_update_req_tag(ways_22_io_update_req_tag),
    .io_update_hit(ways_22_io_update_hit),
    .io_write_valid(ways_22_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_22_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_22_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_22_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_22_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_22_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_22_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_22_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_22_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_22_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_22_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_22_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_22_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_22_io_write_entry_always_taken_1),
    .io_write_tag(ways_22_io_write_tag)
  );
  FauFTBWay ways_23 ( // @[FauFTB.scala 91:47]
    .clock(ways_23_clock),
    .reset(ways_23_reset),
    .io_req_tag(ways_23_io_req_tag),
    .io_resp_brSlots_0_offset(ways_23_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_23_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_23_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_23_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_23_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_23_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_23_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_23_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_23_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_23_io_resp_pftAddr),
    .io_resp_carry(ways_23_io_resp_carry),
    .io_resp_always_taken_0(ways_23_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_23_io_resp_always_taken_1),
    .io_resp_hit(ways_23_io_resp_hit),
    .io_update_req_tag(ways_23_io_update_req_tag),
    .io_update_hit(ways_23_io_update_hit),
    .io_write_valid(ways_23_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_23_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_23_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_23_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_23_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_23_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_23_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_23_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_23_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_23_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_23_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_23_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_23_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_23_io_write_entry_always_taken_1),
    .io_write_tag(ways_23_io_write_tag)
  );
  FauFTBWay ways_24 ( // @[FauFTB.scala 91:47]
    .clock(ways_24_clock),
    .reset(ways_24_reset),
    .io_req_tag(ways_24_io_req_tag),
    .io_resp_brSlots_0_offset(ways_24_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_24_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_24_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_24_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_24_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_24_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_24_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_24_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_24_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_24_io_resp_pftAddr),
    .io_resp_carry(ways_24_io_resp_carry),
    .io_resp_always_taken_0(ways_24_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_24_io_resp_always_taken_1),
    .io_resp_hit(ways_24_io_resp_hit),
    .io_update_req_tag(ways_24_io_update_req_tag),
    .io_update_hit(ways_24_io_update_hit),
    .io_write_valid(ways_24_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_24_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_24_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_24_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_24_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_24_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_24_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_24_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_24_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_24_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_24_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_24_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_24_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_24_io_write_entry_always_taken_1),
    .io_write_tag(ways_24_io_write_tag)
  );
  FauFTBWay ways_25 ( // @[FauFTB.scala 91:47]
    .clock(ways_25_clock),
    .reset(ways_25_reset),
    .io_req_tag(ways_25_io_req_tag),
    .io_resp_brSlots_0_offset(ways_25_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_25_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_25_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_25_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_25_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_25_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_25_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_25_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_25_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_25_io_resp_pftAddr),
    .io_resp_carry(ways_25_io_resp_carry),
    .io_resp_always_taken_0(ways_25_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_25_io_resp_always_taken_1),
    .io_resp_hit(ways_25_io_resp_hit),
    .io_update_req_tag(ways_25_io_update_req_tag),
    .io_update_hit(ways_25_io_update_hit),
    .io_write_valid(ways_25_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_25_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_25_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_25_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_25_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_25_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_25_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_25_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_25_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_25_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_25_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_25_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_25_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_25_io_write_entry_always_taken_1),
    .io_write_tag(ways_25_io_write_tag)
  );
  FauFTBWay ways_26 ( // @[FauFTB.scala 91:47]
    .clock(ways_26_clock),
    .reset(ways_26_reset),
    .io_req_tag(ways_26_io_req_tag),
    .io_resp_brSlots_0_offset(ways_26_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_26_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_26_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_26_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_26_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_26_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_26_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_26_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_26_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_26_io_resp_pftAddr),
    .io_resp_carry(ways_26_io_resp_carry),
    .io_resp_always_taken_0(ways_26_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_26_io_resp_always_taken_1),
    .io_resp_hit(ways_26_io_resp_hit),
    .io_update_req_tag(ways_26_io_update_req_tag),
    .io_update_hit(ways_26_io_update_hit),
    .io_write_valid(ways_26_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_26_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_26_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_26_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_26_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_26_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_26_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_26_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_26_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_26_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_26_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_26_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_26_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_26_io_write_entry_always_taken_1),
    .io_write_tag(ways_26_io_write_tag)
  );
  FauFTBWay ways_27 ( // @[FauFTB.scala 91:47]
    .clock(ways_27_clock),
    .reset(ways_27_reset),
    .io_req_tag(ways_27_io_req_tag),
    .io_resp_brSlots_0_offset(ways_27_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_27_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_27_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_27_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_27_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_27_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_27_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_27_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_27_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_27_io_resp_pftAddr),
    .io_resp_carry(ways_27_io_resp_carry),
    .io_resp_always_taken_0(ways_27_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_27_io_resp_always_taken_1),
    .io_resp_hit(ways_27_io_resp_hit),
    .io_update_req_tag(ways_27_io_update_req_tag),
    .io_update_hit(ways_27_io_update_hit),
    .io_write_valid(ways_27_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_27_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_27_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_27_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_27_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_27_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_27_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_27_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_27_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_27_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_27_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_27_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_27_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_27_io_write_entry_always_taken_1),
    .io_write_tag(ways_27_io_write_tag)
  );
  FauFTBWay ways_28 ( // @[FauFTB.scala 91:47]
    .clock(ways_28_clock),
    .reset(ways_28_reset),
    .io_req_tag(ways_28_io_req_tag),
    .io_resp_brSlots_0_offset(ways_28_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_28_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_28_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_28_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_28_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_28_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_28_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_28_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_28_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_28_io_resp_pftAddr),
    .io_resp_carry(ways_28_io_resp_carry),
    .io_resp_always_taken_0(ways_28_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_28_io_resp_always_taken_1),
    .io_resp_hit(ways_28_io_resp_hit),
    .io_update_req_tag(ways_28_io_update_req_tag),
    .io_update_hit(ways_28_io_update_hit),
    .io_write_valid(ways_28_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_28_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_28_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_28_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_28_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_28_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_28_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_28_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_28_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_28_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_28_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_28_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_28_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_28_io_write_entry_always_taken_1),
    .io_write_tag(ways_28_io_write_tag)
  );
  FauFTBWay ways_29 ( // @[FauFTB.scala 91:47]
    .clock(ways_29_clock),
    .reset(ways_29_reset),
    .io_req_tag(ways_29_io_req_tag),
    .io_resp_brSlots_0_offset(ways_29_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_29_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_29_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_29_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_29_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_29_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_29_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_29_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_29_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_29_io_resp_pftAddr),
    .io_resp_carry(ways_29_io_resp_carry),
    .io_resp_always_taken_0(ways_29_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_29_io_resp_always_taken_1),
    .io_resp_hit(ways_29_io_resp_hit),
    .io_update_req_tag(ways_29_io_update_req_tag),
    .io_update_hit(ways_29_io_update_hit),
    .io_write_valid(ways_29_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_29_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_29_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_29_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_29_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_29_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_29_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_29_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_29_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_29_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_29_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_29_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_29_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_29_io_write_entry_always_taken_1),
    .io_write_tag(ways_29_io_write_tag)
  );
  FauFTBWay ways_30 ( // @[FauFTB.scala 91:47]
    .clock(ways_30_clock),
    .reset(ways_30_reset),
    .io_req_tag(ways_30_io_req_tag),
    .io_resp_brSlots_0_offset(ways_30_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_30_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_30_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_30_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_30_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_30_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_30_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_30_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_30_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_30_io_resp_pftAddr),
    .io_resp_carry(ways_30_io_resp_carry),
    .io_resp_always_taken_0(ways_30_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_30_io_resp_always_taken_1),
    .io_resp_hit(ways_30_io_resp_hit),
    .io_update_req_tag(ways_30_io_update_req_tag),
    .io_update_hit(ways_30_io_update_hit),
    .io_write_valid(ways_30_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_30_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_30_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_30_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_30_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_30_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_30_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_30_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_30_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_30_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_30_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_30_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_30_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_30_io_write_entry_always_taken_1),
    .io_write_tag(ways_30_io_write_tag)
  );
  FauFTBWay ways_31 ( // @[FauFTB.scala 91:47]
    .clock(ways_31_clock),
    .reset(ways_31_reset),
    .io_req_tag(ways_31_io_req_tag),
    .io_resp_brSlots_0_offset(ways_31_io_resp_brSlots_0_offset),
    .io_resp_brSlots_0_lower(ways_31_io_resp_brSlots_0_lower),
    .io_resp_brSlots_0_tarStat(ways_31_io_resp_brSlots_0_tarStat),
    .io_resp_brSlots_0_valid(ways_31_io_resp_brSlots_0_valid),
    .io_resp_tailSlot_offset(ways_31_io_resp_tailSlot_offset),
    .io_resp_tailSlot_lower(ways_31_io_resp_tailSlot_lower),
    .io_resp_tailSlot_tarStat(ways_31_io_resp_tailSlot_tarStat),
    .io_resp_tailSlot_sharing(ways_31_io_resp_tailSlot_sharing),
    .io_resp_tailSlot_valid(ways_31_io_resp_tailSlot_valid),
    .io_resp_pftAddr(ways_31_io_resp_pftAddr),
    .io_resp_carry(ways_31_io_resp_carry),
    .io_resp_always_taken_0(ways_31_io_resp_always_taken_0),
    .io_resp_always_taken_1(ways_31_io_resp_always_taken_1),
    .io_resp_hit(ways_31_io_resp_hit),
    .io_update_req_tag(ways_31_io_update_req_tag),
    .io_update_hit(ways_31_io_update_hit),
    .io_write_valid(ways_31_io_write_valid),
    .io_write_entry_brSlots_0_offset(ways_31_io_write_entry_brSlots_0_offset),
    .io_write_entry_brSlots_0_lower(ways_31_io_write_entry_brSlots_0_lower),
    .io_write_entry_brSlots_0_tarStat(ways_31_io_write_entry_brSlots_0_tarStat),
    .io_write_entry_brSlots_0_valid(ways_31_io_write_entry_brSlots_0_valid),
    .io_write_entry_tailSlot_offset(ways_31_io_write_entry_tailSlot_offset),
    .io_write_entry_tailSlot_lower(ways_31_io_write_entry_tailSlot_lower),
    .io_write_entry_tailSlot_tarStat(ways_31_io_write_entry_tailSlot_tarStat),
    .io_write_entry_tailSlot_sharing(ways_31_io_write_entry_tailSlot_sharing),
    .io_write_entry_tailSlot_valid(ways_31_io_write_entry_tailSlot_valid),
    .io_write_entry_pftAddr(ways_31_io_write_entry_pftAddr),
    .io_write_entry_carry(ways_31_io_write_entry_carry),
    .io_write_entry_always_taken_0(ways_31_io_write_entry_always_taken_0),
    .io_write_entry_always_taken_1(ways_31_io_write_entry_always_taken_1),
    .io_write_tag(ways_31_io_write_tag)
  );
  assign io_out_s1_pc_0 = s1_pc_dup_0; // @[BPU.scala 195:16]
  assign io_out_s1_pc_1 = s1_pc_dup_1; // @[BPU.scala 195:16]
  assign io_out_s1_pc_2 = s1_pc_dup_2; // @[BPU.scala 195:16]
  assign io_out_s1_pc_3 = s1_pc_dup_3; // @[BPU.scala 195:16]
  assign io_out_s1_full_pred_0_br_taken_mask_0 = _s1_hit_full_pred_T_1101 | s1_hit_oh[31] &
    s1_possible_full_preds_31_br_taken_mask_0; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_0_br_taken_mask_1 = _s1_hit_full_pred_T_1164 | s1_hit_oh[31] &
    s1_possible_full_preds_31_br_taken_mask_1; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_0_slot_valids_0 = _s1_hit_full_pred_T_975 | s1_hit_oh[31] &
    s1_all_entries_31_brSlots_0_valid; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_0_slot_valids_1 = _s1_hit_full_pred_T_1038 | s1_hit_oh[31] &
    s1_all_entries_31_tailSlot_valid; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_0_targets_0 = _s1_hit_full_pred_T_849 | _s1_hit_full_pred_T_819; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_0_targets_1 = _s1_hit_full_pred_T_786 | _s1_hit_full_pred_T_756; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_0_offsets_0 = _s1_hit_full_pred_T_660 | _s1_hit_full_pred_T_630; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_0_offsets_1 = _s1_hit_full_pred_T_723 | _s1_hit_full_pred_T_693; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_0_fallThroughAddr = _s1_hit_full_pred_T_597 | _s1_hit_full_pred_T_567; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_0_is_br_sharing = _s1_hit_full_pred_T_156 | s1_hit_oh[31] &
    s1_possible_full_preds_31_is_br_sharing; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_0_hit = s1_hit & fauftb_enable; // @[FauFTB.scala 119:44]
  assign io_out_s1_full_pred_1_br_taken_mask_0 = _s1_hit_full_pred_T_1101 | s1_hit_oh[31] &
    s1_possible_full_preds_31_br_taken_mask_0; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_1_br_taken_mask_1 = _s1_hit_full_pred_T_1164 | s1_hit_oh[31] &
    s1_possible_full_preds_31_br_taken_mask_1; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_1_slot_valids_0 = _s1_hit_full_pred_T_975 | s1_hit_oh[31] &
    s1_all_entries_31_brSlots_0_valid; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_1_slot_valids_1 = _s1_hit_full_pred_T_1038 | s1_hit_oh[31] &
    s1_all_entries_31_tailSlot_valid; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_1_targets_0 = _s1_hit_full_pred_T_849 | _s1_hit_full_pred_T_819; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_1_targets_1 = _s1_hit_full_pred_T_786 | _s1_hit_full_pred_T_756; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_1_offsets_0 = _s1_hit_full_pred_T_660 | _s1_hit_full_pred_T_630; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_1_offsets_1 = _s1_hit_full_pred_T_723 | _s1_hit_full_pred_T_693; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_1_fallThroughAddr = _s1_hit_full_pred_T_597 | _s1_hit_full_pred_T_567; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_1_is_br_sharing = _s1_hit_full_pred_T_156 | s1_hit_oh[31] &
    s1_possible_full_preds_31_is_br_sharing; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_1_hit = s1_hit & fauftb_enable; // @[FauFTB.scala 119:44]
  assign io_out_s1_full_pred_2_br_taken_mask_0 = _s1_hit_full_pred_T_1101 | s1_hit_oh[31] &
    s1_possible_full_preds_31_br_taken_mask_0; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_2_br_taken_mask_1 = _s1_hit_full_pred_T_1164 | s1_hit_oh[31] &
    s1_possible_full_preds_31_br_taken_mask_1; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_2_slot_valids_0 = _s1_hit_full_pred_T_975 | s1_hit_oh[31] &
    s1_all_entries_31_brSlots_0_valid; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_2_slot_valids_1 = _s1_hit_full_pred_T_1038 | s1_hit_oh[31] &
    s1_all_entries_31_tailSlot_valid; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_2_targets_0 = _s1_hit_full_pred_T_849 | _s1_hit_full_pred_T_819; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_2_targets_1 = _s1_hit_full_pred_T_786 | _s1_hit_full_pred_T_756; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_2_offsets_0 = _s1_hit_full_pred_T_660 | _s1_hit_full_pred_T_630; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_2_offsets_1 = _s1_hit_full_pred_T_723 | _s1_hit_full_pred_T_693; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_2_fallThroughAddr = _s1_hit_full_pred_T_597 | _s1_hit_full_pred_T_567; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_2_is_br_sharing = _s1_hit_full_pred_T_156 | s1_hit_oh[31] &
    s1_possible_full_preds_31_is_br_sharing; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_2_hit = s1_hit & fauftb_enable; // @[FauFTB.scala 119:44]
  assign io_out_s1_full_pred_3_br_taken_mask_0 = _s1_hit_full_pred_T_1101 | s1_hit_oh[31] &
    s1_possible_full_preds_31_br_taken_mask_0; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_3_br_taken_mask_1 = _s1_hit_full_pred_T_1164 | s1_hit_oh[31] &
    s1_possible_full_preds_31_br_taken_mask_1; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_3_slot_valids_0 = _s1_hit_full_pred_T_975 | s1_hit_oh[31] &
    s1_all_entries_31_brSlots_0_valid; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_3_slot_valids_1 = _s1_hit_full_pred_T_1038 | s1_hit_oh[31] &
    s1_all_entries_31_tailSlot_valid; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_3_targets_0 = _s1_hit_full_pred_T_849 | _s1_hit_full_pred_T_819; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_3_targets_1 = _s1_hit_full_pred_T_786 | _s1_hit_full_pred_T_756; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_3_offsets_0 = _s1_hit_full_pred_T_660 | _s1_hit_full_pred_T_630; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_3_offsets_1 = _s1_hit_full_pred_T_723 | _s1_hit_full_pred_T_693; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_3_fallThroughAddr = _s1_hit_full_pred_T_597 | _s1_hit_full_pred_T_567; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_3_fallThroughErr = _s1_hit_full_pred_T_534 | s1_hit_oh[31] &
    s1_possible_full_preds_31_fallThroughErr; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_3_is_br_sharing = _s1_hit_full_pred_T_156 | s1_hit_oh[31] &
    s1_possible_full_preds_31_is_br_sharing; // @[Mux.scala 27:73]
  assign io_out_s1_full_pred_3_hit = s1_hit & fauftb_enable; // @[FauFTB.scala 119:44]
  assign io_out_last_stage_meta = {{250'd0}, _io_out_last_stage_meta_T}; // @[FauFTB.scala 122:26]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign reset_vector_delay_clock = clock;
  assign reset_vector_delay_io_in = io_reset_vector; // @[Hold.scala 98:17]
  assign ways_0_clock = clock;
  assign ways_0_reset = reset;
  assign ways_0_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_0_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_0_io_write_valid = u_s1_write_way_oh[0] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_0_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_0_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_0_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_0_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_0_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_0_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_0_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_0_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_0_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_0_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_0_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_0_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_0_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_0_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_1_clock = clock;
  assign ways_1_reset = reset;
  assign ways_1_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_1_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_1_io_write_valid = u_s1_write_way_oh[1] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_1_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_1_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_1_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_1_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_1_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_1_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_1_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_1_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_1_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_1_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_1_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_1_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_1_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_1_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_2_clock = clock;
  assign ways_2_reset = reset;
  assign ways_2_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_2_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_2_io_write_valid = u_s1_write_way_oh[2] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_2_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_2_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_2_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_2_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_2_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_2_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_2_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_2_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_2_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_2_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_2_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_2_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_2_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_2_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_3_clock = clock;
  assign ways_3_reset = reset;
  assign ways_3_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_3_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_3_io_write_valid = u_s1_write_way_oh[3] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_3_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_3_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_3_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_3_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_3_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_3_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_3_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_3_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_3_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_3_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_3_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_3_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_3_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_3_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_4_clock = clock;
  assign ways_4_reset = reset;
  assign ways_4_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_4_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_4_io_write_valid = u_s1_write_way_oh[4] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_4_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_4_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_4_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_4_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_4_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_4_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_4_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_4_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_4_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_4_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_4_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_4_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_4_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_4_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_5_clock = clock;
  assign ways_5_reset = reset;
  assign ways_5_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_5_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_5_io_write_valid = u_s1_write_way_oh[5] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_5_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_5_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_5_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_5_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_5_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_5_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_5_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_5_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_5_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_5_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_5_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_5_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_5_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_5_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_6_clock = clock;
  assign ways_6_reset = reset;
  assign ways_6_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_6_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_6_io_write_valid = u_s1_write_way_oh[6] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_6_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_6_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_6_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_6_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_6_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_6_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_6_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_6_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_6_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_6_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_6_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_6_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_6_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_6_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_7_clock = clock;
  assign ways_7_reset = reset;
  assign ways_7_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_7_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_7_io_write_valid = u_s1_write_way_oh[7] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_7_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_7_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_7_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_7_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_7_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_7_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_7_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_7_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_7_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_7_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_7_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_7_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_7_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_7_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_8_clock = clock;
  assign ways_8_reset = reset;
  assign ways_8_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_8_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_8_io_write_valid = u_s1_write_way_oh[8] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_8_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_8_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_8_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_8_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_8_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_8_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_8_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_8_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_8_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_8_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_8_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_8_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_8_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_8_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_9_clock = clock;
  assign ways_9_reset = reset;
  assign ways_9_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_9_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_9_io_write_valid = u_s1_write_way_oh[9] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_9_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_9_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_9_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_9_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_9_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_9_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_9_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_9_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_9_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_9_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_9_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_9_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_9_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_9_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_10_clock = clock;
  assign ways_10_reset = reset;
  assign ways_10_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_10_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_10_io_write_valid = u_s1_write_way_oh[10] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_10_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_10_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_10_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_10_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_10_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_10_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_10_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_10_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_10_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_10_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_10_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_10_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_10_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_10_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_11_clock = clock;
  assign ways_11_reset = reset;
  assign ways_11_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_11_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_11_io_write_valid = u_s1_write_way_oh[11] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_11_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_11_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_11_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_11_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_11_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_11_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_11_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_11_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_11_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_11_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_11_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_11_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_11_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_11_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_12_clock = clock;
  assign ways_12_reset = reset;
  assign ways_12_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_12_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_12_io_write_valid = u_s1_write_way_oh[12] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_12_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_12_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_12_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_12_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_12_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_12_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_12_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_12_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_12_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_12_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_12_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_12_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_12_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_12_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_13_clock = clock;
  assign ways_13_reset = reset;
  assign ways_13_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_13_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_13_io_write_valid = u_s1_write_way_oh[13] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_13_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_13_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_13_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_13_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_13_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_13_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_13_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_13_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_13_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_13_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_13_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_13_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_13_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_13_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_14_clock = clock;
  assign ways_14_reset = reset;
  assign ways_14_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_14_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_14_io_write_valid = u_s1_write_way_oh[14] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_14_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_14_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_14_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_14_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_14_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_14_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_14_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_14_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_14_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_14_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_14_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_14_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_14_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_14_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_15_clock = clock;
  assign ways_15_reset = reset;
  assign ways_15_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_15_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_15_io_write_valid = u_s1_write_way_oh[15] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_15_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_15_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_15_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_15_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_15_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_15_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_15_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_15_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_15_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_15_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_15_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_15_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_15_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_15_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_16_clock = clock;
  assign ways_16_reset = reset;
  assign ways_16_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_16_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_16_io_write_valid = u_s1_write_way_oh[16] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_16_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_16_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_16_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_16_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_16_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_16_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_16_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_16_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_16_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_16_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_16_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_16_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_16_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_16_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_17_clock = clock;
  assign ways_17_reset = reset;
  assign ways_17_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_17_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_17_io_write_valid = u_s1_write_way_oh[17] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_17_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_17_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_17_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_17_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_17_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_17_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_17_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_17_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_17_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_17_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_17_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_17_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_17_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_17_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_18_clock = clock;
  assign ways_18_reset = reset;
  assign ways_18_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_18_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_18_io_write_valid = u_s1_write_way_oh[18] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_18_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_18_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_18_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_18_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_18_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_18_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_18_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_18_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_18_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_18_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_18_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_18_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_18_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_18_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_19_clock = clock;
  assign ways_19_reset = reset;
  assign ways_19_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_19_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_19_io_write_valid = u_s1_write_way_oh[19] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_19_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_19_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_19_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_19_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_19_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_19_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_19_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_19_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_19_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_19_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_19_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_19_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_19_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_19_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_20_clock = clock;
  assign ways_20_reset = reset;
  assign ways_20_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_20_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_20_io_write_valid = u_s1_write_way_oh[20] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_20_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_20_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_20_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_20_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_20_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_20_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_20_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_20_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_20_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_20_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_20_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_20_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_20_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_20_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_21_clock = clock;
  assign ways_21_reset = reset;
  assign ways_21_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_21_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_21_io_write_valid = u_s1_write_way_oh[21] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_21_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_21_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_21_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_21_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_21_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_21_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_21_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_21_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_21_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_21_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_21_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_21_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_21_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_21_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_22_clock = clock;
  assign ways_22_reset = reset;
  assign ways_22_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_22_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_22_io_write_valid = u_s1_write_way_oh[22] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_22_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_22_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_22_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_22_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_22_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_22_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_22_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_22_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_22_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_22_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_22_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_22_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_22_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_22_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_23_clock = clock;
  assign ways_23_reset = reset;
  assign ways_23_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_23_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_23_io_write_valid = u_s1_write_way_oh[23] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_23_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_23_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_23_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_23_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_23_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_23_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_23_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_23_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_23_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_23_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_23_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_23_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_23_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_23_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_24_clock = clock;
  assign ways_24_reset = reset;
  assign ways_24_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_24_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_24_io_write_valid = u_s1_write_way_oh[24] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_24_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_24_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_24_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_24_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_24_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_24_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_24_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_24_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_24_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_24_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_24_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_24_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_24_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_24_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_25_clock = clock;
  assign ways_25_reset = reset;
  assign ways_25_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_25_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_25_io_write_valid = u_s1_write_way_oh[25] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_25_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_25_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_25_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_25_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_25_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_25_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_25_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_25_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_25_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_25_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_25_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_25_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_25_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_25_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_26_clock = clock;
  assign ways_26_reset = reset;
  assign ways_26_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_26_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_26_io_write_valid = u_s1_write_way_oh[26] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_26_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_26_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_26_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_26_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_26_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_26_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_26_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_26_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_26_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_26_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_26_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_26_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_26_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_26_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_27_clock = clock;
  assign ways_27_reset = reset;
  assign ways_27_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_27_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_27_io_write_valid = u_s1_write_way_oh[27] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_27_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_27_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_27_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_27_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_27_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_27_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_27_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_27_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_27_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_27_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_27_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_27_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_27_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_27_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_28_clock = clock;
  assign ways_28_reset = reset;
  assign ways_28_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_28_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_28_io_write_valid = u_s1_write_way_oh[28] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_28_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_28_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_28_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_28_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_28_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_28_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_28_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_28_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_28_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_28_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_28_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_28_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_28_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_28_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_29_clock = clock;
  assign ways_29_reset = reset;
  assign ways_29_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_29_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_29_io_write_valid = u_s1_write_way_oh[29] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_29_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_29_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_29_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_29_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_29_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_29_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_29_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_29_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_29_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_29_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_29_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_29_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_29_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_29_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_30_clock = clock;
  assign ways_30_reset = reset;
  assign ways_30_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_30_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_30_io_write_valid = u_s1_write_way_oh[30] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_30_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_30_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_30_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_30_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_30_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_30_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_30_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_30_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_30_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_30_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_30_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_30_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_30_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_30_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
  assign ways_31_clock = clock;
  assign ways_31_reset = reset;
  assign ways_31_io_req_tag = s1_pc_dup_0[16:1]; // @[FauFTB.scala 40:28]
  assign ways_31_io_update_req_tag = io_update_bits_pc[16:1]; // @[FauFTB.scala 40:28]
  assign ways_31_io_write_valid = u_s1_write_way_oh[31] & u_s1_valid; // @[FauFTB.scala 155:94]
  assign ways_31_io_write_entry_brSlots_0_offset = u_s1_ftb_entry_brSlots_0_offset; // @[FauFTB.scala 159:28]
  assign ways_31_io_write_entry_brSlots_0_lower = u_s1_ftb_entry_brSlots_0_lower; // @[FauFTB.scala 159:28]
  assign ways_31_io_write_entry_brSlots_0_tarStat = u_s1_ftb_entry_brSlots_0_tarStat; // @[FauFTB.scala 159:28]
  assign ways_31_io_write_entry_brSlots_0_valid = u_s1_ftb_entry_brSlots_0_valid; // @[FauFTB.scala 159:28]
  assign ways_31_io_write_entry_tailSlot_offset = u_s1_ftb_entry_tailSlot_offset; // @[FauFTB.scala 159:28]
  assign ways_31_io_write_entry_tailSlot_lower = u_s1_ftb_entry_tailSlot_lower; // @[FauFTB.scala 159:28]
  assign ways_31_io_write_entry_tailSlot_tarStat = u_s1_ftb_entry_tailSlot_tarStat; // @[FauFTB.scala 159:28]
  assign ways_31_io_write_entry_tailSlot_sharing = u_s1_ftb_entry_tailSlot_sharing; // @[FauFTB.scala 159:28]
  assign ways_31_io_write_entry_tailSlot_valid = u_s1_ftb_entry_tailSlot_valid; // @[FauFTB.scala 159:28]
  assign ways_31_io_write_entry_pftAddr = u_s1_ftb_entry_pftAddr; // @[FauFTB.scala 159:28]
  assign ways_31_io_write_entry_carry = u_s1_ftb_entry_carry; // @[FauFTB.scala 159:28]
  assign ways_31_io_write_entry_always_taken_0 = u_s1_ftb_entry_always_taken_0; // @[FauFTB.scala 159:28]
  assign ways_31_io_write_entry_always_taken_1 = u_s1_ftb_entry_always_taken_1; // @[FauFTB.scala 159:28]
  assign ways_31_io_write_tag = u_s1_tag; // @[FauFTB.scala 158:28]
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
    REG <= reset; // @[BPU.scala 191:31]
    REG_1 <= REG & ~reset; // @[BPU.scala 191:39]
    fauftb_enable <= io_ctrl_ubtb_enable; // @[FauFTB.scala 117:30]
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      resp_meta_pred_way_r1 <= resp_meta_pred_way_r; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      resp_meta_hit_r1 <= resp_meta_hit_r; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      resp_meta_hit_r <= s1_hit; // @[Reg.scala 17:22]
    end
    if (io_s1_fire_0) begin // @[Reg.scala 17:18]
      resp_meta_pred_way_r <= s1_hit_way; // @[Reg.scala 17:22]
    end
    replacer_touch_ways_0_valid_REG <= io_s1_fire_0 & s1_hit; // @[FauFTB.scala 128:54]
    if (_replacer_touch_ways_0_valid_T_1) begin // @[Reg.scala 17:18]
      replacer_touch_ways_0_bits_r <= s1_hit_way; // @[Reg.scala 17:22]
    end
    u_s1_valid <= io_update_valid; // @[FauFTB.scala 148:27]
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_tag <= u_s0_tag; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_hit_oh <= u_s0_hit_oh; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_hit <= u_s0_hit; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_ftb_entry_brSlots_0_offset <= io_update_bits_ftb_entry_brSlots_0_offset; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_ftb_entry_brSlots_0_lower <= io_update_bits_ftb_entry_brSlots_0_lower; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_ftb_entry_brSlots_0_tarStat <= io_update_bits_ftb_entry_brSlots_0_tarStat; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_ftb_entry_brSlots_0_valid <= io_update_bits_ftb_entry_brSlots_0_valid; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_ftb_entry_tailSlot_offset <= io_update_bits_ftb_entry_tailSlot_offset; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_ftb_entry_tailSlot_lower <= io_update_bits_ftb_entry_tailSlot_lower; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_ftb_entry_tailSlot_tarStat <= io_update_bits_ftb_entry_tailSlot_tarStat; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_ftb_entry_tailSlot_sharing <= io_update_bits_ftb_entry_tailSlot_sharing; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_ftb_entry_tailSlot_valid <= io_update_bits_ftb_entry_tailSlot_valid; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_ftb_entry_pftAddr <= io_update_bits_ftb_entry_pftAddr; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_ftb_entry_carry <= io_update_bits_ftb_entry_carry; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_ftb_entry_always_taken_0 <= io_update_bits_ftb_entry_always_taken_0; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_ftb_entry_always_taken_1 <= io_update_bits_ftb_entry_always_taken_1; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_br_update_valids_0 <= u_s0_br_update_valids_0; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_br_update_valids_1 <= u_s0_br_update_valids_1; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_br_takens_0 <= io_update_bits_br_taken_mask_0; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      u_s1_br_takens_1 <= io_update_bits_br_taken_mask_1; // @[Reg.scala 17:22]
    end
    io_perf_0_value_REG <= io_update_valid & u_meta_hit; // @[FauFTB.scala 199:42]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= io_update_valid & _T_139; // @[FauFTB.scala 200:42]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_0_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_0) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_0_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_0_0 <= 2'h3;
        end else if (ctrs_0_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_0_0 <= 2'h0;
        end else begin
          ctrs_0_0 <= _ctrs_0_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_0_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_0) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_0_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_0_1 <= 2'h3;
        end else if (ctrs_0_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_0_1 <= 2'h0;
        end else begin
          ctrs_0_1 <= _ctrs_0_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_1_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_1) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_1_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_1_0 <= 2'h3;
        end else if (ctrs_1_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_1_0 <= 2'h0;
        end else begin
          ctrs_1_0 <= _ctrs_1_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_1_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_1) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_1_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_1_1 <= 2'h3;
        end else if (ctrs_1_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_1_1 <= 2'h0;
        end else begin
          ctrs_1_1 <= _ctrs_1_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_2_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_2) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_2_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_2_0 <= 2'h3;
        end else if (ctrs_2_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_2_0 <= 2'h0;
        end else begin
          ctrs_2_0 <= _ctrs_2_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_2_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_2) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_2_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_2_1 <= 2'h3;
        end else if (ctrs_2_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_2_1 <= 2'h0;
        end else begin
          ctrs_2_1 <= _ctrs_2_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_3_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_3) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_3_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_3_0 <= 2'h3;
        end else if (ctrs_3_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_3_0 <= 2'h0;
        end else begin
          ctrs_3_0 <= _ctrs_3_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_3_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_3) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_3_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_3_1 <= 2'h3;
        end else if (ctrs_3_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_3_1 <= 2'h0;
        end else begin
          ctrs_3_1 <= _ctrs_3_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_4_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_4) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_4_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_4_0 <= 2'h3;
        end else if (ctrs_4_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_4_0 <= 2'h0;
        end else begin
          ctrs_4_0 <= _ctrs_4_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_4_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_4) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_4_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_4_1 <= 2'h3;
        end else if (ctrs_4_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_4_1 <= 2'h0;
        end else begin
          ctrs_4_1 <= _ctrs_4_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_5_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_5) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_5_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_5_0 <= 2'h3;
        end else if (ctrs_5_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_5_0 <= 2'h0;
        end else begin
          ctrs_5_0 <= _ctrs_5_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_5_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_5) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_5_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_5_1 <= 2'h3;
        end else if (ctrs_5_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_5_1 <= 2'h0;
        end else begin
          ctrs_5_1 <= _ctrs_5_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_6_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_6) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_6_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_6_0 <= 2'h3;
        end else if (ctrs_6_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_6_0 <= 2'h0;
        end else begin
          ctrs_6_0 <= _ctrs_6_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_6_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_6) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_6_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_6_1 <= 2'h3;
        end else if (ctrs_6_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_6_1 <= 2'h0;
        end else begin
          ctrs_6_1 <= _ctrs_6_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_7_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_7) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_7_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_7_0 <= 2'h3;
        end else if (ctrs_7_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_7_0 <= 2'h0;
        end else begin
          ctrs_7_0 <= _ctrs_7_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_7_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_7) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_7_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_7_1 <= 2'h3;
        end else if (ctrs_7_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_7_1 <= 2'h0;
        end else begin
          ctrs_7_1 <= _ctrs_7_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_8_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_8) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_8_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_8_0 <= 2'h3;
        end else if (ctrs_8_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_8_0 <= 2'h0;
        end else begin
          ctrs_8_0 <= _ctrs_8_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_8_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_8) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_8_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_8_1 <= 2'h3;
        end else if (ctrs_8_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_8_1 <= 2'h0;
        end else begin
          ctrs_8_1 <= _ctrs_8_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_9_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_9) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_9_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_9_0 <= 2'h3;
        end else if (ctrs_9_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_9_0 <= 2'h0;
        end else begin
          ctrs_9_0 <= _ctrs_9_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_9_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_9) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_9_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_9_1 <= 2'h3;
        end else if (ctrs_9_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_9_1 <= 2'h0;
        end else begin
          ctrs_9_1 <= _ctrs_9_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_10_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_10) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_10_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_10_0 <= 2'h3;
        end else if (ctrs_10_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_10_0 <= 2'h0;
        end else begin
          ctrs_10_0 <= _ctrs_10_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_10_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_10) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_10_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_10_1 <= 2'h3;
        end else if (ctrs_10_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_10_1 <= 2'h0;
        end else begin
          ctrs_10_1 <= _ctrs_10_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_11_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_11) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_11_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_11_0 <= 2'h3;
        end else if (ctrs_11_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_11_0 <= 2'h0;
        end else begin
          ctrs_11_0 <= _ctrs_11_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_11_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_11) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_11_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_11_1 <= 2'h3;
        end else if (ctrs_11_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_11_1 <= 2'h0;
        end else begin
          ctrs_11_1 <= _ctrs_11_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_12_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_12) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_12_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_12_0 <= 2'h3;
        end else if (ctrs_12_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_12_0 <= 2'h0;
        end else begin
          ctrs_12_0 <= _ctrs_12_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_12_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_12) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_12_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_12_1 <= 2'h3;
        end else if (ctrs_12_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_12_1 <= 2'h0;
        end else begin
          ctrs_12_1 <= _ctrs_12_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_13_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_13) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_13_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_13_0 <= 2'h3;
        end else if (ctrs_13_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_13_0 <= 2'h0;
        end else begin
          ctrs_13_0 <= _ctrs_13_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_13_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_13) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_13_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_13_1 <= 2'h3;
        end else if (ctrs_13_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_13_1 <= 2'h0;
        end else begin
          ctrs_13_1 <= _ctrs_13_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_14_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_14) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_14_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_14_0 <= 2'h3;
        end else if (ctrs_14_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_14_0 <= 2'h0;
        end else begin
          ctrs_14_0 <= _ctrs_14_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_14_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_14) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_14_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_14_1 <= 2'h3;
        end else if (ctrs_14_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_14_1 <= 2'h0;
        end else begin
          ctrs_14_1 <= _ctrs_14_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_15_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_15) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_15_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_15_0 <= 2'h3;
        end else if (ctrs_15_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_15_0 <= 2'h0;
        end else begin
          ctrs_15_0 <= _ctrs_15_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_15_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_15) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_15_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_15_1 <= 2'h3;
        end else if (ctrs_15_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_15_1 <= 2'h0;
        end else begin
          ctrs_15_1 <= _ctrs_15_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_16_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_16) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_16_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_16_0 <= 2'h3;
        end else if (ctrs_16_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_16_0 <= 2'h0;
        end else begin
          ctrs_16_0 <= _ctrs_16_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_16_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_16) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_16_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_16_1 <= 2'h3;
        end else if (ctrs_16_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_16_1 <= 2'h0;
        end else begin
          ctrs_16_1 <= _ctrs_16_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_17_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_17) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_17_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_17_0 <= 2'h3;
        end else if (ctrs_17_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_17_0 <= 2'h0;
        end else begin
          ctrs_17_0 <= _ctrs_17_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_17_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_17) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_17_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_17_1 <= 2'h3;
        end else if (ctrs_17_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_17_1 <= 2'h0;
        end else begin
          ctrs_17_1 <= _ctrs_17_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_18_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_18) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_18_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_18_0 <= 2'h3;
        end else if (ctrs_18_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_18_0 <= 2'h0;
        end else begin
          ctrs_18_0 <= _ctrs_18_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_18_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_18) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_18_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_18_1 <= 2'h3;
        end else if (ctrs_18_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_18_1 <= 2'h0;
        end else begin
          ctrs_18_1 <= _ctrs_18_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_19_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_19) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_19_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_19_0 <= 2'h3;
        end else if (ctrs_19_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_19_0 <= 2'h0;
        end else begin
          ctrs_19_0 <= _ctrs_19_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_19_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_19) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_19_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_19_1 <= 2'h3;
        end else if (ctrs_19_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_19_1 <= 2'h0;
        end else begin
          ctrs_19_1 <= _ctrs_19_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_20_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_20) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_20_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_20_0 <= 2'h3;
        end else if (ctrs_20_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_20_0 <= 2'h0;
        end else begin
          ctrs_20_0 <= _ctrs_20_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_20_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_20) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_20_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_20_1 <= 2'h3;
        end else if (ctrs_20_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_20_1 <= 2'h0;
        end else begin
          ctrs_20_1 <= _ctrs_20_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_21_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_21) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_21_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_21_0 <= 2'h3;
        end else if (ctrs_21_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_21_0 <= 2'h0;
        end else begin
          ctrs_21_0 <= _ctrs_21_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_21_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_21) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_21_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_21_1 <= 2'h3;
        end else if (ctrs_21_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_21_1 <= 2'h0;
        end else begin
          ctrs_21_1 <= _ctrs_21_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_22_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_22) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_22_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_22_0 <= 2'h3;
        end else if (ctrs_22_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_22_0 <= 2'h0;
        end else begin
          ctrs_22_0 <= _ctrs_22_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_22_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_22) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_22_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_22_1 <= 2'h3;
        end else if (ctrs_22_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_22_1 <= 2'h0;
        end else begin
          ctrs_22_1 <= _ctrs_22_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_23_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_23) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_23_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_23_0 <= 2'h3;
        end else if (ctrs_23_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_23_0 <= 2'h0;
        end else begin
          ctrs_23_0 <= _ctrs_23_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_23_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_23) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_23_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_23_1 <= 2'h3;
        end else if (ctrs_23_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_23_1 <= 2'h0;
        end else begin
          ctrs_23_1 <= _ctrs_23_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_24_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_24) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_24_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_24_0 <= 2'h3;
        end else if (ctrs_24_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_24_0 <= 2'h0;
        end else begin
          ctrs_24_0 <= _ctrs_24_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_24_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_24) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_24_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_24_1 <= 2'h3;
        end else if (ctrs_24_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_24_1 <= 2'h0;
        end else begin
          ctrs_24_1 <= _ctrs_24_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_25_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_25) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_25_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_25_0 <= 2'h3;
        end else if (ctrs_25_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_25_0 <= 2'h0;
        end else begin
          ctrs_25_0 <= _ctrs_25_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_25_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_25) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_25_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_25_1 <= 2'h3;
        end else if (ctrs_25_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_25_1 <= 2'h0;
        end else begin
          ctrs_25_1 <= _ctrs_25_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_26_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_26) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_26_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_26_0 <= 2'h3;
        end else if (ctrs_26_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_26_0 <= 2'h0;
        end else begin
          ctrs_26_0 <= _ctrs_26_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_26_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_26) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_26_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_26_1 <= 2'h3;
        end else if (ctrs_26_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_26_1 <= 2'h0;
        end else begin
          ctrs_26_1 <= _ctrs_26_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_27_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_27) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_27_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_27_0 <= 2'h3;
        end else if (ctrs_27_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_27_0 <= 2'h0;
        end else begin
          ctrs_27_0 <= _ctrs_27_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_27_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_27) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_27_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_27_1 <= 2'h3;
        end else if (ctrs_27_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_27_1 <= 2'h0;
        end else begin
          ctrs_27_1 <= _ctrs_27_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_28_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_28) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_28_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_28_0 <= 2'h3;
        end else if (ctrs_28_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_28_0 <= 2'h0;
        end else begin
          ctrs_28_0 <= _ctrs_28_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_28_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_28) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_28_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_28_1 <= 2'h3;
        end else if (ctrs_28_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_28_1 <= 2'h0;
        end else begin
          ctrs_28_1 <= _ctrs_28_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_29_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_29) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_29_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_29_0 <= 2'h3;
        end else if (ctrs_29_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_29_0 <= 2'h0;
        end else begin
          ctrs_29_0 <= _ctrs_29_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_29_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_29) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_29_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_29_1 <= 2'h3;
        end else if (ctrs_29_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_29_1 <= 2'h0;
        end else begin
          ctrs_29_1 <= _ctrs_29_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_30_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_30) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_30_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_30_0 <= 2'h3;
        end else if (ctrs_30_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_30_0 <= 2'h0;
        end else begin
          ctrs_30_0 <= _ctrs_30_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_30_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_30) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_30_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_30_1 <= 2'h3;
        end else if (ctrs_30_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_30_1 <= 2'h0;
        end else begin
          ctrs_30_1 <= _ctrs_30_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_31_0 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_31) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_0) begin
        if (ctrs_31_0_oldSatTaken & u_s1_br_takens_0) begin
          ctrs_31_0 <= 2'h3;
        end else if (ctrs_31_0_oldSatNotTaken & ~u_s1_br_takens_0) begin
          ctrs_31_0 <= 2'h0;
        end else begin
          ctrs_31_0 <= _ctrs_31_0_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 166:37]
      ctrs_31_1 <= 2'h2; // @[FauFTB.scala 168:42 BPU.scala 97:8 98:10 FauFTB.scala 93:73]
    end else if (u_s1_ways_write_valid_31) begin // @[FauFTB.scala 93:73]
      if (u_s1_br_update_valids_1) begin
        if (ctrs_31_1_oldSatTaken & u_s1_br_takens_1) begin
          ctrs_31_1 <= 2'h3;
        end else if (ctrs_31_1_oldSatNotTaken & ~u_s1_br_takens_1) begin
          ctrs_31_1 <= 2'h0;
        end else begin
          ctrs_31_1 <= _ctrs_31_1_T_7;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 175:40]
      state_reg <= 31'h0; // @[Replacement.scala 22:{56,56}]
    end else if (_T_131) begin // @[Replacement.scala 168:72]
      if (u_s1_valid) begin
        state_reg <= _state_reg_T_214;
      end else if (replacer_touch_ways_0_valid_REG) begin
        state_reg <= _state_reg_T_106;
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
  _RAND_0 = {2{`RANDOM}};
  s1_pc_dup_0 = _RAND_0[38:0];
  _RAND_1 = {2{`RANDOM}};
  s1_pc_dup_1 = _RAND_1[38:0];
  _RAND_2 = {2{`RANDOM}};
  s1_pc_dup_2 = _RAND_2[38:0];
  _RAND_3 = {2{`RANDOM}};
  s1_pc_dup_3 = _RAND_3[38:0];
  _RAND_4 = {1{`RANDOM}};
  REG = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  REG_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  ctrs_0_0 = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  ctrs_0_1 = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  ctrs_1_0 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  ctrs_1_1 = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  ctrs_2_0 = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  ctrs_2_1 = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  ctrs_3_0 = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  ctrs_3_1 = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  ctrs_4_0 = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  ctrs_4_1 = _RAND_15[1:0];
  _RAND_16 = {1{`RANDOM}};
  ctrs_5_0 = _RAND_16[1:0];
  _RAND_17 = {1{`RANDOM}};
  ctrs_5_1 = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  ctrs_6_0 = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  ctrs_6_1 = _RAND_19[1:0];
  _RAND_20 = {1{`RANDOM}};
  ctrs_7_0 = _RAND_20[1:0];
  _RAND_21 = {1{`RANDOM}};
  ctrs_7_1 = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  ctrs_8_0 = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  ctrs_8_1 = _RAND_23[1:0];
  _RAND_24 = {1{`RANDOM}};
  ctrs_9_0 = _RAND_24[1:0];
  _RAND_25 = {1{`RANDOM}};
  ctrs_9_1 = _RAND_25[1:0];
  _RAND_26 = {1{`RANDOM}};
  ctrs_10_0 = _RAND_26[1:0];
  _RAND_27 = {1{`RANDOM}};
  ctrs_10_1 = _RAND_27[1:0];
  _RAND_28 = {1{`RANDOM}};
  ctrs_11_0 = _RAND_28[1:0];
  _RAND_29 = {1{`RANDOM}};
  ctrs_11_1 = _RAND_29[1:0];
  _RAND_30 = {1{`RANDOM}};
  ctrs_12_0 = _RAND_30[1:0];
  _RAND_31 = {1{`RANDOM}};
  ctrs_12_1 = _RAND_31[1:0];
  _RAND_32 = {1{`RANDOM}};
  ctrs_13_0 = _RAND_32[1:0];
  _RAND_33 = {1{`RANDOM}};
  ctrs_13_1 = _RAND_33[1:0];
  _RAND_34 = {1{`RANDOM}};
  ctrs_14_0 = _RAND_34[1:0];
  _RAND_35 = {1{`RANDOM}};
  ctrs_14_1 = _RAND_35[1:0];
  _RAND_36 = {1{`RANDOM}};
  ctrs_15_0 = _RAND_36[1:0];
  _RAND_37 = {1{`RANDOM}};
  ctrs_15_1 = _RAND_37[1:0];
  _RAND_38 = {1{`RANDOM}};
  ctrs_16_0 = _RAND_38[1:0];
  _RAND_39 = {1{`RANDOM}};
  ctrs_16_1 = _RAND_39[1:0];
  _RAND_40 = {1{`RANDOM}};
  ctrs_17_0 = _RAND_40[1:0];
  _RAND_41 = {1{`RANDOM}};
  ctrs_17_1 = _RAND_41[1:0];
  _RAND_42 = {1{`RANDOM}};
  ctrs_18_0 = _RAND_42[1:0];
  _RAND_43 = {1{`RANDOM}};
  ctrs_18_1 = _RAND_43[1:0];
  _RAND_44 = {1{`RANDOM}};
  ctrs_19_0 = _RAND_44[1:0];
  _RAND_45 = {1{`RANDOM}};
  ctrs_19_1 = _RAND_45[1:0];
  _RAND_46 = {1{`RANDOM}};
  ctrs_20_0 = _RAND_46[1:0];
  _RAND_47 = {1{`RANDOM}};
  ctrs_20_1 = _RAND_47[1:0];
  _RAND_48 = {1{`RANDOM}};
  ctrs_21_0 = _RAND_48[1:0];
  _RAND_49 = {1{`RANDOM}};
  ctrs_21_1 = _RAND_49[1:0];
  _RAND_50 = {1{`RANDOM}};
  ctrs_22_0 = _RAND_50[1:0];
  _RAND_51 = {1{`RANDOM}};
  ctrs_22_1 = _RAND_51[1:0];
  _RAND_52 = {1{`RANDOM}};
  ctrs_23_0 = _RAND_52[1:0];
  _RAND_53 = {1{`RANDOM}};
  ctrs_23_1 = _RAND_53[1:0];
  _RAND_54 = {1{`RANDOM}};
  ctrs_24_0 = _RAND_54[1:0];
  _RAND_55 = {1{`RANDOM}};
  ctrs_24_1 = _RAND_55[1:0];
  _RAND_56 = {1{`RANDOM}};
  ctrs_25_0 = _RAND_56[1:0];
  _RAND_57 = {1{`RANDOM}};
  ctrs_25_1 = _RAND_57[1:0];
  _RAND_58 = {1{`RANDOM}};
  ctrs_26_0 = _RAND_58[1:0];
  _RAND_59 = {1{`RANDOM}};
  ctrs_26_1 = _RAND_59[1:0];
  _RAND_60 = {1{`RANDOM}};
  ctrs_27_0 = _RAND_60[1:0];
  _RAND_61 = {1{`RANDOM}};
  ctrs_27_1 = _RAND_61[1:0];
  _RAND_62 = {1{`RANDOM}};
  ctrs_28_0 = _RAND_62[1:0];
  _RAND_63 = {1{`RANDOM}};
  ctrs_28_1 = _RAND_63[1:0];
  _RAND_64 = {1{`RANDOM}};
  ctrs_29_0 = _RAND_64[1:0];
  _RAND_65 = {1{`RANDOM}};
  ctrs_29_1 = _RAND_65[1:0];
  _RAND_66 = {1{`RANDOM}};
  ctrs_30_0 = _RAND_66[1:0];
  _RAND_67 = {1{`RANDOM}};
  ctrs_30_1 = _RAND_67[1:0];
  _RAND_68 = {1{`RANDOM}};
  ctrs_31_0 = _RAND_68[1:0];
  _RAND_69 = {1{`RANDOM}};
  ctrs_31_1 = _RAND_69[1:0];
  _RAND_70 = {1{`RANDOM}};
  state_reg = _RAND_70[30:0];
  _RAND_71 = {1{`RANDOM}};
  fauftb_enable = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  resp_meta_pred_way_r1 = _RAND_72[4:0];
  _RAND_73 = {1{`RANDOM}};
  resp_meta_hit_r1 = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  resp_meta_hit_r = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  resp_meta_pred_way_r = _RAND_75[4:0];
  _RAND_76 = {1{`RANDOM}};
  replacer_touch_ways_0_valid_REG = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  replacer_touch_ways_0_bits_r = _RAND_77[4:0];
  _RAND_78 = {1{`RANDOM}};
  u_s1_valid = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  u_s1_tag = _RAND_79[15:0];
  _RAND_80 = {1{`RANDOM}};
  u_s1_hit_oh = _RAND_80[31:0];
  _RAND_81 = {1{`RANDOM}};
  u_s1_hit = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  u_s1_ftb_entry_brSlots_0_offset = _RAND_82[2:0];
  _RAND_83 = {1{`RANDOM}};
  u_s1_ftb_entry_brSlots_0_lower = _RAND_83[11:0];
  _RAND_84 = {1{`RANDOM}};
  u_s1_ftb_entry_brSlots_0_tarStat = _RAND_84[1:0];
  _RAND_85 = {1{`RANDOM}};
  u_s1_ftb_entry_brSlots_0_valid = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  u_s1_ftb_entry_tailSlot_offset = _RAND_86[2:0];
  _RAND_87 = {1{`RANDOM}};
  u_s1_ftb_entry_tailSlot_lower = _RAND_87[19:0];
  _RAND_88 = {1{`RANDOM}};
  u_s1_ftb_entry_tailSlot_tarStat = _RAND_88[1:0];
  _RAND_89 = {1{`RANDOM}};
  u_s1_ftb_entry_tailSlot_sharing = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  u_s1_ftb_entry_tailSlot_valid = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  u_s1_ftb_entry_pftAddr = _RAND_91[2:0];
  _RAND_92 = {1{`RANDOM}};
  u_s1_ftb_entry_carry = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  u_s1_ftb_entry_always_taken_0 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  u_s1_ftb_entry_always_taken_1 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  u_s1_br_update_valids_0 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  u_s1_br_update_valids_1 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  u_s1_br_takens_0 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  u_s1_br_takens_1 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_102[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    ctrs_0_0 = 2'h2;
  end
  if (reset) begin
    ctrs_0_1 = 2'h2;
  end
  if (reset) begin
    ctrs_1_0 = 2'h2;
  end
  if (reset) begin
    ctrs_1_1 = 2'h2;
  end
  if (reset) begin
    ctrs_2_0 = 2'h2;
  end
  if (reset) begin
    ctrs_2_1 = 2'h2;
  end
  if (reset) begin
    ctrs_3_0 = 2'h2;
  end
  if (reset) begin
    ctrs_3_1 = 2'h2;
  end
  if (reset) begin
    ctrs_4_0 = 2'h2;
  end
  if (reset) begin
    ctrs_4_1 = 2'h2;
  end
  if (reset) begin
    ctrs_5_0 = 2'h2;
  end
  if (reset) begin
    ctrs_5_1 = 2'h2;
  end
  if (reset) begin
    ctrs_6_0 = 2'h2;
  end
  if (reset) begin
    ctrs_6_1 = 2'h2;
  end
  if (reset) begin
    ctrs_7_0 = 2'h2;
  end
  if (reset) begin
    ctrs_7_1 = 2'h2;
  end
  if (reset) begin
    ctrs_8_0 = 2'h2;
  end
  if (reset) begin
    ctrs_8_1 = 2'h2;
  end
  if (reset) begin
    ctrs_9_0 = 2'h2;
  end
  if (reset) begin
    ctrs_9_1 = 2'h2;
  end
  if (reset) begin
    ctrs_10_0 = 2'h2;
  end
  if (reset) begin
    ctrs_10_1 = 2'h2;
  end
  if (reset) begin
    ctrs_11_0 = 2'h2;
  end
  if (reset) begin
    ctrs_11_1 = 2'h2;
  end
  if (reset) begin
    ctrs_12_0 = 2'h2;
  end
  if (reset) begin
    ctrs_12_1 = 2'h2;
  end
  if (reset) begin
    ctrs_13_0 = 2'h2;
  end
  if (reset) begin
    ctrs_13_1 = 2'h2;
  end
  if (reset) begin
    ctrs_14_0 = 2'h2;
  end
  if (reset) begin
    ctrs_14_1 = 2'h2;
  end
  if (reset) begin
    ctrs_15_0 = 2'h2;
  end
  if (reset) begin
    ctrs_15_1 = 2'h2;
  end
  if (reset) begin
    ctrs_16_0 = 2'h2;
  end
  if (reset) begin
    ctrs_16_1 = 2'h2;
  end
  if (reset) begin
    ctrs_17_0 = 2'h2;
  end
  if (reset) begin
    ctrs_17_1 = 2'h2;
  end
  if (reset) begin
    ctrs_18_0 = 2'h2;
  end
  if (reset) begin
    ctrs_18_1 = 2'h2;
  end
  if (reset) begin
    ctrs_19_0 = 2'h2;
  end
  if (reset) begin
    ctrs_19_1 = 2'h2;
  end
  if (reset) begin
    ctrs_20_0 = 2'h2;
  end
  if (reset) begin
    ctrs_20_1 = 2'h2;
  end
  if (reset) begin
    ctrs_21_0 = 2'h2;
  end
  if (reset) begin
    ctrs_21_1 = 2'h2;
  end
  if (reset) begin
    ctrs_22_0 = 2'h2;
  end
  if (reset) begin
    ctrs_22_1 = 2'h2;
  end
  if (reset) begin
    ctrs_23_0 = 2'h2;
  end
  if (reset) begin
    ctrs_23_1 = 2'h2;
  end
  if (reset) begin
    ctrs_24_0 = 2'h2;
  end
  if (reset) begin
    ctrs_24_1 = 2'h2;
  end
  if (reset) begin
    ctrs_25_0 = 2'h2;
  end
  if (reset) begin
    ctrs_25_1 = 2'h2;
  end
  if (reset) begin
    ctrs_26_0 = 2'h2;
  end
  if (reset) begin
    ctrs_26_1 = 2'h2;
  end
  if (reset) begin
    ctrs_27_0 = 2'h2;
  end
  if (reset) begin
    ctrs_27_1 = 2'h2;
  end
  if (reset) begin
    ctrs_28_0 = 2'h2;
  end
  if (reset) begin
    ctrs_28_1 = 2'h2;
  end
  if (reset) begin
    ctrs_29_0 = 2'h2;
  end
  if (reset) begin
    ctrs_29_1 = 2'h2;
  end
  if (reset) begin
    ctrs_30_0 = 2'h2;
  end
  if (reset) begin
    ctrs_30_1 = 2'h2;
  end
  if (reset) begin
    ctrs_31_0 = 2'h2;
  end
  if (reset) begin
    ctrs_31_1 = 2'h2;
  end
  if (reset) begin
    state_reg = 31'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

