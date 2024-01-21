module RAS(
  input         clock,
  input         reset,
  input  [35:0] io_reset_vector,
  input  [38:0] io_in_bits_s0_pc_0,
  input  [38:0] io_in_bits_s0_pc_1,
  input  [38:0] io_in_bits_s0_pc_2,
  input  [38:0] io_in_bits_s0_pc_3,
  input         io_in_bits_resp_in_0_s2_full_pred_0_br_taken_mask_0,
  input         io_in_bits_resp_in_0_s2_full_pred_0_br_taken_mask_1,
  input         io_in_bits_resp_in_0_s2_full_pred_0_slot_valids_0,
  input         io_in_bits_resp_in_0_s2_full_pred_0_slot_valids_1,
  input  [38:0] io_in_bits_resp_in_0_s2_full_pred_0_targets_0,
  input  [38:0] io_in_bits_resp_in_0_s2_full_pred_0_targets_1,
  input  [38:0] io_in_bits_resp_in_0_s2_full_pred_0_jalr_target,
  input  [2:0]  io_in_bits_resp_in_0_s2_full_pred_0_offsets_0,
  input  [2:0]  io_in_bits_resp_in_0_s2_full_pred_0_offsets_1,
  input  [38:0] io_in_bits_resp_in_0_s2_full_pred_0_fallThroughAddr,
  input         io_in_bits_resp_in_0_s2_full_pred_0_is_jalr,
  input         io_in_bits_resp_in_0_s2_full_pred_0_is_ret,
  input         io_in_bits_resp_in_0_s2_full_pred_0_is_br_sharing,
  input         io_in_bits_resp_in_0_s2_full_pred_0_hit,
  input         io_in_bits_resp_in_0_s2_full_pred_1_br_taken_mask_0,
  input         io_in_bits_resp_in_0_s2_full_pred_1_br_taken_mask_1,
  input         io_in_bits_resp_in_0_s2_full_pred_1_slot_valids_0,
  input         io_in_bits_resp_in_0_s2_full_pred_1_slot_valids_1,
  input  [38:0] io_in_bits_resp_in_0_s2_full_pred_1_targets_0,
  input  [38:0] io_in_bits_resp_in_0_s2_full_pred_1_targets_1,
  input  [38:0] io_in_bits_resp_in_0_s2_full_pred_1_jalr_target,
  input  [2:0]  io_in_bits_resp_in_0_s2_full_pred_1_offsets_0,
  input  [2:0]  io_in_bits_resp_in_0_s2_full_pred_1_offsets_1,
  input  [38:0] io_in_bits_resp_in_0_s2_full_pred_1_fallThroughAddr,
  input         io_in_bits_resp_in_0_s2_full_pred_1_is_jalr,
  input         io_in_bits_resp_in_0_s2_full_pred_1_is_ret,
  input         io_in_bits_resp_in_0_s2_full_pred_1_is_br_sharing,
  input         io_in_bits_resp_in_0_s2_full_pred_1_hit,
  input         io_in_bits_resp_in_0_s2_full_pred_2_br_taken_mask_0,
  input         io_in_bits_resp_in_0_s2_full_pred_2_br_taken_mask_1,
  input         io_in_bits_resp_in_0_s2_full_pred_2_slot_valids_0,
  input         io_in_bits_resp_in_0_s2_full_pred_2_slot_valids_1,
  input  [38:0] io_in_bits_resp_in_0_s2_full_pred_2_targets_0,
  input  [38:0] io_in_bits_resp_in_0_s2_full_pred_2_targets_1,
  input  [38:0] io_in_bits_resp_in_0_s2_full_pred_2_jalr_target,
  input  [2:0]  io_in_bits_resp_in_0_s2_full_pred_2_offsets_0,
  input  [2:0]  io_in_bits_resp_in_0_s2_full_pred_2_offsets_1,
  input  [38:0] io_in_bits_resp_in_0_s2_full_pred_2_fallThroughAddr,
  input         io_in_bits_resp_in_0_s2_full_pred_2_is_jalr,
  input         io_in_bits_resp_in_0_s2_full_pred_2_is_call,
  input         io_in_bits_resp_in_0_s2_full_pred_2_is_ret,
  input         io_in_bits_resp_in_0_s2_full_pred_2_last_may_be_rvi_call,
  input         io_in_bits_resp_in_0_s2_full_pred_2_is_br_sharing,
  input         io_in_bits_resp_in_0_s2_full_pred_2_hit,
  input         io_in_bits_resp_in_0_s2_full_pred_3_br_taken_mask_0,
  input         io_in_bits_resp_in_0_s2_full_pred_3_br_taken_mask_1,
  input         io_in_bits_resp_in_0_s2_full_pred_3_slot_valids_0,
  input         io_in_bits_resp_in_0_s2_full_pred_3_slot_valids_1,
  input  [38:0] io_in_bits_resp_in_0_s2_full_pred_3_targets_0,
  input  [38:0] io_in_bits_resp_in_0_s2_full_pred_3_targets_1,
  input  [38:0] io_in_bits_resp_in_0_s2_full_pred_3_jalr_target,
  input  [2:0]  io_in_bits_resp_in_0_s2_full_pred_3_offsets_0,
  input  [2:0]  io_in_bits_resp_in_0_s2_full_pred_3_offsets_1,
  input  [38:0] io_in_bits_resp_in_0_s2_full_pred_3_fallThroughAddr,
  input         io_in_bits_resp_in_0_s2_full_pred_3_fallThroughErr,
  input         io_in_bits_resp_in_0_s2_full_pred_3_is_jalr,
  input         io_in_bits_resp_in_0_s2_full_pred_3_is_ret,
  input         io_in_bits_resp_in_0_s2_full_pred_3_is_br_sharing,
  input         io_in_bits_resp_in_0_s2_full_pred_3_hit,
  input         io_in_bits_resp_in_0_s3_full_pred_0_br_taken_mask_0,
  input         io_in_bits_resp_in_0_s3_full_pred_0_br_taken_mask_1,
  input         io_in_bits_resp_in_0_s3_full_pred_0_slot_valids_0,
  input         io_in_bits_resp_in_0_s3_full_pred_0_slot_valids_1,
  input  [38:0] io_in_bits_resp_in_0_s3_full_pred_0_targets_0,
  input  [38:0] io_in_bits_resp_in_0_s3_full_pred_0_targets_1,
  input  [38:0] io_in_bits_resp_in_0_s3_full_pred_0_jalr_target,
  input  [38:0] io_in_bits_resp_in_0_s3_full_pred_0_fallThroughAddr,
  input         io_in_bits_resp_in_0_s3_full_pred_0_fallThroughErr,
  input         io_in_bits_resp_in_0_s3_full_pred_0_is_jalr,
  input         io_in_bits_resp_in_0_s3_full_pred_0_is_ret,
  input         io_in_bits_resp_in_0_s3_full_pred_0_is_br_sharing,
  input         io_in_bits_resp_in_0_s3_full_pred_0_hit,
  input         io_in_bits_resp_in_0_s3_full_pred_1_br_taken_mask_0,
  input         io_in_bits_resp_in_0_s3_full_pred_1_br_taken_mask_1,
  input         io_in_bits_resp_in_0_s3_full_pred_1_slot_valids_0,
  input         io_in_bits_resp_in_0_s3_full_pred_1_slot_valids_1,
  input  [38:0] io_in_bits_resp_in_0_s3_full_pred_1_targets_0,
  input  [38:0] io_in_bits_resp_in_0_s3_full_pred_1_targets_1,
  input  [38:0] io_in_bits_resp_in_0_s3_full_pred_1_jalr_target,
  input  [38:0] io_in_bits_resp_in_0_s3_full_pred_1_fallThroughAddr,
  input         io_in_bits_resp_in_0_s3_full_pred_1_fallThroughErr,
  input         io_in_bits_resp_in_0_s3_full_pred_1_is_jalr,
  input         io_in_bits_resp_in_0_s3_full_pred_1_is_ret,
  input         io_in_bits_resp_in_0_s3_full_pred_1_is_br_sharing,
  input         io_in_bits_resp_in_0_s3_full_pred_1_hit,
  input         io_in_bits_resp_in_0_s3_full_pred_2_br_taken_mask_0,
  input         io_in_bits_resp_in_0_s3_full_pred_2_br_taken_mask_1,
  input         io_in_bits_resp_in_0_s3_full_pred_2_slot_valids_0,
  input         io_in_bits_resp_in_0_s3_full_pred_2_slot_valids_1,
  input  [38:0] io_in_bits_resp_in_0_s3_full_pred_2_targets_0,
  input  [38:0] io_in_bits_resp_in_0_s3_full_pred_2_targets_1,
  input  [38:0] io_in_bits_resp_in_0_s3_full_pred_2_jalr_target,
  input  [38:0] io_in_bits_resp_in_0_s3_full_pred_2_fallThroughAddr,
  input         io_in_bits_resp_in_0_s3_full_pred_2_fallThroughErr,
  input         io_in_bits_resp_in_0_s3_full_pred_2_is_jalr,
  input         io_in_bits_resp_in_0_s3_full_pred_2_is_call,
  input         io_in_bits_resp_in_0_s3_full_pred_2_is_ret,
  input         io_in_bits_resp_in_0_s3_full_pred_2_is_br_sharing,
  input         io_in_bits_resp_in_0_s3_full_pred_2_hit,
  input         io_in_bits_resp_in_0_s3_full_pred_3_br_taken_mask_0,
  input         io_in_bits_resp_in_0_s3_full_pred_3_br_taken_mask_1,
  input         io_in_bits_resp_in_0_s3_full_pred_3_slot_valids_0,
  input         io_in_bits_resp_in_0_s3_full_pred_3_slot_valids_1,
  input  [38:0] io_in_bits_resp_in_0_s3_full_pred_3_targets_0,
  input  [38:0] io_in_bits_resp_in_0_s3_full_pred_3_targets_1,
  input  [38:0] io_in_bits_resp_in_0_s3_full_pred_3_jalr_target,
  input  [2:0]  io_in_bits_resp_in_0_s3_full_pred_3_offsets_0,
  input  [2:0]  io_in_bits_resp_in_0_s3_full_pred_3_offsets_1,
  input  [38:0] io_in_bits_resp_in_0_s3_full_pred_3_fallThroughAddr,
  input         io_in_bits_resp_in_0_s3_full_pred_3_fallThroughErr,
  input         io_in_bits_resp_in_0_s3_full_pred_3_is_jalr,
  input         io_in_bits_resp_in_0_s3_full_pred_3_is_ret,
  input         io_in_bits_resp_in_0_s3_full_pred_3_is_br_sharing,
  input         io_in_bits_resp_in_0_s3_full_pred_3_hit,
  input         io_in_bits_resp_in_0_last_stage_ftb_entry_valid,
  input  [2:0]  io_in_bits_resp_in_0_last_stage_ftb_entry_brSlots_0_offset,
  input  [11:0] io_in_bits_resp_in_0_last_stage_ftb_entry_brSlots_0_lower,
  input  [1:0]  io_in_bits_resp_in_0_last_stage_ftb_entry_brSlots_0_tarStat,
  input         io_in_bits_resp_in_0_last_stage_ftb_entry_brSlots_0_sharing,
  input         io_in_bits_resp_in_0_last_stage_ftb_entry_brSlots_0_valid,
  input         io_in_bits_resp_in_0_last_stage_ftb_entry_brSlots_0_sc,
  input  [2:0]  io_in_bits_resp_in_0_last_stage_ftb_entry_tailSlot_offset,
  input  [19:0] io_in_bits_resp_in_0_last_stage_ftb_entry_tailSlot_lower,
  input  [1:0]  io_in_bits_resp_in_0_last_stage_ftb_entry_tailSlot_tarStat,
  input         io_in_bits_resp_in_0_last_stage_ftb_entry_tailSlot_sharing,
  input         io_in_bits_resp_in_0_last_stage_ftb_entry_tailSlot_valid,
  input         io_in_bits_resp_in_0_last_stage_ftb_entry_tailSlot_sc,
  input  [2:0]  io_in_bits_resp_in_0_last_stage_ftb_entry_pftAddr,
  input         io_in_bits_resp_in_0_last_stage_ftb_entry_carry,
  input         io_in_bits_resp_in_0_last_stage_ftb_entry_isCall,
  input         io_in_bits_resp_in_0_last_stage_ftb_entry_isRet,
  input         io_in_bits_resp_in_0_last_stage_ftb_entry_isJalr,
  input         io_in_bits_resp_in_0_last_stage_ftb_entry_last_may_be_rvi_call,
  input         io_in_bits_resp_in_0_last_stage_ftb_entry_always_taken_0,
  input         io_in_bits_resp_in_0_last_stage_ftb_entry_always_taken_1,
  output [38:0] io_out_s2_pc_0,
  output [38:0] io_out_s2_pc_1,
  output [38:0] io_out_s2_pc_2,
  output [38:0] io_out_s2_pc_3,
  output        io_out_s2_full_pred_0_br_taken_mask_0,
  output        io_out_s2_full_pred_0_br_taken_mask_1,
  output        io_out_s2_full_pred_0_slot_valids_0,
  output        io_out_s2_full_pred_0_slot_valids_1,
  output [38:0] io_out_s2_full_pred_0_targets_0,
  output [38:0] io_out_s2_full_pred_0_targets_1,
  output [38:0] io_out_s2_full_pred_0_jalr_target,
  output [2:0]  io_out_s2_full_pred_0_offsets_0,
  output [2:0]  io_out_s2_full_pred_0_offsets_1,
  output [38:0] io_out_s2_full_pred_0_fallThroughAddr,
  output        io_out_s2_full_pred_0_is_br_sharing,
  output        io_out_s2_full_pred_0_hit,
  output        io_out_s2_full_pred_1_br_taken_mask_0,
  output        io_out_s2_full_pred_1_br_taken_mask_1,
  output        io_out_s2_full_pred_1_slot_valids_0,
  output        io_out_s2_full_pred_1_slot_valids_1,
  output [38:0] io_out_s2_full_pred_1_targets_0,
  output [38:0] io_out_s2_full_pred_1_targets_1,
  output [38:0] io_out_s2_full_pred_1_jalr_target,
  output [2:0]  io_out_s2_full_pred_1_offsets_0,
  output [2:0]  io_out_s2_full_pred_1_offsets_1,
  output [38:0] io_out_s2_full_pred_1_fallThroughAddr,
  output        io_out_s2_full_pred_1_is_br_sharing,
  output        io_out_s2_full_pred_1_hit,
  output        io_out_s2_full_pred_2_br_taken_mask_0,
  output        io_out_s2_full_pred_2_br_taken_mask_1,
  output        io_out_s2_full_pred_2_slot_valids_0,
  output        io_out_s2_full_pred_2_slot_valids_1,
  output [38:0] io_out_s2_full_pred_2_targets_0,
  output [38:0] io_out_s2_full_pred_2_targets_1,
  output [38:0] io_out_s2_full_pred_2_jalr_target,
  output [2:0]  io_out_s2_full_pred_2_offsets_0,
  output [2:0]  io_out_s2_full_pred_2_offsets_1,
  output [38:0] io_out_s2_full_pred_2_fallThroughAddr,
  output        io_out_s2_full_pred_2_is_br_sharing,
  output        io_out_s2_full_pred_2_hit,
  output        io_out_s2_full_pred_3_br_taken_mask_0,
  output        io_out_s2_full_pred_3_br_taken_mask_1,
  output        io_out_s2_full_pred_3_slot_valids_0,
  output        io_out_s2_full_pred_3_slot_valids_1,
  output [38:0] io_out_s2_full_pred_3_targets_0,
  output [38:0] io_out_s2_full_pred_3_targets_1,
  output [38:0] io_out_s2_full_pred_3_jalr_target,
  output [2:0]  io_out_s2_full_pred_3_offsets_0,
  output [2:0]  io_out_s2_full_pred_3_offsets_1,
  output [38:0] io_out_s2_full_pred_3_fallThroughAddr,
  output        io_out_s2_full_pred_3_fallThroughErr,
  output        io_out_s2_full_pred_3_is_br_sharing,
  output        io_out_s2_full_pred_3_hit,
  output [38:0] io_out_s3_pc_0,
  output [38:0] io_out_s3_pc_1,
  output [38:0] io_out_s3_pc_2,
  output [38:0] io_out_s3_pc_3,
  output        io_out_s3_full_pred_0_br_taken_mask_0,
  output        io_out_s3_full_pred_0_br_taken_mask_1,
  output        io_out_s3_full_pred_0_slot_valids_0,
  output        io_out_s3_full_pred_0_slot_valids_1,
  output [38:0] io_out_s3_full_pred_0_targets_0,
  output [38:0] io_out_s3_full_pred_0_targets_1,
  output [38:0] io_out_s3_full_pred_0_jalr_target,
  output [38:0] io_out_s3_full_pred_0_fallThroughAddr,
  output        io_out_s3_full_pred_0_fallThroughErr,
  output        io_out_s3_full_pred_0_is_br_sharing,
  output        io_out_s3_full_pred_0_hit,
  output        io_out_s3_full_pred_1_br_taken_mask_0,
  output        io_out_s3_full_pred_1_br_taken_mask_1,
  output        io_out_s3_full_pred_1_slot_valids_0,
  output        io_out_s3_full_pred_1_slot_valids_1,
  output [38:0] io_out_s3_full_pred_1_targets_0,
  output [38:0] io_out_s3_full_pred_1_targets_1,
  output [38:0] io_out_s3_full_pred_1_jalr_target,
  output [38:0] io_out_s3_full_pred_1_fallThroughAddr,
  output        io_out_s3_full_pred_1_fallThroughErr,
  output        io_out_s3_full_pred_1_is_br_sharing,
  output        io_out_s3_full_pred_1_hit,
  output        io_out_s3_full_pred_2_br_taken_mask_0,
  output        io_out_s3_full_pred_2_br_taken_mask_1,
  output        io_out_s3_full_pred_2_slot_valids_0,
  output        io_out_s3_full_pred_2_slot_valids_1,
  output [38:0] io_out_s3_full_pred_2_targets_0,
  output [38:0] io_out_s3_full_pred_2_targets_1,
  output [38:0] io_out_s3_full_pred_2_jalr_target,
  output [38:0] io_out_s3_full_pred_2_fallThroughAddr,
  output        io_out_s3_full_pred_2_fallThroughErr,
  output        io_out_s3_full_pred_2_is_br_sharing,
  output        io_out_s3_full_pred_2_hit,
  output        io_out_s3_full_pred_3_br_taken_mask_0,
  output        io_out_s3_full_pred_3_br_taken_mask_1,
  output        io_out_s3_full_pred_3_slot_valids_0,
  output        io_out_s3_full_pred_3_slot_valids_1,
  output [38:0] io_out_s3_full_pred_3_targets_0,
  output [38:0] io_out_s3_full_pred_3_targets_1,
  output [38:0] io_out_s3_full_pred_3_jalr_target,
  output [2:0]  io_out_s3_full_pred_3_offsets_0,
  output [2:0]  io_out_s3_full_pred_3_offsets_1,
  output [38:0] io_out_s3_full_pred_3_fallThroughAddr,
  output        io_out_s3_full_pred_3_fallThroughErr,
  output        io_out_s3_full_pred_3_is_br_sharing,
  output        io_out_s3_full_pred_3_hit,
  output [4:0]  io_out_last_stage_spec_info_rasSp,
  output [38:0] io_out_last_stage_spec_info_rasTop_retAddr,
  output [7:0]  io_out_last_stage_spec_info_rasTop_ctr,
  output        io_out_last_stage_ftb_entry_valid,
  output [2:0]  io_out_last_stage_ftb_entry_brSlots_0_offset,
  output [11:0] io_out_last_stage_ftb_entry_brSlots_0_lower,
  output [1:0]  io_out_last_stage_ftb_entry_brSlots_0_tarStat,
  output        io_out_last_stage_ftb_entry_brSlots_0_sharing,
  output        io_out_last_stage_ftb_entry_brSlots_0_valid,
  output        io_out_last_stage_ftb_entry_brSlots_0_sc,
  output [2:0]  io_out_last_stage_ftb_entry_tailSlot_offset,
  output [19:0] io_out_last_stage_ftb_entry_tailSlot_lower,
  output [1:0]  io_out_last_stage_ftb_entry_tailSlot_tarStat,
  output        io_out_last_stage_ftb_entry_tailSlot_sharing,
  output        io_out_last_stage_ftb_entry_tailSlot_valid,
  output        io_out_last_stage_ftb_entry_tailSlot_sc,
  output [2:0]  io_out_last_stage_ftb_entry_pftAddr,
  output        io_out_last_stage_ftb_entry_carry,
  output        io_out_last_stage_ftb_entry_isCall,
  output        io_out_last_stage_ftb_entry_isRet,
  output        io_out_last_stage_ftb_entry_isJalr,
  output        io_out_last_stage_ftb_entry_last_may_be_rvi_call,
  output        io_out_last_stage_ftb_entry_always_taken_0,
  output        io_out_last_stage_ftb_entry_always_taken_1,
  input         io_ctrl_ras_enable,
  input         io_s0_fire_0,
  input         io_s0_fire_1,
  input         io_s0_fire_2,
  input         io_s0_fire_3,
  input         io_s1_fire_0,
  input         io_s1_fire_1,
  input         io_s1_fire_2,
  input         io_s1_fire_3,
  input         io_s2_fire_0,
  input         io_s2_fire_1,
  input         io_s2_fire_2,
  input         io_s2_fire_3,
  input         io_s3_fire_2,
  input         io_s3_redirect_2,
  input         io_redirect_valid,
  input         io_redirect_bits_level,
  input  [38:0] io_redirect_bits_cfiUpdate_pc,
  input         io_redirect_bits_cfiUpdate_pd_isRVC,
  input         io_redirect_bits_cfiUpdate_pd_isCall,
  input         io_redirect_bits_cfiUpdate_pd_isRet,
  input  [4:0]  io_redirect_bits_cfiUpdate_rasSp,
  input  [38:0] io_redirect_bits_cfiUpdate_rasEntry_retAddr,
  input  [7:0]  io_redirect_bits_cfiUpdate_rasEntry_ctr
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
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [63:0] _RAND_31;
  reg [31:0] _RAND_32;
`endif // RANDOMIZE_REG_INIT
  wire  reset_vector_delay_clock; // @[Hold.scala 97:23]
  wire [35:0] reset_vector_delay_io_in; // @[Hold.scala 97:23]
  wire [35:0] reset_vector_delay_io_out; // @[Hold.scala 97:23]
  wire  spec_clock; // @[RAS.scala 194:20]
  wire  spec_reset; // @[RAS.scala 194:20]
  wire  spec_io_push_valid; // @[RAS.scala 194:20]
  wire  spec_io_pop_valid; // @[RAS.scala 194:20]
  wire [38:0] spec_io_spec_new_addr; // @[RAS.scala 194:20]
  wire [4:0] spec_io_recover_sp; // @[RAS.scala 194:20]
  wire [38:0] spec_io_recover_top_retAddr; // @[RAS.scala 194:20]
  wire [7:0] spec_io_recover_top_ctr; // @[RAS.scala 194:20]
  wire  spec_io_recover_valid; // @[RAS.scala 194:20]
  wire  spec_io_recover_push; // @[RAS.scala 194:20]
  wire  spec_io_recover_pop; // @[RAS.scala 194:20]
  wire [38:0] spec_io_recover_new_addr; // @[RAS.scala 194:20]
  wire [4:0] spec_io_sp; // @[RAS.scala 194:20]
  wire [38:0] spec_io_top_retAddr; // @[RAS.scala 194:20]
  wire [7:0] spec_io_top_ctr; // @[RAS.scala 194:20]
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
  wire [1:0] _s2_spec_new_addr_T = io_in_bits_resp_in_0_s2_full_pred_2_last_may_be_rvi_call ? 2'h2 : 2'h0; // @[RAS.scala 203:63]
  wire [38:0] _GEN_36 = {{37'd0}, _s2_spec_new_addr_T}; // @[RAS.scala 203:58]
  wire [38:0] s2_spec_new_addr = io_in_bits_resp_in_0_s2_full_pred_2_fallThroughAddr + _GEN_36; // @[RAS.scala 203:58]
  wire  _s2_spec_push_T = io_in_bits_resp_in_0_s2_full_pred_2_slot_valids_0 &
    io_in_bits_resp_in_0_s2_full_pred_2_br_taken_mask_0; // @[FrontendBundle.scala 447:69]
  wire  _s2_spec_push_T_2 = ~io_in_bits_resp_in_0_s2_full_pred_2_is_br_sharing; // @[FrontendBundle.scala 449:50]
  wire  _s2_spec_push_T_3 = io_in_bits_resp_in_0_s2_full_pred_2_is_br_sharing &
    io_in_bits_resp_in_0_s2_full_pred_2_br_taken_mask_1 | ~io_in_bits_resp_in_0_s2_full_pred_2_is_br_sharing; // @[FrontendBundle.scala 449:47]
  wire  _s2_spec_push_T_4 = io_in_bits_resp_in_0_s2_full_pred_2_slot_valids_1 & _s2_spec_push_T_3; // @[FrontendBundle.scala 448:25]
  wire  _s2_spec_push_T_5 = _s2_spec_push_T & io_in_bits_resp_in_0_s2_full_pred_2_hit; // @[FrontendBundle.scala 456:38]
  wire  _s2_spec_push_T_6 = _s2_spec_push_T_4 & io_in_bits_resp_in_0_s2_full_pred_2_hit; // @[FrontendBundle.scala 456:38]
  wire  _s2_spec_push_T_15 = ~_s2_spec_push_T_5 & _s2_spec_push_T_6; // @[FrontendBundle.scala 496:47]
  wire  _s2_spec_push_T_17 = _s2_spec_push_T_15 & _s2_spec_push_T_2; // @[FrontendBundle.scala 497:33]
  wire  _s2_spec_push_T_18 = _s2_spec_push_T_17 & io_in_bits_resp_in_0_s2_full_pred_2_is_call; // @[FrontendBundle.scala 498:44]
  wire  _s2_spec_push_T_20 = ~io_s3_redirect_2; // @[RAS.scala 209:73]
  wire  s2_spec_push = io_s2_fire_2 & _s2_spec_push_T_18 & ~io_s3_redirect_2; // @[RAS.scala 209:70]
  wire  _s2_spec_pop_T_18 = _s2_spec_push_T_17 & io_in_bits_resp_in_0_s2_full_pred_2_is_ret; // @[FrontendBundle.scala 499:44]
  wire  s2_spec_pop = io_s2_fire_2 & _s2_spec_pop_T_18 & _s2_spec_push_T_20; // @[RAS.scala 210:70]
  reg  ras_enable_dup_REG; // @[RAS.scala 218:35]
  reg [38:0] s3_top_dup_0_retAddr; // @[Reg.scala 16:16]
  reg [38:0] s3_top_dup_1_retAddr; // @[Reg.scala 16:16]
  reg [38:0] s3_top_dup_2_retAddr; // @[Reg.scala 16:16]
  reg [7:0] s3_top_dup_2_ctr; // @[Reg.scala 16:16]
  reg [38:0] s3_top_dup_3_retAddr; // @[Reg.scala 16:16]
  reg [4:0] s3_sp; // @[Reg.scala 16:16]
  reg [38:0] s3_spec_new_addr; // @[Reg.scala 16:16]
  reg  s3_pushed_in_s2; // @[Reg.scala 16:16]
  reg  s3_popped_in_s2; // @[Reg.scala 16:16]
  wire  _s3_push_T = io_in_bits_resp_in_0_s3_full_pred_2_slot_valids_0 &
    io_in_bits_resp_in_0_s3_full_pred_2_br_taken_mask_0; // @[FrontendBundle.scala 447:69]
  wire  _s3_push_T_2 = ~io_in_bits_resp_in_0_s3_full_pred_2_is_br_sharing; // @[FrontendBundle.scala 449:50]
  wire  _s3_push_T_3 = io_in_bits_resp_in_0_s3_full_pred_2_is_br_sharing &
    io_in_bits_resp_in_0_s3_full_pred_2_br_taken_mask_1 | ~io_in_bits_resp_in_0_s3_full_pred_2_is_br_sharing; // @[FrontendBundle.scala 449:47]
  wire  _s3_push_T_4 = io_in_bits_resp_in_0_s3_full_pred_2_slot_valids_1 & _s3_push_T_3; // @[FrontendBundle.scala 448:25]
  wire  _s3_push_T_5 = _s3_push_T & io_in_bits_resp_in_0_s3_full_pred_2_hit; // @[FrontendBundle.scala 456:38]
  wire  _s3_push_T_6 = _s3_push_T_4 & io_in_bits_resp_in_0_s3_full_pred_2_hit; // @[FrontendBundle.scala 456:38]
  wire  _s3_push_T_15 = ~_s3_push_T_5 & _s3_push_T_6; // @[FrontendBundle.scala 496:47]
  wire  _s3_push_T_17 = _s3_push_T_15 & _s3_push_T_2; // @[FrontendBundle.scala 497:33]
  wire  s3_push = _s3_push_T_17 & io_in_bits_resp_in_0_s3_full_pred_2_is_call; // @[FrontendBundle.scala 498:44]
  wire  s3_pop = _s3_push_T_17 & io_in_bits_resp_in_0_s3_full_pred_2_is_ret; // @[FrontendBundle.scala 499:44]
  wire  s3_recover = io_s3_fire_2 & (s3_pushed_in_s2 != s3_push | s3_popped_in_s2 != s3_pop); // @[RAS.scala 260:34]
  reg  redirect_valid; // @[RAS.scala 265:25]
  reg  redirect_bits_level; // @[RAS.scala 265:25]
  reg [38:0] redirect_bits_cfiUpdate_pc; // @[RAS.scala 265:25]
  reg  redirect_bits_cfiUpdate_pd_isRVC; // @[RAS.scala 265:25]
  reg  redirect_bits_cfiUpdate_pd_isCall; // @[RAS.scala 265:25]
  reg  redirect_bits_cfiUpdate_pd_isRet; // @[RAS.scala 265:25]
  reg [4:0] redirect_bits_cfiUpdate_rasSp; // @[RAS.scala 265:25]
  reg [38:0] redirect_bits_cfiUpdate_rasEntry_retAddr; // @[RAS.scala 265:25]
  reg [7:0] redirect_bits_cfiUpdate_rasEntry_ctr; // @[RAS.scala 265:25]
  wire  do_recover = redirect_valid | s3_recover; // @[RAS.scala 266:35]
  wire  _retMissPred_T_1 = do_recover & ~redirect_bits_level; // @[RAS.scala 269:33]
  wire  retMissPred = do_recover & ~redirect_bits_level & redirect_bits_cfiUpdate_pd_isRet; // @[RAS.scala 269:64]
  wire  callMissPred = _retMissPred_T_1 & redirect_bits_cfiUpdate_pd_isCall; // @[RAS.scala 270:64]
  wire [2:0] _spec_io_recover_new_addr_T = redirect_bits_cfiUpdate_pd_isRVC ? 3'h2 : 3'h4; // @[RAS.scala 279:72]
  wire [38:0] _GEN_37 = {{36'd0}, _spec_io_recover_new_addr_T}; // @[RAS.scala 279:67]
  wire [38:0] _spec_io_recover_new_addr_T_2 = redirect_bits_cfiUpdate_pc + _GEN_37; // @[RAS.scala 279:67]
  DelayN_2 reset_vector_delay ( // @[Hold.scala 97:23]
    .clock(reset_vector_delay_clock),
    .io_in(reset_vector_delay_io_in),
    .io_out(reset_vector_delay_io_out)
  );
  RASStack spec ( // @[RAS.scala 194:20]
    .clock(spec_clock),
    .reset(spec_reset),
    .io_push_valid(spec_io_push_valid),
    .io_pop_valid(spec_io_pop_valid),
    .io_spec_new_addr(spec_io_spec_new_addr),
    .io_recover_sp(spec_io_recover_sp),
    .io_recover_top_retAddr(spec_io_recover_top_retAddr),
    .io_recover_top_ctr(spec_io_recover_top_ctr),
    .io_recover_valid(spec_io_recover_valid),
    .io_recover_push(spec_io_recover_push),
    .io_recover_pop(spec_io_recover_pop),
    .io_recover_new_addr(spec_io_recover_new_addr),
    .io_sp(spec_io_sp),
    .io_top_retAddr(spec_io_top_retAddr),
    .io_top_ctr(spec_io_top_ctr)
  );
  assign io_out_s2_pc_0 = s2_pc_dup_0; // @[BPU.scala 196:16]
  assign io_out_s2_pc_1 = s2_pc_dup_1; // @[BPU.scala 196:16]
  assign io_out_s2_pc_2 = s2_pc_dup_2; // @[BPU.scala 196:16]
  assign io_out_s2_pc_3 = s2_pc_dup_3; // @[BPU.scala 196:16]
  assign io_out_s2_full_pred_0_br_taken_mask_0 = io_in_bits_resp_in_0_s2_full_pred_0_br_taken_mask_0; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_0_br_taken_mask_1 = io_in_bits_resp_in_0_s2_full_pred_0_br_taken_mask_1; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_0_slot_valids_0 = io_in_bits_resp_in_0_s2_full_pred_0_slot_valids_0; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_0_slot_valids_1 = io_in_bits_resp_in_0_s2_full_pred_0_slot_valids_1; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_0_targets_0 = io_in_bits_resp_in_0_s2_full_pred_0_targets_0; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_0_targets_1 = io_in_bits_resp_in_0_s2_full_pred_0_is_jalr ?
    io_out_s2_full_pred_0_jalr_target : io_in_bits_resp_in_0_s2_full_pred_0_targets_1; // @[RAS.scala 228:20]
  assign io_out_s2_full_pred_0_jalr_target = io_in_bits_resp_in_0_s2_full_pred_0_is_ret & ras_enable_dup_REG ?
    spec_io_top_retAddr : io_in_bits_resp_in_0_s2_full_pred_0_jalr_target; // @[BPU.scala 174:10 RAS.scala 221:37 222:24]
  assign io_out_s2_full_pred_0_offsets_0 = io_in_bits_resp_in_0_s2_full_pred_0_offsets_0; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_0_offsets_1 = io_in_bits_resp_in_0_s2_full_pred_0_offsets_1; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_0_fallThroughAddr = io_in_bits_resp_in_0_s2_full_pred_0_fallThroughAddr; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_0_is_br_sharing = io_in_bits_resp_in_0_s2_full_pred_0_is_br_sharing; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_0_hit = io_in_bits_resp_in_0_s2_full_pred_0_hit; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_1_br_taken_mask_0 = io_in_bits_resp_in_0_s2_full_pred_1_br_taken_mask_0; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_1_br_taken_mask_1 = io_in_bits_resp_in_0_s2_full_pred_1_br_taken_mask_1; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_1_slot_valids_0 = io_in_bits_resp_in_0_s2_full_pred_1_slot_valids_0; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_1_slot_valids_1 = io_in_bits_resp_in_0_s2_full_pred_1_slot_valids_1; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_1_targets_0 = io_in_bits_resp_in_0_s2_full_pred_1_targets_0; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_1_targets_1 = io_in_bits_resp_in_0_s2_full_pred_1_is_jalr ?
    io_out_s2_full_pred_1_jalr_target : io_in_bits_resp_in_0_s2_full_pred_1_targets_1; // @[RAS.scala 228:20]
  assign io_out_s2_full_pred_1_jalr_target = io_in_bits_resp_in_0_s2_full_pred_1_is_ret & ras_enable_dup_REG ?
    spec_io_top_retAddr : io_in_bits_resp_in_0_s2_full_pred_1_jalr_target; // @[BPU.scala 174:10 RAS.scala 221:37 222:24]
  assign io_out_s2_full_pred_1_offsets_0 = io_in_bits_resp_in_0_s2_full_pred_1_offsets_0; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_1_offsets_1 = io_in_bits_resp_in_0_s2_full_pred_1_offsets_1; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_1_fallThroughAddr = io_in_bits_resp_in_0_s2_full_pred_1_fallThroughAddr; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_1_is_br_sharing = io_in_bits_resp_in_0_s2_full_pred_1_is_br_sharing; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_1_hit = io_in_bits_resp_in_0_s2_full_pred_1_hit; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_2_br_taken_mask_0 = io_in_bits_resp_in_0_s2_full_pred_2_br_taken_mask_0; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_2_br_taken_mask_1 = io_in_bits_resp_in_0_s2_full_pred_2_br_taken_mask_1; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_2_slot_valids_0 = io_in_bits_resp_in_0_s2_full_pred_2_slot_valids_0; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_2_slot_valids_1 = io_in_bits_resp_in_0_s2_full_pred_2_slot_valids_1; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_2_targets_0 = io_in_bits_resp_in_0_s2_full_pred_2_targets_0; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_2_targets_1 = io_in_bits_resp_in_0_s2_full_pred_2_is_jalr ?
    io_out_s2_full_pred_2_jalr_target : io_in_bits_resp_in_0_s2_full_pred_2_targets_1; // @[RAS.scala 228:20]
  assign io_out_s2_full_pred_2_jalr_target = io_in_bits_resp_in_0_s2_full_pred_2_is_ret & ras_enable_dup_REG ?
    spec_io_top_retAddr : io_in_bits_resp_in_0_s2_full_pred_2_jalr_target; // @[BPU.scala 174:10 RAS.scala 221:37 222:24]
  assign io_out_s2_full_pred_2_offsets_0 = io_in_bits_resp_in_0_s2_full_pred_2_offsets_0; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_2_offsets_1 = io_in_bits_resp_in_0_s2_full_pred_2_offsets_1; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_2_fallThroughAddr = io_in_bits_resp_in_0_s2_full_pred_2_fallThroughAddr; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_2_is_br_sharing = io_in_bits_resp_in_0_s2_full_pred_2_is_br_sharing; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_2_hit = io_in_bits_resp_in_0_s2_full_pred_2_hit; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_3_br_taken_mask_0 = io_in_bits_resp_in_0_s2_full_pred_3_br_taken_mask_0; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_3_br_taken_mask_1 = io_in_bits_resp_in_0_s2_full_pred_3_br_taken_mask_1; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_3_slot_valids_0 = io_in_bits_resp_in_0_s2_full_pred_3_slot_valids_0; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_3_slot_valids_1 = io_in_bits_resp_in_0_s2_full_pred_3_slot_valids_1; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_3_targets_0 = io_in_bits_resp_in_0_s2_full_pred_3_targets_0; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_3_targets_1 = io_in_bits_resp_in_0_s2_full_pred_3_is_jalr ?
    io_out_s2_full_pred_3_jalr_target : io_in_bits_resp_in_0_s2_full_pred_3_targets_1; // @[RAS.scala 228:20]
  assign io_out_s2_full_pred_3_jalr_target = io_in_bits_resp_in_0_s2_full_pred_3_is_ret & ras_enable_dup_REG ?
    spec_io_top_retAddr : io_in_bits_resp_in_0_s2_full_pred_3_jalr_target; // @[BPU.scala 174:10 RAS.scala 221:37 222:24]
  assign io_out_s2_full_pred_3_offsets_0 = io_in_bits_resp_in_0_s2_full_pred_3_offsets_0; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_3_offsets_1 = io_in_bits_resp_in_0_s2_full_pred_3_offsets_1; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_3_fallThroughAddr = io_in_bits_resp_in_0_s2_full_pred_3_fallThroughAddr; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_3_fallThroughErr = io_in_bits_resp_in_0_s2_full_pred_3_fallThroughErr; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_3_is_br_sharing = io_in_bits_resp_in_0_s2_full_pred_3_is_br_sharing; // @[BPU.scala 174:10]
  assign io_out_s2_full_pred_3_hit = io_in_bits_resp_in_0_s2_full_pred_3_hit; // @[BPU.scala 174:10]
  assign io_out_s3_pc_0 = s3_pc_dup_0; // @[BPU.scala 197:16]
  assign io_out_s3_pc_1 = s3_pc_dup_1; // @[BPU.scala 197:16]
  assign io_out_s3_pc_2 = s3_pc_dup_2; // @[BPU.scala 197:16]
  assign io_out_s3_pc_3 = s3_pc_dup_3; // @[BPU.scala 197:16]
  assign io_out_s3_full_pred_0_br_taken_mask_0 = io_in_bits_resp_in_0_s3_full_pred_0_br_taken_mask_0; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_0_br_taken_mask_1 = io_in_bits_resp_in_0_s3_full_pred_0_br_taken_mask_1; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_0_slot_valids_0 = io_in_bits_resp_in_0_s3_full_pred_0_slot_valids_0; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_0_slot_valids_1 = io_in_bits_resp_in_0_s3_full_pred_0_slot_valids_1; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_0_targets_0 = io_in_bits_resp_in_0_s3_full_pred_0_targets_0; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_0_targets_1 = io_in_bits_resp_in_0_s3_full_pred_0_is_jalr ?
    io_out_s3_full_pred_0_jalr_target : io_in_bits_resp_in_0_s3_full_pred_0_targets_1; // @[RAS.scala 252:20]
  assign io_out_s3_full_pred_0_jalr_target = io_in_bits_resp_in_0_s3_full_pred_0_is_ret & ras_enable_dup_REG ?
    s3_top_dup_0_retAddr : io_in_bits_resp_in_0_s3_full_pred_0_jalr_target; // @[BPU.scala 174:10 RAS.scala 245:37 246:24]
  assign io_out_s3_full_pred_0_fallThroughAddr = io_in_bits_resp_in_0_s3_full_pred_0_fallThroughAddr; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_0_fallThroughErr = io_in_bits_resp_in_0_s3_full_pred_0_fallThroughErr; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_0_is_br_sharing = io_in_bits_resp_in_0_s3_full_pred_0_is_br_sharing; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_0_hit = io_in_bits_resp_in_0_s3_full_pred_0_hit; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_1_br_taken_mask_0 = io_in_bits_resp_in_0_s3_full_pred_1_br_taken_mask_0; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_1_br_taken_mask_1 = io_in_bits_resp_in_0_s3_full_pred_1_br_taken_mask_1; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_1_slot_valids_0 = io_in_bits_resp_in_0_s3_full_pred_1_slot_valids_0; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_1_slot_valids_1 = io_in_bits_resp_in_0_s3_full_pred_1_slot_valids_1; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_1_targets_0 = io_in_bits_resp_in_0_s3_full_pred_1_targets_0; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_1_targets_1 = io_in_bits_resp_in_0_s3_full_pred_1_is_jalr ?
    io_out_s3_full_pred_1_jalr_target : io_in_bits_resp_in_0_s3_full_pred_1_targets_1; // @[RAS.scala 252:20]
  assign io_out_s3_full_pred_1_jalr_target = io_in_bits_resp_in_0_s3_full_pred_1_is_ret & ras_enable_dup_REG ?
    s3_top_dup_1_retAddr : io_in_bits_resp_in_0_s3_full_pred_1_jalr_target; // @[BPU.scala 174:10 RAS.scala 245:37 246:24]
  assign io_out_s3_full_pred_1_fallThroughAddr = io_in_bits_resp_in_0_s3_full_pred_1_fallThroughAddr; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_1_fallThroughErr = io_in_bits_resp_in_0_s3_full_pred_1_fallThroughErr; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_1_is_br_sharing = io_in_bits_resp_in_0_s3_full_pred_1_is_br_sharing; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_1_hit = io_in_bits_resp_in_0_s3_full_pred_1_hit; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_2_br_taken_mask_0 = io_in_bits_resp_in_0_s3_full_pred_2_br_taken_mask_0; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_2_br_taken_mask_1 = io_in_bits_resp_in_0_s3_full_pred_2_br_taken_mask_1; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_2_slot_valids_0 = io_in_bits_resp_in_0_s3_full_pred_2_slot_valids_0; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_2_slot_valids_1 = io_in_bits_resp_in_0_s3_full_pred_2_slot_valids_1; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_2_targets_0 = io_in_bits_resp_in_0_s3_full_pred_2_targets_0; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_2_targets_1 = io_in_bits_resp_in_0_s3_full_pred_2_is_jalr ?
    io_out_s3_full_pred_2_jalr_target : io_in_bits_resp_in_0_s3_full_pred_2_targets_1; // @[RAS.scala 252:20]
  assign io_out_s3_full_pred_2_jalr_target = io_in_bits_resp_in_0_s3_full_pred_2_is_ret & ras_enable_dup_REG ?
    s3_top_dup_2_retAddr : io_in_bits_resp_in_0_s3_full_pred_2_jalr_target; // @[BPU.scala 174:10 RAS.scala 245:37 246:24]
  assign io_out_s3_full_pred_2_fallThroughAddr = io_in_bits_resp_in_0_s3_full_pred_2_fallThroughAddr; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_2_fallThroughErr = io_in_bits_resp_in_0_s3_full_pred_2_fallThroughErr; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_2_is_br_sharing = io_in_bits_resp_in_0_s3_full_pred_2_is_br_sharing; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_2_hit = io_in_bits_resp_in_0_s3_full_pred_2_hit; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_3_br_taken_mask_0 = io_in_bits_resp_in_0_s3_full_pred_3_br_taken_mask_0; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_3_br_taken_mask_1 = io_in_bits_resp_in_0_s3_full_pred_3_br_taken_mask_1; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_3_slot_valids_0 = io_in_bits_resp_in_0_s3_full_pred_3_slot_valids_0; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_3_slot_valids_1 = io_in_bits_resp_in_0_s3_full_pred_3_slot_valids_1; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_3_targets_0 = io_in_bits_resp_in_0_s3_full_pred_3_targets_0; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_3_targets_1 = io_in_bits_resp_in_0_s3_full_pred_3_is_jalr ?
    io_out_s3_full_pred_3_jalr_target : io_in_bits_resp_in_0_s3_full_pred_3_targets_1; // @[RAS.scala 252:20]
  assign io_out_s3_full_pred_3_jalr_target = io_in_bits_resp_in_0_s3_full_pred_3_is_ret & ras_enable_dup_REG ?
    s3_top_dup_3_retAddr : io_in_bits_resp_in_0_s3_full_pred_3_jalr_target; // @[BPU.scala 174:10 RAS.scala 245:37 246:24]
  assign io_out_s3_full_pred_3_offsets_0 = io_in_bits_resp_in_0_s3_full_pred_3_offsets_0; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_3_offsets_1 = io_in_bits_resp_in_0_s3_full_pred_3_offsets_1; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_3_fallThroughAddr = io_in_bits_resp_in_0_s3_full_pred_3_fallThroughAddr; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_3_fallThroughErr = io_in_bits_resp_in_0_s3_full_pred_3_fallThroughErr; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_3_is_br_sharing = io_in_bits_resp_in_0_s3_full_pred_3_is_br_sharing; // @[BPU.scala 174:10]
  assign io_out_s3_full_pred_3_hit = io_in_bits_resp_in_0_s3_full_pred_3_hit; // @[BPU.scala 174:10]
  assign io_out_last_stage_spec_info_rasSp = s3_sp; // @[RAS.scala 261:38]
  assign io_out_last_stage_spec_info_rasTop_retAddr = s3_top_dup_2_retAddr; // @[RAS.scala 262:38]
  assign io_out_last_stage_spec_info_rasTop_ctr = s3_top_dup_2_ctr; // @[RAS.scala 262:38]
  assign io_out_last_stage_ftb_entry_valid = io_in_bits_resp_in_0_last_stage_ftb_entry_valid; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_brSlots_0_offset = io_in_bits_resp_in_0_last_stage_ftb_entry_brSlots_0_offset; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_brSlots_0_lower = io_in_bits_resp_in_0_last_stage_ftb_entry_brSlots_0_lower; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_brSlots_0_tarStat = io_in_bits_resp_in_0_last_stage_ftb_entry_brSlots_0_tarStat; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_brSlots_0_sharing = io_in_bits_resp_in_0_last_stage_ftb_entry_brSlots_0_sharing; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_brSlots_0_valid = io_in_bits_resp_in_0_last_stage_ftb_entry_brSlots_0_valid; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_brSlots_0_sc = io_in_bits_resp_in_0_last_stage_ftb_entry_brSlots_0_sc; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_tailSlot_offset = io_in_bits_resp_in_0_last_stage_ftb_entry_tailSlot_offset; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_tailSlot_lower = io_in_bits_resp_in_0_last_stage_ftb_entry_tailSlot_lower; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_tailSlot_tarStat = io_in_bits_resp_in_0_last_stage_ftb_entry_tailSlot_tarStat; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_tailSlot_sharing = io_in_bits_resp_in_0_last_stage_ftb_entry_tailSlot_sharing; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_tailSlot_valid = io_in_bits_resp_in_0_last_stage_ftb_entry_tailSlot_valid; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_tailSlot_sc = io_in_bits_resp_in_0_last_stage_ftb_entry_tailSlot_sc; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_pftAddr = io_in_bits_resp_in_0_last_stage_ftb_entry_pftAddr; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_carry = io_in_bits_resp_in_0_last_stage_ftb_entry_carry; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_isCall = io_in_bits_resp_in_0_last_stage_ftb_entry_isCall; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_isRet = io_in_bits_resp_in_0_last_stage_ftb_entry_isRet; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_isJalr = io_in_bits_resp_in_0_last_stage_ftb_entry_isJalr; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_last_may_be_rvi_call =
    io_in_bits_resp_in_0_last_stage_ftb_entry_last_may_be_rvi_call; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_always_taken_0 = io_in_bits_resp_in_0_last_stage_ftb_entry_always_taken_0; // @[BPU.scala 174:10]
  assign io_out_last_stage_ftb_entry_always_taken_1 = io_in_bits_resp_in_0_last_stage_ftb_entry_always_taken_1; // @[BPU.scala 174:10]
  assign reset_vector_delay_clock = clock;
  assign reset_vector_delay_io_in = io_reset_vector; // @[Hold.scala 98:17]
  assign spec_clock = clock;
  assign spec_reset = reset;
  assign spec_io_push_valid = io_s2_fire_2 & _s2_spec_push_T_18 & ~io_s3_redirect_2; // @[RAS.scala 209:70]
  assign spec_io_pop_valid = io_s2_fire_2 & _s2_spec_pop_T_18 & _s2_spec_push_T_20; // @[RAS.scala 210:70]
  assign spec_io_spec_new_addr = io_in_bits_resp_in_0_s2_full_pred_2_fallThroughAddr + _GEN_36; // @[RAS.scala 203:58]
  assign spec_io_recover_sp = redirect_valid ? redirect_bits_cfiUpdate_rasSp : s3_sp; // @[RAS.scala 277:30]
  assign spec_io_recover_top_retAddr = redirect_valid ? redirect_bits_cfiUpdate_rasEntry_retAddr : s3_top_dup_2_retAddr; // @[RAS.scala 278:30]
  assign spec_io_recover_top_ctr = redirect_valid ? redirect_bits_cfiUpdate_rasEntry_ctr : s3_top_dup_2_ctr; // @[RAS.scala 278:30]
  assign spec_io_recover_valid = redirect_valid | s3_recover; // @[RAS.scala 266:35]
  assign spec_io_recover_push = redirect_valid ? callMissPred : s3_push; // @[RAS.scala 274:31]
  assign spec_io_recover_pop = redirect_valid ? retMissPred : s3_pop; // @[RAS.scala 275:31]
  assign spec_io_recover_new_addr = redirect_valid ? _spec_io_recover_new_addr_T_2 : s3_spec_new_addr; // @[RAS.scala 279:35]
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
    ras_enable_dup_REG <= io_ctrl_ras_enable; // @[RAS.scala 218:35]
    if (io_s2_fire_0) begin // @[Reg.scala 17:18]
      s3_top_dup_0_retAddr <= spec_io_top_retAddr; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_1) begin // @[Reg.scala 17:18]
      s3_top_dup_1_retAddr <= spec_io_top_retAddr; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_top_dup_2_retAddr <= spec_io_top_retAddr; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_top_dup_2_ctr <= spec_io_top_ctr; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_3) begin // @[Reg.scala 17:18]
      s3_top_dup_3_retAddr <= spec_io_top_retAddr; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_sp <= spec_io_sp; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_spec_new_addr <= s2_spec_new_addr; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_pushed_in_s2 <= s2_spec_push; // @[Reg.scala 17:22]
    end
    if (io_s2_fire_2) begin // @[Reg.scala 17:18]
      s3_popped_in_s2 <= s2_spec_pop; // @[Reg.scala 17:22]
    end
    redirect_valid <= io_redirect_valid; // @[RAS.scala 265:25]
    redirect_bits_level <= io_redirect_bits_level; // @[RAS.scala 265:25]
    redirect_bits_cfiUpdate_pc <= io_redirect_bits_cfiUpdate_pc; // @[RAS.scala 265:25]
    redirect_bits_cfiUpdate_pd_isRVC <= io_redirect_bits_cfiUpdate_pd_isRVC; // @[RAS.scala 265:25]
    redirect_bits_cfiUpdate_pd_isCall <= io_redirect_bits_cfiUpdate_pd_isCall; // @[RAS.scala 265:25]
    redirect_bits_cfiUpdate_pd_isRet <= io_redirect_bits_cfiUpdate_pd_isRet; // @[RAS.scala 265:25]
    redirect_bits_cfiUpdate_rasSp <= io_redirect_bits_cfiUpdate_rasSp; // @[RAS.scala 265:25]
    redirect_bits_cfiUpdate_rasEntry_retAddr <= io_redirect_bits_cfiUpdate_rasEntry_retAddr; // @[RAS.scala 265:25]
    redirect_bits_cfiUpdate_rasEntry_ctr <= io_redirect_bits_cfiUpdate_rasEntry_ctr; // @[RAS.scala 265:25]
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
  ras_enable_dup_REG = _RAND_14[0:0];
  _RAND_15 = {2{`RANDOM}};
  s3_top_dup_0_retAddr = _RAND_15[38:0];
  _RAND_16 = {2{`RANDOM}};
  s3_top_dup_1_retAddr = _RAND_16[38:0];
  _RAND_17 = {2{`RANDOM}};
  s3_top_dup_2_retAddr = _RAND_17[38:0];
  _RAND_18 = {1{`RANDOM}};
  s3_top_dup_2_ctr = _RAND_18[7:0];
  _RAND_19 = {2{`RANDOM}};
  s3_top_dup_3_retAddr = _RAND_19[38:0];
  _RAND_20 = {1{`RANDOM}};
  s3_sp = _RAND_20[4:0];
  _RAND_21 = {2{`RANDOM}};
  s3_spec_new_addr = _RAND_21[38:0];
  _RAND_22 = {1{`RANDOM}};
  s3_pushed_in_s2 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  s3_popped_in_s2 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  redirect_valid = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  redirect_bits_level = _RAND_25[0:0];
  _RAND_26 = {2{`RANDOM}};
  redirect_bits_cfiUpdate_pc = _RAND_26[38:0];
  _RAND_27 = {1{`RANDOM}};
  redirect_bits_cfiUpdate_pd_isRVC = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  redirect_bits_cfiUpdate_pd_isCall = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  redirect_bits_cfiUpdate_pd_isRet = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  redirect_bits_cfiUpdate_rasSp = _RAND_30[4:0];
  _RAND_31 = {2{`RANDOM}};
  redirect_bits_cfiUpdate_rasEntry_retAddr = _RAND_31[38:0];
  _RAND_32 = {1{`RANDOM}};
  redirect_bits_cfiUpdate_rasEntry_ctr = _RAND_32[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

