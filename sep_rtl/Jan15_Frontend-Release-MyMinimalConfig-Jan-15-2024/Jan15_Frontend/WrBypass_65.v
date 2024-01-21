module WrBypass_65(
  input        clock,
  input        reset,
  input        io_wen,
  input  [7:0] io_write_idx,
  input  [5:0] io_write_data_0,
  input  [5:0] io_write_data_1,
  input        io_write_way_mask_0,
  input        io_write_way_mask_1,
  output       io_hit,
  output       io_hit_data_0_valid,
  output [5:0] io_hit_data_0_bits,
  output       io_hit_data_1_valid,
  output [5:0] io_hit_data_1_bits
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
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
`endif // RANDOMIZE_REG_INIT
  wire  idx_tag_cam_clock; // @[WrBypass.scala 54:27]
  wire [7:0] idx_tag_cam_io_rreq_0_idx; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_0; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_1; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_2; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_3; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_4; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_5; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_6; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_7; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_8; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_9; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_10; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_11; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_12; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_13; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_14; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_15; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_wvalid; // @[WrBypass.scala 54:27]
  wire [7:0] idx_tag_cam_io_wdata_idx; // @[WrBypass.scala 54:27]
  wire [3:0] idx_tag_cam_io_windex; // @[WrBypass.scala 54:27]
  reg [5:0] data_mem_0 [0:15]; // @[WrBypass.scala 55:21]
  wire  data_mem_0_io_hit_data_0_bits_MPORT_en; // @[WrBypass.scala 55:21]
  wire [3:0] data_mem_0_io_hit_data_0_bits_MPORT_addr; // @[WrBypass.scala 55:21]
  wire [5:0] data_mem_0_io_hit_data_0_bits_MPORT_data; // @[WrBypass.scala 55:21]
  wire  data_mem_0_io_hit_data_1_bits_MPORT_en; // @[WrBypass.scala 55:21]
  wire [3:0] data_mem_0_io_hit_data_1_bits_MPORT_addr; // @[WrBypass.scala 55:21]
  wire [5:0] data_mem_0_io_hit_data_1_bits_MPORT_data; // @[WrBypass.scala 55:21]
  wire [5:0] data_mem_0_MPORT_data; // @[WrBypass.scala 55:21]
  wire [3:0] data_mem_0_MPORT_addr; // @[WrBypass.scala 55:21]
  wire  data_mem_0_MPORT_mask; // @[WrBypass.scala 55:21]
  wire  data_mem_0_MPORT_en; // @[WrBypass.scala 55:21]
  reg [5:0] data_mem_1 [0:15]; // @[WrBypass.scala 55:21]
  wire  data_mem_1_io_hit_data_0_bits_MPORT_en; // @[WrBypass.scala 55:21]
  wire [3:0] data_mem_1_io_hit_data_0_bits_MPORT_addr; // @[WrBypass.scala 55:21]
  wire [5:0] data_mem_1_io_hit_data_0_bits_MPORT_data; // @[WrBypass.scala 55:21]
  wire  data_mem_1_io_hit_data_1_bits_MPORT_en; // @[WrBypass.scala 55:21]
  wire [3:0] data_mem_1_io_hit_data_1_bits_MPORT_addr; // @[WrBypass.scala 55:21]
  wire [5:0] data_mem_1_io_hit_data_1_bits_MPORT_data; // @[WrBypass.scala 55:21]
  wire [5:0] data_mem_1_MPORT_data; // @[WrBypass.scala 55:21]
  wire [3:0] data_mem_1_MPORT_addr; // @[WrBypass.scala 55:21]
  wire  data_mem_1_MPORT_mask; // @[WrBypass.scala 55:21]
  wire  data_mem_1_MPORT_en; // @[WrBypass.scala 55:21]
  reg  valids_0_0; // @[WrBypass.scala 57:23]
  reg  valids_0_1; // @[WrBypass.scala 57:23]
  reg  valids_1_0; // @[WrBypass.scala 57:23]
  reg  valids_1_1; // @[WrBypass.scala 57:23]
  reg  valids_2_0; // @[WrBypass.scala 57:23]
  reg  valids_2_1; // @[WrBypass.scala 57:23]
  reg  valids_3_0; // @[WrBypass.scala 57:23]
  reg  valids_3_1; // @[WrBypass.scala 57:23]
  reg  valids_4_0; // @[WrBypass.scala 57:23]
  reg  valids_4_1; // @[WrBypass.scala 57:23]
  reg  valids_5_0; // @[WrBypass.scala 57:23]
  reg  valids_5_1; // @[WrBypass.scala 57:23]
  reg  valids_6_0; // @[WrBypass.scala 57:23]
  reg  valids_6_1; // @[WrBypass.scala 57:23]
  reg  valids_7_0; // @[WrBypass.scala 57:23]
  reg  valids_7_1; // @[WrBypass.scala 57:23]
  reg  valids_8_0; // @[WrBypass.scala 57:23]
  reg  valids_8_1; // @[WrBypass.scala 57:23]
  reg  valids_9_0; // @[WrBypass.scala 57:23]
  reg  valids_9_1; // @[WrBypass.scala 57:23]
  reg  valids_10_0; // @[WrBypass.scala 57:23]
  reg  valids_10_1; // @[WrBypass.scala 57:23]
  reg  valids_11_0; // @[WrBypass.scala 57:23]
  reg  valids_11_1; // @[WrBypass.scala 57:23]
  reg  valids_12_0; // @[WrBypass.scala 57:23]
  reg  valids_12_1; // @[WrBypass.scala 57:23]
  reg  valids_13_0; // @[WrBypass.scala 57:23]
  reg  valids_13_1; // @[WrBypass.scala 57:23]
  reg  valids_14_0; // @[WrBypass.scala 57:23]
  reg  valids_14_1; // @[WrBypass.scala 57:23]
  reg  valids_15_0; // @[WrBypass.scala 57:23]
  reg  valids_15_1; // @[WrBypass.scala 57:23]
  reg  ever_written_0; // @[WrBypass.scala 58:29]
  reg  ever_written_1; // @[WrBypass.scala 58:29]
  reg  ever_written_2; // @[WrBypass.scala 58:29]
  reg  ever_written_3; // @[WrBypass.scala 58:29]
  reg  ever_written_4; // @[WrBypass.scala 58:29]
  reg  ever_written_5; // @[WrBypass.scala 58:29]
  reg  ever_written_6; // @[WrBypass.scala 58:29]
  reg  ever_written_7; // @[WrBypass.scala 58:29]
  reg  ever_written_8; // @[WrBypass.scala 58:29]
  reg  ever_written_9; // @[WrBypass.scala 58:29]
  reg  ever_written_10; // @[WrBypass.scala 58:29]
  reg  ever_written_11; // @[WrBypass.scala 58:29]
  reg  ever_written_12; // @[WrBypass.scala 58:29]
  reg  ever_written_13; // @[WrBypass.scala 58:29]
  reg  ever_written_14; // @[WrBypass.scala 58:29]
  reg  ever_written_15; // @[WrBypass.scala 58:29]
  wire  hits_oh_0 = idx_tag_cam_io_rresp_0_0 & ever_written_0; // @[WrBypass.scala 62:83]
  wire  hits_oh_1 = idx_tag_cam_io_rresp_0_1 & ever_written_1; // @[WrBypass.scala 62:83]
  wire  hits_oh_2 = idx_tag_cam_io_rresp_0_2 & ever_written_2; // @[WrBypass.scala 62:83]
  wire  hits_oh_3 = idx_tag_cam_io_rresp_0_3 & ever_written_3; // @[WrBypass.scala 62:83]
  wire  hits_oh_4 = idx_tag_cam_io_rresp_0_4 & ever_written_4; // @[WrBypass.scala 62:83]
  wire  hits_oh_5 = idx_tag_cam_io_rresp_0_5 & ever_written_5; // @[WrBypass.scala 62:83]
  wire  hits_oh_6 = idx_tag_cam_io_rresp_0_6 & ever_written_6; // @[WrBypass.scala 62:83]
  wire  hits_oh_7 = idx_tag_cam_io_rresp_0_7 & ever_written_7; // @[WrBypass.scala 62:83]
  wire  hits_oh_8 = idx_tag_cam_io_rresp_0_8 & ever_written_8; // @[WrBypass.scala 62:83]
  wire  hits_oh_9 = idx_tag_cam_io_rresp_0_9 & ever_written_9; // @[WrBypass.scala 62:83]
  wire  hits_oh_10 = idx_tag_cam_io_rresp_0_10 & ever_written_10; // @[WrBypass.scala 62:83]
  wire  hits_oh_11 = idx_tag_cam_io_rresp_0_11 & ever_written_11; // @[WrBypass.scala 62:83]
  wire  hits_oh_12 = idx_tag_cam_io_rresp_0_12 & ever_written_12; // @[WrBypass.scala 62:83]
  wire  hits_oh_13 = idx_tag_cam_io_rresp_0_13 & ever_written_13; // @[WrBypass.scala 62:83]
  wire  hits_oh_14 = idx_tag_cam_io_rresp_0_14 & ever_written_14; // @[WrBypass.scala 62:83]
  wire  hits_oh_15 = idx_tag_cam_io_rresp_0_15 & ever_written_15; // @[WrBypass.scala 62:83]
  wire [7:0] hit_idx_lo = {hits_oh_7,hits_oh_6,hits_oh_5,hits_oh_4,hits_oh_3,hits_oh_2,hits_oh_1,hits_oh_0}; // @[Cat.scala 31:58]
  wire [15:0] _hit_idx_T = {hits_oh_15,hits_oh_14,hits_oh_13,hits_oh_12,hits_oh_11,hits_oh_10,hits_oh_9,hits_oh_8,
    hit_idx_lo}; // @[Cat.scala 31:58]
  wire [7:0] hit_idx_hi_1 = _hit_idx_T[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] hit_idx_lo_1 = _hit_idx_T[7:0]; // @[OneHot.scala 31:18]
  wire  _hit_idx_T_1 = |hit_idx_hi_1; // @[OneHot.scala 32:14]
  wire [7:0] _hit_idx_T_2 = hit_idx_hi_1 | hit_idx_lo_1; // @[OneHot.scala 32:28]
  wire [3:0] hit_idx_hi_2 = _hit_idx_T_2[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] hit_idx_lo_2 = _hit_idx_T_2[3:0]; // @[OneHot.scala 31:18]
  wire  _hit_idx_T_3 = |hit_idx_hi_2; // @[OneHot.scala 32:14]
  wire [3:0] _hit_idx_T_4 = hit_idx_hi_2 | hit_idx_lo_2; // @[OneHot.scala 32:28]
  wire [1:0] hit_idx_hi_3 = _hit_idx_T_4[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] hit_idx_lo_3 = _hit_idx_T_4[1:0]; // @[OneHot.scala 31:18]
  wire  _hit_idx_T_5 = |hit_idx_hi_3; // @[OneHot.scala 32:14]
  wire [1:0] _hit_idx_T_6 = hit_idx_hi_3 | hit_idx_lo_3; // @[OneHot.scala 32:28]
  wire [2:0] _hit_idx_T_9 = {_hit_idx_T_3,_hit_idx_T_5,_hit_idx_T_6[1]}; // @[Cat.scala 31:58]
  wire [3:0] hit_idx = {_hit_idx_T_1,_hit_idx_T_3,_hit_idx_T_5,_hit_idx_T_6[1]}; // @[Cat.scala 31:58]
  wire  hit = hits_oh_0 | hits_oh_1 | hits_oh_2 | hits_oh_3 | hits_oh_4 | hits_oh_5 | hits_oh_6 | hits_oh_7 | hits_oh_8
     | hits_oh_9 | hits_oh_10 | hits_oh_11 | hits_oh_12 | hits_oh_13 | hits_oh_14 | hits_oh_15; // @[WrBypass.scala 64:29]
  wire  _io_hit_data_0_valid_T_15 = hits_oh_15 & valids_15_0; // @[Mux.scala 27:73]
  wire  _io_hit_data_0_valid_T_46 = hits_oh_15 & valids_15_1; // @[Mux.scala 27:73]
  reg [14:0] state_reg; // @[Replacement.scala 168:72]
  wire  enq_idx_left_subtree_older = state_reg[14]; // @[Replacement.scala 243:38]
  wire [6:0] enq_idx_left_subtree_state = state_reg[13:7]; // @[package.scala 154:13]
  wire [6:0] enq_idx_right_subtree_state = state_reg[6:0]; // @[Replacement.scala 245:38]
  wire  enq_idx_left_subtree_older_1 = enq_idx_left_subtree_state[6]; // @[Replacement.scala 243:38]
  wire [2:0] enq_idx_left_subtree_state_1 = enq_idx_left_subtree_state[5:3]; // @[package.scala 154:13]
  wire [2:0] enq_idx_right_subtree_state_1 = enq_idx_left_subtree_state[2:0]; // @[Replacement.scala 245:38]
  wire  enq_idx_left_subtree_older_2 = enq_idx_left_subtree_state_1[2]; // @[Replacement.scala 243:38]
  wire  enq_idx_left_subtree_state_2 = enq_idx_left_subtree_state_1[1]; // @[package.scala 154:13]
  wire  enq_idx_right_subtree_state_2 = enq_idx_left_subtree_state_1[0]; // @[Replacement.scala 245:38]
  wire  _enq_idx_T_2 = enq_idx_left_subtree_older_2 ? enq_idx_left_subtree_state_2 : enq_idx_right_subtree_state_2; // @[Replacement.scala 250:16]
  wire [1:0] _enq_idx_T_3 = {enq_idx_left_subtree_older_2,_enq_idx_T_2}; // @[Cat.scala 31:58]
  wire  enq_idx_left_subtree_older_3 = enq_idx_right_subtree_state_1[2]; // @[Replacement.scala 243:38]
  wire  enq_idx_left_subtree_state_3 = enq_idx_right_subtree_state_1[1]; // @[package.scala 154:13]
  wire  enq_idx_right_subtree_state_3 = enq_idx_right_subtree_state_1[0]; // @[Replacement.scala 245:38]
  wire  _enq_idx_T_6 = enq_idx_left_subtree_older_3 ? enq_idx_left_subtree_state_3 : enq_idx_right_subtree_state_3; // @[Replacement.scala 250:16]
  wire [1:0] _enq_idx_T_7 = {enq_idx_left_subtree_older_3,_enq_idx_T_6}; // @[Cat.scala 31:58]
  wire [1:0] _enq_idx_T_8 = enq_idx_left_subtree_older_1 ? _enq_idx_T_3 : _enq_idx_T_7; // @[Replacement.scala 250:16]
  wire [2:0] _enq_idx_T_9 = {enq_idx_left_subtree_older_1,_enq_idx_T_8}; // @[Cat.scala 31:58]
  wire  enq_idx_left_subtree_older_4 = enq_idx_right_subtree_state[6]; // @[Replacement.scala 243:38]
  wire [2:0] enq_idx_left_subtree_state_4 = enq_idx_right_subtree_state[5:3]; // @[package.scala 154:13]
  wire [2:0] enq_idx_right_subtree_state_4 = enq_idx_right_subtree_state[2:0]; // @[Replacement.scala 245:38]
  wire  enq_idx_left_subtree_older_5 = enq_idx_left_subtree_state_4[2]; // @[Replacement.scala 243:38]
  wire  enq_idx_left_subtree_state_5 = enq_idx_left_subtree_state_4[1]; // @[package.scala 154:13]
  wire  enq_idx_right_subtree_state_5 = enq_idx_left_subtree_state_4[0]; // @[Replacement.scala 245:38]
  wire  _enq_idx_T_12 = enq_idx_left_subtree_older_5 ? enq_idx_left_subtree_state_5 : enq_idx_right_subtree_state_5; // @[Replacement.scala 250:16]
  wire [1:0] _enq_idx_T_13 = {enq_idx_left_subtree_older_5,_enq_idx_T_12}; // @[Cat.scala 31:58]
  wire  enq_idx_left_subtree_older_6 = enq_idx_right_subtree_state_4[2]; // @[Replacement.scala 243:38]
  wire  enq_idx_left_subtree_state_6 = enq_idx_right_subtree_state_4[1]; // @[package.scala 154:13]
  wire  enq_idx_right_subtree_state_6 = enq_idx_right_subtree_state_4[0]; // @[Replacement.scala 245:38]
  wire  _enq_idx_T_16 = enq_idx_left_subtree_older_6 ? enq_idx_left_subtree_state_6 : enq_idx_right_subtree_state_6; // @[Replacement.scala 250:16]
  wire [1:0] _enq_idx_T_17 = {enq_idx_left_subtree_older_6,_enq_idx_T_16}; // @[Cat.scala 31:58]
  wire [1:0] _enq_idx_T_18 = enq_idx_left_subtree_older_4 ? _enq_idx_T_13 : _enq_idx_T_17; // @[Replacement.scala 250:16]
  wire [2:0] _enq_idx_T_19 = {enq_idx_left_subtree_older_4,_enq_idx_T_18}; // @[Cat.scala 31:58]
  wire [2:0] _enq_idx_T_20 = enq_idx_left_subtree_older ? _enq_idx_T_9 : _enq_idx_T_19; // @[Replacement.scala 250:16]
  wire [3:0] enq_idx = {enq_idx_left_subtree_older,_enq_idx_T_20}; // @[Cat.scala 31:58]
  wire [3:0] data_write_idx = hit ? hit_idx : enq_idx; // @[WrBypass.scala 84:29]
  wire  state_reg_set_left_older = ~data_write_idx[3]; // @[Replacement.scala 196:33]
  wire  state_reg_set_left_older_1 = ~data_write_idx[2]; // @[Replacement.scala 196:33]
  wire  state_reg_set_left_older_2 = ~data_write_idx[1]; // @[Replacement.scala 196:33]
  wire  _state_reg_T_4 = ~data_write_idx[0]; // @[Replacement.scala 218:7]
  wire  _state_reg_T_5 = state_reg_set_left_older_2 ? enq_idx_left_subtree_state_2 : _state_reg_T_4; // @[Replacement.scala 203:16]
  wire  _state_reg_T_9 = state_reg_set_left_older_2 ? _state_reg_T_4 : enq_idx_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_10 = {state_reg_set_left_older_2,_state_reg_T_5,_state_reg_T_9}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_11 = state_reg_set_left_older_1 ? enq_idx_left_subtree_state_1 : _state_reg_T_10; // @[Replacement.scala 203:16]
  wire  _state_reg_T_16 = state_reg_set_left_older_2 ? enq_idx_left_subtree_state_3 : _state_reg_T_4; // @[Replacement.scala 203:16]
  wire  _state_reg_T_20 = state_reg_set_left_older_2 ? _state_reg_T_4 : enq_idx_right_subtree_state_3; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_21 = {state_reg_set_left_older_2,_state_reg_T_16,_state_reg_T_20}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_22 = state_reg_set_left_older_1 ? _state_reg_T_21 : enq_idx_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [6:0] _state_reg_T_23 = {state_reg_set_left_older_1,_state_reg_T_11,_state_reg_T_22}; // @[Cat.scala 31:58]
  wire [6:0] _state_reg_T_24 = state_reg_set_left_older ? enq_idx_left_subtree_state : _state_reg_T_23; // @[Replacement.scala 203:16]
  wire  _state_reg_T_30 = state_reg_set_left_older_2 ? enq_idx_left_subtree_state_5 : _state_reg_T_4; // @[Replacement.scala 203:16]
  wire  _state_reg_T_34 = state_reg_set_left_older_2 ? _state_reg_T_4 : enq_idx_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_35 = {state_reg_set_left_older_2,_state_reg_T_30,_state_reg_T_34}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_36 = state_reg_set_left_older_1 ? enq_idx_left_subtree_state_4 : _state_reg_T_35; // @[Replacement.scala 203:16]
  wire  _state_reg_T_41 = state_reg_set_left_older_2 ? enq_idx_left_subtree_state_6 : _state_reg_T_4; // @[Replacement.scala 203:16]
  wire  _state_reg_T_45 = state_reg_set_left_older_2 ? _state_reg_T_4 : enq_idx_right_subtree_state_6; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_46 = {state_reg_set_left_older_2,_state_reg_T_41,_state_reg_T_45}; // @[Cat.scala 31:58]
  wire [2:0] _state_reg_T_47 = state_reg_set_left_older_1 ? _state_reg_T_46 : enq_idx_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [6:0] _state_reg_T_48 = {state_reg_set_left_older_1,_state_reg_T_36,_state_reg_T_47}; // @[Cat.scala 31:58]
  wire [6:0] _state_reg_T_49 = state_reg_set_left_older ? _state_reg_T_48 : enq_idx_right_subtree_state; // @[Replacement.scala 206:16]
  wire [14:0] _state_reg_T_50 = {state_reg_set_left_older,_state_reg_T_24,_state_reg_T_49}; // @[Cat.scala 31:58]
  wire  _GEN_12 = 4'h0 == hit_idx | valids_0_0; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_13 = 4'h1 == hit_idx | valids_1_0; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_14 = 4'h2 == hit_idx | valids_2_0; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_15 = 4'h3 == hit_idx | valids_3_0; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_16 = 4'h4 == hit_idx | valids_4_0; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_17 = 4'h5 == hit_idx | valids_5_0; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_18 = 4'h6 == hit_idx | valids_6_0; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_19 = 4'h7 == hit_idx | valids_7_0; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_20 = 4'h8 == hit_idx | valids_8_0; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_21 = 4'h9 == hit_idx | valids_9_0; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_22 = 4'ha == hit_idx | valids_10_0; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_23 = 4'hb == hit_idx | valids_11_0; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_24 = 4'hc == hit_idx | valids_12_0; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_25 = 4'hd == hit_idx | valids_13_0; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_26 = 4'he == hit_idx | valids_14_0; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_27 = 4'hf == hit_idx | valids_15_0; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_348 = 4'h0 == enq_idx; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_44 = 4'h0 == enq_idx | ever_written_0; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_349 = 4'h1 == enq_idx; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_45 = 4'h1 == enq_idx | ever_written_1; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_350 = 4'h2 == enq_idx; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_46 = 4'h2 == enq_idx | ever_written_2; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_351 = 4'h3 == enq_idx; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_47 = 4'h3 == enq_idx | ever_written_3; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_352 = 4'h4 == enq_idx; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_48 = 4'h4 == enq_idx | ever_written_4; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_353 = 4'h5 == enq_idx; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_49 = 4'h5 == enq_idx | ever_written_5; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_354 = 4'h6 == enq_idx; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_50 = 4'h6 == enq_idx | ever_written_6; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_355 = 4'h7 == enq_idx; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_51 = 4'h7 == enq_idx | ever_written_7; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_356 = 4'h8 == enq_idx; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_52 = 4'h8 == enq_idx | ever_written_8; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_357 = 4'h9 == enq_idx; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_53 = 4'h9 == enq_idx | ever_written_9; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_358 = 4'ha == enq_idx; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_54 = 4'ha == enq_idx | ever_written_10; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_359 = 4'hb == enq_idx; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_55 = 4'hb == enq_idx | ever_written_11; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_360 = 4'hc == enq_idx; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_56 = 4'hc == enq_idx | ever_written_12; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_361 = 4'hd == enq_idx; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_57 = 4'hd == enq_idx | ever_written_13; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_362 = 4'he == enq_idx; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_58 = 4'he == enq_idx | ever_written_14; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_363 = 4'hf == enq_idx; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_59 = 4'hf == enq_idx | ever_written_15; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_60 = 4'h0 == enq_idx ? 1'h0 : valids_0_0; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_61 = 4'h1 == enq_idx ? 1'h0 : valids_1_0; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_62 = 4'h2 == enq_idx ? 1'h0 : valids_2_0; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_63 = 4'h3 == enq_idx ? 1'h0 : valids_3_0; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_64 = 4'h4 == enq_idx ? 1'h0 : valids_4_0; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_65 = 4'h5 == enq_idx ? 1'h0 : valids_5_0; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_66 = 4'h6 == enq_idx ? 1'h0 : valids_6_0; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_67 = 4'h7 == enq_idx ? 1'h0 : valids_7_0; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_68 = 4'h8 == enq_idx ? 1'h0 : valids_8_0; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_69 = 4'h9 == enq_idx ? 1'h0 : valids_9_0; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_70 = 4'ha == enq_idx ? 1'h0 : valids_10_0; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_71 = 4'hb == enq_idx ? 1'h0 : valids_11_0; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_72 = 4'hc == enq_idx ? 1'h0 : valids_12_0; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_73 = 4'hd == enq_idx ? 1'h0 : valids_13_0; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_74 = 4'he == enq_idx ? 1'h0 : valids_14_0; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_75 = 4'hf == enq_idx ? 1'h0 : valids_15_0; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_76 = _GEN_348 | _GEN_60; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_77 = _GEN_349 | _GEN_61; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_78 = _GEN_350 | _GEN_62; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_79 = _GEN_351 | _GEN_63; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_80 = _GEN_352 | _GEN_64; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_81 = _GEN_353 | _GEN_65; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_82 = _GEN_354 | _GEN_66; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_83 = _GEN_355 | _GEN_67; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_84 = _GEN_356 | _GEN_68; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_85 = _GEN_357 | _GEN_69; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_86 = _GEN_358 | _GEN_70; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_87 = _GEN_359 | _GEN_71; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_88 = _GEN_360 | _GEN_72; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_89 = _GEN_361 | _GEN_73; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_90 = _GEN_362 | _GEN_74; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_91 = _GEN_363 | _GEN_75; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_124 = hit ? ever_written_0 : _GEN_44; // @[WrBypass.scala 94:18 58:29]
  wire  _GEN_125 = hit ? ever_written_1 : _GEN_45; // @[WrBypass.scala 94:18 58:29]
  wire  _GEN_126 = hit ? ever_written_2 : _GEN_46; // @[WrBypass.scala 94:18 58:29]
  wire  _GEN_127 = hit ? ever_written_3 : _GEN_47; // @[WrBypass.scala 94:18 58:29]
  wire  _GEN_128 = hit ? ever_written_4 : _GEN_48; // @[WrBypass.scala 94:18 58:29]
  wire  _GEN_129 = hit ? ever_written_5 : _GEN_49; // @[WrBypass.scala 94:18 58:29]
  wire  _GEN_130 = hit ? ever_written_6 : _GEN_50; // @[WrBypass.scala 94:18 58:29]
  wire  _GEN_131 = hit ? ever_written_7 : _GEN_51; // @[WrBypass.scala 94:18 58:29]
  wire  _GEN_132 = hit ? ever_written_8 : _GEN_52; // @[WrBypass.scala 94:18 58:29]
  wire  _GEN_133 = hit ? ever_written_9 : _GEN_53; // @[WrBypass.scala 94:18 58:29]
  wire  _GEN_134 = hit ? ever_written_10 : _GEN_54; // @[WrBypass.scala 94:18 58:29]
  wire  _GEN_135 = hit ? ever_written_11 : _GEN_55; // @[WrBypass.scala 94:18 58:29]
  wire  _GEN_136 = hit ? ever_written_12 : _GEN_56; // @[WrBypass.scala 94:18 58:29]
  wire  _GEN_137 = hit ? ever_written_13 : _GEN_57; // @[WrBypass.scala 94:18 58:29]
  wire  _GEN_138 = hit ? ever_written_14 : _GEN_58; // @[WrBypass.scala 94:18 58:29]
  wire  _GEN_139 = hit ? ever_written_15 : _GEN_59; // @[WrBypass.scala 94:18 58:29]
  wire  _GEN_156 = io_wen ? _GEN_124 : ever_written_0; // @[WrBypass.scala 93:19 58:29]
  wire  _GEN_157 = io_wen ? _GEN_125 : ever_written_1; // @[WrBypass.scala 93:19 58:29]
  wire  _GEN_158 = io_wen ? _GEN_126 : ever_written_2; // @[WrBypass.scala 93:19 58:29]
  wire  _GEN_159 = io_wen ? _GEN_127 : ever_written_3; // @[WrBypass.scala 93:19 58:29]
  wire  _GEN_160 = io_wen ? _GEN_128 : ever_written_4; // @[WrBypass.scala 93:19 58:29]
  wire  _GEN_161 = io_wen ? _GEN_129 : ever_written_5; // @[WrBypass.scala 93:19 58:29]
  wire  _GEN_162 = io_wen ? _GEN_130 : ever_written_6; // @[WrBypass.scala 93:19 58:29]
  wire  _GEN_163 = io_wen ? _GEN_131 : ever_written_7; // @[WrBypass.scala 93:19 58:29]
  wire  _GEN_164 = io_wen ? _GEN_132 : ever_written_8; // @[WrBypass.scala 93:19 58:29]
  wire  _GEN_165 = io_wen ? _GEN_133 : ever_written_9; // @[WrBypass.scala 93:19 58:29]
  wire  _GEN_166 = io_wen ? _GEN_134 : ever_written_10; // @[WrBypass.scala 93:19 58:29]
  wire  _GEN_167 = io_wen ? _GEN_135 : ever_written_11; // @[WrBypass.scala 93:19 58:29]
  wire  _GEN_168 = io_wen ? _GEN_136 : ever_written_12; // @[WrBypass.scala 93:19 58:29]
  wire  _GEN_169 = io_wen ? _GEN_137 : ever_written_13; // @[WrBypass.scala 93:19 58:29]
  wire  _GEN_170 = io_wen ? _GEN_138 : ever_written_14; // @[WrBypass.scala 93:19 58:29]
  wire  _GEN_171 = io_wen ? _GEN_139 : ever_written_15; // @[WrBypass.scala 93:19 58:29]
  wire  _GEN_172 = 4'h0 == hit_idx | valids_0_1; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_173 = 4'h1 == hit_idx | valids_1_1; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_174 = 4'h2 == hit_idx | valids_2_1; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_175 = 4'h3 == hit_idx | valids_3_1; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_176 = 4'h4 == hit_idx | valids_4_1; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_177 = 4'h5 == hit_idx | valids_5_1; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_178 = 4'h6 == hit_idx | valids_6_1; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_179 = 4'h7 == hit_idx | valids_7_1; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_180 = 4'h8 == hit_idx | valids_8_1; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_181 = 4'h9 == hit_idx | valids_9_1; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_182 = 4'ha == hit_idx | valids_10_1; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_183 = 4'hb == hit_idx | valids_11_1; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_184 = 4'hc == hit_idx | valids_12_1; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_185 = 4'hd == hit_idx | valids_13_1; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_186 = 4'he == hit_idx | valids_14_1; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_187 = 4'hf == hit_idx | valids_15_1; // @[WrBypass.scala 57:23 96:{30,30}]
  wire  _GEN_204 = _GEN_348 | _GEN_156; // @[WrBypass.scala 99:{31,31}]
  wire  _GEN_205 = _GEN_349 | _GEN_157; // @[WrBypass.scala 99:{31,31}]
  wire  _GEN_206 = _GEN_350 | _GEN_158; // @[WrBypass.scala 99:{31,31}]
  wire  _GEN_207 = _GEN_351 | _GEN_159; // @[WrBypass.scala 99:{31,31}]
  wire  _GEN_208 = _GEN_352 | _GEN_160; // @[WrBypass.scala 99:{31,31}]
  wire  _GEN_209 = _GEN_353 | _GEN_161; // @[WrBypass.scala 99:{31,31}]
  wire  _GEN_210 = _GEN_354 | _GEN_162; // @[WrBypass.scala 99:{31,31}]
  wire  _GEN_211 = _GEN_355 | _GEN_163; // @[WrBypass.scala 99:{31,31}]
  wire  _GEN_212 = _GEN_356 | _GEN_164; // @[WrBypass.scala 99:{31,31}]
  wire  _GEN_213 = _GEN_357 | _GEN_165; // @[WrBypass.scala 99:{31,31}]
  wire  _GEN_214 = _GEN_358 | _GEN_166; // @[WrBypass.scala 99:{31,31}]
  wire  _GEN_215 = _GEN_359 | _GEN_167; // @[WrBypass.scala 99:{31,31}]
  wire  _GEN_216 = _GEN_360 | _GEN_168; // @[WrBypass.scala 99:{31,31}]
  wire  _GEN_217 = _GEN_361 | _GEN_169; // @[WrBypass.scala 99:{31,31}]
  wire  _GEN_218 = _GEN_362 | _GEN_170; // @[WrBypass.scala 99:{31,31}]
  wire  _GEN_219 = _GEN_363 | _GEN_171; // @[WrBypass.scala 99:{31,31}]
  wire  _GEN_220 = 4'h0 == enq_idx ? 1'h0 : valids_0_1; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_221 = 4'h1 == enq_idx ? 1'h0 : valids_1_1; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_222 = 4'h2 == enq_idx ? 1'h0 : valids_2_1; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_223 = 4'h3 == enq_idx ? 1'h0 : valids_3_1; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_224 = 4'h4 == enq_idx ? 1'h0 : valids_4_1; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_225 = 4'h5 == enq_idx ? 1'h0 : valids_5_1; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_226 = 4'h6 == enq_idx ? 1'h0 : valids_6_1; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_227 = 4'h7 == enq_idx ? 1'h0 : valids_7_1; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_228 = 4'h8 == enq_idx ? 1'h0 : valids_8_1; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_229 = 4'h9 == enq_idx ? 1'h0 : valids_9_1; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_230 = 4'ha == enq_idx ? 1'h0 : valids_10_1; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_231 = 4'hb == enq_idx ? 1'h0 : valids_11_1; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_232 = 4'hc == enq_idx ? 1'h0 : valids_12_1; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_233 = 4'hd == enq_idx ? 1'h0 : valids_13_1; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_234 = 4'he == enq_idx ? 1'h0 : valids_14_1; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_235 = 4'hf == enq_idx ? 1'h0 : valids_15_1; // @[WrBypass.scala 100:{28,28} 57:23]
  wire  _GEN_236 = _GEN_348 | _GEN_220; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_237 = _GEN_349 | _GEN_221; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_238 = _GEN_350 | _GEN_222; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_239 = _GEN_351 | _GEN_223; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_240 = _GEN_352 | _GEN_224; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_241 = _GEN_353 | _GEN_225; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_242 = _GEN_354 | _GEN_226; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_243 = _GEN_355 | _GEN_227; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_244 = _GEN_356 | _GEN_228; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_245 = _GEN_357 | _GEN_229; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_246 = _GEN_358 | _GEN_230; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_247 = _GEN_359 | _GEN_231; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_248 = _GEN_360 | _GEN_232; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_249 = _GEN_361 | _GEN_233; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_250 = _GEN_362 | _GEN_234; // @[WrBypass.scala 102:{30,30}]
  wire  _GEN_251 = _GEN_363 | _GEN_235; // @[WrBypass.scala 102:{30,30}]
  CAMTemplate_65 idx_tag_cam ( // @[WrBypass.scala 54:27]
    .clock(idx_tag_cam_clock),
    .io_rreq_0_idx(idx_tag_cam_io_rreq_0_idx),
    .io_rresp_0_0(idx_tag_cam_io_rresp_0_0),
    .io_rresp_0_1(idx_tag_cam_io_rresp_0_1),
    .io_rresp_0_2(idx_tag_cam_io_rresp_0_2),
    .io_rresp_0_3(idx_tag_cam_io_rresp_0_3),
    .io_rresp_0_4(idx_tag_cam_io_rresp_0_4),
    .io_rresp_0_5(idx_tag_cam_io_rresp_0_5),
    .io_rresp_0_6(idx_tag_cam_io_rresp_0_6),
    .io_rresp_0_7(idx_tag_cam_io_rresp_0_7),
    .io_rresp_0_8(idx_tag_cam_io_rresp_0_8),
    .io_rresp_0_9(idx_tag_cam_io_rresp_0_9),
    .io_rresp_0_10(idx_tag_cam_io_rresp_0_10),
    .io_rresp_0_11(idx_tag_cam_io_rresp_0_11),
    .io_rresp_0_12(idx_tag_cam_io_rresp_0_12),
    .io_rresp_0_13(idx_tag_cam_io_rresp_0_13),
    .io_rresp_0_14(idx_tag_cam_io_rresp_0_14),
    .io_rresp_0_15(idx_tag_cam_io_rresp_0_15),
    .io_wvalid(idx_tag_cam_io_wvalid),
    .io_wdata_idx(idx_tag_cam_io_wdata_idx),
    .io_windex(idx_tag_cam_io_windex)
  );
  assign data_mem_0_io_hit_data_0_bits_MPORT_en = 1'h1;
  assign data_mem_0_io_hit_data_0_bits_MPORT_addr = {_hit_idx_T_1,_hit_idx_T_9};
  assign data_mem_0_io_hit_data_0_bits_MPORT_data = data_mem_0[data_mem_0_io_hit_data_0_bits_MPORT_addr]; // @[WrBypass.scala 55:21]
  assign data_mem_0_io_hit_data_1_bits_MPORT_en = 1'h1;
  assign data_mem_0_io_hit_data_1_bits_MPORT_addr = {_hit_idx_T_1,_hit_idx_T_9};
  assign data_mem_0_io_hit_data_1_bits_MPORT_data = data_mem_0[data_mem_0_io_hit_data_1_bits_MPORT_addr]; // @[WrBypass.scala 55:21]
  assign data_mem_0_MPORT_data = io_write_data_0;
  assign data_mem_0_MPORT_addr = hit ? hit_idx : enq_idx;
  assign data_mem_0_MPORT_mask = io_write_way_mask_0;
  assign data_mem_0_MPORT_en = io_wen;
  assign data_mem_1_io_hit_data_0_bits_MPORT_en = 1'h1;
  assign data_mem_1_io_hit_data_0_bits_MPORT_addr = {_hit_idx_T_1,_hit_idx_T_9};
  assign data_mem_1_io_hit_data_0_bits_MPORT_data = data_mem_1[data_mem_1_io_hit_data_0_bits_MPORT_addr]; // @[WrBypass.scala 55:21]
  assign data_mem_1_io_hit_data_1_bits_MPORT_en = 1'h1;
  assign data_mem_1_io_hit_data_1_bits_MPORT_addr = {_hit_idx_T_1,_hit_idx_T_9};
  assign data_mem_1_io_hit_data_1_bits_MPORT_data = data_mem_1[data_mem_1_io_hit_data_1_bits_MPORT_addr]; // @[WrBypass.scala 55:21]
  assign data_mem_1_MPORT_data = io_write_data_1;
  assign data_mem_1_MPORT_addr = hit ? hit_idx : enq_idx;
  assign data_mem_1_MPORT_mask = io_write_way_mask_1;
  assign data_mem_1_MPORT_en = io_wen;
  assign io_hit = hits_oh_0 | hits_oh_1 | hits_oh_2 | hits_oh_3 | hits_oh_4 | hits_oh_5 | hits_oh_6 | hits_oh_7 |
    hits_oh_8 | hits_oh_9 | hits_oh_10 | hits_oh_11 | hits_oh_12 | hits_oh_13 | hits_oh_14 | hits_oh_15; // @[WrBypass.scala 64:29]
  assign io_hit_data_0_valid = hits_oh_0 & valids_0_0 | hits_oh_1 & valids_1_0 | hits_oh_2 & valids_2_0 | hits_oh_3 &
    valids_3_0 | hits_oh_4 & valids_4_0 | hits_oh_5 & valids_5_0 | hits_oh_6 & valids_6_0 | hits_oh_7 & valids_7_0 |
    hits_oh_8 & valids_8_0 | hits_oh_9 & valids_9_0 | hits_oh_10 & valids_10_0 | hits_oh_11 & valids_11_0 | hits_oh_12
     & valids_12_0 | hits_oh_13 & valids_13_0 | hits_oh_14 & valids_14_0 | _io_hit_data_0_valid_T_15; // @[Mux.scala 27:73]
  assign io_hit_data_0_bits = data_mem_0_io_hit_data_0_bits_MPORT_data; // @[WrBypass.scala 69:26]
  assign io_hit_data_1_valid = hits_oh_0 & valids_0_1 | hits_oh_1 & valids_1_1 | hits_oh_2 & valids_2_1 | hits_oh_3 &
    valids_3_1 | hits_oh_4 & valids_4_1 | hits_oh_5 & valids_5_1 | hits_oh_6 & valids_6_1 | hits_oh_7 & valids_7_1 |
    hits_oh_8 & valids_8_1 | hits_oh_9 & valids_9_1 | hits_oh_10 & valids_10_1 | hits_oh_11 & valids_11_1 | hits_oh_12
     & valids_12_1 | hits_oh_13 & valids_13_1 | hits_oh_14 & valids_14_1 | _io_hit_data_0_valid_T_46; // @[Mux.scala 27:73]
  assign io_hit_data_1_bits = data_mem_1_io_hit_data_1_bits_MPORT_data; // @[WrBypass.scala 69:26]
  assign idx_tag_cam_clock = clock;
  assign idx_tag_cam_io_rreq_0_idx = io_write_idx; // @[WrBypass.scala 50:16]
  assign idx_tag_cam_io_wvalid = io_wen & ~hit; // @[WrBypass.scala 108:23]
  assign idx_tag_cam_io_wdata_idx = io_write_idx; // @[WrBypass.scala 50:16]
  assign idx_tag_cam_io_windex = {enq_idx_left_subtree_older,_enq_idx_T_20}; // @[Cat.scala 31:58]
  always @(posedge clock) begin
    if (data_mem_0_MPORT_en & data_mem_0_MPORT_mask) begin
      data_mem_0[data_mem_0_MPORT_addr] <= data_mem_0_MPORT_data; // @[WrBypass.scala 55:21]
    end
    if (data_mem_1_MPORT_en & data_mem_1_MPORT_mask) begin
      data_mem_1[data_mem_1_MPORT_addr] <= data_mem_1_MPORT_data; // @[WrBypass.scala 55:21]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_0_0 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_0) begin
          valids_0_0 <= _GEN_12;
        end
      end else if (io_write_way_mask_0) begin
        valids_0_0 <= _GEN_76;
      end else if (4'h0 == enq_idx) begin
        valids_0_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_0_1 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_1) begin
          valids_0_1 <= _GEN_172;
        end
      end else if (io_write_way_mask_1) begin
        valids_0_1 <= _GEN_236;
      end else if (4'h0 == enq_idx) begin
        valids_0_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_1_0 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_0) begin
          valids_1_0 <= _GEN_13;
        end
      end else if (io_write_way_mask_0) begin
        valids_1_0 <= _GEN_77;
      end else if (4'h1 == enq_idx) begin
        valids_1_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_1_1 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_1) begin
          valids_1_1 <= _GEN_173;
        end
      end else if (io_write_way_mask_1) begin
        valids_1_1 <= _GEN_237;
      end else if (4'h1 == enq_idx) begin
        valids_1_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_2_0 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_0) begin
          valids_2_0 <= _GEN_14;
        end
      end else if (io_write_way_mask_0) begin
        valids_2_0 <= _GEN_78;
      end else if (4'h2 == enq_idx) begin
        valids_2_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_2_1 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_1) begin
          valids_2_1 <= _GEN_174;
        end
      end else if (io_write_way_mask_1) begin
        valids_2_1 <= _GEN_238;
      end else if (4'h2 == enq_idx) begin
        valids_2_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_3_0 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_0) begin
          valids_3_0 <= _GEN_15;
        end
      end else if (io_write_way_mask_0) begin
        valids_3_0 <= _GEN_79;
      end else if (4'h3 == enq_idx) begin
        valids_3_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_3_1 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_1) begin
          valids_3_1 <= _GEN_175;
        end
      end else if (io_write_way_mask_1) begin
        valids_3_1 <= _GEN_239;
      end else if (4'h3 == enq_idx) begin
        valids_3_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_4_0 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_0) begin
          valids_4_0 <= _GEN_16;
        end
      end else if (io_write_way_mask_0) begin
        valids_4_0 <= _GEN_80;
      end else if (4'h4 == enq_idx) begin
        valids_4_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_4_1 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_1) begin
          valids_4_1 <= _GEN_176;
        end
      end else if (io_write_way_mask_1) begin
        valids_4_1 <= _GEN_240;
      end else if (4'h4 == enq_idx) begin
        valids_4_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_5_0 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_0) begin
          valids_5_0 <= _GEN_17;
        end
      end else if (io_write_way_mask_0) begin
        valids_5_0 <= _GEN_81;
      end else if (4'h5 == enq_idx) begin
        valids_5_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_5_1 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_1) begin
          valids_5_1 <= _GEN_177;
        end
      end else if (io_write_way_mask_1) begin
        valids_5_1 <= _GEN_241;
      end else if (4'h5 == enq_idx) begin
        valids_5_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_6_0 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_0) begin
          valids_6_0 <= _GEN_18;
        end
      end else if (io_write_way_mask_0) begin
        valids_6_0 <= _GEN_82;
      end else if (4'h6 == enq_idx) begin
        valids_6_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_6_1 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_1) begin
          valids_6_1 <= _GEN_178;
        end
      end else if (io_write_way_mask_1) begin
        valids_6_1 <= _GEN_242;
      end else if (4'h6 == enq_idx) begin
        valids_6_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_7_0 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_0) begin
          valids_7_0 <= _GEN_19;
        end
      end else if (io_write_way_mask_0) begin
        valids_7_0 <= _GEN_83;
      end else if (4'h7 == enq_idx) begin
        valids_7_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_7_1 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_1) begin
          valids_7_1 <= _GEN_179;
        end
      end else if (io_write_way_mask_1) begin
        valids_7_1 <= _GEN_243;
      end else if (4'h7 == enq_idx) begin
        valids_7_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_8_0 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_0) begin
          valids_8_0 <= _GEN_20;
        end
      end else if (io_write_way_mask_0) begin
        valids_8_0 <= _GEN_84;
      end else if (4'h8 == enq_idx) begin
        valids_8_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_8_1 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_1) begin
          valids_8_1 <= _GEN_180;
        end
      end else if (io_write_way_mask_1) begin
        valids_8_1 <= _GEN_244;
      end else if (4'h8 == enq_idx) begin
        valids_8_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_9_0 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_0) begin
          valids_9_0 <= _GEN_21;
        end
      end else if (io_write_way_mask_0) begin
        valids_9_0 <= _GEN_85;
      end else if (4'h9 == enq_idx) begin
        valids_9_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_9_1 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_1) begin
          valids_9_1 <= _GEN_181;
        end
      end else if (io_write_way_mask_1) begin
        valids_9_1 <= _GEN_245;
      end else if (4'h9 == enq_idx) begin
        valids_9_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_10_0 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_0) begin
          valids_10_0 <= _GEN_22;
        end
      end else if (io_write_way_mask_0) begin
        valids_10_0 <= _GEN_86;
      end else if (4'ha == enq_idx) begin
        valids_10_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_10_1 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_1) begin
          valids_10_1 <= _GEN_182;
        end
      end else if (io_write_way_mask_1) begin
        valids_10_1 <= _GEN_246;
      end else if (4'ha == enq_idx) begin
        valids_10_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_11_0 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_0) begin
          valids_11_0 <= _GEN_23;
        end
      end else if (io_write_way_mask_0) begin
        valids_11_0 <= _GEN_87;
      end else if (4'hb == enq_idx) begin
        valids_11_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_11_1 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_1) begin
          valids_11_1 <= _GEN_183;
        end
      end else if (io_write_way_mask_1) begin
        valids_11_1 <= _GEN_247;
      end else if (4'hb == enq_idx) begin
        valids_11_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_12_0 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_0) begin
          valids_12_0 <= _GEN_24;
        end
      end else if (io_write_way_mask_0) begin
        valids_12_0 <= _GEN_88;
      end else if (4'hc == enq_idx) begin
        valids_12_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_12_1 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_1) begin
          valids_12_1 <= _GEN_184;
        end
      end else if (io_write_way_mask_1) begin
        valids_12_1 <= _GEN_248;
      end else if (4'hc == enq_idx) begin
        valids_12_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_13_0 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_0) begin
          valids_13_0 <= _GEN_25;
        end
      end else if (io_write_way_mask_0) begin
        valids_13_0 <= _GEN_89;
      end else if (4'hd == enq_idx) begin
        valids_13_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_13_1 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_1) begin
          valids_13_1 <= _GEN_185;
        end
      end else if (io_write_way_mask_1) begin
        valids_13_1 <= _GEN_249;
      end else if (4'hd == enq_idx) begin
        valids_13_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_14_0 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_0) begin
          valids_14_0 <= _GEN_26;
        end
      end else if (io_write_way_mask_0) begin
        valids_14_0 <= _GEN_90;
      end else if (4'he == enq_idx) begin
        valids_14_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_14_1 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_1) begin
          valids_14_1 <= _GEN_186;
        end
      end else if (io_write_way_mask_1) begin
        valids_14_1 <= _GEN_250;
      end else if (4'he == enq_idx) begin
        valids_14_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_15_0 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_0) begin
          valids_15_0 <= _GEN_27;
        end
      end else if (io_write_way_mask_0) begin
        valids_15_0 <= _GEN_91;
      end else if (4'hf == enq_idx) begin
        valids_15_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      valids_15_1 <= 1'h0; // @[WrBypass.scala 94:18 57:23 100:{28,28} 101:35 57:23 95:35]
    end else if (io_wen) begin // @[WrBypass.scala 57:23]
      if (hit) begin
        if (io_write_way_mask_1) begin
          valids_15_1 <= _GEN_187;
        end
      end else if (io_write_way_mask_1) begin
        valids_15_1 <= _GEN_251;
      end else if (4'hf == enq_idx) begin
        valids_15_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_0 <= 1'h0; // @[WrBypass.scala 94:18]
    end else if (io_wen) begin
      if (hit) begin
        ever_written_0 <= _GEN_156;
      end else begin
        ever_written_0 <= _GEN_204;
      end
    end else begin
      ever_written_0 <= _GEN_156;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_1 <= 1'h0; // @[WrBypass.scala 94:18]
    end else if (io_wen) begin
      if (hit) begin
        ever_written_1 <= _GEN_157;
      end else begin
        ever_written_1 <= _GEN_205;
      end
    end else begin
      ever_written_1 <= _GEN_157;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_2 <= 1'h0; // @[WrBypass.scala 94:18]
    end else if (io_wen) begin
      if (hit) begin
        ever_written_2 <= _GEN_158;
      end else begin
        ever_written_2 <= _GEN_206;
      end
    end else begin
      ever_written_2 <= _GEN_158;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_3 <= 1'h0; // @[WrBypass.scala 94:18]
    end else if (io_wen) begin
      if (hit) begin
        ever_written_3 <= _GEN_159;
      end else begin
        ever_written_3 <= _GEN_207;
      end
    end else begin
      ever_written_3 <= _GEN_159;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_4 <= 1'h0; // @[WrBypass.scala 94:18]
    end else if (io_wen) begin
      if (hit) begin
        ever_written_4 <= _GEN_160;
      end else begin
        ever_written_4 <= _GEN_208;
      end
    end else begin
      ever_written_4 <= _GEN_160;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_5 <= 1'h0; // @[WrBypass.scala 94:18]
    end else if (io_wen) begin
      if (hit) begin
        ever_written_5 <= _GEN_161;
      end else begin
        ever_written_5 <= _GEN_209;
      end
    end else begin
      ever_written_5 <= _GEN_161;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_6 <= 1'h0; // @[WrBypass.scala 94:18]
    end else if (io_wen) begin
      if (hit) begin
        ever_written_6 <= _GEN_162;
      end else begin
        ever_written_6 <= _GEN_210;
      end
    end else begin
      ever_written_6 <= _GEN_162;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_7 <= 1'h0; // @[WrBypass.scala 94:18]
    end else if (io_wen) begin
      if (hit) begin
        ever_written_7 <= _GEN_163;
      end else begin
        ever_written_7 <= _GEN_211;
      end
    end else begin
      ever_written_7 <= _GEN_163;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_8 <= 1'h0; // @[WrBypass.scala 94:18]
    end else if (io_wen) begin
      if (hit) begin
        ever_written_8 <= _GEN_164;
      end else begin
        ever_written_8 <= _GEN_212;
      end
    end else begin
      ever_written_8 <= _GEN_164;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_9 <= 1'h0; // @[WrBypass.scala 94:18]
    end else if (io_wen) begin
      if (hit) begin
        ever_written_9 <= _GEN_165;
      end else begin
        ever_written_9 <= _GEN_213;
      end
    end else begin
      ever_written_9 <= _GEN_165;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_10 <= 1'h0; // @[WrBypass.scala 94:18]
    end else if (io_wen) begin
      if (hit) begin
        ever_written_10 <= _GEN_166;
      end else begin
        ever_written_10 <= _GEN_214;
      end
    end else begin
      ever_written_10 <= _GEN_166;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_11 <= 1'h0; // @[WrBypass.scala 94:18]
    end else if (io_wen) begin
      if (hit) begin
        ever_written_11 <= _GEN_167;
      end else begin
        ever_written_11 <= _GEN_215;
      end
    end else begin
      ever_written_11 <= _GEN_167;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_12 <= 1'h0; // @[WrBypass.scala 94:18]
    end else if (io_wen) begin
      if (hit) begin
        ever_written_12 <= _GEN_168;
      end else begin
        ever_written_12 <= _GEN_216;
      end
    end else begin
      ever_written_12 <= _GEN_168;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_13 <= 1'h0; // @[WrBypass.scala 94:18]
    end else if (io_wen) begin
      if (hit) begin
        ever_written_13 <= _GEN_169;
      end else begin
        ever_written_13 <= _GEN_217;
      end
    end else begin
      ever_written_13 <= _GEN_169;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_14 <= 1'h0; // @[WrBypass.scala 94:18]
    end else if (io_wen) begin
      if (hit) begin
        ever_written_14 <= _GEN_170;
      end else begin
        ever_written_14 <= _GEN_218;
      end
    end else begin
      ever_written_14 <= _GEN_170;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_15 <= 1'h0; // @[WrBypass.scala 94:18]
    end else if (io_wen) begin
      if (hit) begin
        ever_written_15 <= _GEN_171;
      end else begin
        ever_written_15 <= _GEN_219;
      end
    end else begin
      ever_written_15 <= _GEN_171;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 175:40]
      state_reg <= 15'h0; // @[Replacement.scala 22:56]
    end else if (io_wen) begin // @[Replacement.scala 168:72]
      if (io_wen) begin
        state_reg <= _state_reg_T_50;
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_mem_0[initvar] = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    data_mem_1[initvar] = _RAND_1[5:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  valids_0_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  valids_0_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  valids_1_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  valids_1_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  valids_2_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  valids_2_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  valids_3_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  valids_3_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  valids_4_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  valids_4_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  valids_5_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  valids_5_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  valids_6_0 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  valids_6_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  valids_7_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  valids_7_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  valids_8_0 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  valids_8_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  valids_9_0 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  valids_9_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  valids_10_0 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  valids_10_1 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  valids_11_0 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  valids_11_1 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  valids_12_0 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  valids_12_1 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  valids_13_0 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  valids_13_1 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  valids_14_0 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  valids_14_1 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  valids_15_0 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  valids_15_1 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  ever_written_0 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  ever_written_1 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  ever_written_2 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  ever_written_3 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  ever_written_4 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  ever_written_5 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  ever_written_6 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  ever_written_7 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  ever_written_8 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  ever_written_9 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  ever_written_10 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  ever_written_11 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  ever_written_12 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  ever_written_13 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  ever_written_14 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  ever_written_15 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  state_reg = _RAND_50[14:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    valids_0_0 = 1'h0;
  end
  if (reset) begin
    valids_0_1 = 1'h0;
  end
  if (reset) begin
    valids_1_0 = 1'h0;
  end
  if (reset) begin
    valids_1_1 = 1'h0;
  end
  if (reset) begin
    valids_2_0 = 1'h0;
  end
  if (reset) begin
    valids_2_1 = 1'h0;
  end
  if (reset) begin
    valids_3_0 = 1'h0;
  end
  if (reset) begin
    valids_3_1 = 1'h0;
  end
  if (reset) begin
    valids_4_0 = 1'h0;
  end
  if (reset) begin
    valids_4_1 = 1'h0;
  end
  if (reset) begin
    valids_5_0 = 1'h0;
  end
  if (reset) begin
    valids_5_1 = 1'h0;
  end
  if (reset) begin
    valids_6_0 = 1'h0;
  end
  if (reset) begin
    valids_6_1 = 1'h0;
  end
  if (reset) begin
    valids_7_0 = 1'h0;
  end
  if (reset) begin
    valids_7_1 = 1'h0;
  end
  if (reset) begin
    valids_8_0 = 1'h0;
  end
  if (reset) begin
    valids_8_1 = 1'h0;
  end
  if (reset) begin
    valids_9_0 = 1'h0;
  end
  if (reset) begin
    valids_9_1 = 1'h0;
  end
  if (reset) begin
    valids_10_0 = 1'h0;
  end
  if (reset) begin
    valids_10_1 = 1'h0;
  end
  if (reset) begin
    valids_11_0 = 1'h0;
  end
  if (reset) begin
    valids_11_1 = 1'h0;
  end
  if (reset) begin
    valids_12_0 = 1'h0;
  end
  if (reset) begin
    valids_12_1 = 1'h0;
  end
  if (reset) begin
    valids_13_0 = 1'h0;
  end
  if (reset) begin
    valids_13_1 = 1'h0;
  end
  if (reset) begin
    valids_14_0 = 1'h0;
  end
  if (reset) begin
    valids_14_1 = 1'h0;
  end
  if (reset) begin
    valids_15_0 = 1'h0;
  end
  if (reset) begin
    valids_15_1 = 1'h0;
  end
  if (reset) begin
    ever_written_0 = 1'h0;
  end
  if (reset) begin
    ever_written_1 = 1'h0;
  end
  if (reset) begin
    ever_written_2 = 1'h0;
  end
  if (reset) begin
    ever_written_3 = 1'h0;
  end
  if (reset) begin
    ever_written_4 = 1'h0;
  end
  if (reset) begin
    ever_written_5 = 1'h0;
  end
  if (reset) begin
    ever_written_6 = 1'h0;
  end
  if (reset) begin
    ever_written_7 = 1'h0;
  end
  if (reset) begin
    ever_written_8 = 1'h0;
  end
  if (reset) begin
    ever_written_9 = 1'h0;
  end
  if (reset) begin
    ever_written_10 = 1'h0;
  end
  if (reset) begin
    ever_written_11 = 1'h0;
  end
  if (reset) begin
    ever_written_12 = 1'h0;
  end
  if (reset) begin
    ever_written_13 = 1'h0;
  end
  if (reset) begin
    ever_written_14 = 1'h0;
  end
  if (reset) begin
    ever_written_15 = 1'h0;
  end
  if (reset) begin
    state_reg = 15'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

