module Jan15_XSCore(
  input          clock,
  input          reset,
  input          auto_memBlock_ptw_to_l2_buffer_out_a_ready,
  output         auto_memBlock_ptw_to_l2_buffer_out_a_valid,
  output [2:0]   auto_memBlock_ptw_to_l2_buffer_out_a_bits_opcode,
  output [2:0]   auto_memBlock_ptw_to_l2_buffer_out_a_bits_param,
  output [2:0]   auto_memBlock_ptw_to_l2_buffer_out_a_bits_size,
  output [2:0]   auto_memBlock_ptw_to_l2_buffer_out_a_bits_source,
  output [35:0]  auto_memBlock_ptw_to_l2_buffer_out_a_bits_address,
  output [3:0]   auto_memBlock_ptw_to_l2_buffer_out_a_bits_user_reqSource,
  output [31:0]  auto_memBlock_ptw_to_l2_buffer_out_a_bits_mask,
  output [255:0] auto_memBlock_ptw_to_l2_buffer_out_a_bits_data,
  output         auto_memBlock_ptw_to_l2_buffer_out_a_bits_corrupt,
  output         auto_memBlock_ptw_to_l2_buffer_out_d_ready,
  input          auto_memBlock_ptw_to_l2_buffer_out_d_valid,
  input  [2:0]   auto_memBlock_ptw_to_l2_buffer_out_d_bits_opcode,
  input  [2:0]   auto_memBlock_ptw_to_l2_buffer_out_d_bits_size,
  input  [2:0]   auto_memBlock_ptw_to_l2_buffer_out_d_bits_source,
  input  [255:0] auto_memBlock_ptw_to_l2_buffer_out_d_bits_data,
  input          auto_memBlock_uncache_client_out_a_ready,
  output         auto_memBlock_uncache_client_out_a_valid,
  output [2:0]   auto_memBlock_uncache_client_out_a_bits_opcode,
  output [2:0]   auto_memBlock_uncache_client_out_a_bits_size,
  output [1:0]   auto_memBlock_uncache_client_out_a_bits_source,
  output [35:0]  auto_memBlock_uncache_client_out_a_bits_address,
  output [7:0]   auto_memBlock_uncache_client_out_a_bits_mask,
  output [63:0]  auto_memBlock_uncache_client_out_a_bits_data,
  output         auto_memBlock_uncache_client_out_d_ready,
  input          auto_memBlock_uncache_client_out_d_valid,
  input  [2:0]   auto_memBlock_uncache_client_out_d_bits_opcode,
  input  [63:0]  auto_memBlock_uncache_client_out_d_bits_data,
  input          auto_memBlock_dcache_client_out_a_ready,
  output         auto_memBlock_dcache_client_out_a_valid,
  output [2:0]   auto_memBlock_dcache_client_out_a_bits_opcode,
  output [2:0]   auto_memBlock_dcache_client_out_a_bits_param,
  output [2:0]   auto_memBlock_dcache_client_out_a_bits_size,
  output [3:0]   auto_memBlock_dcache_client_out_a_bits_source,
  output [35:0]  auto_memBlock_dcache_client_out_a_bits_address,
  output [32:0]  auto_memBlock_dcache_client_out_a_bits_user_vaddr,
  output [3:0]   auto_memBlock_dcache_client_out_a_bits_user_reqSource,
  output         auto_memBlock_dcache_client_out_a_bits_user_needHint,
  output [31:0]  auto_memBlock_dcache_client_out_a_bits_mask,
  output         auto_memBlock_dcache_client_out_bready,
  input          auto_memBlock_dcache_client_out_bvalid,
  input  [1:0]   auto_memBlock_dcache_client_out_bparam,
  input  [35:0]  auto_memBlock_dcache_client_out_baddress,
  input  [255:0] auto_memBlock_dcache_client_out_bdata,
  input          auto_memBlock_dcache_client_out_c_ready,
  output         auto_memBlock_dcache_client_out_c_valid,
  output [2:0]   auto_memBlock_dcache_client_out_c_bits_opcode,
  output [2:0]   auto_memBlock_dcache_client_out_c_bits_param,
  output [2:0]   auto_memBlock_dcache_client_out_c_bits_size,
  output [3:0]   auto_memBlock_dcache_client_out_c_bits_source,
  output [35:0]  auto_memBlock_dcache_client_out_c_bits_address,
  output [255:0] auto_memBlock_dcache_client_out_c_bits_data,
  output         auto_memBlock_dcache_client_out_d_ready,
  input          auto_memBlock_dcache_client_out_d_valid,
  input  [2:0]   auto_memBlock_dcache_client_out_d_bits_opcode,
  input  [1:0]   auto_memBlock_dcache_client_out_d_bits_param,
  input  [2:0]   auto_memBlock_dcache_client_out_d_bits_size,
  input  [3:0]   auto_memBlock_dcache_client_out_d_bits_source,
  input  [8:0]   auto_memBlock_dcache_client_out_d_bits_sink,
  input          auto_memBlock_dcache_client_out_d_bits_denied,
  input  [255:0] auto_memBlock_dcache_client_out_d_bits_data,
  input          auto_memBlock_dcache_client_out_d_bits_corrupt,
  input          auto_memBlock_dcache_client_out_e_ready,
  output         auto_memBlock_dcache_client_out_e_valid,
  output [8:0]   auto_memBlock_dcache_client_out_e_bits_sink,
  input          auto_frontend_icache_client_out_a_ready,
  output         auto_frontend_icache_client_out_a_valid,
  output [2:0]   auto_frontend_icache_client_out_a_bits_opcode,
  output [2:0]   auto_frontend_icache_client_out_a_bits_size,
  output [1:0]   auto_frontend_icache_client_out_a_bits_source,
  output [35:0]  auto_frontend_icache_client_out_a_bits_address,
  output [3:0]   auto_frontend_icache_client_out_a_bits_user_reqSource,
  output [31:0]  auto_frontend_icache_client_out_a_bits_mask,
  input          auto_frontend_icache_client_out_d_valid,
  input  [2:0]   auto_frontend_icache_client_out_d_bits_opcode,
  input  [1:0]   auto_frontend_icache_client_out_d_bits_source,
  input  [255:0] auto_frontend_icache_client_out_d_bits_data,
  input          auto_frontend_icache_client_out_d_bits_corrupt,
  input          auto_frontend_instrUncache_client_out_a_ready,
  output         auto_frontend_instrUncache_client_out_a_valid,
  output [35:0]  auto_frontend_instrUncache_client_out_a_bits_address,
  output         auto_frontend_instrUncache_client_out_d_ready,
  input          auto_frontend_instrUncache_client_out_d_valid,
  input          auto_frontend_instrUncache_client_out_d_bits_source,
  input  [63:0]  auto_frontend_instrUncache_client_out_d_bits_data,
  input          auto_plic_int_sink_in_1_0,
  input          auto_plic_int_sink_in_0_0,
  input          auto_debug_int_sink_in_0,
  input          auto_clint_int_sink_in_0,
  input          auto_clint_int_sink_in_1,
  input  [63:0]  io_hartId,
  input  [35:0]  io_reset_vector,
  output         io_cpu_halt,
  output         io_beu_errors_icache_ecc_error_valid,
  output [35:0]  io_beu_errors_icache_ecc_error_bits,
  output         io_beu_errors_dcache_ecc_error_valid,
  output [35:0]  io_beu_errors_dcache_ecc_error_bits,
  input          io_l2_hint_valid,
  input  [1:0]   io_l2_hint_bits_sourceId,
  output         sourcePaddr_valid,
  output [35:0]  sourcePaddr_bits
);
  wire  frontend_clock; // @[XSCore.scala 138:28]
  wire  frontend_reset; // @[XSCore.scala 138:28]
  wire  frontend_auto_icache_client_out_a_ready; // @[XSCore.scala 138:28]
  wire  frontend_auto_icache_client_out_a_valid; // @[XSCore.scala 138:28]
  wire [2:0] frontend_auto_icache_client_out_a_bits_opcode; // @[XSCore.scala 138:28]
  wire [2:0] frontend_auto_icache_client_out_a_bits_size; // @[XSCore.scala 138:28]
  wire [1:0] frontend_auto_icache_client_out_a_bits_source; // @[XSCore.scala 138:28]
  wire [35:0] frontend_auto_icache_client_out_a_bits_address; // @[XSCore.scala 138:28]
  wire [3:0] frontend_auto_icache_client_out_a_bits_user_reqSource; // @[XSCore.scala 138:28]
  wire [31:0] frontend_auto_icache_client_out_a_bits_mask; // @[XSCore.scala 138:28]
  wire  frontend_auto_icache_client_out_d_valid; // @[XSCore.scala 138:28]
  wire [2:0] frontend_auto_icache_client_out_d_bits_opcode; // @[XSCore.scala 138:28]
  wire [1:0] frontend_auto_icache_client_out_d_bits_source; // @[XSCore.scala 138:28]
  wire [255:0] frontend_auto_icache_client_out_d_bits_data; // @[XSCore.scala 138:28]
  wire  frontend_auto_icache_client_out_d_bits_corrupt; // @[XSCore.scala 138:28]
  wire  frontend_auto_instrUncache_client_out_a_ready; // @[XSCore.scala 138:28]
  wire  frontend_auto_instrUncache_client_out_a_valid; // @[XSCore.scala 138:28]
  wire [35:0] frontend_auto_instrUncache_client_out_a_bits_address; // @[XSCore.scala 138:28]
  wire  frontend_auto_instrUncache_client_out_d_ready; // @[XSCore.scala 138:28]
  wire  frontend_auto_instrUncache_client_out_d_valid; // @[XSCore.scala 138:28]
  wire  frontend_auto_instrUncache_client_out_d_bits_source; // @[XSCore.scala 138:28]
  wire [63:0] frontend_auto_instrUncache_client_out_d_bits_data; // @[XSCore.scala 138:28]
  wire [35:0] frontend_io_reset_vector; // @[XSCore.scala 138:28]
  wire  frontend_io_fencei; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_req_0_ready; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_req_0_valid; // @[XSCore.scala 138:28]
  wire [26:0] frontend_io_ptw_req_0_bits_vpn; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_resp_valid; // @[XSCore.scala 138:28]
  wire [23:0] frontend_io_ptw_resp_bits_entry_tag; // @[XSCore.scala 138:28]
  wire [15:0] frontend_io_ptw_resp_bits_entry_asid; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_resp_bits_entry_perm_d; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_resp_bits_entry_perm_a; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_resp_bits_entry_perm_g; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_resp_bits_entry_perm_u; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_resp_bits_entry_perm_x; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_resp_bits_entry_perm_w; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_resp_bits_entry_perm_r; // @[XSCore.scala 138:28]
  wire [1:0] frontend_io_ptw_resp_bits_entry_level; // @[XSCore.scala 138:28]
  wire [20:0] frontend_io_ptw_resp_bits_entry_ppn; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_ptw_resp_bits_ppn_low_0; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_ptw_resp_bits_ppn_low_1; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_ptw_resp_bits_ppn_low_2; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_ptw_resp_bits_ppn_low_3; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_ptw_resp_bits_ppn_low_4; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_ptw_resp_bits_ppn_low_5; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_ptw_resp_bits_ppn_low_6; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_ptw_resp_bits_ppn_low_7; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_resp_bits_valididx_0; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_resp_bits_valididx_1; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_resp_bits_valididx_2; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_resp_bits_valididx_3; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_resp_bits_valididx_4; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_resp_bits_valididx_5; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_resp_bits_valididx_6; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_resp_bits_valididx_7; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_resp_bits_pf; // @[XSCore.scala 138:28]
  wire  frontend_io_ptw_resp_bits_af; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_0_ready; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_0_valid; // @[XSCore.scala 138:28]
  wire [31:0] frontend_io_backend_cfVec_0_bits_instr; // @[XSCore.scala 138:28]
  wire [9:0] frontend_io_backend_cfVec_0_bits_foldpc; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_0_bits_exceptionVec_1; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_0_bits_exceptionVec_12; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_0_bits_trigger_frontendHit_0; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_0_bits_trigger_frontendHit_1; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_0_bits_trigger_frontendHit_2; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_0_bits_trigger_frontendHit_3; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_0_bits_trigger_backendEn_0; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_0_bits_trigger_backendEn_1; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_0_bits_pd_isRVC; // @[XSCore.scala 138:28]
  wire [1:0] frontend_io_backend_cfVec_0_bits_pd_brType; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_0_bits_pd_isCall; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_0_bits_pd_isRet; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_0_bits_pred_taken; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_0_bits_crossPageIPFFix; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_0_bits_ftqPtr_flag; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_backend_cfVec_0_bits_ftqPtr_value; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_backend_cfVec_0_bits_ftqOffset; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_1_ready; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_1_valid; // @[XSCore.scala 138:28]
  wire [31:0] frontend_io_backend_cfVec_1_bits_instr; // @[XSCore.scala 138:28]
  wire [9:0] frontend_io_backend_cfVec_1_bits_foldpc; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_1_bits_exceptionVec_1; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_1_bits_exceptionVec_12; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_1_bits_trigger_frontendHit_0; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_1_bits_trigger_frontendHit_1; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_1_bits_trigger_frontendHit_2; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_1_bits_trigger_frontendHit_3; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_1_bits_trigger_backendEn_0; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_1_bits_trigger_backendEn_1; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_1_bits_pd_isRVC; // @[XSCore.scala 138:28]
  wire [1:0] frontend_io_backend_cfVec_1_bits_pd_brType; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_1_bits_pd_isCall; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_1_bits_pd_isRet; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_1_bits_pred_taken; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_1_bits_crossPageIPFFix; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_cfVec_1_bits_ftqPtr_flag; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_backend_cfVec_1_bits_ftqPtr_value; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_backend_cfVec_1_bits_ftqOffset; // @[XSCore.scala 138:28]
  wire [5:0] frontend_io_backend_stallReason_reason_0; // @[XSCore.scala 138:28]
  wire [5:0] frontend_io_backend_stallReason_reason_1; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_stallReason_backReason_valid; // @[XSCore.scala 138:28]
  wire [5:0] frontend_io_backend_stallReason_backReason_bits; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_fromFtq_pc_mem_wen; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_backend_fromFtq_pc_mem_waddr; // @[XSCore.scala 138:28]
  wire [38:0] frontend_io_backend_fromFtq_pc_mem_wdata_startAddr; // @[XSCore.scala 138:28]
  wire [38:0] frontend_io_backend_fromFtq_pc_mem_wdata_nextLineAddr; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_0; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_1; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_2; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_3; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_4; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_5; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_6; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_7; // @[XSCore.scala 138:28]
  wire [38:0] frontend_io_backend_fromFtq_newest_entry_target; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_fromFtq_newest_entry_ptr_flag; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_backend_fromFtq_newest_entry_ptr_value; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_toFtq_rob_commits_0_valid; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_backend_toFtq_rob_commits_0_bits_commitType; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_toFtq_rob_commits_0_bits_ftqIdx_flag; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_backend_toFtq_rob_commits_0_bits_ftqIdx_value; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_backend_toFtq_rob_commits_0_bits_ftqOffset; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_toFtq_rob_commits_1_valid; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_backend_toFtq_rob_commits_1_bits_commitType; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_toFtq_rob_commits_1_bits_ftqIdx_flag; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_backend_toFtq_rob_commits_1_bits_ftqIdx_value; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_backend_toFtq_rob_commits_1_bits_ftqOffset; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_toFtq_redirect_valid; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_toFtq_redirect_bits_ftqIdx_flag; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_backend_toFtq_redirect_bits_ftqIdx_value; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_backend_toFtq_redirect_bits_ftqOffset; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_toFtq_redirect_bits_level; // @[XSCore.scala 138:28]
  wire [38:0] frontend_io_backend_toFtq_redirect_bits_cfiUpdate_pc; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_toFtq_redirect_bits_cfiUpdate_pd_isRVC; // @[XSCore.scala 138:28]
  wire [1:0] frontend_io_backend_toFtq_redirect_bits_cfiUpdate_pd_brType; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_toFtq_redirect_bits_cfiUpdate_pd_isCall; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_toFtq_redirect_bits_cfiUpdate_pd_isRet; // @[XSCore.scala 138:28]
  wire [38:0] frontend_io_backend_toFtq_redirect_bits_cfiUpdate_target; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_toFtq_redirect_bits_cfiUpdate_taken; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_toFtq_redirect_bits_cfiUpdate_isMisPred; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_toFtq_redirect_bits_debugIsCtrl; // @[XSCore.scala 138:28]
  wire  frontend_io_backend_toFtq_redirect_bits_debugIsMemVio; // @[XSCore.scala 138:28]
  wire  frontend_io_sfence_valid; // @[XSCore.scala 138:28]
  wire  frontend_io_sfence_bits_rs1; // @[XSCore.scala 138:28]
  wire  frontend_io_sfence_bits_rs2; // @[XSCore.scala 138:28]
  wire [38:0] frontend_io_sfence_bits_addr; // @[XSCore.scala 138:28]
  wire [15:0] frontend_io_sfence_bits_asid; // @[XSCore.scala 138:28]
  wire [3:0] frontend_io_tlbCsr_satp_mode; // @[XSCore.scala 138:28]
  wire [15:0] frontend_io_tlbCsr_satp_asid; // @[XSCore.scala 138:28]
  wire [43:0] frontend_io_tlbCsr_satp_ppn; // @[XSCore.scala 138:28]
  wire  frontend_io_tlbCsr_satp_changed; // @[XSCore.scala 138:28]
  wire  frontend_io_tlbCsr_priv_mxr; // @[XSCore.scala 138:28]
  wire  frontend_io_tlbCsr_priv_sum; // @[XSCore.scala 138:28]
  wire [1:0] frontend_io_tlbCsr_priv_imode; // @[XSCore.scala 138:28]
  wire [1:0] frontend_io_tlbCsr_priv_dmode; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_l2_pf_store_only; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_icache_parity_enable; // @[XSCore.scala 138:28]
  wire [4:0] frontend_io_csrCtrl_lvpred_timeout; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_bp_ctrl_ubtb_enable; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_bp_ctrl_btb_enable; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_bp_ctrl_tage_enable; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_bp_ctrl_sc_enable; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_bp_ctrl_ras_enable; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_ldld_vio_check_enable; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_cache_error_enable; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_uncache_write_outstanding_enable; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_fusion_enable; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_wfi_enable; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_svinval_enable; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_distribute_csr_wvalid; // @[XSCore.scala 138:28]
  wire [11:0] frontend_io_csrCtrl_distribute_csr_waddr; // @[XSCore.scala 138:28]
  wire [63:0] frontend_io_csrCtrl_distribute_csr_wdata; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_singlestep; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_frontend_trigger_t_valid; // @[XSCore.scala 138:28]
  wire [1:0] frontend_io_csrCtrl_frontend_trigger_t_bits_addr; // @[XSCore.scala 138:28]
  wire [1:0] frontend_io_csrCtrl_frontend_trigger_t_bits_tdata_matchType; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_frontend_trigger_t_bits_tdata_select; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_frontend_trigger_t_bits_tdata_timing; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_frontend_trigger_t_bits_tdata_chain; // @[XSCore.scala 138:28]
  wire [63:0] frontend_io_csrCtrl_frontend_trigger_t_bits_tdata_tdata2; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_mem_trigger_t_valid; // @[XSCore.scala 138:28]
  wire [2:0] frontend_io_csrCtrl_mem_trigger_t_bits_addr; // @[XSCore.scala 138:28]
  wire [1:0] frontend_io_csrCtrl_mem_trigger_t_bits_tdata_matchType; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_mem_trigger_t_bits_tdata_select; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_mem_trigger_t_bits_tdata_chain; // @[XSCore.scala 138:28]
  wire [63:0] frontend_io_csrCtrl_mem_trigger_t_bits_tdata_tdata2; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_trigger_enable_0; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_trigger_enable_1; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_trigger_enable_2; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_trigger_enable_3; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_trigger_enable_4; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_trigger_enable_5; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_trigger_enable_6; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_trigger_enable_7; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_trigger_enable_8; // @[XSCore.scala 138:28]
  wire  frontend_io_csrCtrl_trigger_enable_9; // @[XSCore.scala 138:28]
  wire  frontend_io_csrUpdate_wvalid; // @[XSCore.scala 138:28]
  wire [11:0] frontend_io_csrUpdate_waddr; // @[XSCore.scala 138:28]
  wire [63:0] frontend_io_csrUpdate_wdata; // @[XSCore.scala 138:28]
  wire [35:0] frontend_io_error_paddr; // @[XSCore.scala 138:28]
  wire  frontend_io_error_report_to_beu; // @[XSCore.scala 138:28]
  wire [5:0] frontend_io_perf_0_value; // @[XSCore.scala 138:28]
  wire [5:0] frontend_io_perf_1_value; // @[XSCore.scala 138:28]
  wire [5:0] frontend_io_perf_2_value; // @[XSCore.scala 138:28]
  wire [5:0] frontend_io_perf_3_value; // @[XSCore.scala 138:28]
  wire [5:0] frontend_io_perf_4_value; // @[XSCore.scala 138:28]
  wire [5:0] frontend_io_perf_5_value; // @[XSCore.scala 138:28]
  wire [5:0] frontend_io_perf_6_value; // @[XSCore.scala 138:28]
  wire [5:0] frontend_io_perf_7_value; // @[XSCore.scala 138:28]
  wire  wbArbiter_clock; // @[XSCore.scala 141:29]
  wire  wbArbiter_reset; // @[XSCore.scala 141:29]
  wire [7:0] wbArbiter_io_hartId; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_redirect_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_redirect_bits_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_redirect_bits_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_redirect_bits_level; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_0_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_0_bits_uop_ctrl_rfWen; // @[XSCore.scala 141:29]
  wire [5:0] wbArbiter_io_in_0_bits_uop_pdest; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_0_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_in_0_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_0_bits_uop_lqIdx_flag; // @[XSCore.scala 141:29]
  wire [3:0] wbArbiter_io_in_0_bits_uop_lqIdx_value; // @[XSCore.scala 141:29]
  wire [63:0] wbArbiter_io_in_0_bits_data; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_0_bits_redirectValid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_0_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_1_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_1_bits_uop_ctrl_rfWen; // @[XSCore.scala 141:29]
  wire [5:0] wbArbiter_io_in_1_bits_uop_pdest; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_1_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_in_1_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_1_bits_uop_lqIdx_flag; // @[XSCore.scala 141:29]
  wire [3:0] wbArbiter_io_in_1_bits_uop_lqIdx_value; // @[XSCore.scala 141:29]
  wire [63:0] wbArbiter_io_in_1_bits_data; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_1_bits_redirectValid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_1_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_2_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_2_bits_uop_ctrl_rfWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_2_bits_uop_ctrl_fpWen; // @[XSCore.scala 141:29]
  wire [5:0] wbArbiter_io_in_2_bits_uop_pdest; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_2_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_in_2_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_2_bits_uop_lqIdx_flag; // @[XSCore.scala 141:29]
  wire [3:0] wbArbiter_io_in_2_bits_uop_lqIdx_value; // @[XSCore.scala 141:29]
  wire [63:0] wbArbiter_io_in_2_bits_data; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_3_ready; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_3_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_3_bits_uop_cf_exceptionVec_2; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_3_bits_uop_cf_exceptionVec_3; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_3_bits_uop_cf_exceptionVec_8; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_3_bits_uop_cf_exceptionVec_9; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_3_bits_uop_cf_exceptionVec_11; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_3_bits_uop_ctrl_rfWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_3_bits_uop_ctrl_fpWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_3_bits_uop_ctrl_flushPipe; // @[XSCore.scala 141:29]
  wire [5:0] wbArbiter_io_in_3_bits_uop_pdest; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_3_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_in_3_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_3_bits_uop_lqIdx_flag; // @[XSCore.scala 141:29]
  wire [3:0] wbArbiter_io_in_3_bits_uop_lqIdx_value; // @[XSCore.scala 141:29]
  wire [63:0] wbArbiter_io_in_3_bits_data; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_3_bits_redirectValid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_3_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_3_bits_debug_isPerfCnt; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_4_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_4_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_4_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_4_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_4_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_4_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_4_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_4_bits_uop_ctrl_rfWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_4_bits_uop_ctrl_fpWen; // @[XSCore.scala 141:29]
  wire [5:0] wbArbiter_io_in_4_bits_uop_pdest; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_4_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_in_4_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_4_bits_uop_lqIdx_flag; // @[XSCore.scala 141:29]
  wire [3:0] wbArbiter_io_in_4_bits_uop_lqIdx_value; // @[XSCore.scala 141:29]
  wire [63:0] wbArbiter_io_in_4_bits_data; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_5_ready; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_5_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_5_bits_uop_ctrl_rfWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_5_bits_uop_ctrl_fpWen; // @[XSCore.scala 141:29]
  wire [5:0] wbArbiter_io_in_5_bits_uop_pdest; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_5_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_in_5_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_5_bits_uop_lqIdx_flag; // @[XSCore.scala 141:29]
  wire [3:0] wbArbiter_io_in_5_bits_uop_lqIdx_value; // @[XSCore.scala 141:29]
  wire [63:0] wbArbiter_io_in_5_bits_data; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_6_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_6_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_6_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_6_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_6_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_6_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_6_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_6_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_6_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_6_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_6_bits_uop_ctrl_rfWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_6_bits_uop_ctrl_fpWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_6_bits_uop_ctrl_replayInst; // @[XSCore.scala 141:29]
  wire [5:0] wbArbiter_io_in_6_bits_uop_pdest; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_6_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_in_6_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_6_bits_uop_lqIdx_flag; // @[XSCore.scala 141:29]
  wire [3:0] wbArbiter_io_in_6_bits_uop_lqIdx_value; // @[XSCore.scala 141:29]
  wire [63:0] wbArbiter_io_in_6_bits_data; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_6_bits_debug_isMMIO; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_7_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_7_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_7_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_7_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_7_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_7_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_7_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_7_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_7_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_7_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_7_bits_uop_ctrl_rfWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_7_bits_uop_ctrl_fpWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_7_bits_uop_ctrl_replayInst; // @[XSCore.scala 141:29]
  wire [5:0] wbArbiter_io_in_7_bits_uop_pdest; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_7_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_in_7_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_7_bits_uop_lqIdx_flag; // @[XSCore.scala 141:29]
  wire [3:0] wbArbiter_io_in_7_bits_uop_lqIdx_value; // @[XSCore.scala 141:29]
  wire [63:0] wbArbiter_io_in_7_bits_data; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_7_bits_debug_isMMIO; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_bits_uop_cf_exceptionVec_6; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_bits_uop_cf_exceptionVec_7; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_bits_uop_cf_exceptionVec_15; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_in_8_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_bits_uop_lqIdx_flag; // @[XSCore.scala 141:29]
  wire [3:0] wbArbiter_io_in_8_bits_uop_lqIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_bits_redirectValid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_bits_debug_isMMIO; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_8_bits_debug_isPerfCnt; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_bits_uop_cf_exceptionVec_6; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_bits_uop_cf_exceptionVec_7; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_bits_uop_cf_exceptionVec_15; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_in_9_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_bits_uop_lqIdx_flag; // @[XSCore.scala 141:29]
  wire [3:0] wbArbiter_io_in_9_bits_uop_lqIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_bits_redirectValid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_bits_debug_isMMIO; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_9_bits_debug_isPerfCnt; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_10_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_10_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_in_10_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_11_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_in_11_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_in_11_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_0_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_0_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_out_0_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_0_bits_uop_lqIdx_flag; // @[XSCore.scala 141:29]
  wire [3:0] wbArbiter_io_out_0_bits_uop_lqIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_0_bits_redirectValid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_0_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_1_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_1_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_out_1_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_1_bits_uop_lqIdx_flag; // @[XSCore.scala 141:29]
  wire [3:0] wbArbiter_io_out_1_bits_uop_lqIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_1_bits_redirectValid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_1_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_2_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_2_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_2_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_2_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_2_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_2_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_2_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_2_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_2_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_2_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_2_bits_uop_ctrl_rfWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_2_bits_uop_ctrl_fpWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_2_bits_uop_ctrl_replayInst; // @[XSCore.scala 141:29]
  wire [5:0] wbArbiter_io_out_2_bits_uop_pdest; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_2_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_out_2_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_2_bits_uop_lqIdx_flag; // @[XSCore.scala 141:29]
  wire [3:0] wbArbiter_io_out_2_bits_uop_lqIdx_value; // @[XSCore.scala 141:29]
  wire [63:0] wbArbiter_io_out_2_bits_data; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_2_bits_debug_isMMIO; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_3_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_3_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_3_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_3_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_3_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_3_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_3_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_3_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_3_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_3_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_3_bits_uop_ctrl_rfWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_3_bits_uop_ctrl_fpWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_3_bits_uop_ctrl_replayInst; // @[XSCore.scala 141:29]
  wire [5:0] wbArbiter_io_out_3_bits_uop_pdest; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_3_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_out_3_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_3_bits_uop_lqIdx_flag; // @[XSCore.scala 141:29]
  wire [3:0] wbArbiter_io_out_3_bits_uop_lqIdx_value; // @[XSCore.scala 141:29]
  wire [63:0] wbArbiter_io_out_3_bits_data; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_3_bits_debug_isMMIO; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_4_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_4_bits_uop_cf_exceptionVec_2; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_4_bits_uop_cf_exceptionVec_3; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_4_bits_uop_cf_exceptionVec_8; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_4_bits_uop_cf_exceptionVec_9; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_4_bits_uop_cf_exceptionVec_11; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_4_bits_uop_ctrl_rfWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_4_bits_uop_ctrl_fpWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_4_bits_uop_ctrl_flushPipe; // @[XSCore.scala 141:29]
  wire [5:0] wbArbiter_io_out_4_bits_uop_pdest; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_4_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_out_4_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_4_bits_uop_lqIdx_flag; // @[XSCore.scala 141:29]
  wire [3:0] wbArbiter_io_out_4_bits_uop_lqIdx_value; // @[XSCore.scala 141:29]
  wire [63:0] wbArbiter_io_out_4_bits_data; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_4_bits_redirectValid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_4_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_4_bits_debug_isPerfCnt; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_5_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_5_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_5_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_5_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_5_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_5_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_5_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_5_bits_uop_ctrl_rfWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_5_bits_uop_ctrl_fpWen; // @[XSCore.scala 141:29]
  wire [5:0] wbArbiter_io_out_5_bits_uop_pdest; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_5_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_out_5_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_5_bits_uop_lqIdx_flag; // @[XSCore.scala 141:29]
  wire [3:0] wbArbiter_io_out_5_bits_uop_lqIdx_value; // @[XSCore.scala 141:29]
  wire [63:0] wbArbiter_io_out_5_bits_data; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_6_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_6_bits_uop_ctrl_rfWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_6_bits_uop_ctrl_fpWen; // @[XSCore.scala 141:29]
  wire [5:0] wbArbiter_io_out_6_bits_uop_pdest; // @[XSCore.scala 141:29]
  wire [63:0] wbArbiter_io_out_6_bits_data; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_7_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_7_bits_uop_ctrl_rfWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_7_bits_uop_ctrl_fpWen; // @[XSCore.scala 141:29]
  wire [5:0] wbArbiter_io_out_7_bits_uop_pdest; // @[XSCore.scala 141:29]
  wire [63:0] wbArbiter_io_out_7_bits_data; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_8_valid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_8_bits_uop_cf_exceptionVec_2; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_8_bits_uop_cf_exceptionVec_3; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_8_bits_uop_cf_exceptionVec_8; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_8_bits_uop_cf_exceptionVec_9; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_8_bits_uop_cf_exceptionVec_11; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_8_bits_uop_ctrl_rfWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_8_bits_uop_ctrl_fpWen; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_8_bits_uop_ctrl_flushPipe; // @[XSCore.scala 141:29]
  wire [5:0] wbArbiter_io_out_8_bits_uop_pdest; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_8_bits_uop_robIdx_flag; // @[XSCore.scala 141:29]
  wire [4:0] wbArbiter_io_out_8_bits_uop_robIdx_value; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_8_bits_uop_lqIdx_flag; // @[XSCore.scala 141:29]
  wire [3:0] wbArbiter_io_out_8_bits_uop_lqIdx_value; // @[XSCore.scala 141:29]
  wire [63:0] wbArbiter_io_out_8_bits_data; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_8_bits_redirectValid; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_8_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 141:29]
  wire  wbArbiter_io_out_8_bits_debug_isPerfCnt; // @[XSCore.scala 141:29]
  wire  exuBlocks_clock; // @[XSCore.scala 210:17]
  wire  exuBlocks_reset; // @[XSCore.scala 210:17]
  wire [7:0] exuBlocks_io_hartId; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_redirect_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_redirect_bits_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_redirect_bits_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_redirect_bits_level; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_allocPregs_0_isInt; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_allocPregs_0_isFp; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_allocPregs_0_preg; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_allocPregs_1_isInt; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_allocPregs_1_isFp; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_allocPregs_1_preg; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_cf_trigger_backendEn_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_cf_trigger_backendEn_1; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_cf_pd_isRVC; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_0_bits_cf_pd_brType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_cf_pd_isCall; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_cf_pd_isRet; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_cf_pred_taken; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_cf_storeSetHit; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_cf_loadWaitStrict; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_in_0_bits_cf_ssid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_cf_ftqPtr_flag; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_in_0_bits_cf_ftqPtr_value; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_in_0_bits_cf_ftqOffset; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_0_bits_ctrl_srcType_0; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_0_bits_ctrl_srcType_1; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_in_0_bits_ctrl_fuType; // @[XSCore.scala 210:17]
  wire [6:0] exuBlocks_io_in_0_bits_ctrl_fuOpType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_in_0_bits_ctrl_selImm; // @[XSCore.scala 210:17]
  wire [19:0] exuBlocks_io_in_0_bits_ctrl_imm; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_ctrl_fpu_isAddSub; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_ctrl_fpu_typeTagIn; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_ctrl_fpu_typeTagOut; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_ctrl_fpu_fromInt; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_ctrl_fpu_wflags; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_ctrl_fpu_fpWen; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_0_bits_ctrl_fpu_fmaCmd; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_ctrl_fpu_div; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_ctrl_fpu_sqrt; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_ctrl_fpu_fcvt; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_0_bits_ctrl_fpu_typ; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_0_bits_ctrl_fpu_fmt; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_ctrl_fpu_ren3; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_in_0_bits_ctrl_fpu_rm; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_in_0_bits_psrc_0; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_in_0_bits_psrc_1; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_in_0_bits_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_in_0_bits_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_lqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_in_0_bits_lqIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_0_bits_sqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_in_0_bits_sqIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_1_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_1_bits_cf_trigger_backendEn_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_1_bits_cf_trigger_backendEn_1; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_1_bits_cf_pd_isRVC; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_1_bits_cf_pd_brType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_1_bits_cf_pd_isCall; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_1_bits_cf_pd_isRet; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_1_bits_cf_pred_taken; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_1_bits_cf_storeSetHit; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_1_bits_cf_loadWaitStrict; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_in_1_bits_cf_ssid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_1_bits_cf_ftqPtr_flag; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_in_1_bits_cf_ftqPtr_value; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_in_1_bits_cf_ftqOffset; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_1_bits_ctrl_srcType_0; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_1_bits_ctrl_srcType_1; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_in_1_bits_ctrl_fuType; // @[XSCore.scala 210:17]
  wire [6:0] exuBlocks_io_in_1_bits_ctrl_fuOpType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_1_bits_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_1_bits_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_in_1_bits_ctrl_selImm; // @[XSCore.scala 210:17]
  wire [19:0] exuBlocks_io_in_1_bits_ctrl_imm; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_in_1_bits_psrc_0; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_in_1_bits_psrc_1; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_in_1_bits_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_1_bits_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_in_1_bits_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_1_bits_lqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_in_1_bits_lqIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_1_bits_sqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_in_1_bits_sqIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_4_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_4_bits_cf_trigger_backendEn_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_4_bits_cf_trigger_backendEn_1; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_4_bits_cf_pd_isRVC; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_4_bits_cf_pd_brType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_4_bits_cf_pd_isCall; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_4_bits_cf_pd_isRet; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_4_bits_cf_pred_taken; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_4_bits_cf_storeSetHit; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_4_bits_cf_loadWaitStrict; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_in_4_bits_cf_ssid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_4_bits_cf_ftqPtr_flag; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_in_4_bits_cf_ftqPtr_value; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_in_4_bits_cf_ftqOffset; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_4_bits_ctrl_srcType_0; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_4_bits_ctrl_srcType_1; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_in_4_bits_ctrl_fuType; // @[XSCore.scala 210:17]
  wire [6:0] exuBlocks_io_in_4_bits_ctrl_fuOpType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_4_bits_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_4_bits_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [19:0] exuBlocks_io_in_4_bits_ctrl_imm; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_in_4_bits_psrc_0; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_in_4_bits_psrc_1; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_in_4_bits_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_4_bits_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_in_4_bits_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_5_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_5_bits_cf_trigger_backendEn_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_5_bits_cf_trigger_backendEn_1; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_5_bits_cf_pd_isRVC; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_5_bits_cf_pd_brType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_5_bits_cf_pd_isCall; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_5_bits_cf_pd_isRet; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_5_bits_cf_pred_taken; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_5_bits_cf_storeSetHit; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_5_bits_cf_loadWaitStrict; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_in_5_bits_cf_ssid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_5_bits_cf_ftqPtr_flag; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_in_5_bits_cf_ftqPtr_value; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_in_5_bits_cf_ftqOffset; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_5_bits_ctrl_srcType_0; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_5_bits_ctrl_srcType_1; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_in_5_bits_ctrl_fuType; // @[XSCore.scala 210:17]
  wire [6:0] exuBlocks_io_in_5_bits_ctrl_fuOpType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_5_bits_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_5_bits_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [19:0] exuBlocks_io_in_5_bits_ctrl_imm; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_in_5_bits_psrc_0; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_in_5_bits_psrc_1; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_in_5_bits_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_5_bits_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_in_5_bits_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_6_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_6_bits_cf_trigger_backendEn_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_6_bits_cf_trigger_backendEn_1; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_6_bits_cf_pd_isRVC; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_6_bits_cf_pd_brType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_6_bits_cf_pd_isCall; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_6_bits_cf_pd_isRet; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_6_bits_cf_pred_taken; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_6_bits_cf_storeSetHit; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_6_bits_cf_loadWaitStrict; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_in_6_bits_cf_ssid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_6_bits_cf_ftqPtr_flag; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_in_6_bits_cf_ftqPtr_value; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_in_6_bits_cf_ftqOffset; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_6_bits_ctrl_srcType_0; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_6_bits_ctrl_srcType_1; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_in_6_bits_ctrl_fuType; // @[XSCore.scala 210:17]
  wire [6:0] exuBlocks_io_in_6_bits_ctrl_fuOpType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_6_bits_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_6_bits_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [19:0] exuBlocks_io_in_6_bits_ctrl_imm; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_in_6_bits_psrc_0; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_in_6_bits_psrc_1; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_in_6_bits_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_6_bits_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_in_6_bits_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_7_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_7_bits_cf_trigger_backendEn_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_7_bits_cf_trigger_backendEn_1; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_7_bits_cf_pd_isRVC; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_7_bits_cf_pd_brType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_7_bits_cf_pd_isCall; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_7_bits_cf_pd_isRet; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_7_bits_cf_pred_taken; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_7_bits_cf_storeSetHit; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_7_bits_cf_loadWaitStrict; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_in_7_bits_cf_ssid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_7_bits_cf_ftqPtr_flag; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_in_7_bits_cf_ftqPtr_value; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_in_7_bits_cf_ftqOffset; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_7_bits_ctrl_srcType_0; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_in_7_bits_ctrl_srcType_1; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_in_7_bits_ctrl_fuType; // @[XSCore.scala 210:17]
  wire [6:0] exuBlocks_io_in_7_bits_ctrl_fuOpType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_7_bits_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_7_bits_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [19:0] exuBlocks_io_in_7_bits_ctrl_imm; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_in_7_bits_psrc_0; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_in_7_bits_psrc_1; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_in_7_bits_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_in_7_bits_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_in_7_bits_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_0_ready; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_0_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_0_bits_uop_cf_trigger_backendEn_1; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_0_bits_uop_cf_storeSetHit; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_0_bits_uop_cf_loadWaitStrict; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_issue_0_bits_uop_cf_ssid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_0_bits_uop_cf_ftqPtr_flag; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_issue_0_bits_uop_cf_ftqPtr_value; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_issue_0_bits_uop_cf_ftqOffset; // @[XSCore.scala 210:17]
  wire [6:0] exuBlocks_io_issue_0_bits_uop_ctrl_fuOpType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_0_bits_uop_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_0_bits_uop_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [19:0] exuBlocks_io_issue_0_bits_uop_ctrl_imm; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_issue_0_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_0_bits_uop_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_issue_0_bits_uop_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_0_bits_uop_lqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_issue_0_bits_uop_lqIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_0_bits_uop_sqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_issue_0_bits_uop_sqIdx_value; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_issue_0_bits_src_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_1_ready; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_1_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_1_bits_uop_cf_trigger_backendEn_1; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_1_bits_uop_cf_storeSetHit; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_1_bits_uop_cf_loadWaitStrict; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_issue_1_bits_uop_cf_ssid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_1_bits_uop_cf_ftqPtr_flag; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_issue_1_bits_uop_cf_ftqPtr_value; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_issue_1_bits_uop_cf_ftqOffset; // @[XSCore.scala 210:17]
  wire [6:0] exuBlocks_io_issue_1_bits_uop_ctrl_fuOpType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_1_bits_uop_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_1_bits_uop_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [19:0] exuBlocks_io_issue_1_bits_uop_ctrl_imm; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_issue_1_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_1_bits_uop_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_issue_1_bits_uop_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_1_bits_uop_lqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_issue_1_bits_uop_lqIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_1_bits_uop_sqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_issue_1_bits_uop_sqIdx_value; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_issue_1_bits_src_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_2_ready; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_2_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_2_bits_uop_cf_trigger_backendEn_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_2_bits_uop_cf_trigger_backendEn_1; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_issue_2_bits_uop_cf_ftqPtr_value; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_issue_2_bits_uop_cf_ftqOffset; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_issue_2_bits_uop_ctrl_fuType; // @[XSCore.scala 210:17]
  wire [6:0] exuBlocks_io_issue_2_bits_uop_ctrl_fuOpType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_2_bits_uop_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_2_bits_uop_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [19:0] exuBlocks_io_issue_2_bits_uop_ctrl_imm; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_issue_2_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_2_bits_uop_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_issue_2_bits_uop_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_2_bits_uop_lqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_issue_2_bits_uop_lqIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_2_bits_uop_sqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_issue_2_bits_uop_sqIdx_value; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_issue_2_bits_src_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_3_ready; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_3_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_3_bits_uop_cf_trigger_backendEn_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_3_bits_uop_cf_trigger_backendEn_1; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_issue_3_bits_uop_cf_ftqPtr_value; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_issue_3_bits_uop_cf_ftqOffset; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_issue_3_bits_uop_ctrl_fuType; // @[XSCore.scala 210:17]
  wire [6:0] exuBlocks_io_issue_3_bits_uop_ctrl_fuOpType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_3_bits_uop_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_3_bits_uop_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [19:0] exuBlocks_io_issue_3_bits_uop_ctrl_imm; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_issue_3_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_3_bits_uop_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_issue_3_bits_uop_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_3_bits_uop_lqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_issue_3_bits_uop_lqIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_3_bits_uop_sqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_issue_3_bits_uop_sqIdx_value; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_issue_3_bits_src_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_4_ready; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_4_valid; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_issue_4_bits_uop_ctrl_fuType; // @[XSCore.scala 210:17]
  wire [6:0] exuBlocks_io_issue_4_bits_uop_ctrl_fuOpType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_4_bits_uop_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_issue_4_bits_uop_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_4_bits_uop_sqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_issue_4_bits_uop_sqIdx_value; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_issue_4_bits_src_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_5_ready; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_5_valid; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_issue_5_bits_uop_ctrl_fuType; // @[XSCore.scala 210:17]
  wire [6:0] exuBlocks_io_issue_5_bits_uop_ctrl_fuOpType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_5_bits_uop_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_issue_5_bits_uop_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_issue_5_bits_uop_sqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_issue_5_bits_uop_sqIdx_value; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_issue_5_bits_src_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_2_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_2_bits_uop_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_2_bits_uop_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_rfWriteback_2_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_rfWriteback_2_bits_data; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_3_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_3_bits_uop_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_3_bits_uop_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_rfWriteback_3_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_rfWriteback_3_bits_data; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_4_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_4_bits_uop_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_4_bits_uop_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_rfWriteback_4_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_rfWriteback_4_bits_data; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_5_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_5_bits_uop_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_5_bits_uop_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_rfWriteback_5_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_rfWriteback_5_bits_data; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_6_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_6_bits_uop_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_6_bits_uop_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_rfWriteback_6_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_rfWriteback_6_bits_data; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_7_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_7_bits_uop_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_7_bits_uop_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_rfWriteback_7_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_rfWriteback_7_bits_data; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_8_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_8_bits_uop_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_rfWriteback_8_bits_uop_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_rfWriteback_8_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_rfWriteback_8_bits_data; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fastUopIn_2_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fastUopIn_2_bits_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fastUopIn_2_bits_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fastUopIn_3_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fastUopIn_3_bits_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fastUopIn_3_bits_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_0_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_0_bits_uop_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuWriteback_0_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_0_bits_uop_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_fuWriteback_0_bits_uop_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_0_bits_uop_lqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_fuWriteback_0_bits_uop_lqIdx_value; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_fuWriteback_0_bits_data; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_0_bits_redirectValid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_0_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_1_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_1_bits_uop_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuWriteback_1_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_1_bits_uop_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_fuWriteback_1_bits_uop_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_1_bits_uop_lqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_fuWriteback_1_bits_uop_lqIdx_value; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_fuWriteback_1_bits_data; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_1_bits_redirectValid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_1_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_2_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_2_bits_uop_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_2_bits_uop_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuWriteback_2_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_2_bits_uop_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_fuWriteback_2_bits_uop_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_2_bits_uop_lqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_fuWriteback_2_bits_uop_lqIdx_value; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_fuWriteback_2_bits_data; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_3_ready; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_3_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_2; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_3; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_8; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_9; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_11; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_3_bits_uop_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_3_bits_uop_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_3_bits_uop_ctrl_flushPipe; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuWriteback_3_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_3_bits_uop_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_fuWriteback_3_bits_uop_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_3_bits_uop_lqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_fuWriteback_3_bits_uop_lqIdx_value; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_fuWriteback_3_bits_data; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_fuWriteback_3_bits_fflags; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_3_bits_redirectValid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_3_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuWriteback_3_bits_debug_isPerfCnt; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_rsReady_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_rsReady_1; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_rsReady_2; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_rsReady_3; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_rsReady_4; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_rsReady_5; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_rsReady_6; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_rsReady_7; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_feedback_0_feedbackSlow_valid; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_scheExtra_feedback_0_feedbackSlow_bits_rsIdx; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_feedback_0_feedbackSlow_bits_hit; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_feedback_0_feedbackFast_valid; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_scheExtra_feedback_0_feedbackFast_bits_rsIdx; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_scheExtra_feedback_0_rsIdx; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_feedback_1_feedbackSlow_valid; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_scheExtra_feedback_1_feedbackSlow_bits_rsIdx; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_feedback_1_feedbackSlow_bits_hit; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_feedback_1_feedbackFast_valid; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_scheExtra_feedback_1_feedbackFast_bits_rsIdx; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_scheExtra_feedback_1_rsIdx; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_feedback_2_feedbackSlow_valid; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_scheExtra_feedback_2_feedbackSlow_bits_rsIdx; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_feedback_2_feedbackSlow_bits_hit; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_scheExtra_feedback_2_rsIdx; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_feedback_3_feedbackSlow_valid; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_scheExtra_feedback_3_feedbackSlow_bits_rsIdx; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_feedback_3_feedbackSlow_bits_hit; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_scheExtra_feedback_3_rsIdx; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_fpRfReadIn_0_addr; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_scheExtra_fpRfReadIn_0_data; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_fpRfReadIn_1_addr; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_scheExtra_fpRfReadIn_1_data; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_scheExtra_loadFastMatch_0; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_scheExtra_loadFastMatch_1; // @[XSCore.scala 210:17]
  wire [6:0] exuBlocks_io_scheExtra_loadFastFuOpType_0; // @[XSCore.scala 210:17]
  wire [6:0] exuBlocks_io_scheExtra_loadFastFuOpType_1; // @[XSCore.scala 210:17]
  wire [11:0] exuBlocks_io_scheExtra_loadFastImm_0; // @[XSCore.scala 210:17]
  wire [11:0] exuBlocks_io_scheExtra_loadFastImm_1; // @[XSCore.scala 210:17]
  wire [38:0] exuBlocks_io_scheExtra_jumpPc; // @[XSCore.scala 210:17]
  wire [38:0] exuBlocks_io_scheExtra_jalr_target; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_scheExtra_lcommit; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_scheExtra_scommit; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_scheExtra_lqCancelCnt; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_scheExtra_sqCancelCnt; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_0; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_1; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_2; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_3; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_4; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_5; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_6; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_7; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_8; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_9; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_10; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_11; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_12; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_13; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_14; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_15; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_16; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_17; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_18; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_19; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_20; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_21; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_22; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_23; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_24; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_25; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_26; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_27; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_28; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_29; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_30; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_scheExtra_debug_int_rat_31; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_robDeqPtr_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_scheExtra_robDeqPtr_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_scheExtra_robHeadLsIssue; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_0_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isRVC; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_cf_pd_brType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isCall; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isRet; // @[XSCore.scala 210:17]
  wire [19:0] exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_ctrl_imm; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_0_bits_redirectValid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_ftqIdx_flag; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_ftqIdx_value; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_ftqOffset; // @[XSCore.scala 210:17]
  wire [38:0] exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_cfiUpdate_target; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_1_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isRVC; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_cf_pd_brType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isCall; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isRet; // @[XSCore.scala 210:17]
  wire [19:0] exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_ctrl_imm; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_1_bits_redirectValid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_ftqIdx_flag; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_ftqIdx_value; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_ftqOffset; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_cfiUpdate_taken; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_2_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isRVC; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_cf_pd_brType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isCall; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isRet; // @[XSCore.scala 210:17]
  wire [19:0] exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_ctrl_imm; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_2_bits_redirectValid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_ftqIdx_flag; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_ftqIdx_value; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_ftqOffset; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_cfiUpdate_taken; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 210:17]
  wire [7:0] exuBlocks_io_fuExtra_csrio_hartId; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_0_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_1_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_2_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_3_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_4_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_5_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_6_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_7_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_0_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_1_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_2_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_3_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_4_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_5_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_6_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_7_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_0_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_1_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_2_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_3_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_4_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_5_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_6_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_7_value; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_fuExtra_csrio_perf_retiredInstr; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_fpu_fflags_valid; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_fuExtra_csrio_fpu_fflags_bits; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_fpu_dirty_fs; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_fuExtra_csrio_fpu_frm; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_valid; // @[XSCore.scala 210:17]
  wire [38:0] exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_pc; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_1; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_2; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_3; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_6; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_7; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_8; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_9; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_11; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_12; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_15; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_1; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_2; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_3; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_crossPageIPFFix; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_uop_ctrl_singleStep; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_exception_bits_isInterrupt; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_isXRet; // @[XSCore.scala 210:17]
  wire [38:0] exuBlocks_io_fuExtra_csrio_trapTarget; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_interrupt; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_wfi_event; // @[XSCore.scala 210:17]
  wire [38:0] exuBlocks_io_fuExtra_csrio_memExceptionVAddr; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_externalInterrupt_mtip; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_externalInterrupt_msip; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_externalInterrupt_meip; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_externalInterrupt_seip; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_externalInterrupt_debug; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_io_fuExtra_csrio_tlb_satp_mode; // @[XSCore.scala 210:17]
  wire [15:0] exuBlocks_io_fuExtra_csrio_tlb_satp_asid; // @[XSCore.scala 210:17]
  wire [43:0] exuBlocks_io_fuExtra_csrio_tlb_satp_ppn; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_tlb_satp_changed; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_tlb_priv_mxr; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_tlb_priv_sum; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_fuExtra_csrio_tlb_priv_imode; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_fuExtra_csrio_tlb_priv_dmode; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_l2_pf_store_only; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_icache_parity_enable; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_io_fuExtra_csrio_customCtrl_lvpred_timeout; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_ubtb_enable; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_btb_enable; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_tage_enable; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_sc_enable; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_ras_enable; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_ldld_vio_check_enable; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_cache_error_enable; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_uncache_write_outstanding_enable; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_fusion_enable; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_wfi_enable; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_svinval_enable; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_distribute_csr_wvalid; // @[XSCore.scala 210:17]
  wire [11:0] exuBlocks_io_fuExtra_csrio_customCtrl_distribute_csr_waddr; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_fuExtra_csrio_customCtrl_distribute_csr_wdata; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_singlestep; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_valid; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_addr; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_valid; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_addr; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_select; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_1; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_2; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_3; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_4; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_5; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_6; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_7; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_8; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_9; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_distributedUpdate_0_wvalid; // @[XSCore.scala 210:17]
  wire [11:0] exuBlocks_io_fuExtra_csrio_distributedUpdate_0_waddr; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_fuExtra_csrio_distributedUpdate_0_wdata; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_csrio_distributedUpdate_1_wvalid; // @[XSCore.scala 210:17]
  wire [11:0] exuBlocks_io_fuExtra_csrio_distributedUpdate_1_waddr; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_io_fuExtra_csrio_distributedUpdate_1_wdata; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_fenceio_sfence_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_fenceio_sfence_bits_rs1; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_fenceio_sfence_bits_rs2; // @[XSCore.scala 210:17]
  wire [38:0] exuBlocks_io_fuExtra_fenceio_sfence_bits_addr; // @[XSCore.scala 210:17]
  wire [15:0] exuBlocks_io_fuExtra_fenceio_sfence_bits_asid; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_fenceio_fencei; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_fenceio_sbuffer_flushSb; // @[XSCore.scala 210:17]
  wire  exuBlocks_io_fuExtra_fenceio_sbuffer_sbIsEmpty; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_perf_0_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_perf_1_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_perf_2_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_perf_3_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_perf_4_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_perf_5_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_perf_6_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_perf_7_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_perf_8_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_perf_9_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_perf_10_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_io_perf_11_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_clock; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_reset; // @[XSCore.scala 210:17]
  wire [7:0] exuBlocks_1_io_hartId; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_redirect_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_redirect_bits_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_1_io_redirect_bits_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_redirect_bits_level; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_allocPregs_0_isFp; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_allocPregs_0_preg; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_allocPregs_1_isFp; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_allocPregs_1_preg; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_cf_pd_isRVC; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_1_io_in_0_bits_cf_pd_brType; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_cf_pd_isCall; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_cf_pd_isRet; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_cf_pred_taken; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_cf_ftqPtr_flag; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_1_io_in_0_bits_cf_ftqPtr_value; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_1_io_in_0_bits_cf_ftqOffset; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_1_io_in_0_bits_ctrl_srcType_0; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_1_io_in_0_bits_ctrl_srcType_1; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_1_io_in_0_bits_ctrl_srcType_2; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_1_io_in_0_bits_ctrl_fuType; // @[XSCore.scala 210:17]
  wire [6:0] exuBlocks_1_io_in_0_bits_ctrl_fuOpType; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [19:0] exuBlocks_1_io_in_0_bits_ctrl_imm; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_ctrl_fpu_isAddSub; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_ctrl_fpu_typeTagIn; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_ctrl_fpu_typeTagOut; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_ctrl_fpu_fromInt; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_ctrl_fpu_wflags; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_ctrl_fpu_fpWen; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_1_io_in_0_bits_ctrl_fpu_fmaCmd; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_ctrl_fpu_div; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_ctrl_fpu_sqrt; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_ctrl_fpu_fcvt; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_1_io_in_0_bits_ctrl_fpu_typ; // @[XSCore.scala 210:17]
  wire [1:0] exuBlocks_1_io_in_0_bits_ctrl_fpu_fmt; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_ctrl_fpu_ren3; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_1_io_in_0_bits_ctrl_fpu_rm; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_in_0_bits_psrc_0; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_in_0_bits_psrc_1; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_in_0_bits_psrc_2; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_in_0_bits_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_1_io_in_0_bits_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_in_0_bits_lqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_1_io_in_0_bits_lqIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fastUopOut_0_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fastUopOut_0_bits_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_fastUopOut_0_bits_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_rfWriteback_6_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_rfWriteback_6_bits_uop_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_rfWriteback_6_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_1_io_rfWriteback_6_bits_data; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_rfWriteback_7_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_rfWriteback_7_bits_uop_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_rfWriteback_7_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_1_io_rfWriteback_7_bits_data; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_rfWriteback_8_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_rfWriteback_8_bits_uop_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_rfWriteback_8_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_1_io_rfWriteback_8_bits_data; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fastUopIn_5_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fastUopIn_5_bits_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_fastUopIn_5_bits_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fuWriteback_0_ready; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fuWriteback_0_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fuWriteback_0_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fuWriteback_0_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fuWriteback_0_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fuWriteback_0_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fuWriteback_0_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fuWriteback_0_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fuWriteback_0_bits_uop_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fuWriteback_0_bits_uop_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_fuWriteback_0_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fuWriteback_0_bits_uop_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_1_io_fuWriteback_0_bits_uop_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fuWriteback_0_bits_uop_lqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_1_io_fuWriteback_0_bits_uop_lqIdx_value; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_1_io_fuWriteback_0_bits_data; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_1_io_fuWriteback_0_bits_fflags; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fuWriteback_1_ready; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fuWriteback_1_valid; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fuWriteback_1_bits_uop_ctrl_rfWen; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fuWriteback_1_bits_uop_ctrl_fpWen; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_fuWriteback_1_bits_uop_pdest; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fuWriteback_1_bits_uop_robIdx_flag; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_1_io_fuWriteback_1_bits_uop_robIdx_value; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_fuWriteback_1_bits_uop_lqIdx_flag; // @[XSCore.scala 210:17]
  wire [3:0] exuBlocks_1_io_fuWriteback_1_bits_uop_lqIdx_value; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_1_io_fuWriteback_1_bits_data; // @[XSCore.scala 210:17]
  wire [4:0] exuBlocks_1_io_fuWriteback_1_bits_fflags; // @[XSCore.scala 210:17]
  wire  exuBlocks_1_io_scheExtra_rsReady_0; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_fpRfReadOut_0_addr; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_1_io_scheExtra_fpRfReadOut_0_data; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_fpRfReadOut_1_addr; // @[XSCore.scala 210:17]
  wire [63:0] exuBlocks_1_io_scheExtra_fpRfReadOut_1_data; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_0; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_1; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_2; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_3; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_4; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_5; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_6; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_7; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_8; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_9; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_10; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_11; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_12; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_13; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_14; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_15; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_16; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_17; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_18; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_19; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_20; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_21; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_22; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_23; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_24; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_25; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_26; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_27; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_28; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_29; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_30; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_scheExtra_debug_fp_rat_31; // @[XSCore.scala 210:17]
  wire [2:0] exuBlocks_1_io_fuExtra_frm; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_perf_0_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_perf_1_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_perf_2_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_perf_3_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_perf_4_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_perf_5_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_perf_6_value; // @[XSCore.scala 210:17]
  wire [5:0] exuBlocks_1_io_perf_7_value; // @[XSCore.scala 210:17]
  wire  memBlock_clock; // @[XSCore.scala 213:28]
  wire  memBlock_reset; // @[XSCore.scala 213:28]
  wire  memBlock_auto_ptw_to_l2_buffer_out_a_ready; // @[XSCore.scala 213:28]
  wire  memBlock_auto_ptw_to_l2_buffer_out_a_valid; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_auto_ptw_to_l2_buffer_out_a_bits_opcode; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_auto_ptw_to_l2_buffer_out_a_bits_param; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_auto_ptw_to_l2_buffer_out_a_bits_size; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_auto_ptw_to_l2_buffer_out_a_bits_source; // @[XSCore.scala 213:28]
  wire [35:0] memBlock_auto_ptw_to_l2_buffer_out_a_bits_address; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_auto_ptw_to_l2_buffer_out_a_bits_user_reqSource; // @[XSCore.scala 213:28]
  wire [31:0] memBlock_auto_ptw_to_l2_buffer_out_a_bits_mask; // @[XSCore.scala 213:28]
  wire [255:0] memBlock_auto_ptw_to_l2_buffer_out_a_bits_data; // @[XSCore.scala 213:28]
  wire  memBlock_auto_ptw_to_l2_buffer_out_a_bits_corrupt; // @[XSCore.scala 213:28]
  wire  memBlock_auto_ptw_to_l2_buffer_out_d_ready; // @[XSCore.scala 213:28]
  wire  memBlock_auto_ptw_to_l2_buffer_out_d_valid; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_auto_ptw_to_l2_buffer_out_d_bits_opcode; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_auto_ptw_to_l2_buffer_out_d_bits_size; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_auto_ptw_to_l2_buffer_out_d_bits_source; // @[XSCore.scala 213:28]
  wire [255:0] memBlock_auto_ptw_to_l2_buffer_out_d_bits_data; // @[XSCore.scala 213:28]
  wire  memBlock_auto_uncache_client_out_a_ready; // @[XSCore.scala 213:28]
  wire  memBlock_auto_uncache_client_out_a_valid; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_auto_uncache_client_out_a_bits_opcode; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_auto_uncache_client_out_a_bits_size; // @[XSCore.scala 213:28]
  wire [1:0] memBlock_auto_uncache_client_out_a_bits_source; // @[XSCore.scala 213:28]
  wire [35:0] memBlock_auto_uncache_client_out_a_bits_address; // @[XSCore.scala 213:28]
  wire [7:0] memBlock_auto_uncache_client_out_a_bits_mask; // @[XSCore.scala 213:28]
  wire [63:0] memBlock_auto_uncache_client_out_a_bits_data; // @[XSCore.scala 213:28]
  wire  memBlock_auto_uncache_client_out_d_ready; // @[XSCore.scala 213:28]
  wire  memBlock_auto_uncache_client_out_d_valid; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_auto_uncache_client_out_d_bits_opcode; // @[XSCore.scala 213:28]
  wire [63:0] memBlock_auto_uncache_client_out_d_bits_data; // @[XSCore.scala 213:28]
  wire  memBlock_auto_dcache_client_out_a_ready; // @[XSCore.scala 213:28]
  wire  memBlock_auto_dcache_client_out_a_valid; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_auto_dcache_client_out_a_bits_opcode; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_auto_dcache_client_out_a_bits_param; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_auto_dcache_client_out_a_bits_size; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_auto_dcache_client_out_a_bits_source; // @[XSCore.scala 213:28]
  wire [35:0] memBlock_auto_dcache_client_out_a_bits_address; // @[XSCore.scala 213:28]
  wire [32:0] memBlock_auto_dcache_client_out_a_bits_user_vaddr; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_auto_dcache_client_out_a_bits_user_reqSource; // @[XSCore.scala 213:28]
  wire  memBlock_auto_dcache_client_out_a_bits_user_needHint; // @[XSCore.scala 213:28]
  wire [31:0] memBlock_auto_dcache_client_out_a_bits_mask; // @[XSCore.scala 213:28]
  wire  memBlock_auto_dcache_client_out_bready; // @[XSCore.scala 213:28]
  wire  memBlock_auto_dcache_client_out_bvalid; // @[XSCore.scala 213:28]
  wire [1:0] memBlock_auto_dcache_client_out_bparam; // @[XSCore.scala 213:28]
  wire [35:0] memBlock_auto_dcache_client_out_baddress; // @[XSCore.scala 213:28]
  wire [255:0] memBlock_auto_dcache_client_out_bdata; // @[XSCore.scala 213:28]
  wire  memBlock_auto_dcache_client_out_c_ready; // @[XSCore.scala 213:28]
  wire  memBlock_auto_dcache_client_out_c_valid; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_auto_dcache_client_out_c_bits_opcode; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_auto_dcache_client_out_c_bits_param; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_auto_dcache_client_out_c_bits_size; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_auto_dcache_client_out_c_bits_source; // @[XSCore.scala 213:28]
  wire [35:0] memBlock_auto_dcache_client_out_c_bits_address; // @[XSCore.scala 213:28]
  wire [255:0] memBlock_auto_dcache_client_out_c_bits_data; // @[XSCore.scala 213:28]
  wire  memBlock_auto_dcache_client_out_d_ready; // @[XSCore.scala 213:28]
  wire  memBlock_auto_dcache_client_out_d_valid; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_auto_dcache_client_out_d_bits_opcode; // @[XSCore.scala 213:28]
  wire [1:0] memBlock_auto_dcache_client_out_d_bits_param; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_auto_dcache_client_out_d_bits_size; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_auto_dcache_client_out_d_bits_source; // @[XSCore.scala 213:28]
  wire [8:0] memBlock_auto_dcache_client_out_d_bits_sink; // @[XSCore.scala 213:28]
  wire  memBlock_auto_dcache_client_out_d_bits_denied; // @[XSCore.scala 213:28]
  wire [255:0] memBlock_auto_dcache_client_out_d_bits_data; // @[XSCore.scala 213:28]
  wire  memBlock_auto_dcache_client_out_d_bits_corrupt; // @[XSCore.scala 213:28]
  wire  memBlock_auto_dcache_client_out_e_ready; // @[XSCore.scala 213:28]
  wire  memBlock_auto_dcache_client_out_e_valid; // @[XSCore.scala 213:28]
  wire [8:0] memBlock_auto_dcache_client_out_e_bits_sink; // @[XSCore.scala 213:28]
  wire [7:0] memBlock_io_hartId; // @[XSCore.scala 213:28]
  wire  memBlock_io_redirect_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_redirect_bits_robIdx_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_redirect_bits_robIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_redirect_bits_level; // @[XSCore.scala 213:28]
  wire [1:0] memBlock_io_ooo_to_mem_loadFastMatch_0; // @[XSCore.scala 213:28]
  wire [1:0] memBlock_io_ooo_to_mem_loadFastMatch_1; // @[XSCore.scala 213:28]
  wire [6:0] memBlock_io_ooo_to_mem_loadFastFuOpType_0; // @[XSCore.scala 213:28]
  wire [6:0] memBlock_io_ooo_to_mem_loadFastFuOpType_1; // @[XSCore.scala 213:28]
  wire [11:0] memBlock_io_ooo_to_mem_loadFastImm_0; // @[XSCore.scala 213:28]
  wire [11:0] memBlock_io_ooo_to_mem_loadFastImm_1; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_sfence_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_sfence_bits_rs1; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_sfence_bits_rs2; // @[XSCore.scala 213:28]
  wire [38:0] memBlock_io_ooo_to_mem_sfence_bits_addr; // @[XSCore.scala 213:28]
  wire [15:0] memBlock_io_ooo_to_mem_sfence_bits_asid; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_tlbCsr_satp_mode; // @[XSCore.scala 213:28]
  wire [15:0] memBlock_io_ooo_to_mem_tlbCsr_satp_asid; // @[XSCore.scala 213:28]
  wire [43:0] memBlock_io_ooo_to_mem_tlbCsr_satp_ppn; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_tlbCsr_satp_changed; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_tlbCsr_priv_mxr; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_tlbCsr_priv_sum; // @[XSCore.scala 213:28]
  wire [1:0] memBlock_io_ooo_to_mem_tlbCsr_priv_dmode; // @[XSCore.scala 213:28]
  wire [1:0] memBlock_io_ooo_to_mem_lsqio_scommit; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_lsqio_pendingld; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_lsqio_pendingst; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_lsqio_commit; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_lsqio_pendingPtr_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_ooo_to_mem_lsqio_pendingPtr_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_isStore; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_l2_pf_store_only; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_icache_parity_enable; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_ooo_to_mem_csrCtrl_lvpred_timeout; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_bp_ctrl_ubtb_enable; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_bp_ctrl_btb_enable; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_bp_ctrl_tage_enable; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_bp_ctrl_sc_enable; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_bp_ctrl_ras_enable; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_ldld_vio_check_enable; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_cache_error_enable; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_uncache_write_outstanding_enable; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_fusion_enable; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_wfi_enable; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_svinval_enable; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_distribute_csr_wvalid; // @[XSCore.scala 213:28]
  wire [11:0] memBlock_io_ooo_to_mem_csrCtrl_distribute_csr_waddr; // @[XSCore.scala 213:28]
  wire [63:0] memBlock_io_ooo_to_mem_csrCtrl_distribute_csr_wdata; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_singlestep; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_valid; // @[XSCore.scala 213:28]
  wire [1:0] memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_addr; // @[XSCore.scala 213:28]
  wire [1:0] memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_matchType; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_select; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_timing; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_chain; // @[XSCore.scala 213:28]
  wire [63:0] memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_tdata2; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_mem_trigger_t_valid; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_addr; // @[XSCore.scala 213:28]
  wire [1:0] memBlock_io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_tdata_matchType; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_tdata_select; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_tdata_chain; // @[XSCore.scala 213:28]
  wire [63:0] memBlock_io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_tdata_tdata2; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_1; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_2; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_3; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_4; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_5; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_6; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_7; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_8; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_9; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_enqLsq_canAccept; // @[XSCore.scala 213:28]
  wire [1:0] memBlock_io_ooo_to_mem_enqLsq_needAlloc_0; // @[XSCore.scala 213:28]
  wire [1:0] memBlock_io_ooo_to_mem_enqLsq_needAlloc_1; // @[XSCore.scala 213:28]
  wire [1:0] memBlock_io_ooo_to_mem_enqLsq_needAlloc_2; // @[XSCore.scala 213:28]
  wire [1:0] memBlock_io_ooo_to_mem_enqLsq_needAlloc_3; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_enqLsq_req_0_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_enqLsq_req_0_bits_cf_trigger_backendEn_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_enqLsq_req_0_bits_cf_storeSetHit; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_ooo_to_mem_enqLsq_req_0_bits_cf_ssid; // @[XSCore.scala 213:28]
  wire [6:0] memBlock_io_ooo_to_mem_enqLsq_req_0_bits_ctrl_fuOpType; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_enqLsq_req_0_bits_robIdx_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_ooo_to_mem_enqLsq_req_0_bits_robIdx_value; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_enqLsq_req_0_bits_lqIdx_value; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_enqLsq_req_0_bits_sqIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_enqLsq_req_1_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_enqLsq_req_1_bits_cf_trigger_backendEn_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_enqLsq_req_1_bits_cf_storeSetHit; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_ooo_to_mem_enqLsq_req_1_bits_cf_ssid; // @[XSCore.scala 213:28]
  wire [6:0] memBlock_io_ooo_to_mem_enqLsq_req_1_bits_ctrl_fuOpType; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_enqLsq_req_1_bits_robIdx_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_ooo_to_mem_enqLsq_req_1_bits_robIdx_value; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_enqLsq_req_1_bits_lqIdx_value; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_enqLsq_req_1_bits_sqIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_enqLsq_req_2_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_enqLsq_req_2_bits_cf_trigger_backendEn_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_enqLsq_req_2_bits_cf_storeSetHit; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_ooo_to_mem_enqLsq_req_2_bits_cf_ssid; // @[XSCore.scala 213:28]
  wire [6:0] memBlock_io_ooo_to_mem_enqLsq_req_2_bits_ctrl_fuOpType; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_enqLsq_req_2_bits_robIdx_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_ooo_to_mem_enqLsq_req_2_bits_robIdx_value; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_enqLsq_req_2_bits_lqIdx_value; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_enqLsq_req_2_bits_sqIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_enqLsq_req_3_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_enqLsq_req_3_bits_cf_trigger_backendEn_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_enqLsq_req_3_bits_cf_storeSetHit; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_ooo_to_mem_enqLsq_req_3_bits_cf_ssid; // @[XSCore.scala 213:28]
  wire [6:0] memBlock_io_ooo_to_mem_enqLsq_req_3_bits_ctrl_fuOpType; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_enqLsq_req_3_bits_robIdx_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_ooo_to_mem_enqLsq_req_3_bits_robIdx_value; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_enqLsq_req_3_bits_lqIdx_value; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_enqLsq_req_3_bits_sqIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_flushSb; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_0_ready; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_0_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_trigger_backendEn_1; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_storeSetHit; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_loadWaitStrict; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_ssid; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_ftqPtr_flag; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_ftqPtr_value; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_ftqOffset; // @[XSCore.scala 213:28]
  wire [6:0] memBlock_io_ooo_to_mem_issue_0_bits_uop_ctrl_fuOpType; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_0_bits_uop_ctrl_rfWen; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_0_bits_uop_ctrl_fpWen; // @[XSCore.scala 213:28]
  wire [19:0] memBlock_io_ooo_to_mem_issue_0_bits_uop_ctrl_imm; // @[XSCore.scala 213:28]
  wire [5:0] memBlock_io_ooo_to_mem_issue_0_bits_uop_pdest; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_0_bits_uop_robIdx_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_ooo_to_mem_issue_0_bits_uop_robIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_0_bits_uop_lqIdx_flag; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_issue_0_bits_uop_lqIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_0_bits_uop_sqIdx_flag; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_issue_0_bits_uop_sqIdx_value; // @[XSCore.scala 213:28]
  wire [63:0] memBlock_io_ooo_to_mem_issue_0_bits_src_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_1_ready; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_1_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_trigger_backendEn_1; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_storeSetHit; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_loadWaitStrict; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_ssid; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_ftqPtr_flag; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_ftqPtr_value; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_ftqOffset; // @[XSCore.scala 213:28]
  wire [6:0] memBlock_io_ooo_to_mem_issue_1_bits_uop_ctrl_fuOpType; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_1_bits_uop_ctrl_rfWen; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_1_bits_uop_ctrl_fpWen; // @[XSCore.scala 213:28]
  wire [19:0] memBlock_io_ooo_to_mem_issue_1_bits_uop_ctrl_imm; // @[XSCore.scala 213:28]
  wire [5:0] memBlock_io_ooo_to_mem_issue_1_bits_uop_pdest; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_1_bits_uop_robIdx_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_ooo_to_mem_issue_1_bits_uop_robIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_1_bits_uop_lqIdx_flag; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_issue_1_bits_uop_lqIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_1_bits_uop_sqIdx_flag; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_issue_1_bits_uop_sqIdx_value; // @[XSCore.scala 213:28]
  wire [63:0] memBlock_io_ooo_to_mem_issue_1_bits_src_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_2_ready; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_2_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_2_bits_uop_cf_trigger_backendEn_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_2_bits_uop_cf_trigger_backendEn_1; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_ooo_to_mem_issue_2_bits_uop_cf_ftqPtr_value; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_ooo_to_mem_issue_2_bits_uop_cf_ftqOffset; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_issue_2_bits_uop_ctrl_fuType; // @[XSCore.scala 213:28]
  wire [6:0] memBlock_io_ooo_to_mem_issue_2_bits_uop_ctrl_fuOpType; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_2_bits_uop_ctrl_rfWen; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_2_bits_uop_ctrl_fpWen; // @[XSCore.scala 213:28]
  wire [19:0] memBlock_io_ooo_to_mem_issue_2_bits_uop_ctrl_imm; // @[XSCore.scala 213:28]
  wire [5:0] memBlock_io_ooo_to_mem_issue_2_bits_uop_pdest; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_2_bits_uop_robIdx_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_ooo_to_mem_issue_2_bits_uop_robIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_2_bits_uop_lqIdx_flag; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_issue_2_bits_uop_lqIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_2_bits_uop_sqIdx_flag; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_issue_2_bits_uop_sqIdx_value; // @[XSCore.scala 213:28]
  wire [63:0] memBlock_io_ooo_to_mem_issue_2_bits_src_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_3_ready; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_3_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_3_bits_uop_cf_trigger_backendEn_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_3_bits_uop_cf_trigger_backendEn_1; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_ooo_to_mem_issue_3_bits_uop_cf_ftqPtr_value; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_ooo_to_mem_issue_3_bits_uop_cf_ftqOffset; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_issue_3_bits_uop_ctrl_fuType; // @[XSCore.scala 213:28]
  wire [6:0] memBlock_io_ooo_to_mem_issue_3_bits_uop_ctrl_fuOpType; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_3_bits_uop_ctrl_rfWen; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_3_bits_uop_ctrl_fpWen; // @[XSCore.scala 213:28]
  wire [19:0] memBlock_io_ooo_to_mem_issue_3_bits_uop_ctrl_imm; // @[XSCore.scala 213:28]
  wire [5:0] memBlock_io_ooo_to_mem_issue_3_bits_uop_pdest; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_3_bits_uop_robIdx_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_ooo_to_mem_issue_3_bits_uop_robIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_3_bits_uop_lqIdx_flag; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_issue_3_bits_uop_lqIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_3_bits_uop_sqIdx_flag; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_issue_3_bits_uop_sqIdx_value; // @[XSCore.scala 213:28]
  wire [63:0] memBlock_io_ooo_to_mem_issue_3_bits_src_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_4_ready; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_4_valid; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_issue_4_bits_uop_ctrl_fuType; // @[XSCore.scala 213:28]
  wire [6:0] memBlock_io_ooo_to_mem_issue_4_bits_uop_ctrl_fuOpType; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_4_bits_uop_robIdx_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_ooo_to_mem_issue_4_bits_uop_robIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_4_bits_uop_sqIdx_flag; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_issue_4_bits_uop_sqIdx_value; // @[XSCore.scala 213:28]
  wire [63:0] memBlock_io_ooo_to_mem_issue_4_bits_src_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_5_ready; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_5_valid; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_issue_5_bits_uop_ctrl_fuType; // @[XSCore.scala 213:28]
  wire [6:0] memBlock_io_ooo_to_mem_issue_5_bits_uop_ctrl_fuOpType; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_5_bits_uop_robIdx_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_ooo_to_mem_issue_5_bits_uop_robIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_ooo_to_mem_issue_5_bits_uop_sqIdx_flag; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_ooo_to_mem_issue_5_bits_uop_sqIdx_value; // @[XSCore.scala 213:28]
  wire [63:0] memBlock_io_ooo_to_mem_issue_5_bits_src_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_otherFastWakeup_0_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_otherFastWakeup_0_bits_ctrl_rfWen; // @[XSCore.scala 213:28]
  wire [5:0] memBlock_io_mem_to_ooo_otherFastWakeup_0_bits_pdest; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_otherFastWakeup_1_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_otherFastWakeup_1_bits_ctrl_rfWen; // @[XSCore.scala 213:28]
  wire [5:0] memBlock_io_mem_to_ooo_otherFastWakeup_1_bits_pdest; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_csrUpdate_wvalid; // @[XSCore.scala 213:28]
  wire [11:0] memBlock_io_mem_to_ooo_csrUpdate_waddr; // @[XSCore.scala 213:28]
  wire [63:0] memBlock_io_mem_to_ooo_csrUpdate_wdata; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_mem_to_ooo_lqCancelCnt; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_mem_to_ooo_sqCancelCnt; // @[XSCore.scala 213:28]
  wire [1:0] memBlock_io_mem_to_ooo_sqDeq; // @[XSCore.scala 213:28]
  wire [1:0] memBlock_io_mem_to_ooo_lqDeq; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_memoryViolation_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_memoryViolation_bits_robIdx_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_mem_to_ooo_memoryViolation_bits_robIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_memoryViolation_bits_ftqIdx_flag; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_mem_to_ooo_memoryViolation_bits_ftqIdx_value; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_mem_to_ooo_memoryViolation_bits_ftqOffset; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_mem_to_ooo_memoryViolation_bits_stFtqIdx_value; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_mem_to_ooo_memoryViolation_bits_stFtqOffset; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_sbIsEmpty; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_mem_to_ooo_lsTopdownInfo_0_s1_robIdx; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_lsTopdownInfo_0_s1_vaddr_valid; // @[XSCore.scala 213:28]
  wire [38:0] memBlock_io_mem_to_ooo_lsTopdownInfo_0_s1_vaddr_bits; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_mem_to_ooo_lsTopdownInfo_0_s2_robIdx; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_lsTopdownInfo_0_s2_paddr_valid; // @[XSCore.scala 213:28]
  wire [35:0] memBlock_io_mem_to_ooo_lsTopdownInfo_0_s2_paddr_bits; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_mem_to_ooo_lsTopdownInfo_1_s1_robIdx; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_lsTopdownInfo_1_s1_vaddr_valid; // @[XSCore.scala 213:28]
  wire [38:0] memBlock_io_mem_to_ooo_lsTopdownInfo_1_s1_vaddr_bits; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_mem_to_ooo_lsTopdownInfo_1_s2_robIdx; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_lsTopdownInfo_1_s2_paddr_valid; // @[XSCore.scala 213:28]
  wire [35:0] memBlock_io_mem_to_ooo_lsTopdownInfo_1_s2_paddr_bits; // @[XSCore.scala 213:28]
  wire [38:0] memBlock_io_mem_to_ooo_lsqio_vaddr; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_lsqio_mmio_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_lsqio_mmio_1; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_mem_to_ooo_lsqio_uop_0_robIdx_value; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_mem_to_ooo_lsqio_uop_1_robIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_0_ready; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_0_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendEn_1; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_0_bits_uop_ctrl_rfWen; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_0_bits_uop_ctrl_fpWen; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_0_bits_uop_ctrl_replayInst; // @[XSCore.scala 213:28]
  wire [5:0] memBlock_io_mem_to_ooo_writeback_0_bits_uop_pdest; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_0_bits_uop_robIdx_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_mem_to_ooo_writeback_0_bits_uop_robIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_0_bits_uop_lqIdx_flag; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_mem_to_ooo_writeback_0_bits_uop_lqIdx_value; // @[XSCore.scala 213:28]
  wire [63:0] memBlock_io_mem_to_ooo_writeback_0_bits_data; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_0_bits_debug_isMMIO; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_1_ready; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_1_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendEn_1; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_1_bits_uop_ctrl_rfWen; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_1_bits_uop_ctrl_fpWen; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_1_bits_uop_ctrl_replayInst; // @[XSCore.scala 213:28]
  wire [5:0] memBlock_io_mem_to_ooo_writeback_1_bits_uop_pdest; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_1_bits_uop_robIdx_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_mem_to_ooo_writeback_1_bits_uop_robIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_1_bits_uop_lqIdx_flag; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_mem_to_ooo_writeback_1_bits_uop_lqIdx_value; // @[XSCore.scala 213:28]
  wire [63:0] memBlock_io_mem_to_ooo_writeback_1_bits_data; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_1_bits_debug_isMMIO; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_2_ready; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_2_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_6; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_7; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_15; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendEn_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_2_bits_uop_robIdx_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_mem_to_ooo_writeback_2_bits_uop_robIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_2_bits_uop_lqIdx_flag; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_mem_to_ooo_writeback_2_bits_uop_lqIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_2_bits_debug_isMMIO; // @[XSCore.scala 213:28]
  wire [38:0] memBlock_io_mem_to_ooo_writeback_2_bits_debug_vaddr; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_3_ready; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_3_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_exceptionVec_6; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_exceptionVec_7; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_exceptionVec_15; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_trigger_backendEn_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_3_bits_uop_robIdx_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_mem_to_ooo_writeback_3_bits_uop_robIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_3_bits_uop_lqIdx_flag; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_mem_to_ooo_writeback_3_bits_uop_lqIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_3_bits_debug_isMMIO; // @[XSCore.scala 213:28]
  wire [38:0] memBlock_io_mem_to_ooo_writeback_3_bits_debug_vaddr; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_4_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_4_bits_uop_robIdx_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_mem_to_ooo_writeback_4_bits_uop_robIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_5_valid; // @[XSCore.scala 213:28]
  wire  memBlock_io_mem_to_ooo_writeback_5_bits_uop_robIdx_flag; // @[XSCore.scala 213:28]
  wire [4:0] memBlock_io_mem_to_ooo_writeback_5_bits_uop_robIdx_value; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_req_0_ready; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_req_0_valid; // @[XSCore.scala 213:28]
  wire [26:0] memBlock_io_fetch_to_mem_itlb_req_0_bits_vpn; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_resp_valid; // @[XSCore.scala 213:28]
  wire [23:0] memBlock_io_fetch_to_mem_itlb_resp_bits_entry_tag; // @[XSCore.scala 213:28]
  wire [15:0] memBlock_io_fetch_to_mem_itlb_resp_bits_entry_asid; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_d; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_a; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_g; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_u; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_x; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_w; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_r; // @[XSCore.scala 213:28]
  wire [1:0] memBlock_io_fetch_to_mem_itlb_resp_bits_entry_level; // @[XSCore.scala 213:28]
  wire [20:0] memBlock_io_fetch_to_mem_itlb_resp_bits_entry_ppn; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_0; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_1; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_2; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_3; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_4; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_5; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_6; // @[XSCore.scala 213:28]
  wire [2:0] memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_7; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_0; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_1; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_2; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_3; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_4; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_5; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_6; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_7; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_resp_bits_pf; // @[XSCore.scala 213:28]
  wire  memBlock_io_fetch_to_mem_itlb_resp_bits_af; // @[XSCore.scala 213:28]
  wire  memBlock_io_rsfeedback_0_feedbackSlow_valid; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_rsfeedback_0_feedbackSlow_bits_rsIdx; // @[XSCore.scala 213:28]
  wire  memBlock_io_rsfeedback_0_feedbackSlow_bits_hit; // @[XSCore.scala 213:28]
  wire  memBlock_io_rsfeedback_0_feedbackFast_valid; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_rsfeedback_0_feedbackFast_bits_rsIdx; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_rsfeedback_0_rsIdx; // @[XSCore.scala 213:28]
  wire  memBlock_io_rsfeedback_1_feedbackSlow_valid; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_rsfeedback_1_feedbackSlow_bits_rsIdx; // @[XSCore.scala 213:28]
  wire  memBlock_io_rsfeedback_1_feedbackSlow_bits_hit; // @[XSCore.scala 213:28]
  wire  memBlock_io_rsfeedback_1_feedbackFast_valid; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_rsfeedback_1_feedbackFast_bits_rsIdx; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_rsfeedback_1_rsIdx; // @[XSCore.scala 213:28]
  wire  memBlock_io_rsfeedback_2_feedbackSlow_valid; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_rsfeedback_2_feedbackSlow_bits_rsIdx; // @[XSCore.scala 213:28]
  wire  memBlock_io_rsfeedback_2_feedbackSlow_bits_hit; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_rsfeedback_2_rsIdx; // @[XSCore.scala 213:28]
  wire  memBlock_io_rsfeedback_3_feedbackSlow_valid; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_rsfeedback_3_feedbackSlow_bits_rsIdx; // @[XSCore.scala 213:28]
  wire  memBlock_io_rsfeedback_3_feedbackSlow_bits_hit; // @[XSCore.scala 213:28]
  wire [3:0] memBlock_io_rsfeedback_3_rsIdx; // @[XSCore.scala 213:28]
  wire [35:0] memBlock_io_error_paddr; // @[XSCore.scala 213:28]
  wire  memBlock_io_error_report_to_beu; // @[XSCore.scala 213:28]
  wire  memBlock_io_l2_hint_valid; // @[XSCore.scala 213:28]
  wire [1:0] memBlock_io_l2_hint_bits_sourceId; // @[XSCore.scala 213:28]
  wire [5:0] memBlock_io_perf_0_value; // @[XSCore.scala 213:28]
  wire [5:0] memBlock_io_perf_1_value; // @[XSCore.scala 213:28]
  wire [5:0] memBlock_io_perf_2_value; // @[XSCore.scala 213:28]
  wire [5:0] memBlock_io_perf_3_value; // @[XSCore.scala 213:28]
  wire [5:0] memBlock_io_perf_4_value; // @[XSCore.scala 213:28]
  wire [5:0] memBlock_io_perf_5_value; // @[XSCore.scala 213:28]
  wire [5:0] memBlock_io_perf_6_value; // @[XSCore.scala 213:28]
  wire [5:0] memBlock_io_perf_7_value; // @[XSCore.scala 213:28]
  wire  memBlock_sourceVaddr_valid; // @[XSCore.scala 213:28]
  wire [38:0] memBlock_sourceVaddr_bits; // @[XSCore.scala 213:28]
  wire  wb2Ctrl_clock; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_reset; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_redirect_valid; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_redirect_bits_robIdx_flag; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_redirect_bits_robIdx_value; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_redirect_bits_level; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_3_ready; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_3_valid; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_3_bits_uop_cf_exceptionVec_2; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_3_bits_uop_cf_exceptionVec_3; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_3_bits_uop_cf_exceptionVec_8; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_3_bits_uop_cf_exceptionVec_9; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_3_bits_uop_cf_exceptionVec_11; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_3_bits_uop_ctrl_flushPipe; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_3_bits_uop_robIdx_flag; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_in_3_bits_uop_robIdx_value; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_in_3_bits_fflags; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_4_ready; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_4_valid; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_4_bits_uop_robIdx_flag; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_in_4_bits_uop_robIdx_value; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_in_4_bits_fflags; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_5_ready; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_5_valid; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_5_bits_uop_robIdx_flag; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_in_5_bits_uop_robIdx_value; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_in_5_bits_fflags; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_6_ready; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_6_valid; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_6_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_6_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_6_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_6_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_6_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_6_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_6_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_6_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_6_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_6_bits_uop_ctrl_replayInst; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_6_bits_uop_robIdx_flag; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_in_6_bits_uop_robIdx_value; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_7_ready; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_7_valid; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_7_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_7_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_7_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_7_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_7_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_7_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_7_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_7_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_7_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_7_bits_uop_ctrl_replayInst; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_7_bits_uop_robIdx_flag; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_in_7_bits_uop_robIdx_value; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_8_ready; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_8_valid; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_8_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_8_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_8_bits_uop_cf_exceptionVec_6; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_8_bits_uop_cf_exceptionVec_7; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_8_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_8_bits_uop_cf_exceptionVec_15; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_8_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_8_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_8_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_8_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_8_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_8_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_8_bits_uop_robIdx_flag; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_in_8_bits_uop_robIdx_value; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_9_ready; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_9_valid; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_9_bits_uop_cf_exceptionVec_6; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_9_bits_uop_cf_exceptionVec_7; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_9_bits_uop_cf_exceptionVec_15; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_9_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_9_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_9_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_in_9_bits_uop_robIdx_flag; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_in_9_bits_uop_robIdx_value; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_3_valid; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_3_bits_uop_cf_exceptionVec_2; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_3_bits_uop_cf_exceptionVec_3; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_3_bits_uop_cf_exceptionVec_8; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_3_bits_uop_cf_exceptionVec_9; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_3_bits_uop_cf_exceptionVec_11; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_3_bits_uop_ctrl_flushPipe; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_3_bits_uop_robIdx_flag; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_out_3_bits_uop_robIdx_value; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_out_3_bits_fflags; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_4_valid; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_4_bits_uop_robIdx_flag; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_out_4_bits_uop_robIdx_value; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_out_4_bits_fflags; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_5_valid; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_5_bits_uop_robIdx_flag; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_out_5_bits_uop_robIdx_value; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_out_5_bits_fflags; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_6_valid; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_6_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_6_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_6_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_6_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_6_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_6_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_6_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_6_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_6_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_6_bits_uop_ctrl_replayInst; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_6_bits_uop_robIdx_flag; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_out_6_bits_uop_robIdx_value; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_7_valid; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_7_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_7_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_7_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_7_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_7_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_7_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_7_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_7_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_7_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_7_bits_uop_ctrl_replayInst; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_7_bits_uop_robIdx_flag; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_out_7_bits_uop_robIdx_value; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_8_valid; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_8_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_8_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_8_bits_uop_cf_exceptionVec_6; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_8_bits_uop_cf_exceptionVec_7; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_8_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_8_bits_uop_cf_exceptionVec_15; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_8_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_8_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_8_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_8_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_8_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_8_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_8_bits_uop_robIdx_flag; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_out_8_bits_uop_robIdx_value; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_9_valid; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_9_bits_uop_cf_exceptionVec_6; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_9_bits_uop_cf_exceptionVec_7; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_9_bits_uop_cf_exceptionVec_15; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_9_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_9_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_9_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 219:27]
  wire  wb2Ctrl_io_out_9_bits_uop_robIdx_flag; // @[XSCore.scala 219:27]
  wire [4:0] wb2Ctrl_io_out_9_bits_uop_robIdx_value; // @[XSCore.scala 219:27]
  wire  ctrlBlock_clock; // @[XSCore.scala 222:29]
  wire  ctrlBlock_reset; // @[XSCore.scala 222:29]
  wire [7:0] ctrlBlock_io_hartId; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_cpu_halt; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_0_ready; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_0_valid; // @[XSCore.scala 222:29]
  wire [31:0] ctrlBlock_io_frontend_cfVec_0_bits_instr; // @[XSCore.scala 222:29]
  wire [9:0] ctrlBlock_io_frontend_cfVec_0_bits_foldpc; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_0_bits_exceptionVec_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_0_bits_exceptionVec_12; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_0_bits_trigger_frontendHit_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_0_bits_trigger_frontendHit_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_0_bits_trigger_frontendHit_2; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_0_bits_trigger_frontendHit_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_0_bits_trigger_backendEn_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_0_bits_trigger_backendEn_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_0_bits_pd_isRVC; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_frontend_cfVec_0_bits_pd_brType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_0_bits_pd_isCall; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_0_bits_pd_isRet; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_0_bits_pred_taken; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_0_bits_crossPageIPFFix; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_0_bits_ftqPtr_flag; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_frontend_cfVec_0_bits_ftqPtr_value; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_frontend_cfVec_0_bits_ftqOffset; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_1_ready; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_1_valid; // @[XSCore.scala 222:29]
  wire [31:0] ctrlBlock_io_frontend_cfVec_1_bits_instr; // @[XSCore.scala 222:29]
  wire [9:0] ctrlBlock_io_frontend_cfVec_1_bits_foldpc; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_1_bits_exceptionVec_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_1_bits_exceptionVec_12; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_1_bits_trigger_frontendHit_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_1_bits_trigger_frontendHit_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_1_bits_trigger_frontendHit_2; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_1_bits_trigger_frontendHit_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_1_bits_trigger_backendEn_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_1_bits_trigger_backendEn_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_1_bits_pd_isRVC; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_frontend_cfVec_1_bits_pd_brType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_1_bits_pd_isCall; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_1_bits_pd_isRet; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_1_bits_pred_taken; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_1_bits_crossPageIPFFix; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_cfVec_1_bits_ftqPtr_flag; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_frontend_cfVec_1_bits_ftqPtr_value; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_frontend_cfVec_1_bits_ftqOffset; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_stallReason_backReason_valid; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_frontend_stallReason_backReason_bits; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_fromFtq_pc_mem_wen; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_frontend_fromFtq_pc_mem_waddr; // @[XSCore.scala 222:29]
  wire [38:0] ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_startAddr; // @[XSCore.scala 222:29]
  wire [38:0] ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_nextLineAddr; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_2; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_6; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_7; // @[XSCore.scala 222:29]
  wire [38:0] ctrlBlock_io_frontend_fromFtq_newest_entry_target; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_fromFtq_newest_entry_ptr_flag; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_frontend_fromFtq_newest_entry_ptr_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_toFtq_rob_commits_0_valid; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_frontend_toFtq_rob_commits_0_bits_commitType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_toFtq_rob_commits_0_bits_ftqIdx_flag; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_frontend_toFtq_rob_commits_0_bits_ftqIdx_value; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_frontend_toFtq_rob_commits_0_bits_ftqOffset; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_toFtq_rob_commits_1_valid; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_frontend_toFtq_rob_commits_1_bits_commitType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_toFtq_rob_commits_1_bits_ftqIdx_flag; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_frontend_toFtq_rob_commits_1_bits_ftqIdx_value; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_frontend_toFtq_rob_commits_1_bits_ftqOffset; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_toFtq_redirect_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_toFtq_redirect_bits_ftqIdx_flag; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_frontend_toFtq_redirect_bits_ftqIdx_value; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_frontend_toFtq_redirect_bits_ftqOffset; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_toFtq_redirect_bits_level; // @[XSCore.scala 222:29]
  wire [38:0] ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_pc; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_pd_isRVC; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_pd_brType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_pd_isCall; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_pd_isRet; // @[XSCore.scala 222:29]
  wire [38:0] ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_target; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_taken; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_isMisPred; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_toFtq_redirect_bits_debugIsCtrl; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_frontend_toFtq_redirect_bits_debugIsMemVio; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_allocPregs_0_isInt; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_allocPregs_0_isFp; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_allocPregs_0_preg; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_allocPregs_1_isInt; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_allocPregs_1_isFp; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_allocPregs_1_preg; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_cf_trigger_backendEn_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_cf_trigger_backendEn_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_cf_pd_isRVC; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_0_bits_cf_pd_brType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_cf_pd_isCall; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_cf_pd_isRet; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_cf_pred_taken; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_cf_storeSetHit; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_cf_loadWaitStrict; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_dispatch_0_bits_cf_ssid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_cf_ftqPtr_flag; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_dispatch_0_bits_cf_ftqPtr_value; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_dispatch_0_bits_cf_ftqOffset; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_0_bits_ctrl_srcType_0; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_0_bits_ctrl_srcType_1; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_dispatch_0_bits_ctrl_fuType; // @[XSCore.scala 222:29]
  wire [6:0] ctrlBlock_io_dispatch_0_bits_ctrl_fuOpType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_ctrl_rfWen; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_ctrl_fpWen; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_dispatch_0_bits_ctrl_selImm; // @[XSCore.scala 222:29]
  wire [19:0] ctrlBlock_io_dispatch_0_bits_ctrl_imm; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_ctrl_fpu_isAddSub; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_ctrl_fpu_typeTagIn; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_ctrl_fpu_typeTagOut; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_ctrl_fpu_fromInt; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_ctrl_fpu_wflags; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_ctrl_fpu_fpWen; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_0_bits_ctrl_fpu_fmaCmd; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_ctrl_fpu_div; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_ctrl_fpu_sqrt; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_ctrl_fpu_fcvt; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_0_bits_ctrl_fpu_typ; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_0_bits_ctrl_fpu_fmt; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_ctrl_fpu_ren3; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_dispatch_0_bits_ctrl_fpu_rm; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_0_bits_psrc_0; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_0_bits_psrc_1; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_0_bits_pdest; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_dispatch_0_bits_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_lqIdx_flag; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_dispatch_0_bits_lqIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_0_bits_sqIdx_flag; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_dispatch_0_bits_sqIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_1_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_1_bits_cf_trigger_backendEn_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_1_bits_cf_trigger_backendEn_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_1_bits_cf_pd_isRVC; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_1_bits_cf_pd_brType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_1_bits_cf_pd_isCall; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_1_bits_cf_pd_isRet; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_1_bits_cf_pred_taken; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_1_bits_cf_storeSetHit; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_1_bits_cf_loadWaitStrict; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_dispatch_1_bits_cf_ssid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_1_bits_cf_ftqPtr_flag; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_dispatch_1_bits_cf_ftqPtr_value; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_dispatch_1_bits_cf_ftqOffset; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_1_bits_ctrl_srcType_0; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_1_bits_ctrl_srcType_1; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_dispatch_1_bits_ctrl_fuType; // @[XSCore.scala 222:29]
  wire [6:0] ctrlBlock_io_dispatch_1_bits_ctrl_fuOpType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_1_bits_ctrl_rfWen; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_1_bits_ctrl_fpWen; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_dispatch_1_bits_ctrl_selImm; // @[XSCore.scala 222:29]
  wire [19:0] ctrlBlock_io_dispatch_1_bits_ctrl_imm; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_1_bits_psrc_0; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_1_bits_psrc_1; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_1_bits_pdest; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_1_bits_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_dispatch_1_bits_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_1_bits_lqIdx_flag; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_dispatch_1_bits_lqIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_1_bits_sqIdx_flag; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_dispatch_1_bits_sqIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_4_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_4_bits_cf_trigger_backendEn_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_4_bits_cf_trigger_backendEn_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_4_bits_cf_pd_isRVC; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_4_bits_cf_pd_brType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_4_bits_cf_pd_isCall; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_4_bits_cf_pd_isRet; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_4_bits_cf_pred_taken; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_4_bits_cf_storeSetHit; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_4_bits_cf_loadWaitStrict; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_dispatch_4_bits_cf_ssid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_4_bits_cf_ftqPtr_flag; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_dispatch_4_bits_cf_ftqPtr_value; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_dispatch_4_bits_cf_ftqOffset; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_4_bits_ctrl_srcType_0; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_4_bits_ctrl_srcType_1; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_dispatch_4_bits_ctrl_fuType; // @[XSCore.scala 222:29]
  wire [6:0] ctrlBlock_io_dispatch_4_bits_ctrl_fuOpType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_4_bits_ctrl_rfWen; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_4_bits_ctrl_fpWen; // @[XSCore.scala 222:29]
  wire [19:0] ctrlBlock_io_dispatch_4_bits_ctrl_imm; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_4_bits_psrc_0; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_4_bits_psrc_1; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_4_bits_pdest; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_4_bits_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_dispatch_4_bits_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_5_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_5_bits_cf_trigger_backendEn_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_5_bits_cf_trigger_backendEn_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_5_bits_cf_pd_isRVC; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_5_bits_cf_pd_brType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_5_bits_cf_pd_isCall; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_5_bits_cf_pd_isRet; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_5_bits_cf_pred_taken; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_5_bits_cf_storeSetHit; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_5_bits_cf_loadWaitStrict; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_dispatch_5_bits_cf_ssid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_5_bits_cf_ftqPtr_flag; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_dispatch_5_bits_cf_ftqPtr_value; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_dispatch_5_bits_cf_ftqOffset; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_5_bits_ctrl_srcType_0; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_5_bits_ctrl_srcType_1; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_dispatch_5_bits_ctrl_fuType; // @[XSCore.scala 222:29]
  wire [6:0] ctrlBlock_io_dispatch_5_bits_ctrl_fuOpType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_5_bits_ctrl_rfWen; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_5_bits_ctrl_fpWen; // @[XSCore.scala 222:29]
  wire [19:0] ctrlBlock_io_dispatch_5_bits_ctrl_imm; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_5_bits_psrc_0; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_5_bits_psrc_1; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_5_bits_pdest; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_5_bits_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_dispatch_5_bits_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_6_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_6_bits_cf_trigger_backendEn_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_6_bits_cf_trigger_backendEn_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_6_bits_cf_pd_isRVC; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_6_bits_cf_pd_brType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_6_bits_cf_pd_isCall; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_6_bits_cf_pd_isRet; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_6_bits_cf_pred_taken; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_6_bits_cf_storeSetHit; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_6_bits_cf_loadWaitStrict; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_dispatch_6_bits_cf_ssid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_6_bits_cf_ftqPtr_flag; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_dispatch_6_bits_cf_ftqPtr_value; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_dispatch_6_bits_cf_ftqOffset; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_6_bits_ctrl_srcType_0; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_6_bits_ctrl_srcType_1; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_dispatch_6_bits_ctrl_fuType; // @[XSCore.scala 222:29]
  wire [6:0] ctrlBlock_io_dispatch_6_bits_ctrl_fuOpType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_6_bits_ctrl_rfWen; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_6_bits_ctrl_fpWen; // @[XSCore.scala 222:29]
  wire [19:0] ctrlBlock_io_dispatch_6_bits_ctrl_imm; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_6_bits_psrc_0; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_6_bits_psrc_1; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_6_bits_pdest; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_6_bits_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_dispatch_6_bits_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_7_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_7_bits_cf_trigger_backendEn_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_7_bits_cf_trigger_backendEn_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_7_bits_cf_pd_isRVC; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_7_bits_cf_pd_brType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_7_bits_cf_pd_isCall; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_7_bits_cf_pd_isRet; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_7_bits_cf_pred_taken; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_7_bits_cf_storeSetHit; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_7_bits_cf_loadWaitStrict; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_dispatch_7_bits_cf_ssid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_7_bits_cf_ftqPtr_flag; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_dispatch_7_bits_cf_ftqPtr_value; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_dispatch_7_bits_cf_ftqOffset; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_7_bits_ctrl_srcType_0; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_7_bits_ctrl_srcType_1; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_dispatch_7_bits_ctrl_fuType; // @[XSCore.scala 222:29]
  wire [6:0] ctrlBlock_io_dispatch_7_bits_ctrl_fuOpType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_7_bits_ctrl_rfWen; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_7_bits_ctrl_fpWen; // @[XSCore.scala 222:29]
  wire [19:0] ctrlBlock_io_dispatch_7_bits_ctrl_imm; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_7_bits_psrc_0; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_7_bits_psrc_1; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_7_bits_pdest; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_7_bits_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_dispatch_7_bits_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_cf_pd_isRVC; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_8_bits_cf_pd_brType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_cf_pd_isCall; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_cf_pd_isRet; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_cf_pred_taken; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_cf_ftqPtr_flag; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_dispatch_8_bits_cf_ftqPtr_value; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_dispatch_8_bits_cf_ftqOffset; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_8_bits_ctrl_srcType_0; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_8_bits_ctrl_srcType_1; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_8_bits_ctrl_srcType_2; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_dispatch_8_bits_ctrl_fuType; // @[XSCore.scala 222:29]
  wire [6:0] ctrlBlock_io_dispatch_8_bits_ctrl_fuOpType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_ctrl_rfWen; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_ctrl_fpWen; // @[XSCore.scala 222:29]
  wire [19:0] ctrlBlock_io_dispatch_8_bits_ctrl_imm; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_ctrl_fpu_isAddSub; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_ctrl_fpu_typeTagIn; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_ctrl_fpu_typeTagOut; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_ctrl_fpu_fromInt; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_ctrl_fpu_wflags; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_ctrl_fpu_fpWen; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_8_bits_ctrl_fpu_fmaCmd; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_ctrl_fpu_div; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_ctrl_fpu_sqrt; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_ctrl_fpu_fcvt; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_8_bits_ctrl_fpu_typ; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_dispatch_8_bits_ctrl_fpu_fmt; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_ctrl_fpu_ren3; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_dispatch_8_bits_ctrl_fpu_rm; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_8_bits_psrc_0; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_8_bits_psrc_1; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_8_bits_psrc_2; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_dispatch_8_bits_pdest; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_dispatch_8_bits_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_dispatch_8_bits_lqIdx_flag; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_dispatch_8_bits_lqIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_rsReady_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_rsReady_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_rsReady_2; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_rsReady_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_rsReady_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_rsReady_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_rsReady_6; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_rsReady_7; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_rsReady_8; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_canAccept; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_enqLsq_needAlloc_0; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_enqLsq_needAlloc_1; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_enqLsq_needAlloc_2; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_enqLsq_needAlloc_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_0_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_0_bits_cf_trigger_backendEn_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_0_bits_cf_storeSetHit; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_enqLsq_req_0_bits_cf_ssid; // @[XSCore.scala 222:29]
  wire [6:0] ctrlBlock_io_enqLsq_req_0_bits_ctrl_fuOpType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_0_bits_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_enqLsq_req_0_bits_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_0_bits_lqIdx_flag; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_enqLsq_req_0_bits_lqIdx_value; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_enqLsq_req_0_bits_sqIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_1_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_1_bits_cf_trigger_backendEn_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_1_bits_cf_storeSetHit; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_enqLsq_req_1_bits_cf_ssid; // @[XSCore.scala 222:29]
  wire [6:0] ctrlBlock_io_enqLsq_req_1_bits_ctrl_fuOpType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_1_bits_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_enqLsq_req_1_bits_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_1_bits_lqIdx_flag; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_enqLsq_req_1_bits_lqIdx_value; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_enqLsq_req_1_bits_sqIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_2_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_2_bits_cf_trigger_backendEn_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_2_bits_cf_storeSetHit; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_enqLsq_req_2_bits_cf_ssid; // @[XSCore.scala 222:29]
  wire [6:0] ctrlBlock_io_enqLsq_req_2_bits_ctrl_fuOpType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_2_bits_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_enqLsq_req_2_bits_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_2_bits_lqIdx_flag; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_enqLsq_req_2_bits_lqIdx_value; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_enqLsq_req_2_bits_sqIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_3_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_3_bits_cf_trigger_backendEn_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_3_bits_cf_storeSetHit; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_enqLsq_req_3_bits_cf_ssid; // @[XSCore.scala 222:29]
  wire [6:0] ctrlBlock_io_enqLsq_req_3_bits_ctrl_fuOpType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_3_bits_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_enqLsq_req_3_bits_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_enqLsq_req_3_bits_lqIdx_flag; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_enqLsq_req_3_bits_lqIdx_value; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_enqLsq_req_3_bits_sqIdx_value; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_lqCancelCnt; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_sqCancelCnt; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_lqDeq; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_sqDeq; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_0_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_0_bits_uop_cf_pd_isRVC; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_exuRedirect_0_bits_uop_cf_pd_brType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_0_bits_uop_cf_pd_isCall; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_0_bits_uop_cf_pd_isRet; // @[XSCore.scala 222:29]
  wire [19:0] ctrlBlock_io_exuRedirect_0_bits_uop_ctrl_imm; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_0_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_exuRedirect_0_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_0_bits_redirectValid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_0_bits_redirect_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_exuRedirect_0_bits_redirect_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_0_bits_redirect_ftqIdx_flag; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_exuRedirect_0_bits_redirect_ftqIdx_value; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_exuRedirect_0_bits_redirect_ftqOffset; // @[XSCore.scala 222:29]
  wire [38:0] ctrlBlock_io_exuRedirect_0_bits_redirect_cfiUpdate_target; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_1_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_1_bits_uop_cf_pd_isRVC; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_exuRedirect_1_bits_uop_cf_pd_brType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_1_bits_uop_cf_pd_isCall; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_1_bits_uop_cf_pd_isRet; // @[XSCore.scala 222:29]
  wire [19:0] ctrlBlock_io_exuRedirect_1_bits_uop_ctrl_imm; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_1_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_exuRedirect_1_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_1_bits_redirectValid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_1_bits_redirect_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_exuRedirect_1_bits_redirect_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_1_bits_redirect_ftqIdx_flag; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_exuRedirect_1_bits_redirect_ftqIdx_value; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_exuRedirect_1_bits_redirect_ftqOffset; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_1_bits_redirect_cfiUpdate_taken; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_2_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_2_bits_uop_cf_pd_isRVC; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_exuRedirect_2_bits_uop_cf_pd_brType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_2_bits_uop_cf_pd_isCall; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_2_bits_uop_cf_pd_isRet; // @[XSCore.scala 222:29]
  wire [19:0] ctrlBlock_io_exuRedirect_2_bits_uop_ctrl_imm; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_2_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_exuRedirect_2_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_2_bits_redirectValid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_2_bits_redirect_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_exuRedirect_2_bits_redirect_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_2_bits_redirect_ftqIdx_flag; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_exuRedirect_2_bits_redirect_ftqIdx_value; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_exuRedirect_2_bits_redirect_ftqOffset; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_2_bits_redirect_cfiUpdate_taken; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_memoryViolation_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_memoryViolation_bits_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_memoryViolation_bits_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_memoryViolation_bits_ftqIdx_flag; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_memoryViolation_bits_ftqIdx_value; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_memoryViolation_bits_ftqOffset; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_memoryViolation_bits_stFtqIdx_value; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_memoryViolation_bits_stFtqOffset; // @[XSCore.scala 222:29]
  wire [38:0] ctrlBlock_io_jumpPc; // @[XSCore.scala 222:29]
  wire [38:0] ctrlBlock_io_jalr_target; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_toCSR_intrBitSet; // @[XSCore.scala 222:29]
  wire [38:0] ctrlBlock_io_robio_toCSR_trapTarget; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_toCSR_isXRet; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_toCSR_wfiEvent; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_toCSR_fflags_valid; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_robio_toCSR_fflags_bits; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_toCSR_dirty_fs; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_robio_toCSR_perfinfo_retiredInstr; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_valid; // @[XSCore.scala 222:29]
  wire [38:0] ctrlBlock_io_robio_exception_bits_uop_cf_pc; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_2; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_6; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_7; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_8; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_9; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_11; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_12; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_15; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_trigger_frontendHit_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_trigger_frontendHit_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_trigger_frontendHit_2; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_trigger_frontendHit_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_cf_crossPageIPFFix; // @[XSCore.scala 222:29]
  wire [2:0] ctrlBlock_io_robio_exception_bits_uop_ctrl_commitType; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_uop_ctrl_singleStep; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_exception_bits_isInterrupt; // @[XSCore.scala 222:29]
  wire [1:0] ctrlBlock_io_robio_lsq_scommit; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_lsq_pendingld; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_lsq_pendingst; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_lsq_commit; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_lsq_pendingPtr_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_robio_lsq_pendingPtr_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_lsq_mmio_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_lsq_mmio_1; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_robio_lsq_uop_0_robIdx_value; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_robio_lsq_uop_1_robIdx_value; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_robio_lsTopdownInfo_0_s1_robIdx; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_lsTopdownInfo_0_s1_vaddr_valid; // @[XSCore.scala 222:29]
  wire [38:0] ctrlBlock_io_robio_lsTopdownInfo_0_s1_vaddr_bits; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_robio_lsTopdownInfo_0_s2_robIdx; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_lsTopdownInfo_0_s2_paddr_valid; // @[XSCore.scala 222:29]
  wire [35:0] ctrlBlock_io_robio_lsTopdownInfo_0_s2_paddr_bits; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_robio_lsTopdownInfo_1_s1_robIdx; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_lsTopdownInfo_1_s1_vaddr_valid; // @[XSCore.scala 222:29]
  wire [38:0] ctrlBlock_io_robio_lsTopdownInfo_1_s1_vaddr_bits; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_robio_lsTopdownInfo_1_s2_robIdx; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robio_lsTopdownInfo_1_s2_paddr_valid; // @[XSCore.scala 222:29]
  wire [35:0] ctrlBlock_io_robio_lsTopdownInfo_1_s2_paddr_bits; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_csrCtrl_lvpred_timeout; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_csrCtrl_fusion_enable; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_csrCtrl_wfi_enable; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_csrCtrl_svinval_enable; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_csrCtrl_distribute_csr_wvalid; // @[XSCore.scala 222:29]
  wire [11:0] ctrlBlock_io_csrCtrl_distribute_csr_waddr; // @[XSCore.scala 222:29]
  wire [63:0] ctrlBlock_io_csrCtrl_distribute_csr_wdata; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_csrCtrl_singlestep; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_0_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_0_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_1_0_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_0_bits_uop_lqIdx_flag; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_writeback_1_0_bits_uop_lqIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_0_bits_redirectValid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_0_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_1_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_1_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_1_1_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_1_bits_uop_lqIdx_flag; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_writeback_1_1_bits_uop_lqIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_1_bits_redirectValid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_1_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_2_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_2_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_2_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_2_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_2_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_2_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_2_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_2_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_2_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_2_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_2_bits_uop_ctrl_replayInst; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_2_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_1_2_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_2_bits_uop_lqIdx_flag; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_writeback_1_2_bits_uop_lqIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_2_bits_debug_isMMIO; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_3_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_3_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_3_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_3_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_3_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_3_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_3_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_3_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_3_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_3_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_3_bits_uop_ctrl_replayInst; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_3_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_1_3_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_3_bits_uop_lqIdx_flag; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_writeback_1_3_bits_uop_lqIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_3_bits_debug_isMMIO; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_4_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_4_bits_uop_cf_exceptionVec_2; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_4_bits_uop_cf_exceptionVec_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_4_bits_uop_cf_exceptionVec_8; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_4_bits_uop_cf_exceptionVec_9; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_4_bits_uop_cf_exceptionVec_11; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_4_bits_uop_ctrl_flushPipe; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_4_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_1_4_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_4_bits_uop_lqIdx_flag; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_writeback_1_4_bits_uop_lqIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_4_bits_redirectValid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_4_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_4_bits_debug_isPerfCnt; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_5_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_5_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_5_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_5_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_5_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_5_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_5_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_5_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_1_5_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_5_bits_uop_lqIdx_flag; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_writeback_1_5_bits_uop_lqIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_6_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_6_bits_uop_cf_exceptionVec_2; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_6_bits_uop_cf_exceptionVec_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_6_bits_uop_cf_exceptionVec_8; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_6_bits_uop_cf_exceptionVec_9; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_6_bits_uop_cf_exceptionVec_11; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_6_bits_uop_ctrl_flushPipe; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_6_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_1_6_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_6_bits_uop_lqIdx_flag; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_writeback_1_6_bits_uop_lqIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_6_bits_redirectValid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_6_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_6_bits_debug_isPerfCnt; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_bits_uop_cf_exceptionVec_6; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_bits_uop_cf_exceptionVec_7; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_bits_uop_cf_exceptionVec_15; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_1_7_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_bits_uop_lqIdx_flag; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_writeback_1_7_bits_uop_lqIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_bits_redirectValid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_bits_debug_isMMIO; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_7_bits_debug_isPerfCnt; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_bits_uop_cf_exceptionVec_6; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_bits_uop_cf_exceptionVec_7; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_bits_uop_cf_exceptionVec_15; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_1_8_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_bits_uop_lqIdx_flag; // @[XSCore.scala 222:29]
  wire [3:0] ctrlBlock_io_writeback_1_8_bits_uop_lqIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_bits_redirectValid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_bits_debug_isMMIO; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_8_bits_debug_isPerfCnt; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_9_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_9_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_1_9_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_10_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_1_10_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_1_10_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_3_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_3_bits_uop_cf_exceptionVec_2; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_3_bits_uop_cf_exceptionVec_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_3_bits_uop_cf_exceptionVec_8; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_3_bits_uop_cf_exceptionVec_9; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_3_bits_uop_cf_exceptionVec_11; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_3_bits_uop_ctrl_flushPipe; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_3_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_0_3_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_0_3_bits_fflags; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_4_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_4_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_0_4_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_0_4_bits_fflags; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_5_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_5_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_0_5_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_0_5_bits_fflags; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_6_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_6_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_6_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_6_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_6_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_6_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_6_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_6_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_6_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_6_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_6_bits_uop_ctrl_replayInst; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_6_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_0_6_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_7_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_7_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_7_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_7_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_7_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_7_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_7_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_7_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_7_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_7_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_7_bits_uop_ctrl_replayInst; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_7_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_0_7_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_8_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_8_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_8_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_8_bits_uop_cf_exceptionVec_6; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_8_bits_uop_cf_exceptionVec_7; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_8_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_8_bits_uop_cf_exceptionVec_15; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_8_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_8_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_8_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_8_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_8_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_8_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_8_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_0_8_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_9_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_9_bits_uop_cf_exceptionVec_6; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_9_bits_uop_cf_exceptionVec_7; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_9_bits_uop_cf_exceptionVec_15; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_9_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_9_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_9_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_writeback_0_9_bits_uop_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_writeback_0_9_bits_uop_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_redirect_valid; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_redirect_bits_robIdx_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_redirect_bits_robIdx_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_redirect_bits_level; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_0; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_1; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_2; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_3; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_4; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_5; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_6; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_7; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_8; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_9; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_10; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_11; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_12; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_13; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_14; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_15; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_16; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_17; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_18; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_19; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_20; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_21; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_22; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_23; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_24; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_25; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_26; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_27; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_28; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_29; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_30; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_int_rat_31; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_0; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_1; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_2; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_3; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_4; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_5; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_6; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_7; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_8; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_9; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_10; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_11; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_12; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_13; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_14; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_15; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_16; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_17; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_18; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_19; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_20; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_21; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_22; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_23; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_24; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_25; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_26; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_27; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_28; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_29; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_30; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_debug_fp_rat_31; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robDeqPtr_flag; // @[XSCore.scala 222:29]
  wire [4:0] ctrlBlock_io_robDeqPtr_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_io_robHeadLsIssue; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsRs_0_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsRs_1_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsRs_2_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsRs_3_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsRs_4_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsRs_5_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsRs_6_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsRs_7_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsEu0_0_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsEu0_1_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsEu0_2_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsEu0_3_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsEu0_4_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsEu0_5_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsEu1_0_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsEu1_1_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsEu1_2_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsEu1_3_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsEu1_4_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_perfinfo_perfEventsEu1_5_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_perf_0_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_perf_1_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_perf_2_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_perf_3_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_perf_4_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_perf_5_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_perf_6_value; // @[XSCore.scala 222:29]
  wire [5:0] ctrlBlock_io_perf_7_value; // @[XSCore.scala 222:29]
  wire  ctrlBlock_sourcePaddr_valid; // @[XSCore.scala 222:29]
  wire [35:0] ctrlBlock_sourcePaddr_bits; // @[XSCore.scala 222:29]
  wire  ctrlBlock_sourceVaddr_valid; // @[XSCore.scala 222:29]
  wire [38:0] ctrlBlock_sourceVaddr_bits; // @[XSCore.scala 222:29]
  wire  resetGen_clock; // @[ResetGen.scala 52:34]
  wire  resetGen_reset; // @[ResetGen.scala 52:34]
  wire  resetGen_o_reset; // @[ResetGen.scala 52:34]
  wire  resetGen_1_clock; // @[ResetGen.scala 52:34]
  wire  resetGen_1_reset; // @[ResetGen.scala 52:34]
  wire  resetGen_1_o_reset; // @[ResetGen.scala 52:34]
  wire  resetGen_2_clock; // @[ResetGen.scala 52:34]
  wire  resetGen_2_reset; // @[ResetGen.scala 52:34]
  wire  resetGen_2_o_reset; // @[ResetGen.scala 52:34]
  wire  resetGen_3_clock; // @[ResetGen.scala 52:34]
  wire  resetGen_3_reset; // @[ResetGen.scala 52:34]
  wire  resetGen_3_o_reset; // @[ResetGen.scala 52:34]
  wire  resetGen_4_clock; // @[ResetGen.scala 52:34]
  wire  resetGen_4_reset; // @[ResetGen.scala 52:34]
  wire  resetGen_4_o_reset; // @[ResetGen.scala 52:34]
  Frontend frontend ( // @[XSCore.scala 138:28]
    .clock(frontend_clock),
    .reset(frontend_reset),
    .auto_icache_client_out_a_ready(frontend_auto_icache_client_out_a_ready),
    .auto_icache_client_out_a_valid(frontend_auto_icache_client_out_a_valid),
    .auto_icache_client_out_a_bits_opcode(frontend_auto_icache_client_out_a_bits_opcode),
    .auto_icache_client_out_a_bits_size(frontend_auto_icache_client_out_a_bits_size),
    .auto_icache_client_out_a_bits_source(frontend_auto_icache_client_out_a_bits_source),
    .auto_icache_client_out_a_bits_address(frontend_auto_icache_client_out_a_bits_address),
    .auto_icache_client_out_a_bits_user_reqSource(frontend_auto_icache_client_out_a_bits_user_reqSource),
    .auto_icache_client_out_a_bits_mask(frontend_auto_icache_client_out_a_bits_mask),
    .auto_icache_client_out_d_valid(frontend_auto_icache_client_out_d_valid),
    .auto_icache_client_out_d_bits_opcode(frontend_auto_icache_client_out_d_bits_opcode),
    .auto_icache_client_out_d_bits_source(frontend_auto_icache_client_out_d_bits_source),
    .auto_icache_client_out_d_bits_data(frontend_auto_icache_client_out_d_bits_data),
    .auto_icache_client_out_d_bits_corrupt(frontend_auto_icache_client_out_d_bits_corrupt),
    .auto_instrUncache_client_out_a_ready(frontend_auto_instrUncache_client_out_a_ready),
    .auto_instrUncache_client_out_a_valid(frontend_auto_instrUncache_client_out_a_valid),
    .auto_instrUncache_client_out_a_bits_address(frontend_auto_instrUncache_client_out_a_bits_address),
    .auto_instrUncache_client_out_d_ready(frontend_auto_instrUncache_client_out_d_ready),
    .auto_instrUncache_client_out_d_valid(frontend_auto_instrUncache_client_out_d_valid),
    .auto_instrUncache_client_out_d_bits_source(frontend_auto_instrUncache_client_out_d_bits_source),
    .auto_instrUncache_client_out_d_bits_data(frontend_auto_instrUncache_client_out_d_bits_data),
    .io_reset_vector(frontend_io_reset_vector),
    .io_fencei(frontend_io_fencei),
    .io_ptw_req_0_ready(frontend_io_ptw_req_0_ready),
    .io_ptw_req_0_valid(frontend_io_ptw_req_0_valid),
    .io_ptw_req_0_bits_vpn(frontend_io_ptw_req_0_bits_vpn),
    .io_ptw_resp_valid(frontend_io_ptw_resp_valid),
    .io_ptw_resp_bits_entry_tag(frontend_io_ptw_resp_bits_entry_tag),
    .io_ptw_resp_bits_entry_asid(frontend_io_ptw_resp_bits_entry_asid),
    .io_ptw_resp_bits_entry_perm_d(frontend_io_ptw_resp_bits_entry_perm_d),
    .io_ptw_resp_bits_entry_perm_a(frontend_io_ptw_resp_bits_entry_perm_a),
    .io_ptw_resp_bits_entry_perm_g(frontend_io_ptw_resp_bits_entry_perm_g),
    .io_ptw_resp_bits_entry_perm_u(frontend_io_ptw_resp_bits_entry_perm_u),
    .io_ptw_resp_bits_entry_perm_x(frontend_io_ptw_resp_bits_entry_perm_x),
    .io_ptw_resp_bits_entry_perm_w(frontend_io_ptw_resp_bits_entry_perm_w),
    .io_ptw_resp_bits_entry_perm_r(frontend_io_ptw_resp_bits_entry_perm_r),
    .io_ptw_resp_bits_entry_level(frontend_io_ptw_resp_bits_entry_level),
    .io_ptw_resp_bits_entry_ppn(frontend_io_ptw_resp_bits_entry_ppn),
    .io_ptw_resp_bits_ppn_low_0(frontend_io_ptw_resp_bits_ppn_low_0),
    .io_ptw_resp_bits_ppn_low_1(frontend_io_ptw_resp_bits_ppn_low_1),
    .io_ptw_resp_bits_ppn_low_2(frontend_io_ptw_resp_bits_ppn_low_2),
    .io_ptw_resp_bits_ppn_low_3(frontend_io_ptw_resp_bits_ppn_low_3),
    .io_ptw_resp_bits_ppn_low_4(frontend_io_ptw_resp_bits_ppn_low_4),
    .io_ptw_resp_bits_ppn_low_5(frontend_io_ptw_resp_bits_ppn_low_5),
    .io_ptw_resp_bits_ppn_low_6(frontend_io_ptw_resp_bits_ppn_low_6),
    .io_ptw_resp_bits_ppn_low_7(frontend_io_ptw_resp_bits_ppn_low_7),
    .io_ptw_resp_bits_valididx_0(frontend_io_ptw_resp_bits_valididx_0),
    .io_ptw_resp_bits_valididx_1(frontend_io_ptw_resp_bits_valididx_1),
    .io_ptw_resp_bits_valididx_2(frontend_io_ptw_resp_bits_valididx_2),
    .io_ptw_resp_bits_valididx_3(frontend_io_ptw_resp_bits_valididx_3),
    .io_ptw_resp_bits_valididx_4(frontend_io_ptw_resp_bits_valididx_4),
    .io_ptw_resp_bits_valididx_5(frontend_io_ptw_resp_bits_valididx_5),
    .io_ptw_resp_bits_valididx_6(frontend_io_ptw_resp_bits_valididx_6),
    .io_ptw_resp_bits_valididx_7(frontend_io_ptw_resp_bits_valididx_7),
    .io_ptw_resp_bits_pf(frontend_io_ptw_resp_bits_pf),
    .io_ptw_resp_bits_af(frontend_io_ptw_resp_bits_af),
    .io_backend_cfVec_0_ready(frontend_io_backend_cfVec_0_ready),
    .io_backend_cfVec_0_valid(frontend_io_backend_cfVec_0_valid),
    .io_backend_cfVec_0_bits_instr(frontend_io_backend_cfVec_0_bits_instr),
    .io_backend_cfVec_0_bits_foldpc(frontend_io_backend_cfVec_0_bits_foldpc),
    .io_backend_cfVec_0_bits_exceptionVec_1(frontend_io_backend_cfVec_0_bits_exceptionVec_1),
    .io_backend_cfVec_0_bits_exceptionVec_12(frontend_io_backend_cfVec_0_bits_exceptionVec_12),
    .io_backend_cfVec_0_bits_trigger_frontendHit_0(frontend_io_backend_cfVec_0_bits_trigger_frontendHit_0),
    .io_backend_cfVec_0_bits_trigger_frontendHit_1(frontend_io_backend_cfVec_0_bits_trigger_frontendHit_1),
    .io_backend_cfVec_0_bits_trigger_frontendHit_2(frontend_io_backend_cfVec_0_bits_trigger_frontendHit_2),
    .io_backend_cfVec_0_bits_trigger_frontendHit_3(frontend_io_backend_cfVec_0_bits_trigger_frontendHit_3),
    .io_backend_cfVec_0_bits_trigger_backendEn_0(frontend_io_backend_cfVec_0_bits_trigger_backendEn_0),
    .io_backend_cfVec_0_bits_trigger_backendEn_1(frontend_io_backend_cfVec_0_bits_trigger_backendEn_1),
    .io_backend_cfVec_0_bits_pd_isRVC(frontend_io_backend_cfVec_0_bits_pd_isRVC),
    .io_backend_cfVec_0_bits_pd_brType(frontend_io_backend_cfVec_0_bits_pd_brType),
    .io_backend_cfVec_0_bits_pd_isCall(frontend_io_backend_cfVec_0_bits_pd_isCall),
    .io_backend_cfVec_0_bits_pd_isRet(frontend_io_backend_cfVec_0_bits_pd_isRet),
    .io_backend_cfVec_0_bits_pred_taken(frontend_io_backend_cfVec_0_bits_pred_taken),
    .io_backend_cfVec_0_bits_crossPageIPFFix(frontend_io_backend_cfVec_0_bits_crossPageIPFFix),
    .io_backend_cfVec_0_bits_ftqPtr_flag(frontend_io_backend_cfVec_0_bits_ftqPtr_flag),
    .io_backend_cfVec_0_bits_ftqPtr_value(frontend_io_backend_cfVec_0_bits_ftqPtr_value),
    .io_backend_cfVec_0_bits_ftqOffset(frontend_io_backend_cfVec_0_bits_ftqOffset),
    .io_backend_cfVec_1_ready(frontend_io_backend_cfVec_1_ready),
    .io_backend_cfVec_1_valid(frontend_io_backend_cfVec_1_valid),
    .io_backend_cfVec_1_bits_instr(frontend_io_backend_cfVec_1_bits_instr),
    .io_backend_cfVec_1_bits_foldpc(frontend_io_backend_cfVec_1_bits_foldpc),
    .io_backend_cfVec_1_bits_exceptionVec_1(frontend_io_backend_cfVec_1_bits_exceptionVec_1),
    .io_backend_cfVec_1_bits_exceptionVec_12(frontend_io_backend_cfVec_1_bits_exceptionVec_12),
    .io_backend_cfVec_1_bits_trigger_frontendHit_0(frontend_io_backend_cfVec_1_bits_trigger_frontendHit_0),
    .io_backend_cfVec_1_bits_trigger_frontendHit_1(frontend_io_backend_cfVec_1_bits_trigger_frontendHit_1),
    .io_backend_cfVec_1_bits_trigger_frontendHit_2(frontend_io_backend_cfVec_1_bits_trigger_frontendHit_2),
    .io_backend_cfVec_1_bits_trigger_frontendHit_3(frontend_io_backend_cfVec_1_bits_trigger_frontendHit_3),
    .io_backend_cfVec_1_bits_trigger_backendEn_0(frontend_io_backend_cfVec_1_bits_trigger_backendEn_0),
    .io_backend_cfVec_1_bits_trigger_backendEn_1(frontend_io_backend_cfVec_1_bits_trigger_backendEn_1),
    .io_backend_cfVec_1_bits_pd_isRVC(frontend_io_backend_cfVec_1_bits_pd_isRVC),
    .io_backend_cfVec_1_bits_pd_brType(frontend_io_backend_cfVec_1_bits_pd_brType),
    .io_backend_cfVec_1_bits_pd_isCall(frontend_io_backend_cfVec_1_bits_pd_isCall),
    .io_backend_cfVec_1_bits_pd_isRet(frontend_io_backend_cfVec_1_bits_pd_isRet),
    .io_backend_cfVec_1_bits_pred_taken(frontend_io_backend_cfVec_1_bits_pred_taken),
    .io_backend_cfVec_1_bits_crossPageIPFFix(frontend_io_backend_cfVec_1_bits_crossPageIPFFix),
    .io_backend_cfVec_1_bits_ftqPtr_flag(frontend_io_backend_cfVec_1_bits_ftqPtr_flag),
    .io_backend_cfVec_1_bits_ftqPtr_value(frontend_io_backend_cfVec_1_bits_ftqPtr_value),
    .io_backend_cfVec_1_bits_ftqOffset(frontend_io_backend_cfVec_1_bits_ftqOffset),
    .io_backend_stallReason_reason_0(frontend_io_backend_stallReason_reason_0),
    .io_backend_stallReason_reason_1(frontend_io_backend_stallReason_reason_1),
    .io_backend_stallReason_backReason_valid(frontend_io_backend_stallReason_backReason_valid),
    .io_backend_stallReason_backReason_bits(frontend_io_backend_stallReason_backReason_bits),
    .io_backend_fromFtq_pc_mem_wen(frontend_io_backend_fromFtq_pc_mem_wen),
    .io_backend_fromFtq_pc_mem_waddr(frontend_io_backend_fromFtq_pc_mem_waddr),
    .io_backend_fromFtq_pc_mem_wdata_startAddr(frontend_io_backend_fromFtq_pc_mem_wdata_startAddr),
    .io_backend_fromFtq_pc_mem_wdata_nextLineAddr(frontend_io_backend_fromFtq_pc_mem_wdata_nextLineAddr),
    .io_backend_fromFtq_pc_mem_wdata_isNextMask_0(frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_0),
    .io_backend_fromFtq_pc_mem_wdata_isNextMask_1(frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_1),
    .io_backend_fromFtq_pc_mem_wdata_isNextMask_2(frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_2),
    .io_backend_fromFtq_pc_mem_wdata_isNextMask_3(frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_3),
    .io_backend_fromFtq_pc_mem_wdata_isNextMask_4(frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_4),
    .io_backend_fromFtq_pc_mem_wdata_isNextMask_5(frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_5),
    .io_backend_fromFtq_pc_mem_wdata_isNextMask_6(frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_6),
    .io_backend_fromFtq_pc_mem_wdata_isNextMask_7(frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_7),
    .io_backend_fromFtq_newest_entry_target(frontend_io_backend_fromFtq_newest_entry_target),
    .io_backend_fromFtq_newest_entry_ptr_flag(frontend_io_backend_fromFtq_newest_entry_ptr_flag),
    .io_backend_fromFtq_newest_entry_ptr_value(frontend_io_backend_fromFtq_newest_entry_ptr_value),
    .io_backend_toFtq_rob_commits_0_valid(frontend_io_backend_toFtq_rob_commits_0_valid),
    .io_backend_toFtq_rob_commits_0_bits_commitType(frontend_io_backend_toFtq_rob_commits_0_bits_commitType),
    .io_backend_toFtq_rob_commits_0_bits_ftqIdx_flag(frontend_io_backend_toFtq_rob_commits_0_bits_ftqIdx_flag),
    .io_backend_toFtq_rob_commits_0_bits_ftqIdx_value(frontend_io_backend_toFtq_rob_commits_0_bits_ftqIdx_value),
    .io_backend_toFtq_rob_commits_0_bits_ftqOffset(frontend_io_backend_toFtq_rob_commits_0_bits_ftqOffset),
    .io_backend_toFtq_rob_commits_1_valid(frontend_io_backend_toFtq_rob_commits_1_valid),
    .io_backend_toFtq_rob_commits_1_bits_commitType(frontend_io_backend_toFtq_rob_commits_1_bits_commitType),
    .io_backend_toFtq_rob_commits_1_bits_ftqIdx_flag(frontend_io_backend_toFtq_rob_commits_1_bits_ftqIdx_flag),
    .io_backend_toFtq_rob_commits_1_bits_ftqIdx_value(frontend_io_backend_toFtq_rob_commits_1_bits_ftqIdx_value),
    .io_backend_toFtq_rob_commits_1_bits_ftqOffset(frontend_io_backend_toFtq_rob_commits_1_bits_ftqOffset),
    .io_backend_toFtq_redirect_valid(frontend_io_backend_toFtq_redirect_valid),
    .io_backend_toFtq_redirect_bits_ftqIdx_flag(frontend_io_backend_toFtq_redirect_bits_ftqIdx_flag),
    .io_backend_toFtq_redirect_bits_ftqIdx_value(frontend_io_backend_toFtq_redirect_bits_ftqIdx_value),
    .io_backend_toFtq_redirect_bits_ftqOffset(frontend_io_backend_toFtq_redirect_bits_ftqOffset),
    .io_backend_toFtq_redirect_bits_level(frontend_io_backend_toFtq_redirect_bits_level),
    .io_backend_toFtq_redirect_bits_cfiUpdate_pc(frontend_io_backend_toFtq_redirect_bits_cfiUpdate_pc),
    .io_backend_toFtq_redirect_bits_cfiUpdate_pd_isRVC(frontend_io_backend_toFtq_redirect_bits_cfiUpdate_pd_isRVC),
    .io_backend_toFtq_redirect_bits_cfiUpdate_pd_brType(frontend_io_backend_toFtq_redirect_bits_cfiUpdate_pd_brType),
    .io_backend_toFtq_redirect_bits_cfiUpdate_pd_isCall(frontend_io_backend_toFtq_redirect_bits_cfiUpdate_pd_isCall),
    .io_backend_toFtq_redirect_bits_cfiUpdate_pd_isRet(frontend_io_backend_toFtq_redirect_bits_cfiUpdate_pd_isRet),
    .io_backend_toFtq_redirect_bits_cfiUpdate_target(frontend_io_backend_toFtq_redirect_bits_cfiUpdate_target),
    .io_backend_toFtq_redirect_bits_cfiUpdate_taken(frontend_io_backend_toFtq_redirect_bits_cfiUpdate_taken),
    .io_backend_toFtq_redirect_bits_cfiUpdate_isMisPred(frontend_io_backend_toFtq_redirect_bits_cfiUpdate_isMisPred),
    .io_backend_toFtq_redirect_bits_debugIsCtrl(frontend_io_backend_toFtq_redirect_bits_debugIsCtrl),
    .io_backend_toFtq_redirect_bits_debugIsMemVio(frontend_io_backend_toFtq_redirect_bits_debugIsMemVio),
    .io_sfence_valid(frontend_io_sfence_valid),
    .io_sfence_bits_rs1(frontend_io_sfence_bits_rs1),
    .io_sfence_bits_rs2(frontend_io_sfence_bits_rs2),
    .io_sfence_bits_addr(frontend_io_sfence_bits_addr),
    .io_sfence_bits_asid(frontend_io_sfence_bits_asid),
    .io_tlbCsr_satp_mode(frontend_io_tlbCsr_satp_mode),
    .io_tlbCsr_satp_asid(frontend_io_tlbCsr_satp_asid),
    .io_tlbCsr_satp_ppn(frontend_io_tlbCsr_satp_ppn),
    .io_tlbCsr_satp_changed(frontend_io_tlbCsr_satp_changed),
    .io_tlbCsr_priv_mxr(frontend_io_tlbCsr_priv_mxr),
    .io_tlbCsr_priv_sum(frontend_io_tlbCsr_priv_sum),
    .io_tlbCsr_priv_imode(frontend_io_tlbCsr_priv_imode),
    .io_tlbCsr_priv_dmode(frontend_io_tlbCsr_priv_dmode),
    .io_csrCtrl_l2_pf_store_only(frontend_io_csrCtrl_l2_pf_store_only),
    .io_csrCtrl_icache_parity_enable(frontend_io_csrCtrl_icache_parity_enable),
    .io_csrCtrl_lvpred_timeout(frontend_io_csrCtrl_lvpred_timeout),
    .io_csrCtrl_bp_ctrl_ubtb_enable(frontend_io_csrCtrl_bp_ctrl_ubtb_enable),
    .io_csrCtrl_bp_ctrl_btb_enable(frontend_io_csrCtrl_bp_ctrl_btb_enable),
    .io_csrCtrl_bp_ctrl_tage_enable(frontend_io_csrCtrl_bp_ctrl_tage_enable),
    .io_csrCtrl_bp_ctrl_sc_enable(frontend_io_csrCtrl_bp_ctrl_sc_enable),
    .io_csrCtrl_bp_ctrl_ras_enable(frontend_io_csrCtrl_bp_ctrl_ras_enable),
    .io_csrCtrl_ldld_vio_check_enable(frontend_io_csrCtrl_ldld_vio_check_enable),
    .io_csrCtrl_cache_error_enable(frontend_io_csrCtrl_cache_error_enable),
    .io_csrCtrl_uncache_write_outstanding_enable(frontend_io_csrCtrl_uncache_write_outstanding_enable),
    .io_csrCtrl_fusion_enable(frontend_io_csrCtrl_fusion_enable),
    .io_csrCtrl_wfi_enable(frontend_io_csrCtrl_wfi_enable),
    .io_csrCtrl_svinval_enable(frontend_io_csrCtrl_svinval_enable),
    .io_csrCtrl_distribute_csr_wvalid(frontend_io_csrCtrl_distribute_csr_wvalid),
    .io_csrCtrl_distribute_csr_waddr(frontend_io_csrCtrl_distribute_csr_waddr),
    .io_csrCtrl_distribute_csr_wdata(frontend_io_csrCtrl_distribute_csr_wdata),
    .io_csrCtrl_singlestep(frontend_io_csrCtrl_singlestep),
    .io_csrCtrl_frontend_trigger_t_valid(frontend_io_csrCtrl_frontend_trigger_t_valid),
    .io_csrCtrl_frontend_trigger_t_bits_addr(frontend_io_csrCtrl_frontend_trigger_t_bits_addr),
    .io_csrCtrl_frontend_trigger_t_bits_tdata_matchType(frontend_io_csrCtrl_frontend_trigger_t_bits_tdata_matchType),
    .io_csrCtrl_frontend_trigger_t_bits_tdata_select(frontend_io_csrCtrl_frontend_trigger_t_bits_tdata_select),
    .io_csrCtrl_frontend_trigger_t_bits_tdata_timing(frontend_io_csrCtrl_frontend_trigger_t_bits_tdata_timing),
    .io_csrCtrl_frontend_trigger_t_bits_tdata_chain(frontend_io_csrCtrl_frontend_trigger_t_bits_tdata_chain),
    .io_csrCtrl_frontend_trigger_t_bits_tdata_tdata2(frontend_io_csrCtrl_frontend_trigger_t_bits_tdata_tdata2),
    .io_csrCtrl_mem_trigger_t_valid(frontend_io_csrCtrl_mem_trigger_t_valid),
    .io_csrCtrl_mem_trigger_t_bits_addr(frontend_io_csrCtrl_mem_trigger_t_bits_addr),
    .io_csrCtrl_mem_trigger_t_bits_tdata_matchType(frontend_io_csrCtrl_mem_trigger_t_bits_tdata_matchType),
    .io_csrCtrl_mem_trigger_t_bits_tdata_select(frontend_io_csrCtrl_mem_trigger_t_bits_tdata_select),
    .io_csrCtrl_mem_trigger_t_bits_tdata_chain(frontend_io_csrCtrl_mem_trigger_t_bits_tdata_chain),
    .io_csrCtrl_mem_trigger_t_bits_tdata_tdata2(frontend_io_csrCtrl_mem_trigger_t_bits_tdata_tdata2),
    .io_csrCtrl_trigger_enable_0(frontend_io_csrCtrl_trigger_enable_0),
    .io_csrCtrl_trigger_enable_1(frontend_io_csrCtrl_trigger_enable_1),
    .io_csrCtrl_trigger_enable_2(frontend_io_csrCtrl_trigger_enable_2),
    .io_csrCtrl_trigger_enable_3(frontend_io_csrCtrl_trigger_enable_3),
    .io_csrCtrl_trigger_enable_4(frontend_io_csrCtrl_trigger_enable_4),
    .io_csrCtrl_trigger_enable_5(frontend_io_csrCtrl_trigger_enable_5),
    .io_csrCtrl_trigger_enable_6(frontend_io_csrCtrl_trigger_enable_6),
    .io_csrCtrl_trigger_enable_7(frontend_io_csrCtrl_trigger_enable_7),
    .io_csrCtrl_trigger_enable_8(frontend_io_csrCtrl_trigger_enable_8),
    .io_csrCtrl_trigger_enable_9(frontend_io_csrCtrl_trigger_enable_9),
    .io_csrUpdate_wvalid(frontend_io_csrUpdate_wvalid),
    .io_csrUpdate_waddr(frontend_io_csrUpdate_waddr),
    .io_csrUpdate_wdata(frontend_io_csrUpdate_wdata),
    .io_error_paddr(frontend_io_error_paddr),
    .io_error_report_to_beu(frontend_io_error_report_to_beu),
    .io_perf_0_value(frontend_io_perf_0_value),
    .io_perf_1_value(frontend_io_perf_1_value),
    .io_perf_2_value(frontend_io_perf_2_value),
    .io_perf_3_value(frontend_io_perf_3_value),
    .io_perf_4_value(frontend_io_perf_4_value),
    .io_perf_5_value(frontend_io_perf_5_value),
    .io_perf_6_value(frontend_io_perf_6_value),
    .io_perf_7_value(frontend_io_perf_7_value)
  );
  WbArbiterWrapper wbArbiter ( // @[XSCore.scala 141:29]
    .clock(wbArbiter_clock),
    .reset(wbArbiter_reset),
    .io_hartId(wbArbiter_io_hartId),
    .io_redirect_valid(wbArbiter_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(wbArbiter_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(wbArbiter_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(wbArbiter_io_redirect_bits_level),
    .io_in_0_valid(wbArbiter_io_in_0_valid),
    .io_in_0_bits_uop_ctrl_rfWen(wbArbiter_io_in_0_bits_uop_ctrl_rfWen),
    .io_in_0_bits_uop_pdest(wbArbiter_io_in_0_bits_uop_pdest),
    .io_in_0_bits_uop_robIdx_flag(wbArbiter_io_in_0_bits_uop_robIdx_flag),
    .io_in_0_bits_uop_robIdx_value(wbArbiter_io_in_0_bits_uop_robIdx_value),
    .io_in_0_bits_uop_lqIdx_flag(wbArbiter_io_in_0_bits_uop_lqIdx_flag),
    .io_in_0_bits_uop_lqIdx_value(wbArbiter_io_in_0_bits_uop_lqIdx_value),
    .io_in_0_bits_data(wbArbiter_io_in_0_bits_data),
    .io_in_0_bits_redirectValid(wbArbiter_io_in_0_bits_redirectValid),
    .io_in_0_bits_redirect_cfiUpdate_isMisPred(wbArbiter_io_in_0_bits_redirect_cfiUpdate_isMisPred),
    .io_in_1_valid(wbArbiter_io_in_1_valid),
    .io_in_1_bits_uop_ctrl_rfWen(wbArbiter_io_in_1_bits_uop_ctrl_rfWen),
    .io_in_1_bits_uop_pdest(wbArbiter_io_in_1_bits_uop_pdest),
    .io_in_1_bits_uop_robIdx_flag(wbArbiter_io_in_1_bits_uop_robIdx_flag),
    .io_in_1_bits_uop_robIdx_value(wbArbiter_io_in_1_bits_uop_robIdx_value),
    .io_in_1_bits_uop_lqIdx_flag(wbArbiter_io_in_1_bits_uop_lqIdx_flag),
    .io_in_1_bits_uop_lqIdx_value(wbArbiter_io_in_1_bits_uop_lqIdx_value),
    .io_in_1_bits_data(wbArbiter_io_in_1_bits_data),
    .io_in_1_bits_redirectValid(wbArbiter_io_in_1_bits_redirectValid),
    .io_in_1_bits_redirect_cfiUpdate_isMisPred(wbArbiter_io_in_1_bits_redirect_cfiUpdate_isMisPred),
    .io_in_2_valid(wbArbiter_io_in_2_valid),
    .io_in_2_bits_uop_ctrl_rfWen(wbArbiter_io_in_2_bits_uop_ctrl_rfWen),
    .io_in_2_bits_uop_ctrl_fpWen(wbArbiter_io_in_2_bits_uop_ctrl_fpWen),
    .io_in_2_bits_uop_pdest(wbArbiter_io_in_2_bits_uop_pdest),
    .io_in_2_bits_uop_robIdx_flag(wbArbiter_io_in_2_bits_uop_robIdx_flag),
    .io_in_2_bits_uop_robIdx_value(wbArbiter_io_in_2_bits_uop_robIdx_value),
    .io_in_2_bits_uop_lqIdx_flag(wbArbiter_io_in_2_bits_uop_lqIdx_flag),
    .io_in_2_bits_uop_lqIdx_value(wbArbiter_io_in_2_bits_uop_lqIdx_value),
    .io_in_2_bits_data(wbArbiter_io_in_2_bits_data),
    .io_in_3_ready(wbArbiter_io_in_3_ready),
    .io_in_3_valid(wbArbiter_io_in_3_valid),
    .io_in_3_bits_uop_cf_exceptionVec_2(wbArbiter_io_in_3_bits_uop_cf_exceptionVec_2),
    .io_in_3_bits_uop_cf_exceptionVec_3(wbArbiter_io_in_3_bits_uop_cf_exceptionVec_3),
    .io_in_3_bits_uop_cf_exceptionVec_8(wbArbiter_io_in_3_bits_uop_cf_exceptionVec_8),
    .io_in_3_bits_uop_cf_exceptionVec_9(wbArbiter_io_in_3_bits_uop_cf_exceptionVec_9),
    .io_in_3_bits_uop_cf_exceptionVec_11(wbArbiter_io_in_3_bits_uop_cf_exceptionVec_11),
    .io_in_3_bits_uop_ctrl_rfWen(wbArbiter_io_in_3_bits_uop_ctrl_rfWen),
    .io_in_3_bits_uop_ctrl_fpWen(wbArbiter_io_in_3_bits_uop_ctrl_fpWen),
    .io_in_3_bits_uop_ctrl_flushPipe(wbArbiter_io_in_3_bits_uop_ctrl_flushPipe),
    .io_in_3_bits_uop_pdest(wbArbiter_io_in_3_bits_uop_pdest),
    .io_in_3_bits_uop_robIdx_flag(wbArbiter_io_in_3_bits_uop_robIdx_flag),
    .io_in_3_bits_uop_robIdx_value(wbArbiter_io_in_3_bits_uop_robIdx_value),
    .io_in_3_bits_uop_lqIdx_flag(wbArbiter_io_in_3_bits_uop_lqIdx_flag),
    .io_in_3_bits_uop_lqIdx_value(wbArbiter_io_in_3_bits_uop_lqIdx_value),
    .io_in_3_bits_data(wbArbiter_io_in_3_bits_data),
    .io_in_3_bits_redirectValid(wbArbiter_io_in_3_bits_redirectValid),
    .io_in_3_bits_redirect_cfiUpdate_isMisPred(wbArbiter_io_in_3_bits_redirect_cfiUpdate_isMisPred),
    .io_in_3_bits_debug_isPerfCnt(wbArbiter_io_in_3_bits_debug_isPerfCnt),
    .io_in_4_valid(wbArbiter_io_in_4_valid),
    .io_in_4_bits_uop_cf_trigger_backendHit_0(wbArbiter_io_in_4_bits_uop_cf_trigger_backendHit_0),
    .io_in_4_bits_uop_cf_trigger_backendHit_1(wbArbiter_io_in_4_bits_uop_cf_trigger_backendHit_1),
    .io_in_4_bits_uop_cf_trigger_backendHit_2(wbArbiter_io_in_4_bits_uop_cf_trigger_backendHit_2),
    .io_in_4_bits_uop_cf_trigger_backendHit_3(wbArbiter_io_in_4_bits_uop_cf_trigger_backendHit_3),
    .io_in_4_bits_uop_cf_trigger_backendHit_4(wbArbiter_io_in_4_bits_uop_cf_trigger_backendHit_4),
    .io_in_4_bits_uop_cf_trigger_backendHit_5(wbArbiter_io_in_4_bits_uop_cf_trigger_backendHit_5),
    .io_in_4_bits_uop_ctrl_rfWen(wbArbiter_io_in_4_bits_uop_ctrl_rfWen),
    .io_in_4_bits_uop_ctrl_fpWen(wbArbiter_io_in_4_bits_uop_ctrl_fpWen),
    .io_in_4_bits_uop_pdest(wbArbiter_io_in_4_bits_uop_pdest),
    .io_in_4_bits_uop_robIdx_flag(wbArbiter_io_in_4_bits_uop_robIdx_flag),
    .io_in_4_bits_uop_robIdx_value(wbArbiter_io_in_4_bits_uop_robIdx_value),
    .io_in_4_bits_uop_lqIdx_flag(wbArbiter_io_in_4_bits_uop_lqIdx_flag),
    .io_in_4_bits_uop_lqIdx_value(wbArbiter_io_in_4_bits_uop_lqIdx_value),
    .io_in_4_bits_data(wbArbiter_io_in_4_bits_data),
    .io_in_5_ready(wbArbiter_io_in_5_ready),
    .io_in_5_valid(wbArbiter_io_in_5_valid),
    .io_in_5_bits_uop_ctrl_rfWen(wbArbiter_io_in_5_bits_uop_ctrl_rfWen),
    .io_in_5_bits_uop_ctrl_fpWen(wbArbiter_io_in_5_bits_uop_ctrl_fpWen),
    .io_in_5_bits_uop_pdest(wbArbiter_io_in_5_bits_uop_pdest),
    .io_in_5_bits_uop_robIdx_flag(wbArbiter_io_in_5_bits_uop_robIdx_flag),
    .io_in_5_bits_uop_robIdx_value(wbArbiter_io_in_5_bits_uop_robIdx_value),
    .io_in_5_bits_uop_lqIdx_flag(wbArbiter_io_in_5_bits_uop_lqIdx_flag),
    .io_in_5_bits_uop_lqIdx_value(wbArbiter_io_in_5_bits_uop_lqIdx_value),
    .io_in_5_bits_data(wbArbiter_io_in_5_bits_data),
    .io_in_6_valid(wbArbiter_io_in_6_valid),
    .io_in_6_bits_uop_cf_exceptionVec_4(wbArbiter_io_in_6_bits_uop_cf_exceptionVec_4),
    .io_in_6_bits_uop_cf_exceptionVec_5(wbArbiter_io_in_6_bits_uop_cf_exceptionVec_5),
    .io_in_6_bits_uop_cf_exceptionVec_13(wbArbiter_io_in_6_bits_uop_cf_exceptionVec_13),
    .io_in_6_bits_uop_cf_trigger_backendHit_0(wbArbiter_io_in_6_bits_uop_cf_trigger_backendHit_0),
    .io_in_6_bits_uop_cf_trigger_backendHit_1(wbArbiter_io_in_6_bits_uop_cf_trigger_backendHit_1),
    .io_in_6_bits_uop_cf_trigger_backendHit_2(wbArbiter_io_in_6_bits_uop_cf_trigger_backendHit_2),
    .io_in_6_bits_uop_cf_trigger_backendHit_3(wbArbiter_io_in_6_bits_uop_cf_trigger_backendHit_3),
    .io_in_6_bits_uop_cf_trigger_backendHit_4(wbArbiter_io_in_6_bits_uop_cf_trigger_backendHit_4),
    .io_in_6_bits_uop_cf_trigger_backendHit_5(wbArbiter_io_in_6_bits_uop_cf_trigger_backendHit_5),
    .io_in_6_bits_uop_ctrl_rfWen(wbArbiter_io_in_6_bits_uop_ctrl_rfWen),
    .io_in_6_bits_uop_ctrl_fpWen(wbArbiter_io_in_6_bits_uop_ctrl_fpWen),
    .io_in_6_bits_uop_ctrl_replayInst(wbArbiter_io_in_6_bits_uop_ctrl_replayInst),
    .io_in_6_bits_uop_pdest(wbArbiter_io_in_6_bits_uop_pdest),
    .io_in_6_bits_uop_robIdx_flag(wbArbiter_io_in_6_bits_uop_robIdx_flag),
    .io_in_6_bits_uop_robIdx_value(wbArbiter_io_in_6_bits_uop_robIdx_value),
    .io_in_6_bits_uop_lqIdx_flag(wbArbiter_io_in_6_bits_uop_lqIdx_flag),
    .io_in_6_bits_uop_lqIdx_value(wbArbiter_io_in_6_bits_uop_lqIdx_value),
    .io_in_6_bits_data(wbArbiter_io_in_6_bits_data),
    .io_in_6_bits_debug_isMMIO(wbArbiter_io_in_6_bits_debug_isMMIO),
    .io_in_7_valid(wbArbiter_io_in_7_valid),
    .io_in_7_bits_uop_cf_exceptionVec_4(wbArbiter_io_in_7_bits_uop_cf_exceptionVec_4),
    .io_in_7_bits_uop_cf_exceptionVec_5(wbArbiter_io_in_7_bits_uop_cf_exceptionVec_5),
    .io_in_7_bits_uop_cf_exceptionVec_13(wbArbiter_io_in_7_bits_uop_cf_exceptionVec_13),
    .io_in_7_bits_uop_cf_trigger_backendHit_0(wbArbiter_io_in_7_bits_uop_cf_trigger_backendHit_0),
    .io_in_7_bits_uop_cf_trigger_backendHit_1(wbArbiter_io_in_7_bits_uop_cf_trigger_backendHit_1),
    .io_in_7_bits_uop_cf_trigger_backendHit_2(wbArbiter_io_in_7_bits_uop_cf_trigger_backendHit_2),
    .io_in_7_bits_uop_cf_trigger_backendHit_3(wbArbiter_io_in_7_bits_uop_cf_trigger_backendHit_3),
    .io_in_7_bits_uop_cf_trigger_backendHit_4(wbArbiter_io_in_7_bits_uop_cf_trigger_backendHit_4),
    .io_in_7_bits_uop_cf_trigger_backendHit_5(wbArbiter_io_in_7_bits_uop_cf_trigger_backendHit_5),
    .io_in_7_bits_uop_ctrl_rfWen(wbArbiter_io_in_7_bits_uop_ctrl_rfWen),
    .io_in_7_bits_uop_ctrl_fpWen(wbArbiter_io_in_7_bits_uop_ctrl_fpWen),
    .io_in_7_bits_uop_ctrl_replayInst(wbArbiter_io_in_7_bits_uop_ctrl_replayInst),
    .io_in_7_bits_uop_pdest(wbArbiter_io_in_7_bits_uop_pdest),
    .io_in_7_bits_uop_robIdx_flag(wbArbiter_io_in_7_bits_uop_robIdx_flag),
    .io_in_7_bits_uop_robIdx_value(wbArbiter_io_in_7_bits_uop_robIdx_value),
    .io_in_7_bits_uop_lqIdx_flag(wbArbiter_io_in_7_bits_uop_lqIdx_flag),
    .io_in_7_bits_uop_lqIdx_value(wbArbiter_io_in_7_bits_uop_lqIdx_value),
    .io_in_7_bits_data(wbArbiter_io_in_7_bits_data),
    .io_in_7_bits_debug_isMMIO(wbArbiter_io_in_7_bits_debug_isMMIO),
    .io_in_8_valid(wbArbiter_io_in_8_valid),
    .io_in_8_bits_uop_cf_exceptionVec_4(wbArbiter_io_in_8_bits_uop_cf_exceptionVec_4),
    .io_in_8_bits_uop_cf_exceptionVec_5(wbArbiter_io_in_8_bits_uop_cf_exceptionVec_5),
    .io_in_8_bits_uop_cf_exceptionVec_6(wbArbiter_io_in_8_bits_uop_cf_exceptionVec_6),
    .io_in_8_bits_uop_cf_exceptionVec_7(wbArbiter_io_in_8_bits_uop_cf_exceptionVec_7),
    .io_in_8_bits_uop_cf_exceptionVec_13(wbArbiter_io_in_8_bits_uop_cf_exceptionVec_13),
    .io_in_8_bits_uop_cf_exceptionVec_15(wbArbiter_io_in_8_bits_uop_cf_exceptionVec_15),
    .io_in_8_bits_uop_cf_trigger_backendHit_0(wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_0),
    .io_in_8_bits_uop_cf_trigger_backendHit_1(wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_1),
    .io_in_8_bits_uop_cf_trigger_backendHit_2(wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_2),
    .io_in_8_bits_uop_cf_trigger_backendHit_3(wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_3),
    .io_in_8_bits_uop_cf_trigger_backendHit_4(wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_4),
    .io_in_8_bits_uop_cf_trigger_backendHit_5(wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_5),
    .io_in_8_bits_uop_robIdx_flag(wbArbiter_io_in_8_bits_uop_robIdx_flag),
    .io_in_8_bits_uop_robIdx_value(wbArbiter_io_in_8_bits_uop_robIdx_value),
    .io_in_8_bits_uop_lqIdx_flag(wbArbiter_io_in_8_bits_uop_lqIdx_flag),
    .io_in_8_bits_uop_lqIdx_value(wbArbiter_io_in_8_bits_uop_lqIdx_value),
    .io_in_8_bits_redirectValid(wbArbiter_io_in_8_bits_redirectValid),
    .io_in_8_bits_redirect_cfiUpdate_isMisPred(wbArbiter_io_in_8_bits_redirect_cfiUpdate_isMisPred),
    .io_in_8_bits_debug_isMMIO(wbArbiter_io_in_8_bits_debug_isMMIO),
    .io_in_8_bits_debug_isPerfCnt(wbArbiter_io_in_8_bits_debug_isPerfCnt),
    .io_in_9_valid(wbArbiter_io_in_9_valid),
    .io_in_9_bits_uop_cf_exceptionVec_4(wbArbiter_io_in_9_bits_uop_cf_exceptionVec_4),
    .io_in_9_bits_uop_cf_exceptionVec_5(wbArbiter_io_in_9_bits_uop_cf_exceptionVec_5),
    .io_in_9_bits_uop_cf_exceptionVec_6(wbArbiter_io_in_9_bits_uop_cf_exceptionVec_6),
    .io_in_9_bits_uop_cf_exceptionVec_7(wbArbiter_io_in_9_bits_uop_cf_exceptionVec_7),
    .io_in_9_bits_uop_cf_exceptionVec_13(wbArbiter_io_in_9_bits_uop_cf_exceptionVec_13),
    .io_in_9_bits_uop_cf_exceptionVec_15(wbArbiter_io_in_9_bits_uop_cf_exceptionVec_15),
    .io_in_9_bits_uop_cf_trigger_backendHit_0(wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_0),
    .io_in_9_bits_uop_cf_trigger_backendHit_1(wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_1),
    .io_in_9_bits_uop_cf_trigger_backendHit_2(wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_2),
    .io_in_9_bits_uop_cf_trigger_backendHit_3(wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_3),
    .io_in_9_bits_uop_cf_trigger_backendHit_4(wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_4),
    .io_in_9_bits_uop_cf_trigger_backendHit_5(wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_5),
    .io_in_9_bits_uop_robIdx_flag(wbArbiter_io_in_9_bits_uop_robIdx_flag),
    .io_in_9_bits_uop_robIdx_value(wbArbiter_io_in_9_bits_uop_robIdx_value),
    .io_in_9_bits_uop_lqIdx_flag(wbArbiter_io_in_9_bits_uop_lqIdx_flag),
    .io_in_9_bits_uop_lqIdx_value(wbArbiter_io_in_9_bits_uop_lqIdx_value),
    .io_in_9_bits_redirectValid(wbArbiter_io_in_9_bits_redirectValid),
    .io_in_9_bits_redirect_cfiUpdate_isMisPred(wbArbiter_io_in_9_bits_redirect_cfiUpdate_isMisPred),
    .io_in_9_bits_debug_isMMIO(wbArbiter_io_in_9_bits_debug_isMMIO),
    .io_in_9_bits_debug_isPerfCnt(wbArbiter_io_in_9_bits_debug_isPerfCnt),
    .io_in_10_valid(wbArbiter_io_in_10_valid),
    .io_in_10_bits_uop_robIdx_flag(wbArbiter_io_in_10_bits_uop_robIdx_flag),
    .io_in_10_bits_uop_robIdx_value(wbArbiter_io_in_10_bits_uop_robIdx_value),
    .io_in_11_valid(wbArbiter_io_in_11_valid),
    .io_in_11_bits_uop_robIdx_flag(wbArbiter_io_in_11_bits_uop_robIdx_flag),
    .io_in_11_bits_uop_robIdx_value(wbArbiter_io_in_11_bits_uop_robIdx_value),
    .io_out_0_valid(wbArbiter_io_out_0_valid),
    .io_out_0_bits_uop_robIdx_flag(wbArbiter_io_out_0_bits_uop_robIdx_flag),
    .io_out_0_bits_uop_robIdx_value(wbArbiter_io_out_0_bits_uop_robIdx_value),
    .io_out_0_bits_uop_lqIdx_flag(wbArbiter_io_out_0_bits_uop_lqIdx_flag),
    .io_out_0_bits_uop_lqIdx_value(wbArbiter_io_out_0_bits_uop_lqIdx_value),
    .io_out_0_bits_redirectValid(wbArbiter_io_out_0_bits_redirectValid),
    .io_out_0_bits_redirect_cfiUpdate_isMisPred(wbArbiter_io_out_0_bits_redirect_cfiUpdate_isMisPred),
    .io_out_1_valid(wbArbiter_io_out_1_valid),
    .io_out_1_bits_uop_robIdx_flag(wbArbiter_io_out_1_bits_uop_robIdx_flag),
    .io_out_1_bits_uop_robIdx_value(wbArbiter_io_out_1_bits_uop_robIdx_value),
    .io_out_1_bits_uop_lqIdx_flag(wbArbiter_io_out_1_bits_uop_lqIdx_flag),
    .io_out_1_bits_uop_lqIdx_value(wbArbiter_io_out_1_bits_uop_lqIdx_value),
    .io_out_1_bits_redirectValid(wbArbiter_io_out_1_bits_redirectValid),
    .io_out_1_bits_redirect_cfiUpdate_isMisPred(wbArbiter_io_out_1_bits_redirect_cfiUpdate_isMisPred),
    .io_out_2_valid(wbArbiter_io_out_2_valid),
    .io_out_2_bits_uop_cf_exceptionVec_4(wbArbiter_io_out_2_bits_uop_cf_exceptionVec_4),
    .io_out_2_bits_uop_cf_exceptionVec_5(wbArbiter_io_out_2_bits_uop_cf_exceptionVec_5),
    .io_out_2_bits_uop_cf_exceptionVec_13(wbArbiter_io_out_2_bits_uop_cf_exceptionVec_13),
    .io_out_2_bits_uop_cf_trigger_backendHit_0(wbArbiter_io_out_2_bits_uop_cf_trigger_backendHit_0),
    .io_out_2_bits_uop_cf_trigger_backendHit_1(wbArbiter_io_out_2_bits_uop_cf_trigger_backendHit_1),
    .io_out_2_bits_uop_cf_trigger_backendHit_2(wbArbiter_io_out_2_bits_uop_cf_trigger_backendHit_2),
    .io_out_2_bits_uop_cf_trigger_backendHit_3(wbArbiter_io_out_2_bits_uop_cf_trigger_backendHit_3),
    .io_out_2_bits_uop_cf_trigger_backendHit_4(wbArbiter_io_out_2_bits_uop_cf_trigger_backendHit_4),
    .io_out_2_bits_uop_cf_trigger_backendHit_5(wbArbiter_io_out_2_bits_uop_cf_trigger_backendHit_5),
    .io_out_2_bits_uop_ctrl_rfWen(wbArbiter_io_out_2_bits_uop_ctrl_rfWen),
    .io_out_2_bits_uop_ctrl_fpWen(wbArbiter_io_out_2_bits_uop_ctrl_fpWen),
    .io_out_2_bits_uop_ctrl_replayInst(wbArbiter_io_out_2_bits_uop_ctrl_replayInst),
    .io_out_2_bits_uop_pdest(wbArbiter_io_out_2_bits_uop_pdest),
    .io_out_2_bits_uop_robIdx_flag(wbArbiter_io_out_2_bits_uop_robIdx_flag),
    .io_out_2_bits_uop_robIdx_value(wbArbiter_io_out_2_bits_uop_robIdx_value),
    .io_out_2_bits_uop_lqIdx_flag(wbArbiter_io_out_2_bits_uop_lqIdx_flag),
    .io_out_2_bits_uop_lqIdx_value(wbArbiter_io_out_2_bits_uop_lqIdx_value),
    .io_out_2_bits_data(wbArbiter_io_out_2_bits_data),
    .io_out_2_bits_debug_isMMIO(wbArbiter_io_out_2_bits_debug_isMMIO),
    .io_out_3_valid(wbArbiter_io_out_3_valid),
    .io_out_3_bits_uop_cf_exceptionVec_4(wbArbiter_io_out_3_bits_uop_cf_exceptionVec_4),
    .io_out_3_bits_uop_cf_exceptionVec_5(wbArbiter_io_out_3_bits_uop_cf_exceptionVec_5),
    .io_out_3_bits_uop_cf_exceptionVec_13(wbArbiter_io_out_3_bits_uop_cf_exceptionVec_13),
    .io_out_3_bits_uop_cf_trigger_backendHit_0(wbArbiter_io_out_3_bits_uop_cf_trigger_backendHit_0),
    .io_out_3_bits_uop_cf_trigger_backendHit_1(wbArbiter_io_out_3_bits_uop_cf_trigger_backendHit_1),
    .io_out_3_bits_uop_cf_trigger_backendHit_2(wbArbiter_io_out_3_bits_uop_cf_trigger_backendHit_2),
    .io_out_3_bits_uop_cf_trigger_backendHit_3(wbArbiter_io_out_3_bits_uop_cf_trigger_backendHit_3),
    .io_out_3_bits_uop_cf_trigger_backendHit_4(wbArbiter_io_out_3_bits_uop_cf_trigger_backendHit_4),
    .io_out_3_bits_uop_cf_trigger_backendHit_5(wbArbiter_io_out_3_bits_uop_cf_trigger_backendHit_5),
    .io_out_3_bits_uop_ctrl_rfWen(wbArbiter_io_out_3_bits_uop_ctrl_rfWen),
    .io_out_3_bits_uop_ctrl_fpWen(wbArbiter_io_out_3_bits_uop_ctrl_fpWen),
    .io_out_3_bits_uop_ctrl_replayInst(wbArbiter_io_out_3_bits_uop_ctrl_replayInst),
    .io_out_3_bits_uop_pdest(wbArbiter_io_out_3_bits_uop_pdest),
    .io_out_3_bits_uop_robIdx_flag(wbArbiter_io_out_3_bits_uop_robIdx_flag),
    .io_out_3_bits_uop_robIdx_value(wbArbiter_io_out_3_bits_uop_robIdx_value),
    .io_out_3_bits_uop_lqIdx_flag(wbArbiter_io_out_3_bits_uop_lqIdx_flag),
    .io_out_3_bits_uop_lqIdx_value(wbArbiter_io_out_3_bits_uop_lqIdx_value),
    .io_out_3_bits_data(wbArbiter_io_out_3_bits_data),
    .io_out_3_bits_debug_isMMIO(wbArbiter_io_out_3_bits_debug_isMMIO),
    .io_out_4_valid(wbArbiter_io_out_4_valid),
    .io_out_4_bits_uop_cf_exceptionVec_2(wbArbiter_io_out_4_bits_uop_cf_exceptionVec_2),
    .io_out_4_bits_uop_cf_exceptionVec_3(wbArbiter_io_out_4_bits_uop_cf_exceptionVec_3),
    .io_out_4_bits_uop_cf_exceptionVec_8(wbArbiter_io_out_4_bits_uop_cf_exceptionVec_8),
    .io_out_4_bits_uop_cf_exceptionVec_9(wbArbiter_io_out_4_bits_uop_cf_exceptionVec_9),
    .io_out_4_bits_uop_cf_exceptionVec_11(wbArbiter_io_out_4_bits_uop_cf_exceptionVec_11),
    .io_out_4_bits_uop_ctrl_rfWen(wbArbiter_io_out_4_bits_uop_ctrl_rfWen),
    .io_out_4_bits_uop_ctrl_fpWen(wbArbiter_io_out_4_bits_uop_ctrl_fpWen),
    .io_out_4_bits_uop_ctrl_flushPipe(wbArbiter_io_out_4_bits_uop_ctrl_flushPipe),
    .io_out_4_bits_uop_pdest(wbArbiter_io_out_4_bits_uop_pdest),
    .io_out_4_bits_uop_robIdx_flag(wbArbiter_io_out_4_bits_uop_robIdx_flag),
    .io_out_4_bits_uop_robIdx_value(wbArbiter_io_out_4_bits_uop_robIdx_value),
    .io_out_4_bits_uop_lqIdx_flag(wbArbiter_io_out_4_bits_uop_lqIdx_flag),
    .io_out_4_bits_uop_lqIdx_value(wbArbiter_io_out_4_bits_uop_lqIdx_value),
    .io_out_4_bits_data(wbArbiter_io_out_4_bits_data),
    .io_out_4_bits_redirectValid(wbArbiter_io_out_4_bits_redirectValid),
    .io_out_4_bits_redirect_cfiUpdate_isMisPred(wbArbiter_io_out_4_bits_redirect_cfiUpdate_isMisPred),
    .io_out_4_bits_debug_isPerfCnt(wbArbiter_io_out_4_bits_debug_isPerfCnt),
    .io_out_5_valid(wbArbiter_io_out_5_valid),
    .io_out_5_bits_uop_cf_trigger_backendHit_0(wbArbiter_io_out_5_bits_uop_cf_trigger_backendHit_0),
    .io_out_5_bits_uop_cf_trigger_backendHit_1(wbArbiter_io_out_5_bits_uop_cf_trigger_backendHit_1),
    .io_out_5_bits_uop_cf_trigger_backendHit_2(wbArbiter_io_out_5_bits_uop_cf_trigger_backendHit_2),
    .io_out_5_bits_uop_cf_trigger_backendHit_3(wbArbiter_io_out_5_bits_uop_cf_trigger_backendHit_3),
    .io_out_5_bits_uop_cf_trigger_backendHit_4(wbArbiter_io_out_5_bits_uop_cf_trigger_backendHit_4),
    .io_out_5_bits_uop_cf_trigger_backendHit_5(wbArbiter_io_out_5_bits_uop_cf_trigger_backendHit_5),
    .io_out_5_bits_uop_ctrl_rfWen(wbArbiter_io_out_5_bits_uop_ctrl_rfWen),
    .io_out_5_bits_uop_ctrl_fpWen(wbArbiter_io_out_5_bits_uop_ctrl_fpWen),
    .io_out_5_bits_uop_pdest(wbArbiter_io_out_5_bits_uop_pdest),
    .io_out_5_bits_uop_robIdx_flag(wbArbiter_io_out_5_bits_uop_robIdx_flag),
    .io_out_5_bits_uop_robIdx_value(wbArbiter_io_out_5_bits_uop_robIdx_value),
    .io_out_5_bits_uop_lqIdx_flag(wbArbiter_io_out_5_bits_uop_lqIdx_flag),
    .io_out_5_bits_uop_lqIdx_value(wbArbiter_io_out_5_bits_uop_lqIdx_value),
    .io_out_5_bits_data(wbArbiter_io_out_5_bits_data),
    .io_out_6_valid(wbArbiter_io_out_6_valid),
    .io_out_6_bits_uop_ctrl_rfWen(wbArbiter_io_out_6_bits_uop_ctrl_rfWen),
    .io_out_6_bits_uop_ctrl_fpWen(wbArbiter_io_out_6_bits_uop_ctrl_fpWen),
    .io_out_6_bits_uop_pdest(wbArbiter_io_out_6_bits_uop_pdest),
    .io_out_6_bits_data(wbArbiter_io_out_6_bits_data),
    .io_out_7_valid(wbArbiter_io_out_7_valid),
    .io_out_7_bits_uop_ctrl_rfWen(wbArbiter_io_out_7_bits_uop_ctrl_rfWen),
    .io_out_7_bits_uop_ctrl_fpWen(wbArbiter_io_out_7_bits_uop_ctrl_fpWen),
    .io_out_7_bits_uop_pdest(wbArbiter_io_out_7_bits_uop_pdest),
    .io_out_7_bits_data(wbArbiter_io_out_7_bits_data),
    .io_out_8_valid(wbArbiter_io_out_8_valid),
    .io_out_8_bits_uop_cf_exceptionVec_2(wbArbiter_io_out_8_bits_uop_cf_exceptionVec_2),
    .io_out_8_bits_uop_cf_exceptionVec_3(wbArbiter_io_out_8_bits_uop_cf_exceptionVec_3),
    .io_out_8_bits_uop_cf_exceptionVec_8(wbArbiter_io_out_8_bits_uop_cf_exceptionVec_8),
    .io_out_8_bits_uop_cf_exceptionVec_9(wbArbiter_io_out_8_bits_uop_cf_exceptionVec_9),
    .io_out_8_bits_uop_cf_exceptionVec_11(wbArbiter_io_out_8_bits_uop_cf_exceptionVec_11),
    .io_out_8_bits_uop_ctrl_rfWen(wbArbiter_io_out_8_bits_uop_ctrl_rfWen),
    .io_out_8_bits_uop_ctrl_fpWen(wbArbiter_io_out_8_bits_uop_ctrl_fpWen),
    .io_out_8_bits_uop_ctrl_flushPipe(wbArbiter_io_out_8_bits_uop_ctrl_flushPipe),
    .io_out_8_bits_uop_pdest(wbArbiter_io_out_8_bits_uop_pdest),
    .io_out_8_bits_uop_robIdx_flag(wbArbiter_io_out_8_bits_uop_robIdx_flag),
    .io_out_8_bits_uop_robIdx_value(wbArbiter_io_out_8_bits_uop_robIdx_value),
    .io_out_8_bits_uop_lqIdx_flag(wbArbiter_io_out_8_bits_uop_lqIdx_flag),
    .io_out_8_bits_uop_lqIdx_value(wbArbiter_io_out_8_bits_uop_lqIdx_value),
    .io_out_8_bits_data(wbArbiter_io_out_8_bits_data),
    .io_out_8_bits_redirectValid(wbArbiter_io_out_8_bits_redirectValid),
    .io_out_8_bits_redirect_cfiUpdate_isMisPred(wbArbiter_io_out_8_bits_redirect_cfiUpdate_isMisPred),
    .io_out_8_bits_debug_isPerfCnt(wbArbiter_io_out_8_bits_debug_isPerfCnt)
  );
  ExuBlock exuBlocks ( // @[XSCore.scala 210:17]
    .clock(exuBlocks_clock),
    .reset(exuBlocks_reset),
    .io_hartId(exuBlocks_io_hartId),
    .io_redirect_valid(exuBlocks_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(exuBlocks_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(exuBlocks_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(exuBlocks_io_redirect_bits_level),
    .io_allocPregs_0_isInt(exuBlocks_io_allocPregs_0_isInt),
    .io_allocPregs_0_isFp(exuBlocks_io_allocPregs_0_isFp),
    .io_allocPregs_0_preg(exuBlocks_io_allocPregs_0_preg),
    .io_allocPregs_1_isInt(exuBlocks_io_allocPregs_1_isInt),
    .io_allocPregs_1_isFp(exuBlocks_io_allocPregs_1_isFp),
    .io_allocPregs_1_preg(exuBlocks_io_allocPregs_1_preg),
    .io_in_0_valid(exuBlocks_io_in_0_valid),
    .io_in_0_bits_cf_trigger_backendEn_0(exuBlocks_io_in_0_bits_cf_trigger_backendEn_0),
    .io_in_0_bits_cf_trigger_backendEn_1(exuBlocks_io_in_0_bits_cf_trigger_backendEn_1),
    .io_in_0_bits_cf_pd_isRVC(exuBlocks_io_in_0_bits_cf_pd_isRVC),
    .io_in_0_bits_cf_pd_brType(exuBlocks_io_in_0_bits_cf_pd_brType),
    .io_in_0_bits_cf_pd_isCall(exuBlocks_io_in_0_bits_cf_pd_isCall),
    .io_in_0_bits_cf_pd_isRet(exuBlocks_io_in_0_bits_cf_pd_isRet),
    .io_in_0_bits_cf_pred_taken(exuBlocks_io_in_0_bits_cf_pred_taken),
    .io_in_0_bits_cf_storeSetHit(exuBlocks_io_in_0_bits_cf_storeSetHit),
    .io_in_0_bits_cf_loadWaitStrict(exuBlocks_io_in_0_bits_cf_loadWaitStrict),
    .io_in_0_bits_cf_ssid(exuBlocks_io_in_0_bits_cf_ssid),
    .io_in_0_bits_cf_ftqPtr_flag(exuBlocks_io_in_0_bits_cf_ftqPtr_flag),
    .io_in_0_bits_cf_ftqPtr_value(exuBlocks_io_in_0_bits_cf_ftqPtr_value),
    .io_in_0_bits_cf_ftqOffset(exuBlocks_io_in_0_bits_cf_ftqOffset),
    .io_in_0_bits_ctrl_srcType_0(exuBlocks_io_in_0_bits_ctrl_srcType_0),
    .io_in_0_bits_ctrl_srcType_1(exuBlocks_io_in_0_bits_ctrl_srcType_1),
    .io_in_0_bits_ctrl_fuType(exuBlocks_io_in_0_bits_ctrl_fuType),
    .io_in_0_bits_ctrl_fuOpType(exuBlocks_io_in_0_bits_ctrl_fuOpType),
    .io_in_0_bits_ctrl_rfWen(exuBlocks_io_in_0_bits_ctrl_rfWen),
    .io_in_0_bits_ctrl_fpWen(exuBlocks_io_in_0_bits_ctrl_fpWen),
    .io_in_0_bits_ctrl_selImm(exuBlocks_io_in_0_bits_ctrl_selImm),
    .io_in_0_bits_ctrl_imm(exuBlocks_io_in_0_bits_ctrl_imm),
    .io_in_0_bits_ctrl_fpu_isAddSub(exuBlocks_io_in_0_bits_ctrl_fpu_isAddSub),
    .io_in_0_bits_ctrl_fpu_typeTagIn(exuBlocks_io_in_0_bits_ctrl_fpu_typeTagIn),
    .io_in_0_bits_ctrl_fpu_typeTagOut(exuBlocks_io_in_0_bits_ctrl_fpu_typeTagOut),
    .io_in_0_bits_ctrl_fpu_fromInt(exuBlocks_io_in_0_bits_ctrl_fpu_fromInt),
    .io_in_0_bits_ctrl_fpu_wflags(exuBlocks_io_in_0_bits_ctrl_fpu_wflags),
    .io_in_0_bits_ctrl_fpu_fpWen(exuBlocks_io_in_0_bits_ctrl_fpu_fpWen),
    .io_in_0_bits_ctrl_fpu_fmaCmd(exuBlocks_io_in_0_bits_ctrl_fpu_fmaCmd),
    .io_in_0_bits_ctrl_fpu_div(exuBlocks_io_in_0_bits_ctrl_fpu_div),
    .io_in_0_bits_ctrl_fpu_sqrt(exuBlocks_io_in_0_bits_ctrl_fpu_sqrt),
    .io_in_0_bits_ctrl_fpu_fcvt(exuBlocks_io_in_0_bits_ctrl_fpu_fcvt),
    .io_in_0_bits_ctrl_fpu_typ(exuBlocks_io_in_0_bits_ctrl_fpu_typ),
    .io_in_0_bits_ctrl_fpu_fmt(exuBlocks_io_in_0_bits_ctrl_fpu_fmt),
    .io_in_0_bits_ctrl_fpu_ren3(exuBlocks_io_in_0_bits_ctrl_fpu_ren3),
    .io_in_0_bits_ctrl_fpu_rm(exuBlocks_io_in_0_bits_ctrl_fpu_rm),
    .io_in_0_bits_psrc_0(exuBlocks_io_in_0_bits_psrc_0),
    .io_in_0_bits_psrc_1(exuBlocks_io_in_0_bits_psrc_1),
    .io_in_0_bits_pdest(exuBlocks_io_in_0_bits_pdest),
    .io_in_0_bits_robIdx_flag(exuBlocks_io_in_0_bits_robIdx_flag),
    .io_in_0_bits_robIdx_value(exuBlocks_io_in_0_bits_robIdx_value),
    .io_in_0_bits_lqIdx_flag(exuBlocks_io_in_0_bits_lqIdx_flag),
    .io_in_0_bits_lqIdx_value(exuBlocks_io_in_0_bits_lqIdx_value),
    .io_in_0_bits_sqIdx_flag(exuBlocks_io_in_0_bits_sqIdx_flag),
    .io_in_0_bits_sqIdx_value(exuBlocks_io_in_0_bits_sqIdx_value),
    .io_in_1_valid(exuBlocks_io_in_1_valid),
    .io_in_1_bits_cf_trigger_backendEn_0(exuBlocks_io_in_1_bits_cf_trigger_backendEn_0),
    .io_in_1_bits_cf_trigger_backendEn_1(exuBlocks_io_in_1_bits_cf_trigger_backendEn_1),
    .io_in_1_bits_cf_pd_isRVC(exuBlocks_io_in_1_bits_cf_pd_isRVC),
    .io_in_1_bits_cf_pd_brType(exuBlocks_io_in_1_bits_cf_pd_brType),
    .io_in_1_bits_cf_pd_isCall(exuBlocks_io_in_1_bits_cf_pd_isCall),
    .io_in_1_bits_cf_pd_isRet(exuBlocks_io_in_1_bits_cf_pd_isRet),
    .io_in_1_bits_cf_pred_taken(exuBlocks_io_in_1_bits_cf_pred_taken),
    .io_in_1_bits_cf_storeSetHit(exuBlocks_io_in_1_bits_cf_storeSetHit),
    .io_in_1_bits_cf_loadWaitStrict(exuBlocks_io_in_1_bits_cf_loadWaitStrict),
    .io_in_1_bits_cf_ssid(exuBlocks_io_in_1_bits_cf_ssid),
    .io_in_1_bits_cf_ftqPtr_flag(exuBlocks_io_in_1_bits_cf_ftqPtr_flag),
    .io_in_1_bits_cf_ftqPtr_value(exuBlocks_io_in_1_bits_cf_ftqPtr_value),
    .io_in_1_bits_cf_ftqOffset(exuBlocks_io_in_1_bits_cf_ftqOffset),
    .io_in_1_bits_ctrl_srcType_0(exuBlocks_io_in_1_bits_ctrl_srcType_0),
    .io_in_1_bits_ctrl_srcType_1(exuBlocks_io_in_1_bits_ctrl_srcType_1),
    .io_in_1_bits_ctrl_fuType(exuBlocks_io_in_1_bits_ctrl_fuType),
    .io_in_1_bits_ctrl_fuOpType(exuBlocks_io_in_1_bits_ctrl_fuOpType),
    .io_in_1_bits_ctrl_rfWen(exuBlocks_io_in_1_bits_ctrl_rfWen),
    .io_in_1_bits_ctrl_fpWen(exuBlocks_io_in_1_bits_ctrl_fpWen),
    .io_in_1_bits_ctrl_selImm(exuBlocks_io_in_1_bits_ctrl_selImm),
    .io_in_1_bits_ctrl_imm(exuBlocks_io_in_1_bits_ctrl_imm),
    .io_in_1_bits_psrc_0(exuBlocks_io_in_1_bits_psrc_0),
    .io_in_1_bits_psrc_1(exuBlocks_io_in_1_bits_psrc_1),
    .io_in_1_bits_pdest(exuBlocks_io_in_1_bits_pdest),
    .io_in_1_bits_robIdx_flag(exuBlocks_io_in_1_bits_robIdx_flag),
    .io_in_1_bits_robIdx_value(exuBlocks_io_in_1_bits_robIdx_value),
    .io_in_1_bits_lqIdx_flag(exuBlocks_io_in_1_bits_lqIdx_flag),
    .io_in_1_bits_lqIdx_value(exuBlocks_io_in_1_bits_lqIdx_value),
    .io_in_1_bits_sqIdx_flag(exuBlocks_io_in_1_bits_sqIdx_flag),
    .io_in_1_bits_sqIdx_value(exuBlocks_io_in_1_bits_sqIdx_value),
    .io_in_4_valid(exuBlocks_io_in_4_valid),
    .io_in_4_bits_cf_trigger_backendEn_0(exuBlocks_io_in_4_bits_cf_trigger_backendEn_0),
    .io_in_4_bits_cf_trigger_backendEn_1(exuBlocks_io_in_4_bits_cf_trigger_backendEn_1),
    .io_in_4_bits_cf_pd_isRVC(exuBlocks_io_in_4_bits_cf_pd_isRVC),
    .io_in_4_bits_cf_pd_brType(exuBlocks_io_in_4_bits_cf_pd_brType),
    .io_in_4_bits_cf_pd_isCall(exuBlocks_io_in_4_bits_cf_pd_isCall),
    .io_in_4_bits_cf_pd_isRet(exuBlocks_io_in_4_bits_cf_pd_isRet),
    .io_in_4_bits_cf_pred_taken(exuBlocks_io_in_4_bits_cf_pred_taken),
    .io_in_4_bits_cf_storeSetHit(exuBlocks_io_in_4_bits_cf_storeSetHit),
    .io_in_4_bits_cf_loadWaitStrict(exuBlocks_io_in_4_bits_cf_loadWaitStrict),
    .io_in_4_bits_cf_ssid(exuBlocks_io_in_4_bits_cf_ssid),
    .io_in_4_bits_cf_ftqPtr_flag(exuBlocks_io_in_4_bits_cf_ftqPtr_flag),
    .io_in_4_bits_cf_ftqPtr_value(exuBlocks_io_in_4_bits_cf_ftqPtr_value),
    .io_in_4_bits_cf_ftqOffset(exuBlocks_io_in_4_bits_cf_ftqOffset),
    .io_in_4_bits_ctrl_srcType_0(exuBlocks_io_in_4_bits_ctrl_srcType_0),
    .io_in_4_bits_ctrl_srcType_1(exuBlocks_io_in_4_bits_ctrl_srcType_1),
    .io_in_4_bits_ctrl_fuType(exuBlocks_io_in_4_bits_ctrl_fuType),
    .io_in_4_bits_ctrl_fuOpType(exuBlocks_io_in_4_bits_ctrl_fuOpType),
    .io_in_4_bits_ctrl_rfWen(exuBlocks_io_in_4_bits_ctrl_rfWen),
    .io_in_4_bits_ctrl_fpWen(exuBlocks_io_in_4_bits_ctrl_fpWen),
    .io_in_4_bits_ctrl_imm(exuBlocks_io_in_4_bits_ctrl_imm),
    .io_in_4_bits_psrc_0(exuBlocks_io_in_4_bits_psrc_0),
    .io_in_4_bits_psrc_1(exuBlocks_io_in_4_bits_psrc_1),
    .io_in_4_bits_pdest(exuBlocks_io_in_4_bits_pdest),
    .io_in_4_bits_robIdx_flag(exuBlocks_io_in_4_bits_robIdx_flag),
    .io_in_4_bits_robIdx_value(exuBlocks_io_in_4_bits_robIdx_value),
    .io_in_5_valid(exuBlocks_io_in_5_valid),
    .io_in_5_bits_cf_trigger_backendEn_0(exuBlocks_io_in_5_bits_cf_trigger_backendEn_0),
    .io_in_5_bits_cf_trigger_backendEn_1(exuBlocks_io_in_5_bits_cf_trigger_backendEn_1),
    .io_in_5_bits_cf_pd_isRVC(exuBlocks_io_in_5_bits_cf_pd_isRVC),
    .io_in_5_bits_cf_pd_brType(exuBlocks_io_in_5_bits_cf_pd_brType),
    .io_in_5_bits_cf_pd_isCall(exuBlocks_io_in_5_bits_cf_pd_isCall),
    .io_in_5_bits_cf_pd_isRet(exuBlocks_io_in_5_bits_cf_pd_isRet),
    .io_in_5_bits_cf_pred_taken(exuBlocks_io_in_5_bits_cf_pred_taken),
    .io_in_5_bits_cf_storeSetHit(exuBlocks_io_in_5_bits_cf_storeSetHit),
    .io_in_5_bits_cf_loadWaitStrict(exuBlocks_io_in_5_bits_cf_loadWaitStrict),
    .io_in_5_bits_cf_ssid(exuBlocks_io_in_5_bits_cf_ssid),
    .io_in_5_bits_cf_ftqPtr_flag(exuBlocks_io_in_5_bits_cf_ftqPtr_flag),
    .io_in_5_bits_cf_ftqPtr_value(exuBlocks_io_in_5_bits_cf_ftqPtr_value),
    .io_in_5_bits_cf_ftqOffset(exuBlocks_io_in_5_bits_cf_ftqOffset),
    .io_in_5_bits_ctrl_srcType_0(exuBlocks_io_in_5_bits_ctrl_srcType_0),
    .io_in_5_bits_ctrl_srcType_1(exuBlocks_io_in_5_bits_ctrl_srcType_1),
    .io_in_5_bits_ctrl_fuType(exuBlocks_io_in_5_bits_ctrl_fuType),
    .io_in_5_bits_ctrl_fuOpType(exuBlocks_io_in_5_bits_ctrl_fuOpType),
    .io_in_5_bits_ctrl_rfWen(exuBlocks_io_in_5_bits_ctrl_rfWen),
    .io_in_5_bits_ctrl_fpWen(exuBlocks_io_in_5_bits_ctrl_fpWen),
    .io_in_5_bits_ctrl_imm(exuBlocks_io_in_5_bits_ctrl_imm),
    .io_in_5_bits_psrc_0(exuBlocks_io_in_5_bits_psrc_0),
    .io_in_5_bits_psrc_1(exuBlocks_io_in_5_bits_psrc_1),
    .io_in_5_bits_pdest(exuBlocks_io_in_5_bits_pdest),
    .io_in_5_bits_robIdx_flag(exuBlocks_io_in_5_bits_robIdx_flag),
    .io_in_5_bits_robIdx_value(exuBlocks_io_in_5_bits_robIdx_value),
    .io_in_6_valid(exuBlocks_io_in_6_valid),
    .io_in_6_bits_cf_trigger_backendEn_0(exuBlocks_io_in_6_bits_cf_trigger_backendEn_0),
    .io_in_6_bits_cf_trigger_backendEn_1(exuBlocks_io_in_6_bits_cf_trigger_backendEn_1),
    .io_in_6_bits_cf_pd_isRVC(exuBlocks_io_in_6_bits_cf_pd_isRVC),
    .io_in_6_bits_cf_pd_brType(exuBlocks_io_in_6_bits_cf_pd_brType),
    .io_in_6_bits_cf_pd_isCall(exuBlocks_io_in_6_bits_cf_pd_isCall),
    .io_in_6_bits_cf_pd_isRet(exuBlocks_io_in_6_bits_cf_pd_isRet),
    .io_in_6_bits_cf_pred_taken(exuBlocks_io_in_6_bits_cf_pred_taken),
    .io_in_6_bits_cf_storeSetHit(exuBlocks_io_in_6_bits_cf_storeSetHit),
    .io_in_6_bits_cf_loadWaitStrict(exuBlocks_io_in_6_bits_cf_loadWaitStrict),
    .io_in_6_bits_cf_ssid(exuBlocks_io_in_6_bits_cf_ssid),
    .io_in_6_bits_cf_ftqPtr_flag(exuBlocks_io_in_6_bits_cf_ftqPtr_flag),
    .io_in_6_bits_cf_ftqPtr_value(exuBlocks_io_in_6_bits_cf_ftqPtr_value),
    .io_in_6_bits_cf_ftqOffset(exuBlocks_io_in_6_bits_cf_ftqOffset),
    .io_in_6_bits_ctrl_srcType_0(exuBlocks_io_in_6_bits_ctrl_srcType_0),
    .io_in_6_bits_ctrl_srcType_1(exuBlocks_io_in_6_bits_ctrl_srcType_1),
    .io_in_6_bits_ctrl_fuType(exuBlocks_io_in_6_bits_ctrl_fuType),
    .io_in_6_bits_ctrl_fuOpType(exuBlocks_io_in_6_bits_ctrl_fuOpType),
    .io_in_6_bits_ctrl_rfWen(exuBlocks_io_in_6_bits_ctrl_rfWen),
    .io_in_6_bits_ctrl_fpWen(exuBlocks_io_in_6_bits_ctrl_fpWen),
    .io_in_6_bits_ctrl_imm(exuBlocks_io_in_6_bits_ctrl_imm),
    .io_in_6_bits_psrc_0(exuBlocks_io_in_6_bits_psrc_0),
    .io_in_6_bits_psrc_1(exuBlocks_io_in_6_bits_psrc_1),
    .io_in_6_bits_pdest(exuBlocks_io_in_6_bits_pdest),
    .io_in_6_bits_robIdx_flag(exuBlocks_io_in_6_bits_robIdx_flag),
    .io_in_6_bits_robIdx_value(exuBlocks_io_in_6_bits_robIdx_value),
    .io_in_7_valid(exuBlocks_io_in_7_valid),
    .io_in_7_bits_cf_trigger_backendEn_0(exuBlocks_io_in_7_bits_cf_trigger_backendEn_0),
    .io_in_7_bits_cf_trigger_backendEn_1(exuBlocks_io_in_7_bits_cf_trigger_backendEn_1),
    .io_in_7_bits_cf_pd_isRVC(exuBlocks_io_in_7_bits_cf_pd_isRVC),
    .io_in_7_bits_cf_pd_brType(exuBlocks_io_in_7_bits_cf_pd_brType),
    .io_in_7_bits_cf_pd_isCall(exuBlocks_io_in_7_bits_cf_pd_isCall),
    .io_in_7_bits_cf_pd_isRet(exuBlocks_io_in_7_bits_cf_pd_isRet),
    .io_in_7_bits_cf_pred_taken(exuBlocks_io_in_7_bits_cf_pred_taken),
    .io_in_7_bits_cf_storeSetHit(exuBlocks_io_in_7_bits_cf_storeSetHit),
    .io_in_7_bits_cf_loadWaitStrict(exuBlocks_io_in_7_bits_cf_loadWaitStrict),
    .io_in_7_bits_cf_ssid(exuBlocks_io_in_7_bits_cf_ssid),
    .io_in_7_bits_cf_ftqPtr_flag(exuBlocks_io_in_7_bits_cf_ftqPtr_flag),
    .io_in_7_bits_cf_ftqPtr_value(exuBlocks_io_in_7_bits_cf_ftqPtr_value),
    .io_in_7_bits_cf_ftqOffset(exuBlocks_io_in_7_bits_cf_ftqOffset),
    .io_in_7_bits_ctrl_srcType_0(exuBlocks_io_in_7_bits_ctrl_srcType_0),
    .io_in_7_bits_ctrl_srcType_1(exuBlocks_io_in_7_bits_ctrl_srcType_1),
    .io_in_7_bits_ctrl_fuType(exuBlocks_io_in_7_bits_ctrl_fuType),
    .io_in_7_bits_ctrl_fuOpType(exuBlocks_io_in_7_bits_ctrl_fuOpType),
    .io_in_7_bits_ctrl_rfWen(exuBlocks_io_in_7_bits_ctrl_rfWen),
    .io_in_7_bits_ctrl_fpWen(exuBlocks_io_in_7_bits_ctrl_fpWen),
    .io_in_7_bits_ctrl_imm(exuBlocks_io_in_7_bits_ctrl_imm),
    .io_in_7_bits_psrc_0(exuBlocks_io_in_7_bits_psrc_0),
    .io_in_7_bits_psrc_1(exuBlocks_io_in_7_bits_psrc_1),
    .io_in_7_bits_pdest(exuBlocks_io_in_7_bits_pdest),
    .io_in_7_bits_robIdx_flag(exuBlocks_io_in_7_bits_robIdx_flag),
    .io_in_7_bits_robIdx_value(exuBlocks_io_in_7_bits_robIdx_value),
    .io_issue_0_ready(exuBlocks_io_issue_0_ready),
    .io_issue_0_valid(exuBlocks_io_issue_0_valid),
    .io_issue_0_bits_uop_cf_trigger_backendEn_1(exuBlocks_io_issue_0_bits_uop_cf_trigger_backendEn_1),
    .io_issue_0_bits_uop_cf_storeSetHit(exuBlocks_io_issue_0_bits_uop_cf_storeSetHit),
    .io_issue_0_bits_uop_cf_loadWaitStrict(exuBlocks_io_issue_0_bits_uop_cf_loadWaitStrict),
    .io_issue_0_bits_uop_cf_ssid(exuBlocks_io_issue_0_bits_uop_cf_ssid),
    .io_issue_0_bits_uop_cf_ftqPtr_flag(exuBlocks_io_issue_0_bits_uop_cf_ftqPtr_flag),
    .io_issue_0_bits_uop_cf_ftqPtr_value(exuBlocks_io_issue_0_bits_uop_cf_ftqPtr_value),
    .io_issue_0_bits_uop_cf_ftqOffset(exuBlocks_io_issue_0_bits_uop_cf_ftqOffset),
    .io_issue_0_bits_uop_ctrl_fuOpType(exuBlocks_io_issue_0_bits_uop_ctrl_fuOpType),
    .io_issue_0_bits_uop_ctrl_rfWen(exuBlocks_io_issue_0_bits_uop_ctrl_rfWen),
    .io_issue_0_bits_uop_ctrl_fpWen(exuBlocks_io_issue_0_bits_uop_ctrl_fpWen),
    .io_issue_0_bits_uop_ctrl_imm(exuBlocks_io_issue_0_bits_uop_ctrl_imm),
    .io_issue_0_bits_uop_pdest(exuBlocks_io_issue_0_bits_uop_pdest),
    .io_issue_0_bits_uop_robIdx_flag(exuBlocks_io_issue_0_bits_uop_robIdx_flag),
    .io_issue_0_bits_uop_robIdx_value(exuBlocks_io_issue_0_bits_uop_robIdx_value),
    .io_issue_0_bits_uop_lqIdx_flag(exuBlocks_io_issue_0_bits_uop_lqIdx_flag),
    .io_issue_0_bits_uop_lqIdx_value(exuBlocks_io_issue_0_bits_uop_lqIdx_value),
    .io_issue_0_bits_uop_sqIdx_flag(exuBlocks_io_issue_0_bits_uop_sqIdx_flag),
    .io_issue_0_bits_uop_sqIdx_value(exuBlocks_io_issue_0_bits_uop_sqIdx_value),
    .io_issue_0_bits_src_0(exuBlocks_io_issue_0_bits_src_0),
    .io_issue_1_ready(exuBlocks_io_issue_1_ready),
    .io_issue_1_valid(exuBlocks_io_issue_1_valid),
    .io_issue_1_bits_uop_cf_trigger_backendEn_1(exuBlocks_io_issue_1_bits_uop_cf_trigger_backendEn_1),
    .io_issue_1_bits_uop_cf_storeSetHit(exuBlocks_io_issue_1_bits_uop_cf_storeSetHit),
    .io_issue_1_bits_uop_cf_loadWaitStrict(exuBlocks_io_issue_1_bits_uop_cf_loadWaitStrict),
    .io_issue_1_bits_uop_cf_ssid(exuBlocks_io_issue_1_bits_uop_cf_ssid),
    .io_issue_1_bits_uop_cf_ftqPtr_flag(exuBlocks_io_issue_1_bits_uop_cf_ftqPtr_flag),
    .io_issue_1_bits_uop_cf_ftqPtr_value(exuBlocks_io_issue_1_bits_uop_cf_ftqPtr_value),
    .io_issue_1_bits_uop_cf_ftqOffset(exuBlocks_io_issue_1_bits_uop_cf_ftqOffset),
    .io_issue_1_bits_uop_ctrl_fuOpType(exuBlocks_io_issue_1_bits_uop_ctrl_fuOpType),
    .io_issue_1_bits_uop_ctrl_rfWen(exuBlocks_io_issue_1_bits_uop_ctrl_rfWen),
    .io_issue_1_bits_uop_ctrl_fpWen(exuBlocks_io_issue_1_bits_uop_ctrl_fpWen),
    .io_issue_1_bits_uop_ctrl_imm(exuBlocks_io_issue_1_bits_uop_ctrl_imm),
    .io_issue_1_bits_uop_pdest(exuBlocks_io_issue_1_bits_uop_pdest),
    .io_issue_1_bits_uop_robIdx_flag(exuBlocks_io_issue_1_bits_uop_robIdx_flag),
    .io_issue_1_bits_uop_robIdx_value(exuBlocks_io_issue_1_bits_uop_robIdx_value),
    .io_issue_1_bits_uop_lqIdx_flag(exuBlocks_io_issue_1_bits_uop_lqIdx_flag),
    .io_issue_1_bits_uop_lqIdx_value(exuBlocks_io_issue_1_bits_uop_lqIdx_value),
    .io_issue_1_bits_uop_sqIdx_flag(exuBlocks_io_issue_1_bits_uop_sqIdx_flag),
    .io_issue_1_bits_uop_sqIdx_value(exuBlocks_io_issue_1_bits_uop_sqIdx_value),
    .io_issue_1_bits_src_0(exuBlocks_io_issue_1_bits_src_0),
    .io_issue_2_ready(exuBlocks_io_issue_2_ready),
    .io_issue_2_valid(exuBlocks_io_issue_2_valid),
    .io_issue_2_bits_uop_cf_trigger_backendEn_0(exuBlocks_io_issue_2_bits_uop_cf_trigger_backendEn_0),
    .io_issue_2_bits_uop_cf_trigger_backendEn_1(exuBlocks_io_issue_2_bits_uop_cf_trigger_backendEn_1),
    .io_issue_2_bits_uop_cf_ftqPtr_value(exuBlocks_io_issue_2_bits_uop_cf_ftqPtr_value),
    .io_issue_2_bits_uop_cf_ftqOffset(exuBlocks_io_issue_2_bits_uop_cf_ftqOffset),
    .io_issue_2_bits_uop_ctrl_fuType(exuBlocks_io_issue_2_bits_uop_ctrl_fuType),
    .io_issue_2_bits_uop_ctrl_fuOpType(exuBlocks_io_issue_2_bits_uop_ctrl_fuOpType),
    .io_issue_2_bits_uop_ctrl_rfWen(exuBlocks_io_issue_2_bits_uop_ctrl_rfWen),
    .io_issue_2_bits_uop_ctrl_fpWen(exuBlocks_io_issue_2_bits_uop_ctrl_fpWen),
    .io_issue_2_bits_uop_ctrl_imm(exuBlocks_io_issue_2_bits_uop_ctrl_imm),
    .io_issue_2_bits_uop_pdest(exuBlocks_io_issue_2_bits_uop_pdest),
    .io_issue_2_bits_uop_robIdx_flag(exuBlocks_io_issue_2_bits_uop_robIdx_flag),
    .io_issue_2_bits_uop_robIdx_value(exuBlocks_io_issue_2_bits_uop_robIdx_value),
    .io_issue_2_bits_uop_lqIdx_flag(exuBlocks_io_issue_2_bits_uop_lqIdx_flag),
    .io_issue_2_bits_uop_lqIdx_value(exuBlocks_io_issue_2_bits_uop_lqIdx_value),
    .io_issue_2_bits_uop_sqIdx_flag(exuBlocks_io_issue_2_bits_uop_sqIdx_flag),
    .io_issue_2_bits_uop_sqIdx_value(exuBlocks_io_issue_2_bits_uop_sqIdx_value),
    .io_issue_2_bits_src_0(exuBlocks_io_issue_2_bits_src_0),
    .io_issue_3_ready(exuBlocks_io_issue_3_ready),
    .io_issue_3_valid(exuBlocks_io_issue_3_valid),
    .io_issue_3_bits_uop_cf_trigger_backendEn_0(exuBlocks_io_issue_3_bits_uop_cf_trigger_backendEn_0),
    .io_issue_3_bits_uop_cf_trigger_backendEn_1(exuBlocks_io_issue_3_bits_uop_cf_trigger_backendEn_1),
    .io_issue_3_bits_uop_cf_ftqPtr_value(exuBlocks_io_issue_3_bits_uop_cf_ftqPtr_value),
    .io_issue_3_bits_uop_cf_ftqOffset(exuBlocks_io_issue_3_bits_uop_cf_ftqOffset),
    .io_issue_3_bits_uop_ctrl_fuType(exuBlocks_io_issue_3_bits_uop_ctrl_fuType),
    .io_issue_3_bits_uop_ctrl_fuOpType(exuBlocks_io_issue_3_bits_uop_ctrl_fuOpType),
    .io_issue_3_bits_uop_ctrl_rfWen(exuBlocks_io_issue_3_bits_uop_ctrl_rfWen),
    .io_issue_3_bits_uop_ctrl_fpWen(exuBlocks_io_issue_3_bits_uop_ctrl_fpWen),
    .io_issue_3_bits_uop_ctrl_imm(exuBlocks_io_issue_3_bits_uop_ctrl_imm),
    .io_issue_3_bits_uop_pdest(exuBlocks_io_issue_3_bits_uop_pdest),
    .io_issue_3_bits_uop_robIdx_flag(exuBlocks_io_issue_3_bits_uop_robIdx_flag),
    .io_issue_3_bits_uop_robIdx_value(exuBlocks_io_issue_3_bits_uop_robIdx_value),
    .io_issue_3_bits_uop_lqIdx_flag(exuBlocks_io_issue_3_bits_uop_lqIdx_flag),
    .io_issue_3_bits_uop_lqIdx_value(exuBlocks_io_issue_3_bits_uop_lqIdx_value),
    .io_issue_3_bits_uop_sqIdx_flag(exuBlocks_io_issue_3_bits_uop_sqIdx_flag),
    .io_issue_3_bits_uop_sqIdx_value(exuBlocks_io_issue_3_bits_uop_sqIdx_value),
    .io_issue_3_bits_src_0(exuBlocks_io_issue_3_bits_src_0),
    .io_issue_4_ready(exuBlocks_io_issue_4_ready),
    .io_issue_4_valid(exuBlocks_io_issue_4_valid),
    .io_issue_4_bits_uop_ctrl_fuType(exuBlocks_io_issue_4_bits_uop_ctrl_fuType),
    .io_issue_4_bits_uop_ctrl_fuOpType(exuBlocks_io_issue_4_bits_uop_ctrl_fuOpType),
    .io_issue_4_bits_uop_robIdx_flag(exuBlocks_io_issue_4_bits_uop_robIdx_flag),
    .io_issue_4_bits_uop_robIdx_value(exuBlocks_io_issue_4_bits_uop_robIdx_value),
    .io_issue_4_bits_uop_sqIdx_flag(exuBlocks_io_issue_4_bits_uop_sqIdx_flag),
    .io_issue_4_bits_uop_sqIdx_value(exuBlocks_io_issue_4_bits_uop_sqIdx_value),
    .io_issue_4_bits_src_0(exuBlocks_io_issue_4_bits_src_0),
    .io_issue_5_ready(exuBlocks_io_issue_5_ready),
    .io_issue_5_valid(exuBlocks_io_issue_5_valid),
    .io_issue_5_bits_uop_ctrl_fuType(exuBlocks_io_issue_5_bits_uop_ctrl_fuType),
    .io_issue_5_bits_uop_ctrl_fuOpType(exuBlocks_io_issue_5_bits_uop_ctrl_fuOpType),
    .io_issue_5_bits_uop_robIdx_flag(exuBlocks_io_issue_5_bits_uop_robIdx_flag),
    .io_issue_5_bits_uop_robIdx_value(exuBlocks_io_issue_5_bits_uop_robIdx_value),
    .io_issue_5_bits_uop_sqIdx_flag(exuBlocks_io_issue_5_bits_uop_sqIdx_flag),
    .io_issue_5_bits_uop_sqIdx_value(exuBlocks_io_issue_5_bits_uop_sqIdx_value),
    .io_issue_5_bits_src_0(exuBlocks_io_issue_5_bits_src_0),
    .io_rfWriteback_2_valid(exuBlocks_io_rfWriteback_2_valid),
    .io_rfWriteback_2_bits_uop_ctrl_rfWen(exuBlocks_io_rfWriteback_2_bits_uop_ctrl_rfWen),
    .io_rfWriteback_2_bits_uop_ctrl_fpWen(exuBlocks_io_rfWriteback_2_bits_uop_ctrl_fpWen),
    .io_rfWriteback_2_bits_uop_pdest(exuBlocks_io_rfWriteback_2_bits_uop_pdest),
    .io_rfWriteback_2_bits_data(exuBlocks_io_rfWriteback_2_bits_data),
    .io_rfWriteback_3_valid(exuBlocks_io_rfWriteback_3_valid),
    .io_rfWriteback_3_bits_uop_ctrl_rfWen(exuBlocks_io_rfWriteback_3_bits_uop_ctrl_rfWen),
    .io_rfWriteback_3_bits_uop_ctrl_fpWen(exuBlocks_io_rfWriteback_3_bits_uop_ctrl_fpWen),
    .io_rfWriteback_3_bits_uop_pdest(exuBlocks_io_rfWriteback_3_bits_uop_pdest),
    .io_rfWriteback_3_bits_data(exuBlocks_io_rfWriteback_3_bits_data),
    .io_rfWriteback_4_valid(exuBlocks_io_rfWriteback_4_valid),
    .io_rfWriteback_4_bits_uop_ctrl_rfWen(exuBlocks_io_rfWriteback_4_bits_uop_ctrl_rfWen),
    .io_rfWriteback_4_bits_uop_ctrl_fpWen(exuBlocks_io_rfWriteback_4_bits_uop_ctrl_fpWen),
    .io_rfWriteback_4_bits_uop_pdest(exuBlocks_io_rfWriteback_4_bits_uop_pdest),
    .io_rfWriteback_4_bits_data(exuBlocks_io_rfWriteback_4_bits_data),
    .io_rfWriteback_5_valid(exuBlocks_io_rfWriteback_5_valid),
    .io_rfWriteback_5_bits_uop_ctrl_rfWen(exuBlocks_io_rfWriteback_5_bits_uop_ctrl_rfWen),
    .io_rfWriteback_5_bits_uop_ctrl_fpWen(exuBlocks_io_rfWriteback_5_bits_uop_ctrl_fpWen),
    .io_rfWriteback_5_bits_uop_pdest(exuBlocks_io_rfWriteback_5_bits_uop_pdest),
    .io_rfWriteback_5_bits_data(exuBlocks_io_rfWriteback_5_bits_data),
    .io_rfWriteback_6_valid(exuBlocks_io_rfWriteback_6_valid),
    .io_rfWriteback_6_bits_uop_ctrl_rfWen(exuBlocks_io_rfWriteback_6_bits_uop_ctrl_rfWen),
    .io_rfWriteback_6_bits_uop_ctrl_fpWen(exuBlocks_io_rfWriteback_6_bits_uop_ctrl_fpWen),
    .io_rfWriteback_6_bits_uop_pdest(exuBlocks_io_rfWriteback_6_bits_uop_pdest),
    .io_rfWriteback_6_bits_data(exuBlocks_io_rfWriteback_6_bits_data),
    .io_rfWriteback_7_valid(exuBlocks_io_rfWriteback_7_valid),
    .io_rfWriteback_7_bits_uop_ctrl_rfWen(exuBlocks_io_rfWriteback_7_bits_uop_ctrl_rfWen),
    .io_rfWriteback_7_bits_uop_ctrl_fpWen(exuBlocks_io_rfWriteback_7_bits_uop_ctrl_fpWen),
    .io_rfWriteback_7_bits_uop_pdest(exuBlocks_io_rfWriteback_7_bits_uop_pdest),
    .io_rfWriteback_7_bits_data(exuBlocks_io_rfWriteback_7_bits_data),
    .io_rfWriteback_8_valid(exuBlocks_io_rfWriteback_8_valid),
    .io_rfWriteback_8_bits_uop_ctrl_rfWen(exuBlocks_io_rfWriteback_8_bits_uop_ctrl_rfWen),
    .io_rfWriteback_8_bits_uop_ctrl_fpWen(exuBlocks_io_rfWriteback_8_bits_uop_ctrl_fpWen),
    .io_rfWriteback_8_bits_uop_pdest(exuBlocks_io_rfWriteback_8_bits_uop_pdest),
    .io_rfWriteback_8_bits_data(exuBlocks_io_rfWriteback_8_bits_data),
    .io_fastUopIn_2_valid(exuBlocks_io_fastUopIn_2_valid),
    .io_fastUopIn_2_bits_ctrl_rfWen(exuBlocks_io_fastUopIn_2_bits_ctrl_rfWen),
    .io_fastUopIn_2_bits_pdest(exuBlocks_io_fastUopIn_2_bits_pdest),
    .io_fastUopIn_3_valid(exuBlocks_io_fastUopIn_3_valid),
    .io_fastUopIn_3_bits_ctrl_rfWen(exuBlocks_io_fastUopIn_3_bits_ctrl_rfWen),
    .io_fastUopIn_3_bits_pdest(exuBlocks_io_fastUopIn_3_bits_pdest),
    .io_fuWriteback_0_valid(exuBlocks_io_fuWriteback_0_valid),
    .io_fuWriteback_0_bits_uop_ctrl_rfWen(exuBlocks_io_fuWriteback_0_bits_uop_ctrl_rfWen),
    .io_fuWriteback_0_bits_uop_pdest(exuBlocks_io_fuWriteback_0_bits_uop_pdest),
    .io_fuWriteback_0_bits_uop_robIdx_flag(exuBlocks_io_fuWriteback_0_bits_uop_robIdx_flag),
    .io_fuWriteback_0_bits_uop_robIdx_value(exuBlocks_io_fuWriteback_0_bits_uop_robIdx_value),
    .io_fuWriteback_0_bits_uop_lqIdx_flag(exuBlocks_io_fuWriteback_0_bits_uop_lqIdx_flag),
    .io_fuWriteback_0_bits_uop_lqIdx_value(exuBlocks_io_fuWriteback_0_bits_uop_lqIdx_value),
    .io_fuWriteback_0_bits_data(exuBlocks_io_fuWriteback_0_bits_data),
    .io_fuWriteback_0_bits_redirectValid(exuBlocks_io_fuWriteback_0_bits_redirectValid),
    .io_fuWriteback_0_bits_redirect_cfiUpdate_isMisPred(exuBlocks_io_fuWriteback_0_bits_redirect_cfiUpdate_isMisPred),
    .io_fuWriteback_1_valid(exuBlocks_io_fuWriteback_1_valid),
    .io_fuWriteback_1_bits_uop_ctrl_rfWen(exuBlocks_io_fuWriteback_1_bits_uop_ctrl_rfWen),
    .io_fuWriteback_1_bits_uop_pdest(exuBlocks_io_fuWriteback_1_bits_uop_pdest),
    .io_fuWriteback_1_bits_uop_robIdx_flag(exuBlocks_io_fuWriteback_1_bits_uop_robIdx_flag),
    .io_fuWriteback_1_bits_uop_robIdx_value(exuBlocks_io_fuWriteback_1_bits_uop_robIdx_value),
    .io_fuWriteback_1_bits_uop_lqIdx_flag(exuBlocks_io_fuWriteback_1_bits_uop_lqIdx_flag),
    .io_fuWriteback_1_bits_uop_lqIdx_value(exuBlocks_io_fuWriteback_1_bits_uop_lqIdx_value),
    .io_fuWriteback_1_bits_data(exuBlocks_io_fuWriteback_1_bits_data),
    .io_fuWriteback_1_bits_redirectValid(exuBlocks_io_fuWriteback_1_bits_redirectValid),
    .io_fuWriteback_1_bits_redirect_cfiUpdate_isMisPred(exuBlocks_io_fuWriteback_1_bits_redirect_cfiUpdate_isMisPred),
    .io_fuWriteback_2_valid(exuBlocks_io_fuWriteback_2_valid),
    .io_fuWriteback_2_bits_uop_ctrl_rfWen(exuBlocks_io_fuWriteback_2_bits_uop_ctrl_rfWen),
    .io_fuWriteback_2_bits_uop_ctrl_fpWen(exuBlocks_io_fuWriteback_2_bits_uop_ctrl_fpWen),
    .io_fuWriteback_2_bits_uop_pdest(exuBlocks_io_fuWriteback_2_bits_uop_pdest),
    .io_fuWriteback_2_bits_uop_robIdx_flag(exuBlocks_io_fuWriteback_2_bits_uop_robIdx_flag),
    .io_fuWriteback_2_bits_uop_robIdx_value(exuBlocks_io_fuWriteback_2_bits_uop_robIdx_value),
    .io_fuWriteback_2_bits_uop_lqIdx_flag(exuBlocks_io_fuWriteback_2_bits_uop_lqIdx_flag),
    .io_fuWriteback_2_bits_uop_lqIdx_value(exuBlocks_io_fuWriteback_2_bits_uop_lqIdx_value),
    .io_fuWriteback_2_bits_data(exuBlocks_io_fuWriteback_2_bits_data),
    .io_fuWriteback_3_ready(exuBlocks_io_fuWriteback_3_ready),
    .io_fuWriteback_3_valid(exuBlocks_io_fuWriteback_3_valid),
    .io_fuWriteback_3_bits_uop_cf_exceptionVec_2(exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_2),
    .io_fuWriteback_3_bits_uop_cf_exceptionVec_3(exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_3),
    .io_fuWriteback_3_bits_uop_cf_exceptionVec_8(exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_8),
    .io_fuWriteback_3_bits_uop_cf_exceptionVec_9(exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_9),
    .io_fuWriteback_3_bits_uop_cf_exceptionVec_11(exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_11),
    .io_fuWriteback_3_bits_uop_ctrl_rfWen(exuBlocks_io_fuWriteback_3_bits_uop_ctrl_rfWen),
    .io_fuWriteback_3_bits_uop_ctrl_fpWen(exuBlocks_io_fuWriteback_3_bits_uop_ctrl_fpWen),
    .io_fuWriteback_3_bits_uop_ctrl_flushPipe(exuBlocks_io_fuWriteback_3_bits_uop_ctrl_flushPipe),
    .io_fuWriteback_3_bits_uop_pdest(exuBlocks_io_fuWriteback_3_bits_uop_pdest),
    .io_fuWriteback_3_bits_uop_robIdx_flag(exuBlocks_io_fuWriteback_3_bits_uop_robIdx_flag),
    .io_fuWriteback_3_bits_uop_robIdx_value(exuBlocks_io_fuWriteback_3_bits_uop_robIdx_value),
    .io_fuWriteback_3_bits_uop_lqIdx_flag(exuBlocks_io_fuWriteback_3_bits_uop_lqIdx_flag),
    .io_fuWriteback_3_bits_uop_lqIdx_value(exuBlocks_io_fuWriteback_3_bits_uop_lqIdx_value),
    .io_fuWriteback_3_bits_data(exuBlocks_io_fuWriteback_3_bits_data),
    .io_fuWriteback_3_bits_fflags(exuBlocks_io_fuWriteback_3_bits_fflags),
    .io_fuWriteback_3_bits_redirectValid(exuBlocks_io_fuWriteback_3_bits_redirectValid),
    .io_fuWriteback_3_bits_redirect_cfiUpdate_isMisPred(exuBlocks_io_fuWriteback_3_bits_redirect_cfiUpdate_isMisPred),
    .io_fuWriteback_3_bits_debug_isPerfCnt(exuBlocks_io_fuWriteback_3_bits_debug_isPerfCnt),
    .io_scheExtra_rsReady_0(exuBlocks_io_scheExtra_rsReady_0),
    .io_scheExtra_rsReady_1(exuBlocks_io_scheExtra_rsReady_1),
    .io_scheExtra_rsReady_2(exuBlocks_io_scheExtra_rsReady_2),
    .io_scheExtra_rsReady_3(exuBlocks_io_scheExtra_rsReady_3),
    .io_scheExtra_rsReady_4(exuBlocks_io_scheExtra_rsReady_4),
    .io_scheExtra_rsReady_5(exuBlocks_io_scheExtra_rsReady_5),
    .io_scheExtra_rsReady_6(exuBlocks_io_scheExtra_rsReady_6),
    .io_scheExtra_rsReady_7(exuBlocks_io_scheExtra_rsReady_7),
    .io_scheExtra_feedback_0_feedbackSlow_valid(exuBlocks_io_scheExtra_feedback_0_feedbackSlow_valid),
    .io_scheExtra_feedback_0_feedbackSlow_bits_rsIdx(exuBlocks_io_scheExtra_feedback_0_feedbackSlow_bits_rsIdx),
    .io_scheExtra_feedback_0_feedbackSlow_bits_hit(exuBlocks_io_scheExtra_feedback_0_feedbackSlow_bits_hit),
    .io_scheExtra_feedback_0_feedbackFast_valid(exuBlocks_io_scheExtra_feedback_0_feedbackFast_valid),
    .io_scheExtra_feedback_0_feedbackFast_bits_rsIdx(exuBlocks_io_scheExtra_feedback_0_feedbackFast_bits_rsIdx),
    .io_scheExtra_feedback_0_rsIdx(exuBlocks_io_scheExtra_feedback_0_rsIdx),
    .io_scheExtra_feedback_1_feedbackSlow_valid(exuBlocks_io_scheExtra_feedback_1_feedbackSlow_valid),
    .io_scheExtra_feedback_1_feedbackSlow_bits_rsIdx(exuBlocks_io_scheExtra_feedback_1_feedbackSlow_bits_rsIdx),
    .io_scheExtra_feedback_1_feedbackSlow_bits_hit(exuBlocks_io_scheExtra_feedback_1_feedbackSlow_bits_hit),
    .io_scheExtra_feedback_1_feedbackFast_valid(exuBlocks_io_scheExtra_feedback_1_feedbackFast_valid),
    .io_scheExtra_feedback_1_feedbackFast_bits_rsIdx(exuBlocks_io_scheExtra_feedback_1_feedbackFast_bits_rsIdx),
    .io_scheExtra_feedback_1_rsIdx(exuBlocks_io_scheExtra_feedback_1_rsIdx),
    .io_scheExtra_feedback_2_feedbackSlow_valid(exuBlocks_io_scheExtra_feedback_2_feedbackSlow_valid),
    .io_scheExtra_feedback_2_feedbackSlow_bits_rsIdx(exuBlocks_io_scheExtra_feedback_2_feedbackSlow_bits_rsIdx),
    .io_scheExtra_feedback_2_feedbackSlow_bits_hit(exuBlocks_io_scheExtra_feedback_2_feedbackSlow_bits_hit),
    .io_scheExtra_feedback_2_rsIdx(exuBlocks_io_scheExtra_feedback_2_rsIdx),
    .io_scheExtra_feedback_3_feedbackSlow_valid(exuBlocks_io_scheExtra_feedback_3_feedbackSlow_valid),
    .io_scheExtra_feedback_3_feedbackSlow_bits_rsIdx(exuBlocks_io_scheExtra_feedback_3_feedbackSlow_bits_rsIdx),
    .io_scheExtra_feedback_3_feedbackSlow_bits_hit(exuBlocks_io_scheExtra_feedback_3_feedbackSlow_bits_hit),
    .io_scheExtra_feedback_3_rsIdx(exuBlocks_io_scheExtra_feedback_3_rsIdx),
    .io_scheExtra_fpRfReadIn_0_addr(exuBlocks_io_scheExtra_fpRfReadIn_0_addr),
    .io_scheExtra_fpRfReadIn_0_data(exuBlocks_io_scheExtra_fpRfReadIn_0_data),
    .io_scheExtra_fpRfReadIn_1_addr(exuBlocks_io_scheExtra_fpRfReadIn_1_addr),
    .io_scheExtra_fpRfReadIn_1_data(exuBlocks_io_scheExtra_fpRfReadIn_1_data),
    .io_scheExtra_loadFastMatch_0(exuBlocks_io_scheExtra_loadFastMatch_0),
    .io_scheExtra_loadFastMatch_1(exuBlocks_io_scheExtra_loadFastMatch_1),
    .io_scheExtra_loadFastFuOpType_0(exuBlocks_io_scheExtra_loadFastFuOpType_0),
    .io_scheExtra_loadFastFuOpType_1(exuBlocks_io_scheExtra_loadFastFuOpType_1),
    .io_scheExtra_loadFastImm_0(exuBlocks_io_scheExtra_loadFastImm_0),
    .io_scheExtra_loadFastImm_1(exuBlocks_io_scheExtra_loadFastImm_1),
    .io_scheExtra_jumpPc(exuBlocks_io_scheExtra_jumpPc),
    .io_scheExtra_jalr_target(exuBlocks_io_scheExtra_jalr_target),
    .io_scheExtra_lcommit(exuBlocks_io_scheExtra_lcommit),
    .io_scheExtra_scommit(exuBlocks_io_scheExtra_scommit),
    .io_scheExtra_lqCancelCnt(exuBlocks_io_scheExtra_lqCancelCnt),
    .io_scheExtra_sqCancelCnt(exuBlocks_io_scheExtra_sqCancelCnt),
    .io_scheExtra_debug_int_rat_0(exuBlocks_io_scheExtra_debug_int_rat_0),
    .io_scheExtra_debug_int_rat_1(exuBlocks_io_scheExtra_debug_int_rat_1),
    .io_scheExtra_debug_int_rat_2(exuBlocks_io_scheExtra_debug_int_rat_2),
    .io_scheExtra_debug_int_rat_3(exuBlocks_io_scheExtra_debug_int_rat_3),
    .io_scheExtra_debug_int_rat_4(exuBlocks_io_scheExtra_debug_int_rat_4),
    .io_scheExtra_debug_int_rat_5(exuBlocks_io_scheExtra_debug_int_rat_5),
    .io_scheExtra_debug_int_rat_6(exuBlocks_io_scheExtra_debug_int_rat_6),
    .io_scheExtra_debug_int_rat_7(exuBlocks_io_scheExtra_debug_int_rat_7),
    .io_scheExtra_debug_int_rat_8(exuBlocks_io_scheExtra_debug_int_rat_8),
    .io_scheExtra_debug_int_rat_9(exuBlocks_io_scheExtra_debug_int_rat_9),
    .io_scheExtra_debug_int_rat_10(exuBlocks_io_scheExtra_debug_int_rat_10),
    .io_scheExtra_debug_int_rat_11(exuBlocks_io_scheExtra_debug_int_rat_11),
    .io_scheExtra_debug_int_rat_12(exuBlocks_io_scheExtra_debug_int_rat_12),
    .io_scheExtra_debug_int_rat_13(exuBlocks_io_scheExtra_debug_int_rat_13),
    .io_scheExtra_debug_int_rat_14(exuBlocks_io_scheExtra_debug_int_rat_14),
    .io_scheExtra_debug_int_rat_15(exuBlocks_io_scheExtra_debug_int_rat_15),
    .io_scheExtra_debug_int_rat_16(exuBlocks_io_scheExtra_debug_int_rat_16),
    .io_scheExtra_debug_int_rat_17(exuBlocks_io_scheExtra_debug_int_rat_17),
    .io_scheExtra_debug_int_rat_18(exuBlocks_io_scheExtra_debug_int_rat_18),
    .io_scheExtra_debug_int_rat_19(exuBlocks_io_scheExtra_debug_int_rat_19),
    .io_scheExtra_debug_int_rat_20(exuBlocks_io_scheExtra_debug_int_rat_20),
    .io_scheExtra_debug_int_rat_21(exuBlocks_io_scheExtra_debug_int_rat_21),
    .io_scheExtra_debug_int_rat_22(exuBlocks_io_scheExtra_debug_int_rat_22),
    .io_scheExtra_debug_int_rat_23(exuBlocks_io_scheExtra_debug_int_rat_23),
    .io_scheExtra_debug_int_rat_24(exuBlocks_io_scheExtra_debug_int_rat_24),
    .io_scheExtra_debug_int_rat_25(exuBlocks_io_scheExtra_debug_int_rat_25),
    .io_scheExtra_debug_int_rat_26(exuBlocks_io_scheExtra_debug_int_rat_26),
    .io_scheExtra_debug_int_rat_27(exuBlocks_io_scheExtra_debug_int_rat_27),
    .io_scheExtra_debug_int_rat_28(exuBlocks_io_scheExtra_debug_int_rat_28),
    .io_scheExtra_debug_int_rat_29(exuBlocks_io_scheExtra_debug_int_rat_29),
    .io_scheExtra_debug_int_rat_30(exuBlocks_io_scheExtra_debug_int_rat_30),
    .io_scheExtra_debug_int_rat_31(exuBlocks_io_scheExtra_debug_int_rat_31),
    .io_scheExtra_robDeqPtr_flag(exuBlocks_io_scheExtra_robDeqPtr_flag),
    .io_scheExtra_robDeqPtr_value(exuBlocks_io_scheExtra_robDeqPtr_value),
    .io_scheExtra_robHeadLsIssue(exuBlocks_io_scheExtra_robHeadLsIssue),
    .io_fuExtra_exuRedirect_0_valid(exuBlocks_io_fuExtra_exuRedirect_0_valid),
    .io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isRVC(exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isRVC),
    .io_fuExtra_exuRedirect_0_bits_uop_cf_pd_brType(exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_cf_pd_brType),
    .io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isCall(exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isCall),
    .io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isRet(exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isRet),
    .io_fuExtra_exuRedirect_0_bits_uop_ctrl_imm(exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_ctrl_imm),
    .io_fuExtra_exuRedirect_0_bits_uop_robIdx_flag(exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_robIdx_flag),
    .io_fuExtra_exuRedirect_0_bits_uop_robIdx_value(exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_robIdx_value),
    .io_fuExtra_exuRedirect_0_bits_redirectValid(exuBlocks_io_fuExtra_exuRedirect_0_bits_redirectValid),
    .io_fuExtra_exuRedirect_0_bits_redirect_robIdx_flag(exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_robIdx_flag),
    .io_fuExtra_exuRedirect_0_bits_redirect_robIdx_value(exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_robIdx_value),
    .io_fuExtra_exuRedirect_0_bits_redirect_ftqIdx_flag(exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_ftqIdx_flag),
    .io_fuExtra_exuRedirect_0_bits_redirect_ftqIdx_value(exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_ftqIdx_value),
    .io_fuExtra_exuRedirect_0_bits_redirect_ftqOffset(exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_ftqOffset),
    .io_fuExtra_exuRedirect_0_bits_redirect_cfiUpdate_target(
      exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_cfiUpdate_target),
    .io_fuExtra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred(
      exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred),
    .io_fuExtra_exuRedirect_1_valid(exuBlocks_io_fuExtra_exuRedirect_1_valid),
    .io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isRVC(exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isRVC),
    .io_fuExtra_exuRedirect_1_bits_uop_cf_pd_brType(exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_cf_pd_brType),
    .io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isCall(exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isCall),
    .io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isRet(exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isRet),
    .io_fuExtra_exuRedirect_1_bits_uop_ctrl_imm(exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_ctrl_imm),
    .io_fuExtra_exuRedirect_1_bits_uop_robIdx_flag(exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_robIdx_flag),
    .io_fuExtra_exuRedirect_1_bits_uop_robIdx_value(exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_robIdx_value),
    .io_fuExtra_exuRedirect_1_bits_redirectValid(exuBlocks_io_fuExtra_exuRedirect_1_bits_redirectValid),
    .io_fuExtra_exuRedirect_1_bits_redirect_robIdx_flag(exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_robIdx_flag),
    .io_fuExtra_exuRedirect_1_bits_redirect_robIdx_value(exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_robIdx_value),
    .io_fuExtra_exuRedirect_1_bits_redirect_ftqIdx_flag(exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_ftqIdx_flag),
    .io_fuExtra_exuRedirect_1_bits_redirect_ftqIdx_value(exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_ftqIdx_value),
    .io_fuExtra_exuRedirect_1_bits_redirect_ftqOffset(exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_ftqOffset),
    .io_fuExtra_exuRedirect_1_bits_redirect_cfiUpdate_taken(
      exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_cfiUpdate_taken),
    .io_fuExtra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred(
      exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred),
    .io_fuExtra_exuRedirect_2_valid(exuBlocks_io_fuExtra_exuRedirect_2_valid),
    .io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isRVC(exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isRVC),
    .io_fuExtra_exuRedirect_2_bits_uop_cf_pd_brType(exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_cf_pd_brType),
    .io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isCall(exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isCall),
    .io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isRet(exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isRet),
    .io_fuExtra_exuRedirect_2_bits_uop_ctrl_imm(exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_ctrl_imm),
    .io_fuExtra_exuRedirect_2_bits_uop_robIdx_flag(exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_robIdx_flag),
    .io_fuExtra_exuRedirect_2_bits_uop_robIdx_value(exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_robIdx_value),
    .io_fuExtra_exuRedirect_2_bits_redirectValid(exuBlocks_io_fuExtra_exuRedirect_2_bits_redirectValid),
    .io_fuExtra_exuRedirect_2_bits_redirect_robIdx_flag(exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_robIdx_flag),
    .io_fuExtra_exuRedirect_2_bits_redirect_robIdx_value(exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_robIdx_value),
    .io_fuExtra_exuRedirect_2_bits_redirect_ftqIdx_flag(exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_ftqIdx_flag),
    .io_fuExtra_exuRedirect_2_bits_redirect_ftqIdx_value(exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_ftqIdx_value),
    .io_fuExtra_exuRedirect_2_bits_redirect_ftqOffset(exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_ftqOffset),
    .io_fuExtra_exuRedirect_2_bits_redirect_cfiUpdate_taken(
      exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_cfiUpdate_taken),
    .io_fuExtra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred(
      exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred),
    .io_fuExtra_csrio_hartId(exuBlocks_io_fuExtra_csrio_hartId),
    .io_fuExtra_csrio_perf_perfEventsFrontend_0_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_0_value),
    .io_fuExtra_csrio_perf_perfEventsFrontend_1_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_1_value),
    .io_fuExtra_csrio_perf_perfEventsFrontend_2_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_2_value),
    .io_fuExtra_csrio_perf_perfEventsFrontend_3_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_3_value),
    .io_fuExtra_csrio_perf_perfEventsFrontend_4_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_4_value),
    .io_fuExtra_csrio_perf_perfEventsFrontend_5_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_5_value),
    .io_fuExtra_csrio_perf_perfEventsFrontend_6_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_6_value),
    .io_fuExtra_csrio_perf_perfEventsFrontend_7_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_7_value),
    .io_fuExtra_csrio_perf_perfEventsCtrl_0_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_0_value),
    .io_fuExtra_csrio_perf_perfEventsCtrl_1_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_1_value),
    .io_fuExtra_csrio_perf_perfEventsCtrl_2_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_2_value),
    .io_fuExtra_csrio_perf_perfEventsCtrl_3_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_3_value),
    .io_fuExtra_csrio_perf_perfEventsCtrl_4_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_4_value),
    .io_fuExtra_csrio_perf_perfEventsCtrl_5_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_5_value),
    .io_fuExtra_csrio_perf_perfEventsCtrl_6_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_6_value),
    .io_fuExtra_csrio_perf_perfEventsCtrl_7_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_7_value),
    .io_fuExtra_csrio_perf_perfEventsLsu_0_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_0_value),
    .io_fuExtra_csrio_perf_perfEventsLsu_1_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_1_value),
    .io_fuExtra_csrio_perf_perfEventsLsu_2_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_2_value),
    .io_fuExtra_csrio_perf_perfEventsLsu_3_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_3_value),
    .io_fuExtra_csrio_perf_perfEventsLsu_4_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_4_value),
    .io_fuExtra_csrio_perf_perfEventsLsu_5_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_5_value),
    .io_fuExtra_csrio_perf_perfEventsLsu_6_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_6_value),
    .io_fuExtra_csrio_perf_perfEventsLsu_7_value(exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_7_value),
    .io_fuExtra_csrio_perf_retiredInstr(exuBlocks_io_fuExtra_csrio_perf_retiredInstr),
    .io_fuExtra_csrio_fpu_fflags_valid(exuBlocks_io_fuExtra_csrio_fpu_fflags_valid),
    .io_fuExtra_csrio_fpu_fflags_bits(exuBlocks_io_fuExtra_csrio_fpu_fflags_bits),
    .io_fuExtra_csrio_fpu_dirty_fs(exuBlocks_io_fuExtra_csrio_fpu_dirty_fs),
    .io_fuExtra_csrio_fpu_frm(exuBlocks_io_fuExtra_csrio_fpu_frm),
    .io_fuExtra_csrio_exception_valid(exuBlocks_io_fuExtra_csrio_exception_valid),
    .io_fuExtra_csrio_exception_bits_uop_cf_pc(exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_pc),
    .io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_0(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_0),
    .io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_1(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_1),
    .io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_2(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_2),
    .io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_3(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_3),
    .io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_4(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_4),
    .io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_5(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_5),
    .io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_6(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_6),
    .io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_7(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_7),
    .io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_8(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_8),
    .io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_9(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_9),
    .io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_11(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_11),
    .io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_12(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_12),
    .io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_13(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_13),
    .io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_15(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_15),
    .io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_0(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_0),
    .io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_1(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_1),
    .io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_2(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_2),
    .io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_3(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_3),
    .io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_0(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_0),
    .io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_1(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_1),
    .io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_2(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_2),
    .io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_3(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_3),
    .io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_4(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_4),
    .io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_5(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_5),
    .io_fuExtra_csrio_exception_bits_uop_cf_crossPageIPFFix(
      exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_crossPageIPFFix),
    .io_fuExtra_csrio_exception_bits_uop_ctrl_singleStep(exuBlocks_io_fuExtra_csrio_exception_bits_uop_ctrl_singleStep),
    .io_fuExtra_csrio_exception_bits_isInterrupt(exuBlocks_io_fuExtra_csrio_exception_bits_isInterrupt),
    .io_fuExtra_csrio_isXRet(exuBlocks_io_fuExtra_csrio_isXRet),
    .io_fuExtra_csrio_trapTarget(exuBlocks_io_fuExtra_csrio_trapTarget),
    .io_fuExtra_csrio_interrupt(exuBlocks_io_fuExtra_csrio_interrupt),
    .io_fuExtra_csrio_wfi_event(exuBlocks_io_fuExtra_csrio_wfi_event),
    .io_fuExtra_csrio_memExceptionVAddr(exuBlocks_io_fuExtra_csrio_memExceptionVAddr),
    .io_fuExtra_csrio_externalInterrupt_mtip(exuBlocks_io_fuExtra_csrio_externalInterrupt_mtip),
    .io_fuExtra_csrio_externalInterrupt_msip(exuBlocks_io_fuExtra_csrio_externalInterrupt_msip),
    .io_fuExtra_csrio_externalInterrupt_meip(exuBlocks_io_fuExtra_csrio_externalInterrupt_meip),
    .io_fuExtra_csrio_externalInterrupt_seip(exuBlocks_io_fuExtra_csrio_externalInterrupt_seip),
    .io_fuExtra_csrio_externalInterrupt_debug(exuBlocks_io_fuExtra_csrio_externalInterrupt_debug),
    .io_fuExtra_csrio_tlb_satp_mode(exuBlocks_io_fuExtra_csrio_tlb_satp_mode),
    .io_fuExtra_csrio_tlb_satp_asid(exuBlocks_io_fuExtra_csrio_tlb_satp_asid),
    .io_fuExtra_csrio_tlb_satp_ppn(exuBlocks_io_fuExtra_csrio_tlb_satp_ppn),
    .io_fuExtra_csrio_tlb_satp_changed(exuBlocks_io_fuExtra_csrio_tlb_satp_changed),
    .io_fuExtra_csrio_tlb_priv_mxr(exuBlocks_io_fuExtra_csrio_tlb_priv_mxr),
    .io_fuExtra_csrio_tlb_priv_sum(exuBlocks_io_fuExtra_csrio_tlb_priv_sum),
    .io_fuExtra_csrio_tlb_priv_imode(exuBlocks_io_fuExtra_csrio_tlb_priv_imode),
    .io_fuExtra_csrio_tlb_priv_dmode(exuBlocks_io_fuExtra_csrio_tlb_priv_dmode),
    .io_fuExtra_csrio_customCtrl_l2_pf_store_only(exuBlocks_io_fuExtra_csrio_customCtrl_l2_pf_store_only),
    .io_fuExtra_csrio_customCtrl_icache_parity_enable(exuBlocks_io_fuExtra_csrio_customCtrl_icache_parity_enable),
    .io_fuExtra_csrio_customCtrl_lvpred_timeout(exuBlocks_io_fuExtra_csrio_customCtrl_lvpred_timeout),
    .io_fuExtra_csrio_customCtrl_bp_ctrl_ubtb_enable(exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_ubtb_enable),
    .io_fuExtra_csrio_customCtrl_bp_ctrl_btb_enable(exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_btb_enable),
    .io_fuExtra_csrio_customCtrl_bp_ctrl_tage_enable(exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_tage_enable),
    .io_fuExtra_csrio_customCtrl_bp_ctrl_sc_enable(exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_sc_enable),
    .io_fuExtra_csrio_customCtrl_bp_ctrl_ras_enable(exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_ras_enable),
    .io_fuExtra_csrio_customCtrl_ldld_vio_check_enable(exuBlocks_io_fuExtra_csrio_customCtrl_ldld_vio_check_enable),
    .io_fuExtra_csrio_customCtrl_cache_error_enable(exuBlocks_io_fuExtra_csrio_customCtrl_cache_error_enable),
    .io_fuExtra_csrio_customCtrl_uncache_write_outstanding_enable(
      exuBlocks_io_fuExtra_csrio_customCtrl_uncache_write_outstanding_enable),
    .io_fuExtra_csrio_customCtrl_fusion_enable(exuBlocks_io_fuExtra_csrio_customCtrl_fusion_enable),
    .io_fuExtra_csrio_customCtrl_wfi_enable(exuBlocks_io_fuExtra_csrio_customCtrl_wfi_enable),
    .io_fuExtra_csrio_customCtrl_svinval_enable(exuBlocks_io_fuExtra_csrio_customCtrl_svinval_enable),
    .io_fuExtra_csrio_customCtrl_distribute_csr_wvalid(exuBlocks_io_fuExtra_csrio_customCtrl_distribute_csr_wvalid),
    .io_fuExtra_csrio_customCtrl_distribute_csr_waddr(
      exuBlocks_io_fuExtra_csrio_customCtrl_distribute_csr_waddr),
    .io_fuExtra_csrio_customCtrl_distribute_csr_wdata(
      exuBlocks_io_fuExtra_csrio_customCtrl_distribute_csr_wdata),
    .io_fuExtra_csrio_customCtrl_singlestep(exuBlocks_io_fuExtra_csrio_customCtrl_singlestep),
    .io_fuExtra_csrio_customCtrl_frontend_trigger_t_valid(exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_valid
      ),
    .io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_addr(
      exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_addr),
    .io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType(
      exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType),
    .io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select(
      exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select),
    .io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing(
      exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing),
    .io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain(
      exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain),
    .io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2(
      exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2),
    .io_fuExtra_csrio_customCtrl_mem_trigger_t_valid(exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_valid),
    .io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_addr(exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_addr),
    .io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType(
      exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType),
    .io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_select(
      exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_select),
    .io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain(
      exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain),
    .io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2(
      exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2),
    .io_fuExtra_csrio_customCtrl_trigger_enable_0(exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_0),
    .io_fuExtra_csrio_customCtrl_trigger_enable_1(exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_1),
    .io_fuExtra_csrio_customCtrl_trigger_enable_2(exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_2),
    .io_fuExtra_csrio_customCtrl_trigger_enable_3(exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_3),
    .io_fuExtra_csrio_customCtrl_trigger_enable_4(exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_4),
    .io_fuExtra_csrio_customCtrl_trigger_enable_5(exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_5),
    .io_fuExtra_csrio_customCtrl_trigger_enable_6(exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_6),
    .io_fuExtra_csrio_customCtrl_trigger_enable_7(exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_7),
    .io_fuExtra_csrio_customCtrl_trigger_enable_8(exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_8),
    .io_fuExtra_csrio_customCtrl_trigger_enable_9(exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_9),
    .io_fuExtra_csrio_distributedUpdate_0_wvalid(exuBlocks_io_fuExtra_csrio_distributedUpdate_0_wvalid),
    .io_fuExtra_csrio_distributedUpdate_0_waddr(exuBlocks_io_fuExtra_csrio_distributedUpdate_0_waddr),
    .io_fuExtra_csrio_distributedUpdate_0_wdata(exuBlocks_io_fuExtra_csrio_distributedUpdate_0_wdata),
    .io_fuExtra_csrio_distributedUpdate_1_wvalid(exuBlocks_io_fuExtra_csrio_distributedUpdate_1_wvalid),
    .io_fuExtra_csrio_distributedUpdate_1_waddr(exuBlocks_io_fuExtra_csrio_distributedUpdate_1_waddr),
    .io_fuExtra_csrio_distributedUpdate_1_wdata(exuBlocks_io_fuExtra_csrio_distributedUpdate_1_wdata),
    .io_fuExtra_fenceio_sfence_valid(exuBlocks_io_fuExtra_fenceio_sfence_valid),
    .io_fuExtra_fenceio_sfence_bits_rs1(exuBlocks_io_fuExtra_fenceio_sfence_bits_rs1),
    .io_fuExtra_fenceio_sfence_bits_rs2(exuBlocks_io_fuExtra_fenceio_sfence_bits_rs2),
    .io_fuExtra_fenceio_sfence_bits_addr(exuBlocks_io_fuExtra_fenceio_sfence_bits_addr),
    .io_fuExtra_fenceio_sfence_bits_asid(exuBlocks_io_fuExtra_fenceio_sfence_bits_asid),
    .io_fuExtra_fenceio_fencei(exuBlocks_io_fuExtra_fenceio_fencei),
    .io_fuExtra_fenceio_sbuffer_flushSb(exuBlocks_io_fuExtra_fenceio_sbuffer_flushSb),
    .io_fuExtra_fenceio_sbuffer_sbIsEmpty(exuBlocks_io_fuExtra_fenceio_sbuffer_sbIsEmpty),
    .io_perf_0_value(exuBlocks_io_perf_0_value),
    .io_perf_1_value(exuBlocks_io_perf_1_value),
    .io_perf_2_value(exuBlocks_io_perf_2_value),
    .io_perf_3_value(exuBlocks_io_perf_3_value),
    .io_perf_4_value(exuBlocks_io_perf_4_value),
    .io_perf_5_value(exuBlocks_io_perf_5_value),
    .io_perf_6_value(exuBlocks_io_perf_6_value),
    .io_perf_7_value(exuBlocks_io_perf_7_value),
    .io_perf_8_value(exuBlocks_io_perf_8_value),
    .io_perf_9_value(exuBlocks_io_perf_9_value),
    .io_perf_10_value(exuBlocks_io_perf_10_value),
    .io_perf_11_value(exuBlocks_io_perf_11_value)
  );
  ExuBlock_1 exuBlocks_1 ( // @[XSCore.scala 210:17]
    .clock(exuBlocks_1_clock),
    .reset(exuBlocks_1_reset),
    .io_hartId(exuBlocks_1_io_hartId),
    .io_redirect_valid(exuBlocks_1_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(exuBlocks_1_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(exuBlocks_1_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(exuBlocks_1_io_redirect_bits_level),
    .io_allocPregs_0_isFp(exuBlocks_1_io_allocPregs_0_isFp),
    .io_allocPregs_0_preg(exuBlocks_1_io_allocPregs_0_preg),
    .io_allocPregs_1_isFp(exuBlocks_1_io_allocPregs_1_isFp),
    .io_allocPregs_1_preg(exuBlocks_1_io_allocPregs_1_preg),
    .io_in_0_valid(exuBlocks_1_io_in_0_valid),
    .io_in_0_bits_cf_pd_isRVC(exuBlocks_1_io_in_0_bits_cf_pd_isRVC),
    .io_in_0_bits_cf_pd_brType(exuBlocks_1_io_in_0_bits_cf_pd_brType),
    .io_in_0_bits_cf_pd_isCall(exuBlocks_1_io_in_0_bits_cf_pd_isCall),
    .io_in_0_bits_cf_pd_isRet(exuBlocks_1_io_in_0_bits_cf_pd_isRet),
    .io_in_0_bits_cf_pred_taken(exuBlocks_1_io_in_0_bits_cf_pred_taken),
    .io_in_0_bits_cf_ftqPtr_flag(exuBlocks_1_io_in_0_bits_cf_ftqPtr_flag),
    .io_in_0_bits_cf_ftqPtr_value(exuBlocks_1_io_in_0_bits_cf_ftqPtr_value),
    .io_in_0_bits_cf_ftqOffset(exuBlocks_1_io_in_0_bits_cf_ftqOffset),
    .io_in_0_bits_ctrl_srcType_0(exuBlocks_1_io_in_0_bits_ctrl_srcType_0),
    .io_in_0_bits_ctrl_srcType_1(exuBlocks_1_io_in_0_bits_ctrl_srcType_1),
    .io_in_0_bits_ctrl_srcType_2(exuBlocks_1_io_in_0_bits_ctrl_srcType_2),
    .io_in_0_bits_ctrl_fuType(exuBlocks_1_io_in_0_bits_ctrl_fuType),
    .io_in_0_bits_ctrl_fuOpType(exuBlocks_1_io_in_0_bits_ctrl_fuOpType),
    .io_in_0_bits_ctrl_rfWen(exuBlocks_1_io_in_0_bits_ctrl_rfWen),
    .io_in_0_bits_ctrl_fpWen(exuBlocks_1_io_in_0_bits_ctrl_fpWen),
    .io_in_0_bits_ctrl_imm(exuBlocks_1_io_in_0_bits_ctrl_imm),
    .io_in_0_bits_ctrl_fpu_isAddSub(exuBlocks_1_io_in_0_bits_ctrl_fpu_isAddSub),
    .io_in_0_bits_ctrl_fpu_typeTagIn(exuBlocks_1_io_in_0_bits_ctrl_fpu_typeTagIn),
    .io_in_0_bits_ctrl_fpu_typeTagOut(exuBlocks_1_io_in_0_bits_ctrl_fpu_typeTagOut),
    .io_in_0_bits_ctrl_fpu_fromInt(exuBlocks_1_io_in_0_bits_ctrl_fpu_fromInt),
    .io_in_0_bits_ctrl_fpu_wflags(exuBlocks_1_io_in_0_bits_ctrl_fpu_wflags),
    .io_in_0_bits_ctrl_fpu_fpWen(exuBlocks_1_io_in_0_bits_ctrl_fpu_fpWen),
    .io_in_0_bits_ctrl_fpu_fmaCmd(exuBlocks_1_io_in_0_bits_ctrl_fpu_fmaCmd),
    .io_in_0_bits_ctrl_fpu_div(exuBlocks_1_io_in_0_bits_ctrl_fpu_div),
    .io_in_0_bits_ctrl_fpu_sqrt(exuBlocks_1_io_in_0_bits_ctrl_fpu_sqrt),
    .io_in_0_bits_ctrl_fpu_fcvt(exuBlocks_1_io_in_0_bits_ctrl_fpu_fcvt),
    .io_in_0_bits_ctrl_fpu_typ(exuBlocks_1_io_in_0_bits_ctrl_fpu_typ),
    .io_in_0_bits_ctrl_fpu_fmt(exuBlocks_1_io_in_0_bits_ctrl_fpu_fmt),
    .io_in_0_bits_ctrl_fpu_ren3(exuBlocks_1_io_in_0_bits_ctrl_fpu_ren3),
    .io_in_0_bits_ctrl_fpu_rm(exuBlocks_1_io_in_0_bits_ctrl_fpu_rm),
    .io_in_0_bits_psrc_0(exuBlocks_1_io_in_0_bits_psrc_0),
    .io_in_0_bits_psrc_1(exuBlocks_1_io_in_0_bits_psrc_1),
    .io_in_0_bits_psrc_2(exuBlocks_1_io_in_0_bits_psrc_2),
    .io_in_0_bits_pdest(exuBlocks_1_io_in_0_bits_pdest),
    .io_in_0_bits_robIdx_flag(exuBlocks_1_io_in_0_bits_robIdx_flag),
    .io_in_0_bits_robIdx_value(exuBlocks_1_io_in_0_bits_robIdx_value),
    .io_in_0_bits_lqIdx_flag(exuBlocks_1_io_in_0_bits_lqIdx_flag),
    .io_in_0_bits_lqIdx_value(exuBlocks_1_io_in_0_bits_lqIdx_value),
    .io_fastUopOut_0_valid(exuBlocks_1_io_fastUopOut_0_valid),
    .io_fastUopOut_0_bits_ctrl_fpWen(exuBlocks_1_io_fastUopOut_0_bits_ctrl_fpWen),
    .io_fastUopOut_0_bits_pdest(exuBlocks_1_io_fastUopOut_0_bits_pdest),
    .io_rfWriteback_6_valid(exuBlocks_1_io_rfWriteback_6_valid),
    .io_rfWriteback_6_bits_uop_ctrl_fpWen(exuBlocks_1_io_rfWriteback_6_bits_uop_ctrl_fpWen),
    .io_rfWriteback_6_bits_uop_pdest(exuBlocks_1_io_rfWriteback_6_bits_uop_pdest),
    .io_rfWriteback_6_bits_data(exuBlocks_1_io_rfWriteback_6_bits_data),
    .io_rfWriteback_7_valid(exuBlocks_1_io_rfWriteback_7_valid),
    .io_rfWriteback_7_bits_uop_ctrl_fpWen(exuBlocks_1_io_rfWriteback_7_bits_uop_ctrl_fpWen),
    .io_rfWriteback_7_bits_uop_pdest(exuBlocks_1_io_rfWriteback_7_bits_uop_pdest),
    .io_rfWriteback_7_bits_data(exuBlocks_1_io_rfWriteback_7_bits_data),
    .io_rfWriteback_8_valid(exuBlocks_1_io_rfWriteback_8_valid),
    .io_rfWriteback_8_bits_uop_ctrl_fpWen(exuBlocks_1_io_rfWriteback_8_bits_uop_ctrl_fpWen),
    .io_rfWriteback_8_bits_uop_pdest(exuBlocks_1_io_rfWriteback_8_bits_uop_pdest),
    .io_rfWriteback_8_bits_data(exuBlocks_1_io_rfWriteback_8_bits_data),
    .io_fastUopIn_5_valid(exuBlocks_1_io_fastUopIn_5_valid),
    .io_fastUopIn_5_bits_ctrl_fpWen(exuBlocks_1_io_fastUopIn_5_bits_ctrl_fpWen),
    .io_fastUopIn_5_bits_pdest(exuBlocks_1_io_fastUopIn_5_bits_pdest),
    .io_fuWriteback_0_ready(exuBlocks_1_io_fuWriteback_0_ready),
    .io_fuWriteback_0_valid(exuBlocks_1_io_fuWriteback_0_valid),
    .io_fuWriteback_0_bits_uop_cf_trigger_backendHit_0(exuBlocks_1_io_fuWriteback_0_bits_uop_cf_trigger_backendHit_0),
    .io_fuWriteback_0_bits_uop_cf_trigger_backendHit_1(exuBlocks_1_io_fuWriteback_0_bits_uop_cf_trigger_backendHit_1),
    .io_fuWriteback_0_bits_uop_cf_trigger_backendHit_2(exuBlocks_1_io_fuWriteback_0_bits_uop_cf_trigger_backendHit_2),
    .io_fuWriteback_0_bits_uop_cf_trigger_backendHit_3(exuBlocks_1_io_fuWriteback_0_bits_uop_cf_trigger_backendHit_3),
    .io_fuWriteback_0_bits_uop_cf_trigger_backendHit_4(exuBlocks_1_io_fuWriteback_0_bits_uop_cf_trigger_backendHit_4),
    .io_fuWriteback_0_bits_uop_cf_trigger_backendHit_5(exuBlocks_1_io_fuWriteback_0_bits_uop_cf_trigger_backendHit_5),
    .io_fuWriteback_0_bits_uop_ctrl_rfWen(exuBlocks_1_io_fuWriteback_0_bits_uop_ctrl_rfWen),
    .io_fuWriteback_0_bits_uop_ctrl_fpWen(exuBlocks_1_io_fuWriteback_0_bits_uop_ctrl_fpWen),
    .io_fuWriteback_0_bits_uop_pdest(exuBlocks_1_io_fuWriteback_0_bits_uop_pdest),
    .io_fuWriteback_0_bits_uop_robIdx_flag(exuBlocks_1_io_fuWriteback_0_bits_uop_robIdx_flag),
    .io_fuWriteback_0_bits_uop_robIdx_value(exuBlocks_1_io_fuWriteback_0_bits_uop_robIdx_value),
    .io_fuWriteback_0_bits_uop_lqIdx_flag(exuBlocks_1_io_fuWriteback_0_bits_uop_lqIdx_flag),
    .io_fuWriteback_0_bits_uop_lqIdx_value(exuBlocks_1_io_fuWriteback_0_bits_uop_lqIdx_value),
    .io_fuWriteback_0_bits_data(exuBlocks_1_io_fuWriteback_0_bits_data),
    .io_fuWriteback_0_bits_fflags(exuBlocks_1_io_fuWriteback_0_bits_fflags),
    .io_fuWriteback_1_ready(exuBlocks_1_io_fuWriteback_1_ready),
    .io_fuWriteback_1_valid(exuBlocks_1_io_fuWriteback_1_valid),
    .io_fuWriteback_1_bits_uop_ctrl_rfWen(exuBlocks_1_io_fuWriteback_1_bits_uop_ctrl_rfWen),
    .io_fuWriteback_1_bits_uop_ctrl_fpWen(exuBlocks_1_io_fuWriteback_1_bits_uop_ctrl_fpWen),
    .io_fuWriteback_1_bits_uop_pdest(exuBlocks_1_io_fuWriteback_1_bits_uop_pdest),
    .io_fuWriteback_1_bits_uop_robIdx_flag(exuBlocks_1_io_fuWriteback_1_bits_uop_robIdx_flag),
    .io_fuWriteback_1_bits_uop_robIdx_value(exuBlocks_1_io_fuWriteback_1_bits_uop_robIdx_value),
    .io_fuWriteback_1_bits_uop_lqIdx_flag(exuBlocks_1_io_fuWriteback_1_bits_uop_lqIdx_flag),
    .io_fuWriteback_1_bits_uop_lqIdx_value(exuBlocks_1_io_fuWriteback_1_bits_uop_lqIdx_value),
    .io_fuWriteback_1_bits_data(exuBlocks_1_io_fuWriteback_1_bits_data),
    .io_fuWriteback_1_bits_fflags(exuBlocks_1_io_fuWriteback_1_bits_fflags),
    .io_scheExtra_rsReady_0(exuBlocks_1_io_scheExtra_rsReady_0),
    .io_scheExtra_fpRfReadOut_0_addr(exuBlocks_1_io_scheExtra_fpRfReadOut_0_addr),
    .io_scheExtra_fpRfReadOut_0_data(exuBlocks_1_io_scheExtra_fpRfReadOut_0_data),
    .io_scheExtra_fpRfReadOut_1_addr(exuBlocks_1_io_scheExtra_fpRfReadOut_1_addr),
    .io_scheExtra_fpRfReadOut_1_data(exuBlocks_1_io_scheExtra_fpRfReadOut_1_data),
    .io_scheExtra_debug_fp_rat_0(exuBlocks_1_io_scheExtra_debug_fp_rat_0),
    .io_scheExtra_debug_fp_rat_1(exuBlocks_1_io_scheExtra_debug_fp_rat_1),
    .io_scheExtra_debug_fp_rat_2(exuBlocks_1_io_scheExtra_debug_fp_rat_2),
    .io_scheExtra_debug_fp_rat_3(exuBlocks_1_io_scheExtra_debug_fp_rat_3),
    .io_scheExtra_debug_fp_rat_4(exuBlocks_1_io_scheExtra_debug_fp_rat_4),
    .io_scheExtra_debug_fp_rat_5(exuBlocks_1_io_scheExtra_debug_fp_rat_5),
    .io_scheExtra_debug_fp_rat_6(exuBlocks_1_io_scheExtra_debug_fp_rat_6),
    .io_scheExtra_debug_fp_rat_7(exuBlocks_1_io_scheExtra_debug_fp_rat_7),
    .io_scheExtra_debug_fp_rat_8(exuBlocks_1_io_scheExtra_debug_fp_rat_8),
    .io_scheExtra_debug_fp_rat_9(exuBlocks_1_io_scheExtra_debug_fp_rat_9),
    .io_scheExtra_debug_fp_rat_10(exuBlocks_1_io_scheExtra_debug_fp_rat_10),
    .io_scheExtra_debug_fp_rat_11(exuBlocks_1_io_scheExtra_debug_fp_rat_11),
    .io_scheExtra_debug_fp_rat_12(exuBlocks_1_io_scheExtra_debug_fp_rat_12),
    .io_scheExtra_debug_fp_rat_13(exuBlocks_1_io_scheExtra_debug_fp_rat_13),
    .io_scheExtra_debug_fp_rat_14(exuBlocks_1_io_scheExtra_debug_fp_rat_14),
    .io_scheExtra_debug_fp_rat_15(exuBlocks_1_io_scheExtra_debug_fp_rat_15),
    .io_scheExtra_debug_fp_rat_16(exuBlocks_1_io_scheExtra_debug_fp_rat_16),
    .io_scheExtra_debug_fp_rat_17(exuBlocks_1_io_scheExtra_debug_fp_rat_17),
    .io_scheExtra_debug_fp_rat_18(exuBlocks_1_io_scheExtra_debug_fp_rat_18),
    .io_scheExtra_debug_fp_rat_19(exuBlocks_1_io_scheExtra_debug_fp_rat_19),
    .io_scheExtra_debug_fp_rat_20(exuBlocks_1_io_scheExtra_debug_fp_rat_20),
    .io_scheExtra_debug_fp_rat_21(exuBlocks_1_io_scheExtra_debug_fp_rat_21),
    .io_scheExtra_debug_fp_rat_22(exuBlocks_1_io_scheExtra_debug_fp_rat_22),
    .io_scheExtra_debug_fp_rat_23(exuBlocks_1_io_scheExtra_debug_fp_rat_23),
    .io_scheExtra_debug_fp_rat_24(exuBlocks_1_io_scheExtra_debug_fp_rat_24),
    .io_scheExtra_debug_fp_rat_25(exuBlocks_1_io_scheExtra_debug_fp_rat_25),
    .io_scheExtra_debug_fp_rat_26(exuBlocks_1_io_scheExtra_debug_fp_rat_26),
    .io_scheExtra_debug_fp_rat_27(exuBlocks_1_io_scheExtra_debug_fp_rat_27),
    .io_scheExtra_debug_fp_rat_28(exuBlocks_1_io_scheExtra_debug_fp_rat_28),
    .io_scheExtra_debug_fp_rat_29(exuBlocks_1_io_scheExtra_debug_fp_rat_29),
    .io_scheExtra_debug_fp_rat_30(exuBlocks_1_io_scheExtra_debug_fp_rat_30),
    .io_scheExtra_debug_fp_rat_31(exuBlocks_1_io_scheExtra_debug_fp_rat_31),
    .io_fuExtra_frm(exuBlocks_1_io_fuExtra_frm),
    .io_perf_0_value(exuBlocks_1_io_perf_0_value),
    .io_perf_1_value(exuBlocks_1_io_perf_1_value),
    .io_perf_2_value(exuBlocks_1_io_perf_2_value),
    .io_perf_3_value(exuBlocks_1_io_perf_3_value),
    .io_perf_4_value(exuBlocks_1_io_perf_4_value),
    .io_perf_5_value(exuBlocks_1_io_perf_5_value),
    .io_perf_6_value(exuBlocks_1_io_perf_6_value),
    .io_perf_7_value(exuBlocks_1_io_perf_7_value)
  );
  MemBlock memBlock ( // @[XSCore.scala 213:28]
    .clock(memBlock_clock),
    .reset(memBlock_reset),
    .auto_ptw_to_l2_buffer_out_a_ready(memBlock_auto_ptw_to_l2_buffer_out_a_ready),
    .auto_ptw_to_l2_buffer_out_a_valid(memBlock_auto_ptw_to_l2_buffer_out_a_valid),
    .auto_ptw_to_l2_buffer_out_a_bits_opcode(memBlock_auto_ptw_to_l2_buffer_out_a_bits_opcode),
    .auto_ptw_to_l2_buffer_out_a_bits_param(memBlock_auto_ptw_to_l2_buffer_out_a_bits_param),
    .auto_ptw_to_l2_buffer_out_a_bits_size(memBlock_auto_ptw_to_l2_buffer_out_a_bits_size),
    .auto_ptw_to_l2_buffer_out_a_bits_source(memBlock_auto_ptw_to_l2_buffer_out_a_bits_source),
    .auto_ptw_to_l2_buffer_out_a_bits_address(memBlock_auto_ptw_to_l2_buffer_out_a_bits_address),
    .auto_ptw_to_l2_buffer_out_a_bits_user_reqSource(memBlock_auto_ptw_to_l2_buffer_out_a_bits_user_reqSource),
    .auto_ptw_to_l2_buffer_out_a_bits_mask(memBlock_auto_ptw_to_l2_buffer_out_a_bits_mask),
    .auto_ptw_to_l2_buffer_out_a_bits_data(memBlock_auto_ptw_to_l2_buffer_out_a_bits_data),
    .auto_ptw_to_l2_buffer_out_a_bits_corrupt(memBlock_auto_ptw_to_l2_buffer_out_a_bits_corrupt),
    .auto_ptw_to_l2_buffer_out_d_ready(memBlock_auto_ptw_to_l2_buffer_out_d_ready),
    .auto_ptw_to_l2_buffer_out_d_valid(memBlock_auto_ptw_to_l2_buffer_out_d_valid),
    .auto_ptw_to_l2_buffer_out_d_bits_opcode(memBlock_auto_ptw_to_l2_buffer_out_d_bits_opcode),
    .auto_ptw_to_l2_buffer_out_d_bits_size(memBlock_auto_ptw_to_l2_buffer_out_d_bits_size),
    .auto_ptw_to_l2_buffer_out_d_bits_source(memBlock_auto_ptw_to_l2_buffer_out_d_bits_source),
    .auto_ptw_to_l2_buffer_out_d_bits_data(memBlock_auto_ptw_to_l2_buffer_out_d_bits_data),
    .auto_uncache_client_out_a_ready(memBlock_auto_uncache_client_out_a_ready),
    .auto_uncache_client_out_a_valid(memBlock_auto_uncache_client_out_a_valid),
    .auto_uncache_client_out_a_bits_opcode(memBlock_auto_uncache_client_out_a_bits_opcode),
    .auto_uncache_client_out_a_bits_size(memBlock_auto_uncache_client_out_a_bits_size),
    .auto_uncache_client_out_a_bits_source(memBlock_auto_uncache_client_out_a_bits_source),
    .auto_uncache_client_out_a_bits_address(memBlock_auto_uncache_client_out_a_bits_address),
    .auto_uncache_client_out_a_bits_mask(memBlock_auto_uncache_client_out_a_bits_mask),
    .auto_uncache_client_out_a_bits_data(memBlock_auto_uncache_client_out_a_bits_data),
    .auto_uncache_client_out_d_ready(memBlock_auto_uncache_client_out_d_ready),
    .auto_uncache_client_out_d_valid(memBlock_auto_uncache_client_out_d_valid),
    .auto_uncache_client_out_d_bits_opcode(memBlock_auto_uncache_client_out_d_bits_opcode),
    .auto_uncache_client_out_d_bits_data(memBlock_auto_uncache_client_out_d_bits_data),
    .auto_dcache_client_out_a_ready(memBlock_auto_dcache_client_out_a_ready),
    .auto_dcache_client_out_a_valid(memBlock_auto_dcache_client_out_a_valid),
    .auto_dcache_client_out_a_bits_opcode(memBlock_auto_dcache_client_out_a_bits_opcode),
    .auto_dcache_client_out_a_bits_param(memBlock_auto_dcache_client_out_a_bits_param),
    .auto_dcache_client_out_a_bits_size(memBlock_auto_dcache_client_out_a_bits_size),
    .auto_dcache_client_out_a_bits_source(memBlock_auto_dcache_client_out_a_bits_source),
    .auto_dcache_client_out_a_bits_address(memBlock_auto_dcache_client_out_a_bits_address),
    .auto_dcache_client_out_a_bits_user_vaddr(memBlock_auto_dcache_client_out_a_bits_user_vaddr),
    .auto_dcache_client_out_a_bits_user_reqSource(memBlock_auto_dcache_client_out_a_bits_user_reqSource),
    .auto_dcache_client_out_a_bits_user_needHint(memBlock_auto_dcache_client_out_a_bits_user_needHint),
    .auto_dcache_client_out_a_bits_mask(memBlock_auto_dcache_client_out_a_bits_mask),
    .auto_dcache_client_out_bready(memBlock_auto_dcache_client_out_bready),
    .auto_dcache_client_out_bvalid(memBlock_auto_dcache_client_out_bvalid),
    .auto_dcache_client_out_bparam(memBlock_auto_dcache_client_out_bparam),
    .auto_dcache_client_out_baddress(memBlock_auto_dcache_client_out_baddress),
    .auto_dcache_client_out_bdata(memBlock_auto_dcache_client_out_bdata),
    .auto_dcache_client_out_c_ready(memBlock_auto_dcache_client_out_c_ready),
    .auto_dcache_client_out_c_valid(memBlock_auto_dcache_client_out_c_valid),
    .auto_dcache_client_out_c_bits_opcode(memBlock_auto_dcache_client_out_c_bits_opcode),
    .auto_dcache_client_out_c_bits_param(memBlock_auto_dcache_client_out_c_bits_param),
    .auto_dcache_client_out_c_bits_size(memBlock_auto_dcache_client_out_c_bits_size),
    .auto_dcache_client_out_c_bits_source(memBlock_auto_dcache_client_out_c_bits_source),
    .auto_dcache_client_out_c_bits_address(memBlock_auto_dcache_client_out_c_bits_address),
    .auto_dcache_client_out_c_bits_data(memBlock_auto_dcache_client_out_c_bits_data),
    .auto_dcache_client_out_d_ready(memBlock_auto_dcache_client_out_d_ready),
    .auto_dcache_client_out_d_valid(memBlock_auto_dcache_client_out_d_valid),
    .auto_dcache_client_out_d_bits_opcode(memBlock_auto_dcache_client_out_d_bits_opcode),
    .auto_dcache_client_out_d_bits_param(memBlock_auto_dcache_client_out_d_bits_param),
    .auto_dcache_client_out_d_bits_size(memBlock_auto_dcache_client_out_d_bits_size),
    .auto_dcache_client_out_d_bits_source(memBlock_auto_dcache_client_out_d_bits_source),
    .auto_dcache_client_out_d_bits_sink(memBlock_auto_dcache_client_out_d_bits_sink),
    .auto_dcache_client_out_d_bits_denied(memBlock_auto_dcache_client_out_d_bits_denied),
    .auto_dcache_client_out_d_bits_data(memBlock_auto_dcache_client_out_d_bits_data),
    .auto_dcache_client_out_d_bits_corrupt(memBlock_auto_dcache_client_out_d_bits_corrupt),
    .auto_dcache_client_out_e_ready(memBlock_auto_dcache_client_out_e_ready),
    .auto_dcache_client_out_e_valid(memBlock_auto_dcache_client_out_e_valid),
    .auto_dcache_client_out_e_bits_sink(memBlock_auto_dcache_client_out_e_bits_sink),
    .io_hartId(memBlock_io_hartId),
    .io_redirect_valid(memBlock_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(memBlock_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(memBlock_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(memBlock_io_redirect_bits_level),
    .io_ooo_to_mem_loadFastMatch_0(memBlock_io_ooo_to_mem_loadFastMatch_0),
    .io_ooo_to_mem_loadFastMatch_1(memBlock_io_ooo_to_mem_loadFastMatch_1),
    .io_ooo_to_mem_loadFastFuOpType_0(memBlock_io_ooo_to_mem_loadFastFuOpType_0),
    .io_ooo_to_mem_loadFastFuOpType_1(memBlock_io_ooo_to_mem_loadFastFuOpType_1),
    .io_ooo_to_mem_loadFastImm_0(memBlock_io_ooo_to_mem_loadFastImm_0),
    .io_ooo_to_mem_loadFastImm_1(memBlock_io_ooo_to_mem_loadFastImm_1),
    .io_ooo_to_mem_sfence_valid(memBlock_io_ooo_to_mem_sfence_valid),
    .io_ooo_to_mem_sfence_bits_rs1(memBlock_io_ooo_to_mem_sfence_bits_rs1),
    .io_ooo_to_mem_sfence_bits_rs2(memBlock_io_ooo_to_mem_sfence_bits_rs2),
    .io_ooo_to_mem_sfence_bits_addr(memBlock_io_ooo_to_mem_sfence_bits_addr),
    .io_ooo_to_mem_sfence_bits_asid(memBlock_io_ooo_to_mem_sfence_bits_asid),
    .io_ooo_to_mem_tlbCsr_satp_mode(memBlock_io_ooo_to_mem_tlbCsr_satp_mode),
    .io_ooo_to_mem_tlbCsr_satp_asid(memBlock_io_ooo_to_mem_tlbCsr_satp_asid),
    .io_ooo_to_mem_tlbCsr_satp_ppn(memBlock_io_ooo_to_mem_tlbCsr_satp_ppn),
    .io_ooo_to_mem_tlbCsr_satp_changed(memBlock_io_ooo_to_mem_tlbCsr_satp_changed),
    .io_ooo_to_mem_tlbCsr_priv_mxr(memBlock_io_ooo_to_mem_tlbCsr_priv_mxr),
    .io_ooo_to_mem_tlbCsr_priv_sum(memBlock_io_ooo_to_mem_tlbCsr_priv_sum),
    .io_ooo_to_mem_tlbCsr_priv_dmode(memBlock_io_ooo_to_mem_tlbCsr_priv_dmode),
    .io_ooo_to_mem_lsqio_scommit(memBlock_io_ooo_to_mem_lsqio_scommit),
    .io_ooo_to_mem_lsqio_pendingld(memBlock_io_ooo_to_mem_lsqio_pendingld),
    .io_ooo_to_mem_lsqio_pendingst(memBlock_io_ooo_to_mem_lsqio_pendingst),
    .io_ooo_to_mem_lsqio_commit(memBlock_io_ooo_to_mem_lsqio_commit),
    .io_ooo_to_mem_lsqio_pendingPtr_flag(memBlock_io_ooo_to_mem_lsqio_pendingPtr_flag),
    .io_ooo_to_mem_lsqio_pendingPtr_value(memBlock_io_ooo_to_mem_lsqio_pendingPtr_value),
    .io_ooo_to_mem_isStore(memBlock_io_ooo_to_mem_isStore),
    .io_ooo_to_mem_csrCtrl_l2_pf_store_only(memBlock_io_ooo_to_mem_csrCtrl_l2_pf_store_only),
    .io_ooo_to_mem_csrCtrl_icache_parity_enable(memBlock_io_ooo_to_mem_csrCtrl_icache_parity_enable),
    .io_ooo_to_mem_csrCtrl_lvpred_timeout(memBlock_io_ooo_to_mem_csrCtrl_lvpred_timeout),
    .io_ooo_to_mem_csrCtrl_bp_ctrl_ubtb_enable(memBlock_io_ooo_to_mem_csrCtrl_bp_ctrl_ubtb_enable),
    .io_ooo_to_mem_csrCtrl_bp_ctrl_btb_enable(memBlock_io_ooo_to_mem_csrCtrl_bp_ctrl_btb_enable),
    .io_ooo_to_mem_csrCtrl_bp_ctrl_tage_enable(memBlock_io_ooo_to_mem_csrCtrl_bp_ctrl_tage_enable),
    .io_ooo_to_mem_csrCtrl_bp_ctrl_sc_enable(memBlock_io_ooo_to_mem_csrCtrl_bp_ctrl_sc_enable),
    .io_ooo_to_mem_csrCtrl_bp_ctrl_ras_enable(memBlock_io_ooo_to_mem_csrCtrl_bp_ctrl_ras_enable),
    .io_ooo_to_mem_csrCtrl_ldld_vio_check_enable(memBlock_io_ooo_to_mem_csrCtrl_ldld_vio_check_enable),
    .io_ooo_to_mem_csrCtrl_cache_error_enable(memBlock_io_ooo_to_mem_csrCtrl_cache_error_enable),
    .io_ooo_to_mem_csrCtrl_uncache_write_outstanding_enable(
      memBlock_io_ooo_to_mem_csrCtrl_uncache_write_outstanding_enable),
    .io_ooo_to_mem_csrCtrl_fusion_enable(memBlock_io_ooo_to_mem_csrCtrl_fusion_enable),
    .io_ooo_to_mem_csrCtrl_wfi_enable(memBlock_io_ooo_to_mem_csrCtrl_wfi_enable),
    .io_ooo_to_mem_csrCtrl_svinval_enable(memBlock_io_ooo_to_mem_csrCtrl_svinval_enable),
    .io_ooo_to_mem_csrCtrl_distribute_csr_wvalid(memBlock_io_ooo_to_mem_csrCtrl_distribute_csr_wvalid),
    .io_ooo_to_mem_csrCtrl_distribute_csr_waddr(memBlock_io_ooo_to_mem_csrCtrl_distribute_csr_waddr),
    .io_ooo_to_mem_csrCtrl_distribute_csr_wdata(memBlock_io_ooo_to_mem_csrCtrl_distribute_csr_wdata),
    .io_ooo_to_mem_csrCtrl_singlestep(memBlock_io_ooo_to_mem_csrCtrl_singlestep),
    .io_ooo_to_mem_csrCtrl_frontend_trigger_t_valid(memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_valid),
    .io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_addr(memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_addr),
    .io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_matchType(
      memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_matchType),
    .io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_select(
      memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_select),
    .io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_timing(
      memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_timing),
    .io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_chain(
      memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_chain),
    .io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_tdata2(
      memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_tdata2),
    .io_ooo_to_mem_csrCtrl_mem_trigger_t_valid(memBlock_io_ooo_to_mem_csrCtrl_mem_trigger_t_valid),
    .io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_addr(memBlock_io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_addr),
    .io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_tdata_matchType(
      memBlock_io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_tdata_matchType),
    .io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_tdata_select(
      memBlock_io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_tdata_select),
    .io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_tdata_chain(memBlock_io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_tdata_chain)
      ,
    .io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_tdata_tdata2(
      memBlock_io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_tdata_tdata2),
    .io_ooo_to_mem_csrCtrl_trigger_enable_0(memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_0),
    .io_ooo_to_mem_csrCtrl_trigger_enable_1(memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_1),
    .io_ooo_to_mem_csrCtrl_trigger_enable_2(memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_2),
    .io_ooo_to_mem_csrCtrl_trigger_enable_3(memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_3),
    .io_ooo_to_mem_csrCtrl_trigger_enable_4(memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_4),
    .io_ooo_to_mem_csrCtrl_trigger_enable_5(memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_5),
    .io_ooo_to_mem_csrCtrl_trigger_enable_6(memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_6),
    .io_ooo_to_mem_csrCtrl_trigger_enable_7(memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_7),
    .io_ooo_to_mem_csrCtrl_trigger_enable_8(memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_8),
    .io_ooo_to_mem_csrCtrl_trigger_enable_9(memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_9),
    .io_ooo_to_mem_enqLsq_canAccept(memBlock_io_ooo_to_mem_enqLsq_canAccept),
    .io_ooo_to_mem_enqLsq_needAlloc_0(memBlock_io_ooo_to_mem_enqLsq_needAlloc_0),
    .io_ooo_to_mem_enqLsq_needAlloc_1(memBlock_io_ooo_to_mem_enqLsq_needAlloc_1),
    .io_ooo_to_mem_enqLsq_needAlloc_2(memBlock_io_ooo_to_mem_enqLsq_needAlloc_2),
    .io_ooo_to_mem_enqLsq_needAlloc_3(memBlock_io_ooo_to_mem_enqLsq_needAlloc_3),
    .io_ooo_to_mem_enqLsq_req_0_valid(memBlock_io_ooo_to_mem_enqLsq_req_0_valid),
    .io_ooo_to_mem_enqLsq_req_0_bits_cf_trigger_backendEn_0(
      memBlock_io_ooo_to_mem_enqLsq_req_0_bits_cf_trigger_backendEn_0),
    .io_ooo_to_mem_enqLsq_req_0_bits_cf_storeSetHit(memBlock_io_ooo_to_mem_enqLsq_req_0_bits_cf_storeSetHit),
    .io_ooo_to_mem_enqLsq_req_0_bits_cf_ssid(memBlock_io_ooo_to_mem_enqLsq_req_0_bits_cf_ssid),
    .io_ooo_to_mem_enqLsq_req_0_bits_ctrl_fuOpType(memBlock_io_ooo_to_mem_enqLsq_req_0_bits_ctrl_fuOpType),
    .io_ooo_to_mem_enqLsq_req_0_bits_robIdx_flag(memBlock_io_ooo_to_mem_enqLsq_req_0_bits_robIdx_flag),
    .io_ooo_to_mem_enqLsq_req_0_bits_robIdx_value(memBlock_io_ooo_to_mem_enqLsq_req_0_bits_robIdx_value),
    .io_ooo_to_mem_enqLsq_req_0_bits_lqIdx_value(memBlock_io_ooo_to_mem_enqLsq_req_0_bits_lqIdx_value),
    .io_ooo_to_mem_enqLsq_req_0_bits_sqIdx_value(memBlock_io_ooo_to_mem_enqLsq_req_0_bits_sqIdx_value),
    .io_ooo_to_mem_enqLsq_req_1_valid(memBlock_io_ooo_to_mem_enqLsq_req_1_valid),
    .io_ooo_to_mem_enqLsq_req_1_bits_cf_trigger_backendEn_0(
      memBlock_io_ooo_to_mem_enqLsq_req_1_bits_cf_trigger_backendEn_0),
    .io_ooo_to_mem_enqLsq_req_1_bits_cf_storeSetHit(memBlock_io_ooo_to_mem_enqLsq_req_1_bits_cf_storeSetHit),
    .io_ooo_to_mem_enqLsq_req_1_bits_cf_ssid(memBlock_io_ooo_to_mem_enqLsq_req_1_bits_cf_ssid),
    .io_ooo_to_mem_enqLsq_req_1_bits_ctrl_fuOpType(memBlock_io_ooo_to_mem_enqLsq_req_1_bits_ctrl_fuOpType),
    .io_ooo_to_mem_enqLsq_req_1_bits_robIdx_flag(memBlock_io_ooo_to_mem_enqLsq_req_1_bits_robIdx_flag),
    .io_ooo_to_mem_enqLsq_req_1_bits_robIdx_value(memBlock_io_ooo_to_mem_enqLsq_req_1_bits_robIdx_value),
    .io_ooo_to_mem_enqLsq_req_1_bits_lqIdx_value(memBlock_io_ooo_to_mem_enqLsq_req_1_bits_lqIdx_value),
    .io_ooo_to_mem_enqLsq_req_1_bits_sqIdx_value(memBlock_io_ooo_to_mem_enqLsq_req_1_bits_sqIdx_value),
    .io_ooo_to_mem_enqLsq_req_2_valid(memBlock_io_ooo_to_mem_enqLsq_req_2_valid),
    .io_ooo_to_mem_enqLsq_req_2_bits_cf_trigger_backendEn_0(
      memBlock_io_ooo_to_mem_enqLsq_req_2_bits_cf_trigger_backendEn_0),
    .io_ooo_to_mem_enqLsq_req_2_bits_cf_storeSetHit(memBlock_io_ooo_to_mem_enqLsq_req_2_bits_cf_storeSetHit),
    .io_ooo_to_mem_enqLsq_req_2_bits_cf_ssid(memBlock_io_ooo_to_mem_enqLsq_req_2_bits_cf_ssid),
    .io_ooo_to_mem_enqLsq_req_2_bits_ctrl_fuOpType(memBlock_io_ooo_to_mem_enqLsq_req_2_bits_ctrl_fuOpType),
    .io_ooo_to_mem_enqLsq_req_2_bits_robIdx_flag(memBlock_io_ooo_to_mem_enqLsq_req_2_bits_robIdx_flag),
    .io_ooo_to_mem_enqLsq_req_2_bits_robIdx_value(memBlock_io_ooo_to_mem_enqLsq_req_2_bits_robIdx_value),
    .io_ooo_to_mem_enqLsq_req_2_bits_lqIdx_value(memBlock_io_ooo_to_mem_enqLsq_req_2_bits_lqIdx_value),
    .io_ooo_to_mem_enqLsq_req_2_bits_sqIdx_value(memBlock_io_ooo_to_mem_enqLsq_req_2_bits_sqIdx_value),
    .io_ooo_to_mem_enqLsq_req_3_valid(memBlock_io_ooo_to_mem_enqLsq_req_3_valid),
    .io_ooo_to_mem_enqLsq_req_3_bits_cf_trigger_backendEn_0(
      memBlock_io_ooo_to_mem_enqLsq_req_3_bits_cf_trigger_backendEn_0),
    .io_ooo_to_mem_enqLsq_req_3_bits_cf_storeSetHit(memBlock_io_ooo_to_mem_enqLsq_req_3_bits_cf_storeSetHit),
    .io_ooo_to_mem_enqLsq_req_3_bits_cf_ssid(memBlock_io_ooo_to_mem_enqLsq_req_3_bits_cf_ssid),
    .io_ooo_to_mem_enqLsq_req_3_bits_ctrl_fuOpType(memBlock_io_ooo_to_mem_enqLsq_req_3_bits_ctrl_fuOpType),
    .io_ooo_to_mem_enqLsq_req_3_bits_robIdx_flag(memBlock_io_ooo_to_mem_enqLsq_req_3_bits_robIdx_flag),
    .io_ooo_to_mem_enqLsq_req_3_bits_robIdx_value(memBlock_io_ooo_to_mem_enqLsq_req_3_bits_robIdx_value),
    .io_ooo_to_mem_enqLsq_req_3_bits_lqIdx_value(memBlock_io_ooo_to_mem_enqLsq_req_3_bits_lqIdx_value),
    .io_ooo_to_mem_enqLsq_req_3_bits_sqIdx_value(memBlock_io_ooo_to_mem_enqLsq_req_3_bits_sqIdx_value),
    .io_ooo_to_mem_flushSb(memBlock_io_ooo_to_mem_flushSb),
    .io_ooo_to_mem_issue_0_ready(memBlock_io_ooo_to_mem_issue_0_ready),
    .io_ooo_to_mem_issue_0_valid(memBlock_io_ooo_to_mem_issue_0_valid),
    .io_ooo_to_mem_issue_0_bits_uop_cf_trigger_backendEn_1(
      memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_trigger_backendEn_1),
    .io_ooo_to_mem_issue_0_bits_uop_cf_storeSetHit(memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_storeSetHit),
    .io_ooo_to_mem_issue_0_bits_uop_cf_loadWaitStrict(memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_loadWaitStrict),
    .io_ooo_to_mem_issue_0_bits_uop_cf_ssid(memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_ssid),
    .io_ooo_to_mem_issue_0_bits_uop_cf_ftqPtr_flag(memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_ftqPtr_flag),
    .io_ooo_to_mem_issue_0_bits_uop_cf_ftqPtr_value(memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_ftqPtr_value),
    .io_ooo_to_mem_issue_0_bits_uop_cf_ftqOffset(memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_ftqOffset),
    .io_ooo_to_mem_issue_0_bits_uop_ctrl_fuOpType(memBlock_io_ooo_to_mem_issue_0_bits_uop_ctrl_fuOpType),
    .io_ooo_to_mem_issue_0_bits_uop_ctrl_rfWen(memBlock_io_ooo_to_mem_issue_0_bits_uop_ctrl_rfWen),
    .io_ooo_to_mem_issue_0_bits_uop_ctrl_fpWen(memBlock_io_ooo_to_mem_issue_0_bits_uop_ctrl_fpWen),
    .io_ooo_to_mem_issue_0_bits_uop_ctrl_imm(memBlock_io_ooo_to_mem_issue_0_bits_uop_ctrl_imm),
    .io_ooo_to_mem_issue_0_bits_uop_pdest(memBlock_io_ooo_to_mem_issue_0_bits_uop_pdest),
    .io_ooo_to_mem_issue_0_bits_uop_robIdx_flag(memBlock_io_ooo_to_mem_issue_0_bits_uop_robIdx_flag),
    .io_ooo_to_mem_issue_0_bits_uop_robIdx_value(memBlock_io_ooo_to_mem_issue_0_bits_uop_robIdx_value),
    .io_ooo_to_mem_issue_0_bits_uop_lqIdx_flag(memBlock_io_ooo_to_mem_issue_0_bits_uop_lqIdx_flag),
    .io_ooo_to_mem_issue_0_bits_uop_lqIdx_value(memBlock_io_ooo_to_mem_issue_0_bits_uop_lqIdx_value),
    .io_ooo_to_mem_issue_0_bits_uop_sqIdx_flag(memBlock_io_ooo_to_mem_issue_0_bits_uop_sqIdx_flag),
    .io_ooo_to_mem_issue_0_bits_uop_sqIdx_value(memBlock_io_ooo_to_mem_issue_0_bits_uop_sqIdx_value),
    .io_ooo_to_mem_issue_0_bits_src_0(memBlock_io_ooo_to_mem_issue_0_bits_src_0),
    .io_ooo_to_mem_issue_1_ready(memBlock_io_ooo_to_mem_issue_1_ready),
    .io_ooo_to_mem_issue_1_valid(memBlock_io_ooo_to_mem_issue_1_valid),
    .io_ooo_to_mem_issue_1_bits_uop_cf_trigger_backendEn_1(
      memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_trigger_backendEn_1),
    .io_ooo_to_mem_issue_1_bits_uop_cf_storeSetHit(memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_storeSetHit),
    .io_ooo_to_mem_issue_1_bits_uop_cf_loadWaitStrict(memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_loadWaitStrict),
    .io_ooo_to_mem_issue_1_bits_uop_cf_ssid(memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_ssid),
    .io_ooo_to_mem_issue_1_bits_uop_cf_ftqPtr_flag(memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_ftqPtr_flag),
    .io_ooo_to_mem_issue_1_bits_uop_cf_ftqPtr_value(memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_ftqPtr_value),
    .io_ooo_to_mem_issue_1_bits_uop_cf_ftqOffset(memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_ftqOffset),
    .io_ooo_to_mem_issue_1_bits_uop_ctrl_fuOpType(memBlock_io_ooo_to_mem_issue_1_bits_uop_ctrl_fuOpType),
    .io_ooo_to_mem_issue_1_bits_uop_ctrl_rfWen(memBlock_io_ooo_to_mem_issue_1_bits_uop_ctrl_rfWen),
    .io_ooo_to_mem_issue_1_bits_uop_ctrl_fpWen(memBlock_io_ooo_to_mem_issue_1_bits_uop_ctrl_fpWen),
    .io_ooo_to_mem_issue_1_bits_uop_ctrl_imm(memBlock_io_ooo_to_mem_issue_1_bits_uop_ctrl_imm),
    .io_ooo_to_mem_issue_1_bits_uop_pdest(memBlock_io_ooo_to_mem_issue_1_bits_uop_pdest),
    .io_ooo_to_mem_issue_1_bits_uop_robIdx_flag(memBlock_io_ooo_to_mem_issue_1_bits_uop_robIdx_flag),
    .io_ooo_to_mem_issue_1_bits_uop_robIdx_value(memBlock_io_ooo_to_mem_issue_1_bits_uop_robIdx_value),
    .io_ooo_to_mem_issue_1_bits_uop_lqIdx_flag(memBlock_io_ooo_to_mem_issue_1_bits_uop_lqIdx_flag),
    .io_ooo_to_mem_issue_1_bits_uop_lqIdx_value(memBlock_io_ooo_to_mem_issue_1_bits_uop_lqIdx_value),
    .io_ooo_to_mem_issue_1_bits_uop_sqIdx_flag(memBlock_io_ooo_to_mem_issue_1_bits_uop_sqIdx_flag),
    .io_ooo_to_mem_issue_1_bits_uop_sqIdx_value(memBlock_io_ooo_to_mem_issue_1_bits_uop_sqIdx_value),
    .io_ooo_to_mem_issue_1_bits_src_0(memBlock_io_ooo_to_mem_issue_1_bits_src_0),
    .io_ooo_to_mem_issue_2_ready(memBlock_io_ooo_to_mem_issue_2_ready),
    .io_ooo_to_mem_issue_2_valid(memBlock_io_ooo_to_mem_issue_2_valid),
    .io_ooo_to_mem_issue_2_bits_uop_cf_trigger_backendEn_0(
      memBlock_io_ooo_to_mem_issue_2_bits_uop_cf_trigger_backendEn_0),
    .io_ooo_to_mem_issue_2_bits_uop_cf_trigger_backendEn_1(
      memBlock_io_ooo_to_mem_issue_2_bits_uop_cf_trigger_backendEn_1),
    .io_ooo_to_mem_issue_2_bits_uop_cf_ftqPtr_value(memBlock_io_ooo_to_mem_issue_2_bits_uop_cf_ftqPtr_value),
    .io_ooo_to_mem_issue_2_bits_uop_cf_ftqOffset(memBlock_io_ooo_to_mem_issue_2_bits_uop_cf_ftqOffset),
    .io_ooo_to_mem_issue_2_bits_uop_ctrl_fuType(memBlock_io_ooo_to_mem_issue_2_bits_uop_ctrl_fuType),
    .io_ooo_to_mem_issue_2_bits_uop_ctrl_fuOpType(memBlock_io_ooo_to_mem_issue_2_bits_uop_ctrl_fuOpType),
    .io_ooo_to_mem_issue_2_bits_uop_ctrl_rfWen(memBlock_io_ooo_to_mem_issue_2_bits_uop_ctrl_rfWen),
    .io_ooo_to_mem_issue_2_bits_uop_ctrl_fpWen(memBlock_io_ooo_to_mem_issue_2_bits_uop_ctrl_fpWen),
    .io_ooo_to_mem_issue_2_bits_uop_ctrl_imm(memBlock_io_ooo_to_mem_issue_2_bits_uop_ctrl_imm),
    .io_ooo_to_mem_issue_2_bits_uop_pdest(memBlock_io_ooo_to_mem_issue_2_bits_uop_pdest),
    .io_ooo_to_mem_issue_2_bits_uop_robIdx_flag(memBlock_io_ooo_to_mem_issue_2_bits_uop_robIdx_flag),
    .io_ooo_to_mem_issue_2_bits_uop_robIdx_value(memBlock_io_ooo_to_mem_issue_2_bits_uop_robIdx_value),
    .io_ooo_to_mem_issue_2_bits_uop_lqIdx_flag(memBlock_io_ooo_to_mem_issue_2_bits_uop_lqIdx_flag),
    .io_ooo_to_mem_issue_2_bits_uop_lqIdx_value(memBlock_io_ooo_to_mem_issue_2_bits_uop_lqIdx_value),
    .io_ooo_to_mem_issue_2_bits_uop_sqIdx_flag(memBlock_io_ooo_to_mem_issue_2_bits_uop_sqIdx_flag),
    .io_ooo_to_mem_issue_2_bits_uop_sqIdx_value(memBlock_io_ooo_to_mem_issue_2_bits_uop_sqIdx_value),
    .io_ooo_to_mem_issue_2_bits_src_0(memBlock_io_ooo_to_mem_issue_2_bits_src_0),
    .io_ooo_to_mem_issue_3_ready(memBlock_io_ooo_to_mem_issue_3_ready),
    .io_ooo_to_mem_issue_3_valid(memBlock_io_ooo_to_mem_issue_3_valid),
    .io_ooo_to_mem_issue_3_bits_uop_cf_trigger_backendEn_0(
      memBlock_io_ooo_to_mem_issue_3_bits_uop_cf_trigger_backendEn_0),
    .io_ooo_to_mem_issue_3_bits_uop_cf_trigger_backendEn_1(
      memBlock_io_ooo_to_mem_issue_3_bits_uop_cf_trigger_backendEn_1),
    .io_ooo_to_mem_issue_3_bits_uop_cf_ftqPtr_value(memBlock_io_ooo_to_mem_issue_3_bits_uop_cf_ftqPtr_value),
    .io_ooo_to_mem_issue_3_bits_uop_cf_ftqOffset(memBlock_io_ooo_to_mem_issue_3_bits_uop_cf_ftqOffset),
    .io_ooo_to_mem_issue_3_bits_uop_ctrl_fuType(memBlock_io_ooo_to_mem_issue_3_bits_uop_ctrl_fuType),
    .io_ooo_to_mem_issue_3_bits_uop_ctrl_fuOpType(memBlock_io_ooo_to_mem_issue_3_bits_uop_ctrl_fuOpType),
    .io_ooo_to_mem_issue_3_bits_uop_ctrl_rfWen(memBlock_io_ooo_to_mem_issue_3_bits_uop_ctrl_rfWen),
    .io_ooo_to_mem_issue_3_bits_uop_ctrl_fpWen(memBlock_io_ooo_to_mem_issue_3_bits_uop_ctrl_fpWen),
    .io_ooo_to_mem_issue_3_bits_uop_ctrl_imm(memBlock_io_ooo_to_mem_issue_3_bits_uop_ctrl_imm),
    .io_ooo_to_mem_issue_3_bits_uop_pdest(memBlock_io_ooo_to_mem_issue_3_bits_uop_pdest),
    .io_ooo_to_mem_issue_3_bits_uop_robIdx_flag(memBlock_io_ooo_to_mem_issue_3_bits_uop_robIdx_flag),
    .io_ooo_to_mem_issue_3_bits_uop_robIdx_value(memBlock_io_ooo_to_mem_issue_3_bits_uop_robIdx_value),
    .io_ooo_to_mem_issue_3_bits_uop_lqIdx_flag(memBlock_io_ooo_to_mem_issue_3_bits_uop_lqIdx_flag),
    .io_ooo_to_mem_issue_3_bits_uop_lqIdx_value(memBlock_io_ooo_to_mem_issue_3_bits_uop_lqIdx_value),
    .io_ooo_to_mem_issue_3_bits_uop_sqIdx_flag(memBlock_io_ooo_to_mem_issue_3_bits_uop_sqIdx_flag),
    .io_ooo_to_mem_issue_3_bits_uop_sqIdx_value(memBlock_io_ooo_to_mem_issue_3_bits_uop_sqIdx_value),
    .io_ooo_to_mem_issue_3_bits_src_0(memBlock_io_ooo_to_mem_issue_3_bits_src_0),
    .io_ooo_to_mem_issue_4_ready(memBlock_io_ooo_to_mem_issue_4_ready),
    .io_ooo_to_mem_issue_4_valid(memBlock_io_ooo_to_mem_issue_4_valid),
    .io_ooo_to_mem_issue_4_bits_uop_ctrl_fuType(memBlock_io_ooo_to_mem_issue_4_bits_uop_ctrl_fuType),
    .io_ooo_to_mem_issue_4_bits_uop_ctrl_fuOpType(memBlock_io_ooo_to_mem_issue_4_bits_uop_ctrl_fuOpType),
    .io_ooo_to_mem_issue_4_bits_uop_robIdx_flag(memBlock_io_ooo_to_mem_issue_4_bits_uop_robIdx_flag),
    .io_ooo_to_mem_issue_4_bits_uop_robIdx_value(memBlock_io_ooo_to_mem_issue_4_bits_uop_robIdx_value),
    .io_ooo_to_mem_issue_4_bits_uop_sqIdx_flag(memBlock_io_ooo_to_mem_issue_4_bits_uop_sqIdx_flag),
    .io_ooo_to_mem_issue_4_bits_uop_sqIdx_value(memBlock_io_ooo_to_mem_issue_4_bits_uop_sqIdx_value),
    .io_ooo_to_mem_issue_4_bits_src_0(memBlock_io_ooo_to_mem_issue_4_bits_src_0),
    .io_ooo_to_mem_issue_5_ready(memBlock_io_ooo_to_mem_issue_5_ready),
    .io_ooo_to_mem_issue_5_valid(memBlock_io_ooo_to_mem_issue_5_valid),
    .io_ooo_to_mem_issue_5_bits_uop_ctrl_fuType(memBlock_io_ooo_to_mem_issue_5_bits_uop_ctrl_fuType),
    .io_ooo_to_mem_issue_5_bits_uop_ctrl_fuOpType(memBlock_io_ooo_to_mem_issue_5_bits_uop_ctrl_fuOpType),
    .io_ooo_to_mem_issue_5_bits_uop_robIdx_flag(memBlock_io_ooo_to_mem_issue_5_bits_uop_robIdx_flag),
    .io_ooo_to_mem_issue_5_bits_uop_robIdx_value(memBlock_io_ooo_to_mem_issue_5_bits_uop_robIdx_value),
    .io_ooo_to_mem_issue_5_bits_uop_sqIdx_flag(memBlock_io_ooo_to_mem_issue_5_bits_uop_sqIdx_flag),
    .io_ooo_to_mem_issue_5_bits_uop_sqIdx_value(memBlock_io_ooo_to_mem_issue_5_bits_uop_sqIdx_value),
    .io_ooo_to_mem_issue_5_bits_src_0(memBlock_io_ooo_to_mem_issue_5_bits_src_0),
    .io_mem_to_ooo_otherFastWakeup_0_valid(memBlock_io_mem_to_ooo_otherFastWakeup_0_valid),
    .io_mem_to_ooo_otherFastWakeup_0_bits_ctrl_rfWen(memBlock_io_mem_to_ooo_otherFastWakeup_0_bits_ctrl_rfWen),
    .io_mem_to_ooo_otherFastWakeup_0_bits_pdest(memBlock_io_mem_to_ooo_otherFastWakeup_0_bits_pdest),
    .io_mem_to_ooo_otherFastWakeup_1_valid(memBlock_io_mem_to_ooo_otherFastWakeup_1_valid),
    .io_mem_to_ooo_otherFastWakeup_1_bits_ctrl_rfWen(memBlock_io_mem_to_ooo_otherFastWakeup_1_bits_ctrl_rfWen),
    .io_mem_to_ooo_otherFastWakeup_1_bits_pdest(memBlock_io_mem_to_ooo_otherFastWakeup_1_bits_pdest),
    .io_mem_to_ooo_csrUpdate_wvalid(memBlock_io_mem_to_ooo_csrUpdate_wvalid),
    .io_mem_to_ooo_csrUpdate_waddr(memBlock_io_mem_to_ooo_csrUpdate_waddr),
    .io_mem_to_ooo_csrUpdate_wdata(memBlock_io_mem_to_ooo_csrUpdate_wdata),
    .io_mem_to_ooo_lqCancelCnt(memBlock_io_mem_to_ooo_lqCancelCnt),
    .io_mem_to_ooo_sqCancelCnt(memBlock_io_mem_to_ooo_sqCancelCnt),
    .io_mem_to_ooo_sqDeq(memBlock_io_mem_to_ooo_sqDeq),
    .io_mem_to_ooo_lqDeq(memBlock_io_mem_to_ooo_lqDeq),
    .io_mem_to_ooo_memoryViolation_valid(memBlock_io_mem_to_ooo_memoryViolation_valid),
    .io_mem_to_ooo_memoryViolation_bits_robIdx_flag(memBlock_io_mem_to_ooo_memoryViolation_bits_robIdx_flag),
    .io_mem_to_ooo_memoryViolation_bits_robIdx_value(memBlock_io_mem_to_ooo_memoryViolation_bits_robIdx_value),
    .io_mem_to_ooo_memoryViolation_bits_ftqIdx_flag(memBlock_io_mem_to_ooo_memoryViolation_bits_ftqIdx_flag),
    .io_mem_to_ooo_memoryViolation_bits_ftqIdx_value(memBlock_io_mem_to_ooo_memoryViolation_bits_ftqIdx_value),
    .io_mem_to_ooo_memoryViolation_bits_ftqOffset(memBlock_io_mem_to_ooo_memoryViolation_bits_ftqOffset),
    .io_mem_to_ooo_memoryViolation_bits_stFtqIdx_value(memBlock_io_mem_to_ooo_memoryViolation_bits_stFtqIdx_value),
    .io_mem_to_ooo_memoryViolation_bits_stFtqOffset(memBlock_io_mem_to_ooo_memoryViolation_bits_stFtqOffset),
    .io_mem_to_ooo_sbIsEmpty(memBlock_io_mem_to_ooo_sbIsEmpty),
    .io_mem_to_ooo_lsTopdownInfo_0_s1_robIdx(memBlock_io_mem_to_ooo_lsTopdownInfo_0_s1_robIdx),
    .io_mem_to_ooo_lsTopdownInfo_0_s1_vaddr_valid(memBlock_io_mem_to_ooo_lsTopdownInfo_0_s1_vaddr_valid),
    .io_mem_to_ooo_lsTopdownInfo_0_s1_vaddr_bits(memBlock_io_mem_to_ooo_lsTopdownInfo_0_s1_vaddr_bits),
    .io_mem_to_ooo_lsTopdownInfo_0_s2_robIdx(memBlock_io_mem_to_ooo_lsTopdownInfo_0_s2_robIdx),
    .io_mem_to_ooo_lsTopdownInfo_0_s2_paddr_valid(memBlock_io_mem_to_ooo_lsTopdownInfo_0_s2_paddr_valid),
    .io_mem_to_ooo_lsTopdownInfo_0_s2_paddr_bits(memBlock_io_mem_to_ooo_lsTopdownInfo_0_s2_paddr_bits),
    .io_mem_to_ooo_lsTopdownInfo_1_s1_robIdx(memBlock_io_mem_to_ooo_lsTopdownInfo_1_s1_robIdx),
    .io_mem_to_ooo_lsTopdownInfo_1_s1_vaddr_valid(memBlock_io_mem_to_ooo_lsTopdownInfo_1_s1_vaddr_valid),
    .io_mem_to_ooo_lsTopdownInfo_1_s1_vaddr_bits(memBlock_io_mem_to_ooo_lsTopdownInfo_1_s1_vaddr_bits),
    .io_mem_to_ooo_lsTopdownInfo_1_s2_robIdx(memBlock_io_mem_to_ooo_lsTopdownInfo_1_s2_robIdx),
    .io_mem_to_ooo_lsTopdownInfo_1_s2_paddr_valid(memBlock_io_mem_to_ooo_lsTopdownInfo_1_s2_paddr_valid),
    .io_mem_to_ooo_lsTopdownInfo_1_s2_paddr_bits(memBlock_io_mem_to_ooo_lsTopdownInfo_1_s2_paddr_bits),
    .io_mem_to_ooo_lsqio_vaddr(memBlock_io_mem_to_ooo_lsqio_vaddr),
    .io_mem_to_ooo_lsqio_mmio_0(memBlock_io_mem_to_ooo_lsqio_mmio_0),
    .io_mem_to_ooo_lsqio_mmio_1(memBlock_io_mem_to_ooo_lsqio_mmio_1),
    .io_mem_to_ooo_lsqio_uop_0_robIdx_value(memBlock_io_mem_to_ooo_lsqio_uop_0_robIdx_value),
    .io_mem_to_ooo_lsqio_uop_1_robIdx_value(memBlock_io_mem_to_ooo_lsqio_uop_1_robIdx_value),
    .io_mem_to_ooo_writeback_0_ready(memBlock_io_mem_to_ooo_writeback_0_ready),
    .io_mem_to_ooo_writeback_0_valid(memBlock_io_mem_to_ooo_writeback_0_valid),
    .io_mem_to_ooo_writeback_0_bits_uop_cf_exceptionVec_4(memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_exceptionVec_4)
      ,
    .io_mem_to_ooo_writeback_0_bits_uop_cf_exceptionVec_5(memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_exceptionVec_5)
      ,
    .io_mem_to_ooo_writeback_0_bits_uop_cf_exceptionVec_13(
      memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_exceptionVec_13),
    .io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendEn_1(
      memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendEn_1),
    .io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_0(
      memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_0),
    .io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_1(
      memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_1),
    .io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_2(
      memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_2),
    .io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_3(
      memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_3),
    .io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_4(
      memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_4),
    .io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_5(
      memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_5),
    .io_mem_to_ooo_writeback_0_bits_uop_ctrl_rfWen(memBlock_io_mem_to_ooo_writeback_0_bits_uop_ctrl_rfWen),
    .io_mem_to_ooo_writeback_0_bits_uop_ctrl_fpWen(memBlock_io_mem_to_ooo_writeback_0_bits_uop_ctrl_fpWen),
    .io_mem_to_ooo_writeback_0_bits_uop_ctrl_replayInst(memBlock_io_mem_to_ooo_writeback_0_bits_uop_ctrl_replayInst),
    .io_mem_to_ooo_writeback_0_bits_uop_pdest(memBlock_io_mem_to_ooo_writeback_0_bits_uop_pdest),
    .io_mem_to_ooo_writeback_0_bits_uop_robIdx_flag(memBlock_io_mem_to_ooo_writeback_0_bits_uop_robIdx_flag),
    .io_mem_to_ooo_writeback_0_bits_uop_robIdx_value(memBlock_io_mem_to_ooo_writeback_0_bits_uop_robIdx_value),
    .io_mem_to_ooo_writeback_0_bits_uop_lqIdx_flag(memBlock_io_mem_to_ooo_writeback_0_bits_uop_lqIdx_flag),
    .io_mem_to_ooo_writeback_0_bits_uop_lqIdx_value(memBlock_io_mem_to_ooo_writeback_0_bits_uop_lqIdx_value),
    .io_mem_to_ooo_writeback_0_bits_data(memBlock_io_mem_to_ooo_writeback_0_bits_data),
    .io_mem_to_ooo_writeback_0_bits_debug_isMMIO(memBlock_io_mem_to_ooo_writeback_0_bits_debug_isMMIO),
    .io_mem_to_ooo_writeback_1_ready(memBlock_io_mem_to_ooo_writeback_1_ready),
    .io_mem_to_ooo_writeback_1_valid(memBlock_io_mem_to_ooo_writeback_1_valid),
    .io_mem_to_ooo_writeback_1_bits_uop_cf_exceptionVec_4(memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_exceptionVec_4)
      ,
    .io_mem_to_ooo_writeback_1_bits_uop_cf_exceptionVec_5(memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_exceptionVec_5)
      ,
    .io_mem_to_ooo_writeback_1_bits_uop_cf_exceptionVec_13(
      memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_exceptionVec_13),
    .io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendEn_1(
      memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendEn_1),
    .io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_0(
      memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_0),
    .io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_1(
      memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_1),
    .io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_2(
      memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_2),
    .io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_3(
      memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_3),
    .io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_4(
      memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_4),
    .io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_5(
      memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_5),
    .io_mem_to_ooo_writeback_1_bits_uop_ctrl_rfWen(memBlock_io_mem_to_ooo_writeback_1_bits_uop_ctrl_rfWen),
    .io_mem_to_ooo_writeback_1_bits_uop_ctrl_fpWen(memBlock_io_mem_to_ooo_writeback_1_bits_uop_ctrl_fpWen),
    .io_mem_to_ooo_writeback_1_bits_uop_ctrl_replayInst(memBlock_io_mem_to_ooo_writeback_1_bits_uop_ctrl_replayInst),
    .io_mem_to_ooo_writeback_1_bits_uop_pdest(memBlock_io_mem_to_ooo_writeback_1_bits_uop_pdest),
    .io_mem_to_ooo_writeback_1_bits_uop_robIdx_flag(memBlock_io_mem_to_ooo_writeback_1_bits_uop_robIdx_flag),
    .io_mem_to_ooo_writeback_1_bits_uop_robIdx_value(memBlock_io_mem_to_ooo_writeback_1_bits_uop_robIdx_value),
    .io_mem_to_ooo_writeback_1_bits_uop_lqIdx_flag(memBlock_io_mem_to_ooo_writeback_1_bits_uop_lqIdx_flag),
    .io_mem_to_ooo_writeback_1_bits_uop_lqIdx_value(memBlock_io_mem_to_ooo_writeback_1_bits_uop_lqIdx_value),
    .io_mem_to_ooo_writeback_1_bits_data(memBlock_io_mem_to_ooo_writeback_1_bits_data),
    .io_mem_to_ooo_writeback_1_bits_debug_isMMIO(memBlock_io_mem_to_ooo_writeback_1_bits_debug_isMMIO),
    .io_mem_to_ooo_writeback_2_ready(memBlock_io_mem_to_ooo_writeback_2_ready),
    .io_mem_to_ooo_writeback_2_valid(memBlock_io_mem_to_ooo_writeback_2_valid),
    .io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_4(memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_4)
      ,
    .io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_5(memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_5)
      ,
    .io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_6(memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_6)
      ,
    .io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_7(memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_7)
      ,
    .io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_13(
      memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_13),
    .io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_15(
      memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_15),
    .io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendEn_0(
      memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendEn_0),
    .io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_0(
      memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_0),
    .io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_1(
      memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_1),
    .io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_2(
      memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_2),
    .io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_3(
      memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_3),
    .io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_4(
      memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_4),
    .io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_5(
      memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_5),
    .io_mem_to_ooo_writeback_2_bits_uop_robIdx_flag(memBlock_io_mem_to_ooo_writeback_2_bits_uop_robIdx_flag),
    .io_mem_to_ooo_writeback_2_bits_uop_robIdx_value(memBlock_io_mem_to_ooo_writeback_2_bits_uop_robIdx_value),
    .io_mem_to_ooo_writeback_2_bits_uop_lqIdx_flag(memBlock_io_mem_to_ooo_writeback_2_bits_uop_lqIdx_flag),
    .io_mem_to_ooo_writeback_2_bits_uop_lqIdx_value(memBlock_io_mem_to_ooo_writeback_2_bits_uop_lqIdx_value),
    .io_mem_to_ooo_writeback_2_bits_debug_isMMIO(memBlock_io_mem_to_ooo_writeback_2_bits_debug_isMMIO),
    .io_mem_to_ooo_writeback_2_bits_debug_vaddr(memBlock_io_mem_to_ooo_writeback_2_bits_debug_vaddr),
    .io_mem_to_ooo_writeback_3_ready(memBlock_io_mem_to_ooo_writeback_3_ready),
    .io_mem_to_ooo_writeback_3_valid(memBlock_io_mem_to_ooo_writeback_3_valid),
    .io_mem_to_ooo_writeback_3_bits_uop_cf_exceptionVec_6(memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_exceptionVec_6)
      ,
    .io_mem_to_ooo_writeback_3_bits_uop_cf_exceptionVec_7(memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_exceptionVec_7)
      ,
    .io_mem_to_ooo_writeback_3_bits_uop_cf_exceptionVec_15(
      memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_exceptionVec_15),
    .io_mem_to_ooo_writeback_3_bits_uop_cf_trigger_backendEn_0(
      memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_trigger_backendEn_0),
    .io_mem_to_ooo_writeback_3_bits_uop_cf_trigger_backendHit_0(
      memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_trigger_backendHit_0),
    .io_mem_to_ooo_writeback_3_bits_uop_cf_trigger_backendHit_1(
      memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_trigger_backendHit_1),
    .io_mem_to_ooo_writeback_3_bits_uop_cf_trigger_backendHit_4(
      memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_trigger_backendHit_4),
    .io_mem_to_ooo_writeback_3_bits_uop_robIdx_flag(memBlock_io_mem_to_ooo_writeback_3_bits_uop_robIdx_flag),
    .io_mem_to_ooo_writeback_3_bits_uop_robIdx_value(memBlock_io_mem_to_ooo_writeback_3_bits_uop_robIdx_value),
    .io_mem_to_ooo_writeback_3_bits_uop_lqIdx_flag(memBlock_io_mem_to_ooo_writeback_3_bits_uop_lqIdx_flag),
    .io_mem_to_ooo_writeback_3_bits_uop_lqIdx_value(memBlock_io_mem_to_ooo_writeback_3_bits_uop_lqIdx_value),
    .io_mem_to_ooo_writeback_3_bits_debug_isMMIO(memBlock_io_mem_to_ooo_writeback_3_bits_debug_isMMIO),
    .io_mem_to_ooo_writeback_3_bits_debug_vaddr(memBlock_io_mem_to_ooo_writeback_3_bits_debug_vaddr),
    .io_mem_to_ooo_writeback_4_valid(memBlock_io_mem_to_ooo_writeback_4_valid),
    .io_mem_to_ooo_writeback_4_bits_uop_robIdx_flag(memBlock_io_mem_to_ooo_writeback_4_bits_uop_robIdx_flag),
    .io_mem_to_ooo_writeback_4_bits_uop_robIdx_value(memBlock_io_mem_to_ooo_writeback_4_bits_uop_robIdx_value),
    .io_mem_to_ooo_writeback_5_valid(memBlock_io_mem_to_ooo_writeback_5_valid),
    .io_mem_to_ooo_writeback_5_bits_uop_robIdx_flag(memBlock_io_mem_to_ooo_writeback_5_bits_uop_robIdx_flag),
    .io_mem_to_ooo_writeback_5_bits_uop_robIdx_value(memBlock_io_mem_to_ooo_writeback_5_bits_uop_robIdx_value),
    .io_fetch_to_mem_itlb_req_0_ready(memBlock_io_fetch_to_mem_itlb_req_0_ready),
    .io_fetch_to_mem_itlb_req_0_valid(memBlock_io_fetch_to_mem_itlb_req_0_valid),
    .io_fetch_to_mem_itlb_req_0_bits_vpn(memBlock_io_fetch_to_mem_itlb_req_0_bits_vpn),
    .io_fetch_to_mem_itlb_resp_valid(memBlock_io_fetch_to_mem_itlb_resp_valid),
    .io_fetch_to_mem_itlb_resp_bits_entry_tag(memBlock_io_fetch_to_mem_itlb_resp_bits_entry_tag),
    .io_fetch_to_mem_itlb_resp_bits_entry_asid(memBlock_io_fetch_to_mem_itlb_resp_bits_entry_asid),
    .io_fetch_to_mem_itlb_resp_bits_entry_perm_d(memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_d),
    .io_fetch_to_mem_itlb_resp_bits_entry_perm_a(memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_a),
    .io_fetch_to_mem_itlb_resp_bits_entry_perm_g(memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_g),
    .io_fetch_to_mem_itlb_resp_bits_entry_perm_u(memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_u),
    .io_fetch_to_mem_itlb_resp_bits_entry_perm_x(memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_x),
    .io_fetch_to_mem_itlb_resp_bits_entry_perm_w(memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_w),
    .io_fetch_to_mem_itlb_resp_bits_entry_perm_r(memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_r),
    .io_fetch_to_mem_itlb_resp_bits_entry_level(memBlock_io_fetch_to_mem_itlb_resp_bits_entry_level),
    .io_fetch_to_mem_itlb_resp_bits_entry_ppn(memBlock_io_fetch_to_mem_itlb_resp_bits_entry_ppn),
    .io_fetch_to_mem_itlb_resp_bits_ppn_low_0(memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_0),
    .io_fetch_to_mem_itlb_resp_bits_ppn_low_1(memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_1),
    .io_fetch_to_mem_itlb_resp_bits_ppn_low_2(memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_2),
    .io_fetch_to_mem_itlb_resp_bits_ppn_low_3(memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_3),
    .io_fetch_to_mem_itlb_resp_bits_ppn_low_4(memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_4),
    .io_fetch_to_mem_itlb_resp_bits_ppn_low_5(memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_5),
    .io_fetch_to_mem_itlb_resp_bits_ppn_low_6(memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_6),
    .io_fetch_to_mem_itlb_resp_bits_ppn_low_7(memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_7),
    .io_fetch_to_mem_itlb_resp_bits_valididx_0(memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_0),
    .io_fetch_to_mem_itlb_resp_bits_valididx_1(memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_1),
    .io_fetch_to_mem_itlb_resp_bits_valididx_2(memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_2),
    .io_fetch_to_mem_itlb_resp_bits_valididx_3(memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_3),
    .io_fetch_to_mem_itlb_resp_bits_valididx_4(memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_4),
    .io_fetch_to_mem_itlb_resp_bits_valididx_5(memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_5),
    .io_fetch_to_mem_itlb_resp_bits_valididx_6(memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_6),
    .io_fetch_to_mem_itlb_resp_bits_valididx_7(memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_7),
    .io_fetch_to_mem_itlb_resp_bits_pf(memBlock_io_fetch_to_mem_itlb_resp_bits_pf),
    .io_fetch_to_mem_itlb_resp_bits_af(memBlock_io_fetch_to_mem_itlb_resp_bits_af),
    .io_rsfeedback_0_feedbackSlow_valid(memBlock_io_rsfeedback_0_feedbackSlow_valid),
    .io_rsfeedback_0_feedbackSlow_bits_rsIdx(memBlock_io_rsfeedback_0_feedbackSlow_bits_rsIdx),
    .io_rsfeedback_0_feedbackSlow_bits_hit(memBlock_io_rsfeedback_0_feedbackSlow_bits_hit),
    .io_rsfeedback_0_feedbackFast_valid(memBlock_io_rsfeedback_0_feedbackFast_valid),
    .io_rsfeedback_0_feedbackFast_bits_rsIdx(memBlock_io_rsfeedback_0_feedbackFast_bits_rsIdx),
    .io_rsfeedback_0_rsIdx(memBlock_io_rsfeedback_0_rsIdx),
    .io_rsfeedback_1_feedbackSlow_valid(memBlock_io_rsfeedback_1_feedbackSlow_valid),
    .io_rsfeedback_1_feedbackSlow_bits_rsIdx(memBlock_io_rsfeedback_1_feedbackSlow_bits_rsIdx),
    .io_rsfeedback_1_feedbackSlow_bits_hit(memBlock_io_rsfeedback_1_feedbackSlow_bits_hit),
    .io_rsfeedback_1_feedbackFast_valid(memBlock_io_rsfeedback_1_feedbackFast_valid),
    .io_rsfeedback_1_feedbackFast_bits_rsIdx(memBlock_io_rsfeedback_1_feedbackFast_bits_rsIdx),
    .io_rsfeedback_1_rsIdx(memBlock_io_rsfeedback_1_rsIdx),
    .io_rsfeedback_2_feedbackSlow_valid(memBlock_io_rsfeedback_2_feedbackSlow_valid),
    .io_rsfeedback_2_feedbackSlow_bits_rsIdx(memBlock_io_rsfeedback_2_feedbackSlow_bits_rsIdx),
    .io_rsfeedback_2_feedbackSlow_bits_hit(memBlock_io_rsfeedback_2_feedbackSlow_bits_hit),
    .io_rsfeedback_2_rsIdx(memBlock_io_rsfeedback_2_rsIdx),
    .io_rsfeedback_3_feedbackSlow_valid(memBlock_io_rsfeedback_3_feedbackSlow_valid),
    .io_rsfeedback_3_feedbackSlow_bits_rsIdx(memBlock_io_rsfeedback_3_feedbackSlow_bits_rsIdx),
    .io_rsfeedback_3_feedbackSlow_bits_hit(memBlock_io_rsfeedback_3_feedbackSlow_bits_hit),
    .io_rsfeedback_3_rsIdx(memBlock_io_rsfeedback_3_rsIdx),
    .io_error_paddr(memBlock_io_error_paddr),
    .io_error_report_to_beu(memBlock_io_error_report_to_beu),
    .io_l2_hint_valid(memBlock_io_l2_hint_valid),
    .io_l2_hint_bits_sourceId(memBlock_io_l2_hint_bits_sourceId),
    .io_perf_0_value(memBlock_io_perf_0_value),
    .io_perf_1_value(memBlock_io_perf_1_value),
    .io_perf_2_value(memBlock_io_perf_2_value),
    .io_perf_3_value(memBlock_io_perf_3_value),
    .io_perf_4_value(memBlock_io_perf_4_value),
    .io_perf_5_value(memBlock_io_perf_5_value),
    .io_perf_6_value(memBlock_io_perf_6_value),
    .io_perf_7_value(memBlock_io_perf_7_value),
    .sourceVaddr_valid(memBlock_sourceVaddr_valid),
    .sourceVaddr_bits(memBlock_sourceVaddr_bits)
  );
  Wb2Ctrl wb2Ctrl ( // @[XSCore.scala 219:27]
    .clock(wb2Ctrl_clock),
    .reset(wb2Ctrl_reset),
    .io_redirect_valid(wb2Ctrl_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(wb2Ctrl_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(wb2Ctrl_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(wb2Ctrl_io_redirect_bits_level),
    .io_in_3_ready(wb2Ctrl_io_in_3_ready),
    .io_in_3_valid(wb2Ctrl_io_in_3_valid),
    .io_in_3_bits_uop_cf_exceptionVec_2(wb2Ctrl_io_in_3_bits_uop_cf_exceptionVec_2),
    .io_in_3_bits_uop_cf_exceptionVec_3(wb2Ctrl_io_in_3_bits_uop_cf_exceptionVec_3),
    .io_in_3_bits_uop_cf_exceptionVec_8(wb2Ctrl_io_in_3_bits_uop_cf_exceptionVec_8),
    .io_in_3_bits_uop_cf_exceptionVec_9(wb2Ctrl_io_in_3_bits_uop_cf_exceptionVec_9),
    .io_in_3_bits_uop_cf_exceptionVec_11(wb2Ctrl_io_in_3_bits_uop_cf_exceptionVec_11),
    .io_in_3_bits_uop_ctrl_flushPipe(wb2Ctrl_io_in_3_bits_uop_ctrl_flushPipe),
    .io_in_3_bits_uop_robIdx_flag(wb2Ctrl_io_in_3_bits_uop_robIdx_flag),
    .io_in_3_bits_uop_robIdx_value(wb2Ctrl_io_in_3_bits_uop_robIdx_value),
    .io_in_3_bits_fflags(wb2Ctrl_io_in_3_bits_fflags),
    .io_in_4_ready(wb2Ctrl_io_in_4_ready),
    .io_in_4_valid(wb2Ctrl_io_in_4_valid),
    .io_in_4_bits_uop_robIdx_flag(wb2Ctrl_io_in_4_bits_uop_robIdx_flag),
    .io_in_4_bits_uop_robIdx_value(wb2Ctrl_io_in_4_bits_uop_robIdx_value),
    .io_in_4_bits_fflags(wb2Ctrl_io_in_4_bits_fflags),
    .io_in_5_ready(wb2Ctrl_io_in_5_ready),
    .io_in_5_valid(wb2Ctrl_io_in_5_valid),
    .io_in_5_bits_uop_robIdx_flag(wb2Ctrl_io_in_5_bits_uop_robIdx_flag),
    .io_in_5_bits_uop_robIdx_value(wb2Ctrl_io_in_5_bits_uop_robIdx_value),
    .io_in_5_bits_fflags(wb2Ctrl_io_in_5_bits_fflags),
    .io_in_6_ready(wb2Ctrl_io_in_6_ready),
    .io_in_6_valid(wb2Ctrl_io_in_6_valid),
    .io_in_6_bits_uop_cf_exceptionVec_4(wb2Ctrl_io_in_6_bits_uop_cf_exceptionVec_4),
    .io_in_6_bits_uop_cf_exceptionVec_5(wb2Ctrl_io_in_6_bits_uop_cf_exceptionVec_5),
    .io_in_6_bits_uop_cf_exceptionVec_13(wb2Ctrl_io_in_6_bits_uop_cf_exceptionVec_13),
    .io_in_6_bits_uop_cf_trigger_backendHit_0(wb2Ctrl_io_in_6_bits_uop_cf_trigger_backendHit_0),
    .io_in_6_bits_uop_cf_trigger_backendHit_1(wb2Ctrl_io_in_6_bits_uop_cf_trigger_backendHit_1),
    .io_in_6_bits_uop_cf_trigger_backendHit_2(wb2Ctrl_io_in_6_bits_uop_cf_trigger_backendHit_2),
    .io_in_6_bits_uop_cf_trigger_backendHit_3(wb2Ctrl_io_in_6_bits_uop_cf_trigger_backendHit_3),
    .io_in_6_bits_uop_cf_trigger_backendHit_4(wb2Ctrl_io_in_6_bits_uop_cf_trigger_backendHit_4),
    .io_in_6_bits_uop_cf_trigger_backendHit_5(wb2Ctrl_io_in_6_bits_uop_cf_trigger_backendHit_5),
    .io_in_6_bits_uop_ctrl_replayInst(wb2Ctrl_io_in_6_bits_uop_ctrl_replayInst),
    .io_in_6_bits_uop_robIdx_flag(wb2Ctrl_io_in_6_bits_uop_robIdx_flag),
    .io_in_6_bits_uop_robIdx_value(wb2Ctrl_io_in_6_bits_uop_robIdx_value),
    .io_in_7_ready(wb2Ctrl_io_in_7_ready),
    .io_in_7_valid(wb2Ctrl_io_in_7_valid),
    .io_in_7_bits_uop_cf_exceptionVec_4(wb2Ctrl_io_in_7_bits_uop_cf_exceptionVec_4),
    .io_in_7_bits_uop_cf_exceptionVec_5(wb2Ctrl_io_in_7_bits_uop_cf_exceptionVec_5),
    .io_in_7_bits_uop_cf_exceptionVec_13(wb2Ctrl_io_in_7_bits_uop_cf_exceptionVec_13),
    .io_in_7_bits_uop_cf_trigger_backendHit_0(wb2Ctrl_io_in_7_bits_uop_cf_trigger_backendHit_0),
    .io_in_7_bits_uop_cf_trigger_backendHit_1(wb2Ctrl_io_in_7_bits_uop_cf_trigger_backendHit_1),
    .io_in_7_bits_uop_cf_trigger_backendHit_2(wb2Ctrl_io_in_7_bits_uop_cf_trigger_backendHit_2),
    .io_in_7_bits_uop_cf_trigger_backendHit_3(wb2Ctrl_io_in_7_bits_uop_cf_trigger_backendHit_3),
    .io_in_7_bits_uop_cf_trigger_backendHit_4(wb2Ctrl_io_in_7_bits_uop_cf_trigger_backendHit_4),
    .io_in_7_bits_uop_cf_trigger_backendHit_5(wb2Ctrl_io_in_7_bits_uop_cf_trigger_backendHit_5),
    .io_in_7_bits_uop_ctrl_replayInst(wb2Ctrl_io_in_7_bits_uop_ctrl_replayInst),
    .io_in_7_bits_uop_robIdx_flag(wb2Ctrl_io_in_7_bits_uop_robIdx_flag),
    .io_in_7_bits_uop_robIdx_value(wb2Ctrl_io_in_7_bits_uop_robIdx_value),
    .io_in_8_ready(wb2Ctrl_io_in_8_ready),
    .io_in_8_valid(wb2Ctrl_io_in_8_valid),
    .io_in_8_bits_uop_cf_exceptionVec_4(wb2Ctrl_io_in_8_bits_uop_cf_exceptionVec_4),
    .io_in_8_bits_uop_cf_exceptionVec_5(wb2Ctrl_io_in_8_bits_uop_cf_exceptionVec_5),
    .io_in_8_bits_uop_cf_exceptionVec_6(wb2Ctrl_io_in_8_bits_uop_cf_exceptionVec_6),
    .io_in_8_bits_uop_cf_exceptionVec_7(wb2Ctrl_io_in_8_bits_uop_cf_exceptionVec_7),
    .io_in_8_bits_uop_cf_exceptionVec_13(wb2Ctrl_io_in_8_bits_uop_cf_exceptionVec_13),
    .io_in_8_bits_uop_cf_exceptionVec_15(wb2Ctrl_io_in_8_bits_uop_cf_exceptionVec_15),
    .io_in_8_bits_uop_cf_trigger_backendHit_0(wb2Ctrl_io_in_8_bits_uop_cf_trigger_backendHit_0),
    .io_in_8_bits_uop_cf_trigger_backendHit_1(wb2Ctrl_io_in_8_bits_uop_cf_trigger_backendHit_1),
    .io_in_8_bits_uop_cf_trigger_backendHit_2(wb2Ctrl_io_in_8_bits_uop_cf_trigger_backendHit_2),
    .io_in_8_bits_uop_cf_trigger_backendHit_3(wb2Ctrl_io_in_8_bits_uop_cf_trigger_backendHit_3),
    .io_in_8_bits_uop_cf_trigger_backendHit_4(wb2Ctrl_io_in_8_bits_uop_cf_trigger_backendHit_4),
    .io_in_8_bits_uop_cf_trigger_backendHit_5(wb2Ctrl_io_in_8_bits_uop_cf_trigger_backendHit_5),
    .io_in_8_bits_uop_robIdx_flag(wb2Ctrl_io_in_8_bits_uop_robIdx_flag),
    .io_in_8_bits_uop_robIdx_value(wb2Ctrl_io_in_8_bits_uop_robIdx_value),
    .io_in_9_ready(wb2Ctrl_io_in_9_ready),
    .io_in_9_valid(wb2Ctrl_io_in_9_valid),
    .io_in_9_bits_uop_cf_exceptionVec_6(wb2Ctrl_io_in_9_bits_uop_cf_exceptionVec_6),
    .io_in_9_bits_uop_cf_exceptionVec_7(wb2Ctrl_io_in_9_bits_uop_cf_exceptionVec_7),
    .io_in_9_bits_uop_cf_exceptionVec_15(wb2Ctrl_io_in_9_bits_uop_cf_exceptionVec_15),
    .io_in_9_bits_uop_cf_trigger_backendHit_0(wb2Ctrl_io_in_9_bits_uop_cf_trigger_backendHit_0),
    .io_in_9_bits_uop_cf_trigger_backendHit_1(wb2Ctrl_io_in_9_bits_uop_cf_trigger_backendHit_1),
    .io_in_9_bits_uop_cf_trigger_backendHit_4(wb2Ctrl_io_in_9_bits_uop_cf_trigger_backendHit_4),
    .io_in_9_bits_uop_robIdx_flag(wb2Ctrl_io_in_9_bits_uop_robIdx_flag),
    .io_in_9_bits_uop_robIdx_value(wb2Ctrl_io_in_9_bits_uop_robIdx_value),
    .io_out_3_valid(wb2Ctrl_io_out_3_valid),
    .io_out_3_bits_uop_cf_exceptionVec_2(wb2Ctrl_io_out_3_bits_uop_cf_exceptionVec_2),
    .io_out_3_bits_uop_cf_exceptionVec_3(wb2Ctrl_io_out_3_bits_uop_cf_exceptionVec_3),
    .io_out_3_bits_uop_cf_exceptionVec_8(wb2Ctrl_io_out_3_bits_uop_cf_exceptionVec_8),
    .io_out_3_bits_uop_cf_exceptionVec_9(wb2Ctrl_io_out_3_bits_uop_cf_exceptionVec_9),
    .io_out_3_bits_uop_cf_exceptionVec_11(wb2Ctrl_io_out_3_bits_uop_cf_exceptionVec_11),
    .io_out_3_bits_uop_ctrl_flushPipe(wb2Ctrl_io_out_3_bits_uop_ctrl_flushPipe),
    .io_out_3_bits_uop_robIdx_flag(wb2Ctrl_io_out_3_bits_uop_robIdx_flag),
    .io_out_3_bits_uop_robIdx_value(wb2Ctrl_io_out_3_bits_uop_robIdx_value),
    .io_out_3_bits_fflags(wb2Ctrl_io_out_3_bits_fflags),
    .io_out_4_valid(wb2Ctrl_io_out_4_valid),
    .io_out_4_bits_uop_robIdx_flag(wb2Ctrl_io_out_4_bits_uop_robIdx_flag),
    .io_out_4_bits_uop_robIdx_value(wb2Ctrl_io_out_4_bits_uop_robIdx_value),
    .io_out_4_bits_fflags(wb2Ctrl_io_out_4_bits_fflags),
    .io_out_5_valid(wb2Ctrl_io_out_5_valid),
    .io_out_5_bits_uop_robIdx_flag(wb2Ctrl_io_out_5_bits_uop_robIdx_flag),
    .io_out_5_bits_uop_robIdx_value(wb2Ctrl_io_out_5_bits_uop_robIdx_value),
    .io_out_5_bits_fflags(wb2Ctrl_io_out_5_bits_fflags),
    .io_out_6_valid(wb2Ctrl_io_out_6_valid),
    .io_out_6_bits_uop_cf_exceptionVec_4(wb2Ctrl_io_out_6_bits_uop_cf_exceptionVec_4),
    .io_out_6_bits_uop_cf_exceptionVec_5(wb2Ctrl_io_out_6_bits_uop_cf_exceptionVec_5),
    .io_out_6_bits_uop_cf_exceptionVec_13(wb2Ctrl_io_out_6_bits_uop_cf_exceptionVec_13),
    .io_out_6_bits_uop_cf_trigger_backendHit_0(wb2Ctrl_io_out_6_bits_uop_cf_trigger_backendHit_0),
    .io_out_6_bits_uop_cf_trigger_backendHit_1(wb2Ctrl_io_out_6_bits_uop_cf_trigger_backendHit_1),
    .io_out_6_bits_uop_cf_trigger_backendHit_2(wb2Ctrl_io_out_6_bits_uop_cf_trigger_backendHit_2),
    .io_out_6_bits_uop_cf_trigger_backendHit_3(wb2Ctrl_io_out_6_bits_uop_cf_trigger_backendHit_3),
    .io_out_6_bits_uop_cf_trigger_backendHit_4(wb2Ctrl_io_out_6_bits_uop_cf_trigger_backendHit_4),
    .io_out_6_bits_uop_cf_trigger_backendHit_5(wb2Ctrl_io_out_6_bits_uop_cf_trigger_backendHit_5),
    .io_out_6_bits_uop_ctrl_replayInst(wb2Ctrl_io_out_6_bits_uop_ctrl_replayInst),
    .io_out_6_bits_uop_robIdx_flag(wb2Ctrl_io_out_6_bits_uop_robIdx_flag),
    .io_out_6_bits_uop_robIdx_value(wb2Ctrl_io_out_6_bits_uop_robIdx_value),
    .io_out_7_valid(wb2Ctrl_io_out_7_valid),
    .io_out_7_bits_uop_cf_exceptionVec_4(wb2Ctrl_io_out_7_bits_uop_cf_exceptionVec_4),
    .io_out_7_bits_uop_cf_exceptionVec_5(wb2Ctrl_io_out_7_bits_uop_cf_exceptionVec_5),
    .io_out_7_bits_uop_cf_exceptionVec_13(wb2Ctrl_io_out_7_bits_uop_cf_exceptionVec_13),
    .io_out_7_bits_uop_cf_trigger_backendHit_0(wb2Ctrl_io_out_7_bits_uop_cf_trigger_backendHit_0),
    .io_out_7_bits_uop_cf_trigger_backendHit_1(wb2Ctrl_io_out_7_bits_uop_cf_trigger_backendHit_1),
    .io_out_7_bits_uop_cf_trigger_backendHit_2(wb2Ctrl_io_out_7_bits_uop_cf_trigger_backendHit_2),
    .io_out_7_bits_uop_cf_trigger_backendHit_3(wb2Ctrl_io_out_7_bits_uop_cf_trigger_backendHit_3),
    .io_out_7_bits_uop_cf_trigger_backendHit_4(wb2Ctrl_io_out_7_bits_uop_cf_trigger_backendHit_4),
    .io_out_7_bits_uop_cf_trigger_backendHit_5(wb2Ctrl_io_out_7_bits_uop_cf_trigger_backendHit_5),
    .io_out_7_bits_uop_ctrl_replayInst(wb2Ctrl_io_out_7_bits_uop_ctrl_replayInst),
    .io_out_7_bits_uop_robIdx_flag(wb2Ctrl_io_out_7_bits_uop_robIdx_flag),
    .io_out_7_bits_uop_robIdx_value(wb2Ctrl_io_out_7_bits_uop_robIdx_value),
    .io_out_8_valid(wb2Ctrl_io_out_8_valid),
    .io_out_8_bits_uop_cf_exceptionVec_4(wb2Ctrl_io_out_8_bits_uop_cf_exceptionVec_4),
    .io_out_8_bits_uop_cf_exceptionVec_5(wb2Ctrl_io_out_8_bits_uop_cf_exceptionVec_5),
    .io_out_8_bits_uop_cf_exceptionVec_6(wb2Ctrl_io_out_8_bits_uop_cf_exceptionVec_6),
    .io_out_8_bits_uop_cf_exceptionVec_7(wb2Ctrl_io_out_8_bits_uop_cf_exceptionVec_7),
    .io_out_8_bits_uop_cf_exceptionVec_13(wb2Ctrl_io_out_8_bits_uop_cf_exceptionVec_13),
    .io_out_8_bits_uop_cf_exceptionVec_15(wb2Ctrl_io_out_8_bits_uop_cf_exceptionVec_15),
    .io_out_8_bits_uop_cf_trigger_backendHit_0(wb2Ctrl_io_out_8_bits_uop_cf_trigger_backendHit_0),
    .io_out_8_bits_uop_cf_trigger_backendHit_1(wb2Ctrl_io_out_8_bits_uop_cf_trigger_backendHit_1),
    .io_out_8_bits_uop_cf_trigger_backendHit_2(wb2Ctrl_io_out_8_bits_uop_cf_trigger_backendHit_2),
    .io_out_8_bits_uop_cf_trigger_backendHit_3(wb2Ctrl_io_out_8_bits_uop_cf_trigger_backendHit_3),
    .io_out_8_bits_uop_cf_trigger_backendHit_4(wb2Ctrl_io_out_8_bits_uop_cf_trigger_backendHit_4),
    .io_out_8_bits_uop_cf_trigger_backendHit_5(wb2Ctrl_io_out_8_bits_uop_cf_trigger_backendHit_5),
    .io_out_8_bits_uop_robIdx_flag(wb2Ctrl_io_out_8_bits_uop_robIdx_flag),
    .io_out_8_bits_uop_robIdx_value(wb2Ctrl_io_out_8_bits_uop_robIdx_value),
    .io_out_9_valid(wb2Ctrl_io_out_9_valid),
    .io_out_9_bits_uop_cf_exceptionVec_6(wb2Ctrl_io_out_9_bits_uop_cf_exceptionVec_6),
    .io_out_9_bits_uop_cf_exceptionVec_7(wb2Ctrl_io_out_9_bits_uop_cf_exceptionVec_7),
    .io_out_9_bits_uop_cf_exceptionVec_15(wb2Ctrl_io_out_9_bits_uop_cf_exceptionVec_15),
    .io_out_9_bits_uop_cf_trigger_backendHit_0(wb2Ctrl_io_out_9_bits_uop_cf_trigger_backendHit_0),
    .io_out_9_bits_uop_cf_trigger_backendHit_1(wb2Ctrl_io_out_9_bits_uop_cf_trigger_backendHit_1),
    .io_out_9_bits_uop_cf_trigger_backendHit_4(wb2Ctrl_io_out_9_bits_uop_cf_trigger_backendHit_4),
    .io_out_9_bits_uop_robIdx_flag(wb2Ctrl_io_out_9_bits_uop_robIdx_flag),
    .io_out_9_bits_uop_robIdx_value(wb2Ctrl_io_out_9_bits_uop_robIdx_value)
  );
  CtrlBlock ctrlBlock ( // @[XSCore.scala 222:29]
    .clock(ctrlBlock_clock),
    .reset(ctrlBlock_reset),
    .io_hartId(ctrlBlock_io_hartId),
    .io_cpu_halt(ctrlBlock_io_cpu_halt),
    .io_frontend_cfVec_0_ready(ctrlBlock_io_frontend_cfVec_0_ready),
    .io_frontend_cfVec_0_valid(ctrlBlock_io_frontend_cfVec_0_valid),
    .io_frontend_cfVec_0_bits_instr(ctrlBlock_io_frontend_cfVec_0_bits_instr),
    .io_frontend_cfVec_0_bits_foldpc(ctrlBlock_io_frontend_cfVec_0_bits_foldpc),
    .io_frontend_cfVec_0_bits_exceptionVec_1(ctrlBlock_io_frontend_cfVec_0_bits_exceptionVec_1),
    .io_frontend_cfVec_0_bits_exceptionVec_12(ctrlBlock_io_frontend_cfVec_0_bits_exceptionVec_12),
    .io_frontend_cfVec_0_bits_trigger_frontendHit_0(ctrlBlock_io_frontend_cfVec_0_bits_trigger_frontendHit_0),
    .io_frontend_cfVec_0_bits_trigger_frontendHit_1(ctrlBlock_io_frontend_cfVec_0_bits_trigger_frontendHit_1),
    .io_frontend_cfVec_0_bits_trigger_frontendHit_2(ctrlBlock_io_frontend_cfVec_0_bits_trigger_frontendHit_2),
    .io_frontend_cfVec_0_bits_trigger_frontendHit_3(ctrlBlock_io_frontend_cfVec_0_bits_trigger_frontendHit_3),
    .io_frontend_cfVec_0_bits_trigger_backendEn_0(ctrlBlock_io_frontend_cfVec_0_bits_trigger_backendEn_0),
    .io_frontend_cfVec_0_bits_trigger_backendEn_1(ctrlBlock_io_frontend_cfVec_0_bits_trigger_backendEn_1),
    .io_frontend_cfVec_0_bits_pd_isRVC(ctrlBlock_io_frontend_cfVec_0_bits_pd_isRVC),
    .io_frontend_cfVec_0_bits_pd_brType(ctrlBlock_io_frontend_cfVec_0_bits_pd_brType),
    .io_frontend_cfVec_0_bits_pd_isCall(ctrlBlock_io_frontend_cfVec_0_bits_pd_isCall),
    .io_frontend_cfVec_0_bits_pd_isRet(ctrlBlock_io_frontend_cfVec_0_bits_pd_isRet),
    .io_frontend_cfVec_0_bits_pred_taken(ctrlBlock_io_frontend_cfVec_0_bits_pred_taken),
    .io_frontend_cfVec_0_bits_crossPageIPFFix(ctrlBlock_io_frontend_cfVec_0_bits_crossPageIPFFix),
    .io_frontend_cfVec_0_bits_ftqPtr_flag(ctrlBlock_io_frontend_cfVec_0_bits_ftqPtr_flag),
    .io_frontend_cfVec_0_bits_ftqPtr_value(ctrlBlock_io_frontend_cfVec_0_bits_ftqPtr_value),
    .io_frontend_cfVec_0_bits_ftqOffset(ctrlBlock_io_frontend_cfVec_0_bits_ftqOffset),
    .io_frontend_cfVec_1_ready(ctrlBlock_io_frontend_cfVec_1_ready),
    .io_frontend_cfVec_1_valid(ctrlBlock_io_frontend_cfVec_1_valid),
    .io_frontend_cfVec_1_bits_instr(ctrlBlock_io_frontend_cfVec_1_bits_instr),
    .io_frontend_cfVec_1_bits_foldpc(ctrlBlock_io_frontend_cfVec_1_bits_foldpc),
    .io_frontend_cfVec_1_bits_exceptionVec_1(ctrlBlock_io_frontend_cfVec_1_bits_exceptionVec_1),
    .io_frontend_cfVec_1_bits_exceptionVec_12(ctrlBlock_io_frontend_cfVec_1_bits_exceptionVec_12),
    .io_frontend_cfVec_1_bits_trigger_frontendHit_0(ctrlBlock_io_frontend_cfVec_1_bits_trigger_frontendHit_0),
    .io_frontend_cfVec_1_bits_trigger_frontendHit_1(ctrlBlock_io_frontend_cfVec_1_bits_trigger_frontendHit_1),
    .io_frontend_cfVec_1_bits_trigger_frontendHit_2(ctrlBlock_io_frontend_cfVec_1_bits_trigger_frontendHit_2),
    .io_frontend_cfVec_1_bits_trigger_frontendHit_3(ctrlBlock_io_frontend_cfVec_1_bits_trigger_frontendHit_3),
    .io_frontend_cfVec_1_bits_trigger_backendEn_0(ctrlBlock_io_frontend_cfVec_1_bits_trigger_backendEn_0),
    .io_frontend_cfVec_1_bits_trigger_backendEn_1(ctrlBlock_io_frontend_cfVec_1_bits_trigger_backendEn_1),
    .io_frontend_cfVec_1_bits_pd_isRVC(ctrlBlock_io_frontend_cfVec_1_bits_pd_isRVC),
    .io_frontend_cfVec_1_bits_pd_brType(ctrlBlock_io_frontend_cfVec_1_bits_pd_brType),
    .io_frontend_cfVec_1_bits_pd_isCall(ctrlBlock_io_frontend_cfVec_1_bits_pd_isCall),
    .io_frontend_cfVec_1_bits_pd_isRet(ctrlBlock_io_frontend_cfVec_1_bits_pd_isRet),
    .io_frontend_cfVec_1_bits_pred_taken(ctrlBlock_io_frontend_cfVec_1_bits_pred_taken),
    .io_frontend_cfVec_1_bits_crossPageIPFFix(ctrlBlock_io_frontend_cfVec_1_bits_crossPageIPFFix),
    .io_frontend_cfVec_1_bits_ftqPtr_flag(ctrlBlock_io_frontend_cfVec_1_bits_ftqPtr_flag),
    .io_frontend_cfVec_1_bits_ftqPtr_value(ctrlBlock_io_frontend_cfVec_1_bits_ftqPtr_value),
    .io_frontend_cfVec_1_bits_ftqOffset(ctrlBlock_io_frontend_cfVec_1_bits_ftqOffset),
    .io_frontend_stallReason_backReason_valid(ctrlBlock_io_frontend_stallReason_backReason_valid),
    .io_frontend_stallReason_backReason_bits(ctrlBlock_io_frontend_stallReason_backReason_bits),
    .io_frontend_fromFtq_pc_mem_wen(ctrlBlock_io_frontend_fromFtq_pc_mem_wen),
    .io_frontend_fromFtq_pc_mem_waddr(ctrlBlock_io_frontend_fromFtq_pc_mem_waddr),
    .io_frontend_fromFtq_pc_mem_wdata_startAddr(ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_startAddr),
    .io_frontend_fromFtq_pc_mem_wdata_nextLineAddr(ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_nextLineAddr),
    .io_frontend_fromFtq_pc_mem_wdata_isNextMask_0(ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_0),
    .io_frontend_fromFtq_pc_mem_wdata_isNextMask_1(ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_1),
    .io_frontend_fromFtq_pc_mem_wdata_isNextMask_2(ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_2),
    .io_frontend_fromFtq_pc_mem_wdata_isNextMask_3(ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_3),
    .io_frontend_fromFtq_pc_mem_wdata_isNextMask_4(ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_4),
    .io_frontend_fromFtq_pc_mem_wdata_isNextMask_5(ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_5),
    .io_frontend_fromFtq_pc_mem_wdata_isNextMask_6(ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_6),
    .io_frontend_fromFtq_pc_mem_wdata_isNextMask_7(ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_7),
    .io_frontend_fromFtq_newest_entry_target(ctrlBlock_io_frontend_fromFtq_newest_entry_target),
    .io_frontend_fromFtq_newest_entry_ptr_flag(ctrlBlock_io_frontend_fromFtq_newest_entry_ptr_flag),
    .io_frontend_fromFtq_newest_entry_ptr_value(ctrlBlock_io_frontend_fromFtq_newest_entry_ptr_value),
    .io_frontend_toFtq_rob_commits_0_valid(ctrlBlock_io_frontend_toFtq_rob_commits_0_valid),
    .io_frontend_toFtq_rob_commits_0_bits_commitType(ctrlBlock_io_frontend_toFtq_rob_commits_0_bits_commitType),
    .io_frontend_toFtq_rob_commits_0_bits_ftqIdx_flag(ctrlBlock_io_frontend_toFtq_rob_commits_0_bits_ftqIdx_flag),
    .io_frontend_toFtq_rob_commits_0_bits_ftqIdx_value(ctrlBlock_io_frontend_toFtq_rob_commits_0_bits_ftqIdx_value),
    .io_frontend_toFtq_rob_commits_0_bits_ftqOffset(ctrlBlock_io_frontend_toFtq_rob_commits_0_bits_ftqOffset),
    .io_frontend_toFtq_rob_commits_1_valid(ctrlBlock_io_frontend_toFtq_rob_commits_1_valid),
    .io_frontend_toFtq_rob_commits_1_bits_commitType(ctrlBlock_io_frontend_toFtq_rob_commits_1_bits_commitType),
    .io_frontend_toFtq_rob_commits_1_bits_ftqIdx_flag(ctrlBlock_io_frontend_toFtq_rob_commits_1_bits_ftqIdx_flag),
    .io_frontend_toFtq_rob_commits_1_bits_ftqIdx_value(ctrlBlock_io_frontend_toFtq_rob_commits_1_bits_ftqIdx_value),
    .io_frontend_toFtq_rob_commits_1_bits_ftqOffset(ctrlBlock_io_frontend_toFtq_rob_commits_1_bits_ftqOffset),
    .io_frontend_toFtq_redirect_valid(ctrlBlock_io_frontend_toFtq_redirect_valid),
    .io_frontend_toFtq_redirect_bits_ftqIdx_flag(ctrlBlock_io_frontend_toFtq_redirect_bits_ftqIdx_flag),
    .io_frontend_toFtq_redirect_bits_ftqIdx_value(ctrlBlock_io_frontend_toFtq_redirect_bits_ftqIdx_value),
    .io_frontend_toFtq_redirect_bits_ftqOffset(ctrlBlock_io_frontend_toFtq_redirect_bits_ftqOffset),
    .io_frontend_toFtq_redirect_bits_level(ctrlBlock_io_frontend_toFtq_redirect_bits_level),
    .io_frontend_toFtq_redirect_bits_cfiUpdate_pc(ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_pc),
    .io_frontend_toFtq_redirect_bits_cfiUpdate_pd_isRVC(ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_pd_isRVC),
    .io_frontend_toFtq_redirect_bits_cfiUpdate_pd_brType(ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_pd_brType),
    .io_frontend_toFtq_redirect_bits_cfiUpdate_pd_isCall(ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_pd_isCall),
    .io_frontend_toFtq_redirect_bits_cfiUpdate_pd_isRet(ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_pd_isRet),
    .io_frontend_toFtq_redirect_bits_cfiUpdate_target(ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_target),
    .io_frontend_toFtq_redirect_bits_cfiUpdate_taken(ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_taken),
    .io_frontend_toFtq_redirect_bits_cfiUpdate_isMisPred(ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_isMisPred),
    .io_frontend_toFtq_redirect_bits_debugIsCtrl(ctrlBlock_io_frontend_toFtq_redirect_bits_debugIsCtrl),
    .io_frontend_toFtq_redirect_bits_debugIsMemVio(ctrlBlock_io_frontend_toFtq_redirect_bits_debugIsMemVio),
    .io_allocPregs_0_isInt(ctrlBlock_io_allocPregs_0_isInt),
    .io_allocPregs_0_isFp(ctrlBlock_io_allocPregs_0_isFp),
    .io_allocPregs_0_preg(ctrlBlock_io_allocPregs_0_preg),
    .io_allocPregs_1_isInt(ctrlBlock_io_allocPregs_1_isInt),
    .io_allocPregs_1_isFp(ctrlBlock_io_allocPregs_1_isFp),
    .io_allocPregs_1_preg(ctrlBlock_io_allocPregs_1_preg),
    .io_dispatch_0_valid(ctrlBlock_io_dispatch_0_valid),
    .io_dispatch_0_bits_cf_trigger_backendEn_0(ctrlBlock_io_dispatch_0_bits_cf_trigger_backendEn_0),
    .io_dispatch_0_bits_cf_trigger_backendEn_1(ctrlBlock_io_dispatch_0_bits_cf_trigger_backendEn_1),
    .io_dispatch_0_bits_cf_pd_isRVC(ctrlBlock_io_dispatch_0_bits_cf_pd_isRVC),
    .io_dispatch_0_bits_cf_pd_brType(ctrlBlock_io_dispatch_0_bits_cf_pd_brType),
    .io_dispatch_0_bits_cf_pd_isCall(ctrlBlock_io_dispatch_0_bits_cf_pd_isCall),
    .io_dispatch_0_bits_cf_pd_isRet(ctrlBlock_io_dispatch_0_bits_cf_pd_isRet),
    .io_dispatch_0_bits_cf_pred_taken(ctrlBlock_io_dispatch_0_bits_cf_pred_taken),
    .io_dispatch_0_bits_cf_storeSetHit(ctrlBlock_io_dispatch_0_bits_cf_storeSetHit),
    .io_dispatch_0_bits_cf_loadWaitStrict(ctrlBlock_io_dispatch_0_bits_cf_loadWaitStrict),
    .io_dispatch_0_bits_cf_ssid(ctrlBlock_io_dispatch_0_bits_cf_ssid),
    .io_dispatch_0_bits_cf_ftqPtr_flag(ctrlBlock_io_dispatch_0_bits_cf_ftqPtr_flag),
    .io_dispatch_0_bits_cf_ftqPtr_value(ctrlBlock_io_dispatch_0_bits_cf_ftqPtr_value),
    .io_dispatch_0_bits_cf_ftqOffset(ctrlBlock_io_dispatch_0_bits_cf_ftqOffset),
    .io_dispatch_0_bits_ctrl_srcType_0(ctrlBlock_io_dispatch_0_bits_ctrl_srcType_0),
    .io_dispatch_0_bits_ctrl_srcType_1(ctrlBlock_io_dispatch_0_bits_ctrl_srcType_1),
    .io_dispatch_0_bits_ctrl_fuType(ctrlBlock_io_dispatch_0_bits_ctrl_fuType),
    .io_dispatch_0_bits_ctrl_fuOpType(ctrlBlock_io_dispatch_0_bits_ctrl_fuOpType),
    .io_dispatch_0_bits_ctrl_rfWen(ctrlBlock_io_dispatch_0_bits_ctrl_rfWen),
    .io_dispatch_0_bits_ctrl_fpWen(ctrlBlock_io_dispatch_0_bits_ctrl_fpWen),
    .io_dispatch_0_bits_ctrl_selImm(ctrlBlock_io_dispatch_0_bits_ctrl_selImm),
    .io_dispatch_0_bits_ctrl_imm(ctrlBlock_io_dispatch_0_bits_ctrl_imm),
    .io_dispatch_0_bits_ctrl_fpu_isAddSub(ctrlBlock_io_dispatch_0_bits_ctrl_fpu_isAddSub),
    .io_dispatch_0_bits_ctrl_fpu_typeTagIn(ctrlBlock_io_dispatch_0_bits_ctrl_fpu_typeTagIn),
    .io_dispatch_0_bits_ctrl_fpu_typeTagOut(ctrlBlock_io_dispatch_0_bits_ctrl_fpu_typeTagOut),
    .io_dispatch_0_bits_ctrl_fpu_fromInt(ctrlBlock_io_dispatch_0_bits_ctrl_fpu_fromInt),
    .io_dispatch_0_bits_ctrl_fpu_wflags(ctrlBlock_io_dispatch_0_bits_ctrl_fpu_wflags),
    .io_dispatch_0_bits_ctrl_fpu_fpWen(ctrlBlock_io_dispatch_0_bits_ctrl_fpu_fpWen),
    .io_dispatch_0_bits_ctrl_fpu_fmaCmd(ctrlBlock_io_dispatch_0_bits_ctrl_fpu_fmaCmd),
    .io_dispatch_0_bits_ctrl_fpu_div(ctrlBlock_io_dispatch_0_bits_ctrl_fpu_div),
    .io_dispatch_0_bits_ctrl_fpu_sqrt(ctrlBlock_io_dispatch_0_bits_ctrl_fpu_sqrt),
    .io_dispatch_0_bits_ctrl_fpu_fcvt(ctrlBlock_io_dispatch_0_bits_ctrl_fpu_fcvt),
    .io_dispatch_0_bits_ctrl_fpu_typ(ctrlBlock_io_dispatch_0_bits_ctrl_fpu_typ),
    .io_dispatch_0_bits_ctrl_fpu_fmt(ctrlBlock_io_dispatch_0_bits_ctrl_fpu_fmt),
    .io_dispatch_0_bits_ctrl_fpu_ren3(ctrlBlock_io_dispatch_0_bits_ctrl_fpu_ren3),
    .io_dispatch_0_bits_ctrl_fpu_rm(ctrlBlock_io_dispatch_0_bits_ctrl_fpu_rm),
    .io_dispatch_0_bits_psrc_0(ctrlBlock_io_dispatch_0_bits_psrc_0),
    .io_dispatch_0_bits_psrc_1(ctrlBlock_io_dispatch_0_bits_psrc_1),
    .io_dispatch_0_bits_pdest(ctrlBlock_io_dispatch_0_bits_pdest),
    .io_dispatch_0_bits_robIdx_flag(ctrlBlock_io_dispatch_0_bits_robIdx_flag),
    .io_dispatch_0_bits_robIdx_value(ctrlBlock_io_dispatch_0_bits_robIdx_value),
    .io_dispatch_0_bits_lqIdx_flag(ctrlBlock_io_dispatch_0_bits_lqIdx_flag),
    .io_dispatch_0_bits_lqIdx_value(ctrlBlock_io_dispatch_0_bits_lqIdx_value),
    .io_dispatch_0_bits_sqIdx_flag(ctrlBlock_io_dispatch_0_bits_sqIdx_flag),
    .io_dispatch_0_bits_sqIdx_value(ctrlBlock_io_dispatch_0_bits_sqIdx_value),
    .io_dispatch_1_valid(ctrlBlock_io_dispatch_1_valid),
    .io_dispatch_1_bits_cf_trigger_backendEn_0(ctrlBlock_io_dispatch_1_bits_cf_trigger_backendEn_0),
    .io_dispatch_1_bits_cf_trigger_backendEn_1(ctrlBlock_io_dispatch_1_bits_cf_trigger_backendEn_1),
    .io_dispatch_1_bits_cf_pd_isRVC(ctrlBlock_io_dispatch_1_bits_cf_pd_isRVC),
    .io_dispatch_1_bits_cf_pd_brType(ctrlBlock_io_dispatch_1_bits_cf_pd_brType),
    .io_dispatch_1_bits_cf_pd_isCall(ctrlBlock_io_dispatch_1_bits_cf_pd_isCall),
    .io_dispatch_1_bits_cf_pd_isRet(ctrlBlock_io_dispatch_1_bits_cf_pd_isRet),
    .io_dispatch_1_bits_cf_pred_taken(ctrlBlock_io_dispatch_1_bits_cf_pred_taken),
    .io_dispatch_1_bits_cf_storeSetHit(ctrlBlock_io_dispatch_1_bits_cf_storeSetHit),
    .io_dispatch_1_bits_cf_loadWaitStrict(ctrlBlock_io_dispatch_1_bits_cf_loadWaitStrict),
    .io_dispatch_1_bits_cf_ssid(ctrlBlock_io_dispatch_1_bits_cf_ssid),
    .io_dispatch_1_bits_cf_ftqPtr_flag(ctrlBlock_io_dispatch_1_bits_cf_ftqPtr_flag),
    .io_dispatch_1_bits_cf_ftqPtr_value(ctrlBlock_io_dispatch_1_bits_cf_ftqPtr_value),
    .io_dispatch_1_bits_cf_ftqOffset(ctrlBlock_io_dispatch_1_bits_cf_ftqOffset),
    .io_dispatch_1_bits_ctrl_srcType_0(ctrlBlock_io_dispatch_1_bits_ctrl_srcType_0),
    .io_dispatch_1_bits_ctrl_srcType_1(ctrlBlock_io_dispatch_1_bits_ctrl_srcType_1),
    .io_dispatch_1_bits_ctrl_fuType(ctrlBlock_io_dispatch_1_bits_ctrl_fuType),
    .io_dispatch_1_bits_ctrl_fuOpType(ctrlBlock_io_dispatch_1_bits_ctrl_fuOpType),
    .io_dispatch_1_bits_ctrl_rfWen(ctrlBlock_io_dispatch_1_bits_ctrl_rfWen),
    .io_dispatch_1_bits_ctrl_fpWen(ctrlBlock_io_dispatch_1_bits_ctrl_fpWen),
    .io_dispatch_1_bits_ctrl_selImm(ctrlBlock_io_dispatch_1_bits_ctrl_selImm),
    .io_dispatch_1_bits_ctrl_imm(ctrlBlock_io_dispatch_1_bits_ctrl_imm),
    .io_dispatch_1_bits_psrc_0(ctrlBlock_io_dispatch_1_bits_psrc_0),
    .io_dispatch_1_bits_psrc_1(ctrlBlock_io_dispatch_1_bits_psrc_1),
    .io_dispatch_1_bits_pdest(ctrlBlock_io_dispatch_1_bits_pdest),
    .io_dispatch_1_bits_robIdx_flag(ctrlBlock_io_dispatch_1_bits_robIdx_flag),
    .io_dispatch_1_bits_robIdx_value(ctrlBlock_io_dispatch_1_bits_robIdx_value),
    .io_dispatch_1_bits_lqIdx_flag(ctrlBlock_io_dispatch_1_bits_lqIdx_flag),
    .io_dispatch_1_bits_lqIdx_value(ctrlBlock_io_dispatch_1_bits_lqIdx_value),
    .io_dispatch_1_bits_sqIdx_flag(ctrlBlock_io_dispatch_1_bits_sqIdx_flag),
    .io_dispatch_1_bits_sqIdx_value(ctrlBlock_io_dispatch_1_bits_sqIdx_value),
    .io_dispatch_4_valid(ctrlBlock_io_dispatch_4_valid),
    .io_dispatch_4_bits_cf_trigger_backendEn_0(ctrlBlock_io_dispatch_4_bits_cf_trigger_backendEn_0),
    .io_dispatch_4_bits_cf_trigger_backendEn_1(ctrlBlock_io_dispatch_4_bits_cf_trigger_backendEn_1),
    .io_dispatch_4_bits_cf_pd_isRVC(ctrlBlock_io_dispatch_4_bits_cf_pd_isRVC),
    .io_dispatch_4_bits_cf_pd_brType(ctrlBlock_io_dispatch_4_bits_cf_pd_brType),
    .io_dispatch_4_bits_cf_pd_isCall(ctrlBlock_io_dispatch_4_bits_cf_pd_isCall),
    .io_dispatch_4_bits_cf_pd_isRet(ctrlBlock_io_dispatch_4_bits_cf_pd_isRet),
    .io_dispatch_4_bits_cf_pred_taken(ctrlBlock_io_dispatch_4_bits_cf_pred_taken),
    .io_dispatch_4_bits_cf_storeSetHit(ctrlBlock_io_dispatch_4_bits_cf_storeSetHit),
    .io_dispatch_4_bits_cf_loadWaitStrict(ctrlBlock_io_dispatch_4_bits_cf_loadWaitStrict),
    .io_dispatch_4_bits_cf_ssid(ctrlBlock_io_dispatch_4_bits_cf_ssid),
    .io_dispatch_4_bits_cf_ftqPtr_flag(ctrlBlock_io_dispatch_4_bits_cf_ftqPtr_flag),
    .io_dispatch_4_bits_cf_ftqPtr_value(ctrlBlock_io_dispatch_4_bits_cf_ftqPtr_value),
    .io_dispatch_4_bits_cf_ftqOffset(ctrlBlock_io_dispatch_4_bits_cf_ftqOffset),
    .io_dispatch_4_bits_ctrl_srcType_0(ctrlBlock_io_dispatch_4_bits_ctrl_srcType_0),
    .io_dispatch_4_bits_ctrl_srcType_1(ctrlBlock_io_dispatch_4_bits_ctrl_srcType_1),
    .io_dispatch_4_bits_ctrl_fuType(ctrlBlock_io_dispatch_4_bits_ctrl_fuType),
    .io_dispatch_4_bits_ctrl_fuOpType(ctrlBlock_io_dispatch_4_bits_ctrl_fuOpType),
    .io_dispatch_4_bits_ctrl_rfWen(ctrlBlock_io_dispatch_4_bits_ctrl_rfWen),
    .io_dispatch_4_bits_ctrl_fpWen(ctrlBlock_io_dispatch_4_bits_ctrl_fpWen),
    .io_dispatch_4_bits_ctrl_imm(ctrlBlock_io_dispatch_4_bits_ctrl_imm),
    .io_dispatch_4_bits_psrc_0(ctrlBlock_io_dispatch_4_bits_psrc_0),
    .io_dispatch_4_bits_psrc_1(ctrlBlock_io_dispatch_4_bits_psrc_1),
    .io_dispatch_4_bits_pdest(ctrlBlock_io_dispatch_4_bits_pdest),
    .io_dispatch_4_bits_robIdx_flag(ctrlBlock_io_dispatch_4_bits_robIdx_flag),
    .io_dispatch_4_bits_robIdx_value(ctrlBlock_io_dispatch_4_bits_robIdx_value),
    .io_dispatch_5_valid(ctrlBlock_io_dispatch_5_valid),
    .io_dispatch_5_bits_cf_trigger_backendEn_0(ctrlBlock_io_dispatch_5_bits_cf_trigger_backendEn_0),
    .io_dispatch_5_bits_cf_trigger_backendEn_1(ctrlBlock_io_dispatch_5_bits_cf_trigger_backendEn_1),
    .io_dispatch_5_bits_cf_pd_isRVC(ctrlBlock_io_dispatch_5_bits_cf_pd_isRVC),
    .io_dispatch_5_bits_cf_pd_brType(ctrlBlock_io_dispatch_5_bits_cf_pd_brType),
    .io_dispatch_5_bits_cf_pd_isCall(ctrlBlock_io_dispatch_5_bits_cf_pd_isCall),
    .io_dispatch_5_bits_cf_pd_isRet(ctrlBlock_io_dispatch_5_bits_cf_pd_isRet),
    .io_dispatch_5_bits_cf_pred_taken(ctrlBlock_io_dispatch_5_bits_cf_pred_taken),
    .io_dispatch_5_bits_cf_storeSetHit(ctrlBlock_io_dispatch_5_bits_cf_storeSetHit),
    .io_dispatch_5_bits_cf_loadWaitStrict(ctrlBlock_io_dispatch_5_bits_cf_loadWaitStrict),
    .io_dispatch_5_bits_cf_ssid(ctrlBlock_io_dispatch_5_bits_cf_ssid),
    .io_dispatch_5_bits_cf_ftqPtr_flag(ctrlBlock_io_dispatch_5_bits_cf_ftqPtr_flag),
    .io_dispatch_5_bits_cf_ftqPtr_value(ctrlBlock_io_dispatch_5_bits_cf_ftqPtr_value),
    .io_dispatch_5_bits_cf_ftqOffset(ctrlBlock_io_dispatch_5_bits_cf_ftqOffset),
    .io_dispatch_5_bits_ctrl_srcType_0(ctrlBlock_io_dispatch_5_bits_ctrl_srcType_0),
    .io_dispatch_5_bits_ctrl_srcType_1(ctrlBlock_io_dispatch_5_bits_ctrl_srcType_1),
    .io_dispatch_5_bits_ctrl_fuType(ctrlBlock_io_dispatch_5_bits_ctrl_fuType),
    .io_dispatch_5_bits_ctrl_fuOpType(ctrlBlock_io_dispatch_5_bits_ctrl_fuOpType),
    .io_dispatch_5_bits_ctrl_rfWen(ctrlBlock_io_dispatch_5_bits_ctrl_rfWen),
    .io_dispatch_5_bits_ctrl_fpWen(ctrlBlock_io_dispatch_5_bits_ctrl_fpWen),
    .io_dispatch_5_bits_ctrl_imm(ctrlBlock_io_dispatch_5_bits_ctrl_imm),
    .io_dispatch_5_bits_psrc_0(ctrlBlock_io_dispatch_5_bits_psrc_0),
    .io_dispatch_5_bits_psrc_1(ctrlBlock_io_dispatch_5_bits_psrc_1),
    .io_dispatch_5_bits_pdest(ctrlBlock_io_dispatch_5_bits_pdest),
    .io_dispatch_5_bits_robIdx_flag(ctrlBlock_io_dispatch_5_bits_robIdx_flag),
    .io_dispatch_5_bits_robIdx_value(ctrlBlock_io_dispatch_5_bits_robIdx_value),
    .io_dispatch_6_valid(ctrlBlock_io_dispatch_6_valid),
    .io_dispatch_6_bits_cf_trigger_backendEn_0(ctrlBlock_io_dispatch_6_bits_cf_trigger_backendEn_0),
    .io_dispatch_6_bits_cf_trigger_backendEn_1(ctrlBlock_io_dispatch_6_bits_cf_trigger_backendEn_1),
    .io_dispatch_6_bits_cf_pd_isRVC(ctrlBlock_io_dispatch_6_bits_cf_pd_isRVC),
    .io_dispatch_6_bits_cf_pd_brType(ctrlBlock_io_dispatch_6_bits_cf_pd_brType),
    .io_dispatch_6_bits_cf_pd_isCall(ctrlBlock_io_dispatch_6_bits_cf_pd_isCall),
    .io_dispatch_6_bits_cf_pd_isRet(ctrlBlock_io_dispatch_6_bits_cf_pd_isRet),
    .io_dispatch_6_bits_cf_pred_taken(ctrlBlock_io_dispatch_6_bits_cf_pred_taken),
    .io_dispatch_6_bits_cf_storeSetHit(ctrlBlock_io_dispatch_6_bits_cf_storeSetHit),
    .io_dispatch_6_bits_cf_loadWaitStrict(ctrlBlock_io_dispatch_6_bits_cf_loadWaitStrict),
    .io_dispatch_6_bits_cf_ssid(ctrlBlock_io_dispatch_6_bits_cf_ssid),
    .io_dispatch_6_bits_cf_ftqPtr_flag(ctrlBlock_io_dispatch_6_bits_cf_ftqPtr_flag),
    .io_dispatch_6_bits_cf_ftqPtr_value(ctrlBlock_io_dispatch_6_bits_cf_ftqPtr_value),
    .io_dispatch_6_bits_cf_ftqOffset(ctrlBlock_io_dispatch_6_bits_cf_ftqOffset),
    .io_dispatch_6_bits_ctrl_srcType_0(ctrlBlock_io_dispatch_6_bits_ctrl_srcType_0),
    .io_dispatch_6_bits_ctrl_srcType_1(ctrlBlock_io_dispatch_6_bits_ctrl_srcType_1),
    .io_dispatch_6_bits_ctrl_fuType(ctrlBlock_io_dispatch_6_bits_ctrl_fuType),
    .io_dispatch_6_bits_ctrl_fuOpType(ctrlBlock_io_dispatch_6_bits_ctrl_fuOpType),
    .io_dispatch_6_bits_ctrl_rfWen(ctrlBlock_io_dispatch_6_bits_ctrl_rfWen),
    .io_dispatch_6_bits_ctrl_fpWen(ctrlBlock_io_dispatch_6_bits_ctrl_fpWen),
    .io_dispatch_6_bits_ctrl_imm(ctrlBlock_io_dispatch_6_bits_ctrl_imm),
    .io_dispatch_6_bits_psrc_0(ctrlBlock_io_dispatch_6_bits_psrc_0),
    .io_dispatch_6_bits_psrc_1(ctrlBlock_io_dispatch_6_bits_psrc_1),
    .io_dispatch_6_bits_pdest(ctrlBlock_io_dispatch_6_bits_pdest),
    .io_dispatch_6_bits_robIdx_flag(ctrlBlock_io_dispatch_6_bits_robIdx_flag),
    .io_dispatch_6_bits_robIdx_value(ctrlBlock_io_dispatch_6_bits_robIdx_value),
    .io_dispatch_7_valid(ctrlBlock_io_dispatch_7_valid),
    .io_dispatch_7_bits_cf_trigger_backendEn_0(ctrlBlock_io_dispatch_7_bits_cf_trigger_backendEn_0),
    .io_dispatch_7_bits_cf_trigger_backendEn_1(ctrlBlock_io_dispatch_7_bits_cf_trigger_backendEn_1),
    .io_dispatch_7_bits_cf_pd_isRVC(ctrlBlock_io_dispatch_7_bits_cf_pd_isRVC),
    .io_dispatch_7_bits_cf_pd_brType(ctrlBlock_io_dispatch_7_bits_cf_pd_brType),
    .io_dispatch_7_bits_cf_pd_isCall(ctrlBlock_io_dispatch_7_bits_cf_pd_isCall),
    .io_dispatch_7_bits_cf_pd_isRet(ctrlBlock_io_dispatch_7_bits_cf_pd_isRet),
    .io_dispatch_7_bits_cf_pred_taken(ctrlBlock_io_dispatch_7_bits_cf_pred_taken),
    .io_dispatch_7_bits_cf_storeSetHit(ctrlBlock_io_dispatch_7_bits_cf_storeSetHit),
    .io_dispatch_7_bits_cf_loadWaitStrict(ctrlBlock_io_dispatch_7_bits_cf_loadWaitStrict),
    .io_dispatch_7_bits_cf_ssid(ctrlBlock_io_dispatch_7_bits_cf_ssid),
    .io_dispatch_7_bits_cf_ftqPtr_flag(ctrlBlock_io_dispatch_7_bits_cf_ftqPtr_flag),
    .io_dispatch_7_bits_cf_ftqPtr_value(ctrlBlock_io_dispatch_7_bits_cf_ftqPtr_value),
    .io_dispatch_7_bits_cf_ftqOffset(ctrlBlock_io_dispatch_7_bits_cf_ftqOffset),
    .io_dispatch_7_bits_ctrl_srcType_0(ctrlBlock_io_dispatch_7_bits_ctrl_srcType_0),
    .io_dispatch_7_bits_ctrl_srcType_1(ctrlBlock_io_dispatch_7_bits_ctrl_srcType_1),
    .io_dispatch_7_bits_ctrl_fuType(ctrlBlock_io_dispatch_7_bits_ctrl_fuType),
    .io_dispatch_7_bits_ctrl_fuOpType(ctrlBlock_io_dispatch_7_bits_ctrl_fuOpType),
    .io_dispatch_7_bits_ctrl_rfWen(ctrlBlock_io_dispatch_7_bits_ctrl_rfWen),
    .io_dispatch_7_bits_ctrl_fpWen(ctrlBlock_io_dispatch_7_bits_ctrl_fpWen),
    .io_dispatch_7_bits_ctrl_imm(ctrlBlock_io_dispatch_7_bits_ctrl_imm),
    .io_dispatch_7_bits_psrc_0(ctrlBlock_io_dispatch_7_bits_psrc_0),
    .io_dispatch_7_bits_psrc_1(ctrlBlock_io_dispatch_7_bits_psrc_1),
    .io_dispatch_7_bits_pdest(ctrlBlock_io_dispatch_7_bits_pdest),
    .io_dispatch_7_bits_robIdx_flag(ctrlBlock_io_dispatch_7_bits_robIdx_flag),
    .io_dispatch_7_bits_robIdx_value(ctrlBlock_io_dispatch_7_bits_robIdx_value),
    .io_dispatch_8_valid(ctrlBlock_io_dispatch_8_valid),
    .io_dispatch_8_bits_cf_pd_isRVC(ctrlBlock_io_dispatch_8_bits_cf_pd_isRVC),
    .io_dispatch_8_bits_cf_pd_brType(ctrlBlock_io_dispatch_8_bits_cf_pd_brType),
    .io_dispatch_8_bits_cf_pd_isCall(ctrlBlock_io_dispatch_8_bits_cf_pd_isCall),
    .io_dispatch_8_bits_cf_pd_isRet(ctrlBlock_io_dispatch_8_bits_cf_pd_isRet),
    .io_dispatch_8_bits_cf_pred_taken(ctrlBlock_io_dispatch_8_bits_cf_pred_taken),
    .io_dispatch_8_bits_cf_ftqPtr_flag(ctrlBlock_io_dispatch_8_bits_cf_ftqPtr_flag),
    .io_dispatch_8_bits_cf_ftqPtr_value(ctrlBlock_io_dispatch_8_bits_cf_ftqPtr_value),
    .io_dispatch_8_bits_cf_ftqOffset(ctrlBlock_io_dispatch_8_bits_cf_ftqOffset),
    .io_dispatch_8_bits_ctrl_srcType_0(ctrlBlock_io_dispatch_8_bits_ctrl_srcType_0),
    .io_dispatch_8_bits_ctrl_srcType_1(ctrlBlock_io_dispatch_8_bits_ctrl_srcType_1),
    .io_dispatch_8_bits_ctrl_srcType_2(ctrlBlock_io_dispatch_8_bits_ctrl_srcType_2),
    .io_dispatch_8_bits_ctrl_fuType(ctrlBlock_io_dispatch_8_bits_ctrl_fuType),
    .io_dispatch_8_bits_ctrl_fuOpType(ctrlBlock_io_dispatch_8_bits_ctrl_fuOpType),
    .io_dispatch_8_bits_ctrl_rfWen(ctrlBlock_io_dispatch_8_bits_ctrl_rfWen),
    .io_dispatch_8_bits_ctrl_fpWen(ctrlBlock_io_dispatch_8_bits_ctrl_fpWen),
    .io_dispatch_8_bits_ctrl_imm(ctrlBlock_io_dispatch_8_bits_ctrl_imm),
    .io_dispatch_8_bits_ctrl_fpu_isAddSub(ctrlBlock_io_dispatch_8_bits_ctrl_fpu_isAddSub),
    .io_dispatch_8_bits_ctrl_fpu_typeTagIn(ctrlBlock_io_dispatch_8_bits_ctrl_fpu_typeTagIn),
    .io_dispatch_8_bits_ctrl_fpu_typeTagOut(ctrlBlock_io_dispatch_8_bits_ctrl_fpu_typeTagOut),
    .io_dispatch_8_bits_ctrl_fpu_fromInt(ctrlBlock_io_dispatch_8_bits_ctrl_fpu_fromInt),
    .io_dispatch_8_bits_ctrl_fpu_wflags(ctrlBlock_io_dispatch_8_bits_ctrl_fpu_wflags),
    .io_dispatch_8_bits_ctrl_fpu_fpWen(ctrlBlock_io_dispatch_8_bits_ctrl_fpu_fpWen),
    .io_dispatch_8_bits_ctrl_fpu_fmaCmd(ctrlBlock_io_dispatch_8_bits_ctrl_fpu_fmaCmd),
    .io_dispatch_8_bits_ctrl_fpu_div(ctrlBlock_io_dispatch_8_bits_ctrl_fpu_div),
    .io_dispatch_8_bits_ctrl_fpu_sqrt(ctrlBlock_io_dispatch_8_bits_ctrl_fpu_sqrt),
    .io_dispatch_8_bits_ctrl_fpu_fcvt(ctrlBlock_io_dispatch_8_bits_ctrl_fpu_fcvt),
    .io_dispatch_8_bits_ctrl_fpu_typ(ctrlBlock_io_dispatch_8_bits_ctrl_fpu_typ),
    .io_dispatch_8_bits_ctrl_fpu_fmt(ctrlBlock_io_dispatch_8_bits_ctrl_fpu_fmt),
    .io_dispatch_8_bits_ctrl_fpu_ren3(ctrlBlock_io_dispatch_8_bits_ctrl_fpu_ren3),
    .io_dispatch_8_bits_ctrl_fpu_rm(ctrlBlock_io_dispatch_8_bits_ctrl_fpu_rm),
    .io_dispatch_8_bits_psrc_0(ctrlBlock_io_dispatch_8_bits_psrc_0),
    .io_dispatch_8_bits_psrc_1(ctrlBlock_io_dispatch_8_bits_psrc_1),
    .io_dispatch_8_bits_psrc_2(ctrlBlock_io_dispatch_8_bits_psrc_2),
    .io_dispatch_8_bits_pdest(ctrlBlock_io_dispatch_8_bits_pdest),
    .io_dispatch_8_bits_robIdx_flag(ctrlBlock_io_dispatch_8_bits_robIdx_flag),
    .io_dispatch_8_bits_robIdx_value(ctrlBlock_io_dispatch_8_bits_robIdx_value),
    .io_dispatch_8_bits_lqIdx_flag(ctrlBlock_io_dispatch_8_bits_lqIdx_flag),
    .io_dispatch_8_bits_lqIdx_value(ctrlBlock_io_dispatch_8_bits_lqIdx_value),
    .io_rsReady_0(ctrlBlock_io_rsReady_0),
    .io_rsReady_1(ctrlBlock_io_rsReady_1),
    .io_rsReady_2(ctrlBlock_io_rsReady_2),
    .io_rsReady_3(ctrlBlock_io_rsReady_3),
    .io_rsReady_4(ctrlBlock_io_rsReady_4),
    .io_rsReady_5(ctrlBlock_io_rsReady_5),
    .io_rsReady_6(ctrlBlock_io_rsReady_6),
    .io_rsReady_7(ctrlBlock_io_rsReady_7),
    .io_rsReady_8(ctrlBlock_io_rsReady_8),
    .io_enqLsq_canAccept(ctrlBlock_io_enqLsq_canAccept),
    .io_enqLsq_needAlloc_0(ctrlBlock_io_enqLsq_needAlloc_0),
    .io_enqLsq_needAlloc_1(ctrlBlock_io_enqLsq_needAlloc_1),
    .io_enqLsq_needAlloc_2(ctrlBlock_io_enqLsq_needAlloc_2),
    .io_enqLsq_needAlloc_3(ctrlBlock_io_enqLsq_needAlloc_3),
    .io_enqLsq_req_0_valid(ctrlBlock_io_enqLsq_req_0_valid),
    .io_enqLsq_req_0_bits_cf_trigger_backendEn_0(ctrlBlock_io_enqLsq_req_0_bits_cf_trigger_backendEn_0),
    .io_enqLsq_req_0_bits_cf_storeSetHit(ctrlBlock_io_enqLsq_req_0_bits_cf_storeSetHit),
    .io_enqLsq_req_0_bits_cf_ssid(ctrlBlock_io_enqLsq_req_0_bits_cf_ssid),
    .io_enqLsq_req_0_bits_ctrl_fuOpType(ctrlBlock_io_enqLsq_req_0_bits_ctrl_fuOpType),
    .io_enqLsq_req_0_bits_robIdx_flag(ctrlBlock_io_enqLsq_req_0_bits_robIdx_flag),
    .io_enqLsq_req_0_bits_robIdx_value(ctrlBlock_io_enqLsq_req_0_bits_robIdx_value),
    .io_enqLsq_req_0_bits_lqIdx_flag(ctrlBlock_io_enqLsq_req_0_bits_lqIdx_flag),
    .io_enqLsq_req_0_bits_lqIdx_value(ctrlBlock_io_enqLsq_req_0_bits_lqIdx_value),
    .io_enqLsq_req_0_bits_sqIdx_value(ctrlBlock_io_enqLsq_req_0_bits_sqIdx_value),
    .io_enqLsq_req_1_valid(ctrlBlock_io_enqLsq_req_1_valid),
    .io_enqLsq_req_1_bits_cf_trigger_backendEn_0(ctrlBlock_io_enqLsq_req_1_bits_cf_trigger_backendEn_0),
    .io_enqLsq_req_1_bits_cf_storeSetHit(ctrlBlock_io_enqLsq_req_1_bits_cf_storeSetHit),
    .io_enqLsq_req_1_bits_cf_ssid(ctrlBlock_io_enqLsq_req_1_bits_cf_ssid),
    .io_enqLsq_req_1_bits_ctrl_fuOpType(ctrlBlock_io_enqLsq_req_1_bits_ctrl_fuOpType),
    .io_enqLsq_req_1_bits_robIdx_flag(ctrlBlock_io_enqLsq_req_1_bits_robIdx_flag),
    .io_enqLsq_req_1_bits_robIdx_value(ctrlBlock_io_enqLsq_req_1_bits_robIdx_value),
    .io_enqLsq_req_1_bits_lqIdx_flag(ctrlBlock_io_enqLsq_req_1_bits_lqIdx_flag),
    .io_enqLsq_req_1_bits_lqIdx_value(ctrlBlock_io_enqLsq_req_1_bits_lqIdx_value),
    .io_enqLsq_req_1_bits_sqIdx_value(ctrlBlock_io_enqLsq_req_1_bits_sqIdx_value),
    .io_enqLsq_req_2_valid(ctrlBlock_io_enqLsq_req_2_valid),
    .io_enqLsq_req_2_bits_cf_trigger_backendEn_0(ctrlBlock_io_enqLsq_req_2_bits_cf_trigger_backendEn_0),
    .io_enqLsq_req_2_bits_cf_storeSetHit(ctrlBlock_io_enqLsq_req_2_bits_cf_storeSetHit),
    .io_enqLsq_req_2_bits_cf_ssid(ctrlBlock_io_enqLsq_req_2_bits_cf_ssid),
    .io_enqLsq_req_2_bits_ctrl_fuOpType(ctrlBlock_io_enqLsq_req_2_bits_ctrl_fuOpType),
    .io_enqLsq_req_2_bits_robIdx_flag(ctrlBlock_io_enqLsq_req_2_bits_robIdx_flag),
    .io_enqLsq_req_2_bits_robIdx_value(ctrlBlock_io_enqLsq_req_2_bits_robIdx_value),
    .io_enqLsq_req_2_bits_lqIdx_flag(ctrlBlock_io_enqLsq_req_2_bits_lqIdx_flag),
    .io_enqLsq_req_2_bits_lqIdx_value(ctrlBlock_io_enqLsq_req_2_bits_lqIdx_value),
    .io_enqLsq_req_2_bits_sqIdx_value(ctrlBlock_io_enqLsq_req_2_bits_sqIdx_value),
    .io_enqLsq_req_3_valid(ctrlBlock_io_enqLsq_req_3_valid),
    .io_enqLsq_req_3_bits_cf_trigger_backendEn_0(ctrlBlock_io_enqLsq_req_3_bits_cf_trigger_backendEn_0),
    .io_enqLsq_req_3_bits_cf_storeSetHit(ctrlBlock_io_enqLsq_req_3_bits_cf_storeSetHit),
    .io_enqLsq_req_3_bits_cf_ssid(ctrlBlock_io_enqLsq_req_3_bits_cf_ssid),
    .io_enqLsq_req_3_bits_ctrl_fuOpType(ctrlBlock_io_enqLsq_req_3_bits_ctrl_fuOpType),
    .io_enqLsq_req_3_bits_robIdx_flag(ctrlBlock_io_enqLsq_req_3_bits_robIdx_flag),
    .io_enqLsq_req_3_bits_robIdx_value(ctrlBlock_io_enqLsq_req_3_bits_robIdx_value),
    .io_enqLsq_req_3_bits_lqIdx_flag(ctrlBlock_io_enqLsq_req_3_bits_lqIdx_flag),
    .io_enqLsq_req_3_bits_lqIdx_value(ctrlBlock_io_enqLsq_req_3_bits_lqIdx_value),
    .io_enqLsq_req_3_bits_sqIdx_value(ctrlBlock_io_enqLsq_req_3_bits_sqIdx_value),
    .io_lqCancelCnt(ctrlBlock_io_lqCancelCnt),
    .io_sqCancelCnt(ctrlBlock_io_sqCancelCnt),
    .io_lqDeq(ctrlBlock_io_lqDeq),
    .io_sqDeq(ctrlBlock_io_sqDeq),
    .io_exuRedirect_0_valid(ctrlBlock_io_exuRedirect_0_valid),
    .io_exuRedirect_0_bits_uop_cf_pd_isRVC(ctrlBlock_io_exuRedirect_0_bits_uop_cf_pd_isRVC),
    .io_exuRedirect_0_bits_uop_cf_pd_brType(ctrlBlock_io_exuRedirect_0_bits_uop_cf_pd_brType),
    .io_exuRedirect_0_bits_uop_cf_pd_isCall(ctrlBlock_io_exuRedirect_0_bits_uop_cf_pd_isCall),
    .io_exuRedirect_0_bits_uop_cf_pd_isRet(ctrlBlock_io_exuRedirect_0_bits_uop_cf_pd_isRet),
    .io_exuRedirect_0_bits_uop_ctrl_imm(ctrlBlock_io_exuRedirect_0_bits_uop_ctrl_imm),
    .io_exuRedirect_0_bits_uop_robIdx_flag(ctrlBlock_io_exuRedirect_0_bits_uop_robIdx_flag),
    .io_exuRedirect_0_bits_uop_robIdx_value(ctrlBlock_io_exuRedirect_0_bits_uop_robIdx_value),
    .io_exuRedirect_0_bits_redirectValid(ctrlBlock_io_exuRedirect_0_bits_redirectValid),
    .io_exuRedirect_0_bits_redirect_robIdx_flag(ctrlBlock_io_exuRedirect_0_bits_redirect_robIdx_flag),
    .io_exuRedirect_0_bits_redirect_robIdx_value(ctrlBlock_io_exuRedirect_0_bits_redirect_robIdx_value),
    .io_exuRedirect_0_bits_redirect_ftqIdx_flag(ctrlBlock_io_exuRedirect_0_bits_redirect_ftqIdx_flag),
    .io_exuRedirect_0_bits_redirect_ftqIdx_value(ctrlBlock_io_exuRedirect_0_bits_redirect_ftqIdx_value),
    .io_exuRedirect_0_bits_redirect_ftqOffset(ctrlBlock_io_exuRedirect_0_bits_redirect_ftqOffset),
    .io_exuRedirect_0_bits_redirect_cfiUpdate_target(ctrlBlock_io_exuRedirect_0_bits_redirect_cfiUpdate_target),
    .io_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred(ctrlBlock_io_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred),
    .io_exuRedirect_1_valid(ctrlBlock_io_exuRedirect_1_valid),
    .io_exuRedirect_1_bits_uop_cf_pd_isRVC(ctrlBlock_io_exuRedirect_1_bits_uop_cf_pd_isRVC),
    .io_exuRedirect_1_bits_uop_cf_pd_brType(ctrlBlock_io_exuRedirect_1_bits_uop_cf_pd_brType),
    .io_exuRedirect_1_bits_uop_cf_pd_isCall(ctrlBlock_io_exuRedirect_1_bits_uop_cf_pd_isCall),
    .io_exuRedirect_1_bits_uop_cf_pd_isRet(ctrlBlock_io_exuRedirect_1_bits_uop_cf_pd_isRet),
    .io_exuRedirect_1_bits_uop_ctrl_imm(ctrlBlock_io_exuRedirect_1_bits_uop_ctrl_imm),
    .io_exuRedirect_1_bits_uop_robIdx_flag(ctrlBlock_io_exuRedirect_1_bits_uop_robIdx_flag),
    .io_exuRedirect_1_bits_uop_robIdx_value(ctrlBlock_io_exuRedirect_1_bits_uop_robIdx_value),
    .io_exuRedirect_1_bits_redirectValid(ctrlBlock_io_exuRedirect_1_bits_redirectValid),
    .io_exuRedirect_1_bits_redirect_robIdx_flag(ctrlBlock_io_exuRedirect_1_bits_redirect_robIdx_flag),
    .io_exuRedirect_1_bits_redirect_robIdx_value(ctrlBlock_io_exuRedirect_1_bits_redirect_robIdx_value),
    .io_exuRedirect_1_bits_redirect_ftqIdx_flag(ctrlBlock_io_exuRedirect_1_bits_redirect_ftqIdx_flag),
    .io_exuRedirect_1_bits_redirect_ftqIdx_value(ctrlBlock_io_exuRedirect_1_bits_redirect_ftqIdx_value),
    .io_exuRedirect_1_bits_redirect_ftqOffset(ctrlBlock_io_exuRedirect_1_bits_redirect_ftqOffset),
    .io_exuRedirect_1_bits_redirect_cfiUpdate_taken(ctrlBlock_io_exuRedirect_1_bits_redirect_cfiUpdate_taken),
    .io_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred(ctrlBlock_io_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred),
    .io_exuRedirect_2_valid(ctrlBlock_io_exuRedirect_2_valid),
    .io_exuRedirect_2_bits_uop_cf_pd_isRVC(ctrlBlock_io_exuRedirect_2_bits_uop_cf_pd_isRVC),
    .io_exuRedirect_2_bits_uop_cf_pd_brType(ctrlBlock_io_exuRedirect_2_bits_uop_cf_pd_brType),
    .io_exuRedirect_2_bits_uop_cf_pd_isCall(ctrlBlock_io_exuRedirect_2_bits_uop_cf_pd_isCall),
    .io_exuRedirect_2_bits_uop_cf_pd_isRet(ctrlBlock_io_exuRedirect_2_bits_uop_cf_pd_isRet),
    .io_exuRedirect_2_bits_uop_ctrl_imm(ctrlBlock_io_exuRedirect_2_bits_uop_ctrl_imm),
    .io_exuRedirect_2_bits_uop_robIdx_flag(ctrlBlock_io_exuRedirect_2_bits_uop_robIdx_flag),
    .io_exuRedirect_2_bits_uop_robIdx_value(ctrlBlock_io_exuRedirect_2_bits_uop_robIdx_value),
    .io_exuRedirect_2_bits_redirectValid(ctrlBlock_io_exuRedirect_2_bits_redirectValid),
    .io_exuRedirect_2_bits_redirect_robIdx_flag(ctrlBlock_io_exuRedirect_2_bits_redirect_robIdx_flag),
    .io_exuRedirect_2_bits_redirect_robIdx_value(ctrlBlock_io_exuRedirect_2_bits_redirect_robIdx_value),
    .io_exuRedirect_2_bits_redirect_ftqIdx_flag(ctrlBlock_io_exuRedirect_2_bits_redirect_ftqIdx_flag),
    .io_exuRedirect_2_bits_redirect_ftqIdx_value(ctrlBlock_io_exuRedirect_2_bits_redirect_ftqIdx_value),
    .io_exuRedirect_2_bits_redirect_ftqOffset(ctrlBlock_io_exuRedirect_2_bits_redirect_ftqOffset),
    .io_exuRedirect_2_bits_redirect_cfiUpdate_taken(ctrlBlock_io_exuRedirect_2_bits_redirect_cfiUpdate_taken),
    .io_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred(ctrlBlock_io_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred),
    .io_memoryViolation_valid(ctrlBlock_io_memoryViolation_valid),
    .io_memoryViolation_bits_robIdx_flag(ctrlBlock_io_memoryViolation_bits_robIdx_flag),
    .io_memoryViolation_bits_robIdx_value(ctrlBlock_io_memoryViolation_bits_robIdx_value),
    .io_memoryViolation_bits_ftqIdx_flag(ctrlBlock_io_memoryViolation_bits_ftqIdx_flag),
    .io_memoryViolation_bits_ftqIdx_value(ctrlBlock_io_memoryViolation_bits_ftqIdx_value),
    .io_memoryViolation_bits_ftqOffset(ctrlBlock_io_memoryViolation_bits_ftqOffset),
    .io_memoryViolation_bits_stFtqIdx_value(ctrlBlock_io_memoryViolation_bits_stFtqIdx_value),
    .io_memoryViolation_bits_stFtqOffset(ctrlBlock_io_memoryViolation_bits_stFtqOffset),
    .io_jumpPc(ctrlBlock_io_jumpPc),
    .io_jalr_target(ctrlBlock_io_jalr_target),
    .io_robio_toCSR_intrBitSet(ctrlBlock_io_robio_toCSR_intrBitSet),
    .io_robio_toCSR_trapTarget(ctrlBlock_io_robio_toCSR_trapTarget),
    .io_robio_toCSR_isXRet(ctrlBlock_io_robio_toCSR_isXRet),
    .io_robio_toCSR_wfiEvent(ctrlBlock_io_robio_toCSR_wfiEvent),
    .io_robio_toCSR_fflags_valid(ctrlBlock_io_robio_toCSR_fflags_valid),
    .io_robio_toCSR_fflags_bits(ctrlBlock_io_robio_toCSR_fflags_bits),
    .io_robio_toCSR_dirty_fs(ctrlBlock_io_robio_toCSR_dirty_fs),
    .io_robio_toCSR_perfinfo_retiredInstr(ctrlBlock_io_robio_toCSR_perfinfo_retiredInstr),
    .io_robio_exception_valid(ctrlBlock_io_robio_exception_valid),
    .io_robio_exception_bits_uop_cf_pc(ctrlBlock_io_robio_exception_bits_uop_cf_pc),
    .io_robio_exception_bits_uop_cf_exceptionVec_0(ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_0),
    .io_robio_exception_bits_uop_cf_exceptionVec_1(ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_1),
    .io_robio_exception_bits_uop_cf_exceptionVec_2(ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_2),
    .io_robio_exception_bits_uop_cf_exceptionVec_3(ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_3),
    .io_robio_exception_bits_uop_cf_exceptionVec_4(ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_4),
    .io_robio_exception_bits_uop_cf_exceptionVec_5(ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_5),
    .io_robio_exception_bits_uop_cf_exceptionVec_6(ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_6),
    .io_robio_exception_bits_uop_cf_exceptionVec_7(ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_7),
    .io_robio_exception_bits_uop_cf_exceptionVec_8(ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_8),
    .io_robio_exception_bits_uop_cf_exceptionVec_9(ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_9),
    .io_robio_exception_bits_uop_cf_exceptionVec_11(ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_11),
    .io_robio_exception_bits_uop_cf_exceptionVec_12(ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_12),
    .io_robio_exception_bits_uop_cf_exceptionVec_13(ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_13),
    .io_robio_exception_bits_uop_cf_exceptionVec_15(ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_15),
    .io_robio_exception_bits_uop_cf_trigger_frontendHit_0(ctrlBlock_io_robio_exception_bits_uop_cf_trigger_frontendHit_0
      ),
    .io_robio_exception_bits_uop_cf_trigger_frontendHit_1(ctrlBlock_io_robio_exception_bits_uop_cf_trigger_frontendHit_1
      ),
    .io_robio_exception_bits_uop_cf_trigger_frontendHit_2(ctrlBlock_io_robio_exception_bits_uop_cf_trigger_frontendHit_2
      ),
    .io_robio_exception_bits_uop_cf_trigger_frontendHit_3(ctrlBlock_io_robio_exception_bits_uop_cf_trigger_frontendHit_3
      ),
    .io_robio_exception_bits_uop_cf_trigger_backendHit_0(ctrlBlock_io_robio_exception_bits_uop_cf_trigger_backendHit_0),
    .io_robio_exception_bits_uop_cf_trigger_backendHit_1(ctrlBlock_io_robio_exception_bits_uop_cf_trigger_backendHit_1),
    .io_robio_exception_bits_uop_cf_trigger_backendHit_2(ctrlBlock_io_robio_exception_bits_uop_cf_trigger_backendHit_2),
    .io_robio_exception_bits_uop_cf_trigger_backendHit_3(ctrlBlock_io_robio_exception_bits_uop_cf_trigger_backendHit_3),
    .io_robio_exception_bits_uop_cf_trigger_backendHit_4(ctrlBlock_io_robio_exception_bits_uop_cf_trigger_backendHit_4),
    .io_robio_exception_bits_uop_cf_trigger_backendHit_5(ctrlBlock_io_robio_exception_bits_uop_cf_trigger_backendHit_5),
    .io_robio_exception_bits_uop_cf_crossPageIPFFix(ctrlBlock_io_robio_exception_bits_uop_cf_crossPageIPFFix),
    .io_robio_exception_bits_uop_ctrl_commitType(ctrlBlock_io_robio_exception_bits_uop_ctrl_commitType),
    .io_robio_exception_bits_uop_ctrl_singleStep(ctrlBlock_io_robio_exception_bits_uop_ctrl_singleStep),
    .io_robio_exception_bits_isInterrupt(ctrlBlock_io_robio_exception_bits_isInterrupt),
    .io_robio_lsq_scommit(ctrlBlock_io_robio_lsq_scommit),
    .io_robio_lsq_pendingld(ctrlBlock_io_robio_lsq_pendingld),
    .io_robio_lsq_pendingst(ctrlBlock_io_robio_lsq_pendingst),
    .io_robio_lsq_commit(ctrlBlock_io_robio_lsq_commit),
    .io_robio_lsq_pendingPtr_flag(ctrlBlock_io_robio_lsq_pendingPtr_flag),
    .io_robio_lsq_pendingPtr_value(ctrlBlock_io_robio_lsq_pendingPtr_value),
    .io_robio_lsq_mmio_0(ctrlBlock_io_robio_lsq_mmio_0),
    .io_robio_lsq_mmio_1(ctrlBlock_io_robio_lsq_mmio_1),
    .io_robio_lsq_uop_0_robIdx_value(ctrlBlock_io_robio_lsq_uop_0_robIdx_value),
    .io_robio_lsq_uop_1_robIdx_value(ctrlBlock_io_robio_lsq_uop_1_robIdx_value),
    .io_robio_lsTopdownInfo_0_s1_robIdx(ctrlBlock_io_robio_lsTopdownInfo_0_s1_robIdx),
    .io_robio_lsTopdownInfo_0_s1_vaddr_valid(ctrlBlock_io_robio_lsTopdownInfo_0_s1_vaddr_valid),
    .io_robio_lsTopdownInfo_0_s1_vaddr_bits(ctrlBlock_io_robio_lsTopdownInfo_0_s1_vaddr_bits),
    .io_robio_lsTopdownInfo_0_s2_robIdx(ctrlBlock_io_robio_lsTopdownInfo_0_s2_robIdx),
    .io_robio_lsTopdownInfo_0_s2_paddr_valid(ctrlBlock_io_robio_lsTopdownInfo_0_s2_paddr_valid),
    .io_robio_lsTopdownInfo_0_s2_paddr_bits(ctrlBlock_io_robio_lsTopdownInfo_0_s2_paddr_bits),
    .io_robio_lsTopdownInfo_1_s1_robIdx(ctrlBlock_io_robio_lsTopdownInfo_1_s1_robIdx),
    .io_robio_lsTopdownInfo_1_s1_vaddr_valid(ctrlBlock_io_robio_lsTopdownInfo_1_s1_vaddr_valid),
    .io_robio_lsTopdownInfo_1_s1_vaddr_bits(ctrlBlock_io_robio_lsTopdownInfo_1_s1_vaddr_bits),
    .io_robio_lsTopdownInfo_1_s2_robIdx(ctrlBlock_io_robio_lsTopdownInfo_1_s2_robIdx),
    .io_robio_lsTopdownInfo_1_s2_paddr_valid(ctrlBlock_io_robio_lsTopdownInfo_1_s2_paddr_valid),
    .io_robio_lsTopdownInfo_1_s2_paddr_bits(ctrlBlock_io_robio_lsTopdownInfo_1_s2_paddr_bits),
    .io_csrCtrl_lvpred_timeout(ctrlBlock_io_csrCtrl_lvpred_timeout),
    .io_csrCtrl_fusion_enable(ctrlBlock_io_csrCtrl_fusion_enable),
    .io_csrCtrl_wfi_enable(ctrlBlock_io_csrCtrl_wfi_enable),
    .io_csrCtrl_svinval_enable(ctrlBlock_io_csrCtrl_svinval_enable),
    .io_csrCtrl_distribute_csr_wvalid(ctrlBlock_io_csrCtrl_distribute_csr_wvalid),
    .io_csrCtrl_distribute_csr_waddr(ctrlBlock_io_csrCtrl_distribute_csr_waddr),
    .io_csrCtrl_distribute_csr_wdata(ctrlBlock_io_csrCtrl_distribute_csr_wdata),
    .io_csrCtrl_singlestep(ctrlBlock_io_csrCtrl_singlestep),
    .io_writeback_1_0_valid(ctrlBlock_io_writeback_1_0_valid),
    .io_writeback_1_0_bits_uop_robIdx_flag(ctrlBlock_io_writeback_1_0_bits_uop_robIdx_flag),
    .io_writeback_1_0_bits_uop_robIdx_value(ctrlBlock_io_writeback_1_0_bits_uop_robIdx_value),
    .io_writeback_1_0_bits_uop_lqIdx_flag(ctrlBlock_io_writeback_1_0_bits_uop_lqIdx_flag),
    .io_writeback_1_0_bits_uop_lqIdx_value(ctrlBlock_io_writeback_1_0_bits_uop_lqIdx_value),
    .io_writeback_1_0_bits_redirectValid(ctrlBlock_io_writeback_1_0_bits_redirectValid),
    .io_writeback_1_0_bits_redirect_cfiUpdate_isMisPred(ctrlBlock_io_writeback_1_0_bits_redirect_cfiUpdate_isMisPred),
    .io_writeback_1_1_valid(ctrlBlock_io_writeback_1_1_valid),
    .io_writeback_1_1_bits_uop_robIdx_flag(ctrlBlock_io_writeback_1_1_bits_uop_robIdx_flag),
    .io_writeback_1_1_bits_uop_robIdx_value(ctrlBlock_io_writeback_1_1_bits_uop_robIdx_value),
    .io_writeback_1_1_bits_uop_lqIdx_flag(ctrlBlock_io_writeback_1_1_bits_uop_lqIdx_flag),
    .io_writeback_1_1_bits_uop_lqIdx_value(ctrlBlock_io_writeback_1_1_bits_uop_lqIdx_value),
    .io_writeback_1_1_bits_redirectValid(ctrlBlock_io_writeback_1_1_bits_redirectValid),
    .io_writeback_1_1_bits_redirect_cfiUpdate_isMisPred(ctrlBlock_io_writeback_1_1_bits_redirect_cfiUpdate_isMisPred),
    .io_writeback_1_2_valid(ctrlBlock_io_writeback_1_2_valid),
    .io_writeback_1_2_bits_uop_cf_exceptionVec_4(ctrlBlock_io_writeback_1_2_bits_uop_cf_exceptionVec_4),
    .io_writeback_1_2_bits_uop_cf_exceptionVec_5(ctrlBlock_io_writeback_1_2_bits_uop_cf_exceptionVec_5),
    .io_writeback_1_2_bits_uop_cf_exceptionVec_13(ctrlBlock_io_writeback_1_2_bits_uop_cf_exceptionVec_13),
    .io_writeback_1_2_bits_uop_cf_trigger_backendHit_0(ctrlBlock_io_writeback_1_2_bits_uop_cf_trigger_backendHit_0),
    .io_writeback_1_2_bits_uop_cf_trigger_backendHit_1(ctrlBlock_io_writeback_1_2_bits_uop_cf_trigger_backendHit_1),
    .io_writeback_1_2_bits_uop_cf_trigger_backendHit_2(ctrlBlock_io_writeback_1_2_bits_uop_cf_trigger_backendHit_2),
    .io_writeback_1_2_bits_uop_cf_trigger_backendHit_3(ctrlBlock_io_writeback_1_2_bits_uop_cf_trigger_backendHit_3),
    .io_writeback_1_2_bits_uop_cf_trigger_backendHit_4(ctrlBlock_io_writeback_1_2_bits_uop_cf_trigger_backendHit_4),
    .io_writeback_1_2_bits_uop_cf_trigger_backendHit_5(ctrlBlock_io_writeback_1_2_bits_uop_cf_trigger_backendHit_5),
    .io_writeback_1_2_bits_uop_ctrl_replayInst(ctrlBlock_io_writeback_1_2_bits_uop_ctrl_replayInst),
    .io_writeback_1_2_bits_uop_robIdx_flag(ctrlBlock_io_writeback_1_2_bits_uop_robIdx_flag),
    .io_writeback_1_2_bits_uop_robIdx_value(ctrlBlock_io_writeback_1_2_bits_uop_robIdx_value),
    .io_writeback_1_2_bits_uop_lqIdx_flag(ctrlBlock_io_writeback_1_2_bits_uop_lqIdx_flag),
    .io_writeback_1_2_bits_uop_lqIdx_value(ctrlBlock_io_writeback_1_2_bits_uop_lqIdx_value),
    .io_writeback_1_2_bits_debug_isMMIO(ctrlBlock_io_writeback_1_2_bits_debug_isMMIO),
    .io_writeback_1_3_valid(ctrlBlock_io_writeback_1_3_valid),
    .io_writeback_1_3_bits_uop_cf_exceptionVec_4(ctrlBlock_io_writeback_1_3_bits_uop_cf_exceptionVec_4),
    .io_writeback_1_3_bits_uop_cf_exceptionVec_5(ctrlBlock_io_writeback_1_3_bits_uop_cf_exceptionVec_5),
    .io_writeback_1_3_bits_uop_cf_exceptionVec_13(ctrlBlock_io_writeback_1_3_bits_uop_cf_exceptionVec_13),
    .io_writeback_1_3_bits_uop_cf_trigger_backendHit_0(ctrlBlock_io_writeback_1_3_bits_uop_cf_trigger_backendHit_0),
    .io_writeback_1_3_bits_uop_cf_trigger_backendHit_1(ctrlBlock_io_writeback_1_3_bits_uop_cf_trigger_backendHit_1),
    .io_writeback_1_3_bits_uop_cf_trigger_backendHit_2(ctrlBlock_io_writeback_1_3_bits_uop_cf_trigger_backendHit_2),
    .io_writeback_1_3_bits_uop_cf_trigger_backendHit_3(ctrlBlock_io_writeback_1_3_bits_uop_cf_trigger_backendHit_3),
    .io_writeback_1_3_bits_uop_cf_trigger_backendHit_4(ctrlBlock_io_writeback_1_3_bits_uop_cf_trigger_backendHit_4),
    .io_writeback_1_3_bits_uop_cf_trigger_backendHit_5(ctrlBlock_io_writeback_1_3_bits_uop_cf_trigger_backendHit_5),
    .io_writeback_1_3_bits_uop_ctrl_replayInst(ctrlBlock_io_writeback_1_3_bits_uop_ctrl_replayInst),
    .io_writeback_1_3_bits_uop_robIdx_flag(ctrlBlock_io_writeback_1_3_bits_uop_robIdx_flag),
    .io_writeback_1_3_bits_uop_robIdx_value(ctrlBlock_io_writeback_1_3_bits_uop_robIdx_value),
    .io_writeback_1_3_bits_uop_lqIdx_flag(ctrlBlock_io_writeback_1_3_bits_uop_lqIdx_flag),
    .io_writeback_1_3_bits_uop_lqIdx_value(ctrlBlock_io_writeback_1_3_bits_uop_lqIdx_value),
    .io_writeback_1_3_bits_debug_isMMIO(ctrlBlock_io_writeback_1_3_bits_debug_isMMIO),
    .io_writeback_1_4_valid(ctrlBlock_io_writeback_1_4_valid),
    .io_writeback_1_4_bits_uop_cf_exceptionVec_2(ctrlBlock_io_writeback_1_4_bits_uop_cf_exceptionVec_2),
    .io_writeback_1_4_bits_uop_cf_exceptionVec_3(ctrlBlock_io_writeback_1_4_bits_uop_cf_exceptionVec_3),
    .io_writeback_1_4_bits_uop_cf_exceptionVec_8(ctrlBlock_io_writeback_1_4_bits_uop_cf_exceptionVec_8),
    .io_writeback_1_4_bits_uop_cf_exceptionVec_9(ctrlBlock_io_writeback_1_4_bits_uop_cf_exceptionVec_9),
    .io_writeback_1_4_bits_uop_cf_exceptionVec_11(ctrlBlock_io_writeback_1_4_bits_uop_cf_exceptionVec_11),
    .io_writeback_1_4_bits_uop_ctrl_flushPipe(ctrlBlock_io_writeback_1_4_bits_uop_ctrl_flushPipe),
    .io_writeback_1_4_bits_uop_robIdx_flag(ctrlBlock_io_writeback_1_4_bits_uop_robIdx_flag),
    .io_writeback_1_4_bits_uop_robIdx_value(ctrlBlock_io_writeback_1_4_bits_uop_robIdx_value),
    .io_writeback_1_4_bits_uop_lqIdx_flag(ctrlBlock_io_writeback_1_4_bits_uop_lqIdx_flag),
    .io_writeback_1_4_bits_uop_lqIdx_value(ctrlBlock_io_writeback_1_4_bits_uop_lqIdx_value),
    .io_writeback_1_4_bits_redirectValid(ctrlBlock_io_writeback_1_4_bits_redirectValid),
    .io_writeback_1_4_bits_redirect_cfiUpdate_isMisPred(ctrlBlock_io_writeback_1_4_bits_redirect_cfiUpdate_isMisPred),
    .io_writeback_1_4_bits_debug_isPerfCnt(ctrlBlock_io_writeback_1_4_bits_debug_isPerfCnt),
    .io_writeback_1_5_valid(ctrlBlock_io_writeback_1_5_valid),
    .io_writeback_1_5_bits_uop_cf_trigger_backendHit_0(ctrlBlock_io_writeback_1_5_bits_uop_cf_trigger_backendHit_0),
    .io_writeback_1_5_bits_uop_cf_trigger_backendHit_1(ctrlBlock_io_writeback_1_5_bits_uop_cf_trigger_backendHit_1),
    .io_writeback_1_5_bits_uop_cf_trigger_backendHit_2(ctrlBlock_io_writeback_1_5_bits_uop_cf_trigger_backendHit_2),
    .io_writeback_1_5_bits_uop_cf_trigger_backendHit_3(ctrlBlock_io_writeback_1_5_bits_uop_cf_trigger_backendHit_3),
    .io_writeback_1_5_bits_uop_cf_trigger_backendHit_4(ctrlBlock_io_writeback_1_5_bits_uop_cf_trigger_backendHit_4),
    .io_writeback_1_5_bits_uop_cf_trigger_backendHit_5(ctrlBlock_io_writeback_1_5_bits_uop_cf_trigger_backendHit_5),
    .io_writeback_1_5_bits_uop_robIdx_flag(ctrlBlock_io_writeback_1_5_bits_uop_robIdx_flag),
    .io_writeback_1_5_bits_uop_robIdx_value(ctrlBlock_io_writeback_1_5_bits_uop_robIdx_value),
    .io_writeback_1_5_bits_uop_lqIdx_flag(ctrlBlock_io_writeback_1_5_bits_uop_lqIdx_flag),
    .io_writeback_1_5_bits_uop_lqIdx_value(ctrlBlock_io_writeback_1_5_bits_uop_lqIdx_value),
    .io_writeback_1_6_valid(ctrlBlock_io_writeback_1_6_valid),
    .io_writeback_1_6_bits_uop_cf_exceptionVec_2(ctrlBlock_io_writeback_1_6_bits_uop_cf_exceptionVec_2),
    .io_writeback_1_6_bits_uop_cf_exceptionVec_3(ctrlBlock_io_writeback_1_6_bits_uop_cf_exceptionVec_3),
    .io_writeback_1_6_bits_uop_cf_exceptionVec_8(ctrlBlock_io_writeback_1_6_bits_uop_cf_exceptionVec_8),
    .io_writeback_1_6_bits_uop_cf_exceptionVec_9(ctrlBlock_io_writeback_1_6_bits_uop_cf_exceptionVec_9),
    .io_writeback_1_6_bits_uop_cf_exceptionVec_11(ctrlBlock_io_writeback_1_6_bits_uop_cf_exceptionVec_11),
    .io_writeback_1_6_bits_uop_ctrl_flushPipe(ctrlBlock_io_writeback_1_6_bits_uop_ctrl_flushPipe),
    .io_writeback_1_6_bits_uop_robIdx_flag(ctrlBlock_io_writeback_1_6_bits_uop_robIdx_flag),
    .io_writeback_1_6_bits_uop_robIdx_value(ctrlBlock_io_writeback_1_6_bits_uop_robIdx_value),
    .io_writeback_1_6_bits_uop_lqIdx_flag(ctrlBlock_io_writeback_1_6_bits_uop_lqIdx_flag),
    .io_writeback_1_6_bits_uop_lqIdx_value(ctrlBlock_io_writeback_1_6_bits_uop_lqIdx_value),
    .io_writeback_1_6_bits_redirectValid(ctrlBlock_io_writeback_1_6_bits_redirectValid),
    .io_writeback_1_6_bits_redirect_cfiUpdate_isMisPred(ctrlBlock_io_writeback_1_6_bits_redirect_cfiUpdate_isMisPred),
    .io_writeback_1_6_bits_debug_isPerfCnt(ctrlBlock_io_writeback_1_6_bits_debug_isPerfCnt),
    .io_writeback_1_7_valid(ctrlBlock_io_writeback_1_7_valid),
    .io_writeback_1_7_bits_uop_cf_exceptionVec_4(ctrlBlock_io_writeback_1_7_bits_uop_cf_exceptionVec_4),
    .io_writeback_1_7_bits_uop_cf_exceptionVec_5(ctrlBlock_io_writeback_1_7_bits_uop_cf_exceptionVec_5),
    .io_writeback_1_7_bits_uop_cf_exceptionVec_6(ctrlBlock_io_writeback_1_7_bits_uop_cf_exceptionVec_6),
    .io_writeback_1_7_bits_uop_cf_exceptionVec_7(ctrlBlock_io_writeback_1_7_bits_uop_cf_exceptionVec_7),
    .io_writeback_1_7_bits_uop_cf_exceptionVec_13(ctrlBlock_io_writeback_1_7_bits_uop_cf_exceptionVec_13),
    .io_writeback_1_7_bits_uop_cf_exceptionVec_15(ctrlBlock_io_writeback_1_7_bits_uop_cf_exceptionVec_15),
    .io_writeback_1_7_bits_uop_cf_trigger_backendHit_0(ctrlBlock_io_writeback_1_7_bits_uop_cf_trigger_backendHit_0),
    .io_writeback_1_7_bits_uop_cf_trigger_backendHit_1(ctrlBlock_io_writeback_1_7_bits_uop_cf_trigger_backendHit_1),
    .io_writeback_1_7_bits_uop_cf_trigger_backendHit_2(ctrlBlock_io_writeback_1_7_bits_uop_cf_trigger_backendHit_2),
    .io_writeback_1_7_bits_uop_cf_trigger_backendHit_3(ctrlBlock_io_writeback_1_7_bits_uop_cf_trigger_backendHit_3),
    .io_writeback_1_7_bits_uop_cf_trigger_backendHit_4(ctrlBlock_io_writeback_1_7_bits_uop_cf_trigger_backendHit_4),
    .io_writeback_1_7_bits_uop_cf_trigger_backendHit_5(ctrlBlock_io_writeback_1_7_bits_uop_cf_trigger_backendHit_5),
    .io_writeback_1_7_bits_uop_robIdx_flag(ctrlBlock_io_writeback_1_7_bits_uop_robIdx_flag),
    .io_writeback_1_7_bits_uop_robIdx_value(ctrlBlock_io_writeback_1_7_bits_uop_robIdx_value),
    .io_writeback_1_7_bits_uop_lqIdx_flag(ctrlBlock_io_writeback_1_7_bits_uop_lqIdx_flag),
    .io_writeback_1_7_bits_uop_lqIdx_value(ctrlBlock_io_writeback_1_7_bits_uop_lqIdx_value),
    .io_writeback_1_7_bits_redirectValid(ctrlBlock_io_writeback_1_7_bits_redirectValid),
    .io_writeback_1_7_bits_redirect_cfiUpdate_isMisPred(ctrlBlock_io_writeback_1_7_bits_redirect_cfiUpdate_isMisPred),
    .io_writeback_1_7_bits_debug_isMMIO(ctrlBlock_io_writeback_1_7_bits_debug_isMMIO),
    .io_writeback_1_7_bits_debug_isPerfCnt(ctrlBlock_io_writeback_1_7_bits_debug_isPerfCnt),
    .io_writeback_1_8_valid(ctrlBlock_io_writeback_1_8_valid),
    .io_writeback_1_8_bits_uop_cf_exceptionVec_4(ctrlBlock_io_writeback_1_8_bits_uop_cf_exceptionVec_4),
    .io_writeback_1_8_bits_uop_cf_exceptionVec_5(ctrlBlock_io_writeback_1_8_bits_uop_cf_exceptionVec_5),
    .io_writeback_1_8_bits_uop_cf_exceptionVec_6(ctrlBlock_io_writeback_1_8_bits_uop_cf_exceptionVec_6),
    .io_writeback_1_8_bits_uop_cf_exceptionVec_7(ctrlBlock_io_writeback_1_8_bits_uop_cf_exceptionVec_7),
    .io_writeback_1_8_bits_uop_cf_exceptionVec_13(ctrlBlock_io_writeback_1_8_bits_uop_cf_exceptionVec_13),
    .io_writeback_1_8_bits_uop_cf_exceptionVec_15(ctrlBlock_io_writeback_1_8_bits_uop_cf_exceptionVec_15),
    .io_writeback_1_8_bits_uop_cf_trigger_backendHit_0(ctrlBlock_io_writeback_1_8_bits_uop_cf_trigger_backendHit_0),
    .io_writeback_1_8_bits_uop_cf_trigger_backendHit_1(ctrlBlock_io_writeback_1_8_bits_uop_cf_trigger_backendHit_1),
    .io_writeback_1_8_bits_uop_cf_trigger_backendHit_2(ctrlBlock_io_writeback_1_8_bits_uop_cf_trigger_backendHit_2),
    .io_writeback_1_8_bits_uop_cf_trigger_backendHit_3(ctrlBlock_io_writeback_1_8_bits_uop_cf_trigger_backendHit_3),
    .io_writeback_1_8_bits_uop_cf_trigger_backendHit_4(ctrlBlock_io_writeback_1_8_bits_uop_cf_trigger_backendHit_4),
    .io_writeback_1_8_bits_uop_cf_trigger_backendHit_5(ctrlBlock_io_writeback_1_8_bits_uop_cf_trigger_backendHit_5),
    .io_writeback_1_8_bits_uop_robIdx_flag(ctrlBlock_io_writeback_1_8_bits_uop_robIdx_flag),
    .io_writeback_1_8_bits_uop_robIdx_value(ctrlBlock_io_writeback_1_8_bits_uop_robIdx_value),
    .io_writeback_1_8_bits_uop_lqIdx_flag(ctrlBlock_io_writeback_1_8_bits_uop_lqIdx_flag),
    .io_writeback_1_8_bits_uop_lqIdx_value(ctrlBlock_io_writeback_1_8_bits_uop_lqIdx_value),
    .io_writeback_1_8_bits_redirectValid(ctrlBlock_io_writeback_1_8_bits_redirectValid),
    .io_writeback_1_8_bits_redirect_cfiUpdate_isMisPred(ctrlBlock_io_writeback_1_8_bits_redirect_cfiUpdate_isMisPred),
    .io_writeback_1_8_bits_debug_isMMIO(ctrlBlock_io_writeback_1_8_bits_debug_isMMIO),
    .io_writeback_1_8_bits_debug_isPerfCnt(ctrlBlock_io_writeback_1_8_bits_debug_isPerfCnt),
    .io_writeback_1_9_valid(ctrlBlock_io_writeback_1_9_valid),
    .io_writeback_1_9_bits_uop_robIdx_flag(ctrlBlock_io_writeback_1_9_bits_uop_robIdx_flag),
    .io_writeback_1_9_bits_uop_robIdx_value(ctrlBlock_io_writeback_1_9_bits_uop_robIdx_value),
    .io_writeback_1_10_valid(ctrlBlock_io_writeback_1_10_valid),
    .io_writeback_1_10_bits_uop_robIdx_flag(ctrlBlock_io_writeback_1_10_bits_uop_robIdx_flag),
    .io_writeback_1_10_bits_uop_robIdx_value(ctrlBlock_io_writeback_1_10_bits_uop_robIdx_value),
    .io_writeback_0_3_valid(ctrlBlock_io_writeback_0_3_valid),
    .io_writeback_0_3_bits_uop_cf_exceptionVec_2(ctrlBlock_io_writeback_0_3_bits_uop_cf_exceptionVec_2),
    .io_writeback_0_3_bits_uop_cf_exceptionVec_3(ctrlBlock_io_writeback_0_3_bits_uop_cf_exceptionVec_3),
    .io_writeback_0_3_bits_uop_cf_exceptionVec_8(ctrlBlock_io_writeback_0_3_bits_uop_cf_exceptionVec_8),
    .io_writeback_0_3_bits_uop_cf_exceptionVec_9(ctrlBlock_io_writeback_0_3_bits_uop_cf_exceptionVec_9),
    .io_writeback_0_3_bits_uop_cf_exceptionVec_11(ctrlBlock_io_writeback_0_3_bits_uop_cf_exceptionVec_11),
    .io_writeback_0_3_bits_uop_ctrl_flushPipe(ctrlBlock_io_writeback_0_3_bits_uop_ctrl_flushPipe),
    .io_writeback_0_3_bits_uop_robIdx_flag(ctrlBlock_io_writeback_0_3_bits_uop_robIdx_flag),
    .io_writeback_0_3_bits_uop_robIdx_value(ctrlBlock_io_writeback_0_3_bits_uop_robIdx_value),
    .io_writeback_0_3_bits_fflags(ctrlBlock_io_writeback_0_3_bits_fflags),
    .io_writeback_0_4_valid(ctrlBlock_io_writeback_0_4_valid),
    .io_writeback_0_4_bits_uop_robIdx_flag(ctrlBlock_io_writeback_0_4_bits_uop_robIdx_flag),
    .io_writeback_0_4_bits_uop_robIdx_value(ctrlBlock_io_writeback_0_4_bits_uop_robIdx_value),
    .io_writeback_0_4_bits_fflags(ctrlBlock_io_writeback_0_4_bits_fflags),
    .io_writeback_0_5_valid(ctrlBlock_io_writeback_0_5_valid),
    .io_writeback_0_5_bits_uop_robIdx_flag(ctrlBlock_io_writeback_0_5_bits_uop_robIdx_flag),
    .io_writeback_0_5_bits_uop_robIdx_value(ctrlBlock_io_writeback_0_5_bits_uop_robIdx_value),
    .io_writeback_0_5_bits_fflags(ctrlBlock_io_writeback_0_5_bits_fflags),
    .io_writeback_0_6_valid(ctrlBlock_io_writeback_0_6_valid),
    .io_writeback_0_6_bits_uop_cf_exceptionVec_4(ctrlBlock_io_writeback_0_6_bits_uop_cf_exceptionVec_4),
    .io_writeback_0_6_bits_uop_cf_exceptionVec_5(ctrlBlock_io_writeback_0_6_bits_uop_cf_exceptionVec_5),
    .io_writeback_0_6_bits_uop_cf_exceptionVec_13(ctrlBlock_io_writeback_0_6_bits_uop_cf_exceptionVec_13),
    .io_writeback_0_6_bits_uop_cf_trigger_backendHit_0(ctrlBlock_io_writeback_0_6_bits_uop_cf_trigger_backendHit_0),
    .io_writeback_0_6_bits_uop_cf_trigger_backendHit_1(ctrlBlock_io_writeback_0_6_bits_uop_cf_trigger_backendHit_1),
    .io_writeback_0_6_bits_uop_cf_trigger_backendHit_2(ctrlBlock_io_writeback_0_6_bits_uop_cf_trigger_backendHit_2),
    .io_writeback_0_6_bits_uop_cf_trigger_backendHit_3(ctrlBlock_io_writeback_0_6_bits_uop_cf_trigger_backendHit_3),
    .io_writeback_0_6_bits_uop_cf_trigger_backendHit_4(ctrlBlock_io_writeback_0_6_bits_uop_cf_trigger_backendHit_4),
    .io_writeback_0_6_bits_uop_cf_trigger_backendHit_5(ctrlBlock_io_writeback_0_6_bits_uop_cf_trigger_backendHit_5),
    .io_writeback_0_6_bits_uop_ctrl_replayInst(ctrlBlock_io_writeback_0_6_bits_uop_ctrl_replayInst),
    .io_writeback_0_6_bits_uop_robIdx_flag(ctrlBlock_io_writeback_0_6_bits_uop_robIdx_flag),
    .io_writeback_0_6_bits_uop_robIdx_value(ctrlBlock_io_writeback_0_6_bits_uop_robIdx_value),
    .io_writeback_0_7_valid(ctrlBlock_io_writeback_0_7_valid),
    .io_writeback_0_7_bits_uop_cf_exceptionVec_4(ctrlBlock_io_writeback_0_7_bits_uop_cf_exceptionVec_4),
    .io_writeback_0_7_bits_uop_cf_exceptionVec_5(ctrlBlock_io_writeback_0_7_bits_uop_cf_exceptionVec_5),
    .io_writeback_0_7_bits_uop_cf_exceptionVec_13(ctrlBlock_io_writeback_0_7_bits_uop_cf_exceptionVec_13),
    .io_writeback_0_7_bits_uop_cf_trigger_backendHit_0(ctrlBlock_io_writeback_0_7_bits_uop_cf_trigger_backendHit_0),
    .io_writeback_0_7_bits_uop_cf_trigger_backendHit_1(ctrlBlock_io_writeback_0_7_bits_uop_cf_trigger_backendHit_1),
    .io_writeback_0_7_bits_uop_cf_trigger_backendHit_2(ctrlBlock_io_writeback_0_7_bits_uop_cf_trigger_backendHit_2),
    .io_writeback_0_7_bits_uop_cf_trigger_backendHit_3(ctrlBlock_io_writeback_0_7_bits_uop_cf_trigger_backendHit_3),
    .io_writeback_0_7_bits_uop_cf_trigger_backendHit_4(ctrlBlock_io_writeback_0_7_bits_uop_cf_trigger_backendHit_4),
    .io_writeback_0_7_bits_uop_cf_trigger_backendHit_5(ctrlBlock_io_writeback_0_7_bits_uop_cf_trigger_backendHit_5),
    .io_writeback_0_7_bits_uop_ctrl_replayInst(ctrlBlock_io_writeback_0_7_bits_uop_ctrl_replayInst),
    .io_writeback_0_7_bits_uop_robIdx_flag(ctrlBlock_io_writeback_0_7_bits_uop_robIdx_flag),
    .io_writeback_0_7_bits_uop_robIdx_value(ctrlBlock_io_writeback_0_7_bits_uop_robIdx_value),
    .io_writeback_0_8_valid(ctrlBlock_io_writeback_0_8_valid),
    .io_writeback_0_8_bits_uop_cf_exceptionVec_4(ctrlBlock_io_writeback_0_8_bits_uop_cf_exceptionVec_4),
    .io_writeback_0_8_bits_uop_cf_exceptionVec_5(ctrlBlock_io_writeback_0_8_bits_uop_cf_exceptionVec_5),
    .io_writeback_0_8_bits_uop_cf_exceptionVec_6(ctrlBlock_io_writeback_0_8_bits_uop_cf_exceptionVec_6),
    .io_writeback_0_8_bits_uop_cf_exceptionVec_7(ctrlBlock_io_writeback_0_8_bits_uop_cf_exceptionVec_7),
    .io_writeback_0_8_bits_uop_cf_exceptionVec_13(ctrlBlock_io_writeback_0_8_bits_uop_cf_exceptionVec_13),
    .io_writeback_0_8_bits_uop_cf_exceptionVec_15(ctrlBlock_io_writeback_0_8_bits_uop_cf_exceptionVec_15),
    .io_writeback_0_8_bits_uop_cf_trigger_backendHit_0(ctrlBlock_io_writeback_0_8_bits_uop_cf_trigger_backendHit_0),
    .io_writeback_0_8_bits_uop_cf_trigger_backendHit_1(ctrlBlock_io_writeback_0_8_bits_uop_cf_trigger_backendHit_1),
    .io_writeback_0_8_bits_uop_cf_trigger_backendHit_2(ctrlBlock_io_writeback_0_8_bits_uop_cf_trigger_backendHit_2),
    .io_writeback_0_8_bits_uop_cf_trigger_backendHit_3(ctrlBlock_io_writeback_0_8_bits_uop_cf_trigger_backendHit_3),
    .io_writeback_0_8_bits_uop_cf_trigger_backendHit_4(ctrlBlock_io_writeback_0_8_bits_uop_cf_trigger_backendHit_4),
    .io_writeback_0_8_bits_uop_cf_trigger_backendHit_5(ctrlBlock_io_writeback_0_8_bits_uop_cf_trigger_backendHit_5),
    .io_writeback_0_8_bits_uop_robIdx_flag(ctrlBlock_io_writeback_0_8_bits_uop_robIdx_flag),
    .io_writeback_0_8_bits_uop_robIdx_value(ctrlBlock_io_writeback_0_8_bits_uop_robIdx_value),
    .io_writeback_0_9_valid(ctrlBlock_io_writeback_0_9_valid),
    .io_writeback_0_9_bits_uop_cf_exceptionVec_6(ctrlBlock_io_writeback_0_9_bits_uop_cf_exceptionVec_6),
    .io_writeback_0_9_bits_uop_cf_exceptionVec_7(ctrlBlock_io_writeback_0_9_bits_uop_cf_exceptionVec_7),
    .io_writeback_0_9_bits_uop_cf_exceptionVec_15(ctrlBlock_io_writeback_0_9_bits_uop_cf_exceptionVec_15),
    .io_writeback_0_9_bits_uop_cf_trigger_backendHit_0(ctrlBlock_io_writeback_0_9_bits_uop_cf_trigger_backendHit_0),
    .io_writeback_0_9_bits_uop_cf_trigger_backendHit_1(ctrlBlock_io_writeback_0_9_bits_uop_cf_trigger_backendHit_1),
    .io_writeback_0_9_bits_uop_cf_trigger_backendHit_4(ctrlBlock_io_writeback_0_9_bits_uop_cf_trigger_backendHit_4),
    .io_writeback_0_9_bits_uop_robIdx_flag(ctrlBlock_io_writeback_0_9_bits_uop_robIdx_flag),
    .io_writeback_0_9_bits_uop_robIdx_value(ctrlBlock_io_writeback_0_9_bits_uop_robIdx_value),
    .io_redirect_valid(ctrlBlock_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(ctrlBlock_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(ctrlBlock_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(ctrlBlock_io_redirect_bits_level),
    .io_debug_int_rat_0(ctrlBlock_io_debug_int_rat_0),
    .io_debug_int_rat_1(ctrlBlock_io_debug_int_rat_1),
    .io_debug_int_rat_2(ctrlBlock_io_debug_int_rat_2),
    .io_debug_int_rat_3(ctrlBlock_io_debug_int_rat_3),
    .io_debug_int_rat_4(ctrlBlock_io_debug_int_rat_4),
    .io_debug_int_rat_5(ctrlBlock_io_debug_int_rat_5),
    .io_debug_int_rat_6(ctrlBlock_io_debug_int_rat_6),
    .io_debug_int_rat_7(ctrlBlock_io_debug_int_rat_7),
    .io_debug_int_rat_8(ctrlBlock_io_debug_int_rat_8),
    .io_debug_int_rat_9(ctrlBlock_io_debug_int_rat_9),
    .io_debug_int_rat_10(ctrlBlock_io_debug_int_rat_10),
    .io_debug_int_rat_11(ctrlBlock_io_debug_int_rat_11),
    .io_debug_int_rat_12(ctrlBlock_io_debug_int_rat_12),
    .io_debug_int_rat_13(ctrlBlock_io_debug_int_rat_13),
    .io_debug_int_rat_14(ctrlBlock_io_debug_int_rat_14),
    .io_debug_int_rat_15(ctrlBlock_io_debug_int_rat_15),
    .io_debug_int_rat_16(ctrlBlock_io_debug_int_rat_16),
    .io_debug_int_rat_17(ctrlBlock_io_debug_int_rat_17),
    .io_debug_int_rat_18(ctrlBlock_io_debug_int_rat_18),
    .io_debug_int_rat_19(ctrlBlock_io_debug_int_rat_19),
    .io_debug_int_rat_20(ctrlBlock_io_debug_int_rat_20),
    .io_debug_int_rat_21(ctrlBlock_io_debug_int_rat_21),
    .io_debug_int_rat_22(ctrlBlock_io_debug_int_rat_22),
    .io_debug_int_rat_23(ctrlBlock_io_debug_int_rat_23),
    .io_debug_int_rat_24(ctrlBlock_io_debug_int_rat_24),
    .io_debug_int_rat_25(ctrlBlock_io_debug_int_rat_25),
    .io_debug_int_rat_26(ctrlBlock_io_debug_int_rat_26),
    .io_debug_int_rat_27(ctrlBlock_io_debug_int_rat_27),
    .io_debug_int_rat_28(ctrlBlock_io_debug_int_rat_28),
    .io_debug_int_rat_29(ctrlBlock_io_debug_int_rat_29),
    .io_debug_int_rat_30(ctrlBlock_io_debug_int_rat_30),
    .io_debug_int_rat_31(ctrlBlock_io_debug_int_rat_31),
    .io_debug_fp_rat_0(ctrlBlock_io_debug_fp_rat_0),
    .io_debug_fp_rat_1(ctrlBlock_io_debug_fp_rat_1),
    .io_debug_fp_rat_2(ctrlBlock_io_debug_fp_rat_2),
    .io_debug_fp_rat_3(ctrlBlock_io_debug_fp_rat_3),
    .io_debug_fp_rat_4(ctrlBlock_io_debug_fp_rat_4),
    .io_debug_fp_rat_5(ctrlBlock_io_debug_fp_rat_5),
    .io_debug_fp_rat_6(ctrlBlock_io_debug_fp_rat_6),
    .io_debug_fp_rat_7(ctrlBlock_io_debug_fp_rat_7),
    .io_debug_fp_rat_8(ctrlBlock_io_debug_fp_rat_8),
    .io_debug_fp_rat_9(ctrlBlock_io_debug_fp_rat_9),
    .io_debug_fp_rat_10(ctrlBlock_io_debug_fp_rat_10),
    .io_debug_fp_rat_11(ctrlBlock_io_debug_fp_rat_11),
    .io_debug_fp_rat_12(ctrlBlock_io_debug_fp_rat_12),
    .io_debug_fp_rat_13(ctrlBlock_io_debug_fp_rat_13),
    .io_debug_fp_rat_14(ctrlBlock_io_debug_fp_rat_14),
    .io_debug_fp_rat_15(ctrlBlock_io_debug_fp_rat_15),
    .io_debug_fp_rat_16(ctrlBlock_io_debug_fp_rat_16),
    .io_debug_fp_rat_17(ctrlBlock_io_debug_fp_rat_17),
    .io_debug_fp_rat_18(ctrlBlock_io_debug_fp_rat_18),
    .io_debug_fp_rat_19(ctrlBlock_io_debug_fp_rat_19),
    .io_debug_fp_rat_20(ctrlBlock_io_debug_fp_rat_20),
    .io_debug_fp_rat_21(ctrlBlock_io_debug_fp_rat_21),
    .io_debug_fp_rat_22(ctrlBlock_io_debug_fp_rat_22),
    .io_debug_fp_rat_23(ctrlBlock_io_debug_fp_rat_23),
    .io_debug_fp_rat_24(ctrlBlock_io_debug_fp_rat_24),
    .io_debug_fp_rat_25(ctrlBlock_io_debug_fp_rat_25),
    .io_debug_fp_rat_26(ctrlBlock_io_debug_fp_rat_26),
    .io_debug_fp_rat_27(ctrlBlock_io_debug_fp_rat_27),
    .io_debug_fp_rat_28(ctrlBlock_io_debug_fp_rat_28),
    .io_debug_fp_rat_29(ctrlBlock_io_debug_fp_rat_29),
    .io_debug_fp_rat_30(ctrlBlock_io_debug_fp_rat_30),
    .io_debug_fp_rat_31(ctrlBlock_io_debug_fp_rat_31),
    .io_robDeqPtr_flag(ctrlBlock_io_robDeqPtr_flag),
    .io_robDeqPtr_value(ctrlBlock_io_robDeqPtr_value),
    .io_robHeadLsIssue(ctrlBlock_io_robHeadLsIssue),
    .perfinfo_perfEventsRs_0_value(ctrlBlock_perfinfo_perfEventsRs_0_value),
    .perfinfo_perfEventsRs_1_value(ctrlBlock_perfinfo_perfEventsRs_1_value),
    .perfinfo_perfEventsRs_2_value(ctrlBlock_perfinfo_perfEventsRs_2_value),
    .perfinfo_perfEventsRs_3_value(ctrlBlock_perfinfo_perfEventsRs_3_value),
    .perfinfo_perfEventsRs_4_value(ctrlBlock_perfinfo_perfEventsRs_4_value),
    .perfinfo_perfEventsRs_5_value(ctrlBlock_perfinfo_perfEventsRs_5_value),
    .perfinfo_perfEventsRs_6_value(ctrlBlock_perfinfo_perfEventsRs_6_value),
    .perfinfo_perfEventsRs_7_value(ctrlBlock_perfinfo_perfEventsRs_7_value),
    .perfinfo_perfEventsEu0_0_value(ctrlBlock_perfinfo_perfEventsEu0_0_value),
    .perfinfo_perfEventsEu0_1_value(ctrlBlock_perfinfo_perfEventsEu0_1_value),
    .perfinfo_perfEventsEu0_2_value(ctrlBlock_perfinfo_perfEventsEu0_2_value),
    .perfinfo_perfEventsEu0_3_value(ctrlBlock_perfinfo_perfEventsEu0_3_value),
    .perfinfo_perfEventsEu0_4_value(ctrlBlock_perfinfo_perfEventsEu0_4_value),
    .perfinfo_perfEventsEu0_5_value(ctrlBlock_perfinfo_perfEventsEu0_5_value),
    .perfinfo_perfEventsEu1_0_value(ctrlBlock_perfinfo_perfEventsEu1_0_value),
    .perfinfo_perfEventsEu1_1_value(ctrlBlock_perfinfo_perfEventsEu1_1_value),
    .perfinfo_perfEventsEu1_2_value(ctrlBlock_perfinfo_perfEventsEu1_2_value),
    .perfinfo_perfEventsEu1_3_value(ctrlBlock_perfinfo_perfEventsEu1_3_value),
    .perfinfo_perfEventsEu1_4_value(ctrlBlock_perfinfo_perfEventsEu1_4_value),
    .perfinfo_perfEventsEu1_5_value(ctrlBlock_perfinfo_perfEventsEu1_5_value),
    .io_perf_0_value(ctrlBlock_io_perf_0_value),
    .io_perf_1_value(ctrlBlock_io_perf_1_value),
    .io_perf_2_value(ctrlBlock_io_perf_2_value),
    .io_perf_3_value(ctrlBlock_io_perf_3_value),
    .io_perf_4_value(ctrlBlock_io_perf_4_value),
    .io_perf_5_value(ctrlBlock_io_perf_5_value),
    .io_perf_6_value(ctrlBlock_io_perf_6_value),
    .io_perf_7_value(ctrlBlock_io_perf_7_value),
    .sourcePaddr_valid(ctrlBlock_sourcePaddr_valid),
    .sourcePaddr_bits(ctrlBlock_sourcePaddr_bits),
    .sourceVaddr_valid(ctrlBlock_sourceVaddr_valid),
    .sourceVaddr_bits(ctrlBlock_sourceVaddr_bits)
  );
  ResetGen resetGen ( // @[ResetGen.scala 52:34]
    .clock(resetGen_clock),
    .reset(resetGen_reset),
    .o_reset(resetGen_o_reset)
  );
  ResetGen resetGen_1 ( // @[ResetGen.scala 52:34]
    .clock(resetGen_1_clock),
    .reset(resetGen_1_reset),
    .o_reset(resetGen_1_o_reset)
  );
  ResetGen resetGen_2 ( // @[ResetGen.scala 52:34]
    .clock(resetGen_2_clock),
    .reset(resetGen_2_reset),
    .o_reset(resetGen_2_o_reset)
  );
  ResetGen resetGen_3 ( // @[ResetGen.scala 52:34]
    .clock(resetGen_3_clock),
    .reset(resetGen_3_reset),
    .o_reset(resetGen_3_o_reset)
  );
  ResetGen resetGen_4 ( // @[ResetGen.scala 52:34]
    .clock(resetGen_4_clock),
    .reset(resetGen_4_reset),
    .o_reset(resetGen_4_o_reset)
  );
  assign auto_memBlock_ptw_to_l2_buffer_out_a_valid = memBlock_auto_ptw_to_l2_buffer_out_a_valid; // @[LazyModule.scala 311:12]
  assign auto_memBlock_ptw_to_l2_buffer_out_a_bits_opcode = memBlock_auto_ptw_to_l2_buffer_out_a_bits_opcode; // @[LazyModule.scala 311:12]
  assign auto_memBlock_ptw_to_l2_buffer_out_a_bits_param = memBlock_auto_ptw_to_l2_buffer_out_a_bits_param; // @[LazyModule.scala 311:12]
  assign auto_memBlock_ptw_to_l2_buffer_out_a_bits_size = memBlock_auto_ptw_to_l2_buffer_out_a_bits_size; // @[LazyModule.scala 311:12]
  assign auto_memBlock_ptw_to_l2_buffer_out_a_bits_source = memBlock_auto_ptw_to_l2_buffer_out_a_bits_source; // @[LazyModule.scala 311:12]
  assign auto_memBlock_ptw_to_l2_buffer_out_a_bits_address = memBlock_auto_ptw_to_l2_buffer_out_a_bits_address; // @[LazyModule.scala 311:12]
  assign auto_memBlock_ptw_to_l2_buffer_out_a_bits_user_reqSource =
    memBlock_auto_ptw_to_l2_buffer_out_a_bits_user_reqSource; // @[LazyModule.scala 311:12]
  assign auto_memBlock_ptw_to_l2_buffer_out_a_bits_mask = memBlock_auto_ptw_to_l2_buffer_out_a_bits_mask; // @[LazyModule.scala 311:12]
  assign auto_memBlock_ptw_to_l2_buffer_out_a_bits_data = memBlock_auto_ptw_to_l2_buffer_out_a_bits_data; // @[LazyModule.scala 311:12]
  assign auto_memBlock_ptw_to_l2_buffer_out_a_bits_corrupt = memBlock_auto_ptw_to_l2_buffer_out_a_bits_corrupt; // @[LazyModule.scala 311:12]
  assign auto_memBlock_ptw_to_l2_buffer_out_d_ready = memBlock_auto_ptw_to_l2_buffer_out_d_ready; // @[LazyModule.scala 311:12]
  assign auto_memBlock_uncache_client_out_a_valid = memBlock_auto_uncache_client_out_a_valid; // @[LazyModule.scala 311:12]
  assign auto_memBlock_uncache_client_out_a_bits_opcode = memBlock_auto_uncache_client_out_a_bits_opcode; // @[LazyModule.scala 311:12]
  assign auto_memBlock_uncache_client_out_a_bits_size = memBlock_auto_uncache_client_out_a_bits_size; // @[LazyModule.scala 311:12]
  assign auto_memBlock_uncache_client_out_a_bits_source = memBlock_auto_uncache_client_out_a_bits_source; // @[LazyModule.scala 311:12]
  assign auto_memBlock_uncache_client_out_a_bits_address = memBlock_auto_uncache_client_out_a_bits_address; // @[LazyModule.scala 311:12]
  assign auto_memBlock_uncache_client_out_a_bits_mask = memBlock_auto_uncache_client_out_a_bits_mask; // @[LazyModule.scala 311:12]
  assign auto_memBlock_uncache_client_out_a_bits_data = memBlock_auto_uncache_client_out_a_bits_data; // @[LazyModule.scala 311:12]
  assign auto_memBlock_uncache_client_out_d_ready = memBlock_auto_uncache_client_out_d_ready; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_a_valid = memBlock_auto_dcache_client_out_a_valid; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_a_bits_opcode = memBlock_auto_dcache_client_out_a_bits_opcode; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_a_bits_param = memBlock_auto_dcache_client_out_a_bits_param; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_a_bits_size = memBlock_auto_dcache_client_out_a_bits_size; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_a_bits_source = memBlock_auto_dcache_client_out_a_bits_source; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_a_bits_address = memBlock_auto_dcache_client_out_a_bits_address; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_a_bits_user_vaddr = memBlock_auto_dcache_client_out_a_bits_user_vaddr; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_a_bits_user_reqSource = memBlock_auto_dcache_client_out_a_bits_user_reqSource; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_a_bits_user_needHint = memBlock_auto_dcache_client_out_a_bits_user_needHint; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_a_bits_mask = memBlock_auto_dcache_client_out_a_bits_mask; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_bready = memBlock_auto_dcache_client_out_bready; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_c_valid = memBlock_auto_dcache_client_out_c_valid; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_c_bits_opcode = memBlock_auto_dcache_client_out_c_bits_opcode; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_c_bits_param = memBlock_auto_dcache_client_out_c_bits_param; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_c_bits_size = memBlock_auto_dcache_client_out_c_bits_size; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_c_bits_source = memBlock_auto_dcache_client_out_c_bits_source; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_c_bits_address = memBlock_auto_dcache_client_out_c_bits_address; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_c_bits_data = memBlock_auto_dcache_client_out_c_bits_data; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_d_ready = memBlock_auto_dcache_client_out_d_ready; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_e_valid = memBlock_auto_dcache_client_out_e_valid; // @[LazyModule.scala 311:12]
  assign auto_memBlock_dcache_client_out_e_bits_sink = memBlock_auto_dcache_client_out_e_bits_sink; // @[LazyModule.scala 311:12]
  assign auto_frontend_icache_client_out_a_valid = frontend_auto_icache_client_out_a_valid; // @[LazyModule.scala 311:12]
  assign auto_frontend_icache_client_out_a_bits_opcode = frontend_auto_icache_client_out_a_bits_opcode; // @[LazyModule.scala 311:12]
  assign auto_frontend_icache_client_out_a_bits_size = frontend_auto_icache_client_out_a_bits_size; // @[LazyModule.scala 311:12]
  assign auto_frontend_icache_client_out_a_bits_source = frontend_auto_icache_client_out_a_bits_source; // @[LazyModule.scala 311:12]
  assign auto_frontend_icache_client_out_a_bits_address = frontend_auto_icache_client_out_a_bits_address; // @[LazyModule.scala 311:12]
  assign auto_frontend_icache_client_out_a_bits_user_reqSource = frontend_auto_icache_client_out_a_bits_user_reqSource; // @[LazyModule.scala 311:12]
  assign auto_frontend_icache_client_out_a_bits_mask = frontend_auto_icache_client_out_a_bits_mask; // @[LazyModule.scala 311:12]
  assign auto_frontend_instrUncache_client_out_a_valid = frontend_auto_instrUncache_client_out_a_valid; // @[LazyModule.scala 311:12]
  assign auto_frontend_instrUncache_client_out_a_bits_address = frontend_auto_instrUncache_client_out_a_bits_address; // @[LazyModule.scala 311:12]
  assign auto_frontend_instrUncache_client_out_d_ready = frontend_auto_instrUncache_client_out_d_ready; // @[LazyModule.scala 311:12]
  assign io_cpu_halt = ctrlBlock_io_cpu_halt; // @[XSCore.scala 262:15]
  assign io_beu_errors_icache_ecc_error_valid = frontend_io_error_report_to_beu; // @[Bundle.scala 597:24 598:30]
  assign io_beu_errors_icache_ecc_error_bits = frontend_io_error_paddr; // @[Bundle.scala 597:24 599:29]
  assign io_beu_errors_dcache_ecc_error_valid = memBlock_io_error_report_to_beu; // @[Bundle.scala 597:24 598:30]
  assign io_beu_errors_dcache_ecc_error_bits = memBlock_io_error_paddr; // @[Bundle.scala 597:24 599:29]
  assign sourcePaddr_valid = ctrlBlock_sourcePaddr_valid;
  assign sourcePaddr_bits = ctrlBlock_sourcePaddr_bits;
  assign frontend_clock = clock;
  assign frontend_reset = resetGen_4_o_reset; // @[ResetGen.scala 50:30 53:22]
  assign frontend_auto_icache_client_out_a_ready = auto_frontend_icache_client_out_a_ready; // @[LazyModule.scala 311:12]
  assign frontend_auto_icache_client_out_d_valid = auto_frontend_icache_client_out_d_valid; // @[LazyModule.scala 311:12]
  assign frontend_auto_icache_client_out_d_bits_opcode = auto_frontend_icache_client_out_d_bits_opcode; // @[LazyModule.scala 311:12]
  assign frontend_auto_icache_client_out_d_bits_source = auto_frontend_icache_client_out_d_bits_source; // @[LazyModule.scala 311:12]
  assign frontend_auto_icache_client_out_d_bits_data = auto_frontend_icache_client_out_d_bits_data; // @[LazyModule.scala 311:12]
  assign frontend_auto_icache_client_out_d_bits_corrupt = auto_frontend_icache_client_out_d_bits_corrupt; // @[LazyModule.scala 311:12]
  assign frontend_auto_instrUncache_client_out_a_ready = auto_frontend_instrUncache_client_out_a_ready; // @[LazyModule.scala 311:12]
  assign frontend_auto_instrUncache_client_out_d_valid = auto_frontend_instrUncache_client_out_d_valid; // @[LazyModule.scala 311:12]
  assign frontend_auto_instrUncache_client_out_d_bits_source = auto_frontend_instrUncache_client_out_d_bits_source; // @[LazyModule.scala 311:12]
  assign frontend_auto_instrUncache_client_out_d_bits_data = auto_frontend_instrUncache_client_out_d_bits_data; // @[LazyModule.scala 311:12]
  assign frontend_io_reset_vector = io_reset_vector; // @[XSCore.scala 260:28]
  assign frontend_io_fencei = exuBlocks_io_fuExtra_fenceio_fencei; // @[XSCore.scala 288:22]
  assign frontend_io_ptw_req_0_ready = memBlock_io_fetch_to_mem_itlb_req_0_ready; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_valid = memBlock_io_fetch_to_mem_itlb_resp_valid; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_entry_tag = memBlock_io_fetch_to_mem_itlb_resp_bits_entry_tag; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_entry_asid = memBlock_io_fetch_to_mem_itlb_resp_bits_entry_asid; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_entry_perm_d = memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_d; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_entry_perm_a = memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_a; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_entry_perm_g = memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_g; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_entry_perm_u = memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_u; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_entry_perm_x = memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_x; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_entry_perm_w = memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_w; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_entry_perm_r = memBlock_io_fetch_to_mem_itlb_resp_bits_entry_perm_r; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_entry_level = memBlock_io_fetch_to_mem_itlb_resp_bits_entry_level; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_entry_ppn = memBlock_io_fetch_to_mem_itlb_resp_bits_entry_ppn; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_ppn_low_0 = memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_0; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_ppn_low_1 = memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_1; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_ppn_low_2 = memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_2; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_ppn_low_3 = memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_3; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_ppn_low_4 = memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_4; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_ppn_low_5 = memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_5; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_ppn_low_6 = memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_6; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_ppn_low_7 = memBlock_io_fetch_to_mem_itlb_resp_bits_ppn_low_7; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_valididx_0 = memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_0; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_valididx_1 = memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_1; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_valididx_2 = memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_2; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_valididx_3 = memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_3; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_valididx_4 = memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_4; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_valididx_5 = memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_5; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_valididx_6 = memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_6; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_valididx_7 = memBlock_io_fetch_to_mem_itlb_resp_bits_valididx_7; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_pf = memBlock_io_fetch_to_mem_itlb_resp_bits_pf; // @[XSCore.scala 413:33]
  assign frontend_io_ptw_resp_bits_af = memBlock_io_fetch_to_mem_itlb_resp_bits_af; // @[XSCore.scala 413:33]
  assign frontend_io_backend_cfVec_0_ready = ctrlBlock_io_frontend_cfVec_0_ready; // @[XSCore.scala 284:23]
  assign frontend_io_backend_cfVec_1_ready = ctrlBlock_io_frontend_cfVec_1_ready; // @[XSCore.scala 284:23]
  assign frontend_io_backend_stallReason_backReason_valid = ctrlBlock_io_frontend_stallReason_backReason_valid; // @[XSCore.scala 284:23]
  assign frontend_io_backend_stallReason_backReason_bits = ctrlBlock_io_frontend_stallReason_backReason_bits; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_rob_commits_0_valid = ctrlBlock_io_frontend_toFtq_rob_commits_0_valid; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_rob_commits_0_bits_commitType =
    ctrlBlock_io_frontend_toFtq_rob_commits_0_bits_commitType; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_rob_commits_0_bits_ftqIdx_flag =
    ctrlBlock_io_frontend_toFtq_rob_commits_0_bits_ftqIdx_flag; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_rob_commits_0_bits_ftqIdx_value =
    ctrlBlock_io_frontend_toFtq_rob_commits_0_bits_ftqIdx_value; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_rob_commits_0_bits_ftqOffset =
    ctrlBlock_io_frontend_toFtq_rob_commits_0_bits_ftqOffset; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_rob_commits_1_valid = ctrlBlock_io_frontend_toFtq_rob_commits_1_valid; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_rob_commits_1_bits_commitType =
    ctrlBlock_io_frontend_toFtq_rob_commits_1_bits_commitType; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_rob_commits_1_bits_ftqIdx_flag =
    ctrlBlock_io_frontend_toFtq_rob_commits_1_bits_ftqIdx_flag; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_rob_commits_1_bits_ftqIdx_value =
    ctrlBlock_io_frontend_toFtq_rob_commits_1_bits_ftqIdx_value; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_rob_commits_1_bits_ftqOffset =
    ctrlBlock_io_frontend_toFtq_rob_commits_1_bits_ftqOffset; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_redirect_valid = ctrlBlock_io_frontend_toFtq_redirect_valid; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_redirect_bits_ftqIdx_flag = ctrlBlock_io_frontend_toFtq_redirect_bits_ftqIdx_flag; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_redirect_bits_ftqIdx_value = ctrlBlock_io_frontend_toFtq_redirect_bits_ftqIdx_value; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_redirect_bits_ftqOffset = ctrlBlock_io_frontend_toFtq_redirect_bits_ftqOffset; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_redirect_bits_level = ctrlBlock_io_frontend_toFtq_redirect_bits_level; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_redirect_bits_cfiUpdate_pc = ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_pc; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_redirect_bits_cfiUpdate_pd_isRVC =
    ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_pd_isRVC; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_redirect_bits_cfiUpdate_pd_brType =
    ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_pd_brType; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_redirect_bits_cfiUpdate_pd_isCall =
    ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_pd_isCall; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_redirect_bits_cfiUpdate_pd_isRet =
    ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_pd_isRet; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_redirect_bits_cfiUpdate_target =
    ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_target; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_redirect_bits_cfiUpdate_taken =
    ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_taken; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_redirect_bits_cfiUpdate_isMisPred =
    ctrlBlock_io_frontend_toFtq_redirect_bits_cfiUpdate_isMisPred; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_redirect_bits_debugIsCtrl = ctrlBlock_io_frontend_toFtq_redirect_bits_debugIsCtrl; // @[XSCore.scala 284:23]
  assign frontend_io_backend_toFtq_redirect_bits_debugIsMemVio = ctrlBlock_io_frontend_toFtq_redirect_bits_debugIsMemVio
    ; // @[XSCore.scala 284:23]
  assign frontend_io_sfence_valid = exuBlocks_io_fuExtra_fenceio_sfence_valid; // @[XSCore.scala 285:22]
  assign frontend_io_sfence_bits_rs1 = exuBlocks_io_fuExtra_fenceio_sfence_bits_rs1; // @[XSCore.scala 285:22]
  assign frontend_io_sfence_bits_rs2 = exuBlocks_io_fuExtra_fenceio_sfence_bits_rs2; // @[XSCore.scala 285:22]
  assign frontend_io_sfence_bits_addr = exuBlocks_io_fuExtra_fenceio_sfence_bits_addr; // @[XSCore.scala 285:22]
  assign frontend_io_sfence_bits_asid = exuBlocks_io_fuExtra_fenceio_sfence_bits_asid; // @[XSCore.scala 285:22]
  assign frontend_io_tlbCsr_satp_mode = exuBlocks_io_fuExtra_csrio_tlb_satp_mode; // @[XSCore.scala 286:22]
  assign frontend_io_tlbCsr_satp_asid = exuBlocks_io_fuExtra_csrio_tlb_satp_asid; // @[XSCore.scala 286:22]
  assign frontend_io_tlbCsr_satp_ppn = exuBlocks_io_fuExtra_csrio_tlb_satp_ppn; // @[XSCore.scala 286:22]
  assign frontend_io_tlbCsr_satp_changed = exuBlocks_io_fuExtra_csrio_tlb_satp_changed; // @[XSCore.scala 286:22]
  assign frontend_io_tlbCsr_priv_mxr = exuBlocks_io_fuExtra_csrio_tlb_priv_mxr; // @[XSCore.scala 286:22]
  assign frontend_io_tlbCsr_priv_sum = exuBlocks_io_fuExtra_csrio_tlb_priv_sum; // @[XSCore.scala 286:22]
  assign frontend_io_tlbCsr_priv_imode = exuBlocks_io_fuExtra_csrio_tlb_priv_imode; // @[XSCore.scala 286:22]
  assign frontend_io_tlbCsr_priv_dmode = exuBlocks_io_fuExtra_csrio_tlb_priv_dmode; // @[XSCore.scala 286:22]
  assign frontend_io_csrCtrl_l2_pf_store_only = exuBlocks_io_fuExtra_csrio_customCtrl_l2_pf_store_only; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_icache_parity_enable = exuBlocks_io_fuExtra_csrio_customCtrl_icache_parity_enable; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_lvpred_timeout = exuBlocks_io_fuExtra_csrio_customCtrl_lvpred_timeout; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_bp_ctrl_ubtb_enable = exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_ubtb_enable; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_bp_ctrl_btb_enable = exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_btb_enable; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_bp_ctrl_tage_enable = exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_tage_enable; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_bp_ctrl_sc_enable = exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_sc_enable; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_bp_ctrl_ras_enable = exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_ras_enable; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_ldld_vio_check_enable = exuBlocks_io_fuExtra_csrio_customCtrl_ldld_vio_check_enable; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_cache_error_enable = exuBlocks_io_fuExtra_csrio_customCtrl_cache_error_enable; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_uncache_write_outstanding_enable =
    exuBlocks_io_fuExtra_csrio_customCtrl_uncache_write_outstanding_enable; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_fusion_enable = exuBlocks_io_fuExtra_csrio_customCtrl_fusion_enable; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_wfi_enable = exuBlocks_io_fuExtra_csrio_customCtrl_wfi_enable; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_svinval_enable = exuBlocks_io_fuExtra_csrio_customCtrl_svinval_enable; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_distribute_csr_wvalid = exuBlocks_io_fuExtra_csrio_customCtrl_distribute_csr_wvalid; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_distribute_csr_waddr =
    exuBlocks_io_fuExtra_csrio_customCtrl_distribute_csr_waddr; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_distribute_csr_wdata =
    exuBlocks_io_fuExtra_csrio_customCtrl_distribute_csr_wdata; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_singlestep = exuBlocks_io_fuExtra_csrio_customCtrl_singlestep; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_frontend_trigger_t_valid = exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_valid; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_frontend_trigger_t_bits_addr =
    exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_addr; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_frontend_trigger_t_bits_tdata_matchType =
    exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_frontend_trigger_t_bits_tdata_select =
    exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_frontend_trigger_t_bits_tdata_timing =
    exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_frontend_trigger_t_bits_tdata_chain =
    exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_frontend_trigger_t_bits_tdata_tdata2 =
    exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_mem_trigger_t_valid = exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_valid; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_mem_trigger_t_bits_addr = exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_addr; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_mem_trigger_t_bits_tdata_matchType =
    exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_mem_trigger_t_bits_tdata_select =
    exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_select; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_mem_trigger_t_bits_tdata_chain =
    exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_mem_trigger_t_bits_tdata_tdata2 =
    exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_trigger_enable_0 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_0; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_trigger_enable_1 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_1; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_trigger_enable_2 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_2; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_trigger_enable_3 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_3; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_trigger_enable_4 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_4; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_trigger_enable_5 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_5; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_trigger_enable_6 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_6; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_trigger_enable_7 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_7; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_trigger_enable_8 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_8; // @[XSCore.scala 287:23]
  assign frontend_io_csrCtrl_trigger_enable_9 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_9; // @[XSCore.scala 287:23]
  assign wbArbiter_clock = clock;
  assign wbArbiter_reset = resetGen_2_o_reset; // @[ResetGen.scala 50:30 53:22]
  assign wbArbiter_io_hartId = io_hartId[7:0]; // @[XSCore.scala 259:36]
  assign wbArbiter_io_redirect_valid = ctrlBlock_io_redirect_valid; // @[XSCore.scala 264:38]
  assign wbArbiter_io_redirect_bits_robIdx_flag = ctrlBlock_io_redirect_bits_robIdx_flag; // @[XSCore.scala 264:38]
  assign wbArbiter_io_redirect_bits_robIdx_value = ctrlBlock_io_redirect_bits_robIdx_value; // @[XSCore.scala 264:38]
  assign wbArbiter_io_redirect_bits_level = ctrlBlock_io_redirect_bits_level; // @[XSCore.scala 264:38]
  assign wbArbiter_io_in_0_valid = exuBlocks_io_fuWriteback_0_valid; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_0_bits_uop_ctrl_rfWen = exuBlocks_io_fuWriteback_0_bits_uop_ctrl_rfWen; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_0_bits_uop_pdest = exuBlocks_io_fuWriteback_0_bits_uop_pdest; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_0_bits_uop_robIdx_flag = exuBlocks_io_fuWriteback_0_bits_uop_robIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_0_bits_uop_robIdx_value = exuBlocks_io_fuWriteback_0_bits_uop_robIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_0_bits_uop_lqIdx_flag = exuBlocks_io_fuWriteback_0_bits_uop_lqIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_0_bits_uop_lqIdx_value = exuBlocks_io_fuWriteback_0_bits_uop_lqIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_0_bits_data = exuBlocks_io_fuWriteback_0_bits_data; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_0_bits_redirectValid = exuBlocks_io_fuWriteback_0_bits_redirectValid; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_0_bits_redirect_cfiUpdate_isMisPred =
    exuBlocks_io_fuWriteback_0_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_1_valid = exuBlocks_io_fuWriteback_1_valid; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_1_bits_uop_ctrl_rfWen = exuBlocks_io_fuWriteback_1_bits_uop_ctrl_rfWen; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_1_bits_uop_pdest = exuBlocks_io_fuWriteback_1_bits_uop_pdest; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_1_bits_uop_robIdx_flag = exuBlocks_io_fuWriteback_1_bits_uop_robIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_1_bits_uop_robIdx_value = exuBlocks_io_fuWriteback_1_bits_uop_robIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_1_bits_uop_lqIdx_flag = exuBlocks_io_fuWriteback_1_bits_uop_lqIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_1_bits_uop_lqIdx_value = exuBlocks_io_fuWriteback_1_bits_uop_lqIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_1_bits_data = exuBlocks_io_fuWriteback_1_bits_data; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_1_bits_redirectValid = exuBlocks_io_fuWriteback_1_bits_redirectValid; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_1_bits_redirect_cfiUpdate_isMisPred =
    exuBlocks_io_fuWriteback_1_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_2_valid = exuBlocks_io_fuWriteback_2_valid; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_2_bits_uop_ctrl_rfWen = exuBlocks_io_fuWriteback_2_bits_uop_ctrl_rfWen; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_2_bits_uop_ctrl_fpWen = exuBlocks_io_fuWriteback_2_bits_uop_ctrl_fpWen; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_2_bits_uop_pdest = exuBlocks_io_fuWriteback_2_bits_uop_pdest; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_2_bits_uop_robIdx_flag = exuBlocks_io_fuWriteback_2_bits_uop_robIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_2_bits_uop_robIdx_value = exuBlocks_io_fuWriteback_2_bits_uop_robIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_2_bits_uop_lqIdx_flag = exuBlocks_io_fuWriteback_2_bits_uop_lqIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_2_bits_uop_lqIdx_value = exuBlocks_io_fuWriteback_2_bits_uop_lqIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_2_bits_data = exuBlocks_io_fuWriteback_2_bits_data; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_3_valid = exuBlocks_io_fuWriteback_3_valid; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_3_bits_uop_cf_exceptionVec_2 = exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_2; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_3_bits_uop_cf_exceptionVec_3 = exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_3; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_3_bits_uop_cf_exceptionVec_8 = exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_8; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_3_bits_uop_cf_exceptionVec_9 = exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_9; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_3_bits_uop_cf_exceptionVec_11 = exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_11; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_3_bits_uop_ctrl_rfWen = exuBlocks_io_fuWriteback_3_bits_uop_ctrl_rfWen; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_3_bits_uop_ctrl_fpWen = exuBlocks_io_fuWriteback_3_bits_uop_ctrl_fpWen; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_3_bits_uop_ctrl_flushPipe = exuBlocks_io_fuWriteback_3_bits_uop_ctrl_flushPipe; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_3_bits_uop_pdest = exuBlocks_io_fuWriteback_3_bits_uop_pdest; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_3_bits_uop_robIdx_flag = exuBlocks_io_fuWriteback_3_bits_uop_robIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_3_bits_uop_robIdx_value = exuBlocks_io_fuWriteback_3_bits_uop_robIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_3_bits_uop_lqIdx_flag = exuBlocks_io_fuWriteback_3_bits_uop_lqIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_3_bits_uop_lqIdx_value = exuBlocks_io_fuWriteback_3_bits_uop_lqIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_3_bits_data = exuBlocks_io_fuWriteback_3_bits_data; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_3_bits_redirectValid = exuBlocks_io_fuWriteback_3_bits_redirectValid; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_3_bits_redirect_cfiUpdate_isMisPred =
    exuBlocks_io_fuWriteback_3_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_3_bits_debug_isPerfCnt = exuBlocks_io_fuWriteback_3_bits_debug_isPerfCnt; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_4_valid = exuBlocks_1_io_fuWriteback_0_valid; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_4_bits_uop_cf_trigger_backendHit_0 =
    exuBlocks_1_io_fuWriteback_0_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_4_bits_uop_cf_trigger_backendHit_1 =
    exuBlocks_1_io_fuWriteback_0_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_4_bits_uop_cf_trigger_backendHit_2 =
    exuBlocks_1_io_fuWriteback_0_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_4_bits_uop_cf_trigger_backendHit_3 =
    exuBlocks_1_io_fuWriteback_0_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_4_bits_uop_cf_trigger_backendHit_4 =
    exuBlocks_1_io_fuWriteback_0_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_4_bits_uop_cf_trigger_backendHit_5 =
    exuBlocks_1_io_fuWriteback_0_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_4_bits_uop_ctrl_rfWen = exuBlocks_1_io_fuWriteback_0_bits_uop_ctrl_rfWen; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_4_bits_uop_ctrl_fpWen = exuBlocks_1_io_fuWriteback_0_bits_uop_ctrl_fpWen; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_4_bits_uop_pdest = exuBlocks_1_io_fuWriteback_0_bits_uop_pdest; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_4_bits_uop_robIdx_flag = exuBlocks_1_io_fuWriteback_0_bits_uop_robIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_4_bits_uop_robIdx_value = exuBlocks_1_io_fuWriteback_0_bits_uop_robIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_4_bits_uop_lqIdx_flag = exuBlocks_1_io_fuWriteback_0_bits_uop_lqIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_4_bits_uop_lqIdx_value = exuBlocks_1_io_fuWriteback_0_bits_uop_lqIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_4_bits_data = exuBlocks_1_io_fuWriteback_0_bits_data; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_5_valid = exuBlocks_1_io_fuWriteback_1_valid; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_5_bits_uop_ctrl_rfWen = exuBlocks_1_io_fuWriteback_1_bits_uop_ctrl_rfWen; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_5_bits_uop_ctrl_fpWen = exuBlocks_1_io_fuWriteback_1_bits_uop_ctrl_fpWen; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_5_bits_uop_pdest = exuBlocks_1_io_fuWriteback_1_bits_uop_pdest; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_5_bits_uop_robIdx_flag = exuBlocks_1_io_fuWriteback_1_bits_uop_robIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_5_bits_uop_robIdx_value = exuBlocks_1_io_fuWriteback_1_bits_uop_robIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_5_bits_uop_lqIdx_flag = exuBlocks_1_io_fuWriteback_1_bits_uop_lqIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_5_bits_uop_lqIdx_value = exuBlocks_1_io_fuWriteback_1_bits_uop_lqIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_5_bits_data = exuBlocks_1_io_fuWriteback_1_bits_data; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_valid = memBlock_io_mem_to_ooo_writeback_0_valid; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_uop_cf_exceptionVec_4 = memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_uop_cf_exceptionVec_5 = memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_uop_cf_exceptionVec_13 = memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_uop_cf_trigger_backendHit_0 =
    memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_uop_cf_trigger_backendHit_1 =
    memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_uop_cf_trigger_backendHit_2 =
    memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_uop_cf_trigger_backendHit_3 =
    memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_uop_cf_trigger_backendHit_4 =
    memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_uop_cf_trigger_backendHit_5 =
    memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_uop_ctrl_rfWen = memBlock_io_mem_to_ooo_writeback_0_bits_uop_ctrl_rfWen; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_uop_ctrl_fpWen = memBlock_io_mem_to_ooo_writeback_0_bits_uop_ctrl_fpWen; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_uop_ctrl_replayInst = memBlock_io_mem_to_ooo_writeback_0_bits_uop_ctrl_replayInst; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_uop_pdest = memBlock_io_mem_to_ooo_writeback_0_bits_uop_pdest; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_uop_robIdx_flag = memBlock_io_mem_to_ooo_writeback_0_bits_uop_robIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_uop_robIdx_value = memBlock_io_mem_to_ooo_writeback_0_bits_uop_robIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_uop_lqIdx_flag = memBlock_io_mem_to_ooo_writeback_0_bits_uop_lqIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_uop_lqIdx_value = memBlock_io_mem_to_ooo_writeback_0_bits_uop_lqIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_data = memBlock_io_mem_to_ooo_writeback_0_bits_data; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_6_bits_debug_isMMIO = memBlock_io_mem_to_ooo_writeback_0_bits_debug_isMMIO; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_valid = memBlock_io_mem_to_ooo_writeback_1_valid; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_uop_cf_exceptionVec_4 = memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_uop_cf_exceptionVec_5 = memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_uop_cf_exceptionVec_13 = memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_uop_cf_trigger_backendHit_0 =
    memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_uop_cf_trigger_backendHit_1 =
    memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_uop_cf_trigger_backendHit_2 =
    memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_uop_cf_trigger_backendHit_3 =
    memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_uop_cf_trigger_backendHit_4 =
    memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_uop_cf_trigger_backendHit_5 =
    memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_uop_ctrl_rfWen = memBlock_io_mem_to_ooo_writeback_1_bits_uop_ctrl_rfWen; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_uop_ctrl_fpWen = memBlock_io_mem_to_ooo_writeback_1_bits_uop_ctrl_fpWen; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_uop_ctrl_replayInst = memBlock_io_mem_to_ooo_writeback_1_bits_uop_ctrl_replayInst; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_uop_pdest = memBlock_io_mem_to_ooo_writeback_1_bits_uop_pdest; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_uop_robIdx_flag = memBlock_io_mem_to_ooo_writeback_1_bits_uop_robIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_uop_robIdx_value = memBlock_io_mem_to_ooo_writeback_1_bits_uop_robIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_uop_lqIdx_flag = memBlock_io_mem_to_ooo_writeback_1_bits_uop_lqIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_uop_lqIdx_value = memBlock_io_mem_to_ooo_writeback_1_bits_uop_lqIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_data = memBlock_io_mem_to_ooo_writeback_1_bits_data; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_7_bits_debug_isMMIO = memBlock_io_mem_to_ooo_writeback_1_bits_debug_isMMIO; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_valid = memBlock_io_mem_to_ooo_writeback_2_valid; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_uop_cf_exceptionVec_4 = memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_uop_cf_exceptionVec_5 = memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_uop_cf_exceptionVec_6 = memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_6; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_uop_cf_exceptionVec_7 = memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_7; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_uop_cf_exceptionVec_13 = memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_uop_cf_exceptionVec_15 = memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_15; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_0 =
    memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_1 =
    memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_2 =
    memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_3 =
    memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_4 =
    memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_5 =
    memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_uop_robIdx_flag = memBlock_io_mem_to_ooo_writeback_2_bits_uop_robIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_uop_robIdx_value = memBlock_io_mem_to_ooo_writeback_2_bits_uop_robIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_uop_lqIdx_flag = memBlock_io_mem_to_ooo_writeback_2_bits_uop_lqIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_uop_lqIdx_value = memBlock_io_mem_to_ooo_writeback_2_bits_uop_lqIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_redirectValid = 1'h0; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_redirect_cfiUpdate_isMisPred = 1'h0; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_debug_isMMIO = memBlock_io_mem_to_ooo_writeback_2_bits_debug_isMMIO; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_8_bits_debug_isPerfCnt = 1'h0; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_valid = memBlock_io_mem_to_ooo_writeback_3_valid; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_uop_cf_exceptionVec_4 = 1'h0; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_uop_cf_exceptionVec_5 = 1'h0; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_uop_cf_exceptionVec_6 = memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_exceptionVec_6; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_uop_cf_exceptionVec_7 = memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_exceptionVec_7; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_uop_cf_exceptionVec_13 = 1'h0; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_uop_cf_exceptionVec_15 = memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_exceptionVec_15; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_0 =
    memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_1 =
    memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_2 = 1'h0; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_3 = 1'h0; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_4 =
    memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_5 = 1'h0; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_uop_robIdx_flag = memBlock_io_mem_to_ooo_writeback_3_bits_uop_robIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_uop_robIdx_value = memBlock_io_mem_to_ooo_writeback_3_bits_uop_robIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_uop_lqIdx_flag = memBlock_io_mem_to_ooo_writeback_3_bits_uop_lqIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_uop_lqIdx_value = memBlock_io_mem_to_ooo_writeback_3_bits_uop_lqIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_redirectValid = 1'h0; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_redirect_cfiUpdate_isMisPred = 1'h0; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_debug_isMMIO = memBlock_io_mem_to_ooo_writeback_3_bits_debug_isMMIO; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_9_bits_debug_isPerfCnt = 1'h0; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_10_valid = memBlock_io_mem_to_ooo_writeback_4_valid; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_10_bits_uop_robIdx_flag = memBlock_io_mem_to_ooo_writeback_4_bits_uop_robIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_10_bits_uop_robIdx_value = memBlock_io_mem_to_ooo_writeback_4_bits_uop_robIdx_value; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_11_valid = memBlock_io_mem_to_ooo_writeback_5_valid; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_11_bits_uop_robIdx_flag = memBlock_io_mem_to_ooo_writeback_5_bits_uop_robIdx_flag; // @[XSCore.scala 267:32]
  assign wbArbiter_io_in_11_bits_uop_robIdx_value = memBlock_io_mem_to_ooo_writeback_5_bits_uop_robIdx_value; // @[XSCore.scala 267:32]
  assign exuBlocks_clock = clock;
  assign exuBlocks_reset = resetGen_1_o_reset; // @[ResetGen.scala 50:30 53:22]
  assign exuBlocks_io_hartId = io_hartId[7:0]; // @[XSCore.scala 257:33]
  assign exuBlocks_io_redirect_valid = ctrlBlock_io_redirect_valid; // @[XSCore.scala 352:18]
  assign exuBlocks_io_redirect_bits_robIdx_flag = ctrlBlock_io_redirect_bits_robIdx_flag; // @[XSCore.scala 352:18]
  assign exuBlocks_io_redirect_bits_robIdx_value = ctrlBlock_io_redirect_bits_robIdx_value; // @[XSCore.scala 352:18]
  assign exuBlocks_io_redirect_bits_level = ctrlBlock_io_redirect_bits_level; // @[XSCore.scala 352:18]
  assign exuBlocks_io_allocPregs_0_isInt = ctrlBlock_io_allocPregs_0_isInt; // @[XSCore.scala 353:20]
  assign exuBlocks_io_allocPregs_0_isFp = ctrlBlock_io_allocPregs_0_isFp; // @[XSCore.scala 353:20]
  assign exuBlocks_io_allocPregs_0_preg = ctrlBlock_io_allocPregs_0_preg; // @[XSCore.scala 353:20]
  assign exuBlocks_io_allocPregs_1_isInt = ctrlBlock_io_allocPregs_1_isInt; // @[XSCore.scala 353:20]
  assign exuBlocks_io_allocPregs_1_isFp = ctrlBlock_io_allocPregs_1_isFp; // @[XSCore.scala 353:20]
  assign exuBlocks_io_allocPregs_1_preg = ctrlBlock_io_allocPregs_1_preg; // @[XSCore.scala 353:20]
  assign exuBlocks_io_in_0_valid = ctrlBlock_io_dispatch_0_valid; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_cf_trigger_backendEn_0 = ctrlBlock_io_dispatch_0_bits_cf_trigger_backendEn_0; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_cf_trigger_backendEn_1 = ctrlBlock_io_dispatch_0_bits_cf_trigger_backendEn_1; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_cf_pd_isRVC = ctrlBlock_io_dispatch_0_bits_cf_pd_isRVC; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_cf_pd_brType = ctrlBlock_io_dispatch_0_bits_cf_pd_brType; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_cf_pd_isCall = ctrlBlock_io_dispatch_0_bits_cf_pd_isCall; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_cf_pd_isRet = ctrlBlock_io_dispatch_0_bits_cf_pd_isRet; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_cf_pred_taken = ctrlBlock_io_dispatch_0_bits_cf_pred_taken; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_cf_storeSetHit = ctrlBlock_io_dispatch_0_bits_cf_storeSetHit; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_cf_loadWaitStrict = ctrlBlock_io_dispatch_0_bits_cf_loadWaitStrict; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_cf_ssid = ctrlBlock_io_dispatch_0_bits_cf_ssid; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_cf_ftqPtr_flag = ctrlBlock_io_dispatch_0_bits_cf_ftqPtr_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_cf_ftqPtr_value = ctrlBlock_io_dispatch_0_bits_cf_ftqPtr_value; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_cf_ftqOffset = ctrlBlock_io_dispatch_0_bits_cf_ftqOffset; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_srcType_0 = ctrlBlock_io_dispatch_0_bits_ctrl_srcType_0; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_srcType_1 = ctrlBlock_io_dispatch_0_bits_ctrl_srcType_1; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_fuType = ctrlBlock_io_dispatch_0_bits_ctrl_fuType; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_fuOpType = ctrlBlock_io_dispatch_0_bits_ctrl_fuOpType; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_rfWen = ctrlBlock_io_dispatch_0_bits_ctrl_rfWen; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_fpWen = ctrlBlock_io_dispatch_0_bits_ctrl_fpWen; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_selImm = ctrlBlock_io_dispatch_0_bits_ctrl_selImm; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_imm = ctrlBlock_io_dispatch_0_bits_ctrl_imm; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_fpu_isAddSub = ctrlBlock_io_dispatch_0_bits_ctrl_fpu_isAddSub; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_fpu_typeTagIn = ctrlBlock_io_dispatch_0_bits_ctrl_fpu_typeTagIn; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_fpu_typeTagOut = ctrlBlock_io_dispatch_0_bits_ctrl_fpu_typeTagOut; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_fpu_fromInt = ctrlBlock_io_dispatch_0_bits_ctrl_fpu_fromInt; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_fpu_wflags = ctrlBlock_io_dispatch_0_bits_ctrl_fpu_wflags; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_fpu_fpWen = ctrlBlock_io_dispatch_0_bits_ctrl_fpu_fpWen; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_fpu_fmaCmd = ctrlBlock_io_dispatch_0_bits_ctrl_fpu_fmaCmd; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_fpu_div = ctrlBlock_io_dispatch_0_bits_ctrl_fpu_div; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_fpu_sqrt = ctrlBlock_io_dispatch_0_bits_ctrl_fpu_sqrt; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_fpu_fcvt = ctrlBlock_io_dispatch_0_bits_ctrl_fpu_fcvt; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_fpu_typ = ctrlBlock_io_dispatch_0_bits_ctrl_fpu_typ; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_fpu_fmt = ctrlBlock_io_dispatch_0_bits_ctrl_fpu_fmt; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_fpu_ren3 = ctrlBlock_io_dispatch_0_bits_ctrl_fpu_ren3; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_ctrl_fpu_rm = ctrlBlock_io_dispatch_0_bits_ctrl_fpu_rm; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_psrc_0 = ctrlBlock_io_dispatch_0_bits_psrc_0; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_psrc_1 = ctrlBlock_io_dispatch_0_bits_psrc_1; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_pdest = ctrlBlock_io_dispatch_0_bits_pdest; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_robIdx_flag = ctrlBlock_io_dispatch_0_bits_robIdx_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_robIdx_value = ctrlBlock_io_dispatch_0_bits_robIdx_value; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_lqIdx_flag = ctrlBlock_io_dispatch_0_bits_lqIdx_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_lqIdx_value = ctrlBlock_io_dispatch_0_bits_lqIdx_value; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_sqIdx_flag = ctrlBlock_io_dispatch_0_bits_sqIdx_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_0_bits_sqIdx_value = ctrlBlock_io_dispatch_0_bits_sqIdx_value; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_valid = ctrlBlock_io_dispatch_1_valid; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_cf_trigger_backendEn_0 = ctrlBlock_io_dispatch_1_bits_cf_trigger_backendEn_0; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_cf_trigger_backendEn_1 = ctrlBlock_io_dispatch_1_bits_cf_trigger_backendEn_1; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_cf_pd_isRVC = ctrlBlock_io_dispatch_1_bits_cf_pd_isRVC; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_cf_pd_brType = ctrlBlock_io_dispatch_1_bits_cf_pd_brType; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_cf_pd_isCall = ctrlBlock_io_dispatch_1_bits_cf_pd_isCall; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_cf_pd_isRet = ctrlBlock_io_dispatch_1_bits_cf_pd_isRet; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_cf_pred_taken = ctrlBlock_io_dispatch_1_bits_cf_pred_taken; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_cf_storeSetHit = ctrlBlock_io_dispatch_1_bits_cf_storeSetHit; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_cf_loadWaitStrict = ctrlBlock_io_dispatch_1_bits_cf_loadWaitStrict; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_cf_ssid = ctrlBlock_io_dispatch_1_bits_cf_ssid; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_cf_ftqPtr_flag = ctrlBlock_io_dispatch_1_bits_cf_ftqPtr_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_cf_ftqPtr_value = ctrlBlock_io_dispatch_1_bits_cf_ftqPtr_value; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_cf_ftqOffset = ctrlBlock_io_dispatch_1_bits_cf_ftqOffset; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_ctrl_srcType_0 = ctrlBlock_io_dispatch_1_bits_ctrl_srcType_0; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_ctrl_srcType_1 = ctrlBlock_io_dispatch_1_bits_ctrl_srcType_1; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_ctrl_fuType = ctrlBlock_io_dispatch_1_bits_ctrl_fuType; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_ctrl_fuOpType = ctrlBlock_io_dispatch_1_bits_ctrl_fuOpType; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_ctrl_rfWen = ctrlBlock_io_dispatch_1_bits_ctrl_rfWen; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_ctrl_fpWen = ctrlBlock_io_dispatch_1_bits_ctrl_fpWen; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_ctrl_selImm = ctrlBlock_io_dispatch_1_bits_ctrl_selImm; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_ctrl_imm = ctrlBlock_io_dispatch_1_bits_ctrl_imm; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_psrc_0 = ctrlBlock_io_dispatch_1_bits_psrc_0; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_psrc_1 = ctrlBlock_io_dispatch_1_bits_psrc_1; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_pdest = ctrlBlock_io_dispatch_1_bits_pdest; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_robIdx_flag = ctrlBlock_io_dispatch_1_bits_robIdx_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_robIdx_value = ctrlBlock_io_dispatch_1_bits_robIdx_value; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_lqIdx_flag = ctrlBlock_io_dispatch_1_bits_lqIdx_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_lqIdx_value = ctrlBlock_io_dispatch_1_bits_lqIdx_value; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_sqIdx_flag = ctrlBlock_io_dispatch_1_bits_sqIdx_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_1_bits_sqIdx_value = ctrlBlock_io_dispatch_1_bits_sqIdx_value; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_valid = ctrlBlock_io_dispatch_4_valid; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_cf_trigger_backendEn_0 = ctrlBlock_io_dispatch_4_bits_cf_trigger_backendEn_0; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_cf_trigger_backendEn_1 = ctrlBlock_io_dispatch_4_bits_cf_trigger_backendEn_1; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_cf_pd_isRVC = ctrlBlock_io_dispatch_4_bits_cf_pd_isRVC; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_cf_pd_brType = ctrlBlock_io_dispatch_4_bits_cf_pd_brType; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_cf_pd_isCall = ctrlBlock_io_dispatch_4_bits_cf_pd_isCall; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_cf_pd_isRet = ctrlBlock_io_dispatch_4_bits_cf_pd_isRet; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_cf_pred_taken = ctrlBlock_io_dispatch_4_bits_cf_pred_taken; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_cf_storeSetHit = ctrlBlock_io_dispatch_4_bits_cf_storeSetHit; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_cf_loadWaitStrict = ctrlBlock_io_dispatch_4_bits_cf_loadWaitStrict; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_cf_ssid = ctrlBlock_io_dispatch_4_bits_cf_ssid; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_cf_ftqPtr_flag = ctrlBlock_io_dispatch_4_bits_cf_ftqPtr_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_cf_ftqPtr_value = ctrlBlock_io_dispatch_4_bits_cf_ftqPtr_value; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_cf_ftqOffset = ctrlBlock_io_dispatch_4_bits_cf_ftqOffset; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_ctrl_srcType_0 = ctrlBlock_io_dispatch_4_bits_ctrl_srcType_0; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_ctrl_srcType_1 = ctrlBlock_io_dispatch_4_bits_ctrl_srcType_1; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_ctrl_fuType = ctrlBlock_io_dispatch_4_bits_ctrl_fuType; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_ctrl_fuOpType = ctrlBlock_io_dispatch_4_bits_ctrl_fuOpType; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_ctrl_rfWen = ctrlBlock_io_dispatch_4_bits_ctrl_rfWen; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_ctrl_fpWen = ctrlBlock_io_dispatch_4_bits_ctrl_fpWen; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_ctrl_imm = ctrlBlock_io_dispatch_4_bits_ctrl_imm; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_psrc_0 = ctrlBlock_io_dispatch_4_bits_psrc_0; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_psrc_1 = ctrlBlock_io_dispatch_4_bits_psrc_1; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_pdest = ctrlBlock_io_dispatch_4_bits_pdest; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_robIdx_flag = ctrlBlock_io_dispatch_4_bits_robIdx_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_4_bits_robIdx_value = ctrlBlock_io_dispatch_4_bits_robIdx_value; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_valid = ctrlBlock_io_dispatch_5_valid; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_cf_trigger_backendEn_0 = ctrlBlock_io_dispatch_5_bits_cf_trigger_backendEn_0; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_cf_trigger_backendEn_1 = ctrlBlock_io_dispatch_5_bits_cf_trigger_backendEn_1; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_cf_pd_isRVC = ctrlBlock_io_dispatch_5_bits_cf_pd_isRVC; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_cf_pd_brType = ctrlBlock_io_dispatch_5_bits_cf_pd_brType; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_cf_pd_isCall = ctrlBlock_io_dispatch_5_bits_cf_pd_isCall; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_cf_pd_isRet = ctrlBlock_io_dispatch_5_bits_cf_pd_isRet; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_cf_pred_taken = ctrlBlock_io_dispatch_5_bits_cf_pred_taken; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_cf_storeSetHit = ctrlBlock_io_dispatch_5_bits_cf_storeSetHit; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_cf_loadWaitStrict = ctrlBlock_io_dispatch_5_bits_cf_loadWaitStrict; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_cf_ssid = ctrlBlock_io_dispatch_5_bits_cf_ssid; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_cf_ftqPtr_flag = ctrlBlock_io_dispatch_5_bits_cf_ftqPtr_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_cf_ftqPtr_value = ctrlBlock_io_dispatch_5_bits_cf_ftqPtr_value; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_cf_ftqOffset = ctrlBlock_io_dispatch_5_bits_cf_ftqOffset; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_ctrl_srcType_0 = ctrlBlock_io_dispatch_5_bits_ctrl_srcType_0; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_ctrl_srcType_1 = ctrlBlock_io_dispatch_5_bits_ctrl_srcType_1; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_ctrl_fuType = ctrlBlock_io_dispatch_5_bits_ctrl_fuType; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_ctrl_fuOpType = ctrlBlock_io_dispatch_5_bits_ctrl_fuOpType; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_ctrl_rfWen = ctrlBlock_io_dispatch_5_bits_ctrl_rfWen; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_ctrl_fpWen = ctrlBlock_io_dispatch_5_bits_ctrl_fpWen; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_ctrl_imm = ctrlBlock_io_dispatch_5_bits_ctrl_imm; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_psrc_0 = ctrlBlock_io_dispatch_5_bits_psrc_0; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_psrc_1 = ctrlBlock_io_dispatch_5_bits_psrc_1; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_pdest = ctrlBlock_io_dispatch_5_bits_pdest; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_robIdx_flag = ctrlBlock_io_dispatch_5_bits_robIdx_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_5_bits_robIdx_value = ctrlBlock_io_dispatch_5_bits_robIdx_value; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_valid = ctrlBlock_io_dispatch_6_valid; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_cf_trigger_backendEn_0 = ctrlBlock_io_dispatch_6_bits_cf_trigger_backendEn_0; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_cf_trigger_backendEn_1 = ctrlBlock_io_dispatch_6_bits_cf_trigger_backendEn_1; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_cf_pd_isRVC = ctrlBlock_io_dispatch_6_bits_cf_pd_isRVC; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_cf_pd_brType = ctrlBlock_io_dispatch_6_bits_cf_pd_brType; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_cf_pd_isCall = ctrlBlock_io_dispatch_6_bits_cf_pd_isCall; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_cf_pd_isRet = ctrlBlock_io_dispatch_6_bits_cf_pd_isRet; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_cf_pred_taken = ctrlBlock_io_dispatch_6_bits_cf_pred_taken; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_cf_storeSetHit = ctrlBlock_io_dispatch_6_bits_cf_storeSetHit; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_cf_loadWaitStrict = ctrlBlock_io_dispatch_6_bits_cf_loadWaitStrict; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_cf_ssid = ctrlBlock_io_dispatch_6_bits_cf_ssid; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_cf_ftqPtr_flag = ctrlBlock_io_dispatch_6_bits_cf_ftqPtr_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_cf_ftqPtr_value = ctrlBlock_io_dispatch_6_bits_cf_ftqPtr_value; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_cf_ftqOffset = ctrlBlock_io_dispatch_6_bits_cf_ftqOffset; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_ctrl_srcType_0 = ctrlBlock_io_dispatch_6_bits_ctrl_srcType_0; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_ctrl_srcType_1 = ctrlBlock_io_dispatch_6_bits_ctrl_srcType_1; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_ctrl_fuType = ctrlBlock_io_dispatch_6_bits_ctrl_fuType; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_ctrl_fuOpType = ctrlBlock_io_dispatch_6_bits_ctrl_fuOpType; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_ctrl_rfWen = ctrlBlock_io_dispatch_6_bits_ctrl_rfWen; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_ctrl_fpWen = ctrlBlock_io_dispatch_6_bits_ctrl_fpWen; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_ctrl_imm = ctrlBlock_io_dispatch_6_bits_ctrl_imm; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_psrc_0 = ctrlBlock_io_dispatch_6_bits_psrc_0; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_psrc_1 = ctrlBlock_io_dispatch_6_bits_psrc_1; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_pdest = ctrlBlock_io_dispatch_6_bits_pdest; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_robIdx_flag = ctrlBlock_io_dispatch_6_bits_robIdx_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_6_bits_robIdx_value = ctrlBlock_io_dispatch_6_bits_robIdx_value; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_valid = ctrlBlock_io_dispatch_7_valid; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_cf_trigger_backendEn_0 = ctrlBlock_io_dispatch_7_bits_cf_trigger_backendEn_0; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_cf_trigger_backendEn_1 = ctrlBlock_io_dispatch_7_bits_cf_trigger_backendEn_1; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_cf_pd_isRVC = ctrlBlock_io_dispatch_7_bits_cf_pd_isRVC; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_cf_pd_brType = ctrlBlock_io_dispatch_7_bits_cf_pd_brType; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_cf_pd_isCall = ctrlBlock_io_dispatch_7_bits_cf_pd_isCall; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_cf_pd_isRet = ctrlBlock_io_dispatch_7_bits_cf_pd_isRet; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_cf_pred_taken = ctrlBlock_io_dispatch_7_bits_cf_pred_taken; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_cf_storeSetHit = ctrlBlock_io_dispatch_7_bits_cf_storeSetHit; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_cf_loadWaitStrict = ctrlBlock_io_dispatch_7_bits_cf_loadWaitStrict; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_cf_ssid = ctrlBlock_io_dispatch_7_bits_cf_ssid; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_cf_ftqPtr_flag = ctrlBlock_io_dispatch_7_bits_cf_ftqPtr_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_cf_ftqPtr_value = ctrlBlock_io_dispatch_7_bits_cf_ftqPtr_value; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_cf_ftqOffset = ctrlBlock_io_dispatch_7_bits_cf_ftqOffset; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_ctrl_srcType_0 = ctrlBlock_io_dispatch_7_bits_ctrl_srcType_0; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_ctrl_srcType_1 = ctrlBlock_io_dispatch_7_bits_ctrl_srcType_1; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_ctrl_fuType = ctrlBlock_io_dispatch_7_bits_ctrl_fuType; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_ctrl_fuOpType = ctrlBlock_io_dispatch_7_bits_ctrl_fuOpType; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_ctrl_rfWen = ctrlBlock_io_dispatch_7_bits_ctrl_rfWen; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_ctrl_fpWen = ctrlBlock_io_dispatch_7_bits_ctrl_fpWen; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_ctrl_imm = ctrlBlock_io_dispatch_7_bits_ctrl_imm; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_psrc_0 = ctrlBlock_io_dispatch_7_bits_psrc_0; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_psrc_1 = ctrlBlock_io_dispatch_7_bits_psrc_1; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_pdest = ctrlBlock_io_dispatch_7_bits_pdest; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_robIdx_flag = ctrlBlock_io_dispatch_7_bits_robIdx_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_io_in_7_bits_robIdx_value = ctrlBlock_io_dispatch_7_bits_robIdx_value; // @[XSCore.scala 313:25]
  assign exuBlocks_io_issue_0_ready = memBlock_io_ooo_to_mem_issue_0_ready; // @[XSCore.scala 343:32]
  assign exuBlocks_io_issue_1_ready = memBlock_io_ooo_to_mem_issue_1_ready; // @[XSCore.scala 343:32]
  assign exuBlocks_io_issue_2_ready = memBlock_io_ooo_to_mem_issue_2_ready; // @[XSCore.scala 343:32]
  assign exuBlocks_io_issue_3_ready = memBlock_io_ooo_to_mem_issue_3_ready; // @[XSCore.scala 343:32]
  assign exuBlocks_io_issue_4_ready = memBlock_io_ooo_to_mem_issue_4_ready; // @[XSCore.scala 343:32]
  assign exuBlocks_io_issue_5_ready = memBlock_io_ooo_to_mem_issue_5_ready; // @[XSCore.scala 343:32]
  assign exuBlocks_io_rfWriteback_2_valid = wbArbiter_io_out_2_valid; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_2_bits_uop_ctrl_rfWen = wbArbiter_io_out_2_bits_uop_ctrl_rfWen; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_2_bits_uop_ctrl_fpWen = wbArbiter_io_out_2_bits_uop_ctrl_fpWen; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_2_bits_uop_pdest = wbArbiter_io_out_2_bits_uop_pdest; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_2_bits_data = wbArbiter_io_out_2_bits_data; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_3_valid = wbArbiter_io_out_3_valid; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_3_bits_uop_ctrl_rfWen = wbArbiter_io_out_3_bits_uop_ctrl_rfWen; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_3_bits_uop_ctrl_fpWen = wbArbiter_io_out_3_bits_uop_ctrl_fpWen; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_3_bits_uop_pdest = wbArbiter_io_out_3_bits_uop_pdest; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_3_bits_data = wbArbiter_io_out_3_bits_data; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_4_valid = wbArbiter_io_out_4_valid; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_4_bits_uop_ctrl_rfWen = wbArbiter_io_out_4_bits_uop_ctrl_rfWen; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_4_bits_uop_ctrl_fpWen = wbArbiter_io_out_4_bits_uop_ctrl_fpWen; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_4_bits_uop_pdest = wbArbiter_io_out_4_bits_uop_pdest; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_4_bits_data = wbArbiter_io_out_4_bits_data; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_5_valid = wbArbiter_io_out_5_valid; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_5_bits_uop_ctrl_rfWen = wbArbiter_io_out_5_bits_uop_ctrl_rfWen; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_5_bits_uop_ctrl_fpWen = wbArbiter_io_out_5_bits_uop_ctrl_fpWen; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_5_bits_uop_pdest = wbArbiter_io_out_5_bits_uop_pdest; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_5_bits_data = wbArbiter_io_out_5_bits_data; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_6_valid = wbArbiter_io_out_6_valid; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_6_bits_uop_ctrl_rfWen = wbArbiter_io_out_6_bits_uop_ctrl_rfWen; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_6_bits_uop_ctrl_fpWen = wbArbiter_io_out_6_bits_uop_ctrl_fpWen; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_6_bits_uop_pdest = wbArbiter_io_out_6_bits_uop_pdest; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_6_bits_data = wbArbiter_io_out_6_bits_data; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_7_valid = wbArbiter_io_out_7_valid; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_7_bits_uop_ctrl_rfWen = wbArbiter_io_out_7_bits_uop_ctrl_rfWen; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_7_bits_uop_ctrl_fpWen = wbArbiter_io_out_7_bits_uop_ctrl_fpWen; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_7_bits_uop_pdest = wbArbiter_io_out_7_bits_uop_pdest; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_7_bits_data = wbArbiter_io_out_7_bits_data; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_8_valid = wbArbiter_io_out_8_valid; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_8_bits_uop_ctrl_rfWen = wbArbiter_io_out_8_bits_uop_ctrl_rfWen; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_8_bits_uop_ctrl_fpWen = wbArbiter_io_out_8_bits_uop_ctrl_fpWen; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_8_bits_uop_pdest = wbArbiter_io_out_8_bits_uop_pdest; // @[XSCore.scala 354:21]
  assign exuBlocks_io_rfWriteback_8_bits_data = wbArbiter_io_out_8_bits_data; // @[XSCore.scala 354:21]
  assign exuBlocks_io_fastUopIn_2_valid = memBlock_io_mem_to_ooo_otherFastWakeup_0_valid; // @[XSCore.scala 355:19]
  assign exuBlocks_io_fastUopIn_2_bits_ctrl_rfWen = memBlock_io_mem_to_ooo_otherFastWakeup_0_bits_ctrl_rfWen; // @[XSCore.scala 355:19]
  assign exuBlocks_io_fastUopIn_2_bits_pdest = memBlock_io_mem_to_ooo_otherFastWakeup_0_bits_pdest; // @[XSCore.scala 355:19]
  assign exuBlocks_io_fastUopIn_3_valid = memBlock_io_mem_to_ooo_otherFastWakeup_1_valid; // @[XSCore.scala 355:19]
  assign exuBlocks_io_fastUopIn_3_bits_ctrl_rfWen = memBlock_io_mem_to_ooo_otherFastWakeup_1_bits_ctrl_rfWen; // @[XSCore.scala 355:19]
  assign exuBlocks_io_fastUopIn_3_bits_pdest = memBlock_io_mem_to_ooo_otherFastWakeup_1_bits_pdest; // @[XSCore.scala 355:19]
  assign exuBlocks_io_fuWriteback_3_ready = wbArbiter_io_in_3_ready; // @[XSCore.scala 267:32]
  assign exuBlocks_io_scheExtra_feedback_0_feedbackSlow_valid = memBlock_io_rsfeedback_0_feedbackSlow_valid; // @[XSCore.scala 419:26]
  assign exuBlocks_io_scheExtra_feedback_0_feedbackSlow_bits_rsIdx = memBlock_io_rsfeedback_0_feedbackSlow_bits_rsIdx; // @[XSCore.scala 419:26]
  assign exuBlocks_io_scheExtra_feedback_0_feedbackSlow_bits_hit = memBlock_io_rsfeedback_0_feedbackSlow_bits_hit; // @[XSCore.scala 419:26]
  assign exuBlocks_io_scheExtra_feedback_0_feedbackFast_valid = memBlock_io_rsfeedback_0_feedbackFast_valid; // @[XSCore.scala 419:26]
  assign exuBlocks_io_scheExtra_feedback_0_feedbackFast_bits_rsIdx = memBlock_io_rsfeedback_0_feedbackFast_bits_rsIdx; // @[XSCore.scala 419:26]
  assign exuBlocks_io_scheExtra_feedback_1_feedbackSlow_valid = memBlock_io_rsfeedback_1_feedbackSlow_valid; // @[XSCore.scala 419:26]
  assign exuBlocks_io_scheExtra_feedback_1_feedbackSlow_bits_rsIdx = memBlock_io_rsfeedback_1_feedbackSlow_bits_rsIdx; // @[XSCore.scala 419:26]
  assign exuBlocks_io_scheExtra_feedback_1_feedbackSlow_bits_hit = memBlock_io_rsfeedback_1_feedbackSlow_bits_hit; // @[XSCore.scala 419:26]
  assign exuBlocks_io_scheExtra_feedback_1_feedbackFast_valid = memBlock_io_rsfeedback_1_feedbackFast_valid; // @[XSCore.scala 419:26]
  assign exuBlocks_io_scheExtra_feedback_1_feedbackFast_bits_rsIdx = memBlock_io_rsfeedback_1_feedbackFast_bits_rsIdx; // @[XSCore.scala 419:26]
  assign exuBlocks_io_scheExtra_feedback_2_feedbackSlow_valid = memBlock_io_rsfeedback_2_feedbackSlow_valid; // @[XSCore.scala 419:26]
  assign exuBlocks_io_scheExtra_feedback_2_feedbackSlow_bits_rsIdx = memBlock_io_rsfeedback_2_feedbackSlow_bits_rsIdx; // @[XSCore.scala 419:26]
  assign exuBlocks_io_scheExtra_feedback_2_feedbackSlow_bits_hit = memBlock_io_rsfeedback_2_feedbackSlow_bits_hit; // @[XSCore.scala 419:26]
  assign exuBlocks_io_scheExtra_feedback_3_feedbackSlow_valid = memBlock_io_rsfeedback_3_feedbackSlow_valid; // @[XSCore.scala 419:26]
  assign exuBlocks_io_scheExtra_feedback_3_feedbackSlow_bits_rsIdx = memBlock_io_rsfeedback_3_feedbackSlow_bits_rsIdx; // @[XSCore.scala 419:26]
  assign exuBlocks_io_scheExtra_feedback_3_feedbackSlow_bits_hit = memBlock_io_rsfeedback_3_feedbackSlow_bits_hit; // @[XSCore.scala 419:26]
  assign exuBlocks_io_scheExtra_fpRfReadIn_0_data = exuBlocks_1_io_scheExtra_fpRfReadOut_0_data; // @[XSCore.scala 324:44]
  assign exuBlocks_io_scheExtra_fpRfReadIn_1_data = exuBlocks_1_io_scheExtra_fpRfReadOut_1_data; // @[XSCore.scala 324:44]
  assign exuBlocks_io_scheExtra_jumpPc = ctrlBlock_io_jumpPc; // @[XSCore.scala 356:26]
  assign exuBlocks_io_scheExtra_jalr_target = ctrlBlock_io_jalr_target; // @[XSCore.scala 357:31]
  assign exuBlocks_io_scheExtra_lcommit = memBlock_io_mem_to_ooo_lqDeq; // @[XSCore.scala 297:28]
  assign exuBlocks_io_scheExtra_scommit = memBlock_io_mem_to_ooo_sqDeq; // @[XSCore.scala 298:28]
  assign exuBlocks_io_scheExtra_lqCancelCnt = memBlock_io_mem_to_ooo_lqCancelCnt; // @[XSCore.scala 299:32]
  assign exuBlocks_io_scheExtra_sqCancelCnt = memBlock_io_mem_to_ooo_sqCancelCnt; // @[XSCore.scala 300:32]
  assign exuBlocks_io_scheExtra_debug_int_rat_0 = ctrlBlock_io_debug_int_rat_0; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_1 = ctrlBlock_io_debug_int_rat_1; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_2 = ctrlBlock_io_debug_int_rat_2; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_3 = ctrlBlock_io_debug_int_rat_3; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_4 = ctrlBlock_io_debug_int_rat_4; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_5 = ctrlBlock_io_debug_int_rat_5; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_6 = ctrlBlock_io_debug_int_rat_6; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_7 = ctrlBlock_io_debug_int_rat_7; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_8 = ctrlBlock_io_debug_int_rat_8; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_9 = ctrlBlock_io_debug_int_rat_9; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_10 = ctrlBlock_io_debug_int_rat_10; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_11 = ctrlBlock_io_debug_int_rat_11; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_12 = ctrlBlock_io_debug_int_rat_12; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_13 = ctrlBlock_io_debug_int_rat_13; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_14 = ctrlBlock_io_debug_int_rat_14; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_15 = ctrlBlock_io_debug_int_rat_15; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_16 = ctrlBlock_io_debug_int_rat_16; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_17 = ctrlBlock_io_debug_int_rat_17; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_18 = ctrlBlock_io_debug_int_rat_18; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_19 = ctrlBlock_io_debug_int_rat_19; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_20 = ctrlBlock_io_debug_int_rat_20; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_21 = ctrlBlock_io_debug_int_rat_21; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_22 = ctrlBlock_io_debug_int_rat_22; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_23 = ctrlBlock_io_debug_int_rat_23; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_24 = ctrlBlock_io_debug_int_rat_24; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_25 = ctrlBlock_io_debug_int_rat_25; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_26 = ctrlBlock_io_debug_int_rat_26; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_27 = ctrlBlock_io_debug_int_rat_27; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_28 = ctrlBlock_io_debug_int_rat_28; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_29 = ctrlBlock_io_debug_int_rat_29; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_30 = ctrlBlock_io_debug_int_rat_30; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_debug_int_rat_31 = ctrlBlock_io_debug_int_rat_31; // @[XSCore.scala 360:33]
  assign exuBlocks_io_scheExtra_robDeqPtr_flag = ctrlBlock_io_robDeqPtr_flag; // @[XSCore.scala 361:29]
  assign exuBlocks_io_scheExtra_robDeqPtr_value = ctrlBlock_io_robDeqPtr_value; // @[XSCore.scala 361:29]
  assign exuBlocks_io_fuExtra_csrio_hartId = io_hartId[7:0]; // @[XSCore.scala 378:18]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_0_value = frontend_io_perf_0_value; // @[XSCore.scala 385:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_1_value = frontend_io_perf_1_value; // @[XSCore.scala 385:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_2_value = frontend_io_perf_2_value; // @[XSCore.scala 385:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_3_value = frontend_io_perf_3_value; // @[XSCore.scala 385:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_4_value = frontend_io_perf_4_value; // @[XSCore.scala 385:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_5_value = frontend_io_perf_5_value; // @[XSCore.scala 385:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_6_value = frontend_io_perf_6_value; // @[XSCore.scala 385:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsFrontend_7_value = frontend_io_perf_7_value; // @[XSCore.scala 385:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_0_value = ctrlBlock_io_perf_0_value; // @[XSCore.scala 386:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_1_value = ctrlBlock_io_perf_1_value; // @[XSCore.scala 386:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_2_value = ctrlBlock_io_perf_2_value; // @[XSCore.scala 386:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_3_value = ctrlBlock_io_perf_3_value; // @[XSCore.scala 386:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_4_value = ctrlBlock_io_perf_4_value; // @[XSCore.scala 386:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_5_value = ctrlBlock_io_perf_5_value; // @[XSCore.scala 386:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_6_value = ctrlBlock_io_perf_6_value; // @[XSCore.scala 386:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsCtrl_7_value = ctrlBlock_io_perf_7_value; // @[XSCore.scala 386:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_0_value = memBlock_io_perf_0_value; // @[XSCore.scala 387:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_1_value = memBlock_io_perf_1_value; // @[XSCore.scala 387:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_2_value = memBlock_io_perf_2_value; // @[XSCore.scala 387:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_3_value = memBlock_io_perf_3_value; // @[XSCore.scala 387:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_4_value = memBlock_io_perf_4_value; // @[XSCore.scala 387:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_5_value = memBlock_io_perf_5_value; // @[XSCore.scala 387:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_6_value = memBlock_io_perf_6_value; // @[XSCore.scala 387:35]
  assign exuBlocks_io_fuExtra_csrio_perf_perfEventsLsu_7_value = memBlock_io_perf_7_value; // @[XSCore.scala 387:35]
  assign exuBlocks_io_fuExtra_csrio_perf_retiredInstr = ctrlBlock_io_robio_toCSR_perfinfo_retiredInstr; // @[XSCore.scala 380:29]
  assign exuBlocks_io_fuExtra_csrio_fpu_fflags_valid = ctrlBlock_io_robio_toCSR_fflags_valid; // @[XSCore.scala 390:22]
  assign exuBlocks_io_fuExtra_csrio_fpu_fflags_bits = ctrlBlock_io_robio_toCSR_fflags_bits; // @[XSCore.scala 390:22]
  assign exuBlocks_io_fuExtra_csrio_fpu_dirty_fs = ctrlBlock_io_robio_toCSR_dirty_fs; // @[XSCore.scala 392:24]
  assign exuBlocks_io_fuExtra_csrio_exception_valid = ctrlBlock_io_robio_exception_valid; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_pc = ctrlBlock_io_robio_exception_bits_uop_cf_pc; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_0 =
    ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_0; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_1 =
    ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_1; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_2 =
    ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_2; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_3 =
    ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_3; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_4 =
    ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_4; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_5 =
    ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_5; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_6 =
    ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_6; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_7 =
    ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_7; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_8 =
    ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_8; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_9 =
    ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_9; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_11 =
    ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_11; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_12 =
    ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_12; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_13 =
    ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_13; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_exceptionVec_15 =
    ctrlBlock_io_robio_exception_bits_uop_cf_exceptionVec_15; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_0 =
    ctrlBlock_io_robio_exception_bits_uop_cf_trigger_frontendHit_0; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_1 =
    ctrlBlock_io_robio_exception_bits_uop_cf_trigger_frontendHit_1; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_2 =
    ctrlBlock_io_robio_exception_bits_uop_cf_trigger_frontendHit_2; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_frontendHit_3 =
    ctrlBlock_io_robio_exception_bits_uop_cf_trigger_frontendHit_3; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_0 =
    ctrlBlock_io_robio_exception_bits_uop_cf_trigger_backendHit_0; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_1 =
    ctrlBlock_io_robio_exception_bits_uop_cf_trigger_backendHit_1; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_2 =
    ctrlBlock_io_robio_exception_bits_uop_cf_trigger_backendHit_2; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_3 =
    ctrlBlock_io_robio_exception_bits_uop_cf_trigger_backendHit_3; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_4 =
    ctrlBlock_io_robio_exception_bits_uop_cf_trigger_backendHit_4; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_trigger_backendHit_5 =
    ctrlBlock_io_robio_exception_bits_uop_cf_trigger_backendHit_5; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_cf_crossPageIPFFix =
    ctrlBlock_io_robio_exception_bits_uop_cf_crossPageIPFFix; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_uop_ctrl_singleStep =
    ctrlBlock_io_robio_exception_bits_uop_ctrl_singleStep; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_exception_bits_isInterrupt = ctrlBlock_io_robio_exception_bits_isInterrupt; // @[XSCore.scala 394:21]
  assign exuBlocks_io_fuExtra_csrio_memExceptionVAddr = memBlock_io_mem_to_ooo_lsqio_vaddr; // @[XSCore.scala 399:29]
  assign exuBlocks_io_fuExtra_csrio_externalInterrupt_mtip = auto_clint_int_sink_in_1; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign exuBlocks_io_fuExtra_csrio_externalInterrupt_msip = auto_clint_int_sink_in_0; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign exuBlocks_io_fuExtra_csrio_externalInterrupt_meip = auto_plic_int_sink_in_0_0; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign exuBlocks_io_fuExtra_csrio_externalInterrupt_seip = auto_plic_int_sink_in_1_0; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign exuBlocks_io_fuExtra_csrio_externalInterrupt_debug = auto_debug_int_sink_in_0; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign exuBlocks_io_fuExtra_csrio_distributedUpdate_0_wvalid = memBlock_io_mem_to_ooo_csrUpdate_wvalid; // @[XSCore.scala 407:40]
  assign exuBlocks_io_fuExtra_csrio_distributedUpdate_0_waddr = memBlock_io_mem_to_ooo_csrUpdate_waddr; // @[XSCore.scala 408:39]
  assign exuBlocks_io_fuExtra_csrio_distributedUpdate_0_wdata = memBlock_io_mem_to_ooo_csrUpdate_wdata; // @[XSCore.scala 408:39]
  assign exuBlocks_io_fuExtra_csrio_distributedUpdate_1_wvalid = frontend_io_csrUpdate_wvalid; // @[XSCore.scala 409:40]
  assign exuBlocks_io_fuExtra_csrio_distributedUpdate_1_waddr = frontend_io_csrUpdate_waddr; // @[XSCore.scala 410:39]
  assign exuBlocks_io_fuExtra_csrio_distributedUpdate_1_wdata = frontend_io_csrUpdate_wdata; // @[XSCore.scala 410:39]
  assign exuBlocks_io_fuExtra_fenceio_sbuffer_sbIsEmpty = memBlock_io_mem_to_ooo_sbIsEmpty; // @[XSCore.scala 415:29]
  assign exuBlocks_1_clock = clock;
  assign exuBlocks_1_reset = resetGen_2_o_reset; // @[ResetGen.scala 50:30 53:22]
  assign exuBlocks_1_io_hartId = io_hartId[7:0]; // @[XSCore.scala 257:33]
  assign exuBlocks_1_io_redirect_valid = ctrlBlock_io_redirect_valid; // @[XSCore.scala 352:18]
  assign exuBlocks_1_io_redirect_bits_robIdx_flag = ctrlBlock_io_redirect_bits_robIdx_flag; // @[XSCore.scala 352:18]
  assign exuBlocks_1_io_redirect_bits_robIdx_value = ctrlBlock_io_redirect_bits_robIdx_value; // @[XSCore.scala 352:18]
  assign exuBlocks_1_io_redirect_bits_level = ctrlBlock_io_redirect_bits_level; // @[XSCore.scala 352:18]
  assign exuBlocks_1_io_allocPregs_0_isFp = ctrlBlock_io_allocPregs_0_isFp; // @[XSCore.scala 353:20]
  assign exuBlocks_1_io_allocPregs_0_preg = ctrlBlock_io_allocPregs_0_preg; // @[XSCore.scala 353:20]
  assign exuBlocks_1_io_allocPregs_1_isFp = ctrlBlock_io_allocPregs_1_isFp; // @[XSCore.scala 353:20]
  assign exuBlocks_1_io_allocPregs_1_preg = ctrlBlock_io_allocPregs_1_preg; // @[XSCore.scala 353:20]
  assign exuBlocks_1_io_in_0_valid = ctrlBlock_io_dispatch_8_valid; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_cf_pd_isRVC = ctrlBlock_io_dispatch_8_bits_cf_pd_isRVC; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_cf_pd_brType = ctrlBlock_io_dispatch_8_bits_cf_pd_brType; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_cf_pd_isCall = ctrlBlock_io_dispatch_8_bits_cf_pd_isCall; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_cf_pd_isRet = ctrlBlock_io_dispatch_8_bits_cf_pd_isRet; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_cf_pred_taken = ctrlBlock_io_dispatch_8_bits_cf_pred_taken; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_cf_ftqPtr_flag = ctrlBlock_io_dispatch_8_bits_cf_ftqPtr_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_cf_ftqPtr_value = ctrlBlock_io_dispatch_8_bits_cf_ftqPtr_value; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_cf_ftqOffset = ctrlBlock_io_dispatch_8_bits_cf_ftqOffset; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_srcType_0 = ctrlBlock_io_dispatch_8_bits_ctrl_srcType_0; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_srcType_1 = ctrlBlock_io_dispatch_8_bits_ctrl_srcType_1; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_srcType_2 = ctrlBlock_io_dispatch_8_bits_ctrl_srcType_2; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_fuType = ctrlBlock_io_dispatch_8_bits_ctrl_fuType; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_fuOpType = ctrlBlock_io_dispatch_8_bits_ctrl_fuOpType; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_rfWen = ctrlBlock_io_dispatch_8_bits_ctrl_rfWen; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_fpWen = ctrlBlock_io_dispatch_8_bits_ctrl_fpWen; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_imm = ctrlBlock_io_dispatch_8_bits_ctrl_imm; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_fpu_isAddSub = ctrlBlock_io_dispatch_8_bits_ctrl_fpu_isAddSub; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_fpu_typeTagIn = ctrlBlock_io_dispatch_8_bits_ctrl_fpu_typeTagIn; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_fpu_typeTagOut = ctrlBlock_io_dispatch_8_bits_ctrl_fpu_typeTagOut; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_fpu_fromInt = ctrlBlock_io_dispatch_8_bits_ctrl_fpu_fromInt; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_fpu_wflags = ctrlBlock_io_dispatch_8_bits_ctrl_fpu_wflags; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_fpu_fpWen = ctrlBlock_io_dispatch_8_bits_ctrl_fpu_fpWen; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_fpu_fmaCmd = ctrlBlock_io_dispatch_8_bits_ctrl_fpu_fmaCmd; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_fpu_div = ctrlBlock_io_dispatch_8_bits_ctrl_fpu_div; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_fpu_sqrt = ctrlBlock_io_dispatch_8_bits_ctrl_fpu_sqrt; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_fpu_fcvt = ctrlBlock_io_dispatch_8_bits_ctrl_fpu_fcvt; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_fpu_typ = ctrlBlock_io_dispatch_8_bits_ctrl_fpu_typ; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_fpu_fmt = ctrlBlock_io_dispatch_8_bits_ctrl_fpu_fmt; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_fpu_ren3 = ctrlBlock_io_dispatch_8_bits_ctrl_fpu_ren3; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_ctrl_fpu_rm = ctrlBlock_io_dispatch_8_bits_ctrl_fpu_rm; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_psrc_0 = ctrlBlock_io_dispatch_8_bits_psrc_0; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_psrc_1 = ctrlBlock_io_dispatch_8_bits_psrc_1; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_psrc_2 = ctrlBlock_io_dispatch_8_bits_psrc_2; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_pdest = ctrlBlock_io_dispatch_8_bits_pdest; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_robIdx_flag = ctrlBlock_io_dispatch_8_bits_robIdx_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_robIdx_value = ctrlBlock_io_dispatch_8_bits_robIdx_value; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_lqIdx_flag = ctrlBlock_io_dispatch_8_bits_lqIdx_flag; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_in_0_bits_lqIdx_value = ctrlBlock_io_dispatch_8_bits_lqIdx_value; // @[XSCore.scala 313:25]
  assign exuBlocks_1_io_rfWriteback_6_valid = wbArbiter_io_out_6_valid; // @[XSCore.scala 354:21]
  assign exuBlocks_1_io_rfWriteback_6_bits_uop_ctrl_fpWen = wbArbiter_io_out_6_bits_uop_ctrl_fpWen; // @[XSCore.scala 354:21]
  assign exuBlocks_1_io_rfWriteback_6_bits_uop_pdest = wbArbiter_io_out_6_bits_uop_pdest; // @[XSCore.scala 354:21]
  assign exuBlocks_1_io_rfWriteback_6_bits_data = wbArbiter_io_out_6_bits_data; // @[XSCore.scala 354:21]
  assign exuBlocks_1_io_rfWriteback_7_valid = wbArbiter_io_out_7_valid; // @[XSCore.scala 354:21]
  assign exuBlocks_1_io_rfWriteback_7_bits_uop_ctrl_fpWen = wbArbiter_io_out_7_bits_uop_ctrl_fpWen; // @[XSCore.scala 354:21]
  assign exuBlocks_1_io_rfWriteback_7_bits_uop_pdest = wbArbiter_io_out_7_bits_uop_pdest; // @[XSCore.scala 354:21]
  assign exuBlocks_1_io_rfWriteback_7_bits_data = wbArbiter_io_out_7_bits_data; // @[XSCore.scala 354:21]
  assign exuBlocks_1_io_rfWriteback_8_valid = wbArbiter_io_out_8_valid; // @[XSCore.scala 354:21]
  assign exuBlocks_1_io_rfWriteback_8_bits_uop_ctrl_fpWen = wbArbiter_io_out_8_bits_uop_ctrl_fpWen; // @[XSCore.scala 354:21]
  assign exuBlocks_1_io_rfWriteback_8_bits_uop_pdest = wbArbiter_io_out_8_bits_uop_pdest; // @[XSCore.scala 354:21]
  assign exuBlocks_1_io_rfWriteback_8_bits_data = wbArbiter_io_out_8_bits_data; // @[XSCore.scala 354:21]
  assign exuBlocks_1_io_fastUopIn_5_valid = exuBlocks_1_io_fastUopOut_0_valid; // @[XSCore.scala 355:19]
  assign exuBlocks_1_io_fastUopIn_5_bits_ctrl_fpWen = exuBlocks_1_io_fastUopOut_0_bits_ctrl_fpWen; // @[XSCore.scala 355:19]
  assign exuBlocks_1_io_fastUopIn_5_bits_pdest = exuBlocks_1_io_fastUopOut_0_bits_pdest; // @[XSCore.scala 355:19]
  assign exuBlocks_1_io_fuWriteback_0_ready = 1'h1; // @[XSCore.scala 267:32]
  assign exuBlocks_1_io_fuWriteback_1_ready = wbArbiter_io_in_5_ready; // @[XSCore.scala 267:32]
  assign exuBlocks_1_io_scheExtra_fpRfReadOut_0_addr = exuBlocks_io_scheExtra_fpRfReadIn_0_addr; // @[XSCore.scala 324:44]
  assign exuBlocks_1_io_scheExtra_fpRfReadOut_1_addr = exuBlocks_io_scheExtra_fpRfReadIn_1_addr; // @[XSCore.scala 324:44]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_0 = ctrlBlock_io_debug_fp_rat_0; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_1 = ctrlBlock_io_debug_fp_rat_1; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_2 = ctrlBlock_io_debug_fp_rat_2; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_3 = ctrlBlock_io_debug_fp_rat_3; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_4 = ctrlBlock_io_debug_fp_rat_4; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_5 = ctrlBlock_io_debug_fp_rat_5; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_6 = ctrlBlock_io_debug_fp_rat_6; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_7 = ctrlBlock_io_debug_fp_rat_7; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_8 = ctrlBlock_io_debug_fp_rat_8; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_9 = ctrlBlock_io_debug_fp_rat_9; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_10 = ctrlBlock_io_debug_fp_rat_10; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_11 = ctrlBlock_io_debug_fp_rat_11; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_12 = ctrlBlock_io_debug_fp_rat_12; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_13 = ctrlBlock_io_debug_fp_rat_13; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_14 = ctrlBlock_io_debug_fp_rat_14; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_15 = ctrlBlock_io_debug_fp_rat_15; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_16 = ctrlBlock_io_debug_fp_rat_16; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_17 = ctrlBlock_io_debug_fp_rat_17; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_18 = ctrlBlock_io_debug_fp_rat_18; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_19 = ctrlBlock_io_debug_fp_rat_19; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_20 = ctrlBlock_io_debug_fp_rat_20; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_21 = ctrlBlock_io_debug_fp_rat_21; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_22 = ctrlBlock_io_debug_fp_rat_22; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_23 = ctrlBlock_io_debug_fp_rat_23; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_24 = ctrlBlock_io_debug_fp_rat_24; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_25 = ctrlBlock_io_debug_fp_rat_25; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_26 = ctrlBlock_io_debug_fp_rat_26; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_27 = ctrlBlock_io_debug_fp_rat_27; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_28 = ctrlBlock_io_debug_fp_rat_28; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_29 = ctrlBlock_io_debug_fp_rat_29; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_30 = ctrlBlock_io_debug_fp_rat_30; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_scheExtra_debug_fp_rat_31 = ctrlBlock_io_debug_fp_rat_31; // @[XSCore.scala 359:32]
  assign exuBlocks_1_io_fuExtra_frm = exuBlocks_io_fuExtra_csrio_fpu_frm; // @[XSCore.scala 393:19]
  assign memBlock_clock = clock;
  assign memBlock_reset = resetGen_o_reset; // @[ResetGen.scala 50:30 53:22]
  assign memBlock_auto_ptw_to_l2_buffer_out_a_ready = auto_memBlock_ptw_to_l2_buffer_out_a_ready; // @[LazyModule.scala 311:12]
  assign memBlock_auto_ptw_to_l2_buffer_out_d_valid = auto_memBlock_ptw_to_l2_buffer_out_d_valid; // @[LazyModule.scala 311:12]
  assign memBlock_auto_ptw_to_l2_buffer_out_d_bits_opcode = auto_memBlock_ptw_to_l2_buffer_out_d_bits_opcode; // @[LazyModule.scala 311:12]
  assign memBlock_auto_ptw_to_l2_buffer_out_d_bits_size = auto_memBlock_ptw_to_l2_buffer_out_d_bits_size; // @[LazyModule.scala 311:12]
  assign memBlock_auto_ptw_to_l2_buffer_out_d_bits_source = auto_memBlock_ptw_to_l2_buffer_out_d_bits_source; // @[LazyModule.scala 311:12]
  assign memBlock_auto_ptw_to_l2_buffer_out_d_bits_data = auto_memBlock_ptw_to_l2_buffer_out_d_bits_data; // @[LazyModule.scala 311:12]
  assign memBlock_auto_uncache_client_out_a_ready = auto_memBlock_uncache_client_out_a_ready; // @[LazyModule.scala 311:12]
  assign memBlock_auto_uncache_client_out_d_valid = auto_memBlock_uncache_client_out_d_valid; // @[LazyModule.scala 311:12]
  assign memBlock_auto_uncache_client_out_d_bits_opcode = auto_memBlock_uncache_client_out_d_bits_opcode; // @[LazyModule.scala 311:12]
  assign memBlock_auto_uncache_client_out_d_bits_data = auto_memBlock_uncache_client_out_d_bits_data; // @[LazyModule.scala 311:12]
  assign memBlock_auto_dcache_client_out_a_ready = auto_memBlock_dcache_client_out_a_ready; // @[LazyModule.scala 311:12]
  assign memBlock_auto_dcache_client_out_bvalid = auto_memBlock_dcache_client_out_bvalid; // @[LazyModule.scala 311:12]
  assign memBlock_auto_dcache_client_out_bparam = auto_memBlock_dcache_client_out_bparam; // @[LazyModule.scala 311:12]
  assign memBlock_auto_dcache_client_out_baddress = auto_memBlock_dcache_client_out_baddress; // @[LazyModule.scala 311:12]
  assign memBlock_auto_dcache_client_out_bdata = auto_memBlock_dcache_client_out_bdata; // @[LazyModule.scala 311:12]
  assign memBlock_auto_dcache_client_out_c_ready = auto_memBlock_dcache_client_out_c_ready; // @[LazyModule.scala 311:12]
  assign memBlock_auto_dcache_client_out_d_valid = auto_memBlock_dcache_client_out_d_valid; // @[LazyModule.scala 311:12]
  assign memBlock_auto_dcache_client_out_d_bits_opcode = auto_memBlock_dcache_client_out_d_bits_opcode; // @[LazyModule.scala 311:12]
  assign memBlock_auto_dcache_client_out_d_bits_param = auto_memBlock_dcache_client_out_d_bits_param; // @[LazyModule.scala 311:12]
  assign memBlock_auto_dcache_client_out_d_bits_size = auto_memBlock_dcache_client_out_d_bits_size; // @[LazyModule.scala 311:12]
  assign memBlock_auto_dcache_client_out_d_bits_source = auto_memBlock_dcache_client_out_d_bits_source; // @[LazyModule.scala 311:12]
  assign memBlock_auto_dcache_client_out_d_bits_sink = auto_memBlock_dcache_client_out_d_bits_sink; // @[LazyModule.scala 311:12]
  assign memBlock_auto_dcache_client_out_d_bits_denied = auto_memBlock_dcache_client_out_d_bits_denied; // @[LazyModule.scala 311:12]
  assign memBlock_auto_dcache_client_out_d_bits_data = auto_memBlock_dcache_client_out_d_bits_data; // @[LazyModule.scala 311:12]
  assign memBlock_auto_dcache_client_out_d_bits_corrupt = auto_memBlock_dcache_client_out_d_bits_corrupt; // @[LazyModule.scala 311:12]
  assign memBlock_auto_dcache_client_out_e_ready = auto_memBlock_dcache_client_out_e_ready; // @[LazyModule.scala 311:12]
  assign memBlock_io_hartId = io_hartId[7:0]; // @[XSCore.scala 258:22]
  assign memBlock_io_redirect_valid = ctrlBlock_io_redirect_valid; // @[XSCore.scala 418:24]
  assign memBlock_io_redirect_bits_robIdx_flag = ctrlBlock_io_redirect_bits_robIdx_flag; // @[XSCore.scala 418:24]
  assign memBlock_io_redirect_bits_robIdx_value = ctrlBlock_io_redirect_bits_robIdx_value; // @[XSCore.scala 418:24]
  assign memBlock_io_redirect_bits_level = ctrlBlock_io_redirect_bits_level; // @[XSCore.scala 418:24]
  assign memBlock_io_ooo_to_mem_loadFastMatch_0 = exuBlocks_io_scheExtra_loadFastMatch_0; // @[XSCore.scala 346:47]
  assign memBlock_io_ooo_to_mem_loadFastMatch_1 = exuBlocks_io_scheExtra_loadFastMatch_1; // @[XSCore.scala 346:47]
  assign memBlock_io_ooo_to_mem_loadFastFuOpType_0 = exuBlocks_io_scheExtra_loadFastFuOpType_0; // @[XSCore.scala 347:50]
  assign memBlock_io_ooo_to_mem_loadFastFuOpType_1 = exuBlocks_io_scheExtra_loadFastFuOpType_1; // @[XSCore.scala 347:50]
  assign memBlock_io_ooo_to_mem_loadFastImm_0 = exuBlocks_io_scheExtra_loadFastImm_0; // @[XSCore.scala 348:45]
  assign memBlock_io_ooo_to_mem_loadFastImm_1 = exuBlocks_io_scheExtra_loadFastImm_1; // @[XSCore.scala 348:45]
  assign memBlock_io_ooo_to_mem_sfence_valid = exuBlocks_io_fuExtra_fenceio_sfence_valid; // @[XSCore.scala 412:18]
  assign memBlock_io_ooo_to_mem_sfence_bits_rs1 = exuBlocks_io_fuExtra_fenceio_sfence_bits_rs1; // @[XSCore.scala 412:18]
  assign memBlock_io_ooo_to_mem_sfence_bits_rs2 = exuBlocks_io_fuExtra_fenceio_sfence_bits_rs2; // @[XSCore.scala 412:18]
  assign memBlock_io_ooo_to_mem_sfence_bits_addr = exuBlocks_io_fuExtra_fenceio_sfence_bits_addr; // @[XSCore.scala 412:18]
  assign memBlock_io_ooo_to_mem_sfence_bits_asid = exuBlocks_io_fuExtra_fenceio_sfence_bits_asid; // @[XSCore.scala 412:18]
  assign memBlock_io_ooo_to_mem_tlbCsr_satp_mode = exuBlocks_io_fuExtra_csrio_tlb_satp_mode; // @[XSCore.scala 422:33]
  assign memBlock_io_ooo_to_mem_tlbCsr_satp_asid = exuBlocks_io_fuExtra_csrio_tlb_satp_asid; // @[XSCore.scala 422:33]
  assign memBlock_io_ooo_to_mem_tlbCsr_satp_ppn = exuBlocks_io_fuExtra_csrio_tlb_satp_ppn; // @[XSCore.scala 422:33]
  assign memBlock_io_ooo_to_mem_tlbCsr_satp_changed = exuBlocks_io_fuExtra_csrio_tlb_satp_changed; // @[XSCore.scala 422:33]
  assign memBlock_io_ooo_to_mem_tlbCsr_priv_mxr = exuBlocks_io_fuExtra_csrio_tlb_priv_mxr; // @[XSCore.scala 422:33]
  assign memBlock_io_ooo_to_mem_tlbCsr_priv_sum = exuBlocks_io_fuExtra_csrio_tlb_priv_sum; // @[XSCore.scala 422:33]
  assign memBlock_io_ooo_to_mem_tlbCsr_priv_dmode = exuBlocks_io_fuExtra_csrio_tlb_priv_dmode; // @[XSCore.scala 422:33]
  assign memBlock_io_ooo_to_mem_lsqio_scommit = ctrlBlock_io_robio_lsq_scommit; // @[XSCore.scala 425:42]
  assign memBlock_io_ooo_to_mem_lsqio_pendingld = ctrlBlock_io_robio_lsq_pendingld; // @[XSCore.scala 426:42]
  assign memBlock_io_ooo_to_mem_lsqio_pendingst = ctrlBlock_io_robio_lsq_pendingst; // @[XSCore.scala 427:42]
  assign memBlock_io_ooo_to_mem_lsqio_commit = ctrlBlock_io_robio_lsq_commit; // @[XSCore.scala 428:42]
  assign memBlock_io_ooo_to_mem_lsqio_pendingPtr_flag = ctrlBlock_io_robio_lsq_pendingPtr_flag; // @[XSCore.scala 429:42]
  assign memBlock_io_ooo_to_mem_lsqio_pendingPtr_value = ctrlBlock_io_robio_lsq_pendingPtr_value; // @[XSCore.scala 429:42]
  assign memBlock_io_ooo_to_mem_isStore = ctrlBlock_io_robio_exception_bits_uop_ctrl_commitType[0]; // @[package.scala 137:59]
  assign memBlock_io_ooo_to_mem_csrCtrl_l2_pf_store_only = exuBlocks_io_fuExtra_csrio_customCtrl_l2_pf_store_only; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_icache_parity_enable =
    exuBlocks_io_fuExtra_csrio_customCtrl_icache_parity_enable; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_lvpred_timeout = exuBlocks_io_fuExtra_csrio_customCtrl_lvpred_timeout; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_bp_ctrl_ubtb_enable = exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_ubtb_enable; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_bp_ctrl_btb_enable = exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_btb_enable; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_bp_ctrl_tage_enable = exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_tage_enable; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_bp_ctrl_sc_enable = exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_sc_enable; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_bp_ctrl_ras_enable = exuBlocks_io_fuExtra_csrio_customCtrl_bp_ctrl_ras_enable; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_ldld_vio_check_enable =
    exuBlocks_io_fuExtra_csrio_customCtrl_ldld_vio_check_enable; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_cache_error_enable = exuBlocks_io_fuExtra_csrio_customCtrl_cache_error_enable; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_uncache_write_outstanding_enable =
    exuBlocks_io_fuExtra_csrio_customCtrl_uncache_write_outstanding_enable; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_fusion_enable = exuBlocks_io_fuExtra_csrio_customCtrl_fusion_enable; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_wfi_enable = exuBlocks_io_fuExtra_csrio_customCtrl_wfi_enable; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_svinval_enable = exuBlocks_io_fuExtra_csrio_customCtrl_svinval_enable; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_distribute_csr_wvalid =
    exuBlocks_io_fuExtra_csrio_customCtrl_distribute_csr_wvalid; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_distribute_csr_waddr =
    exuBlocks_io_fuExtra_csrio_customCtrl_distribute_csr_waddr; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_distribute_csr_wdata =
    exuBlocks_io_fuExtra_csrio_customCtrl_distribute_csr_wdata; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_singlestep = exuBlocks_io_fuExtra_csrio_customCtrl_singlestep; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_valid =
    exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_valid; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_addr =
    exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_addr; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_matchType =
    exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_matchType; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_select =
    exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_select; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_timing =
    exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_timing; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_chain =
    exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_chain; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_frontend_trigger_t_bits_tdata_tdata2 =
    exuBlocks_io_fuExtra_csrio_customCtrl_frontend_trigger_t_bits_tdata_tdata2; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_mem_trigger_t_valid = exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_valid; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_addr =
    exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_addr; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_tdata_matchType =
    exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_matchType; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_tdata_select =
    exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_select; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_tdata_chain =
    exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_chain; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_mem_trigger_t_bits_tdata_tdata2 =
    exuBlocks_io_fuExtra_csrio_customCtrl_mem_trigger_t_bits_tdata_tdata2; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_0 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_0; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_1 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_1; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_2 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_2; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_3 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_3; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_4 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_4; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_5 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_5; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_6 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_6; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_7 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_7; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_8 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_8; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_csrCtrl_trigger_enable_9 = exuBlocks_io_fuExtra_csrio_customCtrl_trigger_enable_9; // @[XSCore.scala 421:34]
  assign memBlock_io_ooo_to_mem_enqLsq_needAlloc_0 = ctrlBlock_io_enqLsq_needAlloc_0; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_needAlloc_1 = ctrlBlock_io_enqLsq_needAlloc_1; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_needAlloc_2 = ctrlBlock_io_enqLsq_needAlloc_2; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_needAlloc_3 = ctrlBlock_io_enqLsq_needAlloc_3; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_0_valid = ctrlBlock_io_enqLsq_req_0_valid; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_0_bits_cf_trigger_backendEn_0 =
    ctrlBlock_io_enqLsq_req_0_bits_cf_trigger_backendEn_0; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_0_bits_cf_storeSetHit = ctrlBlock_io_enqLsq_req_0_bits_cf_storeSetHit; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_0_bits_cf_ssid = ctrlBlock_io_enqLsq_req_0_bits_cf_ssid; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_0_bits_ctrl_fuOpType = ctrlBlock_io_enqLsq_req_0_bits_ctrl_fuOpType; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_0_bits_robIdx_flag = ctrlBlock_io_enqLsq_req_0_bits_robIdx_flag; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_0_bits_robIdx_value = ctrlBlock_io_enqLsq_req_0_bits_robIdx_value; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_0_bits_lqIdx_value = ctrlBlock_io_enqLsq_req_0_bits_lqIdx_value; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_0_bits_sqIdx_value = ctrlBlock_io_enqLsq_req_0_bits_sqIdx_value; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_1_valid = ctrlBlock_io_enqLsq_req_1_valid; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_1_bits_cf_trigger_backendEn_0 =
    ctrlBlock_io_enqLsq_req_1_bits_cf_trigger_backendEn_0; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_1_bits_cf_storeSetHit = ctrlBlock_io_enqLsq_req_1_bits_cf_storeSetHit; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_1_bits_cf_ssid = ctrlBlock_io_enqLsq_req_1_bits_cf_ssid; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_1_bits_ctrl_fuOpType = ctrlBlock_io_enqLsq_req_1_bits_ctrl_fuOpType; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_1_bits_robIdx_flag = ctrlBlock_io_enqLsq_req_1_bits_robIdx_flag; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_1_bits_robIdx_value = ctrlBlock_io_enqLsq_req_1_bits_robIdx_value; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_1_bits_lqIdx_value = ctrlBlock_io_enqLsq_req_1_bits_lqIdx_value; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_1_bits_sqIdx_value = ctrlBlock_io_enqLsq_req_1_bits_sqIdx_value; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_2_valid = ctrlBlock_io_enqLsq_req_2_valid; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_2_bits_cf_trigger_backendEn_0 =
    ctrlBlock_io_enqLsq_req_2_bits_cf_trigger_backendEn_0; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_2_bits_cf_storeSetHit = ctrlBlock_io_enqLsq_req_2_bits_cf_storeSetHit; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_2_bits_cf_ssid = ctrlBlock_io_enqLsq_req_2_bits_cf_ssid; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_2_bits_ctrl_fuOpType = ctrlBlock_io_enqLsq_req_2_bits_ctrl_fuOpType; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_2_bits_robIdx_flag = ctrlBlock_io_enqLsq_req_2_bits_robIdx_flag; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_2_bits_robIdx_value = ctrlBlock_io_enqLsq_req_2_bits_robIdx_value; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_2_bits_lqIdx_value = ctrlBlock_io_enqLsq_req_2_bits_lqIdx_value; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_2_bits_sqIdx_value = ctrlBlock_io_enqLsq_req_2_bits_sqIdx_value; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_3_valid = ctrlBlock_io_enqLsq_req_3_valid; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_3_bits_cf_trigger_backendEn_0 =
    ctrlBlock_io_enqLsq_req_3_bits_cf_trigger_backendEn_0; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_3_bits_cf_storeSetHit = ctrlBlock_io_enqLsq_req_3_bits_cf_storeSetHit; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_3_bits_cf_ssid = ctrlBlock_io_enqLsq_req_3_bits_cf_ssid; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_3_bits_ctrl_fuOpType = ctrlBlock_io_enqLsq_req_3_bits_ctrl_fuOpType; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_3_bits_robIdx_flag = ctrlBlock_io_enqLsq_req_3_bits_robIdx_flag; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_3_bits_robIdx_value = ctrlBlock_io_enqLsq_req_3_bits_robIdx_value; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_3_bits_lqIdx_value = ctrlBlock_io_enqLsq_req_3_bits_lqIdx_value; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_enqLsq_req_3_bits_sqIdx_value = ctrlBlock_io_enqLsq_req_3_bits_sqIdx_value; // @[XSCore.scala 315:23]
  assign memBlock_io_ooo_to_mem_flushSb = exuBlocks_io_fuExtra_fenceio_sbuffer_flushSb; // @[XSCore.scala 414:34]
  assign memBlock_io_ooo_to_mem_issue_0_valid = exuBlocks_io_issue_0_valid; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_trigger_backendEn_1 =
    exuBlocks_io_issue_0_bits_uop_cf_trigger_backendEn_1; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_storeSetHit = exuBlocks_io_issue_0_bits_uop_cf_storeSetHit; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_loadWaitStrict = exuBlocks_io_issue_0_bits_uop_cf_loadWaitStrict; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_ssid = exuBlocks_io_issue_0_bits_uop_cf_ssid; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_ftqPtr_flag = exuBlocks_io_issue_0_bits_uop_cf_ftqPtr_flag; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_ftqPtr_value = exuBlocks_io_issue_0_bits_uop_cf_ftqPtr_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_uop_cf_ftqOffset = exuBlocks_io_issue_0_bits_uop_cf_ftqOffset; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_uop_ctrl_fuOpType = exuBlocks_io_issue_0_bits_uop_ctrl_fuOpType; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_uop_ctrl_rfWen = exuBlocks_io_issue_0_bits_uop_ctrl_rfWen; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_uop_ctrl_fpWen = exuBlocks_io_issue_0_bits_uop_ctrl_fpWen; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_uop_ctrl_imm = exuBlocks_io_issue_0_bits_uop_ctrl_imm; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_uop_pdest = exuBlocks_io_issue_0_bits_uop_pdest; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_uop_robIdx_flag = exuBlocks_io_issue_0_bits_uop_robIdx_flag; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_uop_robIdx_value = exuBlocks_io_issue_0_bits_uop_robIdx_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_uop_lqIdx_flag = exuBlocks_io_issue_0_bits_uop_lqIdx_flag; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_uop_lqIdx_value = exuBlocks_io_issue_0_bits_uop_lqIdx_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_uop_sqIdx_flag = exuBlocks_io_issue_0_bits_uop_sqIdx_flag; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_uop_sqIdx_value = exuBlocks_io_issue_0_bits_uop_sqIdx_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_0_bits_src_0 = exuBlocks_io_issue_0_bits_src_0; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_valid = exuBlocks_io_issue_1_valid; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_trigger_backendEn_1 =
    exuBlocks_io_issue_1_bits_uop_cf_trigger_backendEn_1; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_storeSetHit = exuBlocks_io_issue_1_bits_uop_cf_storeSetHit; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_loadWaitStrict = exuBlocks_io_issue_1_bits_uop_cf_loadWaitStrict; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_ssid = exuBlocks_io_issue_1_bits_uop_cf_ssid; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_ftqPtr_flag = exuBlocks_io_issue_1_bits_uop_cf_ftqPtr_flag; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_ftqPtr_value = exuBlocks_io_issue_1_bits_uop_cf_ftqPtr_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_uop_cf_ftqOffset = exuBlocks_io_issue_1_bits_uop_cf_ftqOffset; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_uop_ctrl_fuOpType = exuBlocks_io_issue_1_bits_uop_ctrl_fuOpType; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_uop_ctrl_rfWen = exuBlocks_io_issue_1_bits_uop_ctrl_rfWen; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_uop_ctrl_fpWen = exuBlocks_io_issue_1_bits_uop_ctrl_fpWen; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_uop_ctrl_imm = exuBlocks_io_issue_1_bits_uop_ctrl_imm; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_uop_pdest = exuBlocks_io_issue_1_bits_uop_pdest; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_uop_robIdx_flag = exuBlocks_io_issue_1_bits_uop_robIdx_flag; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_uop_robIdx_value = exuBlocks_io_issue_1_bits_uop_robIdx_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_uop_lqIdx_flag = exuBlocks_io_issue_1_bits_uop_lqIdx_flag; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_uop_lqIdx_value = exuBlocks_io_issue_1_bits_uop_lqIdx_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_uop_sqIdx_flag = exuBlocks_io_issue_1_bits_uop_sqIdx_flag; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_uop_sqIdx_value = exuBlocks_io_issue_1_bits_uop_sqIdx_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_1_bits_src_0 = exuBlocks_io_issue_1_bits_src_0; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_2_valid = exuBlocks_io_issue_2_valid; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_2_bits_uop_cf_trigger_backendEn_0 =
    exuBlocks_io_issue_2_bits_uop_cf_trigger_backendEn_0; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_2_bits_uop_cf_trigger_backendEn_1 =
    exuBlocks_io_issue_2_bits_uop_cf_trigger_backendEn_1; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_2_bits_uop_cf_ftqPtr_value = exuBlocks_io_issue_2_bits_uop_cf_ftqPtr_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_2_bits_uop_cf_ftqOffset = exuBlocks_io_issue_2_bits_uop_cf_ftqOffset; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_2_bits_uop_ctrl_fuType = exuBlocks_io_issue_2_bits_uop_ctrl_fuType; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_2_bits_uop_ctrl_fuOpType = exuBlocks_io_issue_2_bits_uop_ctrl_fuOpType; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_2_bits_uop_ctrl_rfWen = exuBlocks_io_issue_2_bits_uop_ctrl_rfWen; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_2_bits_uop_ctrl_fpWen = exuBlocks_io_issue_2_bits_uop_ctrl_fpWen; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_2_bits_uop_ctrl_imm = exuBlocks_io_issue_2_bits_uop_ctrl_imm; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_2_bits_uop_pdest = exuBlocks_io_issue_2_bits_uop_pdest; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_2_bits_uop_robIdx_flag = exuBlocks_io_issue_2_bits_uop_robIdx_flag; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_2_bits_uop_robIdx_value = exuBlocks_io_issue_2_bits_uop_robIdx_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_2_bits_uop_lqIdx_flag = exuBlocks_io_issue_2_bits_uop_lqIdx_flag; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_2_bits_uop_lqIdx_value = exuBlocks_io_issue_2_bits_uop_lqIdx_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_2_bits_uop_sqIdx_flag = exuBlocks_io_issue_2_bits_uop_sqIdx_flag; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_2_bits_uop_sqIdx_value = exuBlocks_io_issue_2_bits_uop_sqIdx_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_2_bits_src_0 = exuBlocks_io_issue_2_bits_src_0; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_3_valid = exuBlocks_io_issue_3_valid; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_3_bits_uop_cf_trigger_backendEn_0 =
    exuBlocks_io_issue_3_bits_uop_cf_trigger_backendEn_0; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_3_bits_uop_cf_trigger_backendEn_1 =
    exuBlocks_io_issue_3_bits_uop_cf_trigger_backendEn_1; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_3_bits_uop_cf_ftqPtr_value = exuBlocks_io_issue_3_bits_uop_cf_ftqPtr_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_3_bits_uop_cf_ftqOffset = exuBlocks_io_issue_3_bits_uop_cf_ftqOffset; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_3_bits_uop_ctrl_fuType = exuBlocks_io_issue_3_bits_uop_ctrl_fuType; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_3_bits_uop_ctrl_fuOpType = exuBlocks_io_issue_3_bits_uop_ctrl_fuOpType; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_3_bits_uop_ctrl_rfWen = exuBlocks_io_issue_3_bits_uop_ctrl_rfWen; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_3_bits_uop_ctrl_fpWen = exuBlocks_io_issue_3_bits_uop_ctrl_fpWen; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_3_bits_uop_ctrl_imm = exuBlocks_io_issue_3_bits_uop_ctrl_imm; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_3_bits_uop_pdest = exuBlocks_io_issue_3_bits_uop_pdest; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_3_bits_uop_robIdx_flag = exuBlocks_io_issue_3_bits_uop_robIdx_flag; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_3_bits_uop_robIdx_value = exuBlocks_io_issue_3_bits_uop_robIdx_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_3_bits_uop_lqIdx_flag = exuBlocks_io_issue_3_bits_uop_lqIdx_flag; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_3_bits_uop_lqIdx_value = exuBlocks_io_issue_3_bits_uop_lqIdx_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_3_bits_uop_sqIdx_flag = exuBlocks_io_issue_3_bits_uop_sqIdx_flag; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_3_bits_uop_sqIdx_value = exuBlocks_io_issue_3_bits_uop_sqIdx_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_3_bits_src_0 = exuBlocks_io_issue_3_bits_src_0; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_4_valid = exuBlocks_io_issue_4_valid; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_4_bits_uop_ctrl_fuType = exuBlocks_io_issue_4_bits_uop_ctrl_fuType; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_4_bits_uop_ctrl_fuOpType = exuBlocks_io_issue_4_bits_uop_ctrl_fuOpType; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_4_bits_uop_robIdx_flag = exuBlocks_io_issue_4_bits_uop_robIdx_flag; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_4_bits_uop_robIdx_value = exuBlocks_io_issue_4_bits_uop_robIdx_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_4_bits_uop_sqIdx_flag = exuBlocks_io_issue_4_bits_uop_sqIdx_flag; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_4_bits_uop_sqIdx_value = exuBlocks_io_issue_4_bits_uop_sqIdx_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_4_bits_src_0 = exuBlocks_io_issue_4_bits_src_0; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_5_valid = exuBlocks_io_issue_5_valid; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_5_bits_uop_ctrl_fuType = exuBlocks_io_issue_5_bits_uop_ctrl_fuType; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_5_bits_uop_ctrl_fuOpType = exuBlocks_io_issue_5_bits_uop_ctrl_fuOpType; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_5_bits_uop_robIdx_flag = exuBlocks_io_issue_5_bits_uop_robIdx_flag; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_5_bits_uop_robIdx_value = exuBlocks_io_issue_5_bits_uop_robIdx_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_5_bits_uop_sqIdx_flag = exuBlocks_io_issue_5_bits_uop_sqIdx_flag; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_5_bits_uop_sqIdx_value = exuBlocks_io_issue_5_bits_uop_sqIdx_value; // @[XSCore.scala 343:32]
  assign memBlock_io_ooo_to_mem_issue_5_bits_src_0 = exuBlocks_io_issue_5_bits_src_0; // @[XSCore.scala 343:32]
  assign memBlock_io_mem_to_ooo_writeback_0_ready = 1'h1; // @[XSCore.scala 267:32]
  assign memBlock_io_mem_to_ooo_writeback_1_ready = 1'h1; // @[XSCore.scala 267:32]
  assign memBlock_io_mem_to_ooo_writeback_2_ready = 1'h1; // @[XSCore.scala 267:32]
  assign memBlock_io_mem_to_ooo_writeback_3_ready = 1'h1; // @[XSCore.scala 267:32]
  assign memBlock_io_fetch_to_mem_itlb_req_0_valid = frontend_io_ptw_req_0_valid; // @[XSCore.scala 413:33]
  assign memBlock_io_fetch_to_mem_itlb_req_0_bits_vpn = frontend_io_ptw_req_0_bits_vpn; // @[XSCore.scala 413:33]
  assign memBlock_io_rsfeedback_0_rsIdx = exuBlocks_io_scheExtra_feedback_0_rsIdx; // @[XSCore.scala 419:26]
  assign memBlock_io_rsfeedback_1_rsIdx = exuBlocks_io_scheExtra_feedback_1_rsIdx; // @[XSCore.scala 419:26]
  assign memBlock_io_rsfeedback_2_rsIdx = exuBlocks_io_scheExtra_feedback_2_rsIdx; // @[XSCore.scala 419:26]
  assign memBlock_io_rsfeedback_3_rsIdx = exuBlocks_io_scheExtra_feedback_3_rsIdx; // @[XSCore.scala 419:26]
  assign memBlock_io_l2_hint_valid = io_l2_hint_valid; // @[XSCore.scala 436:29]
  assign memBlock_io_l2_hint_bits_sourceId = io_l2_hint_bits_sourceId; // @[XSCore.scala 437:37]
  assign memBlock_sourceVaddr_valid = ctrlBlock_sourceVaddr_valid;
  assign memBlock_sourceVaddr_bits = ctrlBlock_sourceVaddr_bits;
  assign wb2Ctrl_clock = clock;
  assign wb2Ctrl_reset = reset;
  assign wb2Ctrl_io_redirect_valid = ctrlBlock_io_redirect_valid; // @[XSCore.scala 273:23]
  assign wb2Ctrl_io_redirect_bits_robIdx_flag = ctrlBlock_io_redirect_bits_robIdx_flag; // @[XSCore.scala 273:23]
  assign wb2Ctrl_io_redirect_bits_robIdx_value = ctrlBlock_io_redirect_bits_robIdx_value; // @[XSCore.scala 273:23]
  assign wb2Ctrl_io_redirect_bits_level = ctrlBlock_io_redirect_bits_level; // @[XSCore.scala 273:23]
  assign wb2Ctrl_io_in_3_ready = exuBlocks_io_fuWriteback_3_ready; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_3_valid = exuBlocks_io_fuWriteback_3_valid; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_3_bits_uop_cf_exceptionVec_2 = exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_3_bits_uop_cf_exceptionVec_3 = exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_3_bits_uop_cf_exceptionVec_8 = exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_3_bits_uop_cf_exceptionVec_9 = exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_3_bits_uop_cf_exceptionVec_11 = exuBlocks_io_fuWriteback_3_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_3_bits_uop_ctrl_flushPipe = exuBlocks_io_fuWriteback_3_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_3_bits_uop_robIdx_flag = exuBlocks_io_fuWriteback_3_bits_uop_robIdx_flag; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_3_bits_uop_robIdx_value = exuBlocks_io_fuWriteback_3_bits_uop_robIdx_value; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_3_bits_fflags = exuBlocks_io_fuWriteback_3_bits_fflags; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_4_ready = exuBlocks_1_io_fuWriteback_0_ready; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_4_valid = exuBlocks_1_io_fuWriteback_0_valid; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_4_bits_uop_robIdx_flag = exuBlocks_1_io_fuWriteback_0_bits_uop_robIdx_flag; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_4_bits_uop_robIdx_value = exuBlocks_1_io_fuWriteback_0_bits_uop_robIdx_value; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_4_bits_fflags = exuBlocks_1_io_fuWriteback_0_bits_fflags; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_5_ready = exuBlocks_1_io_fuWriteback_1_ready; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_5_valid = exuBlocks_1_io_fuWriteback_1_valid; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_5_bits_uop_robIdx_flag = exuBlocks_1_io_fuWriteback_1_bits_uop_robIdx_flag; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_5_bits_uop_robIdx_value = exuBlocks_1_io_fuWriteback_1_bits_uop_robIdx_value; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_5_bits_fflags = exuBlocks_1_io_fuWriteback_1_bits_fflags; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_6_ready = memBlock_io_mem_to_ooo_writeback_0_ready; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_6_valid = memBlock_io_mem_to_ooo_writeback_0_valid; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_6_bits_uop_cf_exceptionVec_4 = memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_6_bits_uop_cf_exceptionVec_5 = memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_6_bits_uop_cf_exceptionVec_13 = memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_6_bits_uop_cf_trigger_backendHit_0 =
    memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_6_bits_uop_cf_trigger_backendHit_1 =
    memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_6_bits_uop_cf_trigger_backendHit_2 =
    memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_6_bits_uop_cf_trigger_backendHit_3 =
    memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_6_bits_uop_cf_trigger_backendHit_4 =
    memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_6_bits_uop_cf_trigger_backendHit_5 =
    memBlock_io_mem_to_ooo_writeback_0_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_6_bits_uop_ctrl_replayInst = memBlock_io_mem_to_ooo_writeback_0_bits_uop_ctrl_replayInst; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_6_bits_uop_robIdx_flag = memBlock_io_mem_to_ooo_writeback_0_bits_uop_robIdx_flag; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_6_bits_uop_robIdx_value = memBlock_io_mem_to_ooo_writeback_0_bits_uop_robIdx_value; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_7_ready = memBlock_io_mem_to_ooo_writeback_1_ready; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_7_valid = memBlock_io_mem_to_ooo_writeback_1_valid; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_7_bits_uop_cf_exceptionVec_4 = memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_7_bits_uop_cf_exceptionVec_5 = memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_7_bits_uop_cf_exceptionVec_13 = memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_7_bits_uop_cf_trigger_backendHit_0 =
    memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_7_bits_uop_cf_trigger_backendHit_1 =
    memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_7_bits_uop_cf_trigger_backendHit_2 =
    memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_7_bits_uop_cf_trigger_backendHit_3 =
    memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_7_bits_uop_cf_trigger_backendHit_4 =
    memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_7_bits_uop_cf_trigger_backendHit_5 =
    memBlock_io_mem_to_ooo_writeback_1_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_7_bits_uop_ctrl_replayInst = memBlock_io_mem_to_ooo_writeback_1_bits_uop_ctrl_replayInst; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_7_bits_uop_robIdx_flag = memBlock_io_mem_to_ooo_writeback_1_bits_uop_robIdx_flag; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_7_bits_uop_robIdx_value = memBlock_io_mem_to_ooo_writeback_1_bits_uop_robIdx_value; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_8_ready = memBlock_io_mem_to_ooo_writeback_2_ready; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_8_valid = memBlock_io_mem_to_ooo_writeback_2_valid; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_8_bits_uop_cf_exceptionVec_4 = memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_8_bits_uop_cf_exceptionVec_5 = memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_8_bits_uop_cf_exceptionVec_6 = memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_6; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_8_bits_uop_cf_exceptionVec_7 = memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_7; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_8_bits_uop_cf_exceptionVec_13 = memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_8_bits_uop_cf_exceptionVec_15 = memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_exceptionVec_15; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_8_bits_uop_cf_trigger_backendHit_0 =
    memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_8_bits_uop_cf_trigger_backendHit_1 =
    memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_8_bits_uop_cf_trigger_backendHit_2 =
    memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_8_bits_uop_cf_trigger_backendHit_3 =
    memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_8_bits_uop_cf_trigger_backendHit_4 =
    memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_8_bits_uop_cf_trigger_backendHit_5 =
    memBlock_io_mem_to_ooo_writeback_2_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_8_bits_uop_robIdx_flag = memBlock_io_mem_to_ooo_writeback_2_bits_uop_robIdx_flag; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_8_bits_uop_robIdx_value = memBlock_io_mem_to_ooo_writeback_2_bits_uop_robIdx_value; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_9_ready = memBlock_io_mem_to_ooo_writeback_3_ready; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_9_valid = memBlock_io_mem_to_ooo_writeback_3_valid; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_9_bits_uop_cf_exceptionVec_6 = memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_exceptionVec_6; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_9_bits_uop_cf_exceptionVec_7 = memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_exceptionVec_7; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_9_bits_uop_cf_exceptionVec_15 = memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_exceptionVec_15; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_9_bits_uop_cf_trigger_backendHit_0 =
    memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_9_bits_uop_cf_trigger_backendHit_1 =
    memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_9_bits_uop_cf_trigger_backendHit_4 =
    memBlock_io_mem_to_ooo_writeback_3_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_9_bits_uop_robIdx_flag = memBlock_io_mem_to_ooo_writeback_3_bits_uop_robIdx_flag; // @[WbArbiter.scala 350:18]
  assign wb2Ctrl_io_in_9_bits_uop_robIdx_value = memBlock_io_mem_to_ooo_writeback_3_bits_uop_robIdx_value; // @[WbArbiter.scala 350:18]
  assign ctrlBlock_clock = clock;
  assign ctrlBlock_reset = resetGen_3_o_reset; // @[ResetGen.scala 50:30 53:22]
  assign ctrlBlock_io_hartId = io_hartId[7:0]; // @[XSCore.scala 256:23]
  assign ctrlBlock_io_frontend_cfVec_0_valid = frontend_io_backend_cfVec_0_valid; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_instr = frontend_io_backend_cfVec_0_bits_instr; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_foldpc = frontend_io_backend_cfVec_0_bits_foldpc; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_exceptionVec_1 = frontend_io_backend_cfVec_0_bits_exceptionVec_1; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_exceptionVec_12 = frontend_io_backend_cfVec_0_bits_exceptionVec_12; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_trigger_frontendHit_0 =
    frontend_io_backend_cfVec_0_bits_trigger_frontendHit_0; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_trigger_frontendHit_1 =
    frontend_io_backend_cfVec_0_bits_trigger_frontendHit_1; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_trigger_frontendHit_2 =
    frontend_io_backend_cfVec_0_bits_trigger_frontendHit_2; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_trigger_frontendHit_3 =
    frontend_io_backend_cfVec_0_bits_trigger_frontendHit_3; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_trigger_backendEn_0 = frontend_io_backend_cfVec_0_bits_trigger_backendEn_0; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_trigger_backendEn_1 = frontend_io_backend_cfVec_0_bits_trigger_backendEn_1; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_pd_isRVC = frontend_io_backend_cfVec_0_bits_pd_isRVC; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_pd_brType = frontend_io_backend_cfVec_0_bits_pd_brType; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_pd_isCall = frontend_io_backend_cfVec_0_bits_pd_isCall; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_pd_isRet = frontend_io_backend_cfVec_0_bits_pd_isRet; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_pred_taken = frontend_io_backend_cfVec_0_bits_pred_taken; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_crossPageIPFFix = frontend_io_backend_cfVec_0_bits_crossPageIPFFix; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_ftqPtr_flag = frontend_io_backend_cfVec_0_bits_ftqPtr_flag; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_ftqPtr_value = frontend_io_backend_cfVec_0_bits_ftqPtr_value; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_0_bits_ftqOffset = frontend_io_backend_cfVec_0_bits_ftqOffset; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_valid = frontend_io_backend_cfVec_1_valid; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_instr = frontend_io_backend_cfVec_1_bits_instr; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_foldpc = frontend_io_backend_cfVec_1_bits_foldpc; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_exceptionVec_1 = frontend_io_backend_cfVec_1_bits_exceptionVec_1; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_exceptionVec_12 = frontend_io_backend_cfVec_1_bits_exceptionVec_12; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_trigger_frontendHit_0 =
    frontend_io_backend_cfVec_1_bits_trigger_frontendHit_0; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_trigger_frontendHit_1 =
    frontend_io_backend_cfVec_1_bits_trigger_frontendHit_1; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_trigger_frontendHit_2 =
    frontend_io_backend_cfVec_1_bits_trigger_frontendHit_2; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_trigger_frontendHit_3 =
    frontend_io_backend_cfVec_1_bits_trigger_frontendHit_3; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_trigger_backendEn_0 = frontend_io_backend_cfVec_1_bits_trigger_backendEn_0; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_trigger_backendEn_1 = frontend_io_backend_cfVec_1_bits_trigger_backendEn_1; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_pd_isRVC = frontend_io_backend_cfVec_1_bits_pd_isRVC; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_pd_brType = frontend_io_backend_cfVec_1_bits_pd_brType; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_pd_isCall = frontend_io_backend_cfVec_1_bits_pd_isCall; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_pd_isRet = frontend_io_backend_cfVec_1_bits_pd_isRet; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_pred_taken = frontend_io_backend_cfVec_1_bits_pred_taken; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_crossPageIPFFix = frontend_io_backend_cfVec_1_bits_crossPageIPFFix; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_ftqPtr_flag = frontend_io_backend_cfVec_1_bits_ftqPtr_flag; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_ftqPtr_value = frontend_io_backend_cfVec_1_bits_ftqPtr_value; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_cfVec_1_bits_ftqOffset = frontend_io_backend_cfVec_1_bits_ftqOffset; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_fromFtq_pc_mem_wen = frontend_io_backend_fromFtq_pc_mem_wen; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_fromFtq_pc_mem_waddr = frontend_io_backend_fromFtq_pc_mem_waddr; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_startAddr = frontend_io_backend_fromFtq_pc_mem_wdata_startAddr; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_nextLineAddr = frontend_io_backend_fromFtq_pc_mem_wdata_nextLineAddr
    ; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_0 = frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_0
    ; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_1 = frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_1
    ; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_2 = frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_2
    ; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_3 = frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_3
    ; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_4 = frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_4
    ; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_5 = frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_5
    ; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_6 = frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_6
    ; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_fromFtq_pc_mem_wdata_isNextMask_7 = frontend_io_backend_fromFtq_pc_mem_wdata_isNextMask_7
    ; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_fromFtq_newest_entry_target = frontend_io_backend_fromFtq_newest_entry_target; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_fromFtq_newest_entry_ptr_flag = frontend_io_backend_fromFtq_newest_entry_ptr_flag; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_frontend_fromFtq_newest_entry_ptr_value = frontend_io_backend_fromFtq_newest_entry_ptr_value; // @[XSCore.scala 284:23]
  assign ctrlBlock_io_rsReady_0 = exuBlocks_io_scheExtra_rsReady_0; // @[XSCore.scala 314:24]
  assign ctrlBlock_io_rsReady_1 = exuBlocks_io_scheExtra_rsReady_1; // @[XSCore.scala 314:24]
  assign ctrlBlock_io_rsReady_2 = exuBlocks_io_scheExtra_rsReady_2; // @[XSCore.scala 314:24]
  assign ctrlBlock_io_rsReady_3 = exuBlocks_io_scheExtra_rsReady_3; // @[XSCore.scala 314:24]
  assign ctrlBlock_io_rsReady_4 = exuBlocks_io_scheExtra_rsReady_4; // @[XSCore.scala 314:24]
  assign ctrlBlock_io_rsReady_5 = exuBlocks_io_scheExtra_rsReady_5; // @[XSCore.scala 314:24]
  assign ctrlBlock_io_rsReady_6 = exuBlocks_io_scheExtra_rsReady_6; // @[XSCore.scala 314:24]
  assign ctrlBlock_io_rsReady_7 = exuBlocks_io_scheExtra_rsReady_7; // @[XSCore.scala 314:24]
  assign ctrlBlock_io_rsReady_8 = exuBlocks_1_io_scheExtra_rsReady_0; // @[XSCore.scala 314:24]
  assign ctrlBlock_io_enqLsq_canAccept = memBlock_io_ooo_to_mem_enqLsq_canAccept; // @[XSCore.scala 315:23]
  assign ctrlBlock_io_lqCancelCnt = memBlock_io_mem_to_ooo_lqCancelCnt; // @[XSCore.scala 320:28]
  assign ctrlBlock_io_sqCancelCnt = memBlock_io_mem_to_ooo_sqCancelCnt; // @[XSCore.scala 321:28]
  assign ctrlBlock_io_lqDeq = memBlock_io_mem_to_ooo_lqDeq; // @[XSCore.scala 316:22]
  assign ctrlBlock_io_sqDeq = memBlock_io_mem_to_ooo_sqDeq; // @[XSCore.scala 317:22]
  assign ctrlBlock_io_exuRedirect_0_valid = exuBlocks_io_fuExtra_exuRedirect_0_valid; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_0_bits_uop_cf_pd_isRVC = exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isRVC; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_0_bits_uop_cf_pd_brType = exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_cf_pd_brType; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_0_bits_uop_cf_pd_isCall = exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isCall; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_0_bits_uop_cf_pd_isRet = exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_cf_pd_isRet; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_0_bits_uop_ctrl_imm = exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_ctrl_imm; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_0_bits_uop_robIdx_flag = exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_robIdx_flag; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_0_bits_uop_robIdx_value = exuBlocks_io_fuExtra_exuRedirect_0_bits_uop_robIdx_value; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_0_bits_redirectValid = exuBlocks_io_fuExtra_exuRedirect_0_bits_redirectValid; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_0_bits_redirect_robIdx_flag =
    exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_robIdx_flag; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_0_bits_redirect_robIdx_value =
    exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_robIdx_value; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_0_bits_redirect_ftqIdx_flag =
    exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_ftqIdx_flag; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_0_bits_redirect_ftqIdx_value =
    exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_ftqIdx_value; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_0_bits_redirect_ftqOffset = exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_ftqOffset
    ; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_0_bits_redirect_cfiUpdate_target =
    exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_cfiUpdate_target; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred =
    exuBlocks_io_fuExtra_exuRedirect_0_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_1_valid = exuBlocks_io_fuExtra_exuRedirect_1_valid; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_1_bits_uop_cf_pd_isRVC = exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isRVC; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_1_bits_uop_cf_pd_brType = exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_cf_pd_brType; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_1_bits_uop_cf_pd_isCall = exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isCall; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_1_bits_uop_cf_pd_isRet = exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_cf_pd_isRet; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_1_bits_uop_ctrl_imm = exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_ctrl_imm; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_1_bits_uop_robIdx_flag = exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_robIdx_flag; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_1_bits_uop_robIdx_value = exuBlocks_io_fuExtra_exuRedirect_1_bits_uop_robIdx_value; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_1_bits_redirectValid = exuBlocks_io_fuExtra_exuRedirect_1_bits_redirectValid; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_1_bits_redirect_robIdx_flag =
    exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_robIdx_flag; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_1_bits_redirect_robIdx_value =
    exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_robIdx_value; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_1_bits_redirect_ftqIdx_flag =
    exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_ftqIdx_flag; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_1_bits_redirect_ftqIdx_value =
    exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_ftqIdx_value; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_1_bits_redirect_ftqOffset = exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_ftqOffset
    ; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_1_bits_redirect_cfiUpdate_taken =
    exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_cfiUpdate_taken; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred =
    exuBlocks_io_fuExtra_exuRedirect_1_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_2_valid = exuBlocks_io_fuExtra_exuRedirect_2_valid; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_2_bits_uop_cf_pd_isRVC = exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isRVC; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_2_bits_uop_cf_pd_brType = exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_cf_pd_brType; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_2_bits_uop_cf_pd_isCall = exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isCall; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_2_bits_uop_cf_pd_isRet = exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_cf_pd_isRet; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_2_bits_uop_ctrl_imm = exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_ctrl_imm; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_2_bits_uop_robIdx_flag = exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_robIdx_flag; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_2_bits_uop_robIdx_value = exuBlocks_io_fuExtra_exuRedirect_2_bits_uop_robIdx_value; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_2_bits_redirectValid = exuBlocks_io_fuExtra_exuRedirect_2_bits_redirectValid; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_2_bits_redirect_robIdx_flag =
    exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_robIdx_flag; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_2_bits_redirect_robIdx_value =
    exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_robIdx_value; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_2_bits_redirect_ftqIdx_flag =
    exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_ftqIdx_flag; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_2_bits_redirect_ftqIdx_value =
    exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_ftqIdx_value; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_2_bits_redirect_ftqOffset = exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_ftqOffset
    ; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_2_bits_redirect_cfiUpdate_taken =
    exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_cfiUpdate_taken; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred =
    exuBlocks_io_fuExtra_exuRedirect_2_bits_redirect_cfiUpdate_isMisPred; // @[XSCore.scala 292:28]
  assign ctrlBlock_io_memoryViolation_valid = memBlock_io_mem_to_ooo_memoryViolation_valid; // @[XSCore.scala 294:32]
  assign ctrlBlock_io_memoryViolation_bits_robIdx_flag = memBlock_io_mem_to_ooo_memoryViolation_bits_robIdx_flag; // @[XSCore.scala 294:32]
  assign ctrlBlock_io_memoryViolation_bits_robIdx_value = memBlock_io_mem_to_ooo_memoryViolation_bits_robIdx_value; // @[XSCore.scala 294:32]
  assign ctrlBlock_io_memoryViolation_bits_ftqIdx_flag = memBlock_io_mem_to_ooo_memoryViolation_bits_ftqIdx_flag; // @[XSCore.scala 294:32]
  assign ctrlBlock_io_memoryViolation_bits_ftqIdx_value = memBlock_io_mem_to_ooo_memoryViolation_bits_ftqIdx_value; // @[XSCore.scala 294:32]
  assign ctrlBlock_io_memoryViolation_bits_ftqOffset = memBlock_io_mem_to_ooo_memoryViolation_bits_ftqOffset; // @[XSCore.scala 294:32]
  assign ctrlBlock_io_memoryViolation_bits_stFtqIdx_value = memBlock_io_mem_to_ooo_memoryViolation_bits_stFtqIdx_value; // @[XSCore.scala 294:32]
  assign ctrlBlock_io_memoryViolation_bits_stFtqOffset = memBlock_io_mem_to_ooo_memoryViolation_bits_stFtqOffset; // @[XSCore.scala 294:32]
  assign ctrlBlock_io_robio_toCSR_intrBitSet = exuBlocks_io_fuExtra_csrio_interrupt; // @[XSCore.scala 397:21]
  assign ctrlBlock_io_robio_toCSR_trapTarget = exuBlocks_io_fuExtra_csrio_trapTarget; // @[XSCore.scala 396:22]
  assign ctrlBlock_io_robio_toCSR_isXRet = exuBlocks_io_fuExtra_csrio_isXRet; // @[XSCore.scala 395:18]
  assign ctrlBlock_io_robio_toCSR_wfiEvent = exuBlocks_io_fuExtra_csrio_wfi_event; // @[XSCore.scala 398:21]
  assign ctrlBlock_io_robio_lsq_mmio_0 = memBlock_io_mem_to_ooo_lsqio_mmio_0; // @[XSCore.scala 430:42]
  assign ctrlBlock_io_robio_lsq_mmio_1 = memBlock_io_mem_to_ooo_lsqio_mmio_1; // @[XSCore.scala 430:42]
  assign ctrlBlock_io_robio_lsq_uop_0_robIdx_value = memBlock_io_mem_to_ooo_lsqio_uop_0_robIdx_value; // @[XSCore.scala 431:42]
  assign ctrlBlock_io_robio_lsq_uop_1_robIdx_value = memBlock_io_mem_to_ooo_lsqio_uop_1_robIdx_value; // @[XSCore.scala 431:42]
  assign ctrlBlock_io_robio_lsTopdownInfo_0_s1_robIdx = memBlock_io_mem_to_ooo_lsTopdownInfo_0_s1_robIdx; // @[XSCore.scala 435:40]
  assign ctrlBlock_io_robio_lsTopdownInfo_0_s1_vaddr_valid = memBlock_io_mem_to_ooo_lsTopdownInfo_0_s1_vaddr_valid; // @[XSCore.scala 435:40]
  assign ctrlBlock_io_robio_lsTopdownInfo_0_s1_vaddr_bits = memBlock_io_mem_to_ooo_lsTopdownInfo_0_s1_vaddr_bits; // @[XSCore.scala 435:40]
  assign ctrlBlock_io_robio_lsTopdownInfo_0_s2_robIdx = memBlock_io_mem_to_ooo_lsTopdownInfo_0_s2_robIdx; // @[XSCore.scala 435:40]
  assign ctrlBlock_io_robio_lsTopdownInfo_0_s2_paddr_valid = memBlock_io_mem_to_ooo_lsTopdownInfo_0_s2_paddr_valid; // @[XSCore.scala 435:40]
  assign ctrlBlock_io_robio_lsTopdownInfo_0_s2_paddr_bits = memBlock_io_mem_to_ooo_lsTopdownInfo_0_s2_paddr_bits; // @[XSCore.scala 435:40]
  assign ctrlBlock_io_robio_lsTopdownInfo_1_s1_robIdx = memBlock_io_mem_to_ooo_lsTopdownInfo_1_s1_robIdx; // @[XSCore.scala 435:40]
  assign ctrlBlock_io_robio_lsTopdownInfo_1_s1_vaddr_valid = memBlock_io_mem_to_ooo_lsTopdownInfo_1_s1_vaddr_valid; // @[XSCore.scala 435:40]
  assign ctrlBlock_io_robio_lsTopdownInfo_1_s1_vaddr_bits = memBlock_io_mem_to_ooo_lsTopdownInfo_1_s1_vaddr_bits; // @[XSCore.scala 435:40]
  assign ctrlBlock_io_robio_lsTopdownInfo_1_s2_robIdx = memBlock_io_mem_to_ooo_lsTopdownInfo_1_s2_robIdx; // @[XSCore.scala 435:40]
  assign ctrlBlock_io_robio_lsTopdownInfo_1_s2_paddr_valid = memBlock_io_mem_to_ooo_lsTopdownInfo_1_s2_paddr_valid; // @[XSCore.scala 435:40]
  assign ctrlBlock_io_robio_lsTopdownInfo_1_s2_paddr_bits = memBlock_io_mem_to_ooo_lsTopdownInfo_1_s2_paddr_bits; // @[XSCore.scala 435:40]
  assign ctrlBlock_io_csrCtrl_lvpred_timeout = exuBlocks_io_fuExtra_csrio_customCtrl_lvpred_timeout; // @[XSCore.scala 290:24]
  assign ctrlBlock_io_csrCtrl_fusion_enable = exuBlocks_io_fuExtra_csrio_customCtrl_fusion_enable; // @[XSCore.scala 290:24]
  assign ctrlBlock_io_csrCtrl_wfi_enable = exuBlocks_io_fuExtra_csrio_customCtrl_wfi_enable; // @[XSCore.scala 290:24]
  assign ctrlBlock_io_csrCtrl_svinval_enable = exuBlocks_io_fuExtra_csrio_customCtrl_svinval_enable; // @[XSCore.scala 290:24]
  assign ctrlBlock_io_csrCtrl_distribute_csr_wvalid = exuBlocks_io_fuExtra_csrio_customCtrl_distribute_csr_wvalid; // @[XSCore.scala 290:24]
  assign ctrlBlock_io_csrCtrl_distribute_csr_waddr =
    exuBlocks_io_fuExtra_csrio_customCtrl_distribute_csr_waddr; // @[XSCore.scala 290:24]
  assign ctrlBlock_io_csrCtrl_distribute_csr_wdata =
    exuBlocks_io_fuExtra_csrio_customCtrl_distribute_csr_wdata; // @[XSCore.scala 290:24]
  assign ctrlBlock_io_csrCtrl_singlestep = exuBlocks_io_fuExtra_csrio_customCtrl_singlestep; // @[XSCore.scala 290:24]
  assign ctrlBlock_io_writeback_1_0_valid = wbArbiter_io_out_0_valid; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_0_bits_uop_robIdx_flag = wbArbiter_io_out_0_bits_uop_robIdx_flag; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_0_bits_uop_robIdx_value = wbArbiter_io_out_0_bits_uop_robIdx_value; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_0_bits_uop_lqIdx_flag = wbArbiter_io_out_0_bits_uop_lqIdx_flag; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_0_bits_uop_lqIdx_value = wbArbiter_io_out_0_bits_uop_lqIdx_value; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_0_bits_redirectValid = wbArbiter_io_out_0_bits_redirectValid; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_0_bits_redirect_cfiUpdate_isMisPred =
    wbArbiter_io_out_0_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_1_valid = wbArbiter_io_out_1_valid; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_1_bits_uop_robIdx_flag = wbArbiter_io_out_1_bits_uop_robIdx_flag; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_1_bits_uop_robIdx_value = wbArbiter_io_out_1_bits_uop_robIdx_value; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_1_bits_uop_lqIdx_flag = wbArbiter_io_out_1_bits_uop_lqIdx_flag; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_1_bits_uop_lqIdx_value = wbArbiter_io_out_1_bits_uop_lqIdx_value; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_1_bits_redirectValid = wbArbiter_io_out_1_bits_redirectValid; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_1_bits_redirect_cfiUpdate_isMisPred =
    wbArbiter_io_out_1_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_2_valid = wbArbiter_io_in_6_valid; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_1_2_bits_uop_cf_exceptionVec_4 = wbArbiter_io_out_2_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_2_bits_uop_cf_exceptionVec_5 = wbArbiter_io_out_2_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_2_bits_uop_cf_exceptionVec_13 = wbArbiter_io_out_2_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_2_bits_uop_cf_trigger_backendHit_0 =
    wbArbiter_io_out_2_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_2_bits_uop_cf_trigger_backendHit_1 =
    wbArbiter_io_out_2_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_2_bits_uop_cf_trigger_backendHit_2 =
    wbArbiter_io_out_2_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_2_bits_uop_cf_trigger_backendHit_3 =
    wbArbiter_io_out_2_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_2_bits_uop_cf_trigger_backendHit_4 =
    wbArbiter_io_out_2_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_2_bits_uop_cf_trigger_backendHit_5 =
    wbArbiter_io_out_2_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_2_bits_uop_ctrl_replayInst = wbArbiter_io_out_2_bits_uop_ctrl_replayInst; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_2_bits_uop_robIdx_flag = wbArbiter_io_out_2_bits_uop_robIdx_flag; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_2_bits_uop_robIdx_value = wbArbiter_io_out_2_bits_uop_robIdx_value; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_2_bits_uop_lqIdx_flag = wbArbiter_io_out_2_bits_uop_lqIdx_flag; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_2_bits_uop_lqIdx_value = wbArbiter_io_out_2_bits_uop_lqIdx_value; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_2_bits_debug_isMMIO = wbArbiter_io_out_2_bits_debug_isMMIO; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_3_valid = wbArbiter_io_in_7_valid; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_1_3_bits_uop_cf_exceptionVec_4 = wbArbiter_io_out_3_bits_uop_cf_exceptionVec_4; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_3_bits_uop_cf_exceptionVec_5 = wbArbiter_io_out_3_bits_uop_cf_exceptionVec_5; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_3_bits_uop_cf_exceptionVec_13 = wbArbiter_io_out_3_bits_uop_cf_exceptionVec_13; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_3_bits_uop_cf_trigger_backendHit_0 =
    wbArbiter_io_out_3_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_3_bits_uop_cf_trigger_backendHit_1 =
    wbArbiter_io_out_3_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_3_bits_uop_cf_trigger_backendHit_2 =
    wbArbiter_io_out_3_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_3_bits_uop_cf_trigger_backendHit_3 =
    wbArbiter_io_out_3_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_3_bits_uop_cf_trigger_backendHit_4 =
    wbArbiter_io_out_3_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_3_bits_uop_cf_trigger_backendHit_5 =
    wbArbiter_io_out_3_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_3_bits_uop_ctrl_replayInst = wbArbiter_io_out_3_bits_uop_ctrl_replayInst; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_3_bits_uop_robIdx_flag = wbArbiter_io_out_3_bits_uop_robIdx_flag; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_3_bits_uop_robIdx_value = wbArbiter_io_out_3_bits_uop_robIdx_value; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_3_bits_uop_lqIdx_flag = wbArbiter_io_out_3_bits_uop_lqIdx_flag; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_3_bits_uop_lqIdx_value = wbArbiter_io_out_3_bits_uop_lqIdx_value; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_3_bits_debug_isMMIO = wbArbiter_io_out_3_bits_debug_isMMIO; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_4_valid = wbArbiter_io_out_4_valid; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_4_bits_uop_cf_exceptionVec_2 = wbArbiter_io_out_4_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_4_bits_uop_cf_exceptionVec_3 = wbArbiter_io_out_4_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_4_bits_uop_cf_exceptionVec_8 = wbArbiter_io_out_4_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_4_bits_uop_cf_exceptionVec_9 = wbArbiter_io_out_4_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_4_bits_uop_cf_exceptionVec_11 = wbArbiter_io_out_4_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_4_bits_uop_ctrl_flushPipe = wbArbiter_io_out_4_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_4_bits_uop_robIdx_flag = wbArbiter_io_out_4_bits_uop_robIdx_flag; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_4_bits_uop_robIdx_value = wbArbiter_io_out_4_bits_uop_robIdx_value; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_4_bits_uop_lqIdx_flag = wbArbiter_io_out_4_bits_uop_lqIdx_flag; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_4_bits_uop_lqIdx_value = wbArbiter_io_out_4_bits_uop_lqIdx_value; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_4_bits_redirectValid = wbArbiter_io_out_4_bits_redirectValid; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_4_bits_redirect_cfiUpdate_isMisPred =
    wbArbiter_io_out_4_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_4_bits_debug_isPerfCnt = wbArbiter_io_out_4_bits_debug_isPerfCnt; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_5_valid = wbArbiter_io_out_5_valid; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_5_bits_uop_cf_trigger_backendHit_0 =
    wbArbiter_io_out_5_bits_uop_cf_trigger_backendHit_0; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_5_bits_uop_cf_trigger_backendHit_1 =
    wbArbiter_io_out_5_bits_uop_cf_trigger_backendHit_1; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_5_bits_uop_cf_trigger_backendHit_2 =
    wbArbiter_io_out_5_bits_uop_cf_trigger_backendHit_2; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_5_bits_uop_cf_trigger_backendHit_3 =
    wbArbiter_io_out_5_bits_uop_cf_trigger_backendHit_3; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_5_bits_uop_cf_trigger_backendHit_4 =
    wbArbiter_io_out_5_bits_uop_cf_trigger_backendHit_4; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_5_bits_uop_cf_trigger_backendHit_5 =
    wbArbiter_io_out_5_bits_uop_cf_trigger_backendHit_5; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_5_bits_uop_robIdx_flag = wbArbiter_io_out_5_bits_uop_robIdx_flag; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_5_bits_uop_robIdx_value = wbArbiter_io_out_5_bits_uop_robIdx_value; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_5_bits_uop_lqIdx_flag = wbArbiter_io_out_5_bits_uop_lqIdx_flag; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_5_bits_uop_lqIdx_value = wbArbiter_io_out_5_bits_uop_lqIdx_value; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_6_valid = wbArbiter_io_out_8_valid; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_6_bits_uop_cf_exceptionVec_2 = wbArbiter_io_out_8_bits_uop_cf_exceptionVec_2; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_6_bits_uop_cf_exceptionVec_3 = wbArbiter_io_out_8_bits_uop_cf_exceptionVec_3; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_6_bits_uop_cf_exceptionVec_8 = wbArbiter_io_out_8_bits_uop_cf_exceptionVec_8; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_6_bits_uop_cf_exceptionVec_9 = wbArbiter_io_out_8_bits_uop_cf_exceptionVec_9; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_6_bits_uop_cf_exceptionVec_11 = wbArbiter_io_out_8_bits_uop_cf_exceptionVec_11; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_6_bits_uop_ctrl_flushPipe = wbArbiter_io_out_8_bits_uop_ctrl_flushPipe; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_6_bits_uop_robIdx_flag = wbArbiter_io_out_8_bits_uop_robIdx_flag; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_6_bits_uop_robIdx_value = wbArbiter_io_out_8_bits_uop_robIdx_value; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_6_bits_uop_lqIdx_flag = wbArbiter_io_out_8_bits_uop_lqIdx_flag; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_6_bits_uop_lqIdx_value = wbArbiter_io_out_8_bits_uop_lqIdx_value; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_6_bits_redirectValid = wbArbiter_io_out_8_bits_redirectValid; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_6_bits_redirect_cfiUpdate_isMisPred =
    wbArbiter_io_out_8_bits_redirect_cfiUpdate_isMisPred; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_6_bits_debug_isPerfCnt = wbArbiter_io_out_8_bits_debug_isPerfCnt; // @[WbArbiter.scala 285:{39,39}]
  assign ctrlBlock_io_writeback_1_7_valid = wbArbiter_io_in_8_valid; // @[Scheduler.scala 110:17 111:13]
  assign ctrlBlock_io_writeback_1_7_bits_uop_cf_exceptionVec_4 = wbArbiter_io_in_8_bits_uop_cf_exceptionVec_4; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_uop_cf_exceptionVec_5 = wbArbiter_io_in_8_bits_uop_cf_exceptionVec_5; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_uop_cf_exceptionVec_6 = wbArbiter_io_in_8_bits_uop_cf_exceptionVec_6; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_uop_cf_exceptionVec_7 = wbArbiter_io_in_8_bits_uop_cf_exceptionVec_7; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_uop_cf_exceptionVec_13 = wbArbiter_io_in_8_bits_uop_cf_exceptionVec_13; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_uop_cf_exceptionVec_15 = wbArbiter_io_in_8_bits_uop_cf_exceptionVec_15; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_uop_cf_trigger_backendHit_0 =
    wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_0; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_uop_cf_trigger_backendHit_1 =
    wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_1; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_uop_cf_trigger_backendHit_2 =
    wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_2; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_uop_cf_trigger_backendHit_3 =
    wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_3; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_uop_cf_trigger_backendHit_4 =
    wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_4; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_uop_cf_trigger_backendHit_5 =
    wbArbiter_io_in_8_bits_uop_cf_trigger_backendHit_5; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_uop_robIdx_flag = wbArbiter_io_in_8_bits_uop_robIdx_flag; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_uop_robIdx_value = wbArbiter_io_in_8_bits_uop_robIdx_value; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_uop_lqIdx_flag = wbArbiter_io_in_8_bits_uop_lqIdx_flag; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_uop_lqIdx_value = wbArbiter_io_in_8_bits_uop_lqIdx_value; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_redirectValid = wbArbiter_io_in_8_bits_redirectValid; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_redirect_cfiUpdate_isMisPred =
    wbArbiter_io_in_8_bits_redirect_cfiUpdate_isMisPred; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_debug_isMMIO = wbArbiter_io_in_8_bits_debug_isMMIO; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_7_bits_debug_isPerfCnt = wbArbiter_io_in_8_bits_debug_isPerfCnt; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_valid = wbArbiter_io_in_9_valid; // @[Scheduler.scala 110:17 111:13]
  assign ctrlBlock_io_writeback_1_8_bits_uop_cf_exceptionVec_4 = wbArbiter_io_in_9_bits_uop_cf_exceptionVec_4; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_uop_cf_exceptionVec_5 = wbArbiter_io_in_9_bits_uop_cf_exceptionVec_5; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_uop_cf_exceptionVec_6 = wbArbiter_io_in_9_bits_uop_cf_exceptionVec_6; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_uop_cf_exceptionVec_7 = wbArbiter_io_in_9_bits_uop_cf_exceptionVec_7; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_uop_cf_exceptionVec_13 = wbArbiter_io_in_9_bits_uop_cf_exceptionVec_13; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_uop_cf_exceptionVec_15 = wbArbiter_io_in_9_bits_uop_cf_exceptionVec_15; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_uop_cf_trigger_backendHit_0 =
    wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_0; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_uop_cf_trigger_backendHit_1 =
    wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_1; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_uop_cf_trigger_backendHit_2 =
    wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_2; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_uop_cf_trigger_backendHit_3 =
    wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_3; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_uop_cf_trigger_backendHit_4 =
    wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_4; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_uop_cf_trigger_backendHit_5 =
    wbArbiter_io_in_9_bits_uop_cf_trigger_backendHit_5; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_uop_robIdx_flag = wbArbiter_io_in_9_bits_uop_robIdx_flag; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_uop_robIdx_value = wbArbiter_io_in_9_bits_uop_robIdx_value; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_uop_lqIdx_flag = wbArbiter_io_in_9_bits_uop_lqIdx_flag; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_uop_lqIdx_value = wbArbiter_io_in_9_bits_uop_lqIdx_value; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_redirectValid = wbArbiter_io_in_9_bits_redirectValid; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_redirect_cfiUpdate_isMisPred =
    wbArbiter_io_in_9_bits_redirect_cfiUpdate_isMisPred; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_debug_isMMIO = wbArbiter_io_in_9_bits_debug_isMMIO; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_8_bits_debug_isPerfCnt = wbArbiter_io_in_9_bits_debug_isPerfCnt; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_9_valid = wbArbiter_io_in_10_valid; // @[Scheduler.scala 110:17 111:13]
  assign ctrlBlock_io_writeback_1_9_bits_uop_robIdx_flag = wbArbiter_io_in_10_bits_uop_robIdx_flag; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_9_bits_uop_robIdx_value = wbArbiter_io_in_10_bits_uop_robIdx_value; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_10_valid = wbArbiter_io_in_11_valid; // @[Scheduler.scala 110:17 111:13]
  assign ctrlBlock_io_writeback_1_10_bits_uop_robIdx_flag = wbArbiter_io_in_11_bits_uop_robIdx_flag; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_1_10_bits_uop_robIdx_value = wbArbiter_io_in_11_bits_uop_robIdx_value; // @[Scheduler.scala 110:17 112:12]
  assign ctrlBlock_io_writeback_0_3_valid = wb2Ctrl_io_out_3_valid; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_3_bits_uop_cf_exceptionVec_2 = wb2Ctrl_io_out_3_bits_uop_cf_exceptionVec_2; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_3_bits_uop_cf_exceptionVec_3 = wb2Ctrl_io_out_3_bits_uop_cf_exceptionVec_3; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_3_bits_uop_cf_exceptionVec_8 = wb2Ctrl_io_out_3_bits_uop_cf_exceptionVec_8; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_3_bits_uop_cf_exceptionVec_9 = wb2Ctrl_io_out_3_bits_uop_cf_exceptionVec_9; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_3_bits_uop_cf_exceptionVec_11 = wb2Ctrl_io_out_3_bits_uop_cf_exceptionVec_11; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_3_bits_uop_ctrl_flushPipe = wb2Ctrl_io_out_3_bits_uop_ctrl_flushPipe; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_3_bits_uop_robIdx_flag = wb2Ctrl_io_out_3_bits_uop_robIdx_flag; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_3_bits_uop_robIdx_value = wb2Ctrl_io_out_3_bits_uop_robIdx_value; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_3_bits_fflags = wb2Ctrl_io_out_3_bits_fflags; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_4_valid = wb2Ctrl_io_out_4_valid; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_4_bits_uop_robIdx_flag = wb2Ctrl_io_out_4_bits_uop_robIdx_flag; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_4_bits_uop_robIdx_value = wb2Ctrl_io_out_4_bits_uop_robIdx_value; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_4_bits_fflags = wb2Ctrl_io_out_4_bits_fflags; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_5_valid = wb2Ctrl_io_out_5_valid; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_5_bits_uop_robIdx_flag = wb2Ctrl_io_out_5_bits_uop_robIdx_flag; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_5_bits_uop_robIdx_value = wb2Ctrl_io_out_5_bits_uop_robIdx_value; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_5_bits_fflags = wb2Ctrl_io_out_5_bits_fflags; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_6_valid = wb2Ctrl_io_out_6_valid; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_6_bits_uop_cf_exceptionVec_4 = wb2Ctrl_io_out_6_bits_uop_cf_exceptionVec_4; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_6_bits_uop_cf_exceptionVec_5 = wb2Ctrl_io_out_6_bits_uop_cf_exceptionVec_5; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_6_bits_uop_cf_exceptionVec_13 = wb2Ctrl_io_out_6_bits_uop_cf_exceptionVec_13; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_6_bits_uop_cf_trigger_backendHit_0 = wb2Ctrl_io_out_6_bits_uop_cf_trigger_backendHit_0
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_6_bits_uop_cf_trigger_backendHit_1 = wb2Ctrl_io_out_6_bits_uop_cf_trigger_backendHit_1
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_6_bits_uop_cf_trigger_backendHit_2 = wb2Ctrl_io_out_6_bits_uop_cf_trigger_backendHit_2
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_6_bits_uop_cf_trigger_backendHit_3 = wb2Ctrl_io_out_6_bits_uop_cf_trigger_backendHit_3
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_6_bits_uop_cf_trigger_backendHit_4 = wb2Ctrl_io_out_6_bits_uop_cf_trigger_backendHit_4
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_6_bits_uop_cf_trigger_backendHit_5 = wb2Ctrl_io_out_6_bits_uop_cf_trigger_backendHit_5
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_6_bits_uop_ctrl_replayInst = wb2Ctrl_io_out_6_bits_uop_ctrl_replayInst; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_6_bits_uop_robIdx_flag = wb2Ctrl_io_out_6_bits_uop_robIdx_flag; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_6_bits_uop_robIdx_value = wb2Ctrl_io_out_6_bits_uop_robIdx_value; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_7_valid = wb2Ctrl_io_out_7_valid; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_7_bits_uop_cf_exceptionVec_4 = wb2Ctrl_io_out_7_bits_uop_cf_exceptionVec_4; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_7_bits_uop_cf_exceptionVec_5 = wb2Ctrl_io_out_7_bits_uop_cf_exceptionVec_5; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_7_bits_uop_cf_exceptionVec_13 = wb2Ctrl_io_out_7_bits_uop_cf_exceptionVec_13; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_7_bits_uop_cf_trigger_backendHit_0 = wb2Ctrl_io_out_7_bits_uop_cf_trigger_backendHit_0
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_7_bits_uop_cf_trigger_backendHit_1 = wb2Ctrl_io_out_7_bits_uop_cf_trigger_backendHit_1
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_7_bits_uop_cf_trigger_backendHit_2 = wb2Ctrl_io_out_7_bits_uop_cf_trigger_backendHit_2
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_7_bits_uop_cf_trigger_backendHit_3 = wb2Ctrl_io_out_7_bits_uop_cf_trigger_backendHit_3
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_7_bits_uop_cf_trigger_backendHit_4 = wb2Ctrl_io_out_7_bits_uop_cf_trigger_backendHit_4
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_7_bits_uop_cf_trigger_backendHit_5 = wb2Ctrl_io_out_7_bits_uop_cf_trigger_backendHit_5
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_7_bits_uop_ctrl_replayInst = wb2Ctrl_io_out_7_bits_uop_ctrl_replayInst; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_7_bits_uop_robIdx_flag = wb2Ctrl_io_out_7_bits_uop_robIdx_flag; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_7_bits_uop_robIdx_value = wb2Ctrl_io_out_7_bits_uop_robIdx_value; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_8_valid = wb2Ctrl_io_out_8_valid; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_8_bits_uop_cf_exceptionVec_4 = wb2Ctrl_io_out_8_bits_uop_cf_exceptionVec_4; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_8_bits_uop_cf_exceptionVec_5 = wb2Ctrl_io_out_8_bits_uop_cf_exceptionVec_5; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_8_bits_uop_cf_exceptionVec_6 = wb2Ctrl_io_out_8_bits_uop_cf_exceptionVec_6; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_8_bits_uop_cf_exceptionVec_7 = wb2Ctrl_io_out_8_bits_uop_cf_exceptionVec_7; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_8_bits_uop_cf_exceptionVec_13 = wb2Ctrl_io_out_8_bits_uop_cf_exceptionVec_13; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_8_bits_uop_cf_exceptionVec_15 = wb2Ctrl_io_out_8_bits_uop_cf_exceptionVec_15; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_8_bits_uop_cf_trigger_backendHit_0 = wb2Ctrl_io_out_8_bits_uop_cf_trigger_backendHit_0
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_8_bits_uop_cf_trigger_backendHit_1 = wb2Ctrl_io_out_8_bits_uop_cf_trigger_backendHit_1
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_8_bits_uop_cf_trigger_backendHit_2 = wb2Ctrl_io_out_8_bits_uop_cf_trigger_backendHit_2
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_8_bits_uop_cf_trigger_backendHit_3 = wb2Ctrl_io_out_8_bits_uop_cf_trigger_backendHit_3
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_8_bits_uop_cf_trigger_backendHit_4 = wb2Ctrl_io_out_8_bits_uop_cf_trigger_backendHit_4
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_8_bits_uop_cf_trigger_backendHit_5 = wb2Ctrl_io_out_8_bits_uop_cf_trigger_backendHit_5
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_8_bits_uop_robIdx_flag = wb2Ctrl_io_out_8_bits_uop_robIdx_flag; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_8_bits_uop_robIdx_value = wb2Ctrl_io_out_8_bits_uop_robIdx_value; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_9_valid = wb2Ctrl_io_out_9_valid; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_9_bits_uop_cf_exceptionVec_6 = wb2Ctrl_io_out_9_bits_uop_cf_exceptionVec_6; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_9_bits_uop_cf_exceptionVec_7 = wb2Ctrl_io_out_9_bits_uop_cf_exceptionVec_7; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_9_bits_uop_cf_exceptionVec_15 = wb2Ctrl_io_out_9_bits_uop_cf_exceptionVec_15; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_9_bits_uop_cf_trigger_backendHit_0 = wb2Ctrl_io_out_9_bits_uop_cf_trigger_backendHit_0
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_9_bits_uop_cf_trigger_backendHit_1 = wb2Ctrl_io_out_9_bits_uop_cf_trigger_backendHit_1
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_9_bits_uop_cf_trigger_backendHit_4 = wb2Ctrl_io_out_9_bits_uop_cf_trigger_backendHit_4
    ; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_9_bits_uop_robIdx_flag = wb2Ctrl_io_out_9_bits_uop_robIdx_flag; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_writeback_0_9_bits_uop_robIdx_value = wb2Ctrl_io_out_9_bits_uop_robIdx_value; // @[CtrlBlock.scala 253:87]
  assign ctrlBlock_io_robHeadLsIssue = exuBlocks_io_scheExtra_robHeadLsIssue; // @[XSCore.scala 322:88]
  assign ctrlBlock_perfinfo_perfEventsRs_0_value = exuBlocks_io_perf_6_value; // @[XSCore.scala 376:36]
  assign ctrlBlock_perfinfo_perfEventsRs_1_value = exuBlocks_io_perf_7_value; // @[XSCore.scala 376:36]
  assign ctrlBlock_perfinfo_perfEventsRs_2_value = exuBlocks_io_perf_8_value; // @[XSCore.scala 376:36]
  assign ctrlBlock_perfinfo_perfEventsRs_3_value = exuBlocks_io_perf_9_value; // @[XSCore.scala 376:36]
  assign ctrlBlock_perfinfo_perfEventsRs_4_value = exuBlocks_io_perf_10_value; // @[XSCore.scala 376:36]
  assign ctrlBlock_perfinfo_perfEventsRs_5_value = exuBlocks_io_perf_11_value; // @[XSCore.scala 376:36]
  assign ctrlBlock_perfinfo_perfEventsRs_6_value = exuBlocks_1_io_perf_6_value; // @[XSCore.scala 376:36]
  assign ctrlBlock_perfinfo_perfEventsRs_7_value = exuBlocks_1_io_perf_7_value; // @[XSCore.scala 376:36]
  assign ctrlBlock_perfinfo_perfEventsEu0_0_value = exuBlocks_io_perf_0_value; // @[XSCore.scala 374:36]
  assign ctrlBlock_perfinfo_perfEventsEu0_1_value = exuBlocks_io_perf_1_value; // @[XSCore.scala 374:36]
  assign ctrlBlock_perfinfo_perfEventsEu0_2_value = exuBlocks_io_perf_2_value; // @[XSCore.scala 374:36]
  assign ctrlBlock_perfinfo_perfEventsEu0_3_value = exuBlocks_io_perf_3_value; // @[XSCore.scala 374:36]
  assign ctrlBlock_perfinfo_perfEventsEu0_4_value = exuBlocks_io_perf_4_value; // @[XSCore.scala 374:36]
  assign ctrlBlock_perfinfo_perfEventsEu0_5_value = exuBlocks_io_perf_5_value; // @[XSCore.scala 374:36]
  assign ctrlBlock_perfinfo_perfEventsEu1_0_value = exuBlocks_1_io_perf_0_value; // @[XSCore.scala 375:36]
  assign ctrlBlock_perfinfo_perfEventsEu1_1_value = exuBlocks_1_io_perf_1_value; // @[XSCore.scala 375:36]
  assign ctrlBlock_perfinfo_perfEventsEu1_2_value = exuBlocks_1_io_perf_2_value; // @[XSCore.scala 375:36]
  assign ctrlBlock_perfinfo_perfEventsEu1_3_value = exuBlocks_1_io_perf_3_value; // @[XSCore.scala 375:36]
  assign ctrlBlock_perfinfo_perfEventsEu1_4_value = exuBlocks_1_io_perf_4_value; // @[XSCore.scala 375:36]
  assign ctrlBlock_perfinfo_perfEventsEu1_5_value = exuBlocks_1_io_perf_5_value; // @[XSCore.scala 375:36]
  assign resetGen_clock = clock;
  assign resetGen_reset = reset;
  assign resetGen_1_clock = clock;
  assign resetGen_1_reset = resetGen_o_reset; // @[ResetGen.scala 50:30 53:22]
  assign resetGen_2_clock = clock;
  assign resetGen_2_reset = resetGen_1_o_reset; // @[ResetGen.scala 50:30 53:22]
  assign resetGen_3_clock = clock;
  assign resetGen_3_reset = resetGen_1_o_reset; // @[ResetGen.scala 50:30 53:22]
  assign resetGen_4_clock = clock;
  assign resetGen_4_reset = resetGen_3_o_reset; // @[ResetGen.scala 50:30 53:22]
endmodule

