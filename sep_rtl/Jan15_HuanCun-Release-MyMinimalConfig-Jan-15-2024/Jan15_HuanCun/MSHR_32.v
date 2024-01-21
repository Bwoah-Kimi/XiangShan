module MSHR_32(
  input         clock,
  input         reset,
  input  [3:0]  io_id,
  input         io_enable,
  input         io_alloc_valid,
  input  [2:0]  io_alloc_bits_channel,
  input  [2:0]  io_alloc_bits_opcode,
  input  [2:0]  io_alloc_bits_param,
  input  [2:0]  io_alloc_bits_size,
  input  [9:0]  io_alloc_bits_source,
  input  [7:0]  io_alloc_bits_set,
  input  [21:0] io_alloc_bits_tag,
  input  [5:0]  io_alloc_bits_off,
  input  [31:0] io_alloc_bits_mask,
  input  [2:0]  io_alloc_bits_bufIdx,
  input         io_alloc_bits_preferCache,
  input         io_alloc_bits_dirty,
  input         io_alloc_bits_fromProbeHelper,
  input         io_alloc_bits_fromCmoHelper,
  input         io_alloc_bits_needProbeAckData,
  input  [3:0]  io_alloc_bits_reqSource,
  output        io_status_valid,
  output [7:0]  io_status_bits_set,
  output [21:0] io_status_bits_tag,
  output [2:0]  io_status_bits_way,
  output [2:0]  io_status_bits_way_reg,
  output        io_status_bits_is_miss,
  output        io_status_bits_nestB,
  output        io_status_bits_nestC,
  output        io_status_bits_will_grant_data,
  output        io_status_bits_will_save_data,
  output        io_status_bits_will_free,
  input         io_resps_sink_c_valid,
  input         io_resps_sink_c_bits_hasData,
  input  [2:0]  io_resps_sink_c_bits_param,
  input         io_resps_sink_c_bits_last,
  input  [2:0]  io_resps_sink_c_bits_bufIdx,
  input         io_resps_sink_d_valid,
  input  [2:0]  io_resps_sink_d_bits_opcode,
  input  [2:0]  io_resps_sink_d_bits_param,
  input  [2:0]  io_resps_sink_d_bits_sink,
  input         io_resps_sink_d_bits_last,
  input         io_resps_sink_d_bits_denied,
  input  [2:0]  io_resps_sink_d_bits_bufIdx,
  input         io_resps_sink_e_valid,
  input         io_resps_source_d_valid,
  input         io_resps_sink_c_ack_valid,
  input  [7:0]  io_nestedwb_set,
  input  [21:0] io_nestedwb_tag,
  input         io_nestedwb_btoN,
  input         io_nestedwb_btoB,
  input         io_nestedwb_bclr_dirty,
  input         io_nestedwb_bset_dirty,
  input         io_nestedwb_c_set_dirty,
  input         io_nestedwb_c_set_hit,
  input         io_nestedwb_clients_0_isToN,
  input         io_tasks_sink_a_ready,
  output        io_tasks_sink_a_valid,
  output [9:0]  io_tasks_sink_a_bits_sourceId,
  output [7:0]  io_tasks_sink_a_bits_set,
  output [21:0] io_tasks_sink_a_bits_tag,
  output [2:0]  io_tasks_sink_a_bits_size,
  output [5:0]  io_tasks_sink_a_bits_off,
  input         io_tasks_source_bready,
  output        io_tasks_source_bvalid,
  output [7:0]  io_tasks_source_bset,
  output [21:0] io_tasks_source_btag,
  output [2:0]  io_tasks_source_bparam,
  output        io_tasks_source_bclients,
  output        io_tasks_source_bneedData,
  input         io_tasks_sink_c_ready,
  output        io_tasks_sink_c_valid,
  output [9:0]  io_tasks_sink_c_bits_sourceId,
  output [7:0]  io_tasks_sink_c_bits_set,
  output [21:0] io_tasks_sink_c_bits_tag,
  output [2:0]  io_tasks_sink_c_bits_size,
  output [2:0]  io_tasks_sink_c_bits_way,
  output [5:0]  io_tasks_sink_c_bits_off,
  output [2:0]  io_tasks_sink_c_bits_bufIdx,
  output [2:0]  io_tasks_sink_c_bits_opcode,
  output [2:0]  io_tasks_sink_c_bits_param,
  output [3:0]  io_tasks_sink_c_bits_source,
  output        io_tasks_sink_c_bits_save,
  output        io_tasks_sink_c_bits_drop,
  output        io_tasks_sink_c_bits_release,
  output        io_tasks_sink_c_bits_dirty,
  input         io_tasks_source_d_ready,
  output        io_tasks_source_d_valid,
  output [9:0]  io_tasks_source_d_bits_sourceId,
  output [7:0]  io_tasks_source_d_bits_set,
  output [21:0] io_tasks_source_d_bits_tag,
  output [2:0]  io_tasks_source_d_bits_channel,
  output [2:0]  io_tasks_source_d_bits_opcode,
  output [2:0]  io_tasks_source_d_bits_param,
  output [2:0]  io_tasks_source_d_bits_size,
  output [2:0]  io_tasks_source_d_bits_way,
  output [5:0]  io_tasks_source_d_bits_off,
  output        io_tasks_source_d_bits_useBypass,
  output [2:0]  io_tasks_source_d_bits_bufIdx,
  output        io_tasks_source_d_bits_denied,
  output [3:0]  io_tasks_source_d_bits_sinkId,
  output        io_tasks_source_d_bits_bypassPut,
  output        io_tasks_source_d_bits_dirty,
  output        io_tasks_source_d_bits_isHit,
  input         io_tasks_source_a_ready,
  output        io_tasks_source_a_valid,
  output [21:0] io_tasks_source_a_bits_tag,
  output [7:0]  io_tasks_source_a_bits_set,
  output [5:0]  io_tasks_source_a_bits_off,
  output [31:0] io_tasks_source_a_bits_mask,
  output [2:0]  io_tasks_source_a_bits_opcode,
  output [2:0]  io_tasks_source_a_bits_param,
  output [3:0]  io_tasks_source_a_bits_source,
  output [2:0]  io_tasks_source_a_bits_bufIdx,
  output [2:0]  io_tasks_source_a_bits_size,
  output        io_tasks_source_a_bits_needData,
  output        io_tasks_source_a_bits_putData,
  output [3:0]  io_tasks_source_a_bits_reqSource,
  input         io_tasks_source_c_ready,
  output        io_tasks_source_c_valid,
  output [2:0]  io_tasks_source_c_bits_opcode,
  output [21:0] io_tasks_source_c_bits_tag,
  output [7:0]  io_tasks_source_c_bits_set,
  output [2:0]  io_tasks_source_c_bits_param,
  output [3:0]  io_tasks_source_c_bits_source,
  output [2:0]  io_tasks_source_c_bits_way,
  output        io_tasks_source_c_bits_dirty,
  input         io_tasks_source_e_ready,
  output        io_tasks_source_e_valid,
  output [2:0]  io_tasks_source_e_bits_sink,
  input         io_tasks_dir_write_ready,
  output        io_tasks_dir_write_valid,
  output [7:0]  io_tasks_dir_write_bits_set,
  output [2:0]  io_tasks_dir_write_bits_way,
  output        io_tasks_dir_write_bits_data_dirty,
  output [1:0]  io_tasks_dir_write_bits_data_state,
  output [1:0]  io_tasks_dir_write_bits_data_clientStates_0,
  input         io_tasks_tag_write_ready,
  output        io_tasks_tag_write_valid,
  output [7:0]  io_tasks_tag_write_bits_set,
  output [2:0]  io_tasks_tag_write_bits_way,
  output [21:0] io_tasks_tag_write_bits_tag,
  input         io_tasks_client_dir_write_ready,
  output        io_tasks_client_dir_write_valid,
  output [7:0]  io_tasks_client_dir_write_bits_set,
  output [2:0]  io_tasks_client_dir_write_bits_way,
  output [1:0]  io_tasks_client_dir_write_bits_data_0_state,
  input         io_tasks_client_tag_write_ready,
  output        io_tasks_client_tag_write_valid,
  output [7:0]  io_tasks_client_tag_write_bits_set,
  output [2:0]  io_tasks_client_tag_write_bits_way,
  output [21:0] io_tasks_client_tag_write_bits_tag,
  input         io_dirResult_valid,
  input         io_dirResult_bits_self_dirty,
  input  [1:0]  io_dirResult_bits_self_state,
  input  [1:0]  io_dirResult_bits_self_clientStates_0,
  input         io_dirResult_bits_self_hit,
  input  [2:0]  io_dirResult_bits_self_way,
  input  [21:0] io_dirResult_bits_self_tag,
  input  [1:0]  io_dirResult_bits_clients_states_0_state,
  input         io_dirResult_bits_clients_states_0_hit,
  input  [21:0] io_dirResult_bits_clients_tag,
  input  [2:0]  io_dirResult_bits_clients_way,
  input  [7:0]  io_c_status_set,
  input  [21:0] io_c_status_tag,
  input  [2:0]  io_c_status_way,
  input         io_c_status_nestedReleaseData,
  output        io_c_status_releaseThrough,
  input  [7:0]  io_bstatus_set,
  input  [21:0] io_bstatus_tag,
  input  [2:0]  io_bstatus_way,
  input         io_bstatus_nestedProbeAckData,
  input         io_bstatus_probeHelperFinish,
  output        io_bstatus_probeAckDataThrough,
  input         io_releaseThrough,
  input         io_probeAckDataThrough,
  output        io_is_nestedReleaseData,
  output        io_is_nestedProbeAckData,
  output        io_probeHelperFinish
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
`endif // RANDOMIZE_REG_INIT
  reg [2:0] req_channel; // @[MSHR.scala 51:16]
  reg [2:0] req_opcode; // @[MSHR.scala 51:16]
  reg [2:0] req_param; // @[MSHR.scala 51:16]
  reg [2:0] req_size; // @[MSHR.scala 51:16]
  reg [9:0] req_source; // @[MSHR.scala 51:16]
  reg [7:0] req_set; // @[MSHR.scala 51:16]
  reg [21:0] req_tag; // @[MSHR.scala 51:16]
  reg [5:0] req_off; // @[MSHR.scala 51:16]
  reg [31:0] req_mask; // @[MSHR.scala 51:16]
  reg [2:0] req_bufIdx; // @[MSHR.scala 51:16]
  reg  req_preferCache; // @[MSHR.scala 51:16]
  reg  req_dirty; // @[MSHR.scala 51:16]
  reg  req_fromProbeHelper; // @[MSHR.scala 51:16]
  reg  req_fromCmoHelper; // @[MSHR.scala 51:16]
  reg  req_needProbeAckData; // @[MSHR.scala 51:16]
  reg [3:0] req_reqSource; // @[MSHR.scala 51:16]
  reg  req_valid; // @[MSHR.scala 52:26]
  reg [1:0] iam; // @[MSHR.scala 53:16]
  reg  meta_reg_self_dirty; // @[MSHR.scala 54:21]
  reg [1:0] meta_reg_self_state; // @[MSHR.scala 54:21]
  reg [1:0] meta_reg_self_clientStates_0; // @[MSHR.scala 54:21]
  reg  meta_reg_self_hit; // @[MSHR.scala 54:21]
  reg [2:0] meta_reg_self_way; // @[MSHR.scala 54:21]
  reg [21:0] meta_reg_self_tag; // @[MSHR.scala 54:21]
  reg [1:0] meta_reg_clients_states_0_state; // @[MSHR.scala 54:21]
  reg  meta_reg_clients_states_0_hit; // @[MSHR.scala 54:21]
  reg [21:0] meta_reg_clients_tag; // @[MSHR.scala 54:21]
  reg [2:0] meta_reg_clients_way; // @[MSHR.scala 54:21]
  reg  meta_valid; // @[MSHR.scala 57:27]
  wire  _GEN_0 = io_dirResult_valid | meta_valid; // @[MSHR.scala 66:28 67:16 57:27]
  wire  _GEN_2 = io_dirResult_valid ? io_dirResult_bits_self_dirty : meta_reg_self_dirty; // @[MSHR.scala 66:28 68:14 54:21]
  wire [1:0] _GEN_3 = io_dirResult_valid ? io_dirResult_bits_self_state : meta_reg_self_state; // @[MSHR.scala 66:28 68:14 54:21]
  wire [1:0] _GEN_4 = io_dirResult_valid ? io_dirResult_bits_self_clientStates_0 : meta_reg_self_clientStates_0; // @[MSHR.scala 66:28 68:14 54:21]
  wire  _GEN_5 = io_dirResult_valid ? io_dirResult_bits_self_hit : meta_reg_self_hit; // @[MSHR.scala 66:28 68:14 54:21]
  wire [2:0] _GEN_6 = io_dirResult_valid ? io_dirResult_bits_self_way : meta_reg_self_way; // @[MSHR.scala 66:28 68:14 54:21]
  wire [21:0] _GEN_7 = io_dirResult_valid ? io_dirResult_bits_self_tag : meta_reg_self_tag; // @[MSHR.scala 66:28 68:14 54:21]
  wire  _GEN_8 = 1'h0; // @[MSHR.scala 66:28 68:14 54:21]
  wire [1:0] _GEN_9 = io_dirResult_valid ? io_dirResult_bits_clients_states_0_state : meta_reg_clients_states_0_state; // @[MSHR.scala 66:28 68:14 54:21]
  wire  _GEN_10 = io_dirResult_valid ? io_dirResult_bits_clients_states_0_hit : meta_reg_clients_states_0_hit; // @[MSHR.scala 66:28 68:14 54:21]
  wire [21:0] _GEN_12 = io_dirResult_valid ? io_dirResult_bits_clients_tag : meta_reg_clients_tag; // @[MSHR.scala 66:28 68:14 54:21]
  wire  _req_acquire_T = req_opcode == 3'h6; // @[MSHR.scala 80:32]
  wire  _req_acquire_T_1 = req_opcode == 3'h7; // @[MSHR.scala 80:63]
  wire  req_acquire = req_opcode == 3'h6 | req_opcode == 3'h7; // @[MSHR.scala 80:49]
  wire  req_put = req_opcode[2:1] == 2'h0; // @[MSHR.scala 81:33]
  wire  _req_needT_T_2 = req_opcode == 3'h5; // @[MetaData.scala 36:13]
  wire  _req_needT_T_3 = req_param == 3'h1; // @[MetaData.scala 36:42]
  wire  _req_needT_T_4 = req_opcode == 3'h5 & req_param == 3'h1; // @[MetaData.scala 36:33]
  wire  _req_needT_T_5 = ~req_opcode[2] | _req_needT_T_4; // @[MetaData.scala 35:16]
  wire  _req_needT_T_9 = req_param != 3'h0; // @[MetaData.scala 37:89]
  wire  _req_needT_T_10 = req_acquire & req_param != 3'h0; // @[MetaData.scala 37:80]
  wire  req_needT = _req_needT_T_5 | _req_needT_T_10; // @[MetaData.scala 36:70]
  reg  promoteT_safe; // @[MSHR.scala 83:30]
  reg  gotT; // @[MSHR.scala 84:21]
  reg  a_do_release; // @[MSHR.scala 86:29]
  reg  a_do_probe; // @[MSHR.scala 87:27]
  wire [1:0] meta_self_clientStates_0 = _GEN_4; // @[MSHR.scala 70:14]
  wire  meta_no_clients = &(meta_self_clientStates_0 == 2'h0); // @[MSHR.scala 88:76]
  wire [1:0] meta_self_state = _GEN_3; // @[MSHR.scala 70:14]
  wire  _req_promoteT_T = meta_self_state == 2'h3; // @[MSHR.scala 91:40]
  wire  _req_promoteT_T_1 = meta_no_clients & meta_self_state == 2'h3; // @[MSHR.scala 91:21]
  wire  _req_promoteT_T_2 = gotT & promoteT_safe; // @[MSHR.scala 92:10]
  wire  meta_self_hit = _GEN_5; // @[MSHR.scala 70:14]
  wire  _req_promoteT_T_3 = meta_self_hit ? _req_promoteT_T_1 : _req_promoteT_T_2; // @[MSHR.scala 89:40]
  wire  req_promoteT = req_acquire & _req_promoteT_T_3; // @[MSHR.scala 89:34]
  reg  probe_dirty; // @[MSHR.scala 94:28]
  wire  _client_shrink_perm_T_1 = req_param == 3'h2; // @[MetaData.scala 48:43]
  wire  _client_shrink_perm_T_4 = _req_needT_T_3 | req_param == 3'h2 | req_param == 3'h5; // @[MetaData.scala 48:66]
  wire [1:0] meta_clients_states_0_state = _GEN_9; // @[MSHR.scala 70:14]
  wire  _client_shrink_perm_T_5 = meta_clients_states_0_state != 2'h0; // @[MSHR.scala 97:49]
  wire  _client_shrink_perm_T_7 = req_param == 3'h0; // @[MetaData.scala 51:11]
  wire  _client_shrink_perm_T_9 = req_param == 3'h0 | req_param == 3'h4; // @[MetaData.scala 51:34]
  wire  client_shrink_perm = _client_shrink_perm_T_4 & meta_clients_states_0_state != 2'h0 | _client_shrink_perm_T_9 &
    meta_clients_states_0_state[1]; // @[MSHR.scala 97:61]
  wire  meta_clients_states_0_hit = _GEN_10; // @[MSHR.scala 70:14]
  wire  clients_hit = |meta_clients_states_0_hit; // @[MSHR.scala 98:61]
  wire  _other_clients_hit_T = 2'h0 != iam; // @[MSHR.scala 100:27]
  wire  _other_clients_hit_T_1 = 2'h0 != iam & meta_clients_states_0_hit; // @[MSHR.scala 100:35]
  wire  other_clients_hit = |_other_clients_hit_T_1; // @[MSHR.scala 101:13]
  wire  _clients_have_T_T_1 = meta_clients_states_0_hit & meta_clients_states_0_state[1]; // @[MSHR.scala 103:27]
  wire  clients_have_T = |_clients_have_T_T_1; // @[MSHR.scala 104:13]
  wire  _highest_perm_T = ~io_probeAckDataThrough; // @[MSHR.scala 113:30]
  wire [1:0] _highest_perm_T_2 = meta_self_hit & ~io_probeAckDataThrough ? meta_self_state : 2'h0; // @[MSHR.scala 113:12]
  wire [1:0] _highest_perm_T_3 = meta_clients_states_0_hit ? meta_clients_states_0_state : 2'h0; // @[MSHR.scala 114:32]
  wire [1:0] highest_perm = _highest_perm_T_2 > _highest_perm_T_3 ? _highest_perm_T_2 : _highest_perm_T_3; // @[ParallelMux.scala 78:45]
  reg [1:0] highest_perm_reg_reg; // @[MSHR.scala 1434:24]
  reg  w_probeacklast; // @[MSHR.scala 545:31]
  reg  w_grantlast; // @[MSHR.scala 548:28]
  reg  w_releaseack; // @[MSHR.scala 550:29]
  reg  w_grantack; // @[MSHR.scala 551:27]
  reg  w_putwritten; // @[MSHR.scala 552:29]
  reg  w_sinkcack; // @[MSHR.scala 553:27]
  wire  no_wait = w_probeacklast & w_grantlast & w_releaseack & w_grantack & w_putwritten & w_sinkcack; // @[MSHR.scala 926:93]
  reg  s_probeack; // @[MSHR.scala 531:27]
  reg  s_execute; // @[MSHR.scala 532:26]
  reg  s_grantack; // @[MSHR.scala 533:27]
  reg  no_schedule_REG; // @[MSHR.scala 1412:12]
  wire  _no_schedule_T_6 = s_probeack & s_execute & s_grantack & no_schedule_REG; // @[MSHR.scala 1411:59]
  reg  s_writerelease; // @[MSHR.scala 539:31]
  wire  _no_schedule_T_7 = _no_schedule_T_6 & s_writerelease; // @[MSHR.scala 1412:99]
  reg  s_writeprobe; // @[MSHR.scala 540:29]
  wire  _no_schedule_T_8 = _no_schedule_T_7 & s_writeprobe; // @[MSHR.scala 1413:20]
  reg  s_transferput; // @[MSHR.scala 538:30]
  wire  no_schedule = _no_schedule_T_8 & s_transferput; // @[MSHR.scala 1415:37]
  wire  will_be_free = no_wait & no_schedule; // @[MSHR.scala 1417:27]
  wire [1:0] highest_perm_reg = highest_perm | highest_perm_reg_reg; // @[MSHR.scala 1440:19]
  wire [1:0] _highest_perm_except_me_T = meta_self_hit ? meta_self_state : 2'h0; // @[MSHR.scala 118:12]
  wire  _highest_perm_except_me_T_1 = iam == 2'h0; // @[MSHR.scala 121:34]
  wire [1:0] _highest_perm_except_me_T_6 = req_acquire & iam == 2'h0 ? 2'h0 : _highest_perm_T_3; // @[MSHR.scala 121:14]
  wire [1:0] highest_perm_except_me = _highest_perm_except_me_T > _highest_perm_except_me_T_6 ?
    _highest_perm_except_me_T : _highest_perm_except_me_T_6; // @[ParallelMux.scala 78:45]
  reg  inv_self_dir; // @[MSHR.scala 130:29]
  reg [2:0] client_probeack_param_vec_reg_0; // @[MSHR.scala 131:46]
  wire  meta_self_dirty = _GEN_2; // @[MSHR.scala 70:14]
  wire  replace_need_release = meta_self_state > meta_self_clientStates_0 | meta_self_dirty & meta_self_state[1]; // @[MSHR.scala 137:69]
  wire [3:0] _replace_param_T = {meta_self_state,meta_self_clientStates_0}; // @[Cat.scala 31:58]
  wire [2:0] _replace_param_T_9 = 4'h4 == _replace_param_T ? 3'h2 : 3'h0; // @[Mux.scala 81:58]
  wire [2:0] _replace_param_T_11 = 4'h5 == _replace_param_T ? 3'h4 : _replace_param_T_9; // @[Mux.scala 81:58]
  wire [2:0] _replace_param_T_13 = 4'h6 == _replace_param_T ? 3'h3 : _replace_param_T_11; // @[Mux.scala 81:58]
  wire [2:0] _replace_param_T_15 = 4'h7 == _replace_param_T ? 3'h3 : _replace_param_T_13; // @[Mux.scala 81:58]
  wire [2:0] _replace_param_T_17 = 4'hc == _replace_param_T ? 3'h1 : _replace_param_T_15; // @[Mux.scala 81:58]
  wire [2:0] _replace_param_T_19 = 4'hd == _replace_param_T ? 3'h0 : _replace_param_T_17; // @[Mux.scala 81:58]
  wire [2:0] replace_param = 4'hb == _replace_param_T ? 3'h3 : _replace_param_T_19; // @[Mux.scala 81:58]
  wire  _prefetch_miss_need_acquire_T_1 = highest_perm == 2'h0; // @[MSHR.scala 152:82]
  wire  _prefetch_miss_need_acquire_T_3 = ~highest_perm[1]; // @[MSHR.scala 152:95]
  wire  prefetch_miss_need_acquire = _client_shrink_perm_T_7 ? highest_perm == 2'h0 : ~highest_perm[1]; // @[MSHR.scala 152:39]
  wire  _prefetch_miss_need_probe_vec_T_5 = ~meta_self_hit; // @[MSHR.scala 156:74]
  wire  _prefetch_miss_need_probe_vec_T_14 = ~meta_clients_states_0_hit; // @[MSHR.scala 157:72]
  wire  _prefetch_miss_need_probe_vec_T_15 = _client_shrink_perm_T_7 & meta_clients_states_0_hit &
    _prefetch_miss_need_probe_vec_T_5 & ~meta_clients_states_0_hit; // @[MSHR.scala 157:69]
  wire  _prefetch_miss_need_probe_vec_T_16 = _req_needT_T_3 & meta_clients_states_0_state[1] & meta_clients_states_0_hit
     & (~meta_self_hit | ~meta_self_state[1]) | _prefetch_miss_need_probe_vec_T_15; // @[MSHR.scala 156:115]
  wire  prefetch_miss_need_probe_vec_0 = _other_clients_hit_T & _prefetch_miss_need_probe_vec_T_16; // @[MSHR.scala 155:19]
  wire  prefetch_miss_need_probe = |prefetch_miss_need_probe_vec_0; // @[MSHR.scala 159:75]
  wire  prefetch_miss = _req_needT_T_2 & (prefetch_miss_need_acquire | prefetch_miss_need_probe); // @[MSHR.scala 160:43]
  wire  prefetch_need_data = prefetch_miss & _prefetch_miss_need_probe_vec_T_5; // @[MSHR.scala 161:42]
  wire  _transmit_from_other_client_T_1 = req_opcode == 3'h4; // @[MSHR.scala 166:19]
  wire  _transmit_from_other_client_T_2 = req_opcode == 3'h4 | req_put; // @[MSHR.scala 166:27]
  wire  _transmit_from_other_client_T_5 = (req_opcode == 3'h4 | req_put | _other_clients_hit_T) &
    meta_clients_states_0_hit; // @[MSHR.scala 166:54]
  wire  _transmit_from_other_client_T_6 = |_transmit_from_other_client_T_5; // @[MSHR.scala 167:13]
  reg  transmit_from_other_client_reg; // @[MSHR.scala 1434:24]
  wire  _transmit_from_other_client_T_7 = _transmit_from_other_client_T_6 | transmit_from_other_client_reg; // @[MSHR.scala 1440:19]
  wire  transmit_from_other_client = _prefetch_miss_need_probe_vec_T_5 & _transmit_from_other_client_T_7; // @[MSHR.scala 164:51]
  wire  a_need_data = req_channel[0] & (_transmit_from_other_client_T_2 | _req_acquire_T | _req_needT_T_2); // @[MSHR.scala 169:31]
  reg  releaseThrough; // @[MSHR.scala 178:31]
  reg  releaseDrop; // @[MSHR.scala 179:28]
  wire  releaseSave = ~releaseThrough & ~releaseDrop; // @[MSHR.scala 180:37]
  reg  probeAckDataThrough; // @[MSHR.scala 187:36]
  reg  probeAckDataDrop; // @[MSHR.scala 188:33]
  reg  probeAckDataSave; // @[MSHR.scala 189:33]
  reg  someClientHasProbeAckData; // @[MSHR.scala 191:42]
  wire  _a_probe_clients_T_7 = req_needT & _client_shrink_perm_T_5 | meta_clients_states_0_state[1] |
    _prefetch_miss_need_probe_vec_T_5; // @[MSHR.scala 202:60]
  wire  _a_probe_clients_T_8 = meta_clients_states_0_hit & _a_probe_clients_T_7; // @[MSHR.scala 201:15]
  wire [1:0] _new_self_meta_state_T_2 = meta_self_state[1] ? 2'h3 : 2'h1; // @[MSHR.scala 231:12]
  wire [1:0] _new_self_meta_state_T_3 = meta_self_hit ? _new_self_meta_state_T_2 : meta_self_state; // @[MSHR.scala 230:10]
  wire [1:0] _new_self_meta_state_T_4 = _req_needT_T_3 ? _new_self_meta_state_T_3 : 2'h0; // @[MSHR.scala 229:31]
  wire  _new_self_meta_clientStates_0_T = meta_self_clientStates_0 != 2'h0; // @[MSHR.scala 237:67]
  wire [1:0] _new_self_meta_clientStates_0_T_3 = meta_self_clientStates_0 != 2'h0 & _req_needT_T_3 ? 2'h1 : 2'h0; // @[MSHR.scala 237:40]
  wire [1:0] _new_self_meta_clientStates_0_T_4 = meta_self_hit ? _new_self_meta_clientStates_0_T_3 :
    meta_self_clientStates_0; // @[MSHR.scala 237:21]
  wire [1:0] _new_clients_meta_0_state_T_3 = _client_shrink_perm_T_5 & _req_needT_T_3 ? 2'h1 : 2'h0; // @[MSHR.scala 241:34]
  wire [1:0] _new_clients_meta_0_state_T_4 = meta_clients_states_0_hit ? _new_clients_meta_0_state_T_3 :
    meta_clients_states_0_state; // @[MSHR.scala 241:23]
  wire  _new_self_meta_dirty_T = meta_self_hit & meta_self_dirty; // @[MSHR.scala 247:42]
  wire  _new_self_meta_dirty_T_5 = _req_needT_T_3 | _client_shrink_perm_T_7 | req_param == 3'h3; // @[MetaData.scala 55:66]
  wire [1:0] _new_self_meta_state_T_7 = meta_self_hit & _req_promoteT_T ? 2'h3 : 2'h1; // @[MSHR.scala 256:20]
  wire [1:0] _new_self_meta_state_T_9 = 3'h3 == req_param ? 2'h2 : meta_self_state; // @[Mux.scala 81:58]
  wire [1:0] _new_self_meta_state_T_11 = 3'h0 == req_param ? 2'h3 : _new_self_meta_state_T_9; // @[Mux.scala 81:58]
  wire [1:0] _new_self_meta_state_T_13 = 3'h1 == req_param ? 2'h3 : _new_self_meta_state_T_11; // @[Mux.scala 81:58]
  wire [1:0] _new_self_meta_state_T_15 = 3'h2 == req_param ? _new_self_meta_state_T_7 : _new_self_meta_state_T_13; // @[Mux.scala 81:58]
  wire [1:0] _new_self_meta_clientStates_0_T_14 = _client_shrink_perm_T_9 ? 2'h1 : meta_self_clientStates_0; // @[MSHR.scala 264:45]
  wire [1:0] _new_self_meta_clientStates_0_T_15 = _client_shrink_perm_T_4 ? 2'h0 : _new_self_meta_clientStates_0_T_14; // @[MSHR.scala 264:14]
  wire [1:0] _new_self_meta_clientStates_0_T_16 = _highest_perm_except_me_T_1 ? _new_self_meta_clientStates_0_T_15 :
    meta_reg_clients_states_0_state; // @[MSHR.scala 262:21]
  wire [1:0] _new_clients_meta_0_state_T_14 = _client_shrink_perm_T_9 ? 2'h1 : meta_reg_clients_states_0_state; // @[MSHR.scala 272:45]
  wire [1:0] _new_clients_meta_0_state_T_15 = _client_shrink_perm_T_4 ? 2'h0 : _new_clients_meta_0_state_T_14; // @[MSHR.scala 272:14]
  wire [1:0] _new_clients_meta_0_state_T_16 = _highest_perm_except_me_T_1 ? _new_clients_meta_0_state_T_15 :
    meta_reg_clients_states_0_state; // @[MSHR.scala 270:23]
  wire  _GEN_24 = req_fromCmoHelper ? 1'h0 : meta_self_hit & meta_self_dirty | req_dirty & _new_self_meta_dirty_T_5; // @[MSHR.scala 228:25 247:25 432:29]
  wire [1:0] _GEN_25 = req_fromCmoHelper ? _new_self_meta_state_T_4 : _new_self_meta_state_T_15; // @[MSHR.scala 229:25 248:25 432:29]
  wire [1:0] _GEN_26 = req_fromCmoHelper ? _new_self_meta_clientStates_0_T_4 : _new_self_meta_clientStates_0_T_16; // @[MSHR.scala 237:15 262:15 432:29]
  wire [1:0] _GEN_27 = req_fromCmoHelper ? _new_clients_meta_0_state_T_4 : _new_clients_meta_0_state_T_16; // @[MSHR.scala 241:17 270:17 432:29]
  wire  _new_self_meta_dirty_T_8 = ~probeAckDataThrough; // @[MSHR.scala 290:51]
  wire  _new_self_meta_dirty_T_9 = req_fromProbeHelper & ~probeAckDataThrough; // @[MSHR.scala 290:48]
  wire  _new_self_meta_state_T_22 = meta_self_state[1] & _client_shrink_perm_T_7; // @[MSHR.scala 209:16]
  wire  _new_self_meta_state_T_23 = meta_self_state != 2'h0; // @[MSHR.scala 211:15]
  wire [1:0] _new_self_meta_state_T_26 = meta_self_state != 2'h0 & req_param != 3'h2 ? 2'h1 : 2'h0; // @[MSHR.scala 211:8]
  wire [1:0] _new_self_meta_state_T_27 = _new_self_meta_state_T_22 ? meta_self_state : _new_self_meta_state_T_26; // @[MSHR.scala 208:61]
  wire [1:0] _new_self_meta_state_T_28 = _new_self_meta_dirty_T_9 ? _new_self_meta_state_T_2 : _new_self_meta_state_T_27
    ; // @[MSHR.scala 292:10]
  wire [1:0] _new_self_meta_state_T_29 = meta_self_hit ? _new_self_meta_state_T_28 : meta_self_state; // @[MSHR.scala 291:31]
  wire  _new_self_meta_clientStates_0_T_19 = meta_self_clientStates_0[1] & _client_shrink_perm_T_7; // @[MSHR.scala 209:16]
  wire [1:0] _new_self_meta_clientStates_0_T_23 = _new_self_meta_clientStates_0_T & req_param != 3'h2 ? 2'h1 : 2'h0; // @[MSHR.scala 211:8]
  wire [1:0] _new_self_meta_clientStates_0_T_24 = _new_self_meta_clientStates_0_T_19 ? meta_self_clientStates_0 :
    _new_self_meta_clientStates_0_T_23; // @[MSHR.scala 208:61]
  wire [1:0] _new_self_meta_clientStates_0_T_25 = meta_self_hit ? _new_self_meta_clientStates_0_T_24 :
    meta_self_clientStates_0; // @[MSHR.scala 300:21]
  wire  probeack_last = io_resps_sink_c_valid & ~w_probeacklast; // @[MSHR.scala 1301:49]
  wire  sinkc_resp_last = probeack_last & io_resps_sink_c_bits_last; // @[MSHR.scala 1309:43]
  wire  _T_224 = req_valid & sinkc_resp_last; // @[MSHR.scala 1311:18]
  wire [2:0] client_probeack_param_vec_0 = req_valid & sinkc_resp_last ? io_resps_sink_c_bits_param :
    client_probeack_param_vec_reg_0; // @[MSHR.scala 1311:38 1313:43 131:46]
  wire [1:0] _new_clients_meta_0_state_T_24 = client_probeack_param_vec_0 == 3'h0 | client_probeack_param_vec_0 == 3'h4
     ? 2'h1 : 2'h0; // @[MSHR.scala 216:8]
  wire [1:0] _new_clients_meta_0_state_T_25 = meta_clients_states_0_hit ? _new_clients_meta_0_state_T_24 :
    meta_reg_clients_states_0_state; // @[MSHR.scala 304:23]
  wire  _new_self_meta_dirty_T_13 = meta_self_dirty | probe_dirty; // @[MSHR.scala 316:54]
  wire  _new_self_meta_dirty_T_14 = req_promoteT ? 1'h0 : meta_self_dirty | probe_dirty; // @[MSHR.scala 316:14]
  wire  _new_self_meta_dirty_T_16 = meta_self_hit ? _new_self_meta_dirty_T_14 : probe_dirty; // @[MSHR.scala 315:12]
  wire  _new_self_meta_dirty_T_17 = req_needT ? 1'h0 : _new_self_meta_dirty_T_16; // @[MSHR.scala 313:10]
  wire  _new_self_meta_dirty_T_20 = probe_dirty | _new_self_meta_dirty_T; // @[MSHR.scala 322:33]
  wire  _new_self_meta_dirty_T_21 = req_put | _new_self_meta_dirty_T_20; // @[MSHR.scala 320:10]
  wire  _new_self_meta_dirty_T_22 = req_acquire ? _new_self_meta_dirty_T_17 : _new_self_meta_dirty_T_21; // @[MSHR.scala 311:31]
  wire [1:0] _new_self_meta_state_T_30 = req_acquire ? 2'h2 : 2'h3; // @[MSHR.scala 327:10]
  wire [1:0] _new_self_meta_state_T_34 = req_acquire & promoteT_safe ? 2'h2 : 2'h3; // @[MSHR.scala 337:24]
  wire [1:0] _new_self_meta_state_T_35 = gotT ? _new_self_meta_state_T_34 : highest_perm_reg; // @[MSHR.scala 337:14]
  wire [1:0] _new_self_meta_state_T_38 = gotT ? _new_self_meta_state_T_34 : 2'h1; // @[MSHR.scala 338:14]
  wire [1:0] _new_self_meta_state_T_39 = transmit_from_other_client ? _new_self_meta_state_T_35 :
    _new_self_meta_state_T_38; // @[MSHR.scala 335:12]
  wire  _new_self_meta_state_T_40 = meta_no_clients & req_acquire; // @[MSHR.scala 353:29]
  wire [1:0] _new_self_meta_state_T_41 = _new_self_meta_state_T_40 ? 2'h2 : 2'h3; // @[MSHR.scala 352:21]
  wire [1:0] _new_self_meta_state_T_45 = 2'h2 == meta_self_state ? 2'h3 : 2'h1; // @[Mux.scala 81:58]
  wire [1:0] _new_self_meta_state_T_47 = 2'h3 == meta_self_state ? _new_self_meta_state_T_41 : _new_self_meta_state_T_45
    ; // @[Mux.scala 81:58]
  wire [1:0] _new_self_meta_state_T_48 = _prefetch_miss_need_probe_vec_T_5 ? _new_self_meta_state_T_39 :
    _new_self_meta_state_T_47; // @[MSHR.scala 334:10]
  wire [1:0] _new_self_meta_state_T_49 = req_needT ? _new_self_meta_state_T_30 : _new_self_meta_state_T_48; // @[MSHR.scala 325:31]
  wire [1:0] _GEN_28 = inv_self_dir ? 2'h0 : _new_self_meta_state_T_49; // @[MSHR.scala 359:23 325:25 360:27]
  wire [1:0] _new_self_meta_clientStates_0_T_27 = req_needT | req_promoteT ? 2'h3 : 2'h1; // @[MSHR.scala 367:16]
  wire [1:0] _new_self_meta_clientStates_0_T_29 = meta_reg_clients_states_0_hit ? 2'h1 : 2'h0; // @[MSHR.scala 370:18]
  wire [1:0] _new_self_meta_clientStates_0_T_30 = meta_reg_clients_states_0_hit ? meta_reg_clients_states_0_state : 2'h0
    ; // @[MSHR.scala 371:18]
  wire [1:0] _new_self_meta_clientStates_0_T_31 = _transmit_from_other_client_T_1 ? _new_self_meta_clientStates_0_T_29
     : _new_self_meta_clientStates_0_T_30; // @[MSHR.scala 368:16]
  wire [1:0] _new_self_meta_clientStates_0_T_32 = req_acquire ? _new_self_meta_clientStates_0_T_27 :
    _new_self_meta_clientStates_0_T_31; // @[MSHR.scala 366:23]
  wire  _new_self_meta_clientStates_0_T_33 = req_acquire | req_put; // @[MSHR.scala 381:25]
  wire  _new_self_meta_clientStates_0_T_36 = _req_needT_T_9 | req_promoteT | req_put; // @[MSHR.scala 383:50]
  wire  _new_self_meta_clientStates_0_T_37 = meta_reg_clients_states_0_hit & a_do_probe; // @[MSHR.scala 385:43]
  wire [1:0] _new_self_meta_clientStates_0_T_38 = meta_reg_clients_states_0_hit & a_do_probe ?
    _new_clients_meta_0_state_T_24 : 2'h0; // @[MSHR.scala 385:18]
  wire [1:0] _new_self_meta_clientStates_0_T_39 = _new_self_meta_clientStates_0_T_36 ? 2'h0 :
    _new_self_meta_clientStates_0_T_38; // @[MSHR.scala 382:16]
  wire [1:0] _new_self_meta_clientStates_0_T_44 = _client_shrink_perm_T_7 ? _new_clients_meta_0_state_T_24 : 2'h0; // @[MSHR.scala 390:48]
  wire [1:0] _new_self_meta_clientStates_0_T_45 = prefetch_miss_need_probe ? _new_self_meta_clientStates_0_T_44 :
    meta_reg_clients_states_0_state; // @[MSHR.scala 390:18]
  wire [1:0] _new_self_meta_clientStates_0_T_46 = _transmit_from_other_client_T_1 ? _new_self_meta_clientStates_0_T_38
     : _new_self_meta_clientStates_0_T_45; // @[MSHR.scala 387:16]
  wire [1:0] _new_self_meta_clientStates_0_T_47 = _new_self_meta_clientStates_0_T_33 ?
    _new_self_meta_clientStates_0_T_39 : _new_self_meta_clientStates_0_T_46; // @[MSHR.scala 380:23]
  wire [1:0] _GEN_29 = _highest_perm_except_me_T_1 ? _new_self_meta_clientStates_0_T_32 :
    _new_self_meta_clientStates_0_T_47; // @[MSHR.scala 365:27 366:17 380:17]
  wire [1:0] _new_clients_meta_0_state_T_28 = req_acquire ? _new_self_meta_clientStates_0_T_27 :
    meta_reg_clients_states_0_state; // @[MSHR.scala 399:25]
  wire [1:0] _new_clients_meta_0_state_T_34 = _new_self_meta_clientStates_0_T_37 ? 2'h0 :
    meta_reg_clients_states_0_state; // @[MSHR.scala 415:18]
  wire [1:0] _new_clients_meta_0_state_T_36 = _new_self_meta_clientStates_0_T_37 ? _new_clients_meta_0_state_T_24 :
    meta_reg_clients_states_0_state; // @[MSHR.scala 417:18]
  wire [1:0] _new_clients_meta_0_state_T_37 = _new_self_meta_clientStates_0_T_36 ? _new_clients_meta_0_state_T_34 :
    _new_clients_meta_0_state_T_36; // @[MSHR.scala 413:16]
  wire [1:0] _new_clients_meta_0_state_T_41 = _new_self_meta_clientStates_0_T_33 ? _new_clients_meta_0_state_T_37 :
    _new_self_meta_clientStates_0_T_45; // @[MSHR.scala 411:25]
  wire [1:0] _GEN_30 = _highest_perm_except_me_T_1 ? _new_clients_meta_0_state_T_28 : _new_clients_meta_0_state_T_41; // @[MSHR.scala 398:27 399:19 411:19]
  wire [1:0] _GEN_31 = _transmit_from_other_client_T_1 ? _new_clients_meta_0_state_T_36 : _GEN_30; // @[MSHR.scala 424:35 425:19]
  wire  _GEN_32 = req_channel[1] ? req_fromProbeHelper & ~probeAckDataThrough & (_new_self_meta_dirty_T | probe_dirty)
     : _new_self_meta_dirty_T_22; // @[MSHR.scala 290:25 311:25 437:25]
  wire [1:0] _GEN_33 = req_channel[1] ? _new_self_meta_state_T_29 : _GEN_28; // @[MSHR.scala 291:25 437:25]
  wire [1:0] _GEN_34 = req_channel[1] ? _new_self_meta_clientStates_0_T_25 : _GEN_29; // @[MSHR.scala 300:15 437:25]
  wire [1:0] _GEN_35 = req_channel[1] ? _new_clients_meta_0_state_T_25 : _GEN_31; // @[MSHR.scala 304:17 437:25]
  wire  new_self_meta_dirty = req_channel[2] ? _GEN_24 : _GEN_32; // @[MSHR.scala 431:19]
  wire [1:0] new_self_meta_state = req_channel[2] ? _GEN_25 : _GEN_33; // @[MSHR.scala 431:19]
  wire [1:0] new_self_meta_clientStates_0 = req_channel[2] ? _GEN_26 : _GEN_34; // @[MSHR.scala 431:19]
  reg [2:0] sink; // @[MSHR.scala 455:17]
  reg  bad_grant; // @[MSHR.scala 457:26]
  wire [1:0] _new_self_dir_clientStates_0_T_2 = meta_self_hit & _other_clients_hit_T ? new_self_meta_clientStates_0 :
    meta_self_clientStates_0; // @[MSHR.scala 464:21]
  wire [29:0] debug_addr_hi = {req_tag,req_set}; // @[Cat.scala 31:58]
  wire  _change_self_meta_T_2 = io_nestedwb_set == req_set; // @[MSHR.scala 476:21]
  wire  _change_self_meta_T_3 = meta_valid & _new_self_meta_state_T_23 & _change_self_meta_T_2; // @[MSHR.scala 475:68]
  wire [21:0] meta_self_tag = _GEN_7; // @[MSHR.scala 70:14]
  wire  change_self_meta = _change_self_meta_T_3 & io_nestedwb_tag == meta_self_tag; // @[MSHR.scala 476:33]
  wire [29:0] _nested_client_match_T = {io_nestedwb_tag,io_nestedwb_set}; // @[Cat.scala 31:58]
  wire  nested_client_match = _nested_client_match_T[29:8] == _GEN_12 & _change_self_meta_T_2; // @[MSHR.scala 478:87]
  wire  change_clients_meta_0 = meta_valid & _client_shrink_perm_T_5 & nested_client_match; // @[MSHR.scala 483:44]
  wire  _GEN_43 = io_nestedwb_bclr_dirty ? 1'h0 : _GEN_2; // @[MSHR.scala 486:35 487:27]
  wire  _GEN_44 = io_nestedwb_bset_dirty | _GEN_43; // @[MSHR.scala 489:35 490:27]
  wire  _GEN_45 = io_nestedwb_c_set_dirty | _GEN_44; // @[MSHR.scala 492:35 493:27]
  reg  nested_c_hit_reg; // @[MSHR.scala 505:33]
  wire  _T_40 = meta_valid & _prefetch_miss_need_probe_vec_T_5 & req_channel[0] & _change_self_meta_T_2; // @[MSHR.scala 507:51]
  wire  _T_41 = _T_40 & io_nestedwb_c_set_hit; // @[MSHR.scala 508:33]
  wire  nested_c_hit = _T_41 | nested_c_hit_reg; // @[MSHR.scala 509:5 510:18]
  reg  s_acquire; // @[MSHR.scala 528:26]
  reg  s_probe; // @[MSHR.scala 529:24]
  reg  s_release; // @[MSHR.scala 530:26]
  reg  s_wbselfdir; // @[MSHR.scala 534:28]
  reg  s_wbselftag; // @[MSHR.scala 535:28]
  reg  s_wbclientsdir; // @[MSHR.scala 536:31]
  reg  s_wbclientstag; // @[MSHR.scala 537:31]
  reg  w_probeackfirst; // @[MSHR.scala 544:32]
  reg  w_probeack; // @[MSHR.scala 546:27]
  reg  w_grantfirst; // @[MSHR.scala 547:29]
  reg  w_grant; // @[MSHR.scala 549:24]
  reg  acquire_flag; // @[MSHR.scala 555:29]
  wire  _T_42 = ~s_acquire; // @[MSHR.scala 599:8]
  wire  _GEN_60 = ~s_acquire | acquire_flag; // @[MSHR.scala 599:20 555:29 599:35]
  wire  bypassPut = req_put & _prefetch_miss_need_probe_vec_T_5 & ~clients_hit; // @[MSHR.scala 704:45]
  reg  bypassPut_latch_reg; // @[MSHR.scala 1445:22]
  wire  bypassPut_all = io_dirResult_valid ? bypassPut : bypassPut_latch_reg; // @[MSHR.scala 706:26]
  wire  preferCache = req_preferCache & ~bypassPut_all; // @[MSHR.scala 708:38]
  wire  bypassGet = _transmit_from_other_client_T_1 & ~preferCache; // @[MSHR.scala 709:38]
  wire  acquirePermMiss = _req_acquire_T_1 & _prefetch_miss_need_probe_vec_T_5; // @[MSHR.scala 722:52]
  wire  meta_self_error = 1'h0; // @[MSHR.scala 70:14]
  wire  _GEN_63 = req_channel[2] ? 1'h0 : 1'h1; // @[MSHR.scala 563:15 847:22 848:19]
  wire  _GEN_64 = req_channel[1] ? 1'h0 : 1'h1; // @[MSHR.scala 562:16 850:22 851:20]
  wire  _GEN_65 = req_acquire ? 1'h0 : 1'h1; // @[MSHR.scala 582:16 855:26 856:22]
  wire  _GEN_66 = req_channel[0] ? 1'h0 : _GEN_63; // @[MSHR.scala 853:23 854:19]
  wire  _GEN_67 = req_channel[0] ? _GEN_65 : 1'h1; // @[MSHR.scala 582:16 853:23]
  wire  _GEN_68 = meta_clients_states_0_hit ? 1'h0 : 1'h1; // @[MSHR.scala 560:13 605:24 606:19]
  wire  _GEN_69 = meta_self_hit ? 1'h0 : 1'h1; // @[MSHR.scala 565:17 613:25 614:19]
  wire  _GEN_70 = _req_needT_T_9 & meta_self_hit ? 1'h0 : 1'h1; // @[MSHR.scala 561:15 618:46 619:17]
  wire  _GEN_71 = client_shrink_perm ? 1'h0 : 1'h1; // @[MSHR.scala 567:20 628:30 629:22]
  wire  _T_56 = _prefetch_miss_need_probe_vec_T_5 & req_opcode[0]; // @[MSHR.scala 633:27]
  wire  _GEN_72 = _prefetch_miss_need_probe_vec_T_5 & req_opcode[0] ? 1'h0 : 1'h1; // @[MSHR.scala 566:17 633:45 634:21]
  wire  _GEN_73 = meta_self_hit | req_opcode[0] ? 1'h0 : 1'h1; // @[MSHR.scala 565:17 636:44 637:21]
  wire  _T_63 = _T_56 & _new_self_meta_state_T_23; // @[MSHR.scala 640:41]
  wire  _T_64 = _T_63 & replace_need_release; // @[MSHR.scala 641:39]
  wire  _GEN_74 = _T_64 ? 1'h0 : 1'h1; // @[MSHR.scala 561:15 642:9 643:19]
  wire  will_save_release = io_releaseThrough & io_dirResult_valid & req_channel[2] ? 1'h0 : 1'h1; // @[MSHR.scala 876:62 884:23]
  wire  _GEN_75 = will_save_release ? _GEN_72 : 1'h1; // @[MSHR.scala 566:17 631:29]
  wire  _GEN_76 = will_save_release ? _GEN_73 : 1'h1; // @[MSHR.scala 565:17 631:29]
  wire  _GEN_77 = will_save_release ? _GEN_74 : 1'h1; // @[MSHR.scala 561:15 631:29]
  wire  _GEN_78 = req_opcode[0] ? 1'h0 : 1'h1; // @[MSHR.scala 570:20 649:25 650:22]
  wire  _will_release_through_T_1 = req_param <= 3'h2; // @[Bundles.scala 114:29]
  wire  will_release_through = io_releaseThrough & io_dirResult_valid & req_channel[2] & (~other_clients_hit &
    _will_release_through_T_1); // @[MSHR.scala 876:62 879:26]
  wire  _GEN_79 = will_release_through & req_opcode[0] ? 1'h0 : _GEN_77; // @[MSHR.scala 659:49 660:20]
  wire  _GEN_80 = req_fromCmoHelper ? _GEN_68 : 1'h1; // @[MSHR.scala 560:13 861:33]
  wire  _GEN_81 = req_fromCmoHelper ? _GEN_68 : _GEN_71; // @[MSHR.scala 861:33]
  wire  _GEN_82 = req_fromCmoHelper ? _GEN_69 : _GEN_76; // @[MSHR.scala 861:33]
  wire  _GEN_83 = req_fromCmoHelper ? _GEN_70 : _GEN_77; // @[MSHR.scala 861:33]
  wire  _GEN_84 = req_fromCmoHelper ? _GEN_70 : _GEN_79; // @[MSHR.scala 861:33]
  wire  _GEN_86 = req_fromCmoHelper | _GEN_75; // @[MSHR.scala 566:17 861:33]
  wire  _GEN_87 = req_fromCmoHelper | _GEN_78; // @[MSHR.scala 570:20 861:33]
  wire  _will_probeack_through_T = highest_perm != 2'h0; // @[MSHR.scala 903:107]
  wire  _GEN_242 = req_channel[1] & (clients_have_T | req_needProbeAckData & highest_perm != 2'h0 &
    _prefetch_miss_need_probe_vec_T_5); // @[MSHR.scala 902:21 903:29]
  wire  will_probeack_through = io_dirResult_valid & _GEN_242; // @[MSHR.scala 901:28]
  wire  _T_70 = ~will_probeack_through; // @[MSHR.scala 671:10]
  wire  _T_71 = ~req_fromProbeHelper; // @[MSHR.scala 671:36]
  wire  _GEN_88 = ~will_probeack_through & ~req_fromProbeHelper ? 1'h0 : 1'h1; // @[MSHR.scala 562:16 671:58 672:18]
  wire  _T_77 = _client_shrink_perm_T_1 | meta_self_state[1] & _req_needT_T_3; // @[MSHR.scala 220:18]
  wire  _T_78 = meta_self_state == 2'h1; // @[MSHR.scala 224:11]
  wire  _GEN_89 = _T_77 ? 1'h0 : 1'h1; // @[MSHR.scala 565:17 675:58 676:21]
  wire  _GEN_90 = meta_self_hit ? _GEN_89 : 1'h1; // @[MSHR.scala 565:17 674:25]
  wire  _GEN_91 = clients_hit ? 1'h0 : 1'h1; // @[MSHR.scala 560:13 694:48 695:17]
  wire  _GEN_92 = ~(meta_self_hit & meta_self_state[0] & _req_needT_T_3) ? _GEN_91 : 1'h1; // @[MSHR.scala 560:13 685:71]
  wire  _T_113 = prefetch_need_data | transmit_from_other_client; // @[MSHR.scala 732:32]
  wire  _T_115 = preferCache & (_req_acquire_T | _transmit_from_other_client_T_1) | _T_113; // @[MSHR.scala 730:78]
  wire  _T_116 = _prefetch_miss_need_probe_vec_T_5 & _new_self_meta_state_T_23 & replace_need_release & _T_115; // @[MSHR.scala 728:80]
  wire  _GEN_93 = _T_116 ? 1'h0 : 1'h1; // @[MSHR.scala 561:15 737:6 738:17]
  wire  _T_120 = req_needT ? ~highest_perm_except_me[1] : highest_perm_except_me == 2'h0; // @[MSHR.scala 747:12]
  wire  _T_124 = req_needT ? _prefetch_miss_need_acquire_T_3 : _prefetch_miss_need_acquire_T_1; // @[MSHR.scala 748:12]
  wire  _T_125 = req_acquire ? _T_120 : _T_124; // @[MSHR.scala 745:10]
  wire  _T_126 = ~bypassGet; // @[MSHR.scala 755:13]
  wire  _T_127 = ~bypassPut; // @[MSHR.scala 755:27]
  wire  _GEN_95 = ~bypassGet & ~bypassPut ? 1'h0 : 1'h1; // @[MSHR.scala 564:16 755:39 756:20]
  wire  _T_129 = ~acquirePermMiss; // @[MSHR.scala 760:12]
  wire  _GEN_96 = ~acquirePermMiss & (meta_self_hit & ~_transmit_from_other_client_T_1 | preferCache) ? 1'h0 : 1'h1; // @[MSHR.scala 565:17 760:91 761:21]
  wire  _GEN_97 = _T_125 ? 1'h0 : 1'h1; // @[MSHR.scala 559:15 750:7 751:17]
  wire  _GEN_98 = _T_125 ? _GEN_95 : 1'h1; // @[MSHR.scala 564:16 750:7]
  wire  _GEN_99 = _T_125 ? _GEN_96 : 1'h1; // @[MSHR.scala 565:17 750:7]
  wire  _T_136 = ~req_put; // @[MSHR.scala 767:37]
  wire  _T_145 = _req_needT_T_2 & prefetch_miss_need_probe; // @[MSHR.scala 773:37]
  wire  _T_146 = req_acquire & (req_needT | _prefetch_miss_need_probe_vec_T_5 | meta_clients_states_0_state[1]) | _T_145
    ; // @[MSHR.scala 772:81]
  wire  _T_147 = meta_clients_states_0_hit & _T_146; // @[MSHR.scala 771:24]
  wire  _GEN_100 = _prefetch_miss_need_probe_vec_T_5 ? 1'h0 : _GEN_99; // @[MSHR.scala 717:25 718:19]
  wire  _GEN_101 = _prefetch_miss_need_probe_vec_T_5 ? 1'h0 : 1'h1; // @[MSHR.scala 566:17 717:25 719:19]
  wire  _GEN_103 = _T_147 ? 1'h0 : 1'h1; // @[MSHR.scala 560:13 713:13 775:15]
  wire  _GEN_104 = _T_147 ? _GEN_100 : _GEN_99; // @[MSHR.scala 775:15]
  wire  _GEN_105 = _T_147 ? _GEN_101 : 1'h1; // @[MSHR.scala 775:15 566:17]
  wire  _GEN_112 = _other_clients_hit_T & _T_147; // @[MSHR.scala 769:29]
  wire  _GEN_113 = _other_clients_hit_T ? _GEN_103 : 1'h1; // @[MSHR.scala 769:29]
  wire  _GEN_114 = _other_clients_hit_T ? _GEN_104 : _GEN_99; // @[MSHR.scala 769:29]
  wire  _GEN_115 = _other_clients_hit_T ? _GEN_105 : 1'h1; // @[MSHR.scala 769:29]
  wire  _T_154 = meta_clients_states_0_hit & (meta_clients_states_0_state[1] | _prefetch_miss_need_probe_vec_T_5 |
    req_put); // @[MSHR.scala 787:26]
  wire  _GEN_118 = meta_self_hit ? 1'h0 : _GEN_100; // @[MSHR.scala 789:33 790:27]
  wire  _GEN_120 = meta_clients_states_0_hit & (meta_clients_states_0_state[1] | _prefetch_miss_need_probe_vec_T_5 |
    req_put) ? 1'h0 : 1'h1; // @[MSHR.scala 560:13 713:13 787:77]
  wire  _GEN_121 = meta_clients_states_0_hit & (meta_clients_states_0_state[1] | _prefetch_miss_need_probe_vec_T_5 |
    req_put) ? _GEN_118 : _GEN_99; // @[MSHR.scala 787:77]
  wire  _GEN_122 = meta_clients_states_0_hit & (meta_clients_states_0_state[1] | _prefetch_miss_need_probe_vec_T_5 |
    req_put) ? _GEN_101 : 1'h1; // @[MSHR.scala 566:17 787:77]
  wire  _GEN_123 = req_opcode != 3'h4 & ~req_put ? _GEN_112 : _T_154; // @[MSHR.scala 767:47]
  wire  _GEN_124 = req_opcode != 3'h4 & ~req_put ? _GEN_113 : _GEN_120; // @[MSHR.scala 767:47]
  wire  _GEN_125 = req_opcode != 3'h4 & ~req_put ? _GEN_114 : _GEN_121; // @[MSHR.scala 767:47]
  wire  _GEN_126 = req_opcode != 3'h4 & ~req_put ? _GEN_115 : _GEN_122; // @[MSHR.scala 767:47]
  wire  _GEN_127 = _T_129 & (meta_self_hit | preferCache) ? 1'h0 : _GEN_125; // @[MSHR.scala 799:64 800:21]
  wire  _GEN_128 = _prefetch_miss_need_probe_vec_T_14 ? 1'h0 : 1'h1; // @[MSHR.scala 568:20 803:36 804:24]
  wire  _GEN_129 = req_acquire ? _GEN_127 : _GEN_125; // @[MSHR.scala 797:23]
  wire  _GEN_130 = req_acquire ? 1'h0 : _GEN_124; // @[MSHR.scala 797:23 802:22]
  wire  _GEN_131 = req_acquire ? _GEN_128 : 1'h1; // @[MSHR.scala 568:20 797:23]
  wire  _T_165 = _transmit_from_other_client_T_1 | _req_acquire_T | prefetch_need_data; // @[MSHR.scala 810:60]
  wire  _T_166 = _prefetch_miss_need_probe_vec_T_5 & preferCache & _T_165; // @[MSHR.scala 809:37]
  wire  _GEN_132 = _T_166 ? 1'h0 : _GEN_126; // @[MSHR.scala 811:7 812:19]
  wire  _GEN_133 = bypassPut ? 1'h0 : 1'h1; // @[MSHR.scala 569:19 815:21 816:21]
  wire  _GEN_134 = req_put & _T_127 ? 1'h0 : 1'h1; // @[MSHR.scala 583:18 818:33 819:20]
  wire  _GEN_135 = req_put & meta_self_hit & ~meta_self_dirty ? 1'h0 : _GEN_129; // @[MSHR.scala 822:56 823:19]
  wire  _GEN_136 = ~(_req_needT_T_2 & clients_hit) ? _req_needT_T_2 : 1'h1; // @[MSHR.scala 563:15 727:15 869:54]
  wire  _GEN_137 = ~(_req_needT_T_2 & clients_hit) ? _GEN_93 : 1'h1; // @[MSHR.scala 561:15 869:54]
  wire  _GEN_138 = ~(_req_needT_T_2 & clients_hit) & _T_116; // @[MSHR.scala 596:18 869:54]
  wire  _GEN_139 = ~(_req_needT_T_2 & clients_hit) ? _GEN_97 : 1'h1; // @[MSHR.scala 559:15 869:54]
  wire  _GEN_140 = ~(_req_needT_T_2 & clients_hit) ? _GEN_98 : 1'h1; // @[MSHR.scala 564:16 869:54]
  wire  _GEN_141 = ~(_req_needT_T_2 & clients_hit) ? _GEN_135 : 1'h1; // @[MSHR.scala 565:17 869:54]
  wire  _GEN_142 = ~(_req_needT_T_2 & clients_hit) & _GEN_123; // @[MSHR.scala 597:16 869:54]
  wire  _GEN_143 = ~(_req_needT_T_2 & clients_hit) ? _GEN_124 : 1'h1; // @[MSHR.scala 560:13 869:54]
  wire  _GEN_144 = ~(_req_needT_T_2 & clients_hit) ? _GEN_132 : 1'h1; // @[MSHR.scala 566:17 869:54]
  wire  _GEN_145 = ~(_req_needT_T_2 & clients_hit) ? _GEN_130 : 1'h1; // @[MSHR.scala 567:20 869:54]
  wire  _GEN_146 = ~(_req_needT_T_2 & clients_hit) ? _GEN_65 : 1'h1; // @[MSHR.scala 582:16 869:54]
  wire  _GEN_147 = ~(_req_needT_T_2 & clients_hit) ? _GEN_131 : 1'h1; // @[MSHR.scala 568:20 869:54]
  wire  _GEN_148 = ~(_req_needT_T_2 & clients_hit) ? _GEN_133 : 1'h1; // @[MSHR.scala 569:19 869:54]
  wire  _GEN_149 = ~(_req_needT_T_2 & clients_hit) ? _GEN_134 : 1'h1; // @[MSHR.scala 583:18 869:54]
  wire  _GEN_150 = req_channel[1] ? _GEN_88 : 1'h1; // @[MSHR.scala 562:16 866:29]
  wire  _GEN_151 = req_channel[1] ? _GEN_90 : _GEN_141; // @[MSHR.scala 866:29]
  wire  _GEN_152 = req_channel[1] ? _GEN_92 : _GEN_143; // @[MSHR.scala 866:29]
  wire  _GEN_153 = req_channel[1] ? _GEN_92 : _GEN_145; // @[MSHR.scala 866:29]
  wire  _GEN_154 = req_channel[1] | _GEN_136; // @[MSHR.scala 563:15 866:29]
  wire  _GEN_155 = req_channel[1] | _GEN_137; // @[MSHR.scala 561:15 866:29]
  wire  _GEN_157 = req_channel[1] | _GEN_139; // @[MSHR.scala 559:15 866:29]
  wire  _GEN_158 = req_channel[1] | _GEN_140; // @[MSHR.scala 564:16 866:29]
  wire  _GEN_160 = req_channel[1] | _GEN_144; // @[MSHR.scala 566:17 866:29]
  wire  _GEN_161 = req_channel[1] | _GEN_146; // @[MSHR.scala 582:16 866:29]
  wire  _GEN_162 = req_channel[1] | _GEN_147; // @[MSHR.scala 568:20 866:29]
  wire  _GEN_163 = req_channel[1] | _GEN_148; // @[MSHR.scala 569:19 866:29]
  wire  _GEN_164 = req_channel[1] | _GEN_149; // @[MSHR.scala 583:18 866:29]
  wire  _GEN_165 = req_channel[2] ? _GEN_80 : _GEN_152; // @[MSHR.scala 860:23]
  wire  _GEN_166 = req_channel[2] ? _GEN_81 : _GEN_153; // @[MSHR.scala 860:23]
  wire  _GEN_167 = req_channel[2] ? _GEN_82 : _GEN_151; // @[MSHR.scala 860:23]
  wire  _GEN_168 = req_channel[2] ? _GEN_83 : _GEN_155; // @[MSHR.scala 860:23]
  wire  _GEN_169 = req_channel[2] ? _GEN_84 : _GEN_155; // @[MSHR.scala 860:23]
  wire  _GEN_170 = req_channel[2] ? req_fromCmoHelper : _GEN_154; // @[MSHR.scala 860:23]
  wire  _GEN_171 = req_channel[2] ? _GEN_86 : _GEN_160; // @[MSHR.scala 860:23]
  wire  _GEN_172 = req_channel[2] ? _GEN_87 : 1'h1; // @[MSHR.scala 570:20 860:23]
  wire  _GEN_173 = req_channel[2] | _GEN_150; // @[MSHR.scala 562:16 860:23]
  wire  _GEN_175 = req_channel[2] | _GEN_157; // @[MSHR.scala 559:15 860:23]
  wire  _GEN_176 = req_channel[2] | _GEN_158; // @[MSHR.scala 564:16 860:23]
  wire  _GEN_178 = req_channel[2] | _GEN_161; // @[MSHR.scala 582:16 860:23]
  wire  _GEN_179 = req_channel[2] | _GEN_162; // @[MSHR.scala 568:20 860:23]
  wire  _GEN_180 = req_channel[2] | _GEN_163; // @[MSHR.scala 569:19 860:23]
  wire  _GEN_181 = req_channel[2] | _GEN_164; // @[MSHR.scala 583:18 860:23]
  wire  _GEN_182 = _GEN_8 ? _GEN_66 : _GEN_170; // @[MSHR.scala 846:48]
  wire  _GEN_183 = _GEN_8 ? _GEN_64 : _GEN_173; // @[MSHR.scala 846:48]
  wire  _GEN_184 = _GEN_8 ? _GEN_67 : _GEN_178; // @[MSHR.scala 846:48]
  wire  _GEN_185 = _GEN_8 | _GEN_165; // @[MSHR.scala 560:13 846:48]
  wire  _GEN_186 = _GEN_8 | _GEN_166; // @[MSHR.scala 567:20 846:48]
  wire  _GEN_187 = _GEN_8 | _GEN_167; // @[MSHR.scala 565:17 846:48]
  wire  _GEN_188 = _GEN_8 | _GEN_168; // @[MSHR.scala 561:15 846:48]
  wire  _GEN_189 = _GEN_8 | _GEN_169; // @[MSHR.scala 581:18 846:48]
  wire  _GEN_190 = _GEN_8 | _GEN_171; // @[MSHR.scala 566:17 846:48]
  wire  _GEN_191 = _GEN_8 | _GEN_172; // @[MSHR.scala 570:20 846:48]
  wire  _GEN_193 = _GEN_8 | _GEN_175; // @[MSHR.scala 559:15 846:48]
  wire  _GEN_194 = _GEN_8 | _GEN_176; // @[MSHR.scala 564:16 846:48]
  wire  _GEN_196 = _GEN_8 | _GEN_179; // @[MSHR.scala 568:20 846:48]
  wire  _GEN_197 = _GEN_8 | _GEN_180; // @[MSHR.scala 569:19 846:48]
  wire  _GEN_198 = _GEN_8 | _GEN_181; // @[MSHR.scala 583:18 846:48]
  wire  _GEN_199 = io_dirResult_valid ? _GEN_193 : s_acquire; // @[MSHR.scala 528:26 842:28]
  wire  _GEN_200 = io_dirResult_valid ? _GEN_185 : s_probe; // @[MSHR.scala 529:24 842:28]
  wire  _GEN_201 = io_dirResult_valid ? _GEN_188 : s_release; // @[MSHR.scala 530:26 842:28]
  wire  _GEN_202 = io_dirResult_valid ? _GEN_183 : s_probeack; // @[MSHR.scala 531:27 842:28]
  wire  _GEN_203 = io_dirResult_valid ? _GEN_182 : s_execute; // @[MSHR.scala 532:26 842:28]
  wire  _GEN_204 = io_dirResult_valid ? _GEN_194 : s_grantack; // @[MSHR.scala 533:27 842:28]
  wire  _GEN_205 = io_dirResult_valid ? _GEN_187 : s_wbselfdir; // @[MSHR.scala 534:28 842:28]
  wire  _GEN_206 = io_dirResult_valid ? _GEN_190 : s_wbselftag; // @[MSHR.scala 535:28 842:28]
  wire  _GEN_207 = io_dirResult_valid ? _GEN_186 : s_wbclientsdir; // @[MSHR.scala 842:28 536:31]
  wire  _GEN_208 = io_dirResult_valid ? _GEN_196 : s_wbclientstag; // @[MSHR.scala 842:28 537:31]
  wire  _GEN_209 = io_dirResult_valid ? _GEN_197 : s_transferput; // @[MSHR.scala 842:28 538:30]
  wire  _GEN_210 = io_dirResult_valid ? _GEN_191 : s_writerelease; // @[MSHR.scala 842:28 539:31]
  wire  _GEN_211 = io_dirResult_valid | s_writeprobe; // @[MSHR.scala 571:18 842:28 540:29]
  wire  _GEN_215 = io_dirResult_valid ? _GEN_193 : w_grantfirst; // @[MSHR.scala 842:28 547:29]
  wire  _GEN_216 = io_dirResult_valid ? _GEN_193 : w_grantlast; // @[MSHR.scala 548:28 842:28]
  wire  _GEN_217 = io_dirResult_valid ? _GEN_193 : w_grant; // @[MSHR.scala 549:24 842:28]
  wire  _GEN_218 = io_dirResult_valid ? _GEN_189 : w_releaseack; // @[MSHR.scala 842:28 550:29]
  wire  _GEN_219 = io_dirResult_valid ? _GEN_184 : w_grantack; // @[MSHR.scala 551:27 842:28]
  wire  _GEN_220 = io_dirResult_valid ? _GEN_198 : w_putwritten; // @[MSHR.scala 842:28 552:29]
  wire  _GEN_221 = io_dirResult_valid ? _GEN_191 : w_sinkcack; // @[MSHR.scala 553:27 842:28]
  wire  _GEN_222 = io_dirResult_valid | promoteT_safe; // @[MSHR.scala 586:19 842:28 83:30]
  wire  _GEN_223 = io_dirResult_valid ? 1'h0 : gotT; // @[MSHR.scala 587:10 84:21 842:28]
  wire  _GEN_226 = io_dirResult_valid ? 1'h0 : bad_grant; // @[MSHR.scala 590:15 457:26 842:28]
  wire  _GEN_228 = io_dirResult_valid ? 1'h0 : inv_self_dir; // @[MSHR.scala 592:18 842:28 130:29]
  wire  will_drop_release = io_releaseThrough & io_dirResult_valid & req_channel[2] & ~will_release_through; // @[MSHR.scala 876:62 881:23]
  wire  _will_save_probeack_T_2 = will_probeack_through & _highest_perm_T & meta_self_hit; // @[MSHR.scala 905:78]
  wire  _GEN_239 = req_fromProbeHelper ? will_probeack_through & (_prefetch_miss_need_probe_vec_T_5 |
    io_probeAckDataThrough) : will_probeack_through; // @[MSHR.scala 906:33 907:29 911:29]
  wire  _GEN_243 = req_channel[1] & _T_70; // @[MSHR.scala 902:21 904:26]
  wire  will_drop_probeack = io_dirResult_valid & _GEN_243; // @[MSHR.scala 901:28]
  wire  _GEN_244 = req_channel[1] ? will_probeack_through & _highest_perm_T & meta_self_hit & _req_needT_T_3 : 1'h1; // @[MSHR.scala 902:21 905:26]
  wire  will_save_probeack = io_dirResult_valid ? _GEN_244 : 1'h1; // @[MSHR.scala 901:28]
  wire  _GEN_241 = req_fromProbeHelper ? _will_save_probeack_T_2 : will_save_probeack; // @[MSHR.scala 906:33 909:26 913:26]
  wire  _probeAckDataSave_T_4 = ~probeAckDataDrop; // @[MSHR.scala 916:51]
  wire  clients_meta_busy = |(_prefetch_miss_need_probe_vec_T_14 & _client_shrink_perm_T_5); // @[MSHR.scala 928:88]
  wire  _client_dir_conflict_T_3 = req_channel[0] & req_acquire & clients_meta_busy; // @[MSHR.scala 930:30]
  reg  client_dir_conflict; // @[Reg.scala 16:16]
  reg  probe_helper_finish; // @[MSHR.scala 933:36]
  wire  client_set_match = req_set == io_bstatus_set; // @[MSHR.scala 934:56]
  wire  _GEN_258 = req_valid & io_bstatus_probeHelperFinish & client_set_match | probe_helper_finish; // @[MSHR.scala 935:71 936:25 933:36]
  wire  can_start = client_dir_conflict ? probe_helper_finish : 1'h1; // @[MSHR.scala 945:22]
  wire  _io_tasks_source_a_valid_T_1 = ~s_transferput; // @[MSHR.scala 946:58]
  wire  _io_tasks_sink_c_valid_T_4 = ~s_writeprobe; // @[MSHR.scala 957:95]
  wire [2:0] _acquire_opcode_T_1 = _req_needT_T_2 ? 3'h6 : req_opcode; // @[MSHR.scala 994:35]
  wire [2:0] acquire_opcode = req_put ? 3'h6 : _acquire_opcode_T_1; // @[MSHR.scala 994:8]
  wire [1:0] _acquire_param_T_2 = highest_perm_reg == 2'h1 ? 2'h2 : 2'h1; // @[MSHR.scala 1005:25]
  wire [1:0] _acquire_param_T_3 = req_needT ? _acquire_param_T_2 : 2'h0; // @[MSHR.scala 1005:10]
  wire [2:0] _acquire_param_T_7 = req_put ? 3'h1 : req_param; // @[MSHR.scala 1006:71]
  wire [2:0] _acquire_param_T_8 = _req_acquire_T & _client_shrink_perm_T_1 ? 3'h1 : _acquire_param_T_7; // @[MSHR.scala 1006:10]
  wire [2:0] acquire_param = _req_needT_T_2 ? {{1'd0}, _acquire_param_T_3} : _acquire_param_T_8; // @[MSHR.scala 1004:8]
  wire [2:0] _io_tasks_source_a_bits_opcode_T_3 = _transmit_from_other_client_T_1 ? 3'h6 : acquire_opcode; // @[MSHR.scala 1019:8]
  wire [2:0] _io_tasks_source_a_bits_param_T_2 = _transmit_from_other_client_T_1 ? 3'h0 : acquire_param; // @[MSHR.scala 1036:8]
  wire [1:0] _io_tasks_source_bparam_T_4 = _client_shrink_perm_T_7 ? 2'h1 : 2'h2; // @[MSHR.scala 1059:10]
  wire [1:0] _io_tasks_source_bparam_T_6 = _req_needT_T_3 ? 2'h1 : 2'h2; // @[MSHR.scala 1061:12]
  wire [1:0] _io_tasks_source_bparam_T_8 = req_needT ? 2'h2 : 2'h1; // @[MSHR.scala 1062:12]
  wire [1:0] _io_tasks_source_bparam_T_9 = req_fromCmoHelper ? _io_tasks_source_bparam_T_6 :
    _io_tasks_source_bparam_T_8; // @[MSHR.scala 1060:10]
  wire [1:0] _io_tasks_source_bparam_T_10 = _req_needT_T_2 ? _io_tasks_source_bparam_T_4 :
    _io_tasks_source_bparam_T_9; // @[MSHR.scala 1057:8]
  wire  x_probe_clients_0 = _req_needT_T_3 ? _clients_have_T_T_1 : meta_clients_states_0_hit; // @[MSHR.scala 1072:18]
  wire  _probe_clients_T_3 = req_channel[0] & _req_needT_T_2; // @[MSHR.scala 1076:17]
  reg  probe_clients; // @[Reg.scala 16:16]
  wire [1:0] _io_tasks_source_c_bits_opcode_T_2 = req_fromProbeHelper ? 2'h3 : 2'h2; // @[MSHR.scala 1097:10]
  wire  _io_tasks_source_c_bits_opcode_T_7 = probe_dirty & _probeAckDataSave_T_4 | _new_self_meta_dirty_T |
    req_needProbeAckData; // @[MSHR.scala 1098:77]
  wire  _io_tasks_source_c_bits_opcode_T_9 = _io_tasks_source_c_bits_opcode_T_7 & _will_probeack_through_T; // @[MSHR.scala 1099:50]
  wire [2:0] _io_tasks_source_c_bits_opcode_T_10 = {_io_tasks_source_c_bits_opcode_T_2,
    _io_tasks_source_c_bits_opcode_T_9}; // @[Cat.scala 31:58]
  wire [2:0] _io_tasks_source_c_bits_opcode_T_11 = {2'h3,meta_self_dirty}; // @[Cat.scala 31:58]
  wire  _probeack_param_T_2 = highest_perm[1] & _client_shrink_perm_T_7; // @[MSHR.scala 209:16]
  wire [1:0] _probeack_param_T_6 = _will_probeack_through_T & req_param != 3'h2 ? 2'h1 : 2'h0; // @[MSHR.scala 211:8]
  wire [1:0] _probeack_param_T_7 = _probeack_param_T_2 ? highest_perm : _probeack_param_T_6; // @[MSHR.scala 208:61]
  wire [3:0] _probeack_param_T_8 = {highest_perm,_probeack_param_T_7}; // @[Cat.scala 31:58]
  wire [2:0] _probeack_param_T_19 = 4'ha == _probeack_param_T_8 ? 3'h3 : 3'h5; // @[Mux.scala 81:58]
  wire [2:0] _probeack_param_T_21 = 4'hf == _probeack_param_T_8 ? 3'h3 : _probeack_param_T_19; // @[Mux.scala 81:58]
  wire [2:0] _probeack_param_T_23 = 4'h9 == _probeack_param_T_8 ? 3'h0 : _probeack_param_T_21; // @[Mux.scala 81:58]
  wire [2:0] _probeack_param_T_25 = 4'hd == _probeack_param_T_8 ? 3'h0 : _probeack_param_T_23; // @[Mux.scala 81:58]
  wire [2:0] _probeack_param_T_27 = 4'h8 == _probeack_param_T_8 ? 3'h1 : _probeack_param_T_25; // @[Mux.scala 81:58]
  wire [2:0] _probeack_param_T_29 = 4'hc == _probeack_param_T_8 ? 3'h1 : _probeack_param_T_27; // @[Mux.scala 81:58]
  wire [2:0] _probeack_param_T_31 = 4'h5 == _probeack_param_T_8 ? 3'h4 : _probeack_param_T_29; // @[Mux.scala 81:58]
  wire [2:0] _probeack_param_T_33 = 4'h4 == _probeack_param_T_8 ? 3'h2 : _probeack_param_T_31; // @[Mux.scala 81:58]
  wire [2:0] probeack_param = 4'h0 == _probeack_param_T_8 ? 3'h5 : _probeack_param_T_33; // @[Mux.scala 81:58]
  wire  _io_tasks_source_d_bits_useBypass_T_7 = ~probe_dirty | acquire_flag & io_tasks_source_a_bits_opcode != 3'h7; // @[MSHR.scala 1132:19]
  wire  _io_tasks_source_d_bits_useBypass_T_8 = (_prefetch_miss_need_probe_vec_T_5 | _T_78 & req_needT) &
    _io_tasks_source_d_bits_useBypass_T_7; // @[MSHR.scala 1131:79]
  wire [1:0] io_tasks_source_d_bits_channel_hi = {req_channel[2],1'h0}; // @[Cat.scala 31:58]
  wire [2:0] io_tasks_source_d_bits_opcode_grantOp = _client_shrink_perm_T_1 & _req_acquire_T_1 ? 3'h4 : 3'h5; // @[MSHR.scala 1148:10]
  wire [2:0] _GEN_262 = 3'h2 == req_opcode ? 3'h1 : 3'h0; // @[MSHR.scala 1152:{8,8}]
  wire [2:0] _GEN_263 = 3'h3 == req_opcode ? 3'h1 : _GEN_262; // @[MSHR.scala 1152:{8,8}]
  wire [2:0] _GEN_264 = 3'h4 == req_opcode ? 3'h1 : _GEN_263; // @[MSHR.scala 1152:{8,8}]
  wire [2:0] _GEN_265 = 3'h5 == req_opcode ? 3'h2 : _GEN_264; // @[MSHR.scala 1152:{8,8}]
  wire [2:0] _GEN_266 = 3'h6 == req_opcode ? io_tasks_source_d_bits_opcode_grantOp : _GEN_265; // @[MSHR.scala 1152:{8,8}]
  wire [2:0] _GEN_267 = 3'h7 == req_opcode ? 3'h4 : _GEN_266; // @[MSHR.scala 1152:{8,8}]
  wire  _io_tasks_source_d_bits_param_T = ~req_acquire; // @[MSHR.scala 1158:7]
  wire [1:0] _io_tasks_source_d_bits_param_T_1 = req_promoteT ? 2'h0 : 2'h1; // @[MSHR.scala 1160:54]
  wire [2:0] _io_tasks_source_d_bits_param_T_3 = 3'h0 == req_param ? {{1'd0}, _io_tasks_source_d_bits_param_T_1} :
    req_param; // @[Mux.scala 81:58]
  wire [2:0] _io_tasks_source_d_bits_param_T_5 = 3'h2 == req_param ? 3'h0 : _io_tasks_source_d_bits_param_T_3; // @[Mux.scala 81:58]
  wire [2:0] _io_tasks_source_d_bits_param_T_7 = 3'h1 == req_param ? 3'h0 : _io_tasks_source_d_bits_param_T_5; // @[Mux.scala 81:58]
  wire  _io_tasks_source_d_bits_dirty_T_5 = _client_shrink_perm_T_7 & ~req_promoteT ? 1'h0 : _new_self_meta_dirty_T_13; // @[MSHR.scala 1170:10]
  wire  _io_tasks_source_d_bits_dirty_T_7 = meta_self_hit ? _io_tasks_source_d_bits_dirty_T_5 : probe_dirty; // @[MSHR.scala 1168:8]
  wire  _io_tasks_sink_c_bits_bufIdx_T = io_resps_sink_c_valid & io_resps_sink_c_bits_hasData; // @[MSHR.scala 1197:66]
  reg [2:0] io_tasks_sink_c_bits_bufIdx_r; // @[Reg.scala 16:16]
  wire [2:0] _io_tasks_sink_c_bits_opcode_T_1 = req_fromProbeHelper | req_fromCmoHelper ? 3'h7 : 3'h5; // @[MSHR.scala 1201:8]
  wire  _io_tasks_sink_c_bits_dirty_T_1 = req_dirty | _new_self_meta_dirty_T; // @[MSHR.scala 1219:15]
  wire  _T_209 = io_tasks_source_a_ready & io_tasks_source_a_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_269 = _T_209 | _GEN_199; // @[MSHR.scala 1255:34 1256:15]
  wire  _T_210 = io_tasks_source_bready & io_tasks_source_bvalid; // @[Decoupled.scala 50:35]
  wire  _T_215 = io_tasks_source_c_ready & io_tasks_source_c_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_273 = _T_215 | _GEN_202; // @[MSHR.scala 1263:34 1265:16]
  wire  _T_216 = io_tasks_source_d_ready & io_tasks_source_d_valid; // @[Decoupled.scala 50:35]
  wire  _T_217 = io_tasks_source_e_ready & io_tasks_source_e_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_275 = _T_217 | _GEN_204; // @[MSHR.scala 1270:34 1271:16]
  wire  _T_218 = io_tasks_dir_write_ready & io_tasks_dir_write_valid; // @[Decoupled.scala 50:35]
  wire  _T_219 = io_tasks_tag_write_ready & io_tasks_tag_write_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_277 = _T_219 | _GEN_206; // @[MSHR.scala 1276:35 1277:17]
  wire  _T_220 = io_tasks_client_dir_write_ready & io_tasks_client_dir_write_valid; // @[Decoupled.scala 50:35]
  wire  _T_221 = io_tasks_client_tag_write_ready & io_tasks_client_tag_write_valid; // @[Decoupled.scala 50:35]
  wire  _T_222 = io_tasks_sink_c_ready & io_tasks_sink_c_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_280 = _io_tasks_sink_c_valid_T_4 | _GEN_211; // @[MSHR.scala 1286:25 1287:20]
  wire  _GEN_282 = _T_222 ? _GEN_280 : _GEN_211; // @[MSHR.scala 1285:32]
  wire  _GEN_285 = _T_224 & io_resps_sink_c_bits_hasData | someClientHasProbeAckData; // @[MSHR.scala 1316:70 1317:31 191:42]
  wire  _T_232 = req_channel[1] & req_fromProbeHelper; // @[MSHR.scala 1325:22]
  wire  _GEN_286 = req_channel[1] & req_fromProbeHelper & probeAckDataThrough | req_fromCmoHelper & probeAckDataThrough
     ? 1'h0 : _GEN_218; // @[MSHR.scala 1325:112 1326:22]
  wire  _GEN_287 = req_fromProbeHelper ? 1'h0 : _GEN_218; // @[MSHR.scala 1334:34 1335:24]
  wire  _GEN_289 = req_channel[1] & (probeAckDataThrough & io_resps_sink_c_bits_param != 3'h5 | _T_71) ? _GEN_287 :
    _GEN_218; // @[MSHR.scala 1329:112]
  wire  _GEN_291 = someClientHasProbeAckData | io_resps_sink_c_bits_hasData ? 1'h0 : _GEN_221; // @[MSHR.scala 1321:68 1324:18]
  wire  _GEN_292 = someClientHasProbeAckData | io_resps_sink_c_bits_hasData ? _GEN_286 : _GEN_289; // @[MSHR.scala 1321:68]
  wire  _GEN_295 = _T_224 & probeack_last ? _GEN_291 : _GEN_221; // @[MSHR.scala 1320:55]
  wire  _GEN_296 = _T_224 & probeack_last ? _GEN_292 : _GEN_218; // @[MSHR.scala 1320:55]
  wire  _wprobeack_T = req_off == 6'h0; // @[MSHR.scala 1345:72]
  wire  _T_248 = ~acquire_flag & req_channel[0] & probeack_last; // @[MSHR.scala 1348:34]
  wire  _T_250 = ~io_resps_sink_c_bits_hasData; // @[MSHR.scala 1349:39]
  wire  _T_252 = ~nested_c_hit; // @[MSHR.scala 1349:56]
  wire  _T_255 = _T_248 & io_resps_sink_c_bits_last & ~io_resps_sink_c_bits_hasData & ~nested_c_hit &
    _prefetch_miss_need_probe_vec_T_5; // @[MSHR.scala 1349:70]
  wire  _GEN_301 = _T_255 ? 1'h0 : _GEN_215; // @[MSHR.scala 1350:7 1356:20]
  wire  _GEN_302 = _T_255 ? 1'h0 : _GEN_216; // @[MSHR.scala 1350:7 1357:19]
  wire  _GEN_303 = _T_255 ? 1'h0 : _GEN_217; // @[MSHR.scala 1350:7 1358:15]
  wire  _T_272 = req_channel[0] & probeack_last & io_resps_sink_c_bits_last & _T_250 & _T_252 &
    _prefetch_miss_need_probe_vec_T_5; // @[MSHR.scala 1368:81]
  wire  _GEN_306 = ~(preferCache | meta_self_hit) | _GEN_277; // @[MSHR.scala 1370:45 1372:21]
  wire  _GEN_307 = ~(preferCache | meta_self_hit) | _GEN_228; // @[MSHR.scala 1370:45 1375:22]
  wire  _GEN_317 = req_valid & probeack_last ? _GEN_301 : _GEN_215; // @[MSHR.scala 1340:40]
  wire  _GEN_318 = req_valid & probeack_last ? _GEN_302 : _GEN_216; // @[MSHR.scala 1340:40]
  wire  _GEN_319 = req_valid & probeack_last ? _GEN_303 : _GEN_217; // @[MSHR.scala 1340:40]
  wire  _GEN_326 = io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 |
    io_resps_sink_d_bits_opcode == 3'h1 | io_resps_sink_d_bits_opcode == 3'h0 | _GEN_317; // @[MSHR.scala 1381:188 1383:20]
  wire  _GEN_333 = io_resps_sink_d_bits_opcode == 3'h6 | _GEN_296; // @[MSHR.scala 1393:54 1394:20]
  wire  _GEN_347 = will_be_free ? 1'h0 : req_valid; // @[MSHR.scala 1418:22 1420:15 52:26]
  wire  clientBitOH = ~io_alloc_bits_source[9]; // @[Parameters.scala 54:32]
  reg  preferCache_latch; // @[MSHR.scala 1469:34]
  reg  transmit_from_other_client_latch; // @[MSHR.scala 1470:49]
  wire  _io_status_bits_will_save_data_T_2 = preferCache_latch | meta_self_hit; // @[MSHR.scala 1481:68]
  wire  _io_status_bits_nestB_T = w_releaseack & w_probeacklast; // @[MSHR.scala 1490:19]
  wire  _io_status_bits_nestB_T_1 = meta_valid & _io_status_bits_nestB_T; // @[MSHR.scala 1489:38]
  wire  _io_status_bits_nestB_T_4 = ~w_grantfirst; // @[MSHR.scala 1491:6]
  wire  _io_status_bits_nestB_T_6 = client_dir_conflict & ~probe_helper_finish; // @[MSHR.scala 1491:44]
  wire  _io_status_bits_nestB_T_7 = ~w_grantfirst | client_dir_conflict & ~probe_helper_finish; // @[MSHR.scala 1491:20]
  wire  _io_status_bits_nestC_T = meta_valid & w_releaseack; // @[MSHR.scala 1494:38]
  wire  _io_status_bits_nestC_T_6 = ~w_probeackfirst | _io_status_bits_nestB_T_4 | _io_status_bits_nestB_T_6; // @[MSHR.scala 1497:41]
  wire  nest_c_set_match = io_c_status_set == req_set; // @[MSHR.scala 1506:42]
  wire  nest_c_tag_match = io_c_status_tag == req_tag; // @[MSHR.scala 1507:42]
  wire [2:0] meta_self_way = _GEN_6; // @[MSHR.scala 70:14]
  wire  nest_c_way_match = io_c_status_way == meta_self_way; // @[MSHR.scala 1508:42]
  wire  _a_c_through_T_3 = nest_c_tag_match & _prefetch_miss_need_probe_vec_T_5; // @[MSHR.scala 1511:24]
  reg  a_c_through_reg; // @[MSHR.scala 1434:24]
  wire  _a_c_through_T_11 = meta_self_hit | a_c_through_reg; // @[MSHR.scala 1440:19]
  wire  _a_c_through_T_14 = ~nest_c_tag_match & nest_c_way_match & (preferCache_latch & _T_129 | _a_c_through_T_11 |
    transmit_from_other_client_latch); // @[MSHR.scala 1512:45]
  wire  _a_c_through_T_15 = nest_c_tag_match & _prefetch_miss_need_probe_vec_T_5 & ~nest_c_way_match | _a_c_through_T_14
    ; // @[MSHR.scala 1511:63]
  wire  _a_c_through_T_19 = nest_c_tag_match & nest_c_way_match & _prefetch_miss_need_probe_vec_T_5 & a_do_release; // @[MSHR.scala 1513:62]
  wire  _a_c_through_T_20 = _a_c_through_T_15 | _a_c_through_T_19; // @[MSHR.scala 1512:177]
  wire  a_c_through = req_channel[0] & _a_c_through_T_20; // @[MSHR.scala 1510:31]
  wire  b_c_through = req_channel[1] & (_a_c_through_T_3 | nest_c_way_match & meta_self_hit != nest_c_tag_match); // @[MSHR.scala 1516:31]
  wire  _io_c_status_releaseThrough_T = req_valid & io_c_status_nestedReleaseData; // @[MSHR.scala 1518:43]
  wire  _io_c_status_releaseThrough_T_1 = _io_c_status_releaseThrough_T & nest_c_set_match; // @[MSHR.scala 1519:35]
  wire  _io_c_status_releaseThrough_T_2 = a_c_through | b_c_through; // @[MSHR.scala 1521:18]
  wire  _io_bstatus_probeAckDataThrough_T = io_bstatus_set == req_set; // @[MSHR.scala 1525:21]
  wire  _io_bstatus_probeAckDataThrough_T_1 = req_valid & _io_bstatus_probeAckDataThrough_T; // @[MSHR.scala 1524:48]
  wire  _io_bstatus_probeAckDataThrough_T_4 = io_bstatus_way == meta_self_way; // @[MSHR.scala 1526:21]
  wire  _io_bstatus_probeAckDataThrough_T_5 = _io_bstatus_probeAckDataThrough_T_1 & io_bstatus_tag != req_tag &
    _io_bstatus_probeAckDataThrough_T_4; // @[MSHR.scala 1525:64]
  wire  _io_bstatus_probeAckDataThrough_T_6 = _io_bstatus_probeAckDataThrough_T_5 & io_bstatus_nestedProbeAckData; // @[MSHR.scala 1526:39]
  wire  _io_bstatus_probeAckDataThrough_T_9 = _io_bstatus_probeAckDataThrough_T_6 & req_channel[0]; // @[MSHR.scala 1527:36]
  assign io_status_valid = req_valid; // @[MSHR.scala 1473:19]
  assign io_status_bits_set = req_set; // @[MSHR.scala 1475:22]
  assign io_status_bits_tag = req_tag; // @[MSHR.scala 1476:22]
  assign io_status_bits_way = meta_self_way; // @[MSHR.scala 1478:22]
  assign io_status_bits_way_reg = meta_reg_self_way; // @[MSHR.scala 1479:26]
  assign io_status_bits_is_miss = ~meta_self_hit; // @[MSHR.scala 1477:29]
  assign io_status_bits_nestB = _io_status_bits_nestB_T_1 & s_writeprobe & w_sinkcack & _io_status_bits_nestB_T_7; // @[MSHR.scala 1490:68]
  assign io_status_bits_nestC = _io_status_bits_nestC_T & _io_status_bits_nestC_T_6; // @[MSHR.scala 1495:18]
  assign io_status_bits_will_grant_data = req_channel[0] & io_tasks_source_d_bits_opcode[0] &
    io_tasks_source_d_bits_useBypass; // @[MSHR.scala 1480:63]
  assign io_status_bits_will_save_data = req_channel[0] & (preferCache_latch | meta_self_hit) & _T_129; // @[MSHR.scala 1481:86]
  assign io_status_bits_will_free = no_wait & no_schedule; // @[MSHR.scala 1417:27]
  assign io_tasks_sink_a_valid = 1'h0; // @[MSHR.scala 956:25]
  assign io_tasks_sink_a_bits_sourceId = req_source; // @[MSHR.scala 1181:15]
  assign io_tasks_sink_a_bits_set = req_set; // @[MSHR.scala 1182:10]
  assign io_tasks_sink_a_bits_tag = req_tag; // @[MSHR.scala 1183:10]
  assign io_tasks_sink_a_bits_size = req_size; // @[MSHR.scala 1184:11]
  assign io_tasks_sink_a_bits_off = req_off; // @[MSHR.scala 1185:10]
  assign io_tasks_source_bvalid = io_enable & ~s_probe & s_release; // @[MSHR.scala 947:52]
  assign io_tasks_source_bset = req_set; // @[MSHR.scala 1049:10]
  assign io_tasks_source_btag = req_tag; // @[MSHR.scala 1048:10]
  assign io_tasks_source_bparam = req_channel[1] ? req_param : {{1'd0}, _io_tasks_source_bparam_T_10}; // @[MSHR.scala 1054:18]
  assign io_tasks_source_bclients = probe_clients; // @[MSHR.scala 1089:14]
  assign io_tasks_source_bneedData = a_need_data & _prefetch_miss_need_probe_vec_T_5 | req_channel[1] &
    req_needProbeAckData; // @[MSHR.scala 1091:37]
  assign io_tasks_sink_c_valid = io_enable & (~s_writerelease & (~releaseSave | s_release) | ~s_writeprobe); // @[MSHR.scala 957:38]
  assign io_tasks_sink_c_bits_sourceId = 10'h0;
  assign io_tasks_sink_c_bits_set = req_set; // @[MSHR.scala 1189:10]
  assign io_tasks_sink_c_bits_tag = req_tag; // @[MSHR.scala 1190:10]
  assign io_tasks_sink_c_bits_size = req_size; // @[MSHR.scala 1191:11]
  assign io_tasks_sink_c_bits_way = meta_self_way; // @[MSHR.scala 1193:10]
  assign io_tasks_sink_c_bits_off = req_off; // @[MSHR.scala 1192:10]
  assign io_tasks_sink_c_bits_bufIdx = s_writeprobe ? req_bufIdx : io_tasks_sink_c_bits_bufIdx_r; // @[MSHR.scala 1194:19]
  assign io_tasks_sink_c_bits_opcode = s_writeprobe ? req_opcode : _io_tasks_sink_c_bits_opcode_T_1; // @[MSHR.scala 1199:19]
  assign io_tasks_sink_c_bits_param = _io_tasks_sink_c_valid_T_4 ? probeack_param : req_param; // @[MSHR.scala 1210:18]
  assign io_tasks_sink_c_bits_source = io_id; // @[MSHR.scala 1188:13]
  assign io_tasks_sink_c_bits_save = s_writeprobe ? releaseSave : probeAckDataSave; // @[MSHR.scala 1215:17]
  assign io_tasks_sink_c_bits_drop = s_writeprobe ? releaseDrop : probeAckDataDrop; // @[MSHR.scala 1216:17]
  assign io_tasks_sink_c_bits_release = s_writeprobe ? releaseThrough : probeAckDataThrough; // @[MSHR.scala 1217:20]
  assign io_tasks_sink_c_bits_dirty = s_writeprobe ? _io_tasks_sink_c_bits_dirty_T_1 : _new_self_meta_dirty_T_20; // @[MSHR.scala 1218:18]
  assign io_tasks_source_d_valid = io_enable & ~s_execute & can_start & w_grant & s_writeprobe & w_sinkcack &
    w_probeacklast & s_transferput; // @[MSHR.scala 949:126]
  assign io_tasks_source_d_bits_sourceId = req_source; // @[MSHR.scala 1134:15]
  assign io_tasks_source_d_bits_set = req_set; // @[MSHR.scala 1135:10]
  assign io_tasks_source_d_bits_tag = req_tag; // @[MSHR.scala 1136:10]
  assign io_tasks_source_d_bits_channel = {io_tasks_source_d_bits_channel_hi,req_channel[0]}; // @[Cat.scala 31:58]
  assign io_tasks_source_d_bits_opcode = req_channel[0] ? _GEN_267 : 3'h6; // @[MSHR.scala 1152:8]
  assign io_tasks_source_d_bits_param = _io_tasks_source_d_bits_param_T ? req_param : _io_tasks_source_d_bits_param_T_7; // @[MSHR.scala 1157:8]
  assign io_tasks_source_d_bits_size = req_size; // @[MSHR.scala 1162:11]
  assign io_tasks_source_d_bits_way = meta_reg_self_way; // @[MSHR.scala 1163:10]
  assign io_tasks_source_d_bits_off = req_off; // @[MSHR.scala 1164:10]
  assign io_tasks_source_d_bits_useBypass = _io_tasks_source_d_bits_useBypass_T_8 & _T_136; // @[MSHR.scala 1133:54]
  assign io_tasks_source_d_bits_bufIdx = req_bufIdx; // @[MSHR.scala 1176:13]
  assign io_tasks_source_d_bits_denied = bad_grant; // @[MSHR.scala 1165:26]
  assign io_tasks_source_d_bits_sinkId = io_id; // @[MSHR.scala 1130:13]
  assign io_tasks_source_d_bits_bypassPut = bypassPut_latch_reg; // @[MSHR.scala 1451:{26,26}]
  assign io_tasks_source_d_bits_dirty = req_acquire & _io_tasks_source_d_bits_dirty_T_7; // @[MSHR.scala 1166:18]
  assign io_tasks_source_d_bits_isHit = meta_self_hit; // @[MSHR.scala 1175:12]
  assign io_tasks_source_a_valid = io_enable & (_T_42 | ~s_transferput) & s_release & s_probe & w_probeacklast &
    can_start; // @[MSHR.scala 946:116]
  assign io_tasks_source_a_bits_tag = req_tag; // @[MSHR.scala 984:10]
  assign io_tasks_source_a_bits_set = req_set; // @[MSHR.scala 985:10]
  assign io_tasks_source_a_bits_off = req_off; // @[MSHR.scala 986:10]
  assign io_tasks_source_a_bits_mask = req_mask; // @[MSHR.scala 987:11]
  assign io_tasks_source_a_bits_opcode = _io_tasks_source_a_valid_T_1 | bypassGet ? req_opcode :
    _io_tasks_source_a_bits_opcode_T_3; // @[MSHR.scala 1010:19]
  assign io_tasks_source_a_bits_param = _io_tasks_source_a_valid_T_1 ? req_param : _io_tasks_source_a_bits_param_T_2; // @[MSHR.scala 1021:18]
  assign io_tasks_source_a_bits_source = io_id; // @[MSHR.scala 1038:13]
  assign io_tasks_source_a_bits_bufIdx = req_bufIdx; // @[MSHR.scala 1041:13]
  assign io_tasks_source_a_bits_size = req_size; // @[MSHR.scala 1042:11]
  assign io_tasks_source_a_bits_needData = ~_req_acquire_T_1 | req_size != 3'h6; // @[MSHR.scala 1039:48]
  assign io_tasks_source_a_bits_putData = bypassPut_latch_reg; // @[MSHR.scala 1451:{26,26}]
  assign io_tasks_source_a_bits_reqSource = _req_needT_T_2 ? 4'he : req_reqSource; // @[MSHR.scala 1043:22]
  assign io_tasks_source_c_valid = io_enable & (~s_release | ~s_probeack & s_writerelease & w_sinkcack & w_probeack); // @[MSHR.scala 948:40]
  assign io_tasks_source_c_bits_opcode = req_channel[1] ? _io_tasks_source_c_bits_opcode_T_10 :
    _io_tasks_source_c_bits_opcode_T_11; // @[MSHR.scala 1094:19]
  assign io_tasks_source_c_bits_tag = req_channel[1] ? req_tag : meta_self_tag; // @[MSHR.scala 1103:16]
  assign io_tasks_source_c_bits_set = req_set; // @[MSHR.scala 1104:10]
  assign io_tasks_source_c_bits_param = req_channel[1] ? probeack_param : replace_param; // @[MSHR.scala 1121:18]
  assign io_tasks_source_c_bits_source = io_id; // @[MSHR.scala 1126:13]
  assign io_tasks_source_c_bits_way = meta_reg_self_way; // @[MSHR.scala 1127:10]
  assign io_tasks_source_c_bits_dirty = req_channel[1] ? _new_self_meta_dirty_T_20 : meta_self_dirty; // @[MSHR.scala 1128:18]
  assign io_tasks_source_e_valid = ~s_grantack & w_grantfirst; // @[MSHR.scala 950:42]
  assign io_tasks_source_e_bits_sink = sink; // @[MSHR.scala 1179:11]
  assign io_tasks_dir_write_valid = io_enable & ~s_wbselfdir & no_wait & can_start; // @[MSHR.scala 951:68]
  assign io_tasks_dir_write_bits_set = req_set; // @[MSHR.scala 1223:31]
  assign io_tasks_dir_write_bits_way = meta_reg_self_way; // @[MSHR.scala 1224:31]
  assign io_tasks_dir_write_bits_data_dirty = bad_grant ? 1'h0 : new_self_meta_dirty; // @[MSHR.scala 459:19 445:22 460:24]
  assign io_tasks_dir_write_bits_data_state = bad_grant ? meta_self_state : new_self_meta_state; // @[MSHR.scala 459:19 446:22 461:24]
  assign io_tasks_dir_write_bits_data_clientStates_0 = bad_grant ? _new_self_dir_clientStates_0_T_2 :
    new_self_meta_clientStates_0; // @[MSHR.scala 459:19 464:15 447:29]
  assign io_tasks_tag_write_valid = io_enable & ~s_wbselftag & no_wait & can_start; // @[MSHR.scala 952:68]
  assign io_tasks_tag_write_bits_set = req_set; // @[MSHR.scala 1227:31]
  assign io_tasks_tag_write_bits_way = meta_reg_self_way; // @[MSHR.scala 1228:31]
  assign io_tasks_tag_write_bits_tag = req_tag; // @[MSHR.scala 1229:31]
  assign io_tasks_client_dir_write_valid = io_enable & ~s_wbclientsdir & no_wait & can_start; // @[MSHR.scala 953:78]
  assign io_tasks_client_dir_write_bits_set = debug_addr_hi[7:0]; // @[Directory.scala 97:25]
  assign io_tasks_client_dir_write_bits_way = meta_reg_clients_way; // @[Directory.scala 98:14]
  assign io_tasks_client_dir_write_bits_data_0_state = req_channel[2] ? _GEN_27 : _GEN_35; // @[MSHR.scala 431:19]
  assign io_tasks_client_tag_write_valid = io_enable & ~s_wbclientstag & no_wait & can_start; // @[MSHR.scala 954:78]
  assign io_tasks_client_tag_write_bits_set = debug_addr_hi[7:0]; // @[Directory.scala 79:25]
  assign io_tasks_client_tag_write_bits_way = meta_reg_clients_way; // @[Directory.scala 80:14]
  assign io_tasks_client_tag_write_bits_tag = debug_addr_hi[29:8]; // @[Directory.scala 81:25]
  assign io_c_status_releaseThrough = _io_c_status_releaseThrough_T_1 & _io_c_status_releaseThrough_T_2; // @[MSHR.scala 1520:22]
  assign io_bstatus_probeAckDataThrough = _io_bstatus_probeAckDataThrough_T_9 & _io_status_bits_will_save_data_T_2 &
    _T_129; // @[MSHR.scala 1528:55]
  assign io_is_nestedReleaseData = req_channel[2] & req_valid; // @[MSHR.scala 1500:40]
  assign io_is_nestedProbeAckData = req_channel[1] & req_valid; // @[MSHR.scala 1502:60]
  assign io_probeHelperFinish = _T_232 & no_schedule & no_wait; // @[MSHR.scala 1503:75]
  always @(posedge clock) begin
    if (io_alloc_valid) begin // @[MSHR.scala 1458:24]
      req_channel <= io_alloc_bits_channel; // @[MSHR.scala 1460:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1458:24]
      req_opcode <= io_alloc_bits_opcode; // @[MSHR.scala 1460:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1458:24]
      req_param <= io_alloc_bits_param; // @[MSHR.scala 1460:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1458:24]
      req_size <= io_alloc_bits_size; // @[MSHR.scala 1460:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1458:24]
      req_source <= io_alloc_bits_source; // @[MSHR.scala 1460:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1458:24]
      req_set <= io_alloc_bits_set; // @[MSHR.scala 1460:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1458:24]
      req_tag <= io_alloc_bits_tag; // @[MSHR.scala 1460:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1458:24]
      req_off <= io_alloc_bits_off; // @[MSHR.scala 1460:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1458:24]
      req_mask <= io_alloc_bits_mask; // @[MSHR.scala 1460:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1458:24]
      req_bufIdx <= io_alloc_bits_bufIdx; // @[MSHR.scala 1460:9]
    end else if (req_valid & io_resps_sink_d_valid) begin // @[MSHR.scala 1380:44]
      if (io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 | io_resps_sink_d_bits_opcode == 3'h1
         | io_resps_sink_d_bits_opcode == 3'h0) begin // @[MSHR.scala 1381:188]
        if (_T_136) begin // @[MSHR.scala 1389:23]
          req_bufIdx <= io_resps_sink_d_bits_bufIdx; // @[MSHR.scala 1390:20]
        end
      end
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1458:24]
      req_preferCache <= io_alloc_bits_preferCache; // @[MSHR.scala 1460:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1458:24]
      req_dirty <= io_alloc_bits_dirty; // @[MSHR.scala 1460:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1458:24]
      req_fromProbeHelper <= io_alloc_bits_fromProbeHelper; // @[MSHR.scala 1460:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1458:24]
      req_fromCmoHelper <= io_alloc_bits_fromCmoHelper; // @[MSHR.scala 1460:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1458:24]
      req_needProbeAckData <= io_alloc_bits_needProbeAckData; // @[MSHR.scala 1460:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1458:24]
      req_reqSource <= io_alloc_bits_reqSource; // @[MSHR.scala 1460:9]
    end
    if (io_alloc_valid) begin // @[MSHR.scala 1458:24]
      if (~clientBitOH) begin // @[MSHR.scala 1464:15]
        iam <= 2'h2;
      end else begin
        iam <= 2'h0;
      end
    end
    if (change_self_meta) begin // @[MSHR.scala 485:26]
      meta_reg_self_dirty <= _GEN_45;
    end else if (io_dirResult_valid) begin // @[MSHR.scala 66:28]
      meta_reg_self_dirty <= io_dirResult_bits_self_dirty; // @[MSHR.scala 68:14]
    end
    if (change_self_meta) begin // @[MSHR.scala 485:26]
      if (io_nestedwb_btoN) begin // @[MSHR.scala 499:29]
        meta_reg_self_state <= 2'h0; // @[MSHR.scala 500:27]
      end else if (io_nestedwb_btoB) begin // @[MSHR.scala 495:29]
        meta_reg_self_state <= 2'h1; // @[MSHR.scala 496:27]
      end else begin
        meta_reg_self_state <= _GEN_3;
      end
    end else begin
      meta_reg_self_state <= _GEN_3;
    end
    if (change_self_meta) begin // @[MSHR.scala 485:26]
      if (io_nestedwb_btoN) begin // @[MSHR.scala 499:29]
        meta_reg_self_clientStates_0 <= 2'h0; // @[MSHR.scala 502:44]
      end else if (io_nestedwb_btoB) begin // @[MSHR.scala 495:29]
        if (meta_reg_self_clientStates_0[1]) begin // @[MSHR.scala 497:57]
          meta_reg_self_clientStates_0 <= 2'h1;
        end
      end else begin
        meta_reg_self_clientStates_0 <= _GEN_4;
      end
    end else begin
      meta_reg_self_clientStates_0 <= _GEN_4;
    end
    if (change_self_meta) begin // @[MSHR.scala 485:26]
      if (io_nestedwb_btoN) begin // @[MSHR.scala 499:29]
        meta_reg_self_hit <= 1'h0; // @[MSHR.scala 501:25]
      end else begin
        meta_reg_self_hit <= _GEN_5;
      end
    end else begin
      meta_reg_self_hit <= _GEN_5;
    end
    if (io_dirResult_valid) begin // @[MSHR.scala 66:28]
      meta_reg_self_way <= io_dirResult_bits_self_way; // @[MSHR.scala 68:14]
    end
    if (io_dirResult_valid) begin // @[MSHR.scala 66:28]
      meta_reg_self_tag <= io_dirResult_bits_self_tag; // @[MSHR.scala 68:14]
    end
    if (change_clients_meta_0) begin // @[MSHR.scala 516:36]
      if (io_nestedwb_clients_0_isToN) begin // @[MSHR.scala 520:49]
        meta_reg_clients_states_0_state <= 2'h0; // @[MSHR.scala 521:21]
      end else begin
        meta_reg_clients_states_0_state <= _GEN_9;
      end
    end else begin
      meta_reg_clients_states_0_state <= _GEN_9;
    end
    if (change_clients_meta_0) begin // @[MSHR.scala 516:36]
      if (io_nestedwb_clients_0_isToN) begin // @[MSHR.scala 520:49]
        meta_reg_clients_states_0_hit <= 1'h0; // @[MSHR.scala 522:19]
      end else begin
        meta_reg_clients_states_0_hit <= _GEN_10;
      end
    end else begin
      meta_reg_clients_states_0_hit <= _GEN_10;
    end
    if (io_dirResult_valid) begin // @[MSHR.scala 66:28]
      meta_reg_clients_tag <= io_dirResult_bits_clients_tag; // @[MSHR.scala 68:14]
    end
    if (io_dirResult_valid) begin // @[MSHR.scala 66:28]
      meta_reg_clients_way <= io_dirResult_bits_clients_way; // @[MSHR.scala 68:14]
    end
    if (req_valid & io_resps_sink_d_valid) begin // @[MSHR.scala 1380:44]
      if (io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 | io_resps_sink_d_bits_opcode == 3'h1
         | io_resps_sink_d_bits_opcode == 3'h0) begin // @[MSHR.scala 1381:188]
        sink <= io_resps_sink_d_bits_sink; // @[MSHR.scala 1382:12]
      end
    end
    if (io_dirResult_valid) begin // @[Reg.scala 17:18]
      client_dir_conflict <= _client_dir_conflict_T_3; // @[Reg.scala 17:22]
    end
    if (io_dirResult_valid) begin // @[Reg.scala 17:18]
      if (_probe_clients_T_3) begin // @[MSHR.scala 1075:8]
        probe_clients <= prefetch_miss_need_probe_vec_0;
      end else if (req_channel[0]) begin // @[MSHR.scala 1078:10]
        if (2'h0 == iam & req_acquire) begin // @[MSHR.scala 199:10]
          probe_clients <= 1'h0;
        end else begin
          probe_clients <= _a_probe_clients_T_8;
        end
      end else if (req_fromCmoHelper) begin // @[MSHR.scala 1081:12]
        probe_clients <= x_probe_clients_0;
      end else begin
        probe_clients <= meta_clients_states_0_hit;
      end
    end
    if (_io_tasks_sink_c_bits_bufIdx_T) begin // @[Reg.scala 17:18]
      io_tasks_sink_c_bits_bufIdx_r <= io_resps_sink_c_bits_bufIdx; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1458:24]
      req_valid <= 1'h0; // @[MSHR.scala 1459:15]
    end else begin
      req_valid <= io_alloc_valid | _GEN_347;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1418:22]
      meta_valid <= 1'h0; // @[MSHR.scala 1419:16]
    end else if (will_be_free) begin
      meta_valid <= 1'h0;
    end else begin
      meta_valid <= _GEN_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1340:40]
      promoteT_safe <= 1'h1; // @[MSHR.scala 1350:7 1354:21]
    end else if (req_valid & probeack_last) begin
      if (_T_255) begin
        promoteT_safe <= 1'h0;
      end else begin
        promoteT_safe <= _GEN_222;
      end
    end else begin
      promoteT_safe <= _GEN_222;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1380:44]
      gotT <= 1'h0; // @[MSHR.scala 1381:188 1387:12]
    end else if (req_valid & io_resps_sink_d_valid) begin
      if (io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 | io_resps_sink_d_bits_opcode == 3'h1
         | io_resps_sink_d_bits_opcode == 3'h0) begin
        gotT <= io_resps_sink_d_bits_param == 3'h0;
      end else begin
        gotT <= _GEN_223;
      end
    end else begin
      gotT <= _GEN_223;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 842:28]
      a_do_release <= 1'h0; // @[MSHR.scala 596:{18,18,18} 846:48 860:23 866:29]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 86:29]
      if (_GEN_8) begin
        a_do_release <= 1'h0;
      end else if (req_channel[2]) begin
        a_do_release <= 1'h0;
      end else if (req_channel[1]) begin
        a_do_release <= 1'h0;
      end else begin
        a_do_release <= _GEN_138;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 842:28]
      a_do_probe <= 1'h0; // @[MSHR.scala 597:{16,16,16} 846:48 860:23 866:29]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 87:27]
      if (_GEN_8) begin
        a_do_probe <= 1'h0;
      end else if (req_channel[2]) begin
        a_do_probe <= 1'h0;
      end else if (req_channel[1]) begin
        a_do_probe <= 1'h0;
      end else begin
        a_do_probe <= _GEN_142;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1340:40]
      probe_dirty <= 1'h0; // @[MSHR.scala 1346:17]
    end else if (req_valid & probeack_last) begin // @[MSHR.scala 842:28]
      probe_dirty <= probe_dirty | io_resps_sink_c_bits_hasData | nested_c_hit; // @[MSHR.scala 588:17]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 94:28]
      probe_dirty <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1435:31]
      highest_perm_reg_reg <= 2'h0; // @[MSHR.scala 113:12 114:32 ParallelMux.scala 78:45]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 1437:31]
      if (_highest_perm_T_2 > _highest_perm_T_3) begin // @[MSHR.scala 1438:13]
        if (meta_self_hit & ~io_probeAckDataThrough) begin
          highest_perm_reg_reg <= meta_self_state;
        end else begin
          highest_perm_reg_reg <= 2'h0;
        end
      end else if (meta_clients_states_0_hit) begin
        highest_perm_reg_reg <= meta_clients_states_0_state;
      end else begin
        highest_perm_reg_reg <= 2'h0;
      end
    end else if (will_be_free) begin // @[MSHR.scala 1434:24]
      highest_perm_reg_reg <= 2'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1340:40]
      w_probeacklast <= 1'h1; // @[MSHR.scala 1344:20]
    end else if (req_valid & probeack_last) begin // @[MSHR.scala 842:28]
      w_probeacklast <= w_probeacklast | sinkc_resp_last;
    end else if (io_dirResult_valid) begin // @[MSHR.scala 545:31]
      w_probeacklast <= _GEN_185;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1380:44]
      w_grantlast <= 1'h1; // @[MSHR.scala 1381:188 1384:19]
    end else if (req_valid & io_resps_sink_d_valid) begin
      if (io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 | io_resps_sink_d_bits_opcode == 3'h1
         | io_resps_sink_d_bits_opcode == 3'h0) begin
        w_grantlast <= w_grantlast | io_resps_sink_d_bits_last;
      end else begin
        w_grantlast <= _GEN_318;
      end
    end else begin
      w_grantlast <= _GEN_318;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1380:44]
      w_releaseack <= 1'h1;
    end else if (req_valid & io_resps_sink_d_valid) begin // @[MSHR.scala 1320:55]
      w_releaseack <= _GEN_333; // @[MSHR.scala 1321:68 1325:112 1326:22 1329:112]
    end else if (_T_224 & probeack_last) begin
      if (someClientHasProbeAckData | io_resps_sink_c_bits_hasData) begin
        if (req_channel[1] & req_fromProbeHelper & probeAckDataThrough | req_fromCmoHelper & probeAckDataThrough) begin
          w_releaseack <= 1'h0;
        end else begin
          w_releaseack <= _GEN_218;
        end
      end else if (req_channel[1] & (probeAckDataThrough & io_resps_sink_c_bits_param != 3'h5 | _T_71)) begin
        w_releaseack <= _GEN_287;
      end else begin
        w_releaseack <= _GEN_218;
      end
    end else begin
      w_releaseack <= _GEN_218;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1398:31]
      w_grantack <= 1'h1; // @[MSHR.scala 1399:16]
    end else begin
      w_grantack <= io_resps_sink_e_valid | _GEN_219;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1402:33]
      w_putwritten <= 1'h1; // @[MSHR.scala 1403:18]
    end else begin
      w_putwritten <= io_resps_source_d_valid | _GEN_220;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1406:35]
      w_sinkcack <= 1'h1; // @[MSHR.scala 1407:16]
    end else begin
      w_sinkcack <= io_resps_sink_c_ack_valid | _GEN_295;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1320:55]
      s_probeack <= 1'h1; // @[MSHR.scala 1321:68 1329:112 1333:20]
    end else if (_T_224 & probeack_last) begin
      if (someClientHasProbeAckData | io_resps_sink_c_bits_hasData) begin
        s_probeack <= _GEN_273;
      end else if (req_channel[1] & (probeAckDataThrough & io_resps_sink_c_bits_param != 3'h5 | _T_71)) begin
        s_probeack <= 1'h0;
      end else begin
        s_probeack <= _GEN_273;
      end
    end else begin
      s_probeack <= _GEN_273;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1267:34]
      s_execute <= 1'h1; // @[MSHR.scala 1268:15]
    end else begin
      s_execute <= _T_216 | _GEN_203;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1340:40]
      s_grantack <= 1'h1; // @[MSHR.scala 1350:7 1359:45 1360:20]
    end else if (req_valid & probeack_last) begin
      if (_T_255) begin
        if (_T_126 & ~bypassPut_latch_reg) begin
          s_grantack <= 1'h0;
        end else begin
          s_grantack <= _GEN_275;
        end
      end else begin
        s_grantack <= _GEN_275;
      end
    end else begin
      s_grantack <= _GEN_275;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1412:76]
      no_schedule_REG <= 1'h1;
    end else begin
      no_schedule_REG <= s_wbselfdir & s_wbselftag & s_wbclientsdir & s_wbclientstag & meta_valid;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1285:32]
      s_writerelease <= 1'h1; // @[MSHR.scala 1286:25 1289:22]
    end else if (_T_222) begin
      if (_io_tasks_sink_c_valid_T_4) begin
        s_writerelease <= _GEN_210;
      end else begin
        s_writerelease <= 1'h1;
      end
    end else begin
      s_writerelease <= _GEN_210;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1320:55]
      s_writeprobe <= 1'h1; // @[MSHR.scala 1321:68 1323:20]
    end else if (_T_224 & probeack_last) begin
      if (someClientHasProbeAckData | io_resps_sink_c_bits_hasData) begin
        s_writeprobe <= 1'h0;
      end else begin
        s_writeprobe <= _GEN_282;
      end
    end else begin
      s_writeprobe <= _GEN_282;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1255:34]
      s_transferput <= 1'h1; // @[MSHR.scala 1257:19]
    end else begin
      s_transferput <= _T_209 | _GEN_209;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1340:40]
      inv_self_dir <= 1'h0; // @[MSHR.scala 1369:7]
    end else if (req_valid & probeack_last) begin
      if (_T_272) begin
        inv_self_dir <= _GEN_307;
      end else begin
        inv_self_dir <= _GEN_228;
      end
    end else begin
      inv_self_dir <= _GEN_228;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1311:38]
      client_probeack_param_vec_reg_0 <= 3'h0; // @[MSHR.scala 1313:43]
    end else if (req_valid & sinkc_resp_last) begin // @[MSHR.scala 131:46]
      client_probeack_param_vec_reg_0 <= io_resps_sink_c_bits_param;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1435:31]
      transmit_from_other_client_reg <= 1'h0; // @[MSHR.scala 1436:13]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 1437:31]
      transmit_from_other_client_reg <= _transmit_from_other_client_T_6; // @[MSHR.scala 1438:13]
    end else if (will_be_free) begin // @[MSHR.scala 1434:24]
      transmit_from_other_client_reg <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1418:22]
      releaseThrough <= 1'h0; // @[MSHR.scala 1421:20]
    end else if (will_be_free) begin // @[MSHR.scala 876:62]
      releaseThrough <= 1'h0; // @[MSHR.scala 885:20]
    end else if (io_releaseThrough & io_dirResult_valid & req_channel[2]) begin // @[MSHR.scala 178:31]
      releaseThrough <= will_release_through;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1418:22]
      releaseDrop <= 1'h0; // @[MSHR.scala 1422:17]
    end else if (will_be_free) begin // @[MSHR.scala 876:62]
      releaseDrop <= 1'h0; // @[MSHR.scala 886:17]
    end else if (io_releaseThrough & io_dirResult_valid & req_channel[2]) begin // @[MSHR.scala 179:28]
      releaseDrop <= will_drop_release;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1418:22]
      probeAckDataThrough <= 1'h0; // @[MSHR.scala 1423:25]
    end else if (will_be_free) begin // @[MSHR.scala 901:28]
      probeAckDataThrough <= 1'h0; // @[MSHR.scala 902:21 919:29 920:27 187:36]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 187:36]
      if (req_fromCmoHelper) begin
        probeAckDataThrough <= _req_needT_T_9 & (clients_have_T & _prefetch_miss_need_probe_vec_T_5);
      end else if (req_channel[1]) begin
        probeAckDataThrough <= _GEN_239;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1418:22]
      probeAckDataDrop <= 1'h0; // @[MSHR.scala 1424:22]
    end else if (will_be_free) begin // @[MSHR.scala 901:28]
      probeAckDataDrop <= 1'h0; // @[MSHR.scala 902:21 919:29 921:24 188:33]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 188:33]
      if (req_fromCmoHelper) begin
        probeAckDataDrop <= _client_shrink_perm_T_7;
      end else if (req_channel[1]) begin
        probeAckDataDrop <= will_drop_probeack;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1418:22]
      probeAckDataSave <= 1'h0; // @[MSHR.scala 1425:22]
    end else if (will_be_free) begin // @[MSHR.scala 901:28]
      probeAckDataSave <= 1'h0; // @[MSHR.scala 902:21 916:24 919:29 922:24]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 189:33]
      if (req_fromCmoHelper) begin
        probeAckDataSave <= _probeAckDataSave_T_4 & _new_self_meta_dirty_T_8;
      end else if (req_channel[1]) begin
        probeAckDataSave <= _GEN_241;
      end else begin
        probeAckDataSave <= _new_self_meta_dirty_T_8 & ~probeAckDataDrop;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1418:22]
      someClientHasProbeAckData <= 1'h0; // @[MSHR.scala 1427:31]
    end else if (will_be_free) begin
      someClientHasProbeAckData <= 1'h0;
    end else begin
      someClientHasProbeAckData <= _GEN_285;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1380:44]
      bad_grant <= 1'h0; // @[MSHR.scala 1381:188 1386:17]
    end else if (req_valid & io_resps_sink_d_valid) begin
      if (io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 | io_resps_sink_d_bits_opcode == 3'h1
         | io_resps_sink_d_bits_opcode == 3'h0) begin
        bad_grant <= io_resps_sink_d_bits_denied;
      end else begin
        bad_grant <= _GEN_226;
      end
    end else begin
      bad_grant <= _GEN_226;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 842:28]
      nested_c_hit_reg <= 1'h0; // @[MSHR.scala 593:22]
    end else if (io_dirResult_valid) begin
      nested_c_hit_reg <= 1'h0;
    end else begin
      nested_c_hit_reg <= nested_c_hit;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1340:40]
      s_acquire <= 1'h1; // @[MSHR.scala 1350:7 1355:17]
    end else if (req_valid & probeack_last) begin
      if (_T_255) begin
        s_acquire <= 1'h0;
      end else begin
        s_acquire <= _GEN_269;
      end
    end else begin
      s_acquire <= _GEN_269;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1259:34]
      s_probe <= 1'h1; // @[MSHR.scala 1260:13]
    end else begin
      s_probe <= _T_210 | _GEN_200;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1263:34]
      s_release <= 1'h1; // @[MSHR.scala 1264:15]
    end else begin
      s_release <= _T_215 | _GEN_201;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1273:35]
      s_wbselfdir <= 1'h1; // @[MSHR.scala 1274:17]
    end else begin
      s_wbselfdir <= _T_218 | _GEN_205;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1340:40]
      s_wbselftag <= 1'h1; // @[MSHR.scala 1369:7]
    end else if (req_valid & probeack_last) begin
      if (_T_272) begin
        s_wbselftag <= _GEN_306;
      end else begin
        s_wbselftag <= _GEN_277;
      end
    end else begin
      s_wbselftag <= _GEN_277;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1279:41]
      s_wbclientsdir <= 1'h1; // @[MSHR.scala 1280:20]
    end else begin
      s_wbclientsdir <= _T_220 | _GEN_207;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1282:41]
      s_wbclientstag <= 1'h1; // @[MSHR.scala 1283:20]
    end else begin
      s_wbclientstag <= _T_221 | _GEN_208;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1340:40]
      w_probeackfirst <= 1'h1; // @[MSHR.scala 1343:21]
    end else if (req_valid & probeack_last) begin // @[MSHR.scala 842:28]
      w_probeackfirst <= w_probeackfirst | probeack_last;
    end else if (io_dirResult_valid) begin // @[MSHR.scala 544:32]
      w_probeackfirst <= _GEN_185;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1340:40]
      w_probeack <= 1'h1; // @[MSHR.scala 1345:16]
    end else if (req_valid & probeack_last) begin // @[MSHR.scala 842:28]
      w_probeack <= w_probeack | probeack_last & (io_resps_sink_c_bits_last | req_off == 6'h0);
    end else if (io_dirResult_valid) begin // @[MSHR.scala 546:27]
      w_probeack <= _GEN_185;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1380:44]
      w_grantfirst <= 1'h1;
    end else if (req_valid & io_resps_sink_d_valid) begin // @[MSHR.scala 1340:40]
      w_grantfirst <= _GEN_326; // @[MSHR.scala 1350:7 1356:20]
    end else if (req_valid & probeack_last) begin
      if (_T_255) begin
        w_grantfirst <= 1'h0;
      end else begin
        w_grantfirst <= _GEN_215;
      end
    end else begin
      w_grantfirst <= _GEN_215;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1380:44]
      w_grant <= 1'h1; // @[MSHR.scala 1381:188 1385:15]
    end else if (req_valid & io_resps_sink_d_valid) begin
      if (io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 | io_resps_sink_d_bits_opcode == 3'h1
         | io_resps_sink_d_bits_opcode == 3'h0) begin
        w_grant <= _wprobeack_T & req_size == 3'h6 | io_resps_sink_d_bits_last;
      end else begin
        w_grant <= _GEN_319;
      end
    end else begin
      w_grant <= _GEN_319;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 842:28]
      acquire_flag <= 1'h0; // @[MSHR.scala 595:18]
    end else if (io_dirResult_valid) begin
      acquire_flag <= 1'h0;
    end else begin
      acquire_flag <= _GEN_60;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1446:29]
      bypassPut_latch_reg <= 1'h0; // @[MSHR.scala 1447:11]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 1448:29]
      bypassPut_latch_reg <= bypassPut; // @[MSHR.scala 1449:11]
    end else if (will_be_free) begin // @[MSHR.scala 1445:22]
      bypassPut_latch_reg <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1418:22]
      probe_helper_finish <= 1'h0; // @[MSHR.scala 1426:25]
    end else if (will_be_free) begin
      probe_helper_finish <= 1'h0;
    end else begin
      probe_helper_finish <= _GEN_258;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 708:38]
      preferCache_latch <= 1'h0;
    end else begin
      preferCache_latch <= req_preferCache & ~bypassPut_all;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 164:51]
      transmit_from_other_client_latch <= 1'h0;
    end else begin
      transmit_from_other_client_latch <= _prefetch_miss_need_probe_vec_T_5 & _transmit_from_other_client_T_7;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 1435:31]
      a_c_through_reg <= 1'h0; // @[MSHR.scala 1436:13]
    end else if (io_dirResult_valid) begin // @[MSHR.scala 1437:31]
      a_c_through_reg <= meta_self_hit; // @[MSHR.scala 1438:13]
    end else if (will_be_free) begin // @[MSHR.scala 1434:24]
      a_c_through_reg <= 1'h0;
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
  req_channel = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  req_opcode = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  req_param = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  req_size = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  req_source = _RAND_4[9:0];
  _RAND_5 = {1{`RANDOM}};
  req_set = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  req_tag = _RAND_6[21:0];
  _RAND_7 = {1{`RANDOM}};
  req_off = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  req_mask = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  req_bufIdx = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  req_preferCache = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  req_dirty = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  req_fromProbeHelper = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  req_fromCmoHelper = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  req_needProbeAckData = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  req_reqSource = _RAND_15[3:0];
  _RAND_16 = {1{`RANDOM}};
  req_valid = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  iam = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  meta_reg_self_dirty = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  meta_reg_self_state = _RAND_19[1:0];
  _RAND_20 = {1{`RANDOM}};
  meta_reg_self_clientStates_0 = _RAND_20[1:0];
  _RAND_21 = {1{`RANDOM}};
  meta_reg_self_hit = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  meta_reg_self_way = _RAND_22[2:0];
  _RAND_23 = {1{`RANDOM}};
  meta_reg_self_tag = _RAND_23[21:0];
  _RAND_24 = {1{`RANDOM}};
  meta_reg_clients_states_0_state = _RAND_24[1:0];
  _RAND_25 = {1{`RANDOM}};
  meta_reg_clients_states_0_hit = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  meta_reg_clients_tag = _RAND_26[21:0];
  _RAND_27 = {1{`RANDOM}};
  meta_reg_clients_way = _RAND_27[2:0];
  _RAND_28 = {1{`RANDOM}};
  meta_valid = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  promoteT_safe = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  gotT = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  a_do_release = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  a_do_probe = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  probe_dirty = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  highest_perm_reg_reg = _RAND_34[1:0];
  _RAND_35 = {1{`RANDOM}};
  w_probeacklast = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  w_grantlast = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  w_releaseack = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  w_grantack = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  w_putwritten = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  w_sinkcack = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  s_probeack = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  s_execute = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  s_grantack = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  no_schedule_REG = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  s_writerelease = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  s_writeprobe = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  s_transferput = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  inv_self_dir = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  client_probeack_param_vec_reg_0 = _RAND_49[2:0];
  _RAND_50 = {1{`RANDOM}};
  transmit_from_other_client_reg = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  releaseThrough = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  releaseDrop = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  probeAckDataThrough = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  probeAckDataDrop = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  probeAckDataSave = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  someClientHasProbeAckData = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  sink = _RAND_57[2:0];
  _RAND_58 = {1{`RANDOM}};
  bad_grant = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  nested_c_hit_reg = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  s_acquire = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  s_probe = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  s_release = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  s_wbselfdir = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  s_wbselftag = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  s_wbclientsdir = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  s_wbclientstag = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  w_probeackfirst = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  w_probeack = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  w_grantfirst = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  w_grant = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  acquire_flag = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  bypassPut_latch_reg = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  client_dir_conflict = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  probe_helper_finish = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  probe_clients = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  io_tasks_sink_c_bits_bufIdx_r = _RAND_76[2:0];
  _RAND_77 = {1{`RANDOM}};
  preferCache_latch = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  transmit_from_other_client_latch = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  a_c_through_reg = _RAND_79[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    req_valid = 1'h0;
  end
  if (reset) begin
    meta_valid = 1'h0;
  end
  if (reset) begin
    promoteT_safe = 1'h1;
  end
  if (reset) begin
    gotT = 1'h0;
  end
  if (reset) begin
    a_do_release = 1'h0;
  end
  if (reset) begin
    a_do_probe = 1'h0;
  end
  if (reset) begin
    probe_dirty = 1'h0;
  end
  if (reset) begin
    highest_perm_reg_reg = 2'h0;
  end
  if (reset) begin
    w_probeacklast = 1'h1;
  end
  if (reset) begin
    w_grantlast = 1'h1;
  end
  if (reset) begin
    w_releaseack = 1'h1;
  end
  if (reset) begin
    w_grantack = 1'h1;
  end
  if (reset) begin
    w_putwritten = 1'h1;
  end
  if (reset) begin
    w_sinkcack = 1'h1;
  end
  if (reset) begin
    s_probeack = 1'h1;
  end
  if (reset) begin
    s_execute = 1'h1;
  end
  if (reset) begin
    s_grantack = 1'h1;
  end
  if (reset) begin
    no_schedule_REG = 1'h1;
  end
  if (reset) begin
    s_writerelease = 1'h1;
  end
  if (reset) begin
    s_writeprobe = 1'h1;
  end
  if (reset) begin
    s_transferput = 1'h1;
  end
  if (reset) begin
    inv_self_dir = 1'h0;
  end
  if (reset) begin
    client_probeack_param_vec_reg_0 = 3'h0;
  end
  if (reset) begin
    transmit_from_other_client_reg = 1'h0;
  end
  if (reset) begin
    releaseThrough = 1'h0;
  end
  if (reset) begin
    releaseDrop = 1'h0;
  end
  if (reset) begin
    probeAckDataThrough = 1'h0;
  end
  if (reset) begin
    probeAckDataDrop = 1'h0;
  end
  if (reset) begin
    probeAckDataSave = 1'h0;
  end
  if (reset) begin
    someClientHasProbeAckData = 1'h0;
  end
  if (reset) begin
    bad_grant = 1'h0;
  end
  if (reset) begin
    nested_c_hit_reg = 1'h0;
  end
  if (reset) begin
    s_acquire = 1'h1;
  end
  if (reset) begin
    s_probe = 1'h1;
  end
  if (reset) begin
    s_release = 1'h1;
  end
  if (reset) begin
    s_wbselfdir = 1'h1;
  end
  if (reset) begin
    s_wbselftag = 1'h1;
  end
  if (reset) begin
    s_wbclientsdir = 1'h1;
  end
  if (reset) begin
    s_wbclientstag = 1'h1;
  end
  if (reset) begin
    w_probeackfirst = 1'h1;
  end
  if (reset) begin
    w_probeack = 1'h1;
  end
  if (reset) begin
    w_grantfirst = 1'h1;
  end
  if (reset) begin
    w_grant = 1'h1;
  end
  if (reset) begin
    acquire_flag = 1'h0;
  end
  if (reset) begin
    bypassPut_latch_reg = 1'h0;
  end
  if (reset) begin
    probe_helper_finish = 1'h0;
  end
  if (reset) begin
    preferCache_latch = 1'h0;
  end
  if (reset) begin
    transmit_from_other_client_latch = 1'h0;
  end
  if (reset) begin
    a_c_through_reg = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

