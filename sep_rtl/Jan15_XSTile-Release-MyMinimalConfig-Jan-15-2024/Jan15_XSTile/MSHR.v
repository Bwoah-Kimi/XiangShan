module MSHR(
  input         clock,
  input         reset,
  input  [7:0]  io_id,
  output        io_status_valid,
  output [6:0]  io_status_bits_set,
  output [21:0] io_status_bits_reqTag,
  output [21:0] io_status_bits_metaTag,
  output        io_status_bits_needsRepl,
  output        io_status_bits_wc_resp,
  output        io_status_bits_is_miss,
  output        io_msInfo_valid,
  output [6:0]  io_msInfo_bits_set,
  output [2:0]  io_msInfo_bits_way,
  output [21:0] io_msInfo_bits_reqTag,
  output        io_msInfo_bits_willFree,
  output        io_msInfo_bits_needRelease,
  output        io_msInfo_bits_releaseNotSent,
  output [21:0] io_msInfo_bits_metaTag,
  output        io_msInfo_bits_dirHit,
  output        io_msInfo_bits_nestB,
  output        io_msInfo_bits_mergeB,
  output        io_msInfo_bits_isAcqOrPrefetch,
  output        io_msInfo_bits_isPrefetch,
  input         io_alloc_valid,
  input         io_alloc_bits_dirResult_hit,
  input  [21:0] io_alloc_bits_dirResult_tag,
  input  [6:0]  io_alloc_bits_dirResult_set,
  input  [2:0]  io_alloc_bits_dirResult_way,
  input         io_alloc_bits_dirResult_meta_dirty,
  input  [1:0]  io_alloc_bits_dirResult_meta_state,
  input         io_alloc_bits_dirResult_meta_clients,
  input         io_alloc_bits_dirResult_meta_accessed,
  input         io_alloc_bits_state_s_acquire,
  input         io_alloc_bits_state_s_rprobe,
  input         io_alloc_bits_state_s_pprobe,
  input         io_alloc_bits_state_s_probeack,
  input         io_alloc_bits_state_s_refill,
  input         io_alloc_bits_state_wrprobeackfirst,
  input         io_alloc_bits_state_wrprobeacklast,
  input         io_alloc_bits_state_wpprobeackfirst,
  input         io_alloc_bits_state_wpprobeacklast,
  input         io_alloc_bits_state_wpprobeack,
  input         io_alloc_bits_state_wgrantfirst,
  input         io_alloc_bits_state_wgrantlast,
  input         io_alloc_bits_state_wgrant,
  input         io_alloc_bits_state_wgrantack,
  input         io_alloc_bits_state_wreplResp,
  input  [2:0]  io_alloc_bits_task_channel,
  input  [6:0]  io_alloc_bits_task_set,
  input  [21:0] io_alloc_bits_task_tag,
  input  [5:0]  io_alloc_bits_task_off,
  input  [2:0]  io_alloc_bits_task_opcode,
  input  [2:0]  io_alloc_bits_task_param,
  input  [2:0]  io_alloc_bits_task_size,
  input  [4:0]  io_alloc_bits_task_sourceId,
  input         io_alloc_bits_task_needProbeAckData,
  input  [3:0]  io_alloc_bits_task_reqSource,
  input         io_tasks_source_a_ready,
  output        io_tasks_source_a_valid,
  output [21:0] io_tasks_source_a_bits_tag,
  output [6:0]  io_tasks_source_a_bits_set,
  output [5:0]  io_tasks_source_a_bits_off,
  output [2:0]  io_tasks_source_a_bits_opcode,
  output [1:0]  io_tasks_source_a_bits_param,
  output [2:0]  io_tasks_source_a_bits_size,
  output [7:0]  io_tasks_source_a_bits_source,
  output [3:0]  io_tasks_source_a_bits_reqSource,
  input         io_tasks_source_bready,
  output        io_tasks_source_bvalid,
  output [21:0] io_tasks_source_btag,
  output [6:0]  io_tasks_source_bset,
  output [1:0]  io_tasks_source_bparam,
  input         io_tasks_mainpipe_ready,
  output        io_tasks_mainpipe_valid,
  output [2:0]  io_tasks_mainpipe_bits_channel,
  output [6:0]  io_tasks_mainpipe_bits_set,
  output [21:0] io_tasks_mainpipe_bits_tag,
  output [5:0]  io_tasks_mainpipe_bits_off,
  output [2:0]  io_tasks_mainpipe_bits_opcode,
  output [2:0]  io_tasks_mainpipe_bits_param,
  output [2:0]  io_tasks_mainpipe_bits_size,
  output [4:0]  io_tasks_mainpipe_bits_sourceId,
  output [7:0]  io_tasks_mainpipe_bits_mshrId,
  output        io_tasks_mainpipe_bits_useProbeData,
  output        io_tasks_mainpipe_bits_dirty,
  output [2:0]  io_tasks_mainpipe_bits_way,
  output        io_tasks_mainpipe_bits_meta_dirty,
  output [1:0]  io_tasks_mainpipe_bits_meta_state,
  output        io_tasks_mainpipe_bits_meta_clients,
  output        io_tasks_mainpipe_bits_meta_accessed,
  output        io_tasks_mainpipe_bits_metaWen,
  output        io_tasks_mainpipe_bits_tagWen,
  output        io_tasks_mainpipe_bits_dsWen,
  output [7:0]  io_tasks_mainpipe_bits_wayMask,
  output        io_tasks_mainpipe_bits_replTask,
  output [3:0]  io_tasks_mainpipe_bits_reqSource,
  input         io_resps_sink_c_valid,
  input  [2:0]  io_resps_sink_c_bits_opcode,
  input  [2:0]  io_resps_sink_c_bits_param,
  input         io_resps_sink_c_bits_last,
  input         io_resps_sink_d_valid,
  input  [2:0]  io_resps_sink_d_bits_opcode,
  input  [2:0]  io_resps_sink_d_bits_param,
  input         io_resps_sink_d_bits_last,
  input         io_resps_sink_d_bits_dirty,
  input         io_resps_sink_e_valid,
  input  [6:0]  io_nestedwb_set,
  input  [21:0] io_nestedwb_tag,
  input         io_nestedwb_c_set_dirty,
  output        io_nestedwbData,
  input         io_bMergeTask_valid,
  input  [6:0]  io_bMergeTask_bits_task_set,
  input  [21:0] io_bMergeTask_bits_task_tag,
  input  [5:0]  io_bMergeTask_bits_task_off,
  input  [2:0]  io_bMergeTask_bits_task_param,
  input         io_bMergeTask_bits_task_needProbeAckData,
  input         io_replResp_valid,
  input  [21:0] io_replResp_bits_tag,
  input  [2:0]  io_replResp_bits_way,
  input         io_replResp_bits_meta_dirty,
  input  [1:0]  io_replResp_bits_meta_state,
  input         io_replResp_bits_meta_clients,
  input         io_replResp_bits_meta_accessed,
  input         io_replResp_bits_retry
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
`endif // RANDOMIZE_REG_INIT
  reg  gotT; // @[MSHR.scala 62:21]
  reg  gotDirty; // @[MSHR.scala 63:25]
  reg  gotGrantData; // @[MSHR.scala 64:29]
  reg  probeDirty; // @[MSHR.scala 65:27]
  reg  probeGotN; // @[MSHR.scala 66:26]
  reg  req_valid; // @[MSHR.scala 71:26]
  reg [2:0] req_channel; // @[MSHR.scala 72:26]
  reg [6:0] req_set; // @[MSHR.scala 72:26]
  reg [21:0] req_tag; // @[MSHR.scala 72:26]
  reg [5:0] req_off; // @[MSHR.scala 72:26]
  reg [2:0] req_opcode; // @[MSHR.scala 72:26]
  reg [2:0] req_param; // @[MSHR.scala 72:26]
  reg [2:0] req_size; // @[MSHR.scala 72:26]
  reg [4:0] req_sourceId; // @[MSHR.scala 72:26]
  reg  req_needProbeAckData; // @[MSHR.scala 72:26]
  reg [3:0] req_reqSource; // @[MSHR.scala 72:26]
  reg  dirResult_hit; // @[MSHR.scala 73:26]
  reg [21:0] dirResult_tag; // @[MSHR.scala 73:26]
  reg [6:0] dirResult_set; // @[MSHR.scala 73:26]
  reg [2:0] dirResult_way; // @[MSHR.scala 73:26]
  reg  dirResult_meta_dirty; // @[MSHR.scala 73:26]
  reg [1:0] dirResult_meta_state; // @[MSHR.scala 73:26]
  reg  dirResult_meta_clients; // @[MSHR.scala 73:26]
  reg  dirResult_meta_accessed; // @[MSHR.scala 73:26]
  reg  state_s_acquire; // @[MSHR.scala 77:26]
  reg  state_s_rprobe; // @[MSHR.scala 77:26]
  reg  state_s_pprobe; // @[MSHR.scala 77:26]
  reg  state_s_release; // @[MSHR.scala 77:26]
  reg  state_s_probeack; // @[MSHR.scala 77:26]
  reg  state_s_refill; // @[MSHR.scala 77:26]
  reg  state_s_merge_probeack; // @[MSHR.scala 77:26]
  reg  state_wrprobeackfirst; // @[MSHR.scala 77:26]
  reg  state_wrprobeacklast; // @[MSHR.scala 77:26]
  reg  state_wpprobeackfirst; // @[MSHR.scala 77:26]
  reg  state_wpprobeacklast; // @[MSHR.scala 77:26]
  reg  state_wpprobeack; // @[MSHR.scala 77:26]
  reg  state_wgrantfirst; // @[MSHR.scala 77:26]
  reg  state_wgrantlast; // @[MSHR.scala 77:26]
  reg  state_wgrant; // @[MSHR.scala 77:26]
  reg  state_wreleaseack; // @[MSHR.scala 77:26]
  reg  state_wgrantack; // @[MSHR.scala 77:26]
  reg  state_wreplResp; // @[MSHR.scala 77:26]
  wire  _GEN_0 = io_alloc_valid | req_valid; // @[MSHR.scala 79:24 80:15 71:26]
  wire  _GEN_1 = io_alloc_valid ? io_alloc_bits_state_s_acquire : state_s_acquire; // @[MSHR.scala 79:24 81:15 77:26]
  wire  _GEN_2 = io_alloc_valid ? io_alloc_bits_state_s_rprobe : state_s_rprobe; // @[MSHR.scala 79:24 81:15 77:26]
  wire  _GEN_3 = io_alloc_valid ? io_alloc_bits_state_s_pprobe : state_s_pprobe; // @[MSHR.scala 79:24 81:15 77:26]
  wire  _GEN_4 = io_alloc_valid | state_s_release; // @[MSHR.scala 79:24 81:15 77:26]
  wire  _GEN_5 = io_alloc_valid ? io_alloc_bits_state_s_probeack : state_s_probeack; // @[MSHR.scala 79:24 81:15 77:26]
  wire  _GEN_6 = io_alloc_valid ? io_alloc_bits_state_s_refill : state_s_refill; // @[MSHR.scala 79:24 81:15 77:26]
  wire  _GEN_7 = io_alloc_valid | state_s_merge_probeack; // @[MSHR.scala 79:24 81:15 77:26]
  wire  _GEN_8 = io_alloc_valid ? io_alloc_bits_state_wrprobeackfirst : state_wrprobeackfirst; // @[MSHR.scala 79:24 81:15 77:26]
  wire  _GEN_9 = io_alloc_valid ? io_alloc_bits_state_wrprobeacklast : state_wrprobeacklast; // @[MSHR.scala 79:24 81:15 77:26]
  wire  _GEN_10 = io_alloc_valid ? io_alloc_bits_state_wpprobeackfirst : state_wpprobeackfirst; // @[MSHR.scala 79:24 81:15 77:26]
  wire  _GEN_11 = io_alloc_valid ? io_alloc_bits_state_wpprobeacklast : state_wpprobeacklast; // @[MSHR.scala 79:24 81:15 77:26]
  wire  _GEN_12 = io_alloc_valid ? io_alloc_bits_state_wpprobeack : state_wpprobeack; // @[MSHR.scala 79:24 81:15 77:26]
  wire  _GEN_13 = io_alloc_valid ? io_alloc_bits_state_wgrantfirst : state_wgrantfirst; // @[MSHR.scala 79:24 81:15 77:26]
  wire  _GEN_14 = io_alloc_valid ? io_alloc_bits_state_wgrantlast : state_wgrantlast; // @[MSHR.scala 79:24 81:15 77:26]
  wire  _GEN_15 = io_alloc_valid ? io_alloc_bits_state_wgrant : state_wgrant; // @[MSHR.scala 79:24 81:15 77:26]
  wire  _GEN_16 = io_alloc_valid | state_wreleaseack; // @[MSHR.scala 79:24 81:15 77:26]
  wire  _GEN_17 = io_alloc_valid ? io_alloc_bits_state_wgrantack : state_wgrantack; // @[MSHR.scala 79:24 81:15 77:26]
  wire  _GEN_18 = io_alloc_valid ? io_alloc_bits_state_wreplResp : state_wreplResp; // @[MSHR.scala 79:24 81:15 77:26]
  wire  _GEN_23 = io_alloc_valid ? io_alloc_bits_dirResult_meta_dirty : dirResult_meta_dirty; // @[MSHR.scala 79:24 82:15 73:26]
  wire [1:0] _GEN_24 = io_alloc_valid ? io_alloc_bits_dirResult_meta_state : dirResult_meta_state; // @[MSHR.scala 79:24 82:15 73:26]
  wire  _GEN_56 = io_alloc_valid ? 1'h0 : gotT; // @[MSHR.scala 79:24 84:17 62:21]
  wire  _GEN_57 = io_alloc_valid ? 1'h0 : gotDirty; // @[MSHR.scala 79:24 85:17 63:25]
  wire  _GEN_58 = io_alloc_valid ? 1'h0 : gotGrantData; // @[MSHR.scala 79:24 86:18 64:29]
  wire  _GEN_59 = io_alloc_valid ? 1'h0 : probeDirty; // @[MSHR.scala 79:24 87:17 65:27]
  wire  _GEN_60 = io_alloc_valid ? 1'h0 : probeGotN; // @[MSHR.scala 79:24 88:17 66:26]
  wire  _meta_no_client_T = |dirResult_meta_clients; // @[MSHR.scala 94:38]
  wire  meta_no_client = ~(|dirResult_meta_clients); // @[MSHR.scala 94:24]
  wire  _req_needT_T_2 = req_opcode == 3'h5; // @[Consts.scala 36:13]
  wire  _req_needT_T_3 = req_param == 3'h1; // @[Consts.scala 36:42]
  wire  _req_needT_T_4 = req_opcode == 3'h5 & req_param == 3'h1; // @[Consts.scala 36:33]
  wire  _req_needT_T_5 = ~req_opcode[2] | _req_needT_T_4; // @[Consts.scala 35:16]
  wire  _req_needT_T_6 = req_opcode == 3'h6; // @[Consts.scala 37:14]
  wire  _req_needT_T_7 = req_opcode == 3'h7; // @[Consts.scala 37:52]
  wire  _req_needT_T_10 = (req_opcode == 3'h6 | req_opcode == 3'h7) & req_param != 3'h0; // @[Consts.scala 37:80]
  wire  req_needT = _req_needT_T_5 | _req_needT_T_10; // @[Consts.scala 36:70]
  wire  req_acquire = _req_needT_T_6 & req_channel[0] | _req_needT_T_7; // @[MSHR.scala 97:62]
  wire  req_get = req_opcode == 3'h4; // @[MSHR.scala 99:28]
  wire  promoteT_normal = dirResult_hit & meta_no_client & dirResult_meta_state == 2'h3; // @[MSHR.scala 102:58]
  wire  _promoteT_L3_T = ~dirResult_hit; // @[MSHR.scala 103:25]
  wire  promoteT_L3 = ~dirResult_hit & gotT; // @[MSHR.scala 103:40]
  wire  _promoteT_alias_T_1 = dirResult_meta_state == 2'h2; // @[MSHR.scala 104:90]
  wire  _req_promoteT_T = req_acquire | req_get; // @[MSHR.scala 106:35]
  wire  req_promoteT = (req_acquire | req_get | _req_needT_T_2) & (promoteT_normal | promoteT_L3); // @[MSHR.scala 106:63]
  wire  _io_tasks_source_bvalid_T = ~state_s_pprobe; // @[MSHR.scala 111:30]
  wire  _mp_release_valid_T = ~state_s_release; // @[MSHR.scala 112:26]
  wire  _mp_release_valid_T_4 = ~state_s_release & state_wrprobeacklast & ~io_bMergeTask_valid & state_wgrantlast; // @[MSHR.scala 112:92]
  wire  mp_release_valid = _mp_release_valid_T_4 & state_wreplResp; // @[MSHR.scala 113:23]
  wire  mp_probeack_valid = ~state_s_probeack & state_wpprobeacklast; // @[MSHR.scala 116:45]
  wire  _mp_merge_probeack_valid_T = ~state_s_merge_probeack; // @[MSHR.scala 117:33]
  wire  mp_merge_probeack_valid = ~state_s_merge_probeack & state_wrprobeacklast; // @[MSHR.scala 117:57]
  wire  mp_grant_valid = ~state_s_refill & state_wgrantlast & state_wrprobeacklast; // @[MSHR.scala 118:61]
  wire [1:0] _a_task_io_tasks_source_a_bits_param_T = dirResult_hit ? 2'h2 : 2'h1; // @[MSHR.scala 137:10]
  wire  _btask_io_tasks_source_bparam_T_3 = req_get & dirResult_hit & _promoteT_alias_T_1; // @[MSHR.scala 155:34]
  wire [1:0] _btask_io_tasks_source_bparam_T_4 = _btask_io_tasks_source_bparam_T_3 ? 2'h1 : 2'h2; // @[MSHR.scala 154:10]
  wire [2:0] _btask_io_tasks_source_bparam_T_5 = _io_tasks_source_bvalid_T ? req_param : {{1'd0},
    _btask_io_tasks_source_bparam_T_4}; // @[MSHR.scala 151:20]
  wire [2:0] mp_release_param = dirResult_meta_state[1] ? 3'h1 : 3'h2; // @[MSHR.scala 182:28]
  wire  _mp_release_task_mp_release_dirty_T = dirResult_meta_state != 2'h0; // @[MSHR.scala 196:50]
  wire  mp_release_dirty = dirResult_meta_dirty & dirResult_meta_state != 2'h0 | probeDirty; // @[MSHR.scala 196:62]
  wire  _mp_probeack_task_mp_probeack_opcode_T_2 = dirResult_meta_dirty & dirResult_meta_state[1] | probeDirty; // @[MSHR.scala 215:37]
  wire  _mp_probeack_task_mp_probeack_opcode_T_3 = dirResult_meta_dirty & dirResult_meta_state[1] | probeDirty |
    req_needProbeAckData; // @[MSHR.scala 215:51]
  wire [2:0] mp_probeack_opcode = _mp_probeack_task_mp_probeack_opcode_T_3 ? 3'h5 : 3'h4; // @[MSHR.scala 214:30]
  wire [2:0] _mp_probeack_task_mp_probeack_param_T_2 = {dirResult_meta_state[1],req_param[1:0]}; // @[Cat.scala 31:58]
  wire  _mp_probeack_task_mp_probeack_param_T_6 = 3'h2 == _mp_probeack_task_mp_probeack_param_T_2; // @[ParallelMux.scala 72:39]
  wire  _mp_probeack_task_mp_probeack_param_T_7 = 3'h6 == _mp_probeack_task_mp_probeack_param_T_2; // @[ParallelMux.scala 72:39]
  wire [2:0] mp_probeack_task_mp_probeack_param_xs_0 = _mp_probeack_task_mp_probeack_param_T_6 ? 3'h2 : 3'h0; // @[ParallelMux.scala 64:44]
  wire [2:0] mp_probeack_task_mp_probeack_param_xs_1 = _mp_probeack_task_mp_probeack_param_T_7 ? 3'h1 : 3'h0; // @[ParallelMux.scala 64:44]
  wire [2:0] mp_probeack_param = mp_probeack_task_mp_probeack_param_xs_0 | mp_probeack_task_mp_probeack_param_xs_1; // @[ParallelMux.scala 36:53]
  wire  _mp_probeack_task_mp_probeack_meta_x2_T = req_param == 3'h2; // @[MSHR.scala 242:19]
  wire [1:0] _mp_probeack_task_mp_probeack_meta_x2_T_2 = _req_needT_T_3 ? 2'h1 : dirResult_meta_state; // @[MSHR.scala 244:12]
  wire [1:0] mp_probeack_task_mp_probeack_meta_x2 = _mp_probeack_task_mp_probeack_meta_x2_T ? 2'h0 :
    _mp_probeack_task_mp_probeack_meta_x2_T_2; // @[MSHR.scala 241:18]
  wire  mp_probeack_task_mp_probeack_meta_x3 = ~probeGotN; // @[MSHR.scala 250:34]
  wire  _mp_probeack_task_mp_probeack_meta_x5_T = req_param != 3'h2; // @[MSHR.scala 252:28]
  wire  mp_probeack_task_mp_probeack_meta_x6 = _mp_probeack_task_mp_probeack_meta_x5_T & dirResult_meta_accessed; // @[MSHR.scala 253:36]
  wire  mp_probeack_dsWen = _mp_probeack_task_mp_probeack_meta_x5_T & probeDirty; // @[MSHR.scala 257:44]
  reg [2:0] task_channel; // @[Reg.scala 28:20]
  reg [6:0] task_set; // @[Reg.scala 28:20]
  reg [21:0] task_tag; // @[Reg.scala 28:20]
  reg [5:0] task_off; // @[Reg.scala 28:20]
  reg [2:0] task_param; // @[Reg.scala 28:20]
  reg  task_needProbeAckData; // @[Reg.scala 28:20]
  wire  _mp_merge_probeack_opcode_T_3 = _mp_probeack_task_mp_probeack_opcode_T_2 | task_needProbeAckData; // @[MSHR.scala 272:51]
  wire [2:0] mp_merge_probeack_opcode = _mp_merge_probeack_opcode_T_3 ? 3'h5 : 3'h4; // @[MSHR.scala 271:36]
  wire [2:0] _mp_merge_probeack_param_T_2 = {dirResult_meta_state[1],task_param[1:0]}; // @[Cat.scala 31:58]
  wire  _mp_merge_probeack_param_T_6 = 3'h2 == _mp_merge_probeack_param_T_2; // @[ParallelMux.scala 72:39]
  wire  _mp_merge_probeack_param_T_7 = 3'h6 == _mp_merge_probeack_param_T_2; // @[ParallelMux.scala 72:39]
  wire [2:0] mp_merge_probeack_param_xs_0 = _mp_merge_probeack_param_T_6 ? 3'h2 : 3'h0; // @[ParallelMux.scala 64:44]
  wire [2:0] mp_merge_probeack_param_xs_1 = _mp_merge_probeack_param_T_7 ? 3'h1 : 3'h0; // @[ParallelMux.scala 64:44]
  wire [2:0] mp_merge_probeack_param = mp_merge_probeack_param_xs_0 | mp_merge_probeack_param_xs_1; // @[ParallelMux.scala 36:53]
  wire [2:0] _GEN_89 = 3'h2 == req_opcode ? 3'h1 : 3'h0; // @[MSHR.scala 319:{21,21}]
  wire [2:0] _GEN_90 = 3'h3 == req_opcode ? 3'h1 : _GEN_89; // @[MSHR.scala 319:{21,21}]
  wire [2:0] _GEN_91 = 3'h4 == req_opcode ? 3'h1 : _GEN_90; // @[MSHR.scala 319:{21,21}]
  wire [2:0] _GEN_92 = 3'h5 == req_opcode ? 3'h2 : _GEN_91; // @[MSHR.scala 319:{21,21}]
  wire [2:0] _GEN_93 = 3'h6 == req_opcode ? 3'h5 : _GEN_92; // @[MSHR.scala 319:{21,21}]
  wire [2:0] mp_grant_opcode = 3'h7 == req_opcode ? 3'h4 : _GEN_93; // @[MSHR.scala 319:{21,21}]
  wire  _mp_grant_task_mp_grant_param_T = req_get | _req_needT_T_2; // @[MSHR.scala 321:15]
  wire [1:0] _mp_grant_task_mp_grant_param_T_1 = req_promoteT ? 2'h0 : 2'h1; // @[MSHR.scala 327:22]
  wire [2:0] _mp_grant_task_mp_grant_param_T_3 = 3'h0 == req_param ? {{1'd0}, _mp_grant_task_mp_grant_param_T_1} :
    req_param; // @[Mux.scala 81:58]
  wire [2:0] _mp_grant_task_mp_grant_param_T_5 = 3'h2 == req_param ? 3'h0 : _mp_grant_task_mp_grant_param_T_3; // @[Mux.scala 81:58]
  wire [2:0] _mp_grant_task_mp_grant_param_T_7 = 3'h1 == req_param ? 3'h0 : _mp_grant_task_mp_grant_param_T_5; // @[Mux.scala 81:58]
  wire [2:0] mp_grant_param = _mp_grant_task_mp_grant_param_T ? 3'h0 : _mp_grant_task_mp_grant_param_T_7; // @[MSHR.scala 320:26]
  wire  mp_grant_useProbeData = dirResult_hit & req_get; // @[MSHR.scala 347:44]
  wire  mp_grant_task_mp_grant_meta_entry_dirty = gotDirty | dirResult_hit & (dirResult_meta_dirty | probeDirty); // @[MSHR.scala 351:24]
  wire [1:0] _mp_grant_task_mp_grant_meta_T_4 = dirResult_meta_state[1] ? 2'h3 : 2'h1; // @[MSHR.scala 356:14]
  wire [1:0] _mp_grant_task_mp_grant_meta_T_5 = req_promoteT ? 2'h3 : 2'h1; // @[MSHR.scala 357:14]
  wire [1:0] _mp_grant_task_mp_grant_meta_T_6 = dirResult_hit ? _mp_grant_task_mp_grant_meta_T_4 :
    _mp_grant_task_mp_grant_meta_T_5; // @[MSHR.scala 354:12]
  wire  _mp_grant_task_mp_grant_meta_T_7 = req_promoteT | req_needT; // @[MSHR.scala 360:24]
  wire [1:0] _mp_grant_task_mp_grant_meta_T_8 = _req_needT_T_2 ? 2'h3 : 2'h2; // @[MSHR.scala 361:14]
  wire [1:0] _mp_grant_task_mp_grant_meta_T_9 = _mp_grant_task_mp_grant_meta_T_7 ? _mp_grant_task_mp_grant_meta_T_8 : 2'h1
    ; // @[MSHR.scala 359:12]
  wire [1:0] mp_grant_task_mp_grant_meta_entry_state = req_get ? _mp_grant_task_mp_grant_meta_T_6 :
    _mp_grant_task_mp_grant_meta_T_9; // @[MSHR.scala 352:18]
  wire  _mp_grant_task_mp_grant_meta_T_11 = dirResult_hit & dirResult_meta_clients; // @[MSHR.scala 367:12]
  wire  _mp_grant_task_mp_grant_meta_T_16 = ~(req_get & (_promoteT_L3_T | meta_no_client | probeGotN)); // @[MSHR.scala 368:26]
  wire  mp_grant_task_mp_grant_meta_entry_clients = _req_needT_T_2 ? _mp_grant_task_mp_grant_meta_T_11 :
    _mp_grant_task_mp_grant_meta_T_16; // @[MSHR.scala 365:20]
  wire  mp_grant_dsWen = (_promoteT_L3_T | gotDirty) & gotGrantData | probeDirty & req_get; // @[MSHR.scala 377:68]
  wire [21:0] _io_tasks_mainpipe_bits_T_1_tag = mp_grant_valid ? req_tag : dirResult_tag; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_tasks_mainpipe_bits_T_1_off = mp_grant_valid ? req_off : 6'h0; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_tasks_mainpipe_bits_T_1_opcode = mp_grant_valid ? mp_grant_opcode : 3'h7; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_tasks_mainpipe_bits_T_1_param = mp_grant_valid ? mp_grant_param : mp_release_param; // @[ParallelMux.scala 90:77]
  wire [4:0] _io_tasks_mainpipe_bits_T_1_sourceId = mp_grant_valid ? req_sourceId : 5'h0; // @[ParallelMux.scala 90:77]
  wire  _io_tasks_mainpipe_bits_T_1_dirty = mp_grant_valid ? 1'h0 : mp_release_dirty; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_tasks_mainpipe_bits_T_1_meta_state = mp_grant_valid ? mp_grant_task_mp_grant_meta_entry_state : 2'h0; // @[ParallelMux.scala 90:77]
  wire  _io_tasks_mainpipe_bits_T_1_dsWen = mp_grant_valid ? mp_grant_dsWen : 1'h1; // @[ParallelMux.scala 90:77]
  wire  _io_tasks_mainpipe_bits_T_1_replTask = mp_grant_valid ? _promoteT_L3_T : 1'h1; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_tasks_mainpipe_bits_T_3_channel = mp_probeack_valid ? req_channel : task_channel; // @[ParallelMux.scala 90:77]
  wire [6:0] _io_tasks_mainpipe_bits_T_3_set = mp_probeack_valid ? req_set : task_set; // @[ParallelMux.scala 90:77]
  wire [21:0] _io_tasks_mainpipe_bits_T_3_tag = mp_probeack_valid ? req_tag : task_tag; // @[ParallelMux.scala 90:77]
  wire [5:0] _io_tasks_mainpipe_bits_T_3_off = mp_probeack_valid ? req_off : task_off; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_tasks_mainpipe_bits_T_3_opcode = mp_probeack_valid ? mp_probeack_opcode : mp_merge_probeack_opcode; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_tasks_mainpipe_bits_T_3_param = mp_probeack_valid ? mp_probeack_param : mp_merge_probeack_param; // @[ParallelMux.scala 90:77]
  wire [2:0] _io_tasks_mainpipe_bits_T_3_size = mp_probeack_valid ? 3'h0 : 3'h6; // @[ParallelMux.scala 90:77]
  wire  _io_tasks_mainpipe_bits_T_3_dirty = mp_probeack_valid ? mp_release_dirty : mp_release_dirty; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_tasks_mainpipe_bits_T_3_meta_state = mp_probeack_valid ? mp_probeack_task_mp_probeack_meta_x2 : 2'h0; // @[ParallelMux.scala 90:77]
  wire  _io_tasks_mainpipe_bits_T_3_dsWen = mp_probeack_valid ? mp_probeack_dsWen : 1'h1; // @[ParallelMux.scala 90:77]
  wire [7:0] _io_tasks_mainpipe_bits_T_3_wayMask = mp_probeack_valid ? 8'h0 : 8'hff; // @[ParallelMux.scala 90:77]
  wire  _io_tasks_mainpipe_bits_T_3_replTask = mp_probeack_valid ? 1'h0 : 1'h1; // @[ParallelMux.scala 90:77]
  wire  _T = io_tasks_source_a_ready & io_tasks_source_a_valid; // @[Decoupled.scala 50:35]
  wire  _T_1 = io_tasks_source_bready & io_tasks_source_bvalid; // @[Decoupled.scala 50:35]
  wire  _GEN_100 = _T_1 | _GEN_2; // @[MSHR.scala 407:33 409:20]
  wire  _GEN_101 = mp_probeack_valid | _GEN_5; // @[MSHR.scala 419:36 420:24]
  wire  _GEN_102 = mp_release_valid | _GEN_4; // @[MSHR.scala 416:35 417:23]
  wire [1:0] _GEN_103 = mp_release_valid ? 2'h0 : _GEN_24; // @[MSHR.scala 416:35 418:18]
  wire  _GEN_105 = mp_grant_valid | _GEN_6; // @[MSHR.scala 414:33 415:22]
  wire  _GEN_106 = mp_grant_valid ? _GEN_4 : _GEN_102; // @[MSHR.scala 414:33]
  wire  _GEN_109 = mp_merge_probeack_valid | _GEN_7; // @[MSHR.scala 412:36 413:30]
  wire  _GEN_111 = mp_merge_probeack_valid ? _GEN_4 : _GEN_106; // @[MSHR.scala 412:36]
  wire  _GEN_116 = io_tasks_mainpipe_ready ? _GEN_111 : _GEN_4; // @[MSHR.scala 411:34]
  wire  _T_3 = io_resps_sink_c_bits_opcode == 3'h5; // @[MSHR.scala 435:65]
  wire  _state_wpprobeack_T = req_off == 6'h0; // @[MSHR.scala 440:57]
  wire  _GEN_119 = io_resps_sink_c_bits_opcode == 3'h4 | io_resps_sink_c_bits_opcode == 3'h5 | _GEN_8; // @[MSHR.scala 435:83 436:30]
  wire  _GEN_120 = io_resps_sink_c_bits_opcode == 3'h4 | io_resps_sink_c_bits_opcode == 3'h5 ? state_wrprobeacklast |
    io_resps_sink_c_bits_last : _GEN_9; // @[MSHR.scala 435:83 437:29]
  wire  _GEN_121 = io_resps_sink_c_bits_opcode == 3'h4 | io_resps_sink_c_bits_opcode == 3'h5 | _GEN_10; // @[MSHR.scala 435:83 438:30]
  wire  _GEN_124 = _T_3 | _GEN_59; // @[MSHR.scala 442:48 443:18]
  wire  _T_10 = io_resps_sink_c_bits_param == 3'h1 | io_resps_sink_c_bits_param == 3'h2 | io_resps_sink_c_bits_param == 3'h5
    ; // @[Consts.scala 48:66]
  wire  _GEN_125 = _T_10 | _GEN_60; // @[MSHR.scala 445:37 446:17]
  wire  _GEN_126 = io_resps_sink_c_valid ? _GEN_119 : _GEN_8; // @[MSHR.scala 434:23]
  wire  _GEN_127 = io_resps_sink_c_valid ? _GEN_120 : _GEN_9; // @[MSHR.scala 434:23]
  wire  _T_12 = io_resps_sink_d_bits_opcode == 3'h5; // @[MSHR.scala 451:61]
  wire  _T_13 = io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5; // @[MSHR.scala 451:39]
  wire  _GEN_133 = io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 |
    io_resps_sink_d_bits_opcode == 3'h0 | _GEN_13; // @[MSHR.scala 451:112 452:26]
  wire  _GEN_138 = _T_12 | _GEN_58; // @[MSHR.scala 460:44 461:20]
  wire  _GEN_139 = io_resps_sink_d_bits_opcode == 3'h6 | _GEN_16; // @[MSHR.scala 463:45 464:26]
  wire  _GEN_146 = io_resps_sink_d_valid ? _GEN_139 : _GEN_16; // @[MSHR.scala 450:23]
  wire  _GEN_149 = |io_replResp_bits_meta_clients ? 1'h0 : _GEN_100; // @[MSHR.scala 494:39 495:24]
  wire  _GEN_150 = |io_replResp_bits_meta_clients ? 1'h0 : _GEN_126; // @[MSHR.scala 494:39 496:32]
  wire  _GEN_151 = |io_replResp_bits_meta_clients ? 1'h0 : _GEN_127; // @[MSHR.scala 494:39 497:31]
  wire  _GEN_152 = io_replResp_bits_meta_state != 2'h0 ? 1'h0 : _GEN_116; // @[MSHR.scala 489:44 491:23]
  wire  _GEN_153 = io_replResp_bits_meta_state != 2'h0 ? 1'h0 : _GEN_146; // @[MSHR.scala 489:44 492:26]
  wire  _GEN_154 = io_replResp_bits_meta_state != 2'h0 ? _GEN_149 : _GEN_100; // @[MSHR.scala 489:44]
  wire  _GEN_155 = io_replResp_bits_meta_state != 2'h0 ? _GEN_150 : _GEN_126; // @[MSHR.scala 489:44]
  wire  _GEN_156 = io_replResp_bits_meta_state != 2'h0 ? _GEN_151 : _GEN_127; // @[MSHR.scala 489:44]
  wire  _GEN_160 = io_replResp_valid & ~io_replResp_bits_retry ? io_replResp_bits_meta_dirty : _GEN_23; // @[MSHR.scala 476:47 482:20]
  wire  _GEN_164 = io_replResp_valid & ~io_replResp_bits_retry ? _GEN_152 : _GEN_116; // @[MSHR.scala 476:47]
  wire  _GEN_165 = io_replResp_valid & ~io_replResp_bits_retry ? _GEN_153 : _GEN_146; // @[MSHR.scala 476:47]
  wire  _GEN_166 = io_replResp_valid & ~io_replResp_bits_retry ? _GEN_154 : _GEN_100; // @[MSHR.scala 476:47]
  wire  _GEN_167 = io_replResp_valid & ~io_replResp_bits_retry ? _GEN_155 : _GEN_126; // @[MSHR.scala 476:47]
  wire  _GEN_168 = io_replResp_valid & ~io_replResp_bits_retry ? _GEN_156 : _GEN_127; // @[MSHR.scala 476:47]
  wire  no_schedule = state_s_refill & state_s_probeack & state_s_merge_probeack & state_s_release; // @[MSHR.scala 506:82]
  wire  no_wait = state_wrprobeacklast & state_wpprobeacklast & state_wgrantlast & state_wreleaseack &
    state_wgrantack & state_wreplResp; // @[MSHR.scala 507:127]
  wire  will_free = no_schedule & no_wait; // @[MSHR.scala 508:31]
  wire  _nestedwb_match_T_2 = dirResult_set == io_nestedwb_set; // @[MSHR.scala 571:19]
  wire  _nestedwb_match_T_3 = req_valid & _mp_release_task_mp_release_dirty_T & _nestedwb_match_T_2; // @[MSHR.scala 570:60]
  wire  _nestedwb_match_T_4 = dirResult_tag == io_nestedwb_tag; // @[MSHR.scala 572:19]
  wire  _nestedwb_match_T_5 = _nestedwb_match_T_3 & _nestedwb_match_T_4; // @[MSHR.scala 571:39]
  wire  nestedwb_match = _nestedwb_match_T_5 & state_wreplResp; // @[MSHR.scala 572:39]
  wire  _GEN_181 = io_nestedwb_c_set_dirty | _GEN_160; // @[MSHR.scala 576:36 577:18]
  assign io_status_valid = req_valid; // @[MSHR.scala 522:19]
  assign io_status_bits_set = req_set; // @[MSHR.scala 524:22]
  assign io_status_bits_reqTag = req_tag; // @[MSHR.scala 525:25]
  assign io_status_bits_metaTag = dirResult_tag; // @[MSHR.scala 526:26]
  assign io_status_bits_needsRepl = _mp_release_valid_T | _mp_merge_probeack_valid_T | io_bMergeTask_valid; // @[MSHR.scala 521:68]
  assign io_status_bits_wc_resp = ~state_wrprobeacklast | ~state_wpprobeacklast | ~state_wpprobeack; // @[MSHR.scala 529:79]
  assign io_status_bits_is_miss = ~dirResult_hit; // @[MSHR.scala 533:29]
  assign io_msInfo_valid = req_valid; // @[MSHR.scala 537:19]
  assign io_msInfo_bits_set = req_set; // @[MSHR.scala 538:22]
  assign io_msInfo_bits_way = dirResult_way; // @[MSHR.scala 539:22]
  assign io_msInfo_bits_reqTag = req_tag; // @[MSHR.scala 540:25]
  assign io_msInfo_bits_willFree = no_schedule & no_wait; // @[MSHR.scala 508:31]
  assign io_msInfo_bits_needRelease = ~state_wreleaseack; // @[MSHR.scala 541:33]
  assign io_msInfo_bits_releaseNotSent = _mp_release_valid_T | _mp_merge_probeack_valid_T | io_bMergeTask_valid; // @[MSHR.scala 521:68]
  assign io_msInfo_bits_metaTag = dirResult_tag; // @[MSHR.scala 544:26]
  assign io_msInfo_bits_dirHit = dirResult_hit; // @[MSHR.scala 543:25]
  assign io_msInfo_bits_nestB = ~state_wgrantfirst; // @[MSHR.scala 515:15]
  assign io_msInfo_bits_mergeB = ~state_s_release; // @[MSHR.scala 519:16]
  assign io_msInfo_bits_isAcqOrPrefetch = req_acquire | _req_needT_T_2; // @[MSHR.scala 548:49]
  assign io_msInfo_bits_isPrefetch = req_opcode == 3'h5; // @[MSHR.scala 100:33]
  assign io_tasks_source_a_valid = ~state_s_acquire; // @[MSHR.scala 110:30]
  assign io_tasks_source_a_bits_tag = req_tag; // @[MSHR.scala 125:12]
  assign io_tasks_source_a_bits_set = req_set; // @[MSHR.scala 126:12]
  assign io_tasks_source_a_bits_off = req_off; // @[MSHR.scala 127:12]
  assign io_tasks_source_a_bits_opcode = _req_needT_T_7 ? req_opcode : 3'h6; // @[MSHR.scala 129:21]
  assign io_tasks_source_a_bits_param = req_needT ? _a_task_io_tasks_source_a_bits_param_T : 2'h0; // @[MSHR.scala 135:20]
  assign io_tasks_source_a_bits_size = req_size; // @[MSHR.scala 140:13]
  assign io_tasks_source_a_bits_source = io_id; // @[MSHR.scala 128:15]
  assign io_tasks_source_a_bits_reqSource = req_reqSource; // @[MSHR.scala 141:18]
  assign io_tasks_source_bvalid = ~state_s_pprobe | ~state_s_rprobe; // @[MSHR.scala 111:46]
  assign io_tasks_source_btag = dirResult_tag; // @[MSHR.scala 147:12]
  assign io_tasks_source_bset = dirResult_set; // @[MSHR.scala 148:12]
  assign io_tasks_source_bparam = _btask_io_tasks_source_bparam_T_5[1:0]; // @[MSHR.scala 151:14]
  assign io_tasks_mainpipe_valid = mp_release_valid | mp_probeack_valid | mp_merge_probeack_valid | mp_grant_valid; // @[MSHR.scala 119:95]
  assign io_tasks_mainpipe_bits_channel = mp_grant_valid | mp_release_valid ? req_channel :
    _io_tasks_mainpipe_bits_T_3_channel; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_set = mp_grant_valid | mp_release_valid ? req_set : _io_tasks_mainpipe_bits_T_3_set; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_tag = mp_grant_valid | mp_release_valid ? _io_tasks_mainpipe_bits_T_1_tag :
    _io_tasks_mainpipe_bits_T_3_tag; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_off = mp_grant_valid | mp_release_valid ? _io_tasks_mainpipe_bits_T_1_off :
    _io_tasks_mainpipe_bits_T_3_off; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_opcode = mp_grant_valid | mp_release_valid ? _io_tasks_mainpipe_bits_T_1_opcode :
    _io_tasks_mainpipe_bits_T_3_opcode; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_param = mp_grant_valid | mp_release_valid ? _io_tasks_mainpipe_bits_T_1_param :
    _io_tasks_mainpipe_bits_T_3_param; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_size = mp_grant_valid | mp_release_valid ? 3'h0 : _io_tasks_mainpipe_bits_T_3_size; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_sourceId = mp_grant_valid | mp_release_valid ? _io_tasks_mainpipe_bits_T_1_sourceId : 5'h0
    ; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_mshrId = io_id; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_useProbeData = mp_grant_valid | mp_release_valid ? mp_grant_valid &
    mp_grant_useProbeData : mp_probeack_valid; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_dirty = mp_grant_valid | mp_release_valid ? _io_tasks_mainpipe_bits_T_1_dirty :
    _io_tasks_mainpipe_bits_T_3_dirty; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_way = dirResult_way; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_meta_dirty = (mp_grant_valid | mp_release_valid) & (mp_grant_valid &
    mp_grant_task_mp_grant_meta_entry_dirty); // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_meta_state = mp_grant_valid | mp_release_valid ? _io_tasks_mainpipe_bits_T_1_meta_state
     : _io_tasks_mainpipe_bits_T_3_meta_state; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_meta_clients = mp_grant_valid | mp_release_valid ? mp_grant_valid &
    mp_grant_task_mp_grant_meta_entry_clients : mp_probeack_valid & mp_probeack_task_mp_probeack_meta_x3; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_meta_accessed = mp_grant_valid | mp_release_valid ? mp_grant_valid & _req_promoteT_T :
    mp_probeack_valid & mp_probeack_task_mp_probeack_meta_x6; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_metaWen = mp_grant_valid | mp_release_valid ? mp_grant_valid : mp_probeack_valid; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_tagWen = (mp_grant_valid | mp_release_valid) & (mp_grant_valid & _promoteT_L3_T); // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_dsWen = mp_grant_valid | mp_release_valid ? _io_tasks_mainpipe_bits_T_1_dsWen :
    _io_tasks_mainpipe_bits_T_3_dsWen; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_wayMask = mp_grant_valid | mp_release_valid ? 8'h0 : _io_tasks_mainpipe_bits_T_3_wayMask
    ; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_replTask = mp_grant_valid | mp_release_valid ? _io_tasks_mainpipe_bits_T_1_replTask :
    _io_tasks_mainpipe_bits_T_3_replTask; // @[ParallelMux.scala 90:77]
  assign io_tasks_mainpipe_bits_reqSource = req_reqSource; // @[MSHR.scala 393:36]
  assign io_nestedwbData = nestedwb_match & io_nestedwb_c_set_dirty; // @[MSHR.scala 582:37]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 450:23]
      gotT <= 1'h0; // @[MSHR.scala 456:76 457:12]
    end else if (io_resps_sink_d_valid) begin
      if (_T_13) begin
        gotT <= io_resps_sink_d_bits_param == 3'h0;
      end else begin
        gotT <= _GEN_56;
      end
    end else begin
      gotT <= _GEN_56;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 450:23]
      gotDirty <= 1'h0; // @[MSHR.scala 456:76 458:16]
    end else if (io_resps_sink_d_valid) begin
      if (_T_13) begin
        gotDirty <= gotDirty | io_resps_sink_d_bits_dirty;
      end else begin
        gotDirty <= _GEN_57;
      end
    end else begin
      gotDirty <= _GEN_57;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 450:23]
      gotGrantData <= 1'h0;
    end else if (io_resps_sink_d_valid) begin // @[MSHR.scala 79:24]
      gotGrantData <= _GEN_138; // @[MSHR.scala 86:18]
    end else if (io_alloc_valid) begin // @[MSHR.scala 64:29]
      gotGrantData <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 434:23]
      probeDirty <= 1'h0;
    end else if (io_resps_sink_c_valid) begin // @[MSHR.scala 79:24]
      probeDirty <= _GEN_124; // @[MSHR.scala 87:17]
    end else if (io_alloc_valid) begin // @[MSHR.scala 65:27]
      probeDirty <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 434:23]
      probeGotN <= 1'h0;
    end else if (io_resps_sink_c_valid) begin // @[MSHR.scala 79:24]
      probeGotN <= _GEN_125; // @[MSHR.scala 88:17]
    end else if (io_alloc_valid) begin // @[MSHR.scala 66:26]
      probeGotN <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 509:33]
      req_valid <= 1'h0; // @[MSHR.scala 510:15]
    end else if (will_free & req_valid) begin
      req_valid <= 1'h0;
    end else begin
      req_valid <= _GEN_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 79:24]
      req_channel <= 3'h0; // @[MSHR.scala 83:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 72:26]
      req_channel <= io_alloc_bits_task_channel;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 79:24]
      req_set <= 7'h0; // @[MSHR.scala 83:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 72:26]
      req_set <= io_alloc_bits_task_set;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 79:24]
      req_tag <= 22'h0; // @[MSHR.scala 83:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 72:26]
      req_tag <= io_alloc_bits_task_tag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 79:24]
      req_off <= 6'h0; // @[MSHR.scala 83:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 72:26]
      req_off <= io_alloc_bits_task_off;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 79:24]
      req_opcode <= 3'h0; // @[MSHR.scala 83:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 72:26]
      req_opcode <= io_alloc_bits_task_opcode;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 79:24]
      req_param <= 3'h0; // @[MSHR.scala 83:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 72:26]
      req_param <= io_alloc_bits_task_param;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 79:24]
      req_size <= 3'h0; // @[MSHR.scala 83:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 72:26]
      req_size <= io_alloc_bits_task_size;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 79:24]
      req_sourceId <= 5'h0; // @[MSHR.scala 83:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 72:26]
      req_sourceId <= io_alloc_bits_task_sourceId;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 79:24]
      req_needProbeAckData <= 1'h0; // @[MSHR.scala 83:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 72:26]
      req_needProbeAckData <= io_alloc_bits_task_needProbeAckData;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 79:24]
      req_reqSource <= 4'h0; // @[MSHR.scala 83:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 72:26]
      req_reqSource <= io_alloc_bits_task_reqSource;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 79:24]
      dirResult_hit <= 1'h0; // @[MSHR.scala 82:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 73:26]
      dirResult_hit <= io_alloc_bits_dirResult_hit;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 476:47]
      dirResult_tag <= 22'h0; // @[MSHR.scala 480:19]
    end else if (io_replResp_valid & ~io_replResp_bits_retry) begin // @[MSHR.scala 79:24]
      dirResult_tag <= io_replResp_bits_tag; // @[MSHR.scala 82:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 73:26]
      dirResult_tag <= io_alloc_bits_dirResult_tag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 79:24]
      dirResult_set <= 7'h0; // @[MSHR.scala 82:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 73:26]
      dirResult_set <= io_alloc_bits_dirResult_set;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 476:47]
      dirResult_way <= 3'h0; // @[MSHR.scala 481:19]
    end else if (io_replResp_valid & ~io_replResp_bits_retry) begin // @[MSHR.scala 79:24]
      dirResult_way <= io_replResp_bits_way; // @[MSHR.scala 82:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 73:26]
      dirResult_way <= io_alloc_bits_dirResult_way;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 575:25]
      dirResult_meta_dirty <= 1'h0;
    end else if (nestedwb_match) begin // @[MSHR.scala 476:47]
      dirResult_meta_dirty <= _GEN_181; // @[MSHR.scala 482:20]
    end else if (io_replResp_valid & ~io_replResp_bits_retry) begin // @[MSHR.scala 79:24]
      dirResult_meta_dirty <= io_replResp_bits_meta_dirty; // @[MSHR.scala 82:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 73:26]
      dirResult_meta_dirty <= io_alloc_bits_dirResult_meta_dirty;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 476:47]
      dirResult_meta_state <= 2'h0; // @[MSHR.scala 482:20]
    end else if (io_replResp_valid & ~io_replResp_bits_retry) begin // @[MSHR.scala 411:34]
      dirResult_meta_state <= io_replResp_bits_meta_state; // @[MSHR.scala 412:36 414:33]
    end else if (io_tasks_mainpipe_ready) begin
      if (mp_merge_probeack_valid) begin
        dirResult_meta_state <= _GEN_24;
      end else if (mp_grant_valid) begin
        dirResult_meta_state <= _GEN_24;
      end else begin
        dirResult_meta_state <= _GEN_103;
      end
    end else begin
      dirResult_meta_state <= _GEN_24;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 476:47]
      dirResult_meta_clients <= 1'h0; // @[MSHR.scala 482:20]
    end else if (io_replResp_valid & ~io_replResp_bits_retry) begin // @[MSHR.scala 79:24]
      dirResult_meta_clients <= io_replResp_bits_meta_clients; // @[MSHR.scala 82:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 73:26]
      dirResult_meta_clients <= io_alloc_bits_dirResult_meta_clients;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 476:47]
      dirResult_meta_accessed <= 1'h0; // @[MSHR.scala 482:20]
    end else if (io_replResp_valid & ~io_replResp_bits_retry) begin // @[MSHR.scala 79:24]
      dirResult_meta_accessed <= io_replResp_bits_meta_accessed; // @[MSHR.scala 82:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 73:26]
      dirResult_meta_accessed <= io_alloc_bits_dirResult_meta_accessed;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 404:33]
      state_s_acquire <= 1'h1; // @[MSHR.scala 405:21]
    end else begin
      state_s_acquire <= _T | _GEN_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 556:30]
      state_s_rprobe <= 1'h1; // @[MSHR.scala 560:29 561:22]
    end else if (io_bMergeTask_valid) begin
      if (_meta_no_client_T) begin
        state_s_rprobe <= 1'h0;
      end else begin
        state_s_rprobe <= _GEN_166;
      end
    end else begin
      state_s_rprobe <= _GEN_166;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 407:33]
      state_s_pprobe <= 1'h1; // @[MSHR.scala 408:20]
    end else begin
      state_s_pprobe <= _T_1 | _GEN_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 556:30]
      state_s_release <= 1'h1; // @[MSHR.scala 558:21]
    end else begin
      state_s_release <= io_bMergeTask_valid | _GEN_164;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 411:34]
      state_s_probeack <= 1'h1; // @[MSHR.scala 412:36 414:33 416:35]
    end else if (io_tasks_mainpipe_ready) begin
      if (mp_merge_probeack_valid) begin
        state_s_probeack <= _GEN_5;
      end else if (mp_grant_valid) begin
        state_s_probeack <= _GEN_5;
      end else if (mp_release_valid) begin
        state_s_probeack <= _GEN_5;
      end else begin
        state_s_probeack <= _GEN_101;
      end
    end else begin
      state_s_probeack <= _GEN_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 473:46]
      state_s_refill <= 1'h1; // @[MSHR.scala 474:20]
    end else if (io_replResp_valid & io_replResp_bits_retry) begin // @[MSHR.scala 411:34]
      state_s_refill <= 1'h0; // @[MSHR.scala 412:36]
    end else if (io_tasks_mainpipe_ready) begin
      if (mp_merge_probeack_valid) begin
        state_s_refill <= _GEN_6;
      end else begin
        state_s_refill <= _GEN_105;
      end
    end else begin
      state_s_refill <= _GEN_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 556:30]
      state_s_merge_probeack <= 1'h1; // @[MSHR.scala 557:28]
    end else if (io_bMergeTask_valid) begin // @[MSHR.scala 411:34]
      state_s_merge_probeack <= 1'h0;
    end else if (io_tasks_mainpipe_ready) begin
      state_s_merge_probeack <= _GEN_109;
    end else begin
      state_s_merge_probeack <= _GEN_7;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 556:30]
      state_wrprobeackfirst <= 1'h1; // @[MSHR.scala 560:29 562:30]
    end else if (io_bMergeTask_valid) begin
      if (_meta_no_client_T) begin
        state_wrprobeackfirst <= 1'h0;
      end else begin
        state_wrprobeackfirst <= _GEN_167;
      end
    end else begin
      state_wrprobeackfirst <= _GEN_167;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 556:30]
      state_wrprobeacklast <= 1'h1; // @[MSHR.scala 560:29 563:29]
    end else if (io_bMergeTask_valid) begin
      if (_meta_no_client_T) begin
        state_wrprobeacklast <= 1'h0;
      end else begin
        state_wrprobeacklast <= _GEN_168;
      end
    end else begin
      state_wrprobeacklast <= _GEN_168;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 434:23]
      state_wpprobeackfirst <= 1'h1;
    end else if (io_resps_sink_c_valid) begin // @[MSHR.scala 79:24]
      state_wpprobeackfirst <= _GEN_121; // @[MSHR.scala 81:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 77:26]
      state_wpprobeackfirst <= io_alloc_bits_state_wpprobeackfirst;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 434:23]
      state_wpprobeacklast <= 1'h1; // @[MSHR.scala 435:83 439:29]
    end else if (io_resps_sink_c_valid) begin
      if (io_resps_sink_c_bits_opcode == 3'h4 | io_resps_sink_c_bits_opcode == 3'h5) begin
        state_wpprobeacklast <= state_wpprobeacklast | io_resps_sink_c_bits_last;
      end else begin
        state_wpprobeacklast <= _GEN_11;
      end
    end else begin
      state_wpprobeacklast <= _GEN_11;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 434:23]
      state_wpprobeack <= 1'h1; // @[MSHR.scala 435:83 440:25]
    end else if (io_resps_sink_c_valid) begin
      if (io_resps_sink_c_bits_opcode == 3'h4 | io_resps_sink_c_bits_opcode == 3'h5) begin
        state_wpprobeack <= state_wpprobeack | req_off == 6'h0 | io_resps_sink_c_bits_last;
      end else begin
        state_wpprobeack <= _GEN_12;
      end
    end else begin
      state_wpprobeack <= _GEN_12;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 450:23]
      state_wgrantfirst <= 1'h1;
    end else if (io_resps_sink_d_valid) begin // @[MSHR.scala 79:24]
      state_wgrantfirst <= _GEN_133; // @[MSHR.scala 81:15]
    end else if (io_alloc_valid) begin // @[MSHR.scala 77:26]
      state_wgrantfirst <= io_alloc_bits_state_wgrantfirst;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 450:23]
      state_wgrantlast <= 1'h1; // @[MSHR.scala 451:112 453:25]
    end else if (io_resps_sink_d_valid) begin
      if (io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 | io_resps_sink_d_bits_opcode == 3'h0
        ) begin
        state_wgrantlast <= io_resps_sink_d_bits_last;
      end else begin
        state_wgrantlast <= _GEN_14;
      end
    end else begin
      state_wgrantlast <= _GEN_14;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 450:23]
      state_wgrant <= 1'h1; // @[MSHR.scala 451:112 454:21]
    end else if (io_resps_sink_d_valid) begin
      if (io_resps_sink_d_bits_opcode == 3'h4 | io_resps_sink_d_bits_opcode == 3'h5 | io_resps_sink_d_bits_opcode == 3'h0
        ) begin
        state_wgrant <= _state_wpprobeack_T | io_resps_sink_d_bits_last;
      end else begin
        state_wgrant <= _GEN_15;
      end
    end else begin
      state_wgrant <= _GEN_15;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 556:30]
      state_wreleaseack <= 1'h1; // @[MSHR.scala 559:24]
    end else begin
      state_wreleaseack <= io_bMergeTask_valid | _GEN_165;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 468:23]
      state_wgrantack <= 1'h1; // @[MSHR.scala 469:22]
    end else begin
      state_wgrantack <= io_resps_sink_e_valid | _GEN_17;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHR.scala 476:47]
      state_wreplResp <= 1'h1; // @[MSHR.scala 477:22]
    end else begin
      state_wreplResp <= io_replResp_valid & ~io_replResp_bits_retry | _GEN_18;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      task_channel <= 3'h0; // @[Reg.scala 29:22]
    end else if (io_bMergeTask_valid) begin // @[Reg.scala 28:20]
      task_channel <= 3'h2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      task_set <= 7'h0; // @[Reg.scala 29:22]
    end else if (io_bMergeTask_valid) begin // @[Reg.scala 28:20]
      task_set <= io_bMergeTask_bits_task_set;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      task_tag <= 22'h0; // @[Reg.scala 29:22]
    end else if (io_bMergeTask_valid) begin // @[Reg.scala 28:20]
      task_tag <= io_bMergeTask_bits_task_tag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      task_off <= 6'h0; // @[Reg.scala 29:22]
    end else if (io_bMergeTask_valid) begin // @[Reg.scala 28:20]
      task_off <= io_bMergeTask_bits_task_off;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      task_param <= 3'h0; // @[Reg.scala 29:22]
    end else if (io_bMergeTask_valid) begin // @[Reg.scala 28:20]
      task_param <= io_bMergeTask_bits_task_param;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      task_needProbeAckData <= 1'h0; // @[Reg.scala 29:22]
    end else if (io_bMergeTask_valid) begin // @[Reg.scala 28:20]
      task_needProbeAckData <= io_bMergeTask_bits_task_needProbeAckData;
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
  gotT = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  gotDirty = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  gotGrantData = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  probeDirty = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  probeGotN = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  req_valid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  req_channel = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  req_set = _RAND_7[6:0];
  _RAND_8 = {1{`RANDOM}};
  req_tag = _RAND_8[21:0];
  _RAND_9 = {1{`RANDOM}};
  req_off = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  req_opcode = _RAND_10[2:0];
  _RAND_11 = {1{`RANDOM}};
  req_param = _RAND_11[2:0];
  _RAND_12 = {1{`RANDOM}};
  req_size = _RAND_12[2:0];
  _RAND_13 = {1{`RANDOM}};
  req_sourceId = _RAND_13[4:0];
  _RAND_14 = {1{`RANDOM}};
  req_needProbeAckData = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  req_reqSource = _RAND_15[3:0];
  _RAND_16 = {1{`RANDOM}};
  dirResult_hit = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  dirResult_tag = _RAND_17[21:0];
  _RAND_18 = {1{`RANDOM}};
  dirResult_set = _RAND_18[6:0];
  _RAND_19 = {1{`RANDOM}};
  dirResult_way = _RAND_19[2:0];
  _RAND_20 = {1{`RANDOM}};
  dirResult_meta_dirty = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  dirResult_meta_state = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  dirResult_meta_clients = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  dirResult_meta_accessed = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  state_s_acquire = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  state_s_rprobe = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  state_s_pprobe = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  state_s_release = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  state_s_probeack = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  state_s_refill = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  state_s_merge_probeack = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  state_wrprobeackfirst = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  state_wrprobeacklast = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  state_wpprobeackfirst = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  state_wpprobeacklast = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  state_wpprobeack = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  state_wgrantfirst = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  state_wgrantlast = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  state_wgrant = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  state_wreleaseack = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  state_wgrantack = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  state_wreplResp = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  task_channel = _RAND_42[2:0];
  _RAND_43 = {1{`RANDOM}};
  task_set = _RAND_43[6:0];
  _RAND_44 = {1{`RANDOM}};
  task_tag = _RAND_44[21:0];
  _RAND_45 = {1{`RANDOM}};
  task_off = _RAND_45[5:0];
  _RAND_46 = {1{`RANDOM}};
  task_param = _RAND_46[2:0];
  _RAND_47 = {1{`RANDOM}};
  task_needProbeAckData = _RAND_47[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    gotT = 1'h0;
  end
  if (reset) begin
    gotDirty = 1'h0;
  end
  if (reset) begin
    gotGrantData = 1'h0;
  end
  if (reset) begin
    probeDirty = 1'h0;
  end
  if (reset) begin
    probeGotN = 1'h0;
  end
  if (reset) begin
    req_valid = 1'h0;
  end
  if (reset) begin
    req_channel = 3'h0;
  end
  if (reset) begin
    req_set = 7'h0;
  end
  if (reset) begin
    req_tag = 22'h0;
  end
  if (reset) begin
    req_off = 6'h0;
  end
  if (reset) begin
    req_opcode = 3'h0;
  end
  if (reset) begin
    req_param = 3'h0;
  end
  if (reset) begin
    req_size = 3'h0;
  end
  if (reset) begin
    req_sourceId = 5'h0;
  end
  if (reset) begin
    req_needProbeAckData = 1'h0;
  end
  if (reset) begin
    req_reqSource = 4'h0;
  end
  if (reset) begin
    dirResult_hit = 1'h0;
  end
  if (reset) begin
    dirResult_tag = 22'h0;
  end
  if (reset) begin
    dirResult_set = 7'h0;
  end
  if (reset) begin
    dirResult_way = 3'h0;
  end
  if (reset) begin
    dirResult_meta_dirty = 1'h0;
  end
  if (reset) begin
    dirResult_meta_state = 2'h0;
  end
  if (reset) begin
    dirResult_meta_clients = 1'h0;
  end
  if (reset) begin
    dirResult_meta_accessed = 1'h0;
  end
  if (reset) begin
    state_s_acquire = 1'h1;
  end
  if (reset) begin
    state_s_rprobe = 1'h1;
  end
  if (reset) begin
    state_s_pprobe = 1'h1;
  end
  if (reset) begin
    state_s_release = 1'h1;
  end
  if (reset) begin
    state_s_probeack = 1'h1;
  end
  if (reset) begin
    state_s_refill = 1'h1;
  end
  if (reset) begin
    state_s_merge_probeack = 1'h1;
  end
  if (reset) begin
    state_wrprobeackfirst = 1'h1;
  end
  if (reset) begin
    state_wrprobeacklast = 1'h1;
  end
  if (reset) begin
    state_wpprobeackfirst = 1'h1;
  end
  if (reset) begin
    state_wpprobeacklast = 1'h1;
  end
  if (reset) begin
    state_wpprobeack = 1'h1;
  end
  if (reset) begin
    state_wgrantfirst = 1'h1;
  end
  if (reset) begin
    state_wgrantlast = 1'h1;
  end
  if (reset) begin
    state_wgrant = 1'h1;
  end
  if (reset) begin
    state_wreleaseack = 1'h1;
  end
  if (reset) begin
    state_wgrantack = 1'h1;
  end
  if (reset) begin
    state_wreplResp = 1'h1;
  end
  if (reset) begin
    task_channel = 3'h0;
  end
  if (reset) begin
    task_set = 7'h0;
  end
  if (reset) begin
    task_tag = 22'h0;
  end
  if (reset) begin
    task_off = 6'h0;
  end
  if (reset) begin
    task_param = 3'h0;
  end
  if (reset) begin
    task_needProbeAckData = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

