module MissEntry(
  input          clock,
  input          reset,
  input  [1:0]   io_id,
  input          io_req_valid,
  input  [3:0]   io_req_bits_source,
  input  [35:0]  io_req_bits_addr,
  input  [38:0]  io_req_bits_vaddr,
  input  [7:0]   io_req_bits_way_en,
  input          io_req_bits_cancel,
  input  [3:0]   io_miss_req_pipe_reg_req_source,
  input  [4:0]   io_miss_req_pipe_reg_req_cmd,
  input  [35:0]  io_miss_req_pipe_reg_req_addr,
  input  [38:0]  io_miss_req_pipe_reg_req_vaddr,
  input  [7:0]   io_miss_req_pipe_reg_req_way_en,
  input  [2:0]   io_miss_req_pipe_reg_req_word_idx,
  input  [63:0]  io_miss_req_pipe_reg_req_amo_data,
  input  [7:0]   io_miss_req_pipe_reg_req_amo_mask,
  input  [1:0]   io_miss_req_pipe_reg_req_req_coh_state,
  input  [1:0]   io_miss_req_pipe_reg_req_replace_coh_state,
  input  [23:0]  io_miss_req_pipe_reg_req_replace_tag,
  input  [3:0]   io_miss_req_pipe_reg_req_id,
  input  [511:0] io_miss_req_pipe_reg_req_store_data,
  input  [63:0]  io_miss_req_pipe_reg_req_store_mask,
  input          io_miss_req_pipe_reg_merge,
  input          io_miss_req_pipe_reg_alloc,
  input          io_primary_valid,
  output         io_primary_ready,
  output         io_secondary_ready,
  output         io_secondary_reject,
  output [7:0]   io_repl_way_en,
  input          io_mem_acquire_ready,
  output         io_mem_acquire_valid,
  output [2:0]   io_mem_acquire_bits_param,
  output [3:0]   io_mem_acquire_bits_source,
  output [35:0]  io_mem_acquire_bits_address,
  output [32:0]  io_mem_acquire_bits_user_vaddr,
  output [3:0]   io_mem_acquire_bits_user_reqSource,
  output         io_mem_acquire_bits_user_needHint,
  output         io_mem_grant_ready,
  input          io_mem_grant_valid,
  input  [2:0]   io_mem_grant_bits_opcode,
  input  [1:0]   io_mem_grant_bits_param,
  input  [2:0]   io_mem_grant_bits_size,
  input  [8:0]   io_mem_grant_bits_sink,
  input          io_mem_grant_bits_denied,
  input  [255:0] io_mem_grant_bits_data,
  input          io_mem_grant_bits_corrupt,
  input          io_mem_finish_ready,
  output         io_mem_finish_valid,
  output [8:0]   io_mem_finish_bits_sink,
  input          io_refill_pipe_req_ready,
  output         io_refill_pipe_req_valid,
  output [3:0]   io_refill_pipe_req_bits_source,
  output [35:0]  io_refill_pipe_req_bits_addr,
  output [7:0]   io_refill_pipe_req_bits_way_en,
  output [1:0]   io_refill_pipe_req_bits_alias,
  output [1:0]   io_refill_pipe_req_bits_miss_id,
  output [3:0]   io_refill_pipe_req_bits_id,
  output         io_refill_pipe_req_bits_error,
  output [7:0]   io_refill_pipe_req_bits_wmask,
  output [63:0]  io_refill_pipe_req_bits_data_0,
  output [63:0]  io_refill_pipe_req_bits_data_1,
  output [63:0]  io_refill_pipe_req_bits_data_2,
  output [63:0]  io_refill_pipe_req_bits_data_3,
  output [63:0]  io_refill_pipe_req_bits_data_4,
  output [63:0]  io_refill_pipe_req_bits_data_5,
  output [63:0]  io_refill_pipe_req_bits_data_6,
  output [63:0]  io_refill_pipe_req_bits_data_7,
  output [1:0]   io_refill_pipe_req_bits_meta_coh_state,
  input          io_refill_pipe_resp,
  input          io_replace_pipe_req_ready,
  output         io_replace_pipe_req_valid,
  output [1:0]   io_replace_pipe_req_bits_miss_id,
  output [38:0]  io_replace_pipe_req_bits_vaddr,
  output [35:0]  io_replace_pipe_req_bits_addr,
  output [7:0]   io_replace_pipe_req_bits_replace_way_en,
  input          io_replace_pipe_resp,
  input          io_main_pipe_req_ready,
  output         io_main_pipe_req_valid,
  output [1:0]   io_main_pipe_req_bits_miss_id,
  output [1:0]   io_main_pipe_req_bits_miss_param,
  output [7:0]   io_main_pipe_req_bits_miss_way_en,
  output [3:0]   io_main_pipe_req_bits_source,
  output [4:0]   io_main_pipe_req_bits_cmd,
  output [38:0]  io_main_pipe_req_bits_vaddr,
  output [35:0]  io_main_pipe_req_bits_addr,
  output [511:0] io_main_pipe_req_bits_store_data,
  output [2:0]   io_main_pipe_req_bits_word_idx,
  output [63:0]  io_main_pipe_req_bits_amo_data,
  output [7:0]   io_main_pipe_req_bits_amo_mask,
  output         io_main_pipe_req_bits_error,
  output [3:0]   io_main_pipe_req_bits_id,
  input          io_main_pipe_resp,
  output         io_block_addr_valid,
  output [35:0]  io_block_addr_bits,
  output         io_req_handled_by_this_entry,
  output         io_forwardInfo_inflight,
  output [35:0]  io_forwardInfo_paddr,
  output [63:0]  io_forwardInfo_raw_data_0,
  output [63:0]  io_forwardInfo_raw_data_1,
  output [63:0]  io_forwardInfo_raw_data_2,
  output [63:0]  io_forwardInfo_raw_data_3,
  output [63:0]  io_forwardInfo_raw_data_4,
  output [63:0]  io_forwardInfo_raw_data_5,
  output [63:0]  io_forwardInfo_raw_data_6,
  output [63:0]  io_forwardInfo_raw_data_7,
  output         io_forwardInfo_firstbeat_valid,
  output         io_forwardInfo_lastbeat_valid,
  input          io_l2_pf_store_only,
  input          io_acquire_fired_by_pipe_reg,
  input          io_memSetPattenDetected,
  input  [38:0]  io_rob_head_query_vaddr,
  input          io_rob_head_query_query_valid,
  output         io_rob_head_query_resp,
  output         io_prefetch_info_late_prefetch
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
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
  reg [63:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
  reg [63:0] _RAND_32;
  reg [63:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] req_source; // @[MissQueue.scala 335:16]
  reg [4:0] req_cmd; // @[MissQueue.scala 335:16]
  reg [35:0] req_addr; // @[MissQueue.scala 335:16]
  reg [38:0] req_vaddr; // @[MissQueue.scala 335:16]
  reg [7:0] req_way_en; // @[MissQueue.scala 335:16]
  reg [2:0] req_word_idx; // @[MissQueue.scala 335:16]
  reg [63:0] req_amo_data; // @[MissQueue.scala 335:16]
  reg [7:0] req_amo_mask; // @[MissQueue.scala 335:16]
  reg [1:0] req_req_coh_state; // @[MissQueue.scala 335:16]
  reg [23:0] req_replace_tag; // @[MissQueue.scala 335:16]
  reg [3:0] req_id; // @[MissQueue.scala 335:16]
  reg [63:0] req_store_mask; // @[MissQueue.scala 337:27]
  reg  req_valid; // @[MissQueue.scala 338:26]
  wire [5:0] set = req_vaddr[11:6]; // @[DCacheWrapper.scala 219:9]
  wire  input_req_is_prefetch = io_miss_req_pipe_reg_req_cmd == 5'h2 | io_miss_req_pipe_reg_req_cmd == 5'h3; // @[CacheConstants.scala 55:45]
  reg  s_acquire; // @[MissQueue.scala 345:26]
  reg  s_grantack; // @[MissQueue.scala 346:27]
  reg  s_replace_req; // @[MissQueue.scala 347:30]
  reg  s_refill; // @[MissQueue.scala 348:25]
  reg  s_mainpipe_req; // @[MissQueue.scala 349:31]
  reg  w_grantfirst; // @[MissQueue.scala 351:29]
  reg  w_grantlast; // @[MissQueue.scala 352:28]
  reg  w_replace_resp; // @[MissQueue.scala 353:31]
  reg  w_refill_resp; // @[MissQueue.scala 354:30]
  reg  w_mainpipe_resp; // @[MissQueue.scala 355:32]
  wire  mshr_penalty_sample = s_grantack & w_refill_resp & w_mainpipe_resp; // @[MissQueue.scala 357:51]
  wire  _acquire_not_sent_T = ~s_acquire; // @[MissQueue.scala 359:26]
  wire  acquire_not_sent = ~s_acquire & ~io_mem_acquire_ready; // @[MissQueue.scala 359:37]
  wire  data_not_refilled = ~w_grantfirst; // @[MissQueue.scala 360:27]
  reg  error; // @[MissQueue.scala 362:22]
  reg  prefetch; // @[MissQueue.scala 363:25]
  wire  _T_6 = io_mem_grant_ready & io_mem_grant_valid; // @[Decoupled.scala 50:35]
  wire [12:0] _beats1_decode_T_1 = 13'h3f << io_mem_grant_bits_size; // @[package.scala 234:77]
  wire [5:0] _beats1_decode_T_3 = ~_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  beats1_decode = _beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  beats1_opdata = io_mem_grant_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  beats1 = beats1_opdata & beats1_decode; // @[Edges.scala 220:14]
  reg  counter; // @[Edges.scala 228:27]
  wire  counter1 = counter - 1'h1; // @[Edges.scala 229:28]
  wire  first = ~counter; // @[Edges.scala 230:25]
  wire  last = counter | ~beats1; // @[Edges.scala 231:37]
  wire  refill_done = last & _T_6; // @[Edges.scala 232:22]
  wire  refill_count = beats1 & ~counter1; // @[Edges.scala 233:25]
  reg [1:0] grant_param; // @[MissQueue.scala 373:24]
  reg [63:0] refill_and_store_data_0; // @[MissQueue.scala 378:34]
  reg [63:0] refill_and_store_data_1; // @[MissQueue.scala 378:34]
  reg [63:0] refill_and_store_data_2; // @[MissQueue.scala 378:34]
  reg [63:0] refill_and_store_data_3; // @[MissQueue.scala 378:34]
  reg [63:0] refill_and_store_data_4; // @[MissQueue.scala 378:34]
  reg [63:0] refill_and_store_data_5; // @[MissQueue.scala 378:34]
  reg [63:0] refill_and_store_data_6; // @[MissQueue.scala 378:34]
  reg [63:0] refill_and_store_data_7; // @[MissQueue.scala 378:34]
  wire  _primary_fire_T_2 = ~io_req_bits_cancel; // @[MissQueue.scala 383:87]
  wire  primary_fire = io_req_valid & io_primary_ready & io_primary_valid & ~io_req_bits_cancel; // @[MissQueue.scala 383:84]
  wire  secondary_fire = io_req_valid & io_secondary_ready & _primary_fire_T_2; // @[MissQueue.scala 385:68]
  reg  secondary_fired; // @[MissQueue.scala 390:32]
  wire  _io_perf_pending_prefetch_T_1 = ~secondary_fired; // @[MissQueue.scala 392:56]
  wire  _io_rob_head_query_resp_T_3 = io_rob_head_query_query_valid & io_rob_head_query_vaddr[38:6] == req_vaddr[38:6]; // @[MissQueue.scala 315:21]
  wire  _GEN_1 = mshr_penalty_sample & req_valid ? 1'h0 : req_valid; // @[MissQueue.scala 399:37 400:15 338:26]
  wire [35:0] _req_addr_T_1 = {io_miss_req_pipe_reg_req_addr[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  wire  _T_11 = io_miss_req_pipe_reg_req_source == 4'h1; // @[MissQueue.scala 73:28]
  wire [63:0] _GEN_2 = _T_11 ? io_miss_req_pipe_reg_req_store_mask : req_store_mask; // @[MissQueue.scala 417:46 418:22 337:27]
  wire [63:0] _GEN_3 = _T_11 ? io_miss_req_pipe_reg_req_store_data[63:0] : refill_and_store_data_0; // @[MissQueue.scala 378:34 417:46 420:34]
  wire [63:0] _GEN_4 = _T_11 ? io_miss_req_pipe_reg_req_store_data[127:64] : refill_and_store_data_1; // @[MissQueue.scala 378:34 417:46 420:34]
  wire [63:0] _GEN_5 = _T_11 ? io_miss_req_pipe_reg_req_store_data[191:128] : refill_and_store_data_2; // @[MissQueue.scala 378:34 417:46 420:34]
  wire [63:0] _GEN_6 = _T_11 ? io_miss_req_pipe_reg_req_store_data[255:192] : refill_and_store_data_3; // @[MissQueue.scala 378:34 417:46 420:34]
  wire [63:0] _GEN_7 = _T_11 ? io_miss_req_pipe_reg_req_store_data[319:256] : refill_and_store_data_4; // @[MissQueue.scala 378:34 417:46 420:34]
  wire [63:0] _GEN_8 = _T_11 ? io_miss_req_pipe_reg_req_store_data[383:320] : refill_and_store_data_5; // @[MissQueue.scala 378:34 417:46 420:34]
  wire [63:0] _GEN_9 = _T_11 ? io_miss_req_pipe_reg_req_store_data[447:384] : refill_and_store_data_6; // @[MissQueue.scala 378:34 417:46 420:34]
  wire [63:0] _GEN_10 = _T_11 ? io_miss_req_pipe_reg_req_store_data[511:448] : refill_and_store_data_7; // @[MissQueue.scala 378:34 417:46 420:34]
  wire  _T_12 = io_miss_req_pipe_reg_req_source == 4'h2; // @[MissQueue.scala 74:26]
  wire  _T_13 = ~_T_12; // @[MissQueue.scala 425:11]
  wire  _GEN_11 = ~_T_12 ? 1'h0 : s_refill; // @[MissQueue.scala 425:46 426:16 348:25]
  wire  _GEN_12 = ~_T_12 ? 1'h0 : w_refill_resp; // @[MissQueue.scala 425:46 427:21 354:30]
  wire  _T_14 = io_miss_req_pipe_reg_req_req_coh_state > 2'h0; // @[Metadata.scala 49:45]
  wire  _T_16 = io_miss_req_pipe_reg_req_replace_coh_state > 2'h0; // @[Metadata.scala 49:45]
  wire  _GEN_13 = ~_T_14 & _T_16 & _T_13 ? 1'h0 : s_replace_req; // @[MissQueue.scala 430:125 431:21 347:30]
  wire  _GEN_14 = ~_T_14 & _T_16 & _T_13 ? 1'h0 : w_replace_resp; // @[MissQueue.scala 430:125 432:22 353:31]
  wire  _GEN_15 = _T_12 ? 1'h0 : s_mainpipe_req; // @[MissQueue.scala 435:45 436:22 349:31]
  wire  _GEN_16 = _T_12 ? 1'h0 : w_mainpipe_resp; // @[MissQueue.scala 435:45 437:23 355:32]
  wire  prefetch_block_match = io_miss_req_pipe_reg_req_addr[35:6] == io_req_bits_addr[35:6]; // @[MissQueue.scala 166:43]
  wire  _prefetch_T_2 = io_miss_req_pipe_reg_req_source >= 4'h3; // @[MissQueue.scala 75:31]
  wire  _prefetch_T_4 = io_req_bits_source >= 4'h3; // @[MissQueue.scala 75:31]
  wire  _prefetch_T_5 = ~_prefetch_T_4; // @[MissQueue.scala 167:70]
  wire  _prefetch_T_6 = io_req_valid & io_miss_req_pipe_reg_alloc & prefetch_block_match & _prefetch_T_2 & ~
    _prefetch_T_4; // @[MissQueue.scala 167:67]
  wire [3:0] _GEN_18 = io_miss_req_pipe_reg_alloc ? io_miss_req_pipe_reg_req_source : req_source; // @[MissQueue.scala 335:16 403:37 407:9]
  wire [4:0] _GEN_20 = io_miss_req_pipe_reg_alloc ? io_miss_req_pipe_reg_req_cmd : req_cmd; // @[MissQueue.scala 335:16 403:37 407:9]
  wire [35:0] _GEN_21 = io_miss_req_pipe_reg_alloc ? _req_addr_T_1 : req_addr; // @[MissQueue.scala 403:37 409:14 335:16]
  wire [38:0] _GEN_22 = io_miss_req_pipe_reg_alloc ? io_miss_req_pipe_reg_req_vaddr : req_vaddr; // @[MissQueue.scala 335:16 403:37 407:9]
  wire [7:0] _GEN_23 = io_miss_req_pipe_reg_alloc ? io_miss_req_pipe_reg_req_way_en : req_way_en; // @[MissQueue.scala 335:16 403:37 407:9]
  wire [2:0] _GEN_26 = io_miss_req_pipe_reg_alloc ? io_miss_req_pipe_reg_req_word_idx : req_word_idx; // @[MissQueue.scala 335:16 403:37 407:9]
  wire [63:0] _GEN_27 = io_miss_req_pipe_reg_alloc ? io_miss_req_pipe_reg_req_amo_data : req_amo_data; // @[MissQueue.scala 335:16 403:37 407:9]
  wire [7:0] _GEN_28 = io_miss_req_pipe_reg_alloc ? io_miss_req_pipe_reg_req_amo_mask : req_amo_mask; // @[MissQueue.scala 335:16 403:37 407:9]
  wire [23:0] _GEN_31 = io_miss_req_pipe_reg_alloc ? io_miss_req_pipe_reg_req_replace_tag : req_replace_tag; // @[MissQueue.scala 335:16 403:37 407:9]
  wire [3:0] _GEN_32 = io_miss_req_pipe_reg_alloc ? io_miss_req_pipe_reg_req_id : req_id; // @[MissQueue.scala 335:16 403:37 407:9]
  wire  _GEN_52 = io_miss_req_pipe_reg_alloc ? io_acquire_fired_by_pipe_reg : s_acquire; // @[MissQueue.scala 403:37 411:15 345:26]
  wire  _GEN_53 = io_miss_req_pipe_reg_alloc ? 1'h0 : s_grantack; // @[MissQueue.scala 403:37 412:16 346:27]
  wire  _GEN_54 = io_miss_req_pipe_reg_alloc ? 1'h0 : w_grantfirst; // @[MissQueue.scala 403:37 414:18 351:29]
  wire [63:0] _GEN_56 = io_miss_req_pipe_reg_alloc ? _GEN_2 : req_store_mask; // @[MissQueue.scala 337:27 403:37]
  wire [63:0] _GEN_57 = io_miss_req_pipe_reg_alloc ? _GEN_3 : refill_and_store_data_0; // @[MissQueue.scala 378:34 403:37]
  wire [63:0] _GEN_58 = io_miss_req_pipe_reg_alloc ? _GEN_4 : refill_and_store_data_1; // @[MissQueue.scala 378:34 403:37]
  wire [63:0] _GEN_59 = io_miss_req_pipe_reg_alloc ? _GEN_5 : refill_and_store_data_2; // @[MissQueue.scala 378:34 403:37]
  wire [63:0] _GEN_60 = io_miss_req_pipe_reg_alloc ? _GEN_6 : refill_and_store_data_3; // @[MissQueue.scala 378:34 403:37]
  wire [63:0] _GEN_61 = io_miss_req_pipe_reg_alloc ? _GEN_7 : refill_and_store_data_4; // @[MissQueue.scala 378:34 403:37]
  wire [63:0] _GEN_62 = io_miss_req_pipe_reg_alloc ? _GEN_8 : refill_and_store_data_5; // @[MissQueue.scala 378:34 403:37]
  wire [63:0] _GEN_63 = io_miss_req_pipe_reg_alloc ? _GEN_9 : refill_and_store_data_6; // @[MissQueue.scala 378:34 403:37]
  wire [63:0] _GEN_64 = io_miss_req_pipe_reg_alloc ? _GEN_10 : refill_and_store_data_7; // @[MissQueue.scala 378:34 403:37]
  wire  _GEN_66 = io_miss_req_pipe_reg_alloc ? _GEN_11 : s_refill; // @[MissQueue.scala 348:25 403:37]
  wire  _GEN_67 = io_miss_req_pipe_reg_alloc ? _GEN_12 : w_refill_resp; // @[MissQueue.scala 354:30 403:37]
  wire  _GEN_68 = io_miss_req_pipe_reg_alloc ? _GEN_13 : s_replace_req; // @[MissQueue.scala 347:30 403:37]
  wire  _GEN_69 = io_miss_req_pipe_reg_alloc ? _GEN_14 : w_replace_resp; // @[MissQueue.scala 353:31 403:37]
  wire  _GEN_70 = io_miss_req_pipe_reg_alloc ? _GEN_15 : s_mainpipe_req; // @[MissQueue.scala 349:31 403:37]
  wire  _GEN_71 = io_miss_req_pipe_reg_alloc ? _GEN_16 : w_mainpipe_resp; // @[MissQueue.scala 355:32 403:37]
  wire  _GEN_76 = io_miss_req_pipe_reg_alloc ? 1'h0 : secondary_fired; // @[MissQueue.scala 403:37 444:21 390:32]
  wire  _T_34 = req_source == 4'h2; // @[MissQueue.scala 74:26]
  wire [63:0] _GEN_95 = _T_11 ? io_miss_req_pipe_reg_req_store_data[63:0] : _GEN_57; // @[MissQueue.scala 456:47 464:34]
  wire [63:0] _GEN_96 = _T_11 ? io_miss_req_pipe_reg_req_store_data[127:64] : _GEN_58; // @[MissQueue.scala 456:47 464:34]
  wire [63:0] _GEN_97 = _T_11 ? io_miss_req_pipe_reg_req_store_data[191:128] : _GEN_59; // @[MissQueue.scala 456:47 464:34]
  wire [63:0] _GEN_98 = _T_11 ? io_miss_req_pipe_reg_req_store_data[255:192] : _GEN_60; // @[MissQueue.scala 456:47 464:34]
  wire [63:0] _GEN_99 = _T_11 ? io_miss_req_pipe_reg_req_store_data[319:256] : _GEN_61; // @[MissQueue.scala 456:47 464:34]
  wire [63:0] _GEN_100 = _T_11 ? io_miss_req_pipe_reg_req_store_data[383:320] : _GEN_62; // @[MissQueue.scala 456:47 464:34]
  wire [63:0] _GEN_101 = _T_11 ? io_miss_req_pipe_reg_req_store_data[447:384] : _GEN_63; // @[MissQueue.scala 456:47 464:34]
  wire [63:0] _GEN_102 = _T_11 ? io_miss_req_pipe_reg_req_store_data[511:448] : _GEN_64; // @[MissQueue.scala 456:47 464:34]
  wire [63:0] _GEN_123 = io_miss_req_pipe_reg_merge ? _GEN_95 : _GEN_57; // @[MissQueue.scala 447:37]
  wire [63:0] _GEN_124 = io_miss_req_pipe_reg_merge ? _GEN_96 : _GEN_58; // @[MissQueue.scala 447:37]
  wire [63:0] _GEN_125 = io_miss_req_pipe_reg_merge ? _GEN_97 : _GEN_59; // @[MissQueue.scala 447:37]
  wire [63:0] _GEN_126 = io_miss_req_pipe_reg_merge ? _GEN_98 : _GEN_60; // @[MissQueue.scala 447:37]
  wire [63:0] _GEN_127 = io_miss_req_pipe_reg_merge ? _GEN_99 : _GEN_61; // @[MissQueue.scala 447:37]
  wire [63:0] _GEN_128 = io_miss_req_pipe_reg_merge ? _GEN_100 : _GEN_62; // @[MissQueue.scala 447:37]
  wire [63:0] _GEN_129 = io_miss_req_pipe_reg_merge ? _GEN_101 : _GEN_63; // @[MissQueue.scala 447:37]
  wire [63:0] _GEN_130 = io_miss_req_pipe_reg_merge ? _GEN_102 : _GEN_64; // @[MissQueue.scala 447:37]
  wire  _T_50 = io_mem_acquire_ready & io_mem_acquire_valid; // @[Decoupled.scala 50:35]
  wire  _new_mask_0_T = req_source == 4'h1; // @[MissQueue.scala 73:28]
  wire [7:0] new_mask_0 = _new_mask_0_T ? req_store_mask[7:0] : 8'h0; // @[MissQueue.scala 494:23]
  wire [7:0] new_mask_1 = _new_mask_0_T ? req_store_mask[15:8] : 8'h0; // @[MissQueue.scala 494:23]
  wire [7:0] new_mask_2 = _new_mask_0_T ? req_store_mask[23:16] : 8'h0; // @[MissQueue.scala 494:23]
  wire [7:0] new_mask_3 = _new_mask_0_T ? req_store_mask[31:24] : 8'h0; // @[MissQueue.scala 494:23]
  wire [7:0] new_mask_4 = _new_mask_0_T ? req_store_mask[39:32] : 8'h0; // @[MissQueue.scala 494:23]
  wire [7:0] new_mask_5 = _new_mask_0_T ? req_store_mask[47:40] : 8'h0; // @[MissQueue.scala 494:23]
  wire [7:0] new_mask_6 = _new_mask_0_T ? req_store_mask[55:48] : 8'h0; // @[MissQueue.scala 494:23]
  wire [7:0] new_mask_7 = _new_mask_0_T ? req_store_mask[63:56] : 8'h0; // @[MissQueue.scala 494:23]
  reg  hasData; // @[MissQueue.scala 497:24]
  wire [2:0] _idx_T = {refill_count, 2'h0}; // @[MissQueue.scala 505:33]
  wire [3:0] _idx_T_1 = {{1'd0}, _idx_T}; // @[MissQueue.scala 505:57]
  wire [2:0] idx = _idx_T_1[2:0]; // @[MissQueue.scala 505:57]
  wire [63:0] grant_row = io_mem_grant_bits_data[63:0]; // @[MissQueue.scala 506:47]
  wire [7:0] _GEN_138 = 3'h1 == idx ? new_mask_1 : new_mask_0; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_139 = 3'h2 == idx ? new_mask_2 : _GEN_138; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_140 = 3'h3 == idx ? new_mask_3 : _GEN_139; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_141 = 3'h4 == idx ? new_mask_4 : _GEN_140; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_142 = 3'h5 == idx ? new_mask_5 : _GEN_141; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_143 = 3'h6 == idx ? new_mask_6 : _GEN_142; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_144 = 3'h7 == idx ? new_mask_7 : _GEN_143; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _refill_and_store_data_full_wmask_T_9 = _GEN_144[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_11 = _GEN_144[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_13 = _GEN_144[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_15 = _GEN_144[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_17 = _GEN_144[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_19 = _GEN_144[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_21 = _GEN_144[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_23 = _GEN_144[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] refill_and_store_data_full_wmask = {_refill_and_store_data_full_wmask_T_23,
    _refill_and_store_data_full_wmask_T_21,_refill_and_store_data_full_wmask_T_19,_refill_and_store_data_full_wmask_T_17
    ,_refill_and_store_data_full_wmask_T_15,_refill_and_store_data_full_wmask_T_13,
    _refill_and_store_data_full_wmask_T_11,_refill_and_store_data_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _refill_and_store_data_T = ~refill_and_store_data_full_wmask; // @[MissQueue.scala 488:6]
  wire [63:0] _refill_and_store_data_T_1 = _refill_and_store_data_T & grant_row; // @[MissQueue.scala 488:18]
  wire [63:0] _GEN_146 = 3'h1 == idx ? refill_and_store_data_1 : refill_and_store_data_0; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_147 = 3'h2 == idx ? refill_and_store_data_2 : _GEN_146; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_148 = 3'h3 == idx ? refill_and_store_data_3 : _GEN_147; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_149 = 3'h4 == idx ? refill_and_store_data_4 : _GEN_148; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_150 = 3'h5 == idx ? refill_and_store_data_5 : _GEN_149; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_151 = 3'h6 == idx ? refill_and_store_data_6 : _GEN_150; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_152 = 3'h7 == idx ? refill_and_store_data_7 : _GEN_151; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _refill_and_store_data_T_2 = refill_and_store_data_full_wmask & _GEN_152; // @[MissQueue.scala 488:42]
  wire [63:0] _refill_and_store_data_T_3 = _refill_and_store_data_T_1 | _refill_and_store_data_T_2; // @[MissQueue.scala 488:29]
  wire [63:0] _GEN_153 = 3'h0 == idx ? _refill_and_store_data_T_3 : _GEN_123; // @[MissQueue.scala 507:{36,36}]
  wire [63:0] _GEN_154 = 3'h1 == idx ? _refill_and_store_data_T_3 : _GEN_124; // @[MissQueue.scala 507:{36,36}]
  wire [63:0] _GEN_155 = 3'h2 == idx ? _refill_and_store_data_T_3 : _GEN_125; // @[MissQueue.scala 507:{36,36}]
  wire [63:0] _GEN_156 = 3'h3 == idx ? _refill_and_store_data_T_3 : _GEN_126; // @[MissQueue.scala 507:{36,36}]
  wire [63:0] _GEN_157 = 3'h4 == idx ? _refill_and_store_data_T_3 : _GEN_127; // @[MissQueue.scala 507:{36,36}]
  wire [63:0] _GEN_158 = 3'h5 == idx ? _refill_and_store_data_T_3 : _GEN_128; // @[MissQueue.scala 507:{36,36}]
  wire [63:0] _GEN_159 = 3'h6 == idx ? _refill_and_store_data_T_3 : _GEN_129; // @[MissQueue.scala 507:{36,36}]
  wire [63:0] _GEN_160 = 3'h7 == idx ? _refill_and_store_data_T_3 : _GEN_130; // @[MissQueue.scala 507:{36,36}]
  wire [2:0] idx_1 = _idx_T + 3'h1; // @[MissQueue.scala 505:57]
  wire [63:0] grant_row_1 = io_mem_grant_bits_data[127:64]; // @[MissQueue.scala 506:47]
  wire [7:0] _GEN_162 = 3'h1 == idx_1 ? new_mask_1 : new_mask_0; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_163 = 3'h2 == idx_1 ? new_mask_2 : _GEN_162; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_164 = 3'h3 == idx_1 ? new_mask_3 : _GEN_163; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_165 = 3'h4 == idx_1 ? new_mask_4 : _GEN_164; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_166 = 3'h5 == idx_1 ? new_mask_5 : _GEN_165; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_167 = 3'h6 == idx_1 ? new_mask_6 : _GEN_166; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_168 = 3'h7 == idx_1 ? new_mask_7 : _GEN_167; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _refill_and_store_data_full_wmask_T_33 = _GEN_168[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_35 = _GEN_168[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_37 = _GEN_168[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_39 = _GEN_168[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_41 = _GEN_168[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_43 = _GEN_168[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_45 = _GEN_168[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_47 = _GEN_168[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] refill_and_store_data_full_wmask_1 = {_refill_and_store_data_full_wmask_T_47,
    _refill_and_store_data_full_wmask_T_45,_refill_and_store_data_full_wmask_T_43,_refill_and_store_data_full_wmask_T_41
    ,_refill_and_store_data_full_wmask_T_39,_refill_and_store_data_full_wmask_T_37,
    _refill_and_store_data_full_wmask_T_35,_refill_and_store_data_full_wmask_T_33}; // @[Cat.scala 31:58]
  wire [63:0] _refill_and_store_data_T_4 = ~refill_and_store_data_full_wmask_1; // @[MissQueue.scala 488:6]
  wire [63:0] _refill_and_store_data_T_5 = _refill_and_store_data_T_4 & grant_row_1; // @[MissQueue.scala 488:18]
  wire [63:0] _GEN_170 = 3'h1 == idx_1 ? refill_and_store_data_1 : refill_and_store_data_0; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_171 = 3'h2 == idx_1 ? refill_and_store_data_2 : _GEN_170; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_172 = 3'h3 == idx_1 ? refill_and_store_data_3 : _GEN_171; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_173 = 3'h4 == idx_1 ? refill_and_store_data_4 : _GEN_172; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_174 = 3'h5 == idx_1 ? refill_and_store_data_5 : _GEN_173; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_175 = 3'h6 == idx_1 ? refill_and_store_data_6 : _GEN_174; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_176 = 3'h7 == idx_1 ? refill_and_store_data_7 : _GEN_175; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _refill_and_store_data_T_6 = refill_and_store_data_full_wmask_1 & _GEN_176; // @[MissQueue.scala 488:42]
  wire [63:0] _refill_and_store_data_T_7 = _refill_and_store_data_T_5 | _refill_and_store_data_T_6; // @[MissQueue.scala 488:29]
  wire [63:0] _GEN_177 = 3'h0 == idx_1 ? _refill_and_store_data_T_7 : _GEN_153; // @[MissQueue.scala 507:{36,36}]
  wire [63:0] _GEN_178 = 3'h1 == idx_1 ? _refill_and_store_data_T_7 : _GEN_154; // @[MissQueue.scala 507:{36,36}]
  wire [63:0] _GEN_179 = 3'h2 == idx_1 ? _refill_and_store_data_T_7 : _GEN_155; // @[MissQueue.scala 507:{36,36}]
  wire [63:0] _GEN_180 = 3'h3 == idx_1 ? _refill_and_store_data_T_7 : _GEN_156; // @[MissQueue.scala 507:{36,36}]
  wire [63:0] _GEN_181 = 3'h4 == idx_1 ? _refill_and_store_data_T_7 : _GEN_157; // @[MissQueue.scala 507:{36,36}]
  wire [63:0] _GEN_182 = 3'h5 == idx_1 ? _refill_and_store_data_T_7 : _GEN_158; // @[MissQueue.scala 507:{36,36}]
  wire [63:0] _GEN_183 = 3'h6 == idx_1 ? _refill_and_store_data_T_7 : _GEN_159; // @[MissQueue.scala 507:{36,36}]
  wire [63:0] _GEN_184 = 3'h7 == idx_1 ? _refill_and_store_data_T_7 : _GEN_160; // @[MissQueue.scala 507:{36,36}]
  wire [2:0] idx_2 = _idx_T + 3'h2; // @[MissQueue.scala 505:57]
  wire [63:0] grant_row_2 = io_mem_grant_bits_data[191:128]; // @[MissQueue.scala 506:47]
  wire [7:0] _GEN_186 = 3'h1 == idx_2 ? new_mask_1 : new_mask_0; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_187 = 3'h2 == idx_2 ? new_mask_2 : _GEN_186; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_188 = 3'h3 == idx_2 ? new_mask_3 : _GEN_187; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_189 = 3'h4 == idx_2 ? new_mask_4 : _GEN_188; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_190 = 3'h5 == idx_2 ? new_mask_5 : _GEN_189; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_191 = 3'h6 == idx_2 ? new_mask_6 : _GEN_190; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_192 = 3'h7 == idx_2 ? new_mask_7 : _GEN_191; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _refill_and_store_data_full_wmask_T_57 = _GEN_192[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_59 = _GEN_192[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_61 = _GEN_192[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_63 = _GEN_192[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_65 = _GEN_192[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_67 = _GEN_192[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_69 = _GEN_192[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_71 = _GEN_192[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] refill_and_store_data_full_wmask_2 = {_refill_and_store_data_full_wmask_T_71,
    _refill_and_store_data_full_wmask_T_69,_refill_and_store_data_full_wmask_T_67,_refill_and_store_data_full_wmask_T_65
    ,_refill_and_store_data_full_wmask_T_63,_refill_and_store_data_full_wmask_T_61,
    _refill_and_store_data_full_wmask_T_59,_refill_and_store_data_full_wmask_T_57}; // @[Cat.scala 31:58]
  wire [63:0] _refill_and_store_data_T_8 = ~refill_and_store_data_full_wmask_2; // @[MissQueue.scala 488:6]
  wire [63:0] _refill_and_store_data_T_9 = _refill_and_store_data_T_8 & grant_row_2; // @[MissQueue.scala 488:18]
  wire [63:0] _GEN_194 = 3'h1 == idx_2 ? refill_and_store_data_1 : refill_and_store_data_0; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_195 = 3'h2 == idx_2 ? refill_and_store_data_2 : _GEN_194; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_196 = 3'h3 == idx_2 ? refill_and_store_data_3 : _GEN_195; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_197 = 3'h4 == idx_2 ? refill_and_store_data_4 : _GEN_196; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_198 = 3'h5 == idx_2 ? refill_and_store_data_5 : _GEN_197; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_199 = 3'h6 == idx_2 ? refill_and_store_data_6 : _GEN_198; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_200 = 3'h7 == idx_2 ? refill_and_store_data_7 : _GEN_199; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _refill_and_store_data_T_10 = refill_and_store_data_full_wmask_2 & _GEN_200; // @[MissQueue.scala 488:42]
  wire [63:0] _refill_and_store_data_T_11 = _refill_and_store_data_T_9 | _refill_and_store_data_T_10; // @[MissQueue.scala 488:29]
  wire [2:0] idx_3 = _idx_T + 3'h3; // @[MissQueue.scala 505:57]
  wire [63:0] grant_row_3 = io_mem_grant_bits_data[255:192]; // @[MissQueue.scala 506:47]
  wire [7:0] _GEN_210 = 3'h1 == idx_3 ? new_mask_1 : new_mask_0; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_211 = 3'h2 == idx_3 ? new_mask_2 : _GEN_210; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_212 = 3'h3 == idx_3 ? new_mask_3 : _GEN_211; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_213 = 3'h4 == idx_3 ? new_mask_4 : _GEN_212; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_214 = 3'h5 == idx_3 ? new_mask_5 : _GEN_213; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_215 = 3'h6 == idx_3 ? new_mask_6 : _GEN_214; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _GEN_216 = 3'h7 == idx_3 ? new_mask_7 : _GEN_215; // @[Bitwise.scala 27:{51,51}]
  wire [7:0] _refill_and_store_data_full_wmask_T_81 = _GEN_216[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_83 = _GEN_216[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_85 = _GEN_216[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_87 = _GEN_216[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_89 = _GEN_216[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_91 = _GEN_216[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_93 = _GEN_216[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _refill_and_store_data_full_wmask_T_95 = _GEN_216[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] refill_and_store_data_full_wmask_3 = {_refill_and_store_data_full_wmask_T_95,
    _refill_and_store_data_full_wmask_T_93,_refill_and_store_data_full_wmask_T_91,_refill_and_store_data_full_wmask_T_89
    ,_refill_and_store_data_full_wmask_T_87,_refill_and_store_data_full_wmask_T_85,
    _refill_and_store_data_full_wmask_T_83,_refill_and_store_data_full_wmask_T_81}; // @[Cat.scala 31:58]
  wire [63:0] _refill_and_store_data_T_12 = ~refill_and_store_data_full_wmask_3; // @[MissQueue.scala 488:6]
  wire [63:0] _refill_and_store_data_T_13 = _refill_and_store_data_T_12 & grant_row_3; // @[MissQueue.scala 488:18]
  wire [63:0] _GEN_218 = 3'h1 == idx_3 ? refill_and_store_data_1 : refill_and_store_data_0; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_219 = 3'h2 == idx_3 ? refill_and_store_data_2 : _GEN_218; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_220 = 3'h3 == idx_3 ? refill_and_store_data_3 : _GEN_219; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_221 = 3'h4 == idx_3 ? refill_and_store_data_4 : _GEN_220; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_222 = 3'h5 == idx_3 ? refill_and_store_data_5 : _GEN_221; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_223 = 3'h6 == idx_3 ? refill_and_store_data_6 : _GEN_222; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _GEN_224 = 3'h7 == idx_3 ? refill_and_store_data_7 : _GEN_223; // @[MissQueue.scala 488:{42,42}]
  wire [63:0] _refill_and_store_data_T_14 = refill_and_store_data_full_wmask_3 & _GEN_224; // @[MissQueue.scala 488:42]
  wire [63:0] _refill_and_store_data_T_15 = _refill_and_store_data_T_13 | _refill_and_store_data_T_14; // @[MissQueue.scala 488:29]
  wire  _T_55 = io_mem_finish_ready & io_mem_finish_valid; // @[Decoupled.scala 50:35]
  wire  _T_56 = io_replace_pipe_req_ready & io_replace_pipe_req_valid; // @[Decoupled.scala 50:35]
  wire  _T_57 = io_refill_pipe_req_ready & io_refill_pipe_req_valid; // @[Decoupled.scala 50:35]
  wire  _T_58 = io_main_pipe_req_ready & io_main_pipe_req_valid; // @[Decoupled.scala 50:35]
  wire [63:0] _T_60 = 64'h4 - 64'he; // @[MissQueue.scala 595:47]
  wire [63:0] _GEN_291 = {{62'd0}, io_id}; // @[MissQueue.scala 595:22]
  reg  REG_5; // @[MissQueue.scala 595:15]
  wire  _io_primary_ready_T = ~req_valid; // @[MissQueue.scala 597:25]
  reg  io_primary_ready_REG; // @[MissQueue.scala 597:47]
  reg  io_primary_ready_REG_1; // @[MissQueue.scala 600:107]
  wire  io_secondary_ready_block_match = req_addr[35:6] == io_req_bits_addr[35:6]; // @[MissQueue.scala 566:43]
  wire  _io_secondary_ready_T_1 = req_source == 4'h0; // @[MissQueue.scala 72:27]
  wire  _io_secondary_ready_T_2 = req_source >= 4'h3; // @[MissQueue.scala 75:31]
  wire  _io_secondary_ready_T_5 = io_req_bits_source == 4'h0; // @[MissQueue.scala 72:27]
  wire  _io_secondary_ready_T_6 = io_req_bits_source == 4'h1; // @[MissQueue.scala 73:28]
  wire  _io_secondary_ready_T_8 = acquire_not_sent & (_io_secondary_ready_T_1 | _io_secondary_ready_T_2) & (
    _io_secondary_ready_T_5 | _io_secondary_ready_T_6); // @[MissQueue.scala 556:64]
  wire  _io_secondary_ready_T_16 = data_not_refilled & (_io_secondary_ready_T_1 | _new_mask_0_T |
    _io_secondary_ready_T_2) & _io_secondary_ready_T_5; // @[MissQueue.scala 560:84]
  wire  _io_secondary_ready_T_17 = _io_secondary_ready_T_8 | _io_secondary_ready_T_16; // @[MissQueue.scala 570:42]
  wire  io_secondary_reject_set_match = set == io_req_bits_vaddr[11:6]; // @[MissQueue.scala 583:25]
  wire  _io_secondary_reject_T_18 = ~_io_secondary_ready_T_8 & ~_io_secondary_ready_T_16; // @[MissQueue.scala 589:46]
  wire  _io_secondary_reject_T_22 = io_secondary_reject_set_match & io_req_bits_way_en == req_way_en; // @[MissQueue.scala 590:19]
  wire  _io_secondary_reject_T_23 = io_secondary_ready_block_match ? _io_secondary_reject_T_18 :
    _io_secondary_reject_T_22; // @[MissQueue.scala 587:10]
  wire [255:0] refill_data_splited_data_lo = {refill_and_store_data_3,refill_and_store_data_2,refill_and_store_data_1,
    refill_and_store_data_0}; // @[MissQueue.scala 610:38]
  wire [255:0] refill_data_splited_data_hi = {refill_and_store_data_7,refill_and_store_data_6,refill_and_store_data_5,
    refill_and_store_data_4}; // @[MissQueue.scala 610:38]
  wire [511:0] refill_data_splited_data = {refill_and_store_data_7,refill_and_store_data_6,refill_and_store_data_5,
    refill_and_store_data_4,refill_and_store_data_3,refill_and_store_data_2,refill_and_store_data_1,
    refill_and_store_data_0}; // @[MissQueue.scala 610:38]
  wire  _io_refill_to_ldq_valid_T = ~w_grantlast; // @[MissQueue.scala 614:37]
  wire  _grow_param_c_cat_T_5 = req_cmd == 5'h4; // @[package.scala 15:47]
  wire  _grow_param_c_cat_T_6 = req_cmd == 5'h9; // @[package.scala 15:47]
  wire  _grow_param_c_cat_T_7 = req_cmd == 5'ha; // @[package.scala 15:47]
  wire  _grow_param_c_cat_T_8 = req_cmd == 5'hb; // @[package.scala 15:47]
  wire  _grow_param_c_cat_T_11 = _grow_param_c_cat_T_5 | _grow_param_c_cat_T_6 | _grow_param_c_cat_T_7 |
    _grow_param_c_cat_T_8; // @[package.scala 72:59]
  wire  _grow_param_c_cat_T_12 = req_cmd == 5'h8; // @[package.scala 15:47]
  wire  _grow_param_c_cat_T_13 = req_cmd == 5'hc; // @[package.scala 15:47]
  wire  _grow_param_c_cat_T_14 = req_cmd == 5'hd; // @[package.scala 15:47]
  wire  _grow_param_c_cat_T_15 = req_cmd == 5'he; // @[package.scala 15:47]
  wire  _grow_param_c_cat_T_16 = req_cmd == 5'hf; // @[package.scala 15:47]
  wire  _grow_param_c_cat_T_20 = _grow_param_c_cat_T_12 | _grow_param_c_cat_T_13 | _grow_param_c_cat_T_14 |
    _grow_param_c_cat_T_15 | _grow_param_c_cat_T_16; // @[package.scala 72:59]
  wire  _grow_param_c_cat_T_21 = _grow_param_c_cat_T_11 | _grow_param_c_cat_T_20; // @[Consts.scala 82:44]
  wire  _grow_param_c_cat_T_22 = req_cmd == 5'h1 | req_cmd == 5'h11 | req_cmd == 5'h7 | _grow_param_c_cat_T_21; // @[Consts.scala 85:76]
  wire  _grow_param_c_cat_T_49 = _grow_param_c_cat_T_22 | req_cmd == 5'h3 | req_cmd == 5'h6; // @[Consts.scala 86:64]
  wire [3:0] _grow_param_T = {_grow_param_c_cat_T_22,_grow_param_c_cat_T_49,req_req_coh_state}; // @[Cat.scala 31:58]
  wire  _grow_param_T_25 = 4'hc == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_27 = _grow_param_T_25 ? 2'h1 : 2'h0; // @[Misc.scala 34:36]
  wire  _grow_param_T_28 = 4'hd == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_30 = _grow_param_T_28 ? 2'h2 : _grow_param_T_27; // @[Misc.scala 34:36]
  wire  _grow_param_T_31 = 4'h4 == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_33 = _grow_param_T_31 ? 2'h1 : _grow_param_T_30; // @[Misc.scala 34:36]
  wire  _grow_param_T_34 = 4'h5 == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_36 = _grow_param_T_34 ? 2'h2 : _grow_param_T_33; // @[Misc.scala 34:36]
  wire  _grow_param_T_37 = 4'h0 == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_39 = _grow_param_T_37 ? 2'h0 : _grow_param_T_36; // @[Misc.scala 34:36]
  wire  _grow_param_T_40 = 4'he == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_42 = _grow_param_T_40 ? 2'h3 : _grow_param_T_39; // @[Misc.scala 34:36]
  wire  _grow_param_T_43 = 4'hf == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_45 = _grow_param_T_43 ? 2'h3 : _grow_param_T_42; // @[Misc.scala 34:36]
  wire  _grow_param_T_46 = 4'h6 == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_48 = _grow_param_T_46 ? 2'h2 : _grow_param_T_45; // @[Misc.scala 34:36]
  wire  _grow_param_T_49 = 4'h7 == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_51 = _grow_param_T_49 ? 2'h3 : _grow_param_T_48; // @[Misc.scala 34:36]
  wire  _grow_param_T_52 = 4'h1 == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_54 = _grow_param_T_52 ? 2'h1 : _grow_param_T_51; // @[Misc.scala 34:36]
  wire  _grow_param_T_55 = 4'h2 == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _grow_param_T_57 = _grow_param_T_55 ? 2'h2 : _grow_param_T_54; // @[Misc.scala 34:36]
  wire  _grow_param_T_58 = 4'h3 == _grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] grow_param = _grow_param_T_58 ? 2'h3 : _grow_param_T_57; // @[Misc.scala 34:36]
  wire [2:0] _GEN_271 = _T_34 ? 3'h4 : 3'h6; // @[MissQueue.scala 654:31 655:61 657:61]
  wire [2:0] _GEN_272 = _io_secondary_ready_T_1 ? 3'h2 : _GEN_271; // @[MissQueue.scala 652:32 653:61]
  wire [2:0] _GEN_273 = _new_mask_0_T ? 3'h3 : _GEN_272; // @[MissQueue.scala 650:27 651:61]
  wire [2:0] _GEN_274 = prefetch & _io_perf_pending_prefetch_T_1 ? 3'h6 : _GEN_273; // @[MissQueue.scala 647:38 648:59]
  reg [8:0] grantack_sink; // @[Reg.scala 16:16]
  wire  _io_refill_pipe_req_bits_wmask_T_1 = hasData | _io_secondary_ready_T_1; // @[MissQueue.scala 692:13]
  wire [7:0] _io_refill_pipe_req_bits_wmask_T_19 = {|req_store_mask[63:56],|req_store_mask[55:48],|req_store_mask[47:40]
    ,|req_store_mask[39:32],|req_store_mask[31:24],|req_store_mask[23:16],|req_store_mask[15:8],|req_store_mask[7:0]}; // @[MissQueue.scala 694:86]
  wire [4:0] _io_refill_pipe_req_bits_meta_coh_T = {_grow_param_c_cat_T_22,_grow_param_c_cat_T_49,grant_param,1'h0}; // @[Cat.scala 31:58]
  wire [1:0] _io_refill_pipe_req_bits_meta_coh_T_18 = 5'h2 == _io_refill_pipe_req_bits_meta_coh_T ? 2'h1 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] _io_refill_pipe_req_bits_meta_coh_T_20 = 5'h3 == _io_refill_pipe_req_bits_meta_coh_T ? 2'h1 :
    _io_refill_pipe_req_bits_meta_coh_T_18; // @[Mux.scala 81:58]
  wire [1:0] _io_refill_pipe_req_bits_meta_coh_T_22 = 5'h0 == _io_refill_pipe_req_bits_meta_coh_T ? 2'h2 :
    _io_refill_pipe_req_bits_meta_coh_T_20; // @[Mux.scala 81:58]
  wire [1:0] _io_refill_pipe_req_bits_meta_coh_T_24 = 5'h1 == _io_refill_pipe_req_bits_meta_coh_T ? 2'h3 :
    _io_refill_pipe_req_bits_meta_coh_T_22; // @[Mux.scala 81:58]
  wire [1:0] _io_refill_pipe_req_bits_meta_coh_T_26 = 5'h8 == _io_refill_pipe_req_bits_meta_coh_T ? 2'h2 :
    _io_refill_pipe_req_bits_meta_coh_T_24; // @[Mux.scala 81:58]
  wire [1:0] _io_refill_pipe_req_bits_meta_coh_T_28 = 5'h9 == _io_refill_pipe_req_bits_meta_coh_T ? 2'h3 :
    _io_refill_pipe_req_bits_meta_coh_T_26; // @[Mux.scala 81:58]
  wire [1:0] _io_refill_pipe_req_bits_meta_coh_T_30 = 5'h18 == _io_refill_pipe_req_bits_meta_coh_T ? 2'h3 :
    _io_refill_pipe_req_bits_meta_coh_T_28; // @[Mux.scala 81:58]
  assign io_primary_ready = REG_5 ? ~req_valid & ~io_primary_ready_REG : _io_primary_ready_T & (_prefetch_T_5 |
    io_memSetPattenDetected) & ~io_primary_ready_REG_1; // @[MissQueue.scala 595:73 597:22 600:22]
  assign io_secondary_ready = io_secondary_ready_block_match & _io_secondary_ready_T_17; // @[MissQueue.scala 568:32]
  assign io_secondary_reject = req_valid & _io_secondary_reject_T_23; // @[MissQueue.scala 586:15]
  assign io_repl_way_en = req_way_en; // @[MissQueue.scala 604:18]
  assign io_mem_acquire_valid = _acquire_not_sent_T & ~(io_miss_req_pipe_reg_merge & _T_11); // @[MissQueue.scala 625:38]
  assign io_mem_acquire_bits_param = {{1'd0}, grow_param}; // @[Edges.scala 345:17 347:15]
  assign io_mem_acquire_bits_source = {{2'd0}, io_id}; // @[Edges.scala 345:17 349:15]
  assign io_mem_acquire_bits_address = req_addr; // @[MissQueue.scala 639:29]
  assign io_mem_acquire_bits_user_vaddr = req_vaddr[38:6]; // @[MissQueue.scala 643:66]
  assign io_mem_acquire_bits_user_reqSource = {{1'd0}, _GEN_274};
  assign io_mem_acquire_bits_user_needHint = io_l2_pf_store_only ? _new_mask_0_T : 1'h1; // @[MissQueue.scala 645:62]
  assign io_mem_grant_ready = _io_refill_to_ldq_valid_T & s_acquire; // @[MissQueue.scala 662:38]
  assign io_mem_finish_valid = ~s_grantack & w_grantfirst; // @[MissQueue.scala 666:38]
  assign io_mem_finish_bits_sink = grantack_sink; // @[MissQueue.scala 667:22]
  assign io_refill_pipe_req_valid = ~s_refill & w_replace_resp & w_grantlast; // @[MissQueue.scala 685:59]
  assign io_refill_pipe_req_bits_source = req_source; // @[MissQueue.scala 687:17]
  assign io_refill_pipe_req_bits_addr = req_addr; // @[MissQueue.scala 689:15]
  assign io_refill_pipe_req_bits_way_en = req_way_en; // @[MissQueue.scala 690:17]
  assign io_refill_pipe_req_bits_alias = req_vaddr[13:12]; // @[MissQueue.scala 716:28]
  assign io_refill_pipe_req_bits_miss_id = io_id; // @[MissQueue.scala 697:18]
  assign io_refill_pipe_req_bits_id = req_id; // @[MissQueue.scala 698:13]
  assign io_refill_pipe_req_bits_error = error; // @[MissQueue.scala 713:16]
  assign io_refill_pipe_req_bits_wmask = _io_refill_pipe_req_bits_wmask_T_1 ? 8'hff :
    _io_refill_pipe_req_bits_wmask_T_19; // @[MissQueue.scala 691:22]
  assign io_refill_pipe_req_bits_data_0 = refill_data_splited_data[63:0]; // @[MissQueue.scala 696:48]
  assign io_refill_pipe_req_bits_data_1 = refill_data_splited_data[127:64]; // @[MissQueue.scala 696:48]
  assign io_refill_pipe_req_bits_data_2 = refill_data_splited_data[191:128]; // @[MissQueue.scala 696:48]
  assign io_refill_pipe_req_bits_data_3 = refill_data_splited_data[255:192]; // @[MissQueue.scala 696:48]
  assign io_refill_pipe_req_bits_data_4 = refill_data_splited_data[319:256]; // @[MissQueue.scala 696:48]
  assign io_refill_pipe_req_bits_data_5 = refill_data_splited_data[383:320]; // @[MissQueue.scala 696:48]
  assign io_refill_pipe_req_bits_data_6 = refill_data_splited_data[447:384]; // @[MissQueue.scala 696:48]
  assign io_refill_pipe_req_bits_data_7 = refill_data_splited_data[511:448]; // @[MissQueue.scala 696:48]
  assign io_refill_pipe_req_bits_meta_coh_state = 5'h19 == _io_refill_pipe_req_bits_meta_coh_T ? 2'h3 :
    _io_refill_pipe_req_bits_meta_coh_T_30; // @[Mux.scala 81:58]
  assign io_replace_pipe_req_valid = ~s_replace_req; // @[MissQueue.scala 669:32]
  assign io_replace_pipe_req_bits_miss_id = io_id; // @[MissQueue.scala 673:19]
  assign io_replace_pipe_req_bits_vaddr = req_vaddr; // @[MissQueue.scala 678:17]
  assign io_replace_pipe_req_bits_addr = {req_replace_tag,12'h0}; // @[Cat.scala 31:58]
  assign io_replace_pipe_req_bits_replace_way_en = req_way_en; // @[MissQueue.scala 682:26]
  assign io_main_pipe_req_valid = ~s_mainpipe_req & w_grantlast; // @[MissQueue.scala 719:45]
  assign io_main_pipe_req_bits_miss_id = io_id; // @[MissQueue.scala 722:33]
  assign io_main_pipe_req_bits_miss_param = grant_param; // @[MissQueue.scala 723:36]
  assign io_main_pipe_req_bits_miss_way_en = req_way_en; // @[MissQueue.scala 725:37]
  assign io_main_pipe_req_bits_source = req_source; // @[MissQueue.scala 727:32]
  assign io_main_pipe_req_bits_cmd = req_cmd; // @[MissQueue.scala 728:29]
  assign io_main_pipe_req_bits_vaddr = req_vaddr; // @[MissQueue.scala 729:31]
  assign io_main_pipe_req_bits_addr = req_addr; // @[MissQueue.scala 730:30]
  assign io_main_pipe_req_bits_store_data = {refill_data_splited_data_hi,refill_data_splited_data_lo}; // @[MissQueue.scala 731:61]
  assign io_main_pipe_req_bits_word_idx = req_word_idx; // @[MissQueue.scala 733:34]
  assign io_main_pipe_req_bits_amo_data = req_amo_data; // @[MissQueue.scala 734:34]
  assign io_main_pipe_req_bits_amo_mask = req_amo_mask; // @[MissQueue.scala 735:34]
  assign io_main_pipe_req_bits_error = error; // @[MissQueue.scala 736:31]
  assign io_main_pipe_req_bits_id = req_id; // @[MissQueue.scala 737:28]
  assign io_block_addr_valid = req_valid & w_grantlast & ~w_refill_resp; // @[MissQueue.scala 739:51]
  assign io_block_addr_bits = req_addr; // @[MissQueue.scala 740:22]
  assign io_req_handled_by_this_entry = primary_fire | secondary_fire; // @[MissQueue.scala 387:48]
  assign io_forwardInfo_inflight = req_valid; // @[DCacheWrapper.scala 661:14]
  assign io_forwardInfo_paddr = req_addr; // @[DCacheWrapper.scala 662:11]
  assign io_forwardInfo_raw_data_0 = refill_and_store_data_0; // @[DCacheWrapper.scala 663:14]
  assign io_forwardInfo_raw_data_1 = refill_and_store_data_1; // @[DCacheWrapper.scala 663:14]
  assign io_forwardInfo_raw_data_2 = refill_and_store_data_2; // @[DCacheWrapper.scala 663:14]
  assign io_forwardInfo_raw_data_3 = refill_and_store_data_3; // @[DCacheWrapper.scala 663:14]
  assign io_forwardInfo_raw_data_4 = refill_and_store_data_4; // @[DCacheWrapper.scala 663:14]
  assign io_forwardInfo_raw_data_5 = refill_and_store_data_5; // @[DCacheWrapper.scala 663:14]
  assign io_forwardInfo_raw_data_6 = refill_and_store_data_6; // @[DCacheWrapper.scala 663:14]
  assign io_forwardInfo_raw_data_7 = refill_and_store_data_7; // @[DCacheWrapper.scala 663:14]
  assign io_forwardInfo_firstbeat_valid = w_grantfirst; // @[DCacheWrapper.scala 664:21]
  assign io_forwardInfo_lastbeat_valid = w_grantlast; // @[DCacheWrapper.scala 665:20]
  assign io_rob_head_query_resp = _io_rob_head_query_resp_T_3 & req_valid; // @[MissQueue.scala 395:64]
  assign io_prefetch_info_late_prefetch = io_req_valid & _prefetch_T_5 & req_valid & io_secondary_ready_block_match &
    prefetch; // @[MissQueue.scala 749:153]
  always @(posedge clock) begin
    if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (_T_11) begin // @[MissQueue.scala 456:47]
        req_source <= io_miss_req_pipe_reg_req_source; // @[MissQueue.scala 457:11]
      end else begin
        req_source <= _GEN_18;
      end
    end else begin
      req_source <= _GEN_18;
    end
    if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (_T_11) begin // @[MissQueue.scala 456:47]
        req_cmd <= io_miss_req_pipe_reg_req_cmd; // @[MissQueue.scala 457:11]
      end else begin
        req_cmd <= _GEN_20;
      end
    end else begin
      req_cmd <= _GEN_20;
    end
    if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (_T_11) begin // @[MissQueue.scala 456:47]
        req_addr <= _req_addr_T_1; // @[MissQueue.scala 458:16]
      end else begin
        req_addr <= _GEN_21;
      end
    end else begin
      req_addr <= _GEN_21;
    end
    if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (_T_11) begin // @[MissQueue.scala 456:47]
        req_vaddr <= io_miss_req_pipe_reg_req_vaddr; // @[MissQueue.scala 457:11]
      end else begin
        req_vaddr <= _GEN_22;
      end
    end else begin
      req_vaddr <= _GEN_22;
    end
    if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (!(_T_11)) begin // @[MissQueue.scala 456:47]
        req_way_en <= _GEN_23;
      end
    end else begin
      req_way_en <= _GEN_23;
    end
    if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (_T_11) begin // @[MissQueue.scala 456:47]
        req_word_idx <= io_miss_req_pipe_reg_req_word_idx; // @[MissQueue.scala 457:11]
      end else begin
        req_word_idx <= _GEN_26;
      end
    end else begin
      req_word_idx <= _GEN_26;
    end
    if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (_T_11) begin // @[MissQueue.scala 456:47]
        req_amo_data <= io_miss_req_pipe_reg_req_amo_data; // @[MissQueue.scala 457:11]
      end else begin
        req_amo_data <= _GEN_27;
      end
    end else begin
      req_amo_data <= _GEN_27;
    end
    if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (_T_11) begin // @[MissQueue.scala 456:47]
        req_amo_mask <= io_miss_req_pipe_reg_req_amo_mask; // @[MissQueue.scala 457:11]
      end else begin
        req_amo_mask <= _GEN_28;
      end
    end else begin
      req_amo_mask <= _GEN_28;
    end
    if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      req_req_coh_state <= io_miss_req_pipe_reg_req_req_coh_state;
    end else if (io_miss_req_pipe_reg_alloc) begin // @[MissQueue.scala 403:37]
      req_req_coh_state <= io_miss_req_pipe_reg_req_req_coh_state; // @[MissQueue.scala 407:9]
    end
    if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (!(_T_11)) begin // @[MissQueue.scala 456:47]
        req_replace_tag <= _GEN_31;
      end
    end else begin
      req_replace_tag <= _GEN_31;
    end
    if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (_T_11) begin // @[MissQueue.scala 456:47]
        req_id <= io_miss_req_pipe_reg_req_id; // @[MissQueue.scala 457:11]
      end else begin
        req_id <= _GEN_32;
      end
    end else begin
      req_id <= _GEN_32;
    end
    if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (_T_11) begin // @[MissQueue.scala 456:47]
        req_store_mask <= io_miss_req_pipe_reg_req_store_mask; // @[MissQueue.scala 462:22]
      end else begin
        req_store_mask <= _GEN_56;
      end
    end else begin
      req_store_mask <= _GEN_56;
    end
    if (_T_6) begin // @[MissQueue.scala 499:30]
      grant_param <= io_mem_grant_bits_param; // @[MissQueue.scala 501:17]
    end
    if (_T_6) begin // @[MissQueue.scala 499:30]
      if (beats1_opdata) begin // @[MissQueue.scala 502:44]
        if (3'h0 == idx_3) begin // @[MissQueue.scala 507:36]
          refill_and_store_data_0 <= _refill_and_store_data_T_15; // @[MissQueue.scala 507:36]
        end else if (3'h0 == idx_2) begin // @[MissQueue.scala 507:36]
          refill_and_store_data_0 <= _refill_and_store_data_T_11; // @[MissQueue.scala 507:36]
        end else begin
          refill_and_store_data_0 <= _GEN_177;
        end
      end
    end else if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (_T_11) begin // @[MissQueue.scala 456:47]
        refill_and_store_data_0 <= io_miss_req_pipe_reg_req_store_data[63:0]; // @[MissQueue.scala 464:34]
      end else begin
        refill_and_store_data_0 <= _GEN_57;
      end
    end else begin
      refill_and_store_data_0 <= _GEN_57;
    end
    if (_T_6) begin // @[MissQueue.scala 499:30]
      if (beats1_opdata) begin // @[MissQueue.scala 502:44]
        if (3'h1 == idx_3) begin // @[MissQueue.scala 507:36]
          refill_and_store_data_1 <= _refill_and_store_data_T_15; // @[MissQueue.scala 507:36]
        end else if (3'h1 == idx_2) begin // @[MissQueue.scala 507:36]
          refill_and_store_data_1 <= _refill_and_store_data_T_11; // @[MissQueue.scala 507:36]
        end else begin
          refill_and_store_data_1 <= _GEN_178;
        end
      end
    end else if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (_T_11) begin // @[MissQueue.scala 456:47]
        refill_and_store_data_1 <= io_miss_req_pipe_reg_req_store_data[127:64]; // @[MissQueue.scala 464:34]
      end else begin
        refill_and_store_data_1 <= _GEN_58;
      end
    end else begin
      refill_and_store_data_1 <= _GEN_58;
    end
    if (_T_6) begin // @[MissQueue.scala 499:30]
      if (beats1_opdata) begin // @[MissQueue.scala 502:44]
        if (3'h2 == idx_3) begin // @[MissQueue.scala 507:36]
          refill_and_store_data_2 <= _refill_and_store_data_T_15; // @[MissQueue.scala 507:36]
        end else if (3'h2 == idx_2) begin // @[MissQueue.scala 507:36]
          refill_and_store_data_2 <= _refill_and_store_data_T_11; // @[MissQueue.scala 507:36]
        end else begin
          refill_and_store_data_2 <= _GEN_179;
        end
      end
    end else if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (_T_11) begin // @[MissQueue.scala 456:47]
        refill_and_store_data_2 <= io_miss_req_pipe_reg_req_store_data[191:128]; // @[MissQueue.scala 464:34]
      end else begin
        refill_and_store_data_2 <= _GEN_59;
      end
    end else begin
      refill_and_store_data_2 <= _GEN_59;
    end
    if (_T_6) begin // @[MissQueue.scala 499:30]
      if (beats1_opdata) begin // @[MissQueue.scala 502:44]
        if (3'h3 == idx_3) begin // @[MissQueue.scala 507:36]
          refill_and_store_data_3 <= _refill_and_store_data_T_15; // @[MissQueue.scala 507:36]
        end else if (3'h3 == idx_2) begin // @[MissQueue.scala 507:36]
          refill_and_store_data_3 <= _refill_and_store_data_T_11; // @[MissQueue.scala 507:36]
        end else begin
          refill_and_store_data_3 <= _GEN_180;
        end
      end
    end else if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (_T_11) begin // @[MissQueue.scala 456:47]
        refill_and_store_data_3 <= io_miss_req_pipe_reg_req_store_data[255:192]; // @[MissQueue.scala 464:34]
      end else begin
        refill_and_store_data_3 <= _GEN_60;
      end
    end else begin
      refill_and_store_data_3 <= _GEN_60;
    end
    if (_T_6) begin // @[MissQueue.scala 499:30]
      if (beats1_opdata) begin // @[MissQueue.scala 502:44]
        if (3'h4 == idx_3) begin // @[MissQueue.scala 507:36]
          refill_and_store_data_4 <= _refill_and_store_data_T_15; // @[MissQueue.scala 507:36]
        end else if (3'h4 == idx_2) begin // @[MissQueue.scala 507:36]
          refill_and_store_data_4 <= _refill_and_store_data_T_11; // @[MissQueue.scala 507:36]
        end else begin
          refill_and_store_data_4 <= _GEN_181;
        end
      end
    end else if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (_T_11) begin // @[MissQueue.scala 456:47]
        refill_and_store_data_4 <= io_miss_req_pipe_reg_req_store_data[319:256]; // @[MissQueue.scala 464:34]
      end else begin
        refill_and_store_data_4 <= _GEN_61;
      end
    end else begin
      refill_and_store_data_4 <= _GEN_61;
    end
    if (_T_6) begin // @[MissQueue.scala 499:30]
      if (beats1_opdata) begin // @[MissQueue.scala 502:44]
        if (3'h5 == idx_3) begin // @[MissQueue.scala 507:36]
          refill_and_store_data_5 <= _refill_and_store_data_T_15; // @[MissQueue.scala 507:36]
        end else if (3'h5 == idx_2) begin // @[MissQueue.scala 507:36]
          refill_and_store_data_5 <= _refill_and_store_data_T_11; // @[MissQueue.scala 507:36]
        end else begin
          refill_and_store_data_5 <= _GEN_182;
        end
      end
    end else if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (_T_11) begin // @[MissQueue.scala 456:47]
        refill_and_store_data_5 <= io_miss_req_pipe_reg_req_store_data[383:320]; // @[MissQueue.scala 464:34]
      end else begin
        refill_and_store_data_5 <= _GEN_62;
      end
    end else begin
      refill_and_store_data_5 <= _GEN_62;
    end
    if (_T_6) begin // @[MissQueue.scala 499:30]
      if (beats1_opdata) begin // @[MissQueue.scala 502:44]
        if (3'h6 == idx_3) begin // @[MissQueue.scala 507:36]
          refill_and_store_data_6 <= _refill_and_store_data_T_15; // @[MissQueue.scala 507:36]
        end else if (3'h6 == idx_2) begin // @[MissQueue.scala 507:36]
          refill_and_store_data_6 <= _refill_and_store_data_T_11; // @[MissQueue.scala 507:36]
        end else begin
          refill_and_store_data_6 <= _GEN_183;
        end
      end
    end else if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (_T_11) begin // @[MissQueue.scala 456:47]
        refill_and_store_data_6 <= io_miss_req_pipe_reg_req_store_data[447:384]; // @[MissQueue.scala 464:34]
      end else begin
        refill_and_store_data_6 <= _GEN_63;
      end
    end else begin
      refill_and_store_data_6 <= _GEN_63;
    end
    if (_T_6) begin // @[MissQueue.scala 499:30]
      if (beats1_opdata) begin // @[MissQueue.scala 502:44]
        if (3'h7 == idx_3) begin // @[MissQueue.scala 507:36]
          refill_and_store_data_7 <= _refill_and_store_data_T_15; // @[MissQueue.scala 507:36]
        end else if (3'h7 == idx_2) begin // @[MissQueue.scala 507:36]
          refill_and_store_data_7 <= _refill_and_store_data_T_11; // @[MissQueue.scala 507:36]
        end else begin
          refill_and_store_data_7 <= _GEN_184;
        end
      end
    end else if (io_miss_req_pipe_reg_merge) begin // @[MissQueue.scala 447:37]
      if (_T_11) begin // @[MissQueue.scala 456:47]
        refill_and_store_data_7 <= io_miss_req_pipe_reg_req_store_data[511:448]; // @[MissQueue.scala 464:34]
      end else begin
        refill_and_store_data_7 <= _GEN_64;
      end
    end else begin
      refill_and_store_data_7 <= _GEN_64;
    end
    REG_5 <= _GEN_291 >= _T_60; // @[MissQueue.scala 595:22]
    io_primary_ready_REG <= io_req_valid & io_primary_ready & io_primary_valid & ~io_req_bits_cancel; // @[MissQueue.scala 383:84]
    io_primary_ready_REG_1 <= io_req_valid & io_primary_ready & io_primary_valid & ~io_req_bits_cancel; // @[MissQueue.scala 383:84]
    if (_T_6) begin // @[Reg.scala 17:18]
      grantack_sink <= io_mem_grant_bits_sink; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 403:37]
      req_valid <= 1'h0; // @[MissQueue.scala 405:15]
    end else begin
      req_valid <= io_miss_req_pipe_reg_alloc | _GEN_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 478:32]
      s_acquire <= 1'h1; // @[MissQueue.scala 479:15]
    end else begin
      s_acquire <= _T_50 | _GEN_52;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 527:31]
      s_grantack <= 1'h1; // @[MissQueue.scala 528:16]
    end else begin
      s_grantack <= _T_55 | _GEN_53;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 531:37]
      s_replace_req <= 1'h1; // @[MissQueue.scala 532:19]
    end else begin
      s_replace_req <= _T_56 | _GEN_68;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 539:36]
      s_refill <= 1'h1; // @[MissQueue.scala 540:14]
    end else begin
      s_refill <= _T_57 | _GEN_66;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 547:34]
      s_mainpipe_req <= 1'h1; // @[MissQueue.scala 548:20]
    end else begin
      s_mainpipe_req <= _T_58 | _GEN_70;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 499:30]
      w_grantfirst <= 1'h1; // @[MissQueue.scala 500:18]
    end else begin
      w_grantfirst <= _T_6 | _GEN_54;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 499:30]
      w_grantlast <= 1'h1; // @[MissQueue.scala 502:44 509:19 517:19]
    end else if (_T_6) begin // @[MissQueue.scala 403:37]
      if (beats1_opdata) begin // @[MissQueue.scala 415:17]
        w_grantlast <= w_grantlast | refill_done;
      end else begin
        w_grantlast <= 1'h1;
      end
    end else if (io_miss_req_pipe_reg_alloc) begin // @[MissQueue.scala 352:28]
      w_grantlast <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 535:31]
      w_replace_resp <= 1'h1; // @[MissQueue.scala 536:20]
    end else begin
      w_replace_resp <= io_replace_pipe_resp | _GEN_69;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 543:30]
      w_refill_resp <= 1'h1; // @[MissQueue.scala 544:19]
    end else begin
      w_refill_resp <= io_refill_pipe_resp | _GEN_67;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 551:28]
      w_mainpipe_resp <= 1'h1; // @[MissQueue.scala 552:21]
    end else begin
      w_mainpipe_resp <= io_main_pipe_resp | _GEN_71;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 499:30]
      error <= 1'h0; // @[MissQueue.scala 521:11]
    end else if (_T_6) begin // @[MissQueue.scala 403:37]
      error <= io_mem_grant_bits_denied | io_mem_grant_bits_corrupt | error; // @[MissQueue.scala 441:11]
    end else if (io_miss_req_pipe_reg_alloc) begin // @[MissQueue.scala 362:22]
      error <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 751:40]
      prefetch <= 1'h0; // @[MissQueue.scala 752:14]
    end else if (io_prefetch_info_late_prefetch) begin // @[MissQueue.scala 403:37]
      prefetch <= 1'h0; // @[MissQueue.scala 442:14]
    end else if (io_miss_req_pipe_reg_alloc) begin // @[MissQueue.scala 363:25]
      prefetch <= input_req_is_prefetch & ~_prefetch_T_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Edges.scala 234:17]
      counter <= 1'h0; // @[Edges.scala 235:21]
    end else if (_T_6) begin // @[Edges.scala 228:27]
      if (first) begin
        counter <= beats1;
      end else begin
        counter <= counter1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 447:37]
      secondary_fired <= 1'h0; // @[MissQueue.scala 475:21]
    end else begin
      secondary_fired <= io_miss_req_pipe_reg_merge | _GEN_76;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 499:30]
      hasData <= 1'h1;
    end else if (_T_6) begin // @[MissQueue.scala 497:24]
      hasData <= beats1_opdata;
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
  req_source = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  req_cmd = _RAND_1[4:0];
  _RAND_2 = {2{`RANDOM}};
  req_addr = _RAND_2[35:0];
  _RAND_3 = {2{`RANDOM}};
  req_vaddr = _RAND_3[38:0];
  _RAND_4 = {1{`RANDOM}};
  req_way_en = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  req_word_idx = _RAND_5[2:0];
  _RAND_6 = {2{`RANDOM}};
  req_amo_data = _RAND_6[63:0];
  _RAND_7 = {1{`RANDOM}};
  req_amo_mask = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  req_req_coh_state = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  req_replace_tag = _RAND_9[23:0];
  _RAND_10 = {1{`RANDOM}};
  req_id = _RAND_10[3:0];
  _RAND_11 = {2{`RANDOM}};
  req_store_mask = _RAND_11[63:0];
  _RAND_12 = {1{`RANDOM}};
  req_valid = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  s_acquire = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s_grantack = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  s_replace_req = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  s_refill = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  s_mainpipe_req = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  w_grantfirst = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  w_grantlast = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  w_replace_resp = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  w_refill_resp = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  w_mainpipe_resp = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  error = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  prefetch = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  counter = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  grant_param = _RAND_26[1:0];
  _RAND_27 = {2{`RANDOM}};
  refill_and_store_data_0 = _RAND_27[63:0];
  _RAND_28 = {2{`RANDOM}};
  refill_and_store_data_1 = _RAND_28[63:0];
  _RAND_29 = {2{`RANDOM}};
  refill_and_store_data_2 = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  refill_and_store_data_3 = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  refill_and_store_data_4 = _RAND_31[63:0];
  _RAND_32 = {2{`RANDOM}};
  refill_and_store_data_5 = _RAND_32[63:0];
  _RAND_33 = {2{`RANDOM}};
  refill_and_store_data_6 = _RAND_33[63:0];
  _RAND_34 = {2{`RANDOM}};
  refill_and_store_data_7 = _RAND_34[63:0];
  _RAND_35 = {1{`RANDOM}};
  secondary_fired = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  hasData = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  REG_5 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  io_primary_ready_REG = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  io_primary_ready_REG_1 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  grantack_sink = _RAND_40[8:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    req_valid = 1'h0;
  end
  if (reset) begin
    s_acquire = 1'h1;
  end
  if (reset) begin
    s_grantack = 1'h1;
  end
  if (reset) begin
    s_replace_req = 1'h1;
  end
  if (reset) begin
    s_refill = 1'h1;
  end
  if (reset) begin
    s_mainpipe_req = 1'h1;
  end
  if (reset) begin
    w_grantfirst = 1'h1;
  end
  if (reset) begin
    w_grantlast = 1'h1;
  end
  if (reset) begin
    w_replace_resp = 1'h1;
  end
  if (reset) begin
    w_refill_resp = 1'h1;
  end
  if (reset) begin
    w_mainpipe_resp = 1'h1;
  end
  if (reset) begin
    error = 1'h0;
  end
  if (reset) begin
    prefetch = 1'h0;
  end
  if (reset) begin
    counter = 1'h0;
  end
  if (reset) begin
    secondary_fired = 1'h0;
  end
  if (reset) begin
    hasData = 1'h1;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

