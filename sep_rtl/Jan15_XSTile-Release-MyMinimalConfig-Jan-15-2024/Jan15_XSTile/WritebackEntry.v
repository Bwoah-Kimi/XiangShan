module WritebackEntry(
  input          clock,
  input          reset,
  input  [2:0]   io_id,
  input          io_primary_valid,
  output         io_primary_ready,
  output         io_primary_ready_dup_0,
  output         io_primary_ready_dup_1,
  output         io_primary_ready_dup_2,
  output         io_primary_ready_dup_3,
  output         io_primary_ready_dup_4,
  output         io_primary_ready_dup_5,
  output         io_primary_ready_dup_6,
  output         io_primary_ready_dup_7,
  output         io_primary_ready_dup_8,
  output         io_primary_ready_dup_9,
  output         io_primary_ready_dup_10,
  output         io_primary_ready_dup_11,
  input          io_secondary_valid,
  output         io_secondary_ready,
  input          io_req_valid,
  input  [2:0]   io_req_bits_param,
  input          io_req_bits_voluntary,
  input          io_req_bits_hasData,
  input          io_req_bits_delay_release,
  input  [1:0]   io_req_bits_miss_id,
  input  [35:0]  io_req_bits_addr,
  input  [511:0] io_req_data_data,
  input          io_mem_release_ready,
  output         io_mem_release_valid,
  output [2:0]   io_mem_release_bits_opcode,
  output [2:0]   io_mem_release_bits_param,
  output [2:0]   io_mem_release_bits_size,
  output [3:0]   io_mem_release_bits_source,
  output [35:0]  io_mem_release_bits_address,
  output [255:0] io_mem_release_bits_data,
  output         io_mem_grant_ready,
  input          io_mem_grant_valid,
  output         io_block_addr_valid,
  output [35:0]  io_block_addr_bits,
  input          io_release_wakeup_valid,
  input  [1:0]   io_release_wakeup_bits,
  input          io_release_update_valid,
  input  [35:0]  io_release_update_bits_addr,
  input  [7:0]   io_release_update_bits_mask_delayed,
  input  [511:0] io_release_update_bits_data_delayed,
  input          io_release_update_bits_mask_orr,
  input          io_probe_ttob_check_req_valid,
  input  [35:0]  io_probe_ttob_check_req_bits_addr,
  output         io_probe_ttob_check_resp_bits_toN
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
  reg [63:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [511:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] state; // @[WritebackQueue.scala 154:22]
  reg [1:0] state_dup_0; // @[WritebackQueue.scala 155:28]
  reg [1:0] state_dup_1; // @[WritebackQueue.scala 156:28]
  reg [1:0] state_dup_for_mp_0; // @[WritebackQueue.scala 157:33]
  reg [1:0] state_dup_for_mp_1; // @[WritebackQueue.scala 157:33]
  reg [1:0] state_dup_for_mp_2; // @[WritebackQueue.scala 157:33]
  reg [1:0] state_dup_for_mp_3; // @[WritebackQueue.scala 157:33]
  reg [1:0] state_dup_for_mp_4; // @[WritebackQueue.scala 157:33]
  reg [1:0] state_dup_for_mp_5; // @[WritebackQueue.scala 157:33]
  reg [1:0] state_dup_for_mp_6; // @[WritebackQueue.scala 157:33]
  reg [1:0] state_dup_for_mp_7; // @[WritebackQueue.scala 157:33]
  reg [1:0] state_dup_for_mp_8; // @[WritebackQueue.scala 157:33]
  reg [1:0] state_dup_for_mp_9; // @[WritebackQueue.scala 157:33]
  reg [1:0] state_dup_for_mp_10; // @[WritebackQueue.scala 157:33]
  reg [1:0] state_dup_for_mp_11; // @[WritebackQueue.scala 157:33]
  reg [1:0] remain; // @[WritebackQueue.scala 161:23]
  reg [1:0] remain_dup_0; // @[WritebackQueue.scala 162:29]
  reg [1:0] remain_dup_1; // @[WritebackQueue.scala 163:29]
  wire  _T_36 = io_mem_grant_ready & io_mem_grant_valid; // @[Decoupled.scala 50:35]
  wire  merge = io_secondary_valid & io_secondary_ready; // @[WritebackQueue.scala 238:34]
  wire [1:0] _remain_set_T_17 = io_req_bits_hasData ? 2'h3 : 2'h1; // @[WritebackQueue.scala 488:26]
  reg  release_later; // @[WritebackQueue.scala 339:30]
  reg  req_later_hasData; // @[WritebackQueue.scala 360:22]
  wire [1:0] _remain_set_T_19 = req_later_hasData ? 2'h3 : 2'h1; // @[WritebackQueue.scala 496:26]
  reg  req_voluntary; // @[WritebackQueue.scala 187:17]
  wire  _T_25 = io_mem_release_ready & io_mem_release_valid; // @[Decoupled.scala 50:35]
  reg  c_already_sent; // @[WritebackQueue.scala 340:31]
  reg [1:0] req_miss_id; // @[WritebackQueue.scala 187:17]
  reg  req_hasData; // @[WritebackQueue.scala 187:17]
  reg [35:0] paddr_dup_0; // @[WritebackQueue.scala 174:24]
  wire  update = io_release_update_valid & io_release_update_bits_addr == paddr_dup_0; // @[WritebackQueue.scala 244:42]
  wire  _remain_set_T_8 = req_hasData | update & io_release_update_bits_mask_orr | merge & io_req_bits_hasData; // @[WritebackQueue.scala 270:66]
  wire [1:0] _remain_set_T_10 = _remain_set_T_8 ? 2'h3 : 2'h1; // @[WritebackQueue.scala 269:24]
  wire  alloc = io_req_valid & io_primary_valid & io_primary_ready; // @[WritebackQueue.scala 213:48]
  wire [1:0] _GEN_1 = io_req_bits_delay_release ? 2'h0 : _remain_set_T_17; // @[WritebackQueue.scala 222:38 232:18]
  wire [1:0] _GEN_27 = alloc ? _GEN_1 : 2'h0; // @[WritebackQueue.scala 214:16]
  wire  _remain_set_T_2 = req_hasData | io_req_bits_hasData; // @[WritebackQueue.scala 260:37]
  wire [1:0] _remain_set_T_4 = req_hasData | io_req_bits_hasData ? 2'h3 : 2'h1; // @[WritebackQueue.scala 260:24]
  wire [1:0] _GEN_49 = merge ? _remain_set_T_4 : _GEN_27; // @[WritebackQueue.scala 249:24 260:18]
  wire [1:0] _GEN_72 = update ? _GEN_27 : _GEN_49; // @[WritebackQueue.scala 245:19]
  wire [1:0] _GEN_89 = io_release_wakeup_valid & io_release_wakeup_bits == req_miss_id ? _remain_set_T_10 : _GEN_72; // @[WritebackQueue.scala 263:78 269:18]
  wire [1:0] _GEN_112 = state == 2'h1 ? _GEN_89 : _GEN_27; // @[WritebackQueue.scala 239:28]
  wire [1:0] _GEN_144 = _T_25 | c_already_sent ? _GEN_112 : _remain_set_T_4; // @[WritebackQueue.scala 377:56 393:22]
  wire [1:0] _GEN_156 = merge ? _GEN_144 : _GEN_112; // @[WritebackQueue.scala 376:20]
  reg  release_done_counter; // @[Edges.scala 228:27]
  wire  release_done_beats1_opdata = io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  wire [12:0] _release_done_beats1_decode_T_1 = 13'h3f << io_mem_release_bits_size; // @[package.scala 234:77]
  wire [5:0] _release_done_beats1_decode_T_3 = ~_release_done_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  release_done_beats1_decode = _release_done_beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  release_done_beats1 = release_done_beats1_opdata & release_done_beats1_decode; // @[Edges.scala 220:14]
  wire  release_done_last = release_done_counter | ~release_done_beats1; // @[Edges.scala 231:37]
  wire  release_done = release_done_last & _T_25; // @[Edges.scala 232:22]
  reg [1:0] req_later_miss_id; // @[WritebackQueue.scala 360:22]
  wire  _T_28 = io_release_wakeup_valid & io_release_wakeup_bits == req_later_miss_id; // @[WritebackQueue.scala 442:40]
  reg  req_later_delay_release; // @[WritebackQueue.scala 360:22]
  wire  _T_30 = io_release_wakeup_valid & io_release_wakeup_bits == req_later_miss_id | ~req_later_delay_release; // @[WritebackQueue.scala 442:88]
  wire [1:0] _GEN_164 = io_release_wakeup_valid & io_release_wakeup_bits == req_later_miss_id | ~req_later_delay_release
     ? _remain_set_T_19 : 2'h0; // @[WritebackQueue.scala 442:117 443:24 446:24]
  wire [1:0] _GEN_188 = release_later ? _GEN_164 : _GEN_112; // @[WritebackQueue.scala 420:36]
  wire [1:0] _GEN_213 = merge ? _GEN_112 : _GEN_188; // @[WritebackQueue.scala 409:22]
  wire [1:0] _GEN_237 = release_done ? _GEN_213 : _GEN_112; // @[WritebackQueue.scala 408:27]
  wire [1:0] _GEN_266 = req_voluntary ? _GEN_156 : _GEN_237; // @[WritebackQueue.scala 367:26]
  wire [1:0] _GEN_297 = state_dup_0 == 2'h2 ? _GEN_266 : _GEN_112; // @[WritebackQueue.scala 362:40]
  wire [1:0] _GEN_315 = release_later ? _remain_set_T_19 : _GEN_297; // @[WritebackQueue.scala 490:33 496:20]
  wire [1:0] _GEN_323 = merge ? _remain_set_T_17 : _GEN_315; // @[WritebackQueue.scala 482:20 488:20]
  wire [1:0] _GEN_345 = _T_36 ? _GEN_323 : _GEN_297; // @[WritebackQueue.scala 481:32]
  wire [1:0] remain_set = state_dup_0 == 2'h3 ? _GEN_345 : _GEN_297; // @[WritebackQueue.scala 469:41]
  wire [1:0] _remain_T = remain | remain_set; // @[WritebackQueue.scala 166:21]
  wire [1:0] _remain_clr_T_2 = remain_dup_1[1] ? 2'h2 : 2'h0; // @[Mux.scala 47:70]
  wire [1:0] _remain_clr_T_3 = remain_dup_1[0] ? 2'h1 : _remain_clr_T_2; // @[Mux.scala 47:70]
  wire [1:0] _GEN_115 = _T_25 ? _remain_clr_T_3 : 2'h0; // @[WritebackQueue.scala 327:{32,45}]
  wire [1:0] _GEN_165 = io_release_wakeup_valid & io_release_wakeup_bits == req_later_miss_id | ~req_later_delay_release
     ? 2'h0 : _GEN_115; // @[WritebackQueue.scala 442:117 444:24]
  wire [1:0] _GEN_189 = release_later ? _GEN_165 : _GEN_115; // @[WritebackQueue.scala 420:36]
  wire [1:0] _GEN_214 = merge ? _GEN_115 : _GEN_189; // @[WritebackQueue.scala 409:22]
  wire [1:0] _GEN_238 = release_done ? _GEN_214 : _GEN_115; // @[WritebackQueue.scala 408:27]
  wire [1:0] _GEN_269 = req_voluntary ? _GEN_115 : _GEN_238; // @[WritebackQueue.scala 367:26]
  wire [1:0] remain_clr = state_dup_0 == 2'h2 ? _GEN_269 : _GEN_115; // @[WritebackQueue.scala 362:40]
  wire [1:0] _remain_T_1 = ~remain_clr; // @[WritebackQueue.scala 166:37]
  wire [1:0] _remain_dup_0_T = remain_dup_0 | remain_set; // @[WritebackQueue.scala 167:33]
  wire [1:0] _remain_dup_1_T = remain_dup_1 | remain_set; // @[WritebackQueue.scala 168:33]
  reg [511:0] data; // @[WritebackQueue.scala 171:17]
  reg [35:0] paddr_dup_1; // @[WritebackQueue.scala 175:24]
  reg [35:0] paddr_dup_2; // @[WritebackQueue.scala 176:24]
  reg  s_data_override; // @[WritebackQueue.scala 180:32]
  reg  s_data_merge; // @[WritebackQueue.scala 182:29]
  reg [2:0] req_param; // @[WritebackQueue.scala 187:17]
  wire [1:0] _GEN_0 = io_req_bits_delay_release ? 2'h1 : 2'h2; // @[WritebackQueue.scala 222:38 223:13 228:13]
  wire [1:0] _GEN_2 = alloc ? io_req_bits_miss_id : req_miss_id; // @[WritebackQueue.scala 214:16 187:17 216:9]
  wire  _GEN_5 = alloc ? io_req_bits_hasData : req_hasData; // @[WritebackQueue.scala 214:16 187:17 216:9]
  wire  _GEN_6 = alloc ? io_req_bits_voluntary : req_voluntary; // @[WritebackQueue.scala 214:16 187:17 216:9]
  wire [2:0] _GEN_7 = alloc ? io_req_bits_param : req_param; // @[WritebackQueue.scala 214:16 187:17 216:9]
  wire  _GEN_8 = alloc ? 1'h0 : 1'h1; // @[WritebackQueue.scala 214:16 197:19 217:21]
  wire [1:0] _GEN_12 = alloc ? _GEN_0 : state; // @[WritebackQueue.scala 214:16 154:22]
  wire [1:0] _GEN_13 = alloc ? _GEN_0 : state_dup_0; // @[WritebackQueue.scala 214:16 155:28]
  wire [1:0] _GEN_14 = alloc ? _GEN_0 : state_dup_1; // @[WritebackQueue.scala 214:16 156:28]
  wire [1:0] _GEN_15 = alloc ? _GEN_0 : state_dup_for_mp_0; // @[WritebackQueue.scala 214:16 157:33]
  wire [1:0] _GEN_16 = alloc ? _GEN_0 : state_dup_for_mp_1; // @[WritebackQueue.scala 214:16 157:33]
  wire [1:0] _GEN_17 = alloc ? _GEN_0 : state_dup_for_mp_2; // @[WritebackQueue.scala 214:16 157:33]
  wire [1:0] _GEN_18 = alloc ? _GEN_0 : state_dup_for_mp_3; // @[WritebackQueue.scala 214:16 157:33]
  wire [1:0] _GEN_19 = alloc ? _GEN_0 : state_dup_for_mp_4; // @[WritebackQueue.scala 214:16 157:33]
  wire [1:0] _GEN_20 = alloc ? _GEN_0 : state_dup_for_mp_5; // @[WritebackQueue.scala 214:16 157:33]
  wire [1:0] _GEN_21 = alloc ? _GEN_0 : state_dup_for_mp_6; // @[WritebackQueue.scala 214:16 157:33]
  wire [1:0] _GEN_22 = alloc ? _GEN_0 : state_dup_for_mp_7; // @[WritebackQueue.scala 214:16 157:33]
  wire [1:0] _GEN_23 = alloc ? _GEN_0 : state_dup_for_mp_8; // @[WritebackQueue.scala 214:16 157:33]
  wire [1:0] _GEN_24 = alloc ? _GEN_0 : state_dup_for_mp_9; // @[WritebackQueue.scala 214:16 157:33]
  wire [1:0] _GEN_25 = alloc ? _GEN_0 : state_dup_for_mp_10; // @[WritebackQueue.scala 214:16 157:33]
  wire [1:0] _GEN_26 = alloc ? _GEN_0 : state_dup_for_mp_11; // @[WritebackQueue.scala 214:16 157:33]
  wire [1:0] _GEN_28 = merge ? 2'h2 : _GEN_12; // @[WritebackQueue.scala 249:24 250:13]
  wire [1:0] _GEN_29 = merge ? 2'h2 : _GEN_13; // @[WritebackQueue.scala 249:24 251:19]
  wire [1:0] _GEN_30 = merge ? 2'h2 : _GEN_14; // @[WritebackQueue.scala 249:24 252:19]
  wire [1:0] _GEN_31 = merge ? 2'h2 : _GEN_15; // @[WritebackQueue.scala 249:24 253:34]
  wire [1:0] _GEN_32 = merge ? 2'h2 : _GEN_16; // @[WritebackQueue.scala 249:24 253:34]
  wire [1:0] _GEN_33 = merge ? 2'h2 : _GEN_17; // @[WritebackQueue.scala 249:24 253:34]
  wire [1:0] _GEN_34 = merge ? 2'h2 : _GEN_18; // @[WritebackQueue.scala 249:24 253:34]
  wire [1:0] _GEN_35 = merge ? 2'h2 : _GEN_19; // @[WritebackQueue.scala 249:24 253:34]
  wire [1:0] _GEN_36 = merge ? 2'h2 : _GEN_20; // @[WritebackQueue.scala 249:24 253:34]
  wire [1:0] _GEN_37 = merge ? 2'h2 : _GEN_21; // @[WritebackQueue.scala 249:24 253:34]
  wire [1:0] _GEN_38 = merge ? 2'h2 : _GEN_22; // @[WritebackQueue.scala 249:24 253:34]
  wire [1:0] _GEN_39 = merge ? 2'h2 : _GEN_23; // @[WritebackQueue.scala 249:24 253:34]
  wire [1:0] _GEN_40 = merge ? 2'h2 : _GEN_24; // @[WritebackQueue.scala 249:24 253:34]
  wire [1:0] _GEN_41 = merge ? 2'h2 : _GEN_25; // @[WritebackQueue.scala 249:24 253:34]
  wire [1:0] _GEN_42 = merge ? 2'h2 : _GEN_26; // @[WritebackQueue.scala 249:24 253:34]
  wire  _GEN_43 = merge ? 1'h0 : _GEN_6; // @[WritebackQueue.scala 249:24 254:21]
  wire [2:0] _GEN_44 = merge ? req_param : _GEN_7; // @[WritebackQueue.scala 249:24 255:17]
  wire  _GEN_45 = merge ? _remain_set_T_2 : _GEN_5; // @[WritebackQueue.scala 249:24 256:19]
  wire  _GEN_50 = update ? req_hasData | io_release_update_bits_mask_orr : _GEN_45; // @[WritebackQueue.scala 245:19 246:19]
  wire [1:0] _GEN_53 = update ? _GEN_12 : _GEN_28; // @[WritebackQueue.scala 245:19]
  wire [1:0] _GEN_54 = update ? _GEN_13 : _GEN_29; // @[WritebackQueue.scala 245:19]
  wire [1:0] _GEN_55 = update ? _GEN_14 : _GEN_30; // @[WritebackQueue.scala 245:19]
  wire [1:0] _GEN_56 = update ? _GEN_15 : _GEN_31; // @[WritebackQueue.scala 245:19]
  wire [1:0] _GEN_57 = update ? _GEN_16 : _GEN_32; // @[WritebackQueue.scala 245:19]
  wire [1:0] _GEN_58 = update ? _GEN_17 : _GEN_33; // @[WritebackQueue.scala 245:19]
  wire [1:0] _GEN_59 = update ? _GEN_18 : _GEN_34; // @[WritebackQueue.scala 245:19]
  wire [1:0] _GEN_60 = update ? _GEN_19 : _GEN_35; // @[WritebackQueue.scala 245:19]
  wire [1:0] _GEN_61 = update ? _GEN_20 : _GEN_36; // @[WritebackQueue.scala 245:19]
  wire [1:0] _GEN_62 = update ? _GEN_21 : _GEN_37; // @[WritebackQueue.scala 245:19]
  wire [1:0] _GEN_63 = update ? _GEN_22 : _GEN_38; // @[WritebackQueue.scala 245:19]
  wire [1:0] _GEN_64 = update ? _GEN_23 : _GEN_39; // @[WritebackQueue.scala 245:19]
  wire [1:0] _GEN_65 = update ? _GEN_24 : _GEN_40; // @[WritebackQueue.scala 245:19]
  wire [1:0] _GEN_66 = update ? _GEN_25 : _GEN_41; // @[WritebackQueue.scala 245:19]
  wire [1:0] _GEN_67 = update ? _GEN_26 : _GEN_42; // @[WritebackQueue.scala 245:19]
  wire  _GEN_68 = update ? _GEN_6 : _GEN_43; // @[WritebackQueue.scala 245:19]
  wire [2:0] _GEN_69 = update ? _GEN_7 : _GEN_44; // @[WritebackQueue.scala 245:19]
  wire [1:0] _GEN_73 = io_release_wakeup_valid & io_release_wakeup_bits == req_miss_id ? 2'h2 : _GEN_53; // @[WritebackQueue.scala 263:78 264:13]
  wire [1:0] _GEN_74 = io_release_wakeup_valid & io_release_wakeup_bits == req_miss_id ? 2'h2 : _GEN_54; // @[WritebackQueue.scala 263:78 265:19]
  wire [1:0] _GEN_75 = io_release_wakeup_valid & io_release_wakeup_bits == req_miss_id ? 2'h2 : _GEN_55; // @[WritebackQueue.scala 263:78 266:19]
  wire [1:0] _GEN_76 = io_release_wakeup_valid & io_release_wakeup_bits == req_miss_id ? 2'h2 : _GEN_56; // @[WritebackQueue.scala 263:78 267:34]
  wire [1:0] _GEN_77 = io_release_wakeup_valid & io_release_wakeup_bits == req_miss_id ? 2'h2 : _GEN_57; // @[WritebackQueue.scala 263:78 267:34]
  wire [1:0] _GEN_78 = io_release_wakeup_valid & io_release_wakeup_bits == req_miss_id ? 2'h2 : _GEN_58; // @[WritebackQueue.scala 263:78 267:34]
  wire [1:0] _GEN_79 = io_release_wakeup_valid & io_release_wakeup_bits == req_miss_id ? 2'h2 : _GEN_59; // @[WritebackQueue.scala 263:78 267:34]
  wire [1:0] _GEN_80 = io_release_wakeup_valid & io_release_wakeup_bits == req_miss_id ? 2'h2 : _GEN_60; // @[WritebackQueue.scala 263:78 267:34]
  wire [1:0] _GEN_81 = io_release_wakeup_valid & io_release_wakeup_bits == req_miss_id ? 2'h2 : _GEN_61; // @[WritebackQueue.scala 263:78 267:34]
  wire [1:0] _GEN_82 = io_release_wakeup_valid & io_release_wakeup_bits == req_miss_id ? 2'h2 : _GEN_62; // @[WritebackQueue.scala 263:78 267:34]
  wire [1:0] _GEN_83 = io_release_wakeup_valid & io_release_wakeup_bits == req_miss_id ? 2'h2 : _GEN_63; // @[WritebackQueue.scala 263:78 267:34]
  wire [1:0] _GEN_84 = io_release_wakeup_valid & io_release_wakeup_bits == req_miss_id ? 2'h2 : _GEN_64; // @[WritebackQueue.scala 263:78 267:34]
  wire [1:0] _GEN_85 = io_release_wakeup_valid & io_release_wakeup_bits == req_miss_id ? 2'h2 : _GEN_65; // @[WritebackQueue.scala 263:78 267:34]
  wire [1:0] _GEN_86 = io_release_wakeup_valid & io_release_wakeup_bits == req_miss_id ? 2'h2 : _GEN_66; // @[WritebackQueue.scala 263:78 267:34]
  wire [1:0] _GEN_87 = io_release_wakeup_valid & io_release_wakeup_bits == req_miss_id ? 2'h2 : _GEN_67; // @[WritebackQueue.scala 263:78 267:34]
  wire  _GEN_90 = state == 2'h1 ? _GEN_50 : _GEN_5; // @[WritebackQueue.scala 239:28]
  wire [1:0] _GEN_93 = state == 2'h1 ? _GEN_73 : _GEN_12; // @[WritebackQueue.scala 239:28]
  wire [1:0] _GEN_94 = state == 2'h1 ? _GEN_74 : _GEN_13; // @[WritebackQueue.scala 239:28]
  wire [1:0] _GEN_95 = state == 2'h1 ? _GEN_75 : _GEN_14; // @[WritebackQueue.scala 239:28]
  wire [1:0] _GEN_96 = state == 2'h1 ? _GEN_76 : _GEN_15; // @[WritebackQueue.scala 239:28]
  wire [1:0] _GEN_97 = state == 2'h1 ? _GEN_77 : _GEN_16; // @[WritebackQueue.scala 239:28]
  wire [1:0] _GEN_98 = state == 2'h1 ? _GEN_78 : _GEN_17; // @[WritebackQueue.scala 239:28]
  wire [1:0] _GEN_99 = state == 2'h1 ? _GEN_79 : _GEN_18; // @[WritebackQueue.scala 239:28]
  wire [1:0] _GEN_100 = state == 2'h1 ? _GEN_80 : _GEN_19; // @[WritebackQueue.scala 239:28]
  wire [1:0] _GEN_101 = state == 2'h1 ? _GEN_81 : _GEN_20; // @[WritebackQueue.scala 239:28]
  wire [1:0] _GEN_102 = state == 2'h1 ? _GEN_82 : _GEN_21; // @[WritebackQueue.scala 239:28]
  wire [1:0] _GEN_103 = state == 2'h1 ? _GEN_83 : _GEN_22; // @[WritebackQueue.scala 239:28]
  wire [1:0] _GEN_104 = state == 2'h1 ? _GEN_84 : _GEN_23; // @[WritebackQueue.scala 239:28]
  wire [1:0] _GEN_105 = state == 2'h1 ? _GEN_85 : _GEN_24; // @[WritebackQueue.scala 239:28]
  wire [1:0] _GEN_106 = state == 2'h1 ? _GEN_86 : _GEN_25; // @[WritebackQueue.scala 239:28]
  wire [1:0] _GEN_107 = state == 2'h1 ? _GEN_87 : _GEN_26; // @[WritebackQueue.scala 239:28]
  wire  _GEN_108 = state == 2'h1 ? _GEN_68 : _GEN_6; // @[WritebackQueue.scala 239:28]
  wire [2:0] _GEN_109 = state == 2'h1 ? _GEN_69 : _GEN_7; // @[WritebackQueue.scala 239:28]
  wire  beat = remain_dup_0[0] ? 1'h0 : 1'h1; // @[Mux.scala 47:70]
  wire [255:0] beat_data_0 = data[255:0]; // @[WritebackQueue.scala 284:25]
  wire [255:0] beat_data_1 = data[511:256]; // @[WritebackQueue.scala 284:25]
  wire [255:0] voluntaryReleaseData_data = beat ? beat_data_1 : beat_data_0; // @[Edges.scala 428:{15,15}]
  wire [2:0] _io_mem_release_bits_T_opcode = req_hasData ? 3'h7 : 3'h6; // @[WritebackQueue.scala 324:8]
  wire [3:0] voluntaryReleaseData_source = {{1'd0}, io_id}; // @[Edges.scala 389:17 393:15]
  wire [3:0] _io_mem_release_bits_T_source = req_hasData ? voluntaryReleaseData_source : voluntaryReleaseData_source; // @[WritebackQueue.scala 324:8]
  wire [255:0] _io_mem_release_bits_T_data = req_hasData ? voluntaryReleaseData_data : 256'h0; // @[WritebackQueue.scala 324:8]
  wire [2:0] _io_mem_release_bits_T_1_opcode = req_hasData ? 3'h5 : 3'h4; // @[WritebackQueue.scala 325:8]
  wire  release_done_counter1 = release_done_counter - 1'h1; // @[Edges.scala 229:28]
  wire  release_done_first = ~release_done_counter; // @[Edges.scala 230:25]
  reg [2:0] req_later_param; // @[WritebackQueue.scala 360:22]
  reg  req_later_voluntary; // @[WritebackQueue.scala 360:22]
  wire [1:0] _GEN_118 = release_done ? 2'h3 : _GEN_93; // @[WritebackQueue.scala 369:27 370:15]
  wire [1:0] _GEN_119 = release_done ? 2'h3 : _GEN_94; // @[WritebackQueue.scala 369:27 371:21]
  wire [1:0] _GEN_120 = release_done ? 2'h3 : _GEN_95; // @[WritebackQueue.scala 369:27 372:21]
  wire [1:0] _GEN_121 = release_done ? 2'h3 : _GEN_96; // @[WritebackQueue.scala 369:27 373:36]
  wire [1:0] _GEN_122 = release_done ? 2'h3 : _GEN_97; // @[WritebackQueue.scala 369:27 373:36]
  wire [1:0] _GEN_123 = release_done ? 2'h3 : _GEN_98; // @[WritebackQueue.scala 369:27 373:36]
  wire [1:0] _GEN_124 = release_done ? 2'h3 : _GEN_99; // @[WritebackQueue.scala 369:27 373:36]
  wire [1:0] _GEN_125 = release_done ? 2'h3 : _GEN_100; // @[WritebackQueue.scala 369:27 373:36]
  wire [1:0] _GEN_126 = release_done ? 2'h3 : _GEN_101; // @[WritebackQueue.scala 369:27 373:36]
  wire [1:0] _GEN_127 = release_done ? 2'h3 : _GEN_102; // @[WritebackQueue.scala 369:27 373:36]
  wire [1:0] _GEN_128 = release_done ? 2'h3 : _GEN_103; // @[WritebackQueue.scala 369:27 373:36]
  wire [1:0] _GEN_129 = release_done ? 2'h3 : _GEN_104; // @[WritebackQueue.scala 369:27 373:36]
  wire [1:0] _GEN_130 = release_done ? 2'h3 : _GEN_105; // @[WritebackQueue.scala 369:27 373:36]
  wire [1:0] _GEN_131 = release_done ? 2'h3 : _GEN_106; // @[WritebackQueue.scala 369:27 373:36]
  wire [1:0] _GEN_132 = release_done ? 2'h3 : _GEN_107; // @[WritebackQueue.scala 369:27 373:36]
  wire  _GEN_133 = _T_25 | c_already_sent | release_later; // @[WritebackQueue.scala 377:56 379:25 339:30]
  wire [2:0] _GEN_134 = _T_25 | c_already_sent ? io_req_bits_param : req_later_param; // @[WritebackQueue.scala 360:22 377:56 380:27]
  wire  _GEN_135 = _T_25 | c_already_sent ? io_req_bits_voluntary : req_later_voluntary; // @[WritebackQueue.scala 360:22 377:56 381:31]
  wire  _GEN_136 = _T_25 | c_already_sent ? io_req_bits_hasData : req_later_hasData; // @[WritebackQueue.scala 360:22 377:56 382:29]
  wire  _GEN_138 = _T_25 | c_already_sent ? io_req_bits_delay_release : req_later_delay_release; // @[WritebackQueue.scala 360:22 377:56 384:35]
  wire [1:0] _GEN_139 = _T_25 | c_already_sent ? io_req_bits_miss_id : req_later_miss_id; // @[WritebackQueue.scala 360:22 377:56 385:29]
  wire  _GEN_140 = (_T_25 | c_already_sent) & _GEN_108; // @[WritebackQueue.scala 377:56 388:25]
  wire  _GEN_141 = _T_25 | c_already_sent ? _GEN_90 : _remain_set_T_2; // @[WritebackQueue.scala 377:56 389:23]
  wire  _GEN_145 = merge ? _GEN_133 : release_later; // @[WritebackQueue.scala 376:20 339:30]
  wire [2:0] _GEN_146 = merge ? _GEN_134 : req_later_param; // @[WritebackQueue.scala 376:20 360:22]
  wire  _GEN_147 = merge ? _GEN_135 : req_later_voluntary; // @[WritebackQueue.scala 376:20 360:22]
  wire  _GEN_148 = merge ? _GEN_136 : req_later_hasData; // @[WritebackQueue.scala 376:20 360:22]
  wire  _GEN_150 = merge ? _GEN_138 : req_later_delay_release; // @[WritebackQueue.scala 376:20 360:22]
  wire [1:0] _GEN_151 = merge ? _GEN_139 : req_later_miss_id; // @[WritebackQueue.scala 376:20 360:22]
  wire  _GEN_152 = merge ? _GEN_140 : _GEN_108; // @[WritebackQueue.scala 376:20]
  wire  _GEN_153 = merge ? _GEN_141 : _GEN_90; // @[WritebackQueue.scala 376:20]
  wire  _GEN_157 = merge | release_later; // @[WritebackQueue.scala 398:20 399:23 339:30]
  wire [2:0] _GEN_158 = merge ? io_req_bits_param : req_later_param; // @[WritebackQueue.scala 398:20 360:22 400:25]
  wire  _GEN_159 = merge ? io_req_bits_voluntary : req_later_voluntary; // @[WritebackQueue.scala 398:20 360:22 401:29]
  wire  _GEN_160 = merge ? io_req_bits_hasData : req_later_hasData; // @[WritebackQueue.scala 398:20 360:22 402:27]
  wire  _GEN_162 = merge ? io_req_bits_delay_release : req_later_delay_release; // @[WritebackQueue.scala 398:20 360:22 404:33]
  wire [1:0] _GEN_163 = merge ? io_req_bits_miss_id : req_later_miss_id; // @[WritebackQueue.scala 398:20 360:22 405:27]
  wire [1:0] _state_T_4 = _T_30 ? 2'h2 : 2'h1; // @[WritebackQueue.scala 421:23]
  wire [1:0] _GEN_167 = release_later ? _state_T_4 : 2'h0; // @[WritebackQueue.scala 420:36 421:17 453:17]
  wire [2:0] _GEN_182 = release_later ? req_later_param : _GEN_109; // @[WritebackQueue.scala 420:36 441:15]
  wire  _GEN_183 = release_later ? req_later_voluntary : _GEN_108; // @[WritebackQueue.scala 420:36 441:15]
  wire  _GEN_184 = release_later ? req_later_hasData : _GEN_90; // @[WritebackQueue.scala 420:36 441:15]
  wire [1:0] _GEN_187 = release_later ? req_later_miss_id : _GEN_2; // @[WritebackQueue.scala 420:36 441:15]
  wire [1:0] _GEN_191 = merge ? 2'h1 : _GEN_167; // @[WritebackQueue.scala 409:22 414:17]
  wire [1:0] _GEN_206 = merge ? io_req_bits_miss_id : _GEN_187; // @[WritebackQueue.scala 409:22 418:15]
  wire  _GEN_209 = merge ? io_req_bits_hasData : _GEN_184; // @[WritebackQueue.scala 409:22 418:15]
  wire  _GEN_210 = merge ? io_req_bits_voluntary : _GEN_183; // @[WritebackQueue.scala 409:22 418:15]
  wire [2:0] _GEN_211 = merge ? io_req_bits_param : _GEN_182; // @[WritebackQueue.scala 409:22 418:15]
  wire [1:0] _GEN_215 = release_done ? _GEN_191 : _GEN_93; // @[WritebackQueue.scala 408:27]
  wire [1:0] _GEN_216 = release_done ? _GEN_191 : _GEN_94; // @[WritebackQueue.scala 408:27]
  wire [1:0] _GEN_217 = release_done ? _GEN_191 : _GEN_95; // @[WritebackQueue.scala 408:27]
  wire [1:0] _GEN_218 = release_done ? _GEN_191 : _GEN_96; // @[WritebackQueue.scala 408:27]
  wire [1:0] _GEN_219 = release_done ? _GEN_191 : _GEN_97; // @[WritebackQueue.scala 408:27]
  wire [1:0] _GEN_220 = release_done ? _GEN_191 : _GEN_98; // @[WritebackQueue.scala 408:27]
  wire [1:0] _GEN_221 = release_done ? _GEN_191 : _GEN_99; // @[WritebackQueue.scala 408:27]
  wire [1:0] _GEN_222 = release_done ? _GEN_191 : _GEN_100; // @[WritebackQueue.scala 408:27]
  wire [1:0] _GEN_223 = release_done ? _GEN_191 : _GEN_101; // @[WritebackQueue.scala 408:27]
  wire [1:0] _GEN_224 = release_done ? _GEN_191 : _GEN_102; // @[WritebackQueue.scala 408:27]
  wire [1:0] _GEN_225 = release_done ? _GEN_191 : _GEN_103; // @[WritebackQueue.scala 408:27]
  wire [1:0] _GEN_226 = release_done ? _GEN_191 : _GEN_104; // @[WritebackQueue.scala 408:27]
  wire [1:0] _GEN_227 = release_done ? _GEN_191 : _GEN_105; // @[WritebackQueue.scala 408:27]
  wire [1:0] _GEN_228 = release_done ? _GEN_191 : _GEN_106; // @[WritebackQueue.scala 408:27]
  wire [1:0] _GEN_229 = release_done ? _GEN_191 : _GEN_107; // @[WritebackQueue.scala 408:27]
  wire [1:0] _GEN_230 = release_done ? _GEN_206 : _GEN_2; // @[WritebackQueue.scala 408:27]
  wire  _GEN_233 = release_done ? _GEN_209 : _GEN_90; // @[WritebackQueue.scala 408:27]
  wire  _GEN_234 = release_done ? _GEN_210 : _GEN_108; // @[WritebackQueue.scala 408:27]
  wire [2:0] _GEN_235 = release_done ? _GEN_211 : _GEN_109; // @[WritebackQueue.scala 408:27]
  wire  _GEN_236 = release_done ? 1'h0 : _GEN_157; // @[WritebackQueue.scala 408:27]
  wire  _GEN_239 = _T_28 ? 1'h0 : _GEN_162; // @[WritebackQueue.scala 461:86 462:33]
  wire [1:0] _GEN_240 = req_voluntary ? _GEN_118 : _GEN_215; // @[WritebackQueue.scala 367:26]
  wire [1:0] _GEN_241 = req_voluntary ? _GEN_119 : _GEN_216; // @[WritebackQueue.scala 367:26]
  wire [1:0] _GEN_242 = req_voluntary ? _GEN_120 : _GEN_217; // @[WritebackQueue.scala 367:26]
  wire [1:0] _GEN_243 = req_voluntary ? _GEN_121 : _GEN_218; // @[WritebackQueue.scala 367:26]
  wire [1:0] _GEN_244 = req_voluntary ? _GEN_122 : _GEN_219; // @[WritebackQueue.scala 367:26]
  wire [1:0] _GEN_245 = req_voluntary ? _GEN_123 : _GEN_220; // @[WritebackQueue.scala 367:26]
  wire [1:0] _GEN_246 = req_voluntary ? _GEN_124 : _GEN_221; // @[WritebackQueue.scala 367:26]
  wire [1:0] _GEN_247 = req_voluntary ? _GEN_125 : _GEN_222; // @[WritebackQueue.scala 367:26]
  wire [1:0] _GEN_248 = req_voluntary ? _GEN_126 : _GEN_223; // @[WritebackQueue.scala 367:26]
  wire [1:0] _GEN_249 = req_voluntary ? _GEN_127 : _GEN_224; // @[WritebackQueue.scala 367:26]
  wire [1:0] _GEN_250 = req_voluntary ? _GEN_128 : _GEN_225; // @[WritebackQueue.scala 367:26]
  wire [1:0] _GEN_251 = req_voluntary ? _GEN_129 : _GEN_226; // @[WritebackQueue.scala 367:26]
  wire [1:0] _GEN_252 = req_voluntary ? _GEN_130 : _GEN_227; // @[WritebackQueue.scala 367:26]
  wire [1:0] _GEN_253 = req_voluntary ? _GEN_131 : _GEN_228; // @[WritebackQueue.scala 367:26]
  wire [1:0] _GEN_254 = req_voluntary ? _GEN_132 : _GEN_229; // @[WritebackQueue.scala 367:26]
  wire  _GEN_255 = req_voluntary ? _GEN_145 : _GEN_236; // @[WritebackQueue.scala 367:26]
  wire [2:0] _GEN_256 = req_voluntary ? _GEN_146 : _GEN_158; // @[WritebackQueue.scala 367:26]
  wire  _GEN_257 = req_voluntary ? _GEN_147 : _GEN_159; // @[WritebackQueue.scala 367:26]
  wire  _GEN_258 = req_voluntary ? _GEN_148 : _GEN_160; // @[WritebackQueue.scala 367:26]
  wire  _GEN_260 = req_voluntary ? _GEN_150 : _GEN_239; // @[WritebackQueue.scala 367:26]
  wire [1:0] _GEN_261 = req_voluntary ? _GEN_151 : _GEN_163; // @[WritebackQueue.scala 367:26]
  wire  _GEN_262 = req_voluntary ? _GEN_152 : _GEN_234; // @[WritebackQueue.scala 367:26]
  wire  _GEN_263 = req_voluntary ? _GEN_153 : _GEN_233; // @[WritebackQueue.scala 367:26]
  wire [1:0] _GEN_267 = req_voluntary ? _GEN_2 : _GEN_230; // @[WritebackQueue.scala 367:26]
  wire [2:0] _GEN_268 = req_voluntary ? _GEN_109 : _GEN_235; // @[WritebackQueue.scala 367:26]
  wire [1:0] _GEN_271 = state_dup_0 == 2'h2 ? _GEN_240 : _GEN_93; // @[WritebackQueue.scala 362:40]
  wire [1:0] _GEN_272 = state_dup_0 == 2'h2 ? _GEN_241 : _GEN_94; // @[WritebackQueue.scala 362:40]
  wire [1:0] _GEN_273 = state_dup_0 == 2'h2 ? _GEN_242 : _GEN_95; // @[WritebackQueue.scala 362:40]
  wire [1:0] _GEN_274 = state_dup_0 == 2'h2 ? _GEN_243 : _GEN_96; // @[WritebackQueue.scala 362:40]
  wire [1:0] _GEN_275 = state_dup_0 == 2'h2 ? _GEN_244 : _GEN_97; // @[WritebackQueue.scala 362:40]
  wire [1:0] _GEN_276 = state_dup_0 == 2'h2 ? _GEN_245 : _GEN_98; // @[WritebackQueue.scala 362:40]
  wire [1:0] _GEN_277 = state_dup_0 == 2'h2 ? _GEN_246 : _GEN_99; // @[WritebackQueue.scala 362:40]
  wire [1:0] _GEN_278 = state_dup_0 == 2'h2 ? _GEN_247 : _GEN_100; // @[WritebackQueue.scala 362:40]
  wire [1:0] _GEN_279 = state_dup_0 == 2'h2 ? _GEN_248 : _GEN_101; // @[WritebackQueue.scala 362:40]
  wire [1:0] _GEN_280 = state_dup_0 == 2'h2 ? _GEN_249 : _GEN_102; // @[WritebackQueue.scala 362:40]
  wire [1:0] _GEN_281 = state_dup_0 == 2'h2 ? _GEN_250 : _GEN_103; // @[WritebackQueue.scala 362:40]
  wire [1:0] _GEN_282 = state_dup_0 == 2'h2 ? _GEN_251 : _GEN_104; // @[WritebackQueue.scala 362:40]
  wire [1:0] _GEN_283 = state_dup_0 == 2'h2 ? _GEN_252 : _GEN_105; // @[WritebackQueue.scala 362:40]
  wire [1:0] _GEN_284 = state_dup_0 == 2'h2 ? _GEN_253 : _GEN_106; // @[WritebackQueue.scala 362:40]
  wire [1:0] _GEN_285 = state_dup_0 == 2'h2 ? _GEN_254 : _GEN_107; // @[WritebackQueue.scala 362:40]
  wire  _GEN_286 = state_dup_0 == 2'h2 ? _GEN_255 : release_later; // @[WritebackQueue.scala 339:30 362:40]
  wire [2:0] _GEN_287 = state_dup_0 == 2'h2 ? _GEN_256 : req_later_param; // @[WritebackQueue.scala 360:22 362:40]
  wire  _GEN_288 = state_dup_0 == 2'h2 ? _GEN_257 : req_later_voluntary; // @[WritebackQueue.scala 360:22 362:40]
  wire  _GEN_289 = state_dup_0 == 2'h2 ? _GEN_258 : req_later_hasData; // @[WritebackQueue.scala 360:22 362:40]
  wire  _GEN_291 = state_dup_0 == 2'h2 ? _GEN_260 : req_later_delay_release; // @[WritebackQueue.scala 360:22 362:40]
  wire [1:0] _GEN_292 = state_dup_0 == 2'h2 ? _GEN_261 : req_later_miss_id; // @[WritebackQueue.scala 360:22 362:40]
  wire  _GEN_293 = state_dup_0 == 2'h2 ? _GEN_262 : _GEN_108; // @[WritebackQueue.scala 362:40]
  wire  _GEN_294 = state_dup_0 == 2'h2 ? _GEN_263 : _GEN_90; // @[WritebackQueue.scala 362:40]
  wire [1:0] _GEN_298 = state_dup_0 == 2'h2 ? _GEN_267 : _GEN_2; // @[WritebackQueue.scala 362:40]
  wire [2:0] _GEN_299 = state_dup_0 == 2'h2 ? _GEN_268 : _GEN_109; // @[WritebackQueue.scala 362:40]
  wire  _GEN_301 = merge | _GEN_286; // @[WritebackQueue.scala 472:18 473:21]
  wire  _io_probe_ttob_check_resp_bits_toN_T_1 = io_probe_ttob_check_req_bits_addr == paddr_dup_0; // @[WritebackQueue.scala 520:39]
  wire  _io_probe_ttob_check_resp_bits_toN_T_2 = state_dup_1 == 2'h1 & _io_probe_ttob_check_resp_bits_toN_T_1; // @[WritebackQueue.scala 519:29]
  reg  io_probe_ttob_check_resp_bits_toN_REG; // @[WritebackQueue.scala 518:47]
  wire [63:0] _data_full_wmask_T_9 = io_release_update_bits_mask_delayed[0] ? 64'hffffffffffffffff : 64'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _data_full_wmask_T_11 = io_release_update_bits_mask_delayed[1] ? 64'hffffffffffffffff : 64'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _data_full_wmask_T_13 = io_release_update_bits_mask_delayed[2] ? 64'hffffffffffffffff : 64'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _data_full_wmask_T_15 = io_release_update_bits_mask_delayed[3] ? 64'hffffffffffffffff : 64'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _data_full_wmask_T_17 = io_release_update_bits_mask_delayed[4] ? 64'hffffffffffffffff : 64'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _data_full_wmask_T_19 = io_release_update_bits_mask_delayed[5] ? 64'hffffffffffffffff : 64'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _data_full_wmask_T_21 = io_release_update_bits_mask_delayed[6] ? 64'hffffffffffffffff : 64'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _data_full_wmask_T_23 = io_release_update_bits_mask_delayed[7] ? 64'hffffffffffffffff : 64'h0; // @[Bitwise.scala 74:12]
  wire [511:0] data_full_wmask = {_data_full_wmask_T_23,_data_full_wmask_T_21,_data_full_wmask_T_19,
    _data_full_wmask_T_17,_data_full_wmask_T_15,_data_full_wmask_T_13,_data_full_wmask_T_11,_data_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [511:0] _data_T = ~data_full_wmask; // @[WritebackQueue.scala 207:6]
  wire [511:0] _data_T_1 = _data_T & data; // @[WritebackQueue.scala 207:18]
  wire [511:0] _data_T_2 = data_full_wmask & io_release_update_bits_data_delayed; // @[WritebackQueue.scala 207:42]
  wire [511:0] _data_T_3 = _data_T_1 | _data_T_2; // @[WritebackQueue.scala 207:29]
  reg  REG; // @[WritebackQueue.scala 529:52]
  assign io_primary_ready = state_dup_1 == 2'h0; // @[WritebackQueue.scala 513:35]
  assign io_primary_ready_dup_0 = state_dup_for_mp_0 == 2'h0; // @[WritebackQueue.scala 514:84]
  assign io_primary_ready_dup_1 = state_dup_for_mp_1 == 2'h0; // @[WritebackQueue.scala 514:84]
  assign io_primary_ready_dup_2 = state_dup_for_mp_2 == 2'h0; // @[WritebackQueue.scala 514:84]
  assign io_primary_ready_dup_3 = state_dup_for_mp_3 == 2'h0; // @[WritebackQueue.scala 514:84]
  assign io_primary_ready_dup_4 = state_dup_for_mp_4 == 2'h0; // @[WritebackQueue.scala 514:84]
  assign io_primary_ready_dup_5 = state_dup_for_mp_5 == 2'h0; // @[WritebackQueue.scala 514:84]
  assign io_primary_ready_dup_6 = state_dup_for_mp_6 == 2'h0; // @[WritebackQueue.scala 514:84]
  assign io_primary_ready_dup_7 = state_dup_for_mp_7 == 2'h0; // @[WritebackQueue.scala 514:84]
  assign io_primary_ready_dup_8 = state_dup_for_mp_8 == 2'h0; // @[WritebackQueue.scala 514:84]
  assign io_primary_ready_dup_9 = state_dup_for_mp_9 == 2'h0; // @[WritebackQueue.scala 514:84]
  assign io_primary_ready_dup_10 = state_dup_for_mp_10 == 2'h0; // @[WritebackQueue.scala 514:84]
  assign io_primary_ready_dup_11 = state_dup_for_mp_11 == 2'h0; // @[WritebackQueue.scala 514:84]
  assign io_secondary_ready = state_dup_1 != 2'h0 & io_req_bits_addr == paddr_dup_0; // @[WritebackQueue.scala 515:51]
  assign io_mem_release_valid = |remain & s_data_override & s_data_merge; // @[WritebackQueue.scala 185:44]
  assign io_mem_release_bits_opcode = req_voluntary ? _io_mem_release_bits_T_opcode : _io_mem_release_bits_T_1_opcode; // @[WritebackQueue.scala 323:30]
  assign io_mem_release_bits_param = req_param; // @[WritebackQueue.scala 323:30]
  assign io_mem_release_bits_size = 3'h6; // @[WritebackQueue.scala 323:30]
  assign io_mem_release_bits_source = req_voluntary ? _io_mem_release_bits_T_source : _io_mem_release_bits_T_source; // @[WritebackQueue.scala 323:30]
  assign io_mem_release_bits_address = req_voluntary ? paddr_dup_2 : paddr_dup_1; // @[WritebackQueue.scala 323:30]
  assign io_mem_release_bits_data = req_voluntary ? _io_mem_release_bits_T_data : _io_mem_release_bits_T_data; // @[WritebackQueue.scala 323:30]
  assign io_mem_grant_ready = state_dup_0 == 2'h3; // @[WritebackQueue.scala 469:21]
  assign io_block_addr_valid = state != 2'h0; // @[WritebackQueue.scala 194:33]
  assign io_block_addr_bits = paddr_dup_0; // @[WritebackQueue.scala 195:24]
  assign io_probe_ttob_check_resp_bits_toN = io_probe_ttob_check_resp_bits_toN_REG; // @[WritebackQueue.scala 518:37]
  always @(posedge clock) begin
    if (state_dup_0 == 2'h3) begin // @[WritebackQueue.scala 469:41]
      if (merge) begin // @[WritebackQueue.scala 472:18]
        req_later_hasData <= io_req_bits_hasData; // @[WritebackQueue.scala 476:25]
      end else begin
        req_later_hasData <= _GEN_289;
      end
    end else begin
      req_later_hasData <= _GEN_289;
    end
    if (state_dup_0 == 2'h3) begin // @[WritebackQueue.scala 469:41]
      if (_T_36) begin // @[WritebackQueue.scala 481:32]
        if (merge) begin // @[WritebackQueue.scala 482:20]
          req_voluntary <= io_req_bits_voluntary; // @[WritebackQueue.scala 487:13]
        end else if (release_later) begin // @[WritebackQueue.scala 490:33]
          req_voluntary <= req_later_voluntary; // @[WritebackQueue.scala 495:13]
        end else begin
          req_voluntary <= _GEN_293;
        end
      end else begin
        req_voluntary <= _GEN_293;
      end
    end else begin
      req_voluntary <= _GEN_293;
    end
    if (state_dup_0 == 2'h3) begin // @[WritebackQueue.scala 469:41]
      if (_T_36) begin // @[WritebackQueue.scala 481:32]
        if (merge) begin // @[WritebackQueue.scala 482:20]
          req_miss_id <= io_req_bits_miss_id; // @[WritebackQueue.scala 487:13]
        end else if (release_later) begin // @[WritebackQueue.scala 490:33]
          req_miss_id <= req_later_miss_id; // @[WritebackQueue.scala 495:13]
        end else begin
          req_miss_id <= _GEN_298;
        end
      end else begin
        req_miss_id <= _GEN_298;
      end
    end else begin
      req_miss_id <= _GEN_298;
    end
    if (state_dup_0 == 2'h3) begin // @[WritebackQueue.scala 469:41]
      if (_T_36) begin // @[WritebackQueue.scala 481:32]
        if (merge) begin // @[WritebackQueue.scala 482:20]
          req_hasData <= io_req_bits_hasData; // @[WritebackQueue.scala 487:13]
        end else if (release_later) begin // @[WritebackQueue.scala 490:33]
          req_hasData <= req_later_hasData; // @[WritebackQueue.scala 495:13]
        end else begin
          req_hasData <= _GEN_294;
        end
      end else begin
        req_hasData <= _GEN_294;
      end
    end else begin
      req_hasData <= _GEN_294;
    end
    if (alloc) begin // @[WritebackQueue.scala 214:16]
      paddr_dup_0 <= io_req_bits_addr; // @[WritebackQueue.scala 219:17]
    end
    if (state_dup_0 == 2'h3) begin // @[WritebackQueue.scala 469:41]
      if (merge) begin // @[WritebackQueue.scala 472:18]
        req_later_miss_id <= io_req_bits_miss_id; // @[WritebackQueue.scala 479:25]
      end else begin
        req_later_miss_id <= _GEN_292;
      end
    end else begin
      req_later_miss_id <= _GEN_292;
    end
    if (state_dup_0 == 2'h3) begin // @[WritebackQueue.scala 469:41]
      if (merge) begin // @[WritebackQueue.scala 472:18]
        req_later_delay_release <= io_req_bits_delay_release; // @[WritebackQueue.scala 478:31]
      end else begin
        req_later_delay_release <= _GEN_291;
      end
    end else begin
      req_later_delay_release <= _GEN_291;
    end
    if (~s_data_override & (req_hasData | REG)) begin // @[WritebackQueue.scala 529:62]
      data <= io_req_data_data; // @[WritebackQueue.scala 530:10]
    end else if (~s_data_merge) begin // @[WritebackQueue.scala 525:24]
      data <= _data_T_3; // @[WritebackQueue.scala 526:10]
    end
    if (alloc) begin // @[WritebackQueue.scala 214:16]
      paddr_dup_1 <= io_req_bits_addr; // @[WritebackQueue.scala 220:17]
    end
    if (alloc) begin // @[WritebackQueue.scala 214:16]
      paddr_dup_2 <= io_req_bits_addr; // @[WritebackQueue.scala 221:17]
    end
    if (state_dup_0 == 2'h3) begin // @[WritebackQueue.scala 469:41]
      if (_T_36) begin // @[WritebackQueue.scala 481:32]
        if (merge) begin // @[WritebackQueue.scala 482:20]
          req_param <= io_req_bits_param; // @[WritebackQueue.scala 487:13]
        end else if (release_later) begin // @[WritebackQueue.scala 490:33]
          req_param <= req_later_param; // @[WritebackQueue.scala 495:13]
        end else begin
          req_param <= _GEN_299;
        end
      end else begin
        req_param <= _GEN_299;
      end
    end else begin
      req_param <= _GEN_299;
    end
    if (state_dup_0 == 2'h3) begin // @[WritebackQueue.scala 469:41]
      if (merge) begin // @[WritebackQueue.scala 472:18]
        req_later_param <= io_req_bits_param; // @[WritebackQueue.scala 474:23]
      end else begin
        req_later_param <= _GEN_287;
      end
    end else begin
      req_later_param <= _GEN_287;
    end
    if (state_dup_0 == 2'h3) begin // @[WritebackQueue.scala 469:41]
      if (merge) begin // @[WritebackQueue.scala 472:18]
        req_later_voluntary <= io_req_bits_voluntary; // @[WritebackQueue.scala 475:27]
      end else begin
        req_later_voluntary <= _GEN_288;
      end
    end else begin
      req_later_voluntary <= _GEN_288;
    end
    io_probe_ttob_check_resp_bits_toN_REG <= _io_probe_ttob_check_resp_bits_toN_T_2 & io_probe_ttob_check_req_valid; // @[WritebackQueue.scala 520:55]
    REG <= io_req_valid & io_primary_valid & io_primary_ready; // @[WritebackQueue.scala 213:48]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 469:41]
      state <= 2'h0; // @[WritebackQueue.scala 481:32 482:20 483:15 490:33 491:15 499:15]
    end else if (state_dup_0 == 2'h3) begin
      if (_T_36) begin
        if (merge) begin
          state <= 2'h2;
        end else if (release_later) begin
          state <= 2'h2;
        end else begin
          state <= 2'h0;
        end
      end else begin
        state <= _GEN_271;
      end
    end else begin
      state <= _GEN_271;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 469:41]
      state_dup_0 <= 2'h0; // @[WritebackQueue.scala 481:32 482:20 483:15 490:33 491:15 499:15]
    end else if (state_dup_0 == 2'h3) begin
      if (_T_36) begin
        if (merge) begin
          state_dup_0 <= 2'h2;
        end else if (release_later) begin
          state_dup_0 <= 2'h2;
        end else begin
          state_dup_0 <= 2'h0;
        end
      end else begin
        state_dup_0 <= _GEN_272;
      end
    end else begin
      state_dup_0 <= _GEN_272;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 469:41]
      state_dup_1 <= 2'h0; // @[WritebackQueue.scala 481:32 482:20 483:15 490:33 491:15 499:15]
    end else if (state_dup_0 == 2'h3) begin
      if (_T_36) begin
        if (merge) begin
          state_dup_1 <= 2'h2;
        end else if (release_later) begin
          state_dup_1 <= 2'h2;
        end else begin
          state_dup_1 <= 2'h0;
        end
      end else begin
        state_dup_1 <= _GEN_273;
      end
    end else begin
      state_dup_1 <= _GEN_273;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 469:41]
      state_dup_for_mp_0 <= 2'h0; // @[WritebackQueue.scala 481:32 482:20 483:15 490:33 491:15 499:15]
    end else if (state_dup_0 == 2'h3) begin
      if (_T_36) begin
        if (merge) begin
          state_dup_for_mp_0 <= 2'h2;
        end else if (release_later) begin
          state_dup_for_mp_0 <= 2'h2;
        end else begin
          state_dup_for_mp_0 <= 2'h0;
        end
      end else begin
        state_dup_for_mp_0 <= _GEN_274;
      end
    end else begin
      state_dup_for_mp_0 <= _GEN_274;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 469:41]
      state_dup_for_mp_1 <= 2'h0; // @[WritebackQueue.scala 481:32 482:20 483:15 490:33 491:15 499:15]
    end else if (state_dup_0 == 2'h3) begin
      if (_T_36) begin
        if (merge) begin
          state_dup_for_mp_1 <= 2'h2;
        end else if (release_later) begin
          state_dup_for_mp_1 <= 2'h2;
        end else begin
          state_dup_for_mp_1 <= 2'h0;
        end
      end else begin
        state_dup_for_mp_1 <= _GEN_275;
      end
    end else begin
      state_dup_for_mp_1 <= _GEN_275;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 469:41]
      state_dup_for_mp_2 <= 2'h0; // @[WritebackQueue.scala 481:32 482:20 483:15 490:33 491:15 499:15]
    end else if (state_dup_0 == 2'h3) begin
      if (_T_36) begin
        if (merge) begin
          state_dup_for_mp_2 <= 2'h2;
        end else if (release_later) begin
          state_dup_for_mp_2 <= 2'h2;
        end else begin
          state_dup_for_mp_2 <= 2'h0;
        end
      end else begin
        state_dup_for_mp_2 <= _GEN_276;
      end
    end else begin
      state_dup_for_mp_2 <= _GEN_276;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 469:41]
      state_dup_for_mp_3 <= 2'h0; // @[WritebackQueue.scala 481:32 482:20 483:15 490:33 491:15 499:15]
    end else if (state_dup_0 == 2'h3) begin
      if (_T_36) begin
        if (merge) begin
          state_dup_for_mp_3 <= 2'h2;
        end else if (release_later) begin
          state_dup_for_mp_3 <= 2'h2;
        end else begin
          state_dup_for_mp_3 <= 2'h0;
        end
      end else begin
        state_dup_for_mp_3 <= _GEN_277;
      end
    end else begin
      state_dup_for_mp_3 <= _GEN_277;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 469:41]
      state_dup_for_mp_4 <= 2'h0; // @[WritebackQueue.scala 481:32 482:20 483:15 490:33 491:15 499:15]
    end else if (state_dup_0 == 2'h3) begin
      if (_T_36) begin
        if (merge) begin
          state_dup_for_mp_4 <= 2'h2;
        end else if (release_later) begin
          state_dup_for_mp_4 <= 2'h2;
        end else begin
          state_dup_for_mp_4 <= 2'h0;
        end
      end else begin
        state_dup_for_mp_4 <= _GEN_278;
      end
    end else begin
      state_dup_for_mp_4 <= _GEN_278;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 469:41]
      state_dup_for_mp_5 <= 2'h0; // @[WritebackQueue.scala 481:32 482:20 483:15 490:33 491:15 499:15]
    end else if (state_dup_0 == 2'h3) begin
      if (_T_36) begin
        if (merge) begin
          state_dup_for_mp_5 <= 2'h2;
        end else if (release_later) begin
          state_dup_for_mp_5 <= 2'h2;
        end else begin
          state_dup_for_mp_5 <= 2'h0;
        end
      end else begin
        state_dup_for_mp_5 <= _GEN_279;
      end
    end else begin
      state_dup_for_mp_5 <= _GEN_279;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 469:41]
      state_dup_for_mp_6 <= 2'h0; // @[WritebackQueue.scala 481:32 482:20 483:15 490:33 491:15 499:15]
    end else if (state_dup_0 == 2'h3) begin
      if (_T_36) begin
        if (merge) begin
          state_dup_for_mp_6 <= 2'h2;
        end else if (release_later) begin
          state_dup_for_mp_6 <= 2'h2;
        end else begin
          state_dup_for_mp_6 <= 2'h0;
        end
      end else begin
        state_dup_for_mp_6 <= _GEN_280;
      end
    end else begin
      state_dup_for_mp_6 <= _GEN_280;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 469:41]
      state_dup_for_mp_7 <= 2'h0; // @[WritebackQueue.scala 481:32 482:20 483:15 490:33 491:15 499:15]
    end else if (state_dup_0 == 2'h3) begin
      if (_T_36) begin
        if (merge) begin
          state_dup_for_mp_7 <= 2'h2;
        end else if (release_later) begin
          state_dup_for_mp_7 <= 2'h2;
        end else begin
          state_dup_for_mp_7 <= 2'h0;
        end
      end else begin
        state_dup_for_mp_7 <= _GEN_281;
      end
    end else begin
      state_dup_for_mp_7 <= _GEN_281;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 469:41]
      state_dup_for_mp_8 <= 2'h0; // @[WritebackQueue.scala 481:32 482:20 483:15 490:33 491:15 499:15]
    end else if (state_dup_0 == 2'h3) begin
      if (_T_36) begin
        if (merge) begin
          state_dup_for_mp_8 <= 2'h2;
        end else if (release_later) begin
          state_dup_for_mp_8 <= 2'h2;
        end else begin
          state_dup_for_mp_8 <= 2'h0;
        end
      end else begin
        state_dup_for_mp_8 <= _GEN_282;
      end
    end else begin
      state_dup_for_mp_8 <= _GEN_282;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 469:41]
      state_dup_for_mp_9 <= 2'h0; // @[WritebackQueue.scala 481:32 482:20 483:15 490:33 491:15 499:15]
    end else if (state_dup_0 == 2'h3) begin
      if (_T_36) begin
        if (merge) begin
          state_dup_for_mp_9 <= 2'h2;
        end else if (release_later) begin
          state_dup_for_mp_9 <= 2'h2;
        end else begin
          state_dup_for_mp_9 <= 2'h0;
        end
      end else begin
        state_dup_for_mp_9 <= _GEN_283;
      end
    end else begin
      state_dup_for_mp_9 <= _GEN_283;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 469:41]
      state_dup_for_mp_10 <= 2'h0; // @[WritebackQueue.scala 481:32 482:20 483:15 490:33 491:15 499:15]
    end else if (state_dup_0 == 2'h3) begin
      if (_T_36) begin
        if (merge) begin
          state_dup_for_mp_10 <= 2'h2;
        end else if (release_later) begin
          state_dup_for_mp_10 <= 2'h2;
        end else begin
          state_dup_for_mp_10 <= 2'h0;
        end
      end else begin
        state_dup_for_mp_10 <= _GEN_284;
      end
    end else begin
      state_dup_for_mp_10 <= _GEN_284;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 469:41]
      state_dup_for_mp_11 <= 2'h0; // @[WritebackQueue.scala 481:32 482:20 483:15 490:33 491:15 499:15]
    end else if (state_dup_0 == 2'h3) begin
      if (_T_36) begin
        if (merge) begin
          state_dup_for_mp_11 <= 2'h2;
        end else if (release_later) begin
          state_dup_for_mp_11 <= 2'h2;
        end else begin
          state_dup_for_mp_11 <= 2'h0;
        end
      end else begin
        state_dup_for_mp_11 <= _GEN_285;
      end
    end else begin
      state_dup_for_mp_11 <= _GEN_285;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 166:35]
      remain <= 2'h0;
    end else begin
      remain <= _remain_T & _remain_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 167:47]
      remain_dup_0 <= 2'h0;
    end else begin
      remain_dup_0 <= _remain_dup_0_T & _remain_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 168:47]
      remain_dup_1 <= 2'h0;
    end else begin
      remain_dup_1 <= _remain_dup_1_T & _remain_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 469:41]
      release_later <= 1'h0; // @[WritebackQueue.scala 481:32]
    end else if (state_dup_0 == 2'h3) begin // @[WritebackQueue.scala 362:40]
      if (_T_36) begin // @[WritebackQueue.scala 367:26]
        release_later <= 1'h0; // @[WritebackQueue.scala 376:20 339:30]
      end else begin
        release_later <= _GEN_301; // @[WritebackQueue.scala 408:27]
      end
    end else if (state_dup_0 == 2'h2) begin // @[WritebackQueue.scala 339:30]
      if (req_voluntary) begin
        if (merge) begin
          release_later <= _GEN_133;
        end
      end else if (release_done) begin
        release_later <= 1'h0;
      end else begin
        release_later <= _GEN_157;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 362:40]
      c_already_sent <= 1'h0; // @[WritebackQueue.scala 363:34 364:22 340:31]
    end else if (state_dup_0 == 2'h2) begin // @[WritebackQueue.scala 340:31]
      if (_T_25) begin
        c_already_sent <= ~release_done;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Edges.scala 234:17]
      release_done_counter <= 1'h0; // @[Edges.scala 235:21]
    end else if (_T_25) begin // @[Edges.scala 228:27]
      if (release_done_first) begin
        release_done_counter <= release_done_beats1;
      end else begin
        release_done_counter <= release_done_counter1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 239:28]
      s_data_override <= 1'h1; // @[WritebackQueue.scala 245:19 249:24 258:23]
    end else if (state == 2'h1) begin
      if (update) begin
        s_data_override <= _GEN_8;
      end else if (merge) begin
        s_data_override <= ~io_req_bits_hasData;
      end else begin
        s_data_override <= _GEN_8;
      end
    end else begin
      s_data_override <= _GEN_8;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WritebackQueue.scala 239:28]
      s_data_merge <= 1'h1; // @[WritebackQueue.scala 198:16 245:19 248:20]
    end else if (state == 2'h1) begin // @[WritebackQueue.scala 198:16]
      if (update) begin
        s_data_merge <= 1'h0;
      end else begin
        s_data_merge <= 1'h1;
      end
    end else begin
      s_data_merge <= 1'h1;
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
  state = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  state_dup_0 = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  state_dup_1 = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  state_dup_for_mp_0 = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  state_dup_for_mp_1 = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  state_dup_for_mp_2 = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  state_dup_for_mp_3 = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  state_dup_for_mp_4 = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  state_dup_for_mp_5 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  state_dup_for_mp_6 = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  state_dup_for_mp_7 = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  state_dup_for_mp_8 = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  state_dup_for_mp_9 = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  state_dup_for_mp_10 = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  state_dup_for_mp_11 = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  remain = _RAND_15[1:0];
  _RAND_16 = {1{`RANDOM}};
  remain_dup_0 = _RAND_16[1:0];
  _RAND_17 = {1{`RANDOM}};
  remain_dup_1 = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  release_later = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  req_later_hasData = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  req_voluntary = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  c_already_sent = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  req_miss_id = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  req_hasData = _RAND_23[0:0];
  _RAND_24 = {2{`RANDOM}};
  paddr_dup_0 = _RAND_24[35:0];
  _RAND_25 = {1{`RANDOM}};
  release_done_counter = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  req_later_miss_id = _RAND_26[1:0];
  _RAND_27 = {1{`RANDOM}};
  req_later_delay_release = _RAND_27[0:0];
  _RAND_28 = {16{`RANDOM}};
  data = _RAND_28[511:0];
  _RAND_29 = {2{`RANDOM}};
  paddr_dup_1 = _RAND_29[35:0];
  _RAND_30 = {2{`RANDOM}};
  paddr_dup_2 = _RAND_30[35:0];
  _RAND_31 = {1{`RANDOM}};
  s_data_override = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  s_data_merge = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  req_param = _RAND_33[2:0];
  _RAND_34 = {1{`RANDOM}};
  req_later_param = _RAND_34[2:0];
  _RAND_35 = {1{`RANDOM}};
  req_later_voluntary = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  io_probe_ttob_check_resp_bits_toN_REG = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  REG = _RAND_37[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    state = 2'h0;
  end
  if (reset) begin
    state_dup_0 = 2'h0;
  end
  if (reset) begin
    state_dup_1 = 2'h0;
  end
  if (reset) begin
    state_dup_for_mp_0 = 2'h0;
  end
  if (reset) begin
    state_dup_for_mp_1 = 2'h0;
  end
  if (reset) begin
    state_dup_for_mp_2 = 2'h0;
  end
  if (reset) begin
    state_dup_for_mp_3 = 2'h0;
  end
  if (reset) begin
    state_dup_for_mp_4 = 2'h0;
  end
  if (reset) begin
    state_dup_for_mp_5 = 2'h0;
  end
  if (reset) begin
    state_dup_for_mp_6 = 2'h0;
  end
  if (reset) begin
    state_dup_for_mp_7 = 2'h0;
  end
  if (reset) begin
    state_dup_for_mp_8 = 2'h0;
  end
  if (reset) begin
    state_dup_for_mp_9 = 2'h0;
  end
  if (reset) begin
    state_dup_for_mp_10 = 2'h0;
  end
  if (reset) begin
    state_dup_for_mp_11 = 2'h0;
  end
  if (reset) begin
    remain = 2'h0;
  end
  if (reset) begin
    remain_dup_0 = 2'h0;
  end
  if (reset) begin
    remain_dup_1 = 2'h0;
  end
  if (reset) begin
    release_later = 1'h0;
  end
  if (reset) begin
    c_already_sent = 1'h0;
  end
  if (reset) begin
    release_done_counter = 1'h0;
  end
  if (reset) begin
    s_data_override = 1'h1;
  end
  if (reset) begin
    s_data_merge = 1'h1;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

