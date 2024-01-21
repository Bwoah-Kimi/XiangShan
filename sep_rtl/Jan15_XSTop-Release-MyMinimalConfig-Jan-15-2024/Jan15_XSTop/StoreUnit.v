module StoreUnit(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  input         io_stin_valid,
  input         io_stin_bits_uop_cf_trigger_backendEn_0,
  input  [2:0]  io_stin_bits_uop_cf_ftqPtr_value,
  input  [2:0]  io_stin_bits_uop_cf_ftqOffset,
  input  [6:0]  io_stin_bits_uop_ctrl_fuOpType,
  input  [19:0] io_stin_bits_uop_ctrl_imm,
  input         io_stin_bits_uop_robIdx_flag,
  input  [4:0]  io_stin_bits_uop_robIdx_value,
  input         io_stin_bits_uop_lqIdx_flag,
  input  [3:0]  io_stin_bits_uop_lqIdx_value,
  input         io_stin_bits_uop_sqIdx_flag,
  input  [3:0]  io_stin_bits_uop_sqIdx_value,
  input  [63:0] io_stin_bits_src_0,
  output        io_tlb_req_valid,
  output [38:0] io_tlb_req_bits_vaddr,
  input  [35:0] io_tlb_resp_bits_paddr_0,
  input         io_tlb_resp_bits_miss,
  input         io_tlb_resp_bits_excp_0_pf_st,
  input         io_tlb_resp_bits_excp_0_af_st,
  input         io_tlb_resp_bits_static_pm_valid,
  input         io_tlb_resp_bits_static_pm_bits,
  input         io_pmp_st,
  input         io_pmp_mmio,
  input         io_pmp_atomic,
  input  [3:0]  io_rsIdx,
  output        io_lsq_valid,
  output [2:0]  io_lsq_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_lsq_bits_uop_cf_ftqOffset,
  output [6:0]  io_lsq_bits_uop_ctrl_fuOpType,
  output        io_lsq_bits_uop_robIdx_flag,
  output [4:0]  io_lsq_bits_uop_robIdx_value,
  output        io_lsq_bits_uop_sqIdx_flag,
  output [3:0]  io_lsq_bits_uop_sqIdx_value,
  output [38:0] io_lsq_bits_vaddr,
  output [35:0] io_lsq_bits_paddr,
  output [15:0] io_lsq_bits_mask,
  output        io_lsq_bits_wlineflag,
  output        io_lsq_bits_miss,
  output        io_lsq_replenish_mmio,
  output        io_lsq_replenish_atomic,
  output        io_feedback_slow_valid,
  output [3:0]  io_feedback_slow_bits_rsIdx,
  output        io_feedback_slow_bits_hit,
  input  [38:0] io_prefetch_req_bits_vaddr,
  output        io_stld_nuke_query_valid,
  output        io_stld_nuke_query_bits_robIdx_flag,
  output [4:0]  io_stld_nuke_query_bits_robIdx_value,
  output [35:0] io_stld_nuke_query_bits_paddr,
  output [15:0] io_stld_nuke_query_bits_mask,
  output        io_stout_valid,
  output        io_stout_bits_uop_cf_exceptionVec_6,
  output        io_stout_bits_uop_cf_exceptionVec_7,
  output        io_stout_bits_uop_cf_exceptionVec_15,
  output        io_stout_bits_uop_cf_trigger_backendEn_0,
  output        io_stout_bits_uop_robIdx_flag,
  output [4:0]  io_stout_bits_uop_robIdx_value,
  output        io_stout_bits_uop_lqIdx_flag,
  output [3:0]  io_stout_bits_uop_lqIdx_value,
  output        io_stout_bits_debug_isMMIO,
  output [38:0] io_stout_bits_debug_vaddr,
  output        io_st_mask_out_valid,
  output [3:0]  io_st_mask_out_bits_sqIdx_value,
  output [15:0] io_st_mask_out_bits_mask
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
  reg [63:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [63:0] _RAND_34;
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
  reg [63:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [63:0] _RAND_54;
`endif // RANDOMIZE_REG_INIT
  wire  s0_in_uop_cf_trigger_backendEn_0 = io_stin_valid & io_stin_bits_uop_cf_trigger_backendEn_0; // @[StoreUnit.scala 66:28]
  wire [6:0] s0_in_uop_ctrl_fuOpType = io_stin_valid ? io_stin_bits_uop_ctrl_fuOpType : 7'h0; // @[StoreUnit.scala 66:28]
  wire [19:0] s0_in_uop_ctrl_imm = io_stin_valid ? io_stin_bits_uop_ctrl_imm : 20'h0; // @[StoreUnit.scala 66:28]
  wire  s0_in_uop_robIdx_flag = io_stin_valid & io_stin_bits_uop_robIdx_flag; // @[StoreUnit.scala 66:28]
  wire [4:0] s0_in_uop_robIdx_value = io_stin_valid ? io_stin_bits_uop_robIdx_value : 5'h0; // @[StoreUnit.scala 66:28]
  wire  s0_in_uop_lqIdx_flag = io_stin_valid & io_stin_bits_uop_lqIdx_flag; // @[StoreUnit.scala 66:28]
  wire  s0_in_uop_sqIdx_flag = io_stin_valid & io_stin_bits_uop_sqIdx_flag; // @[StoreUnit.scala 66:28]
  wire [63:0] s0_in_src_0 = io_stin_valid ? io_stin_bits_src_0 : 64'h0; // @[StoreUnit.scala 66:28]
  wire  s0_wlineflag = io_stin_valid & s0_in_uop_ctrl_fuOpType == 7'h7; // @[StoreUnit.scala 74:28]
  wire [5:0] _s0_kill_flushItself_T_1 = {s0_in_uop_robIdx_flag,s0_in_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _s0_kill_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _s0_kill_flushItself_T_3 = _s0_kill_flushItself_T_1 == _s0_kill_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s0_kill_flushItself = io_redirect_bits_level & _s0_kill_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s0_kill_differentFlag = s0_in_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s0_kill_compare = s0_in_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s0_kill_T = s0_kill_differentFlag ^ s0_kill_compare; // @[CircularQueuePtr.scala 68:19]
  wire  s0_kill = io_redirect_valid & (s0_kill_flushItself | _s0_kill_T); // @[Rob.scala 143:20]
  wire  s0_fire = io_stin_valid & ~s0_kill; // @[StoreUnit.scala 78:34]
  reg  s1_valid; // @[StoreUnit.scala 154:26]
  reg  s1_in_uop_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] s1_in_uop_robIdx_value; // @[Reg.scala 16:16]
  wire [5:0] _s1_kill_flushItself_T_1 = {s1_in_uop_robIdx_flag,s1_in_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s1_kill_flushItself_T_3 = _s1_kill_flushItself_T_1 == _s0_kill_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s1_kill_flushItself = io_redirect_bits_level & _s1_kill_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s1_kill_differentFlag = s1_in_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_kill_compare = s1_in_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_kill_T = s1_kill_differentFlag ^ s1_kill_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s1_kill_T_2 = io_redirect_valid & (s1_kill_flushItself | _s1_kill_T); // @[Rob.scala 143:20]
  wire  s1_kill = _s1_kill_T_2 | io_tlb_resp_bits_miss; // @[StoreUnit.scala 169:54]
  reg  s2_valid; // @[StoreUnit.scala 236:26]
  reg  s2_in_mmio; // @[Reg.scala 16:16]
  reg  s2_static_pm_valid; // @[StoreUnit.scala 249:29]
  reg  s2_static_pm_bits; // @[StoreUnit.scala 249:29]
  wire  s2_pmp_mmio = s2_static_pm_valid ? s2_static_pm_bits : io_pmp_mmio; // @[StoreUnit.scala 250:29 254:18]
  wire  s2_mmio = s2_in_mmio | s2_pmp_mmio; // @[StoreUnit.scala 258:28]
  reg  s2_in_uop_cf_exceptionVec_15; // @[Reg.scala 16:16]
  reg  s2_in_uop_cf_exceptionVec_7; // @[Reg.scala 16:16]
  wire  s2_pmp_st = s2_static_pm_valid ? 1'h0 : io_pmp_st; // @[StoreUnit.scala 250:29 252:18]
  wire  s2_out_uop_cf_exceptionVec_7 = s2_in_uop_cf_exceptionVec_7 | s2_pmp_st; // @[StoreUnit.scala 264:95]
  reg  s2_in_uop_cf_exceptionVec_6; // @[Reg.scala 16:16]
  wire [15:0] _s2_exception_T = {s2_in_uop_cf_exceptionVec_15,1'h0,2'h0,4'h0,s2_out_uop_cf_exceptionVec_7,
    s2_in_uop_cf_exceptionVec_6,2'h0,4'h0}; // @[StoreUnit.scala 257:81]
  wire  s2_exception = |_s2_exception_T; // @[StoreUnit.scala 257:88]
  wire  _s2_kill_T = ~s2_exception; // @[StoreUnit.scala 259:26]
  wire  _s2_kill_T_1 = s2_mmio & ~s2_exception; // @[StoreUnit.scala 259:23]
  reg  s2_in_uop_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] s2_in_uop_robIdx_value; // @[Reg.scala 16:16]
  wire [5:0] _s2_kill_flushItself_T_1 = {s2_in_uop_robIdx_flag,s2_in_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s2_kill_flushItself_T_3 = _s2_kill_flushItself_T_1 == _s0_kill_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s2_kill_flushItself = io_redirect_bits_level & _s2_kill_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s2_kill_differentFlag = s2_in_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s2_kill_compare = s2_in_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s2_kill_T_2 = s2_kill_differentFlag ^ s2_kill_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s2_kill_T_4 = io_redirect_valid & (s2_kill_flushItself | _s2_kill_T_2); // @[Rob.scala 143:20]
  wire  s2_kill = s2_mmio & ~s2_exception | _s2_kill_T_4; // @[StoreUnit.scala 259:41]
  reg  s3_valid; // @[StoreUnit.scala 299:26]
  reg  s3_in_uop_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] s3_in_uop_robIdx_value; // @[Reg.scala 16:16]
  wire [5:0] _sx_ready_0_flushItself_T_1 = {s3_in_uop_robIdx_flag,s3_in_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _sx_ready_0_flushItself_T_3 = _sx_ready_0_flushItself_T_1 == _s0_kill_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  sx_ready_0_flushItself = io_redirect_bits_level & _sx_ready_0_flushItself_T_3; // @[Rob.scala 142:51]
  wire  sx_ready_0_differentFlag = s3_in_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  sx_ready_0_compare = s3_in_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _sx_ready_0_T_2 = sx_ready_0_differentFlag ^ sx_ready_0_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _sx_ready_0_T_4 = io_redirect_valid & (sx_ready_0_flushItself | _sx_ready_0_T_2); // @[Rob.scala 143:20]
  reg  sx_valid_1_r; // @[Reg.scala 16:16]
  reg  sx_in_1_ruop_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] sx_in_1_ruop_robIdx_value; // @[Reg.scala 16:16]
  wire [5:0] _sx_ready_1_flushItself_T_1 = {sx_in_1_ruop_robIdx_flag,sx_in_1_ruop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _sx_ready_1_flushItself_T_3 = _sx_ready_1_flushItself_T_1 == _s0_kill_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  sx_ready_1_flushItself = io_redirect_bits_level & _sx_ready_1_flushItself_T_3; // @[Rob.scala 142:51]
  wire  sx_ready_1_differentFlag = sx_in_1_ruop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  sx_ready_1_compare = sx_in_1_ruop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _sx_ready_1_T_4 = sx_ready_1_differentFlag ^ sx_ready_1_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _sx_ready_1_T_6 = io_redirect_valid & (sx_ready_1_flushItself | _sx_ready_1_T_4); // @[Rob.scala 143:20]
  wire [11:0] imm12 = s0_in_uop_ctrl_imm[11:0]; // @[StoreUnit.scala 82:42]
  wire [12:0] _saddr_lo_T_1 = {1'h0,imm12}; // @[Cat.scala 31:58]
  wire [12:0] _GEN_832 = {{1'd0}, s0_in_src_0[11:0]}; // @[StoreUnit.scala 83:37]
  wire [12:0] saddr_lo = _GEN_832 + _saddr_lo_T_1; // @[StoreUnit.scala 83:37]
  wire [26:0] _saddr_hi_T_5 = s0_in_src_0[38:12] + 27'h1; // @[StoreUnit.scala 85:80]
  wire [26:0] _saddr_hi_T_6 = imm12[11] ? s0_in_src_0[38:12] : _saddr_hi_T_5; // @[StoreUnit.scala 85:8]
  wire [26:0] _saddr_hi_T_12 = s0_in_src_0[38:12] + 27'h7ffffff; // @[StoreUnit.scala 86:49]
  wire [26:0] _saddr_hi_T_14 = imm12[11] ? _saddr_hi_T_12 : s0_in_src_0[38:12]; // @[StoreUnit.scala 86:8]
  wire [26:0] saddr_hi = saddr_lo[12] ? _saddr_hi_T_6 : _saddr_hi_T_14; // @[StoreUnit.scala 84:21]
  wire [38:0] s0_saddr = {saddr_hi,saddr_lo[11:0]}; // @[Cat.scala 31:58]
  wire [38:0] s0_vaddr = io_stin_valid ? s0_saddr : io_prefetch_req_bits_vaddr; // @[StoreUnit.scala 89:21]
  wire  _s0_mask_T_1 = 2'h0 == s0_in_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _s0_mask_T_2 = 2'h1 == s0_in_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _s0_mask_T_3 = 2'h2 == s0_in_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _s0_mask_T_4 = 2'h3 == s0_in_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire [1:0] _s0_mask_T_6 = _s0_mask_T_2 ? 2'h3 : 2'h0; // @[Mux.scala 27:73]
  wire [3:0] _s0_mask_T_7 = _s0_mask_T_3 ? 4'hf : 4'h0; // @[Mux.scala 27:73]
  wire [7:0] _s0_mask_T_8 = _s0_mask_T_4 ? 8'hff : 8'h0; // @[Mux.scala 27:73]
  wire [1:0] _GEN_833 = {{1'd0}, _s0_mask_T_1}; // @[Mux.scala 27:73]
  wire [1:0] _s0_mask_T_9 = _GEN_833 | _s0_mask_T_6; // @[Mux.scala 27:73]
  wire [3:0] _GEN_834 = {{2'd0}, _s0_mask_T_9}; // @[Mux.scala 27:73]
  wire [3:0] _s0_mask_T_10 = _GEN_834 | _s0_mask_T_7; // @[Mux.scala 27:73]
  wire [7:0] _GEN_835 = {{4'd0}, _s0_mask_T_10}; // @[Mux.scala 27:73]
  wire [7:0] _s0_mask_T_11 = _GEN_835 | _s0_mask_T_8; // @[Mux.scala 27:73]
  wire [22:0] _GEN_0 = {{15'd0}, _s0_mask_T_11}; // @[MemCommon.scala 50:8]
  wire [22:0] _s0_mask_T_13 = _GEN_0 << s0_saddr[3:0]; // @[MemCommon.scala 50:8]
  wire [22:0] s0_mask = io_stin_valid ? _s0_mask_T_13 : 23'h3; // @[StoreUnit.scala 90:21]
  wire  _s0_addr_aligned_T_2 = ~s0_vaddr[0]; // @[StoreUnit.scala 136:35]
  wire  _s0_addr_aligned_T_4 = s0_vaddr[1:0] == 2'h0; // @[StoreUnit.scala 137:37]
  wire  _s0_addr_aligned_T_6 = s0_vaddr[2:0] == 3'h0; // @[StoreUnit.scala 138:37]
  wire  s0_addr_aligned = _s0_mask_T_1 | _s0_mask_T_2 & _s0_addr_aligned_T_2 | _s0_mask_T_3 & _s0_addr_aligned_T_4 |
    _s0_mask_T_4 & _s0_addr_aligned_T_6; // @[Mux.scala 27:73]
  wire  s0_out_uop_cf_exceptionVec_6 = io_stin_valid & ~s0_addr_aligned; // @[StoreUnit.scala 140:57]
  reg  s1_in_uop_cf_exceptionVec_6; // @[Reg.scala 16:16]
  reg  s1_in_uop_cf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg [2:0] s1_in_uop_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] s1_in_uop_cf_ftqOffset; // @[Reg.scala 16:16]
  reg [6:0] s1_in_uop_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  s1_in_uop_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s1_in_uop_lqIdx_value; // @[Reg.scala 16:16]
  reg  s1_in_uop_sqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s1_in_uop_sqIdx_value; // @[Reg.scala 16:16]
  reg [38:0] s1_in_vaddr; // @[Reg.scala 16:16]
  reg [15:0] s1_in_mask; // @[Reg.scala 16:16]
  reg  s1_in_wlineflag; // @[Reg.scala 16:16]
  reg [3:0] s1_in_rsIdx; // @[Reg.scala 16:16]
  wire [15:0] s0_out_mask = s0_mask[15:0]; // @[StoreUnit.scala 125:23 75:29]
  wire  s1_fire = s1_valid & ~s1_kill; // @[StoreUnit.scala 159:28]
  wire  _s1_mmio_cbo_T_1 = s1_in_uop_ctrl_fuOpType == 7'hd; // @[StoreUnit.scala 163:46]
  wire  _s1_mmio_cbo_T_2 = s1_in_uop_ctrl_fuOpType == 7'hc | _s1_mmio_cbo_T_1; // @[StoreUnit.scala 162:70]
  wire  _s1_mmio_cbo_T_3 = s1_in_uop_ctrl_fuOpType == 7'he; // @[StoreUnit.scala 164:46]
  wire  s1_mmio = _s1_mmio_cbo_T_2 | _s1_mmio_cbo_T_3; // @[StoreUnit.scala 163:70]
  wire  _GEN_171 = s1_kill ? 1'h0 : s1_valid; // @[StoreUnit.scala 175:23 154:26 175:34]
  wire  _GEN_172 = s1_fire ? 1'h0 : _GEN_171; // @[StoreUnit.scala 174:{23,34}]
  reg  s2_in_uop_cf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  s2_in_uop_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s2_in_uop_lqIdx_value; // @[Reg.scala 16:16]
  reg [38:0] s2_in_vaddr; // @[Reg.scala 16:16]
  reg  s2_in_atomic; // @[Reg.scala 16:16]
  wire  s2_fire = s2_valid & ~s2_kill; // @[StoreUnit.scala 241:28]
  wire  _GEN_456 = s2_kill ? 1'h0 : s2_valid; // @[StoreUnit.scala 246:23 236:26 246:34]
  wire  _GEN_457 = s2_fire ? 1'h0 : _GEN_456; // @[StoreUnit.scala 245:{23,34}]
  reg  io_feedback_slow_valid_REG; // @[StoreUnit.scala 273:36]
  reg [3:0] io_feedback_slow_bits_REG_rsIdx; // @[StoreUnit.scala 274:36]
  reg  io_feedback_slow_bits_REG_hit; // @[StoreUnit.scala 274:36]
  reg  s3_in_uop_cf_exceptionVec_6; // @[Reg.scala 16:16]
  reg  s3_in_uop_cf_exceptionVec_7; // @[Reg.scala 16:16]
  reg  s3_in_uop_cf_exceptionVec_15; // @[Reg.scala 16:16]
  reg  s3_in_uop_cf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  s3_in_uop_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] s3_in_uop_lqIdx_value; // @[Reg.scala 16:16]
  reg [38:0] s3_in_vaddr; // @[Reg.scala 16:16]
  reg  s3_in_mmio; // @[Reg.scala 16:16]
  wire  s3_fire = s3_valid & ~_sx_ready_0_T_4; // @[StoreUnit.scala 304:28]
  wire  _cur_fire_T = ~_sx_ready_1_T_6; // @[StoreUnit.scala 346:39]
  wire  cur_fire = sx_valid_1_r & ~_sx_ready_1_T_6; // @[StoreUnit.scala 346:36]
  wire  sx_valid_can_go = s3_fire | cur_fire | _sx_ready_1_T_6; // @[StoreUnit.scala 350:51]
  reg  sx_in_1_ruop_cf_exceptionVec_6; // @[Reg.scala 16:16]
  reg  sx_in_1_ruop_cf_exceptionVec_7; // @[Reg.scala 16:16]
  reg  sx_in_1_ruop_cf_exceptionVec_15; // @[Reg.scala 16:16]
  reg  sx_in_1_ruop_cf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  sx_in_1_ruop_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] sx_in_1_ruop_lqIdx_value; // @[Reg.scala 16:16]
  reg  sx_in_1_rdebug_isMMIO; // @[Reg.scala 16:16]
  reg [38:0] sx_in_1_rdebug_vaddr; // @[Reg.scala 16:16]
  assign io_tlb_req_valid = io_stin_valid; // @[StoreUnit.scala 63:38]
  assign io_tlb_req_bits_vaddr = io_stin_valid ? s0_saddr : io_prefetch_req_bits_vaddr; // @[StoreUnit.scala 89:21]
  assign io_lsq_valid = s1_valid; // @[StoreUnit.scala 216:32]
  assign io_lsq_bits_uop_cf_ftqPtr_value = s1_in_uop_cf_ftqPtr_value; // @[StoreUnit.scala 156:23 207:18]
  assign io_lsq_bits_uop_cf_ftqOffset = s1_in_uop_cf_ftqOffset; // @[StoreUnit.scala 156:23 207:18]
  assign io_lsq_bits_uop_ctrl_fuOpType = s1_in_uop_ctrl_fuOpType; // @[StoreUnit.scala 156:23 207:18]
  assign io_lsq_bits_uop_robIdx_flag = s1_in_uop_robIdx_flag; // @[StoreUnit.scala 156:23 207:18]
  assign io_lsq_bits_uop_robIdx_value = s1_in_uop_robIdx_value; // @[StoreUnit.scala 156:23 207:18]
  assign io_lsq_bits_uop_sqIdx_flag = s1_in_uop_sqIdx_flag; // @[StoreUnit.scala 156:23 207:18]
  assign io_lsq_bits_uop_sqIdx_value = s1_in_uop_sqIdx_value; // @[StoreUnit.scala 156:23 207:18]
  assign io_lsq_bits_vaddr = s1_in_vaddr; // @[StoreUnit.scala 156:23 207:18]
  assign io_lsq_bits_paddr = io_tlb_resp_bits_paddr_0; // @[StoreUnit.scala 156:23 208:18]
  assign io_lsq_bits_mask = s1_in_mask; // @[StoreUnit.scala 156:23 207:18]
  assign io_lsq_bits_wlineflag = s1_in_wlineflag; // @[StoreUnit.scala 156:23 207:18]
  assign io_lsq_bits_miss = io_tlb_resp_bits_miss; // @[StoreUnit.scala 218:20]
  assign io_lsq_replenish_mmio = s2_mmio & _s2_kill_T; // @[StoreUnit.scala 262:28]
  assign io_lsq_replenish_atomic = s2_in_atomic | io_pmp_atomic; // @[StoreUnit.scala 263:33]
  assign io_feedback_slow_valid = io_feedback_slow_valid_REG; // @[StoreUnit.scala 273:26]
  assign io_feedback_slow_bits_rsIdx = io_feedback_slow_bits_REG_rsIdx; // @[StoreUnit.scala 274:26]
  assign io_feedback_slow_bits_hit = io_feedback_slow_bits_REG_hit; // @[StoreUnit.scala 274:26]
  assign io_stld_nuke_query_valid = s1_valid & ~io_tlb_resp_bits_miss; // @[StoreUnit.scala 178:46]
  assign io_stld_nuke_query_bits_robIdx_flag = s1_in_uop_robIdx_flag; // @[StoreUnit.scala 179:34]
  assign io_stld_nuke_query_bits_robIdx_value = s1_in_uop_robIdx_value; // @[StoreUnit.scala 179:34]
  assign io_stld_nuke_query_bits_paddr = io_tlb_resp_bits_paddr_0; // @[StoreUnit.scala 180:34]
  assign io_stld_nuke_query_bits_mask = s1_in_mask; // @[StoreUnit.scala 181:34]
  assign io_stout_valid = sx_valid_1_r & _cur_fire_T; // @[StoreUnit.scala 360:35]
  assign io_stout_bits_uop_cf_exceptionVec_6 = sx_in_1_ruop_cf_exceptionVec_6; // @[StoreUnit.scala 334:22 352:16]
  assign io_stout_bits_uop_cf_exceptionVec_7 = sx_in_1_ruop_cf_exceptionVec_7; // @[StoreUnit.scala 334:22 352:16]
  assign io_stout_bits_uop_cf_exceptionVec_15 = sx_in_1_ruop_cf_exceptionVec_15; // @[StoreUnit.scala 334:22 352:16]
  assign io_stout_bits_uop_cf_trigger_backendEn_0 = sx_in_1_ruop_cf_trigger_backendEn_0; // @[StoreUnit.scala 334:22 352:16]
  assign io_stout_bits_uop_robIdx_flag = sx_in_1_ruop_robIdx_flag; // @[StoreUnit.scala 334:22 352:16]
  assign io_stout_bits_uop_robIdx_value = sx_in_1_ruop_robIdx_value; // @[StoreUnit.scala 334:22 352:16]
  assign io_stout_bits_uop_lqIdx_flag = sx_in_1_ruop_lqIdx_flag; // @[StoreUnit.scala 334:22 352:16]
  assign io_stout_bits_uop_lqIdx_value = sx_in_1_ruop_lqIdx_value; // @[StoreUnit.scala 334:22 352:16]
  assign io_stout_bits_debug_isMMIO = sx_in_1_rdebug_isMMIO; // @[StoreUnit.scala 334:22 352:16]
  assign io_stout_bits_debug_vaddr = sx_in_1_rdebug_vaddr; // @[StoreUnit.scala 334:22 352:16]
  assign io_st_mask_out_valid = io_stin_valid; // @[StoreUnit.scala 142:30]
  assign io_st_mask_out_bits_sqIdx_value = io_stin_valid ? io_stin_bits_uop_sqIdx_value : 4'h0; // @[StoreUnit.scala 66:28]
  assign io_st_mask_out_bits_mask = s0_mask[15:0]; // @[StoreUnit.scala 125:23 75:29]
  always @(posedge clock) begin
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_in_uop_robIdx_flag <= s0_in_uop_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (io_stin_valid) begin // @[StoreUnit.scala 66:28]
        s1_in_uop_robIdx_value <= io_stin_bits_uop_robIdx_value;
      end else begin
        s1_in_uop_robIdx_value <= 5'h0;
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_mmio <= s1_mmio; // @[Reg.scala 17:22]
    end
    s2_static_pm_valid <= io_tlb_resp_bits_static_pm_valid; // @[StoreUnit.scala 249:29]
    s2_static_pm_bits <= io_tlb_resp_bits_static_pm_bits; // @[StoreUnit.scala 249:29]
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_uop_cf_exceptionVec_15 <= io_tlb_resp_bits_excp_0_pf_st; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_uop_cf_exceptionVec_7 <= io_tlb_resp_bits_excp_0_af_st; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_uop_cf_exceptionVec_6 <= s1_in_uop_cf_exceptionVec_6; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_uop_robIdx_flag <= s1_in_uop_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_uop_robIdx_value <= s1_in_uop_robIdx_value; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_robIdx_flag <= s2_in_uop_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_robIdx_value <= s2_in_uop_robIdx_value; // @[Reg.scala 17:22]
    end
    if (sx_valid_can_go) begin // @[Reg.scala 17:18]
      sx_valid_1_r <= s3_fire; // @[Reg.scala 17:22]
    end
    if (s3_fire) begin // @[Reg.scala 17:18]
      sx_in_1_ruop_robIdx_flag <= s3_in_uop_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (s3_fire) begin // @[Reg.scala 17:18]
      sx_in_1_ruop_robIdx_value <= s3_in_uop_robIdx_value; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_in_uop_cf_exceptionVec_6 <= s0_out_uop_cf_exceptionVec_6; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_in_uop_cf_trigger_backendEn_0 <= s0_in_uop_cf_trigger_backendEn_0; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (io_stin_valid) begin // @[StoreUnit.scala 66:28]
        s1_in_uop_cf_ftqPtr_value <= io_stin_bits_uop_cf_ftqPtr_value;
      end else begin
        s1_in_uop_cf_ftqPtr_value <= 3'h0;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (io_stin_valid) begin // @[StoreUnit.scala 66:28]
        s1_in_uop_cf_ftqOffset <= io_stin_bits_uop_cf_ftqOffset;
      end else begin
        s1_in_uop_cf_ftqOffset <= 3'h0;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (io_stin_valid) begin // @[StoreUnit.scala 66:28]
        s1_in_uop_ctrl_fuOpType <= io_stin_bits_uop_ctrl_fuOpType;
      end else begin
        s1_in_uop_ctrl_fuOpType <= 7'h0;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_in_uop_lqIdx_flag <= s0_in_uop_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (io_stin_valid) begin // @[StoreUnit.scala 66:28]
        s1_in_uop_lqIdx_value <= io_stin_bits_uop_lqIdx_value;
      end else begin
        s1_in_uop_lqIdx_value <= 4'h0;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_in_uop_sqIdx_flag <= s0_in_uop_sqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (io_stin_valid) begin // @[StoreUnit.scala 66:28]
        s1_in_uop_sqIdx_value <= io_stin_bits_uop_sqIdx_value;
      end else begin
        s1_in_uop_sqIdx_value <= 4'h0;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (io_stin_valid) begin // @[StoreUnit.scala 89:21]
        s1_in_vaddr <= s0_saddr;
      end else begin
        s1_in_vaddr <= io_prefetch_req_bits_vaddr;
      end
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_in_mask <= s0_out_mask; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_in_wlineflag <= s0_wlineflag; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      if (io_stin_valid) begin // @[StoreUnit.scala 68:28]
        s1_in_rsIdx <= io_rsIdx;
      end else begin
        s1_in_rsIdx <= 4'h0;
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_uop_cf_trigger_backendEn_0 <= s1_in_uop_cf_trigger_backendEn_0; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_uop_lqIdx_flag <= s1_in_uop_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_uop_lqIdx_value <= s1_in_uop_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_vaddr <= s1_in_vaddr; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_in_atomic <= s1_mmio; // @[Reg.scala 17:22]
    end
    io_feedback_slow_valid_REG <= s1_valid & ~_s1_kill_T_2; // @[StoreUnit.scala 273:55]
    io_feedback_slow_bits_REG_rsIdx <= s1_in_rsIdx; // @[StoreUnit.scala 156:23 207:18]
    io_feedback_slow_bits_REG_hit <= ~io_tlb_resp_bits_miss; // @[StoreUnit.scala 192:40]
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_cf_exceptionVec_6 <= s2_in_uop_cf_exceptionVec_6; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_cf_exceptionVec_7 <= s2_out_uop_cf_exceptionVec_7; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_cf_exceptionVec_15 <= s2_in_uop_cf_exceptionVec_15; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_cf_trigger_backendEn_0 <= s2_in_uop_cf_trigger_backendEn_0; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_lqIdx_flag <= s2_in_uop_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_uop_lqIdx_value <= s2_in_uop_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_vaddr <= s2_in_vaddr; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      s3_in_mmio <= _s2_kill_T_1; // @[Reg.scala 17:22]
    end
    if (s3_fire) begin // @[Reg.scala 17:18]
      sx_in_1_ruop_cf_exceptionVec_6 <= s3_in_uop_cf_exceptionVec_6; // @[Reg.scala 17:22]
    end
    if (s3_fire) begin // @[Reg.scala 17:18]
      sx_in_1_ruop_cf_exceptionVec_7 <= s3_in_uop_cf_exceptionVec_7; // @[Reg.scala 17:22]
    end
    if (s3_fire) begin // @[Reg.scala 17:18]
      sx_in_1_ruop_cf_exceptionVec_15 <= s3_in_uop_cf_exceptionVec_15; // @[Reg.scala 17:22]
    end
    if (s3_fire) begin // @[Reg.scala 17:18]
      sx_in_1_ruop_cf_trigger_backendEn_0 <= s3_in_uop_cf_trigger_backendEn_0; // @[Reg.scala 17:22]
    end
    if (s3_fire) begin // @[Reg.scala 17:18]
      sx_in_1_ruop_lqIdx_flag <= s3_in_uop_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (s3_fire) begin // @[Reg.scala 17:18]
      sx_in_1_ruop_lqIdx_value <= s3_in_uop_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (s3_fire) begin // @[Reg.scala 17:18]
      sx_in_1_rdebug_isMMIO <= s3_in_mmio; // @[Reg.scala 17:22]
    end
    if (s3_fire) begin // @[Reg.scala 17:18]
      sx_in_1_rdebug_vaddr <= s3_in_vaddr; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreUnit.scala 173:18]
      s1_valid <= 1'h0; // @[StoreUnit.scala 173:29]
    end else begin
      s1_valid <= s0_fire | _GEN_172;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreUnit.scala 244:18]
      s2_valid <= 1'h0; // @[StoreUnit.scala 244:29]
    end else begin
      s2_valid <= s1_fire | _GEN_457;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreUnit.scala 306:18]
      s3_valid <= 1'h0; // @[StoreUnit.scala 306:29]
    end else if (s2_fire) begin // @[StoreUnit.scala 307:23]
      s3_valid <= ~s2_mmio | s2_exception; // @[StoreUnit.scala 307:34]
    end else if (s3_fire) begin // @[StoreUnit.scala 308:23]
      s3_valid <= 1'h0; // @[StoreUnit.scala 308:34]
    end else if (_sx_ready_0_T_4) begin // @[StoreUnit.scala 299:26]
      s3_valid <= 1'h0;
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
  s1_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  s1_in_uop_robIdx_flag = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  s1_in_uop_robIdx_value = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  s2_valid = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  s2_in_mmio = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  s2_static_pm_valid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s2_static_pm_bits = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s2_in_uop_cf_exceptionVec_15 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  s2_in_uop_cf_exceptionVec_7 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  s2_in_uop_cf_exceptionVec_6 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  s2_in_uop_robIdx_flag = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  s2_in_uop_robIdx_value = _RAND_11[4:0];
  _RAND_12 = {1{`RANDOM}};
  s3_valid = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  s3_in_uop_robIdx_flag = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s3_in_uop_robIdx_value = _RAND_14[4:0];
  _RAND_15 = {1{`RANDOM}};
  sx_valid_1_r = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  sx_in_1_ruop_robIdx_flag = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  sx_in_1_ruop_robIdx_value = _RAND_17[4:0];
  _RAND_18 = {1{`RANDOM}};
  s1_in_uop_cf_exceptionVec_6 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  s1_in_uop_cf_trigger_backendEn_0 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  s1_in_uop_cf_ftqPtr_value = _RAND_20[2:0];
  _RAND_21 = {1{`RANDOM}};
  s1_in_uop_cf_ftqOffset = _RAND_21[2:0];
  _RAND_22 = {1{`RANDOM}};
  s1_in_uop_ctrl_fuOpType = _RAND_22[6:0];
  _RAND_23 = {1{`RANDOM}};
  s1_in_uop_lqIdx_flag = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  s1_in_uop_lqIdx_value = _RAND_24[3:0];
  _RAND_25 = {1{`RANDOM}};
  s1_in_uop_sqIdx_flag = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  s1_in_uop_sqIdx_value = _RAND_26[3:0];
  _RAND_27 = {2{`RANDOM}};
  s1_in_vaddr = _RAND_27[38:0];
  _RAND_28 = {1{`RANDOM}};
  s1_in_mask = _RAND_28[15:0];
  _RAND_29 = {1{`RANDOM}};
  s1_in_wlineflag = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  s1_in_rsIdx = _RAND_30[3:0];
  _RAND_31 = {1{`RANDOM}};
  s2_in_uop_cf_trigger_backendEn_0 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  s2_in_uop_lqIdx_flag = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  s2_in_uop_lqIdx_value = _RAND_33[3:0];
  _RAND_34 = {2{`RANDOM}};
  s2_in_vaddr = _RAND_34[38:0];
  _RAND_35 = {1{`RANDOM}};
  s2_in_atomic = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  io_feedback_slow_valid_REG = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  io_feedback_slow_bits_REG_rsIdx = _RAND_37[3:0];
  _RAND_38 = {1{`RANDOM}};
  io_feedback_slow_bits_REG_hit = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  s3_in_uop_cf_exceptionVec_6 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  s3_in_uop_cf_exceptionVec_7 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  s3_in_uop_cf_exceptionVec_15 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  s3_in_uop_cf_trigger_backendEn_0 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  s3_in_uop_lqIdx_flag = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  s3_in_uop_lqIdx_value = _RAND_44[3:0];
  _RAND_45 = {2{`RANDOM}};
  s3_in_vaddr = _RAND_45[38:0];
  _RAND_46 = {1{`RANDOM}};
  s3_in_mmio = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  sx_in_1_ruop_cf_exceptionVec_6 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  sx_in_1_ruop_cf_exceptionVec_7 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  sx_in_1_ruop_cf_exceptionVec_15 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  sx_in_1_ruop_cf_trigger_backendEn_0 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  sx_in_1_ruop_lqIdx_flag = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  sx_in_1_ruop_lqIdx_value = _RAND_52[3:0];
  _RAND_53 = {1{`RANDOM}};
  sx_in_1_rdebug_isMMIO = _RAND_53[0:0];
  _RAND_54 = {2{`RANDOM}};
  sx_in_1_rdebug_vaddr = _RAND_54[38:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    s1_valid = 1'h0;
  end
  if (reset) begin
    s2_valid = 1'h0;
  end
  if (reset) begin
    s3_valid = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

