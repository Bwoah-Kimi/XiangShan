module AtomicsUnit(
  input         clock,
  input         reset,
  input  [7:0]  io_hartId,
  output        io_in_ready,
  input         io_in_valid,
  input         io_in_bits_uop_cf_trigger_backendEn_0,
  input         io_in_bits_uop_cf_trigger_backendEn_1,
  input  [6:0]  io_in_bits_uop_ctrl_fuOpType,
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input  [5:0]  io_in_bits_uop_pdest,
  input         io_in_bits_uop_robIdx_flag,
  input  [4:0]  io_in_bits_uop_robIdx_value,
  input         io_in_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_bits_uop_lqIdx_value,
  input  [63:0] io_in_bits_src_0,
  input         io_storeDataIn_valid,
  input  [63:0] io_storeDataIn_bits_data,
  output        io_out_valid,
  output        io_out_bits_uop_cf_exceptionVec_4,
  output        io_out_bits_uop_cf_exceptionVec_5,
  output        io_out_bits_uop_cf_exceptionVec_6,
  output        io_out_bits_uop_cf_exceptionVec_7,
  output        io_out_bits_uop_cf_exceptionVec_13,
  output        io_out_bits_uop_cf_exceptionVec_15,
  output        io_out_bits_uop_cf_trigger_backendEn_0,
  output        io_out_bits_uop_cf_trigger_backendEn_1,
  output        io_out_bits_uop_cf_trigger_backendHit_0,
  output        io_out_bits_uop_cf_trigger_backendHit_1,
  output        io_out_bits_uop_cf_trigger_backendHit_2,
  output        io_out_bits_uop_cf_trigger_backendHit_3,
  output        io_out_bits_uop_cf_trigger_backendHit_4,
  output        io_out_bits_uop_cf_trigger_backendHit_5,
  output [6:0]  io_out_bits_uop_ctrl_fuOpType,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output [5:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [4:0]  io_out_bits_uop_robIdx_value,
  output        io_out_bits_uop_lqIdx_flag,
  output [3:0]  io_out_bits_uop_lqIdx_value,
  output [63:0] io_out_bits_data,
  output        io_out_bits_debug_isMMIO,
  input         io_dcache_req_ready,
  output        io_dcache_req_valid,
  output [4:0]  io_dcache_req_bits_cmd,
  output [38:0] io_dcache_req_bits_vaddr,
  output [35:0] io_dcache_req_bits_addr,
  output [2:0]  io_dcache_req_bits_word_idx,
  output [63:0] io_dcache_req_bits_amo_data,
  output [7:0]  io_dcache_req_bits_amo_mask,
  input         io_dcache_resp_valid,
  input  [63:0] io_dcache_resp_bits_data,
  input         io_dcache_resp_bits_miss,
  input         io_dcache_resp_bits_replay,
  input         io_dcache_resp_bits_error,
  input  [3:0]  io_dcache_resp_bits_id,
  input         io_dcache_block_lr,
  output        io_dtlb_req_valid,
  output [38:0] io_dtlb_req_bits_vaddr,
  output [2:0]  io_dtlb_req_bits_cmd,
  output        io_dtlb_resp_ready,
  input         io_dtlb_resp_valid,
  input  [35:0] io_dtlb_resp_bits_paddr_0,
  input         io_dtlb_resp_bits_miss,
  input         io_dtlb_resp_bits_excp_0_pf_ld,
  input         io_dtlb_resp_bits_excp_0_pf_st,
  input         io_dtlb_resp_bits_excp_0_af_ld,
  input         io_dtlb_resp_bits_excp_0_af_st,
  input         io_dtlb_resp_bits_static_pm_valid,
  input         io_dtlb_resp_bits_static_pm_bits,
  input         io_pmpResp_ld,
  input         io_pmpResp_st,
  input         io_pmpResp_mmio,
  input  [3:0]  io_rsIdx,
  output        io_flush_sbuffer_valid,
  input         io_flush_sbuffer_empty,
  output        io_feedbackSlow_valid,
  output [3:0]  io_feedbackSlow_bits_rsIdx,
  input         io_redirect_valid,
  output        io_exceptionAddr_valid,
  output [38:0] io_exceptionAddr_bits,
  input         io_csrCtrl_cache_error_enable,
  input         io_csrCtrl_mem_trigger_t_valid,
  input  [2:0]  io_csrCtrl_mem_trigger_t_bits_addr,
  input  [1:0]  io_csrCtrl_mem_trigger_t_bits_tdata_matchType,
  input         io_csrCtrl_mem_trigger_t_bits_tdata_select,
  input         io_csrCtrl_mem_trigger_t_bits_tdata_chain,
  input  [63:0] io_csrCtrl_mem_trigger_t_bits_tdata_tdata2,
  input         io_csrCtrl_trigger_enable_2,
  input         io_csrCtrl_trigger_enable_3,
  input         io_csrCtrl_trigger_enable_4,
  input         io_csrCtrl_trigger_enable_5,
  input         io_csrCtrl_trigger_enable_7,
  input         io_csrCtrl_trigger_enable_9
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
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [63:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [63:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [63:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [63:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [63:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [63:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [63:0] _RAND_54;
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
`endif // RANDOMIZE_REG_INIT
  wire  difftest_io_clock; // @[AtomicsUnit.scala 457:26]
  wire [7:0] difftest_io_coreid; // @[AtomicsUnit.scala 457:26]
  wire  difftest_io_valid; // @[AtomicsUnit.scala 457:26]
  wire  difftest_io_success; // @[AtomicsUnit.scala 457:26]
  reg [2:0] state; // @[AtomicsUnit.scala 52:22]
  reg  out_valid; // @[AtomicsUnit.scala 53:26]
  reg  data_valid; // @[AtomicsUnit.scala 54:27]
  reg  in_uop_cf_trigger_backendEn_0; // @[AtomicsUnit.scala 55:15]
  reg  in_uop_cf_trigger_backendEn_1; // @[AtomicsUnit.scala 55:15]
  reg [6:0] in_uop_ctrl_fuOpType; // @[AtomicsUnit.scala 55:15]
  reg  in_uop_ctrl_rfWen; // @[AtomicsUnit.scala 55:15]
  reg  in_uop_ctrl_fpWen; // @[AtomicsUnit.scala 55:15]
  reg [5:0] in_uop_pdest; // @[AtomicsUnit.scala 55:15]
  reg  in_uop_robIdx_flag; // @[AtomicsUnit.scala 55:15]
  reg [4:0] in_uop_robIdx_value; // @[AtomicsUnit.scala 55:15]
  reg  in_uop_lqIdx_flag; // @[AtomicsUnit.scala 55:15]
  reg [3:0] in_uop_lqIdx_value; // @[AtomicsUnit.scala 55:15]
  reg [63:0] in_src_0; // @[AtomicsUnit.scala 55:15]
  reg [63:0] in_src_1; // @[AtomicsUnit.scala 55:15]
  reg  exceptionVec_4; // @[AtomicsUnit.scala 56:29]
  reg  exceptionVec_5; // @[AtomicsUnit.scala 56:29]
  reg  exceptionVec_6; // @[AtomicsUnit.scala 56:29]
  reg  exceptionVec_7; // @[AtomicsUnit.scala 56:29]
  reg  exceptionVec_13; // @[AtomicsUnit.scala 56:29]
  reg  exceptionVec_15; // @[AtomicsUnit.scala 56:29]
  reg  atom_override_xtval; // @[AtomicsUnit.scala 57:36]
  reg  have_sent_first_tlb_req; // @[AtomicsUnit.scala 58:40]
  wire  isLr = in_uop_ctrl_fuOpType == 7'h2 | in_uop_ctrl_fuOpType == 7'h3; // @[AtomicsUnit.scala 59:54]
  reg [35:0] paddr; // @[AtomicsUnit.scala 61:18]
  reg  is_mmio; // @[AtomicsUnit.scala 63:20]
  reg  static_pm_valid; // @[AtomicsUnit.scala 65:22]
  reg  static_pm_bits; // @[AtomicsUnit.scala 65:22]
  reg [63:0] resp_data; // @[AtomicsUnit.scala 67:22]
  reg  is_lrsc_valid; // @[AtomicsUnit.scala 69:26]
  wire  _T_1 = io_in_ready & io_in_valid; // @[Decoupled.scala 50:35]
  wire [2:0] _GEN_111 = _T_1 ? 3'h1 : state; // @[AtomicsUnit.scala 100:23 103:13 52:22]
  wire  _GEN_112 = _T_1 ? 1'h0 : have_sent_first_tlb_req; // @[AtomicsUnit.scala 100:23 104:31 58:40]
  wire [2:0] _GEN_225 = state == 3'h0 ? _GEN_111 : state; // @[AtomicsUnit.scala 52:22 98:30]
  wire  _GEN_226 = state == 3'h0 ? _GEN_112 : have_sent_first_tlb_req; // @[AtomicsUnit.scala 98:30 58:40]
  wire  _GEN_228 = io_storeDataIn_valid | data_valid; // @[AtomicsUnit.scala 108:30 110:16 54:27]
  reg  io_feedbackSlow_valid_REG; // @[AtomicsUnit.scala 119:49]
  reg  io_feedbackSlow_valid_REG_1; // @[AtomicsUnit.scala 119:41]
  reg [3:0] io_feedbackSlow_bits_rsIdx_r; // @[Reg.scala 16:16]
  wire  _io_flush_sbuffer_valid_T = io_flush_sbuffer_empty ? 1'h0 : 1'h1; // @[AtomicsUnit.scala 140:34]
  wire  _T_8 = io_dtlb_resp_ready & io_dtlb_resp_valid; // @[Decoupled.scala 50:35]
  wire  _addrAligned_T_2 = ~in_src_0[0]; // @[AtomicsUnit.scala 152:36]
  wire  _addrAligned_T_4 = in_src_0[1:0] == 2'h0; // @[AtomicsUnit.scala 153:38]
  wire  _addrAligned_T_6 = in_src_0[2:0] == 3'h0; // @[AtomicsUnit.scala 154:38]
  wire  _addrAligned_T_7 = 2'h0 == in_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _addrAligned_T_8 = 2'h1 == in_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _addrAligned_T_9 = 2'h2 == in_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  _addrAligned_T_10 = 2'h3 == in_uop_ctrl_fuOpType[1:0]; // @[LookupTree.scala 24:34]
  wire  addrAligned = _addrAligned_T_7 | _addrAligned_T_8 & _addrAligned_T_2 | _addrAligned_T_9 & _addrAligned_T_4 |
    _addrAligned_T_10 & _addrAligned_T_6; // @[Mux.scala 27:73]
  wire  _exceptionVec_4_T = ~addrAligned; // @[AtomicsUnit.scala 156:44]
  wire  _exceptionVec_6_T_1 = ~isLr; // @[AtomicsUnit.scala 157:60]
  wire [2:0] _GEN_230 = _exceptionVec_4_T ? 3'h7 : 3'h2; // @[AtomicsUnit.scala 166:29 170:17 174:17]
  wire  _GEN_231 = _exceptionVec_4_T | out_valid; // @[AtomicsUnit.scala 166:29 171:21 53:26]
  wire  _GEN_232 = _exceptionVec_4_T | atom_override_xtval; // @[AtomicsUnit.scala 166:29 172:31 57:36]
  wire [2:0] _GEN_233 = ~io_dtlb_resp_bits_miss ? _GEN_230 : _GEN_225; // @[AtomicsUnit.scala 164:38]
  wire  _GEN_234 = ~io_dtlb_resp_bits_miss ? _GEN_231 : out_valid; // @[AtomicsUnit.scala 164:38 53:26]
  wire  _GEN_235 = ~io_dtlb_resp_bits_miss ? _GEN_232 : atom_override_xtval; // @[AtomicsUnit.scala 164:38 57:36]
  wire  _GEN_241 = _T_8 & have_sent_first_tlb_req ? io_dtlb_resp_bits_excp_0_af_st : exceptionVec_7; // @[AtomicsUnit.scala 147:55 160:41 56:29]
  wire  _GEN_242 = _T_8 & have_sent_first_tlb_req ? io_dtlb_resp_bits_excp_0_af_ld : exceptionVec_5; // @[AtomicsUnit.scala 147:55 161:41 56:29]
  wire [2:0] _GEN_245 = _T_8 & have_sent_first_tlb_req ? _GEN_233 : _GEN_225; // @[AtomicsUnit.scala 147:55]
  wire  _GEN_246 = _T_8 & have_sent_first_tlb_req ? _GEN_234 : out_valid; // @[AtomicsUnit.scala 147:55 53:26]
  wire  _GEN_247 = _T_8 & have_sent_first_tlb_req ? _GEN_235 : atom_override_xtval; // @[AtomicsUnit.scala 147:55 57:36]
  wire  _GEN_261 = state == 3'h1 ? _GEN_241 : exceptionVec_7; // @[AtomicsUnit.scala 128:48 56:29]
  wire  _GEN_262 = state == 3'h1 ? _GEN_242 : exceptionVec_5; // @[AtomicsUnit.scala 128:48 56:29]
  wire [2:0] _GEN_265 = state == 3'h1 ? _GEN_245 : _GEN_225; // @[AtomicsUnit.scala 128:48]
  wire  _GEN_266 = state == 3'h1 ? _GEN_246 : out_valid; // @[AtomicsUnit.scala 128:48 53:26]
  wire  _GEN_267 = state == 3'h1 ? _GEN_247 : atom_override_xtval; // @[AtomicsUnit.scala 128:48 57:36]
  wire  pmp_ld = static_pm_valid ? 1'h0 : io_pmpResp_ld; // @[AtomicsUnit.scala 182:28 183:14]
  wire  pmp_st = static_pm_valid ? 1'h0 : io_pmpResp_st; // @[AtomicsUnit.scala 182:28 184:14]
  wire  _exception_va_T_1 = exceptionVec_15 | exceptionVec_13 | exceptionVec_7; // @[AtomicsUnit.scala 190:84]
  wire  exception_va = _exception_va_T_1 | exceptionVec_5; // @[AtomicsUnit.scala 191:38]
  wire  exception_pa = pmp_st | pmp_ld; // @[AtomicsUnit.scala 192:31]
  wire [2:0] _state_T = io_flush_sbuffer_empty ? 3'h4 : 3'h3; // @[AtomicsUnit.scala 199:19]
  wire [2:0] _GEN_272 = exception_va | exception_pa ? 3'h7 : _state_T; // @[AtomicsUnit.scala 193:41 194:13 199:13]
  wire  _GEN_273 = exception_va | exception_pa | _GEN_266; // @[AtomicsUnit.scala 193:41 195:17]
  wire  _GEN_274 = exception_va | exception_pa | _GEN_267; // @[AtomicsUnit.scala 193:41 196:27]
  wire [2:0] _GEN_276 = state == 3'h2 ? _GEN_272 : _GEN_265; // @[AtomicsUnit.scala 180:25]
  wire  _GEN_277 = state == 3'h2 ? _GEN_273 : _GEN_266; // @[AtomicsUnit.scala 180:25]
  wire  _GEN_279 = state == 3'h2 ? exceptionVec_5 | pmp_ld & isLr : _GEN_262; // @[AtomicsUnit.scala 180:25 202:35]
  wire  _GEN_280 = state == 3'h2 ? exceptionVec_7 | pmp_st | pmp_ld & _exceptionVec_6_T_1 : _GEN_261; // @[AtomicsUnit.scala 180:25 203:36]
  wire [2:0] _GEN_281 = io_flush_sbuffer_empty ? 3'h4 : _GEN_276; // @[AtomicsUnit.scala 207:26 208:13]
  wire [2:0] _GEN_282 = state == 3'h3 ? _GEN_281 : _GEN_276; // @[AtomicsUnit.scala 206:46]
  wire  _T_15 = state == 3'h4; // @[AtomicsUnit.scala 212:15]
  wire  _io_dcache_req_bits_cmd_T = 7'h2 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_1 = 7'h6 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_2 = 7'ha == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_3 = 7'he == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_4 = 7'h12 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_5 = 7'h16 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_6 = 7'h1a == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_7 = 7'h1e == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_8 = 7'h22 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_9 = 7'h26 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_10 = 7'h2a == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_11 = 7'h3 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_12 = 7'h7 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_13 = 7'hb == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_14 = 7'hf == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_15 = 7'h13 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_16 = 7'h17 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_17 = 7'h1b == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_18 = 7'h1f == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_19 = 7'h23 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_20 = 7'h27 == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire  _io_dcache_req_bits_cmd_T_21 = 7'h2b == in_uop_ctrl_fuOpType; // @[LookupTree.scala 24:34]
  wire [2:0] _io_dcache_req_bits_cmd_T_22 = _io_dcache_req_bits_cmd_T ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_dcache_req_bits_cmd_T_23 = _io_dcache_req_bits_cmd_T_1 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_dcache_req_bits_cmd_T_24 = _io_dcache_req_bits_cmd_T_2 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_25 = _io_dcache_req_bits_cmd_T_3 ? 4'h8 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_26 = _io_dcache_req_bits_cmd_T_4 ? 4'h9 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_27 = _io_dcache_req_bits_cmd_T_5 ? 4'hb : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_28 = _io_dcache_req_bits_cmd_T_6 ? 4'ha : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_29 = _io_dcache_req_bits_cmd_T_7 ? 4'hc : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_30 = _io_dcache_req_bits_cmd_T_8 ? 4'hd : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_31 = _io_dcache_req_bits_cmd_T_9 ? 4'he : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_32 = _io_dcache_req_bits_cmd_T_10 ? 4'hf : 4'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_dcache_req_bits_cmd_T_33 = _io_dcache_req_bits_cmd_T_11 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_dcache_req_bits_cmd_T_34 = _io_dcache_req_bits_cmd_T_12 ? 3'h7 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_dcache_req_bits_cmd_T_35 = _io_dcache_req_bits_cmd_T_13 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_36 = _io_dcache_req_bits_cmd_T_14 ? 4'h8 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_37 = _io_dcache_req_bits_cmd_T_15 ? 4'h9 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_38 = _io_dcache_req_bits_cmd_T_16 ? 4'hb : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_39 = _io_dcache_req_bits_cmd_T_17 ? 4'ha : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_40 = _io_dcache_req_bits_cmd_T_18 ? 4'hc : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_41 = _io_dcache_req_bits_cmd_T_19 ? 4'hd : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_42 = _io_dcache_req_bits_cmd_T_20 ? 4'he : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_43 = _io_dcache_req_bits_cmd_T_21 ? 4'hf : 4'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_dcache_req_bits_cmd_T_44 = _io_dcache_req_bits_cmd_T_22 | _io_dcache_req_bits_cmd_T_23; // @[Mux.scala 27:73]
  wire [2:0] _io_dcache_req_bits_cmd_T_45 = _io_dcache_req_bits_cmd_T_44 | _io_dcache_req_bits_cmd_T_24; // @[Mux.scala 27:73]
  wire [3:0] _GEN_418 = {{1'd0}, _io_dcache_req_bits_cmd_T_45}; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_46 = _GEN_418 | _io_dcache_req_bits_cmd_T_25; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_47 = _io_dcache_req_bits_cmd_T_46 | _io_dcache_req_bits_cmd_T_26; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_48 = _io_dcache_req_bits_cmd_T_47 | _io_dcache_req_bits_cmd_T_27; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_49 = _io_dcache_req_bits_cmd_T_48 | _io_dcache_req_bits_cmd_T_28; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_50 = _io_dcache_req_bits_cmd_T_49 | _io_dcache_req_bits_cmd_T_29; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_51 = _io_dcache_req_bits_cmd_T_50 | _io_dcache_req_bits_cmd_T_30; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_52 = _io_dcache_req_bits_cmd_T_51 | _io_dcache_req_bits_cmd_T_31; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_53 = _io_dcache_req_bits_cmd_T_52 | _io_dcache_req_bits_cmd_T_32; // @[Mux.scala 27:73]
  wire [3:0] _GEN_419 = {{1'd0}, _io_dcache_req_bits_cmd_T_33}; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_54 = _io_dcache_req_bits_cmd_T_53 | _GEN_419; // @[Mux.scala 27:73]
  wire [3:0] _GEN_420 = {{1'd0}, _io_dcache_req_bits_cmd_T_34}; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_55 = _io_dcache_req_bits_cmd_T_54 | _GEN_420; // @[Mux.scala 27:73]
  wire [3:0] _GEN_421 = {{1'd0}, _io_dcache_req_bits_cmd_T_35}; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_56 = _io_dcache_req_bits_cmd_T_55 | _GEN_421; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_57 = _io_dcache_req_bits_cmd_T_56 | _io_dcache_req_bits_cmd_T_36; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_58 = _io_dcache_req_bits_cmd_T_57 | _io_dcache_req_bits_cmd_T_37; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_59 = _io_dcache_req_bits_cmd_T_58 | _io_dcache_req_bits_cmd_T_38; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_60 = _io_dcache_req_bits_cmd_T_59 | _io_dcache_req_bits_cmd_T_39; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_61 = _io_dcache_req_bits_cmd_T_60 | _io_dcache_req_bits_cmd_T_40; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_62 = _io_dcache_req_bits_cmd_T_61 | _io_dcache_req_bits_cmd_T_41; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_63 = _io_dcache_req_bits_cmd_T_62 | _io_dcache_req_bits_cmd_T_42; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_cmd_T_64 = _io_dcache_req_bits_cmd_T_63 | _io_dcache_req_bits_cmd_T_43; // @[Mux.scala 27:73]
  wire [63:0] _io_dcache_req_bits_vaddr_T_1 = {in_src_0[63:6], 6'h0}; // @[L1Cache.scala 86:59]
  wire [63:0] _io_dcache_req_bits_amo_data_T_4 = {in_src_1[7:0],in_src_1[7:0],in_src_1[7:0],in_src_1[7:0],in_src_1[7:0],
    in_src_1[7:0],in_src_1[7:0],in_src_1[7:0]}; // @[Cat.scala 31:58]
  wire [127:0] _io_dcache_req_bits_amo_data_T_5 = {in_src_1[7:0],in_src_1[7:0],in_src_1[7:0],in_src_1[7:0],in_src_1[7:0]
    ,in_src_1[7:0],in_src_1[7:0],in_src_1[7:0],_io_dcache_req_bits_amo_data_T_4}; // @[Cat.scala 31:58]
  wire [127:0] _io_dcache_req_bits_amo_data_T_9 = {in_src_1[15:0],in_src_1[15:0],in_src_1[15:0],in_src_1[15:0],in_src_1[
    15:0],in_src_1[15:0],in_src_1[15:0],in_src_1[15:0]}; // @[Cat.scala 31:58]
  wire [127:0] _io_dcache_req_bits_amo_data_T_12 = {in_src_1[31:0],in_src_1[31:0],in_src_1[31:0],in_src_1[31:0]}; // @[Cat.scala 31:58]
  wire [127:0] _io_dcache_req_bits_amo_data_T_14 = {in_src_1,in_src_1}; // @[Cat.scala 31:58]
  wire [127:0] _io_dcache_req_bits_amo_data_T_19 = _addrAligned_T_7 ? _io_dcache_req_bits_amo_data_T_5 : 128'h0; // @[Mux.scala 27:73]
  wire [127:0] _io_dcache_req_bits_amo_data_T_20 = _addrAligned_T_8 ? _io_dcache_req_bits_amo_data_T_9 : 128'h0; // @[Mux.scala 27:73]
  wire [127:0] _io_dcache_req_bits_amo_data_T_21 = _addrAligned_T_9 ? _io_dcache_req_bits_amo_data_T_12 : 128'h0; // @[Mux.scala 27:73]
  wire [127:0] _io_dcache_req_bits_amo_data_T_22 = _addrAligned_T_10 ? _io_dcache_req_bits_amo_data_T_14 : 128'h0; // @[Mux.scala 27:73]
  wire [127:0] _io_dcache_req_bits_amo_data_T_23 = _io_dcache_req_bits_amo_data_T_19 | _io_dcache_req_bits_amo_data_T_20
    ; // @[Mux.scala 27:73]
  wire [127:0] _io_dcache_req_bits_amo_data_T_24 = _io_dcache_req_bits_amo_data_T_23 | _io_dcache_req_bits_amo_data_T_21
    ; // @[Mux.scala 27:73]
  wire [127:0] _io_dcache_req_bits_amo_data_T_25 = _io_dcache_req_bits_amo_data_T_24 | _io_dcache_req_bits_amo_data_T_22
    ; // @[Mux.scala 27:73]
  wire [1:0] _io_dcache_req_bits_amo_mask_T_6 = _addrAligned_T_8 ? 2'h3 : 2'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_amo_mask_T_7 = _addrAligned_T_9 ? 4'hf : 4'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_dcache_req_bits_amo_mask_T_8 = _addrAligned_T_10 ? 8'hff : 8'h0; // @[Mux.scala 27:73]
  wire [1:0] _GEN_422 = {{1'd0}, _addrAligned_T_7}; // @[Mux.scala 27:73]
  wire [1:0] _io_dcache_req_bits_amo_mask_T_9 = _GEN_422 | _io_dcache_req_bits_amo_mask_T_6; // @[Mux.scala 27:73]
  wire [3:0] _GEN_423 = {{2'd0}, _io_dcache_req_bits_amo_mask_T_9}; // @[Mux.scala 27:73]
  wire [3:0] _io_dcache_req_bits_amo_mask_T_10 = _GEN_423 | _io_dcache_req_bits_amo_mask_T_7; // @[Mux.scala 27:73]
  wire [7:0] _GEN_424 = {{4'd0}, _io_dcache_req_bits_amo_mask_T_10}; // @[Mux.scala 27:73]
  wire [7:0] _io_dcache_req_bits_amo_mask_T_11 = _GEN_424 | _io_dcache_req_bits_amo_mask_T_8; // @[Mux.scala 27:73]
  wire [14:0] _GEN_0 = {{7'd0}, _io_dcache_req_bits_amo_mask_T_11}; // @[MemCommon.scala 39:8]
  wire [14:0] _io_dcache_req_bits_amo_mask_T_13 = _GEN_0 << paddr[2:0]; // @[MemCommon.scala 39:8]
  wire  _io_dcache_req_valid_T = io_dcache_req_bits_cmd == 5'h6; // @[AtomicsUnit.scala 252:30]
  wire  _io_dcache_req_valid_T_1 = ~io_dcache_block_lr; // @[AtomicsUnit.scala 253:7]
  wire  _io_dcache_req_valid_T_2 = _io_dcache_req_valid_T ? _io_dcache_req_valid_T_1 : data_valid; // @[AtomicsUnit.scala 251:31]
  wire  _T_16 = io_dcache_req_ready & io_dcache_req_valid; // @[Decoupled.scala 50:35]
  wire [2:0] _GEN_283 = _T_16 ? 3'h5 : _GEN_282; // @[AtomicsUnit.scala 257:29 258:13]
  wire [2:0] _GEN_297 = state == 3'h4 ? _GEN_283 : _GEN_282; // @[AtomicsUnit.scala 212:32]
  reg [63:0] dcache_resp_data; // @[AtomicsUnit.scala 266:30]
  reg [3:0] dcache_resp_id; // @[AtomicsUnit.scala 267:30]
  reg  dcache_resp_error; // @[AtomicsUnit.scala 268:30]
  wire [2:0] _GEN_302 = io_dcache_resp_bits_replay ? 3'h4 : _GEN_297; // @[AtomicsUnit.scala 282:42 283:17]
  wire [2:0] _GEN_303 = io_dcache_resp_bits_miss ? _GEN_302 : 3'h6; // @[AtomicsUnit.scala 281:38 289:15]
  wire  _rdataSel_T_9 = 3'h0 == paddr[2:0]; // @[LookupTree.scala 24:34]
  wire  _rdataSel_T_10 = 3'h1 == paddr[2:0]; // @[LookupTree.scala 24:34]
  wire  _rdataSel_T_11 = 3'h2 == paddr[2:0]; // @[LookupTree.scala 24:34]
  wire  _rdataSel_T_12 = 3'h3 == paddr[2:0]; // @[LookupTree.scala 24:34]
  wire  _rdataSel_T_13 = 3'h4 == paddr[2:0]; // @[LookupTree.scala 24:34]
  wire  _rdataSel_T_14 = 3'h5 == paddr[2:0]; // @[LookupTree.scala 24:34]
  wire  _rdataSel_T_15 = 3'h6 == paddr[2:0]; // @[LookupTree.scala 24:34]
  wire  _rdataSel_T_16 = 3'h7 == paddr[2:0]; // @[LookupTree.scala 24:34]
  wire [63:0] _rdataSel_T_17 = _rdataSel_T_9 ? dcache_resp_data : 64'h0; // @[Mux.scala 27:73]
  wire [55:0] _rdataSel_T_18 = _rdataSel_T_10 ? dcache_resp_data[63:8] : 56'h0; // @[Mux.scala 27:73]
  wire [47:0] _rdataSel_T_19 = _rdataSel_T_11 ? dcache_resp_data[63:16] : 48'h0; // @[Mux.scala 27:73]
  wire [39:0] _rdataSel_T_20 = _rdataSel_T_12 ? dcache_resp_data[63:24] : 40'h0; // @[Mux.scala 27:73]
  wire [31:0] _rdataSel_T_21 = _rdataSel_T_13 ? dcache_resp_data[63:32] : 32'h0; // @[Mux.scala 27:73]
  wire [23:0] _rdataSel_T_22 = _rdataSel_T_14 ? dcache_resp_data[63:40] : 24'h0; // @[Mux.scala 27:73]
  wire [15:0] _rdataSel_T_23 = _rdataSel_T_15 ? dcache_resp_data[63:48] : 16'h0; // @[Mux.scala 27:73]
  wire [7:0] _rdataSel_T_24 = _rdataSel_T_16 ? dcache_resp_data[63:56] : 8'h0; // @[Mux.scala 27:73]
  wire [63:0] _GEN_425 = {{8'd0}, _rdataSel_T_18}; // @[Mux.scala 27:73]
  wire [63:0] _rdataSel_T_25 = _rdataSel_T_17 | _GEN_425; // @[Mux.scala 27:73]
  wire [63:0] _GEN_426 = {{16'd0}, _rdataSel_T_19}; // @[Mux.scala 27:73]
  wire [63:0] _rdataSel_T_26 = _rdataSel_T_25 | _GEN_426; // @[Mux.scala 27:73]
  wire [63:0] _GEN_427 = {{24'd0}, _rdataSel_T_20}; // @[Mux.scala 27:73]
  wire [63:0] _rdataSel_T_27 = _rdataSel_T_26 | _GEN_427; // @[Mux.scala 27:73]
  wire [63:0] _GEN_428 = {{32'd0}, _rdataSel_T_21}; // @[Mux.scala 27:73]
  wire [63:0] _rdataSel_T_28 = _rdataSel_T_27 | _GEN_428; // @[Mux.scala 27:73]
  wire [63:0] _GEN_429 = {{40'd0}, _rdataSel_T_22}; // @[Mux.scala 27:73]
  wire [63:0] _rdataSel_T_29 = _rdataSel_T_28 | _GEN_429; // @[Mux.scala 27:73]
  wire [63:0] _GEN_430 = {{48'd0}, _rdataSel_T_23}; // @[Mux.scala 27:73]
  wire [63:0] _rdataSel_T_30 = _rdataSel_T_29 | _GEN_430; // @[Mux.scala 27:73]
  wire [63:0] _GEN_431 = {{56'd0}, _rdataSel_T_24}; // @[Mux.scala 27:73]
  wire [63:0] rdataSel = _rdataSel_T_30 | _GEN_431; // @[Mux.scala 27:73]
  wire  resp_data_wire_signBit = rdataSel[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _resp_data_wire_T_2 = resp_data_wire_signBit ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _resp_data_wire_T_3 = {_resp_data_wire_T_2,rdataSel[31:0]}; // @[Cat.scala 31:58]
  wire [63:0] _resp_data_wire_T_82 = _io_dcache_req_bits_cmd_T ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_83 = _io_dcache_req_bits_cmd_T_1 ? dcache_resp_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_84 = _io_dcache_req_bits_cmd_T_2 ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_85 = _io_dcache_req_bits_cmd_T_3 ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_86 = _io_dcache_req_bits_cmd_T_4 ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_87 = _io_dcache_req_bits_cmd_T_5 ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_88 = _io_dcache_req_bits_cmd_T_6 ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_89 = _io_dcache_req_bits_cmd_T_7 ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_90 = _io_dcache_req_bits_cmd_T_8 ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_91 = _io_dcache_req_bits_cmd_T_9 ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_92 = _io_dcache_req_bits_cmd_T_10 ? _resp_data_wire_T_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_93 = _io_dcache_req_bits_cmd_T_11 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_94 = _io_dcache_req_bits_cmd_T_12 ? dcache_resp_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_95 = _io_dcache_req_bits_cmd_T_13 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_96 = _io_dcache_req_bits_cmd_T_14 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_97 = _io_dcache_req_bits_cmd_T_15 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_98 = _io_dcache_req_bits_cmd_T_16 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_99 = _io_dcache_req_bits_cmd_T_17 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_100 = _io_dcache_req_bits_cmd_T_18 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_101 = _io_dcache_req_bits_cmd_T_19 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_102 = _io_dcache_req_bits_cmd_T_20 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_103 = _io_dcache_req_bits_cmd_T_21 ? rdataSel : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_104 = _resp_data_wire_T_82 | _resp_data_wire_T_83; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_105 = _resp_data_wire_T_104 | _resp_data_wire_T_84; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_106 = _resp_data_wire_T_105 | _resp_data_wire_T_85; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_107 = _resp_data_wire_T_106 | _resp_data_wire_T_86; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_108 = _resp_data_wire_T_107 | _resp_data_wire_T_87; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_109 = _resp_data_wire_T_108 | _resp_data_wire_T_88; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_110 = _resp_data_wire_T_109 | _resp_data_wire_T_89; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_111 = _resp_data_wire_T_110 | _resp_data_wire_T_90; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_112 = _resp_data_wire_T_111 | _resp_data_wire_T_91; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_113 = _resp_data_wire_T_112 | _resp_data_wire_T_92; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_114 = _resp_data_wire_T_113 | _resp_data_wire_T_93; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_115 = _resp_data_wire_T_114 | _resp_data_wire_T_94; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_116 = _resp_data_wire_T_115 | _resp_data_wire_T_95; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_117 = _resp_data_wire_T_116 | _resp_data_wire_T_96; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_118 = _resp_data_wire_T_117 | _resp_data_wire_T_97; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_119 = _resp_data_wire_T_118 | _resp_data_wire_T_98; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_120 = _resp_data_wire_T_119 | _resp_data_wire_T_99; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_121 = _resp_data_wire_T_120 | _resp_data_wire_T_100; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_122 = _resp_data_wire_T_121 | _resp_data_wire_T_101; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_123 = _resp_data_wire_T_122 | _resp_data_wire_T_102; // @[Mux.scala 27:73]
  wire [63:0] _resp_data_wire_T_124 = _resp_data_wire_T_123 | _resp_data_wire_T_103; // @[Mux.scala 27:73]
  wire [3:0] _GEN_317 = state == 3'h6 ? dcache_resp_id : {{3'd0}, is_lrsc_valid}; // @[AtomicsUnit.scala 294:39 295:19 69:26]
  wire  _GEN_323 = state == 3'h6 | _GEN_277; // @[AtomicsUnit.scala 294:39 342:15]
  wire  _T_28 = state == 3'h7; // @[AtomicsUnit.scala 346:18]
  reg [1:0] tdata_0_matchType; // @[AtomicsUnit.scala 370:18]
  reg  tdata_0_select; // @[AtomicsUnit.scala 370:18]
  reg  tdata_0_chain; // @[AtomicsUnit.scala 370:18]
  reg [63:0] tdata_0_tdata2; // @[AtomicsUnit.scala 370:18]
  reg [1:0] tdata_1_matchType; // @[AtomicsUnit.scala 370:18]
  reg  tdata_1_select; // @[AtomicsUnit.scala 370:18]
  reg [63:0] tdata_1_tdata2; // @[AtomicsUnit.scala 370:18]
  reg [1:0] tdata_2_matchType; // @[AtomicsUnit.scala 370:18]
  reg  tdata_2_select; // @[AtomicsUnit.scala 370:18]
  reg  tdata_2_chain; // @[AtomicsUnit.scala 370:18]
  reg [63:0] tdata_2_tdata2; // @[AtomicsUnit.scala 370:18]
  reg [1:0] tdata_3_matchType; // @[AtomicsUnit.scala 370:18]
  reg  tdata_3_select; // @[AtomicsUnit.scala 370:18]
  reg [63:0] tdata_3_tdata2; // @[AtomicsUnit.scala 370:18]
  reg [1:0] tdata_4_matchType; // @[AtomicsUnit.scala 370:18]
  reg  tdata_4_select; // @[AtomicsUnit.scala 370:18]
  reg [63:0] tdata_4_tdata2; // @[AtomicsUnit.scala 370:18]
  reg [1:0] tdata_5_matchType; // @[AtomicsUnit.scala 370:18]
  reg  tdata_5_select; // @[AtomicsUnit.scala 370:18]
  reg [63:0] tdata_5_tdata2; // @[AtomicsUnit.scala 370:18]
  reg  tEnable_0; // @[AtomicsUnit.scala 371:24]
  reg  tEnable_1; // @[AtomicsUnit.scala 371:24]
  reg  tEnable_2; // @[AtomicsUnit.scala 371:24]
  reg  tEnable_3; // @[AtomicsUnit.scala 371:24]
  reg  tEnable_4; // @[AtomicsUnit.scala 371:24]
  reg  tEnable_5; // @[AtomicsUnit.scala 371:24]
  reg  backendTriggerHitReg_0; // @[AtomicsUnit.scala 380:33]
  reg  backendTriggerHitReg_1; // @[AtomicsUnit.scala 380:33]
  reg  backendTriggerHitReg_2; // @[AtomicsUnit.scala 380:33]
  reg  backendTriggerHitReg_3; // @[AtomicsUnit.scala 380:33]
  reg  backendTriggerHitReg_4; // @[AtomicsUnit.scala 380:33]
  reg  backendTriggerHitReg_5; // @[AtomicsUnit.scala 380:33]
  wire  store_hit_0_equal = in_src_0 == tdata_0_tdata2; // @[Trigger.scala 27:24]
  wire  store_hit_0_greater = in_src_0 >= tdata_0_tdata2; // @[Trigger.scala 28:26]
  wire  store_hit_0_less = in_src_0 <= tdata_0_tdata2; // @[Trigger.scala 29:23]
  wire  _store_hit_0_res_T_3 = 2'h2 == tdata_0_matchType ? store_hit_0_greater : 2'h0 == tdata_0_matchType &
    store_hit_0_equal; // @[Mux.scala 81:58]
  wire  store_hit_0_res = 2'h3 == tdata_0_matchType ? store_hit_0_less : _store_hit_0_res_T_3; // @[Mux.scala 81:58]
  wire  _store_hit_0_T_1 = store_hit_0_res & tEnable_0; // @[Trigger.scala 34:9]
  wire  store_hit_0 = ~tdata_0_select & _store_hit_0_T_1; // @[AtomicsUnit.scala 387:59]
  wire  store_hit_1_equal = in_src_0 == tdata_1_tdata2; // @[Trigger.scala 27:24]
  wire  store_hit_1_greater = in_src_0 >= tdata_1_tdata2; // @[Trigger.scala 28:26]
  wire  store_hit_1_less = in_src_0 <= tdata_1_tdata2; // @[Trigger.scala 29:23]
  wire  _store_hit_1_res_T_3 = 2'h2 == tdata_1_matchType ? store_hit_1_greater : 2'h0 == tdata_1_matchType &
    store_hit_1_equal; // @[Mux.scala 81:58]
  wire  store_hit_1_res = 2'h3 == tdata_1_matchType ? store_hit_1_less : _store_hit_1_res_T_3; // @[Mux.scala 81:58]
  wire  _store_hit_1_T_1 = store_hit_1_res & tEnable_1; // @[Trigger.scala 34:9]
  wire  store_hit_1 = ~tdata_1_select & _store_hit_1_T_1; // @[AtomicsUnit.scala 387:59]
  wire  store_hit_2_equal = in_src_0 == tdata_4_tdata2; // @[Trigger.scala 27:24]
  wire  store_hit_2_greater = in_src_0 >= tdata_4_tdata2; // @[Trigger.scala 28:26]
  wire  store_hit_2_less = in_src_0 <= tdata_4_tdata2; // @[Trigger.scala 29:23]
  wire  _store_hit_2_res_T_3 = 2'h2 == tdata_4_matchType ? store_hit_2_greater : 2'h0 == tdata_4_matchType &
    store_hit_2_equal; // @[Mux.scala 81:58]
  wire  store_hit_2_res = 2'h3 == tdata_4_matchType ? store_hit_2_less : _store_hit_2_res_T_3; // @[Mux.scala 81:58]
  wire  _store_hit_2_T_1 = store_hit_2_res & tEnable_4; // @[Trigger.scala 34:9]
  wire  store_hit_2 = ~tdata_4_select & _store_hit_2_T_1; // @[AtomicsUnit.scala 387:59]
  wire  _backendTriggerHitReg_0_T = store_hit_0 & store_hit_1; // @[AtomicsUnit.scala 397:47]
  wire  _GEN_400 = tdata_0_chain ? store_hit_0 & store_hit_1 : store_hit_0; // @[AtomicsUnit.scala 396:26 397:31 393:49]
  wire  _GEN_401 = tdata_0_chain ? _backendTriggerHitReg_0_T : store_hit_1; // @[AtomicsUnit.scala 396:26 398:31 393:49]
  wire  _GEN_402 = ~in_uop_cf_trigger_backendEn_0 ? 1'h0 : store_hit_2; // @[AtomicsUnit.scala 401:43 402:31 393:49]
  wire  addrHit_equal = in_src_0 == tdata_2_tdata2; // @[Trigger.scala 27:24]
  wire  addrHit_greater = in_src_0 >= tdata_2_tdata2; // @[Trigger.scala 28:26]
  wire  addrHit_less = in_src_0 <= tdata_2_tdata2; // @[Trigger.scala 29:23]
  wire  _addrHit_res_T_3 = 2'h2 == tdata_2_matchType ? addrHit_greater : 2'h0 == tdata_2_matchType & addrHit_equal; // @[Mux.scala 81:58]
  wire  addrHit_res = 2'h3 == tdata_2_matchType ? addrHit_less : _addrHit_res_T_3; // @[Mux.scala 81:58]
  wire  addrHit = addrHit_res & tEnable_2; // @[Trigger.scala 34:9]
  wire  load_hit_0 = addrHit & ~tdata_2_select; // @[AtomicsUnit.scala 415:30]
  wire  addrHit_equal_1 = in_src_0 == tdata_3_tdata2; // @[Trigger.scala 27:24]
  wire  addrHit_greater_1 = in_src_0 >= tdata_3_tdata2; // @[Trigger.scala 28:26]
  wire  addrHit_less_1 = in_src_0 <= tdata_3_tdata2; // @[Trigger.scala 29:23]
  wire  _addrHit_res_T_8 = 2'h2 == tdata_3_matchType ? addrHit_greater_1 : 2'h0 == tdata_3_matchType & addrHit_equal_1; // @[Mux.scala 81:58]
  wire  addrHit_res_1 = 2'h3 == tdata_3_matchType ? addrHit_less_1 : _addrHit_res_T_8; // @[Mux.scala 81:58]
  wire  addrHit_1 = addrHit_res_1 & tEnable_3; // @[Trigger.scala 34:9]
  wire  load_hit_1 = addrHit_1 & ~tdata_3_select; // @[AtomicsUnit.scala 415:30]
  wire  addrHit_equal_2 = in_src_0 == tdata_5_tdata2; // @[Trigger.scala 27:24]
  wire  addrHit_greater_2 = in_src_0 >= tdata_5_tdata2; // @[Trigger.scala 28:26]
  wire  addrHit_less_2 = in_src_0 <= tdata_5_tdata2; // @[Trigger.scala 29:23]
  wire  _addrHit_res_T_13 = 2'h2 == tdata_5_matchType ? addrHit_greater_2 : 2'h0 == tdata_5_matchType & addrHit_equal_2; // @[Mux.scala 81:58]
  wire  addrHit_res_2 = 2'h3 == tdata_5_matchType ? addrHit_less_2 : _addrHit_res_T_13; // @[Mux.scala 81:58]
  wire  addrHit_2 = addrHit_res_2 & tEnable_5; // @[Trigger.scala 34:9]
  wire  load_hit_2 = addrHit_2 & ~tdata_5_select; // @[AtomicsUnit.scala 415:30]
  wire  _backendTriggerHitReg_2_T = load_hit_0 & load_hit_1; // @[AtomicsUnit.scala 419:46]
  wire  _GEN_403 = tdata_2_chain ? load_hit_0 & load_hit_1 : load_hit_0; // @[AtomicsUnit.scala 418:26 419:31 416:48]
  wire  _GEN_404 = tdata_2_chain ? _backendTriggerHitReg_2_T : load_hit_1; // @[AtomicsUnit.scala 418:26 420:31 416:48]
  wire  _GEN_405 = ~in_uop_cf_trigger_backendEn_1 ? 1'h0 : load_hit_2; // @[AtomicsUnit.scala 422:43 423:31 416:48]
  wire  _difftest_io_valid_T_3 = io_out_bits_uop_ctrl_fuOpType == 7'h7 | io_out_bits_uop_ctrl_fuOpType == 7'h6; // @[AtomicsUnit.scala 461:45]
`ifndef SYNTHESIS
  DifftestLrScEvent difftest ( // @[AtomicsUnit.scala 457:26]
    .io_clock(difftest_io_clock),
    .io_coreid(difftest_io_coreid),
    .io_valid(difftest_io_valid),
    .io_success(difftest_io_success)
  );
`endif
  assign io_in_ready = state == 3'h0; // @[AtomicsUnit.scala 98:15]
  assign io_out_valid = out_valid; // @[AtomicsUnit.scala 345:16]
  assign io_out_bits_uop_cf_exceptionVec_4 = exceptionVec_4; // @[AtomicsUnit.scala 349:35]
  assign io_out_bits_uop_cf_exceptionVec_5 = exceptionVec_5; // @[AtomicsUnit.scala 349:35]
  assign io_out_bits_uop_cf_exceptionVec_6 = exceptionVec_6; // @[AtomicsUnit.scala 349:35]
  assign io_out_bits_uop_cf_exceptionVec_7 = exceptionVec_7; // @[AtomicsUnit.scala 349:35]
  assign io_out_bits_uop_cf_exceptionVec_13 = exceptionVec_13; // @[AtomicsUnit.scala 349:35]
  assign io_out_bits_uop_cf_exceptionVec_15 = exceptionVec_15; // @[AtomicsUnit.scala 349:35]
  assign io_out_bits_uop_cf_trigger_backendEn_0 = in_uop_cf_trigger_backendEn_0; // @[AtomicsUnit.scala 348:19]
  assign io_out_bits_uop_cf_trigger_backendEn_1 = in_uop_cf_trigger_backendEn_1; // @[AtomicsUnit.scala 348:19]
  assign io_out_bits_uop_cf_trigger_backendHit_0 = isLr ? 1'h0 : backendTriggerHitReg_0; // @[AtomicsUnit.scala 431:13 430:41 438:46]
  assign io_out_bits_uop_cf_trigger_backendHit_1 = isLr ? 1'h0 : backendTriggerHitReg_1; // @[AtomicsUnit.scala 431:13 430:41 439:46]
  assign io_out_bits_uop_cf_trigger_backendHit_2 = isLr & backendTriggerHitReg_2; // @[AtomicsUnit.scala 431:13 430:41 433:46]
  assign io_out_bits_uop_cf_trigger_backendHit_3 = isLr & backendTriggerHitReg_3; // @[AtomicsUnit.scala 431:13 430:41 434:46]
  assign io_out_bits_uop_cf_trigger_backendHit_4 = isLr ? 1'h0 : backendTriggerHitReg_4; // @[AtomicsUnit.scala 431:13 430:41 440:46]
  assign io_out_bits_uop_cf_trigger_backendHit_5 = isLr & backendTriggerHitReg_5; // @[AtomicsUnit.scala 431:13 430:41 435:46]
  assign io_out_bits_uop_ctrl_fuOpType = in_uop_ctrl_fuOpType; // @[AtomicsUnit.scala 348:19]
  assign io_out_bits_uop_ctrl_rfWen = in_uop_ctrl_rfWen; // @[AtomicsUnit.scala 348:19]
  assign io_out_bits_uop_ctrl_fpWen = in_uop_ctrl_fpWen; // @[AtomicsUnit.scala 348:19]
  assign io_out_bits_uop_pdest = in_uop_pdest; // @[AtomicsUnit.scala 348:19]
  assign io_out_bits_uop_robIdx_flag = in_uop_robIdx_flag; // @[AtomicsUnit.scala 348:19]
  assign io_out_bits_uop_robIdx_value = in_uop_robIdx_value; // @[AtomicsUnit.scala 348:19]
  assign io_out_bits_uop_lqIdx_flag = in_uop_lqIdx_flag; // @[AtomicsUnit.scala 348:19]
  assign io_out_bits_uop_lqIdx_value = in_uop_lqIdx_value; // @[AtomicsUnit.scala 348:19]
  assign io_out_bits_data = resp_data; // @[AtomicsUnit.scala 350:20]
  assign io_out_bits_debug_isMMIO = is_mmio; // @[AtomicsUnit.scala 352:28]
  assign io_dcache_req_valid = state == 3'h4 & _io_dcache_req_valid_T_2; // @[AtomicsUnit.scala 212:32 251:25 86:24]
  assign io_dcache_req_bits_cmd = {{1'd0}, _io_dcache_req_bits_cmd_T_64};
  assign io_dcache_req_bits_vaddr = _io_dcache_req_bits_vaddr_T_1[38:0];
  assign io_dcache_req_bits_addr = {paddr[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  assign io_dcache_req_bits_word_idx = paddr[5:3]; // @[L1Cache.scala 91:34]
  assign io_dcache_req_bits_amo_data = _io_dcache_req_bits_amo_data_T_25[63:0];
  assign io_dcache_req_bits_amo_mask = _io_dcache_req_bits_amo_mask_T_13[7:0];
  assign io_dtlb_req_valid = state == 3'h1; // @[AtomicsUnit.scala 128:15]
  assign io_dtlb_req_bits_vaddr = in_src_0[38:0];
  assign io_dtlb_req_bits_cmd = isLr ? 3'h4 : 3'h5; // @[AtomicsUnit.scala 134:35]
  assign io_dtlb_resp_ready = 1'h1; // @[AtomicsUnit.scala 128:48 133:29 92:24]
  assign io_flush_sbuffer_valid = state == 3'h1 & _io_flush_sbuffer_valid_T; // @[AtomicsUnit.scala 128:48 140:28 94:26]
  assign io_feedbackSlow_valid = io_feedbackSlow_valid_REG_1; // @[AtomicsUnit.scala 119:31]
  assign io_feedbackSlow_bits_rsIdx = io_feedbackSlow_bits_rsIdx_r; // @[AtomicsUnit.scala 121:31]
  assign io_exceptionAddr_valid = atom_override_xtval; // @[AtomicsUnit.scala 80:26]
  assign io_exceptionAddr_bits = in_src_0[38:0]; // @[AtomicsUnit.scala 81:26]
  assign difftest_io_clock = clock; // @[AtomicsUnit.scala 458:23]
  assign difftest_io_coreid = io_hartId; // @[AtomicsUnit.scala 459:24]
  assign difftest_io_valid = io_out_valid & _difftest_io_valid_T_3; // @[AtomicsUnit.scala 460:38]
  assign difftest_io_success = is_lrsc_valid; // @[AtomicsUnit.scala 462:25]
  always @(posedge clock) begin
    if (state == 3'h0) begin // @[AtomicsUnit.scala 98:30]
      if (_T_1) begin // @[AtomicsUnit.scala 100:23]
        in_uop_cf_trigger_backendEn_0 <= io_in_bits_uop_cf_trigger_backendEn_0; // @[AtomicsUnit.scala 101:10]
      end
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 98:30]
      if (_T_1) begin // @[AtomicsUnit.scala 100:23]
        in_uop_cf_trigger_backendEn_1 <= io_in_bits_uop_cf_trigger_backendEn_1; // @[AtomicsUnit.scala 101:10]
      end
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 98:30]
      if (_T_1) begin // @[AtomicsUnit.scala 100:23]
        in_uop_ctrl_fuOpType <= io_in_bits_uop_ctrl_fuOpType; // @[AtomicsUnit.scala 101:10]
      end
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 98:30]
      if (_T_1) begin // @[AtomicsUnit.scala 100:23]
        in_uop_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[AtomicsUnit.scala 101:10]
      end
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 98:30]
      if (_T_1) begin // @[AtomicsUnit.scala 100:23]
        in_uop_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[AtomicsUnit.scala 101:10]
      end
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 98:30]
      if (_T_1) begin // @[AtomicsUnit.scala 100:23]
        in_uop_pdest <= io_in_bits_uop_pdest; // @[AtomicsUnit.scala 101:10]
      end
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 98:30]
      if (_T_1) begin // @[AtomicsUnit.scala 100:23]
        in_uop_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[AtomicsUnit.scala 101:10]
      end
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 98:30]
      if (_T_1) begin // @[AtomicsUnit.scala 100:23]
        in_uop_robIdx_value <= io_in_bits_uop_robIdx_value; // @[AtomicsUnit.scala 101:10]
      end
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 98:30]
      if (_T_1) begin // @[AtomicsUnit.scala 100:23]
        in_uop_lqIdx_flag <= io_in_bits_uop_lqIdx_flag; // @[AtomicsUnit.scala 101:10]
      end
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 98:30]
      if (_T_1) begin // @[AtomicsUnit.scala 100:23]
        in_uop_lqIdx_value <= io_in_bits_uop_lqIdx_value; // @[AtomicsUnit.scala 101:10]
      end
    end
    if (state == 3'h0) begin // @[AtomicsUnit.scala 98:30]
      if (_T_1) begin // @[AtomicsUnit.scala 100:23]
        in_src_0 <= io_in_bits_src_0; // @[AtomicsUnit.scala 101:10]
      end
    end
    if (io_storeDataIn_valid) begin // @[AtomicsUnit.scala 108:30]
      in_src_1 <= io_storeDataIn_bits_data; // @[AtomicsUnit.scala 109:15]
    end
    if (state == 3'h1) begin // @[AtomicsUnit.scala 128:48]
      if (_T_8 & have_sent_first_tlb_req) begin // @[AtomicsUnit.scala 147:55]
        paddr <= io_dtlb_resp_bits_paddr_0; // @[AtomicsUnit.scala 148:13]
      end
    end
    if (state == 3'h2) begin // @[AtomicsUnit.scala 180:25]
      if (static_pm_valid) begin // @[AtomicsUnit.scala 182:28]
        is_mmio <= static_pm_bits; // @[AtomicsUnit.scala 186:16]
      end else begin
        is_mmio <= io_pmpResp_mmio;
      end
    end
    if (state == 3'h1) begin // @[AtomicsUnit.scala 128:48]
      if (_T_8 & have_sent_first_tlb_req) begin // @[AtomicsUnit.scala 147:55]
        static_pm_valid <= io_dtlb_resp_bits_static_pm_valid; // @[AtomicsUnit.scala 162:17]
      end
    end
    if (state == 3'h1) begin // @[AtomicsUnit.scala 128:48]
      if (_T_8 & have_sent_first_tlb_req) begin // @[AtomicsUnit.scala 147:55]
        static_pm_bits <= io_dtlb_resp_bits_static_pm_bits; // @[AtomicsUnit.scala 162:17]
      end
    end
    if (state == 3'h6) begin // @[AtomicsUnit.scala 294:39]
      if (state == 3'h6) begin // @[AtomicsUnit.scala 294:39]
        resp_data <= _resp_data_wire_T_124; // @[AtomicsUnit.scala 307:20]
      end else begin
        resp_data <= 64'h0;
      end
    end
    is_lrsc_valid <= _GEN_317[0];
    io_feedbackSlow_valid_REG <= io_in_valid; // @[AtomicsUnit.scala 119:49]
    io_feedbackSlow_valid_REG_1 <= io_feedbackSlow_valid_REG; // @[AtomicsUnit.scala 119:41]
    if (io_in_valid) begin // @[Reg.scala 17:18]
      io_feedbackSlow_bits_rsIdx_r <= io_rsIdx; // @[Reg.scala 17:22]
    end
    if (state == 3'h5) begin // @[AtomicsUnit.scala 270:33]
      if (io_dcache_resp_valid) begin // @[AtomicsUnit.scala 280:33]
        if (!(io_dcache_resp_bits_miss)) begin // @[AtomicsUnit.scala 281:38]
          dcache_resp_data <= io_dcache_resp_bits_data; // @[AtomicsUnit.scala 286:26]
        end
      end
    end
    if (state == 3'h5) begin // @[AtomicsUnit.scala 270:33]
      if (io_dcache_resp_valid) begin // @[AtomicsUnit.scala 280:33]
        if (!(io_dcache_resp_bits_miss)) begin // @[AtomicsUnit.scala 281:38]
          dcache_resp_id <= io_dcache_resp_bits_id; // @[AtomicsUnit.scala 287:24]
        end
      end
    end
    if (state == 3'h5) begin // @[AtomicsUnit.scala 270:33]
      if (io_dcache_resp_valid) begin // @[AtomicsUnit.scala 280:33]
        if (!(io_dcache_resp_bits_miss)) begin // @[AtomicsUnit.scala 281:38]
          dcache_resp_error <= io_dcache_resp_bits_error; // @[AtomicsUnit.scala 288:27]
        end
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h0 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_0_matchType <= io_csrCtrl_mem_trigger_t_bits_tdata_matchType; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h0 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_0_select <= io_csrCtrl_mem_trigger_t_bits_tdata_select; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h0 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_0_chain <= io_csrCtrl_mem_trigger_t_bits_tdata_chain; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h0 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_0_tdata2 <= io_csrCtrl_mem_trigger_t_bits_tdata_tdata2; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h1 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_1_matchType <= io_csrCtrl_mem_trigger_t_bits_tdata_matchType; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h1 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_1_select <= io_csrCtrl_mem_trigger_t_bits_tdata_select; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h1 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_1_tdata2 <= io_csrCtrl_mem_trigger_t_bits_tdata_tdata2; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h2 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_2_matchType <= io_csrCtrl_mem_trigger_t_bits_tdata_matchType; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h2 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_2_select <= io_csrCtrl_mem_trigger_t_bits_tdata_select; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h2 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_2_chain <= io_csrCtrl_mem_trigger_t_bits_tdata_chain; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h2 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_2_tdata2 <= io_csrCtrl_mem_trigger_t_bits_tdata_tdata2; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h3 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_3_matchType <= io_csrCtrl_mem_trigger_t_bits_tdata_matchType; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h3 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_3_select <= io_csrCtrl_mem_trigger_t_bits_tdata_select; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h3 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_3_tdata2 <= io_csrCtrl_mem_trigger_t_bits_tdata_tdata2; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h4 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_4_matchType <= io_csrCtrl_mem_trigger_t_bits_tdata_matchType; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h4 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_4_select <= io_csrCtrl_mem_trigger_t_bits_tdata_select; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h4 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_4_tdata2 <= io_csrCtrl_mem_trigger_t_bits_tdata_tdata2; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h5 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_5_matchType <= io_csrCtrl_mem_trigger_t_bits_tdata_matchType; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h5 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_5_select <= io_csrCtrl_mem_trigger_t_bits_tdata_select; // @[AtomicsUnit.scala 375:44]
      end
    end
    if (io_csrCtrl_mem_trigger_t_valid) begin // @[AtomicsUnit.scala 374:37]
      if (3'h5 == io_csrCtrl_mem_trigger_t_bits_addr) begin // @[AtomicsUnit.scala 375:44]
        tdata_5_tdata2 <= io_csrCtrl_mem_trigger_t_bits_tdata_tdata2; // @[AtomicsUnit.scala 375:44]
      end
    end
    backendTriggerHitReg_0 <= _T_15 & _GEN_400; // @[AtomicsUnit.scala 381:24 383:30]
    backendTriggerHitReg_1 <= _T_15 & _GEN_401; // @[AtomicsUnit.scala 381:24 383:30]
    backendTriggerHitReg_2 <= _T_15 & _GEN_403; // @[AtomicsUnit.scala 381:24 383:30]
    backendTriggerHitReg_3 <= _T_15 & _GEN_404; // @[AtomicsUnit.scala 381:24 383:30]
    backendTriggerHitReg_4 <= _T_15 & _GEN_402; // @[AtomicsUnit.scala 381:24 383:30]
    backendTriggerHitReg_5 <= _T_15 & _GEN_405; // @[AtomicsUnit.scala 381:24 383:30]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AtomicsUnit.scala 354:22]
      state <= 3'h0; // @[AtomicsUnit.scala 356:11]
    end else if (io_out_valid) begin // @[AtomicsUnit.scala 294:39]
      state <= 3'h0; // @[AtomicsUnit.scala 341:11]
    end else if (state == 3'h6) begin // @[AtomicsUnit.scala 270:33]
      state <= 3'h7; // @[AtomicsUnit.scala 280:33]
    end else if (state == 3'h5) begin
      if (io_dcache_resp_valid) begin
        state <= _GEN_303;
      end else begin
        state <= _GEN_297;
      end
    end else begin
      state <= _GEN_297;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AtomicsUnit.scala 354:22]
      out_valid <= 1'h0; // @[AtomicsUnit.scala 357:15]
    end else if (io_out_valid) begin
      out_valid <= 1'h0;
    end else begin
      out_valid <= _GEN_323;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AtomicsUnit.scala 360:29]
      data_valid <= 1'h0; // @[AtomicsUnit.scala 361:16]
    end else if (_T_28) begin
      data_valid <= 1'h0;
    end else begin
      data_valid <= _GEN_228;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AtomicsUnit.scala 128:48]
      exceptionVec_4 <= 1'h0; // @[AtomicsUnit.scala 147:55 156:41 56:29]
    end else if (state == 3'h1) begin // @[AtomicsUnit.scala 56:29]
      if (_T_8 & have_sent_first_tlb_req) begin
        exceptionVec_4 <= ~addrAligned & isLr;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AtomicsUnit.scala 294:39]
      exceptionVec_5 <= 1'h0; // @[AtomicsUnit.scala 333:63 334:38]
    end else if (state == 3'h6) begin
      if (dcache_resp_error & io_csrCtrl_cache_error_enable) begin
        exceptionVec_5 <= isLr;
      end else begin
        exceptionVec_5 <= _GEN_279;
      end
    end else begin
      exceptionVec_5 <= _GEN_279;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AtomicsUnit.scala 128:48]
      exceptionVec_6 <= 1'h0; // @[AtomicsUnit.scala 147:55 157:41 56:29]
    end else if (state == 3'h1) begin // @[AtomicsUnit.scala 56:29]
      if (_T_8 & have_sent_first_tlb_req) begin
        exceptionVec_6 <= _exceptionVec_4_T & ~isLr;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AtomicsUnit.scala 294:39]
      exceptionVec_7 <= 1'h0; // @[AtomicsUnit.scala 333:63 335:38]
    end else if (state == 3'h6) begin
      if (dcache_resp_error & io_csrCtrl_cache_error_enable) begin
        exceptionVec_7 <= _exceptionVec_6_T_1;
      end else begin
        exceptionVec_7 <= _GEN_280;
      end
    end else begin
      exceptionVec_7 <= _GEN_280;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AtomicsUnit.scala 128:48]
      exceptionVec_13 <= 1'h0; // @[AtomicsUnit.scala 147:55 159:41 56:29]
    end else if (state == 3'h1) begin // @[AtomicsUnit.scala 56:29]
      if (_T_8 & have_sent_first_tlb_req) begin
        exceptionVec_13 <= io_dtlb_resp_bits_excp_0_pf_ld;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AtomicsUnit.scala 128:48]
      exceptionVec_15 <= 1'h0; // @[AtomicsUnit.scala 147:55 158:41 56:29]
    end else if (state == 3'h1) begin // @[AtomicsUnit.scala 56:29]
      if (_T_8 & have_sent_first_tlb_req) begin
        exceptionVec_15 <= io_dtlb_resp_bits_excp_0_pf_st;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AtomicsUnit.scala 364:28]
      atom_override_xtval <= 1'h0; // @[AtomicsUnit.scala 365:25]
    end else if (io_redirect_valid) begin // @[AtomicsUnit.scala 180:25]
      atom_override_xtval <= 1'h0;
    end else if (state == 3'h2) begin // @[AtomicsUnit.scala 128:48]
      atom_override_xtval <= _GEN_274; // @[AtomicsUnit.scala 147:55 57:36]
    end else if (state == 3'h1) begin // @[AtomicsUnit.scala 57:36]
      if (_T_8 & have_sent_first_tlb_req) begin
        atom_override_xtval <= _GEN_235;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AtomicsUnit.scala 128:48]
      have_sent_first_tlb_req <= 1'h0; // @[AtomicsUnit.scala 145:29]
    end else begin
      have_sent_first_tlb_req <= state == 3'h1 | _GEN_226;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AtomicsUnit.scala 373:{21,21}]
      tEnable_0 <= 1'h0;
    end else begin
      tEnable_0 <= io_csrCtrl_trigger_enable_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AtomicsUnit.scala 373:{21,21}]
      tEnable_1 <= 1'h0;
    end else begin
      tEnable_1 <= io_csrCtrl_trigger_enable_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AtomicsUnit.scala 373:{21,21}]
      tEnable_2 <= 1'h0;
    end else begin
      tEnable_2 <= io_csrCtrl_trigger_enable_7;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AtomicsUnit.scala 373:{21,21}]
      tEnable_3 <= 1'h0;
    end else begin
      tEnable_3 <= io_csrCtrl_trigger_enable_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AtomicsUnit.scala 373:{21,21}]
      tEnable_4 <= 1'h0;
    end else begin
      tEnable_4 <= io_csrCtrl_trigger_enable_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AtomicsUnit.scala 373:{21,21}]
      tEnable_5 <= 1'h0;
    end else begin
      tEnable_5 <= io_csrCtrl_trigger_enable_9;
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
  state = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  out_valid = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  data_valid = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  in_uop_cf_trigger_backendEn_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  in_uop_cf_trigger_backendEn_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  in_uop_ctrl_fuOpType = _RAND_5[6:0];
  _RAND_6 = {1{`RANDOM}};
  in_uop_ctrl_rfWen = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  in_uop_ctrl_fpWen = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  in_uop_pdest = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  in_uop_robIdx_flag = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  in_uop_robIdx_value = _RAND_10[4:0];
  _RAND_11 = {1{`RANDOM}};
  in_uop_lqIdx_flag = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  in_uop_lqIdx_value = _RAND_12[3:0];
  _RAND_13 = {2{`RANDOM}};
  in_src_0 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  in_src_1 = _RAND_14[63:0];
  _RAND_15 = {1{`RANDOM}};
  exceptionVec_4 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  exceptionVec_5 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  exceptionVec_6 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  exceptionVec_7 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  exceptionVec_13 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  exceptionVec_15 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  atom_override_xtval = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  have_sent_first_tlb_req = _RAND_22[0:0];
  _RAND_23 = {2{`RANDOM}};
  paddr = _RAND_23[35:0];
  _RAND_24 = {1{`RANDOM}};
  is_mmio = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  static_pm_valid = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  static_pm_bits = _RAND_26[0:0];
  _RAND_27 = {2{`RANDOM}};
  resp_data = _RAND_27[63:0];
  _RAND_28 = {1{`RANDOM}};
  is_lrsc_valid = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  io_feedbackSlow_valid_REG = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  io_feedbackSlow_valid_REG_1 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  io_feedbackSlow_bits_rsIdx_r = _RAND_31[3:0];
  _RAND_32 = {2{`RANDOM}};
  dcache_resp_data = _RAND_32[63:0];
  _RAND_33 = {1{`RANDOM}};
  dcache_resp_id = _RAND_33[3:0];
  _RAND_34 = {1{`RANDOM}};
  dcache_resp_error = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  tdata_0_matchType = _RAND_35[1:0];
  _RAND_36 = {1{`RANDOM}};
  tdata_0_select = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  tdata_0_chain = _RAND_37[0:0];
  _RAND_38 = {2{`RANDOM}};
  tdata_0_tdata2 = _RAND_38[63:0];
  _RAND_39 = {1{`RANDOM}};
  tdata_1_matchType = _RAND_39[1:0];
  _RAND_40 = {1{`RANDOM}};
  tdata_1_select = _RAND_40[0:0];
  _RAND_41 = {2{`RANDOM}};
  tdata_1_tdata2 = _RAND_41[63:0];
  _RAND_42 = {1{`RANDOM}};
  tdata_2_matchType = _RAND_42[1:0];
  _RAND_43 = {1{`RANDOM}};
  tdata_2_select = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  tdata_2_chain = _RAND_44[0:0];
  _RAND_45 = {2{`RANDOM}};
  tdata_2_tdata2 = _RAND_45[63:0];
  _RAND_46 = {1{`RANDOM}};
  tdata_3_matchType = _RAND_46[1:0];
  _RAND_47 = {1{`RANDOM}};
  tdata_3_select = _RAND_47[0:0];
  _RAND_48 = {2{`RANDOM}};
  tdata_3_tdata2 = _RAND_48[63:0];
  _RAND_49 = {1{`RANDOM}};
  tdata_4_matchType = _RAND_49[1:0];
  _RAND_50 = {1{`RANDOM}};
  tdata_4_select = _RAND_50[0:0];
  _RAND_51 = {2{`RANDOM}};
  tdata_4_tdata2 = _RAND_51[63:0];
  _RAND_52 = {1{`RANDOM}};
  tdata_5_matchType = _RAND_52[1:0];
  _RAND_53 = {1{`RANDOM}};
  tdata_5_select = _RAND_53[0:0];
  _RAND_54 = {2{`RANDOM}};
  tdata_5_tdata2 = _RAND_54[63:0];
  _RAND_55 = {1{`RANDOM}};
  tEnable_0 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  tEnable_1 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  tEnable_2 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  tEnable_3 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  tEnable_4 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  tEnable_5 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  backendTriggerHitReg_0 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  backendTriggerHitReg_1 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  backendTriggerHitReg_2 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  backendTriggerHitReg_3 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  backendTriggerHitReg_4 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  backendTriggerHitReg_5 = _RAND_66[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    state = 3'h0;
  end
  if (reset) begin
    out_valid = 1'h0;
  end
  if (reset) begin
    data_valid = 1'h0;
  end
  if (reset) begin
    exceptionVec_4 = 1'h0;
  end
  if (reset) begin
    exceptionVec_5 = 1'h0;
  end
  if (reset) begin
    exceptionVec_6 = 1'h0;
  end
  if (reset) begin
    exceptionVec_7 = 1'h0;
  end
  if (reset) begin
    exceptionVec_13 = 1'h0;
  end
  if (reset) begin
    exceptionVec_15 = 1'h0;
  end
  if (reset) begin
    atom_override_xtval = 1'h0;
  end
  if (reset) begin
    have_sent_first_tlb_req = 1'h0;
  end
  if (reset) begin
    tEnable_0 = 1'h0;
  end
  if (reset) begin
    tEnable_1 = 1'h0;
  end
  if (reset) begin
    tEnable_2 = 1'h0;
  end
  if (reset) begin
    tEnable_3 = 1'h0;
  end
  if (reset) begin
    tEnable_4 = 1'h0;
  end
  if (reset) begin
    tEnable_5 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

