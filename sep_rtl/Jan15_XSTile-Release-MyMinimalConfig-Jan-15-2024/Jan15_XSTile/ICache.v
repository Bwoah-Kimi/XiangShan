module ICache(
  input          clock,
  input          reset,
  input          auto_client_out_a_ready,
  output         auto_client_out_a_valid,
  output [2:0]   auto_client_out_a_bits_opcode,
  output [2:0]   auto_client_out_a_bits_size,
  output [1:0]   auto_client_out_a_bits_source,
  output [35:0]  auto_client_out_a_bits_address,
  output [3:0]   auto_client_out_a_bits_user_reqSource,
  output [31:0]  auto_client_out_a_bits_mask,
  input          auto_client_out_d_valid,
  input  [2:0]   auto_client_out_d_bits_opcode,
  input  [1:0]   auto_client_out_d_bits_source,
  input  [255:0] auto_client_out_d_bits_data,
  input          auto_client_out_d_bits_corrupt,
  input  [38:0]  io_prefetch_req_bits_target,
  input          io_stop,
  output         io_fetch_req_ready,
  input          io_fetch_req_valid,
  input  [38:0]  io_fetch_req_bits_pcMemRead_0_startAddr,
  input  [38:0]  io_fetch_req_bits_pcMemRead_0_nextlineStart,
  input  [38:0]  io_fetch_req_bits_pcMemRead_1_startAddr,
  input  [38:0]  io_fetch_req_bits_pcMemRead_1_nextlineStart,
  input  [38:0]  io_fetch_req_bits_pcMemRead_2_startAddr,
  input  [38:0]  io_fetch_req_bits_pcMemRead_2_nextlineStart,
  input          io_fetch_req_bits_readValid_0,
  input          io_fetch_req_bits_readValid_1,
  input          io_fetch_req_bits_readValid_2,
  output         io_fetch_resp_0_valid,
  output [38:0]  io_fetch_resp_0_bits_vaddr,
  output [511:0] io_fetch_resp_0_bits_registerData,
  output [511:0] io_fetch_resp_0_bits_sramData,
  output         io_fetch_resp_0_bits_select,
  output [35:0]  io_fetch_resp_0_bits_paddr,
  output         io_fetch_resp_0_bits_tlbExcp_pageFault,
  output         io_fetch_resp_0_bits_tlbExcp_accessFault,
  output         io_fetch_resp_0_bits_tlbExcp_mmio,
  output         io_fetch_resp_1_valid,
  output [38:0]  io_fetch_resp_1_bits_vaddr,
  output [511:0] io_fetch_resp_1_bits_registerData,
  output [511:0] io_fetch_resp_1_bits_sramData,
  output         io_fetch_resp_1_bits_select,
  output         io_fetch_resp_1_bits_tlbExcp_pageFault,
  output         io_fetch_resp_1_bits_tlbExcp_accessFault,
  output         io_fetch_topdownIcacheMiss,
  output         io_fetch_topdownItlbMiss,
  output         io_toIFU,
  output [35:0]  io_pmp_0_req_bits_addr,
  input          io_pmp_0_resp_instr,
  input          io_pmp_0_resp_mmio,
  output [35:0]  io_pmp_1_req_bits_addr,
  input          io_pmp_1_resp_instr,
  output         io_itlb_0_req_valid,
  output [38:0]  io_itlb_0_req_bits_vaddr,
  input  [35:0]  io_itlb_0_resp_bits_paddr_0,
  input          io_itlb_0_resp_bits_miss,
  input          io_itlb_0_resp_bits_excp_0_pf_instr,
  input          io_itlb_0_resp_bits_excp_0_af_instr,
  output         io_itlb_1_req_valid,
  output [38:0]  io_itlb_1_req_bits_vaddr,
  input  [35:0]  io_itlb_1_resp_bits_paddr_0,
  input          io_itlb_1_resp_bits_miss,
  input          io_itlb_1_resp_bits_excp_0_pf_instr,
  input          io_itlb_1_resp_bits_excp_0_af_instr,
  output         io_perfInfo_only_0_hit,
  output         io_perfInfo_only_0_miss,
  output         io_perfInfo_hit_0_hit_1,
  output         io_perfInfo_hit_0_miss_1,
  output         io_perfInfo_miss_0_hit_1,
  output         io_perfInfo_miss_0_miss_1,
  output         io_perfInfo_bank_hit_1,
  output         io_perfInfo_hit,
  output         io_error_source_tag,
  output         io_error_source_data,
  output         io_error_source_l2,
  output         io_error_opType_fetch,
  output         io_error_opType_load,
  output         io_error_opType_store,
  output         io_error_opType_probe,
  output         io_error_opType_release,
  output         io_error_opType_atom,
  output [35:0]  io_error_paddr,
  output         io_error_report_to_beu,
  output         io_error_valid,
  input          io_csr_distribute_csr_wvalid,
  input  [11:0]  io_csr_distribute_csr_waddr,
  input  [63:0]  io_csr_distribute_csr_wdata,
  output         io_csr_update_wvalid,
  output [11:0]  io_csr_update_waddr,
  output [63:0]  io_csr_update_wdata,
  input          io_csr_parity_enable,
  input          io_fencei
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire  metaArray_clock; // @[ICache.scala 538:33]
  wire  metaArray_reset; // @[ICache.scala 538:33]
  wire  metaArray_io_write_valid; // @[ICache.scala 538:33]
  wire [5:0] metaArray_io_write_bits_virIdx; // @[ICache.scala 538:33]
  wire [23:0] metaArray_io_write_bits_phyTag; // @[ICache.scala 538:33]
  wire [3:0] metaArray_io_write_bits_waymask; // @[ICache.scala 538:33]
  wire  metaArray_io_write_bits_bankIdx; // @[ICache.scala 538:33]
  wire  metaArray_io_read_ready; // @[ICache.scala 538:33]
  wire  metaArray_io_read_valid; // @[ICache.scala 538:33]
  wire  metaArray_io_read_bits_isDoubleLine; // @[ICache.scala 538:33]
  wire [5:0] metaArray_io_read_bits_vSetIdx_0; // @[ICache.scala 538:33]
  wire [5:0] metaArray_io_read_bits_vSetIdx_1; // @[ICache.scala 538:33]
  wire [23:0] metaArray_io_readResp_metaData_0_0_tag; // @[ICache.scala 538:33]
  wire [23:0] metaArray_io_readResp_metaData_0_1_tag; // @[ICache.scala 538:33]
  wire [23:0] metaArray_io_readResp_metaData_0_2_tag; // @[ICache.scala 538:33]
  wire [23:0] metaArray_io_readResp_metaData_0_3_tag; // @[ICache.scala 538:33]
  wire [23:0] metaArray_io_readResp_metaData_1_0_tag; // @[ICache.scala 538:33]
  wire [23:0] metaArray_io_readResp_metaData_1_1_tag; // @[ICache.scala 538:33]
  wire [23:0] metaArray_io_readResp_metaData_1_2_tag; // @[ICache.scala 538:33]
  wire [23:0] metaArray_io_readResp_metaData_1_3_tag; // @[ICache.scala 538:33]
  wire  metaArray_io_readResp_errors_0_0; // @[ICache.scala 538:33]
  wire  metaArray_io_readResp_errors_0_1; // @[ICache.scala 538:33]
  wire  metaArray_io_readResp_errors_0_2; // @[ICache.scala 538:33]
  wire  metaArray_io_readResp_errors_0_3; // @[ICache.scala 538:33]
  wire  metaArray_io_readResp_errors_1_0; // @[ICache.scala 538:33]
  wire  metaArray_io_readResp_errors_1_1; // @[ICache.scala 538:33]
  wire  metaArray_io_readResp_errors_1_2; // @[ICache.scala 538:33]
  wire  metaArray_io_readResp_errors_1_3; // @[ICache.scala 538:33]
  wire  metaArray_io_readResp_entryValid_0_0; // @[ICache.scala 538:33]
  wire  metaArray_io_readResp_entryValid_0_1; // @[ICache.scala 538:33]
  wire  metaArray_io_readResp_entryValid_0_2; // @[ICache.scala 538:33]
  wire  metaArray_io_readResp_entryValid_0_3; // @[ICache.scala 538:33]
  wire  metaArray_io_readResp_entryValid_1_0; // @[ICache.scala 538:33]
  wire  metaArray_io_readResp_entryValid_1_1; // @[ICache.scala 538:33]
  wire  metaArray_io_readResp_entryValid_1_2; // @[ICache.scala 538:33]
  wire  metaArray_io_readResp_entryValid_1_3; // @[ICache.scala 538:33]
  wire  metaArray_io_cacheOp_req_valid; // @[ICache.scala 538:33]
  wire [63:0] metaArray_io_cacheOp_req_bits_wayNum; // @[ICache.scala 538:33]
  wire [63:0] metaArray_io_cacheOp_req_bits_index; // @[ICache.scala 538:33]
  wire [63:0] metaArray_io_cacheOp_req_bits_opCode; // @[ICache.scala 538:33]
  wire [63:0] metaArray_io_cacheOp_req_bits_write_tag_low; // @[ICache.scala 538:33]
  wire  metaArray_io_cacheOp_resp_valid; // @[ICache.scala 538:33]
  wire [63:0] metaArray_io_cacheOp_resp_bits_read_tag_low; // @[ICache.scala 538:33]
  wire  metaArray_io_fencei; // @[ICache.scala 538:33]
  wire  dataArray_clock; // @[ICache.scala 539:33]
  wire  dataArray_reset; // @[ICache.scala 539:33]
  wire  dataArray_io_write_valid; // @[ICache.scala 539:33]
  wire [5:0] dataArray_io_write_bits_virIdx; // @[ICache.scala 539:33]
  wire [511:0] dataArray_io_write_bits_data; // @[ICache.scala 539:33]
  wire [3:0] dataArray_io_write_bits_waymask; // @[ICache.scala 539:33]
  wire  dataArray_io_write_bits_bankIdx; // @[ICache.scala 539:33]
  wire  dataArray_io_read_ready; // @[ICache.scala 539:33]
  wire  dataArray_io_read_valid; // @[ICache.scala 539:33]
  wire  dataArray_io_read_bits_0_isDoubleLine; // @[ICache.scala 539:33]
  wire [5:0] dataArray_io_read_bits_0_vSetIdx_0; // @[ICache.scala 539:33]
  wire [5:0] dataArray_io_read_bits_0_vSetIdx_1; // @[ICache.scala 539:33]
  wire  dataArray_io_read_bits_1_isDoubleLine; // @[ICache.scala 539:33]
  wire [5:0] dataArray_io_read_bits_1_vSetIdx_0; // @[ICache.scala 539:33]
  wire [5:0] dataArray_io_read_bits_1_vSetIdx_1; // @[ICache.scala 539:33]
  wire [511:0] dataArray_io_readResp_datas_0_0; // @[ICache.scala 539:33]
  wire [511:0] dataArray_io_readResp_datas_0_1; // @[ICache.scala 539:33]
  wire [511:0] dataArray_io_readResp_datas_0_2; // @[ICache.scala 539:33]
  wire [511:0] dataArray_io_readResp_datas_0_3; // @[ICache.scala 539:33]
  wire [511:0] dataArray_io_readResp_datas_1_0; // @[ICache.scala 539:33]
  wire [511:0] dataArray_io_readResp_datas_1_1; // @[ICache.scala 539:33]
  wire [511:0] dataArray_io_readResp_datas_1_2; // @[ICache.scala 539:33]
  wire [511:0] dataArray_io_readResp_datas_1_3; // @[ICache.scala 539:33]
  wire [31:0] dataArray_io_readResp_codes_0_0; // @[ICache.scala 539:33]
  wire [31:0] dataArray_io_readResp_codes_0_1; // @[ICache.scala 539:33]
  wire [31:0] dataArray_io_readResp_codes_0_2; // @[ICache.scala 539:33]
  wire [31:0] dataArray_io_readResp_codes_0_3; // @[ICache.scala 539:33]
  wire [31:0] dataArray_io_readResp_codes_1_0; // @[ICache.scala 539:33]
  wire [31:0] dataArray_io_readResp_codes_1_1; // @[ICache.scala 539:33]
  wire [31:0] dataArray_io_readResp_codes_1_2; // @[ICache.scala 539:33]
  wire [31:0] dataArray_io_readResp_codes_1_3; // @[ICache.scala 539:33]
  wire  dataArray_io_cacheOp_req_valid; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_req_bits_wayNum; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_req_bits_index; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_req_bits_opCode; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_req_bits_write_data_vec_0; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_req_bits_write_data_vec_1; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_req_bits_write_data_vec_2; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_req_bits_write_data_vec_3; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_req_bits_write_data_vec_4; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_req_bits_write_data_vec_5; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_req_bits_write_data_vec_6; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_req_bits_write_data_vec_7; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_req_bits_bank_num; // @[ICache.scala 539:33]
  wire  dataArray_io_cacheOp_resp_valid; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_resp_bits_read_data_vec_0; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_resp_bits_read_data_vec_1; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_resp_bits_read_data_vec_2; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_resp_bits_read_data_vec_3; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_resp_bits_read_data_vec_4; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_resp_bits_read_data_vec_5; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_resp_bits_read_data_vec_6; // @[ICache.scala 539:33]
  wire [63:0] dataArray_io_cacheOp_resp_bits_read_data_vec_7; // @[ICache.scala 539:33]
  wire  prefetchMetaArray_clock; // @[ICache.scala 540:33]
  wire  prefetchMetaArray_reset; // @[ICache.scala 540:33]
  wire [5:0] prefetchMetaArray_io_read_0_bits_idx; // @[ICache.scala 540:33]
  wire  prefetchMetaArray_io_write_ready; // @[ICache.scala 540:33]
  wire  prefetchMetaArray_io_write_valid; // @[ICache.scala 540:33]
  wire [5:0] prefetchMetaArray_io_write_bits_virIdx; // @[ICache.scala 540:33]
  wire [23:0] prefetchMetaArray_io_write_bits_phyTag; // @[ICache.scala 540:33]
  wire [3:0] prefetchMetaArray_io_write_bits_waymask; // @[ICache.scala 540:33]
  wire  prefetchMetaArray_io_cacheOp_req_valid; // @[ICache.scala 540:33]
  wire [63:0] prefetchMetaArray_io_cacheOp_req_bits_wayNum; // @[ICache.scala 540:33]
  wire [63:0] prefetchMetaArray_io_cacheOp_req_bits_index; // @[ICache.scala 540:33]
  wire [63:0] prefetchMetaArray_io_cacheOp_req_bits_opCode; // @[ICache.scala 540:33]
  wire [63:0] prefetchMetaArray_io_cacheOp_req_bits_write_tag_low; // @[ICache.scala 540:33]
  wire  mainPipe_clock; // @[ICache.scala 541:33]
  wire  mainPipe_reset; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_toIMeta_ready; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_toIMeta_valid; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_toIMeta_bits_isDoubleLine; // @[ICache.scala 541:33]
  wire [5:0] mainPipe_io_metaArray_toIMeta_bits_vSetIdx_0; // @[ICache.scala 541:33]
  wire [5:0] mainPipe_io_metaArray_toIMeta_bits_vSetIdx_1; // @[ICache.scala 541:33]
  wire [23:0] mainPipe_io_metaArray_fromIMeta_metaData_0_0_tag; // @[ICache.scala 541:33]
  wire [23:0] mainPipe_io_metaArray_fromIMeta_metaData_0_1_tag; // @[ICache.scala 541:33]
  wire [23:0] mainPipe_io_metaArray_fromIMeta_metaData_0_2_tag; // @[ICache.scala 541:33]
  wire [23:0] mainPipe_io_metaArray_fromIMeta_metaData_0_3_tag; // @[ICache.scala 541:33]
  wire [23:0] mainPipe_io_metaArray_fromIMeta_metaData_1_0_tag; // @[ICache.scala 541:33]
  wire [23:0] mainPipe_io_metaArray_fromIMeta_metaData_1_1_tag; // @[ICache.scala 541:33]
  wire [23:0] mainPipe_io_metaArray_fromIMeta_metaData_1_2_tag; // @[ICache.scala 541:33]
  wire [23:0] mainPipe_io_metaArray_fromIMeta_metaData_1_3_tag; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_fromIMeta_errors_0_0; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_fromIMeta_errors_0_1; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_fromIMeta_errors_0_2; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_fromIMeta_errors_0_3; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_fromIMeta_errors_1_0; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_fromIMeta_errors_1_1; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_fromIMeta_errors_1_2; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_fromIMeta_errors_1_3; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_fromIMeta_entryValid_0_0; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_fromIMeta_entryValid_0_1; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_fromIMeta_entryValid_0_2; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_fromIMeta_entryValid_0_3; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_fromIMeta_entryValid_1_0; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_fromIMeta_entryValid_1_1; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_fromIMeta_entryValid_1_2; // @[ICache.scala 541:33]
  wire  mainPipe_io_metaArray_fromIMeta_entryValid_1_3; // @[ICache.scala 541:33]
  wire  mainPipe_io_dataArray_toIData_ready; // @[ICache.scala 541:33]
  wire  mainPipe_io_dataArray_toIData_valid; // @[ICache.scala 541:33]
  wire  mainPipe_io_dataArray_toIData_bits_0_isDoubleLine; // @[ICache.scala 541:33]
  wire [5:0] mainPipe_io_dataArray_toIData_bits_0_vSetIdx_0; // @[ICache.scala 541:33]
  wire [5:0] mainPipe_io_dataArray_toIData_bits_0_vSetIdx_1; // @[ICache.scala 541:33]
  wire  mainPipe_io_dataArray_toIData_bits_1_isDoubleLine; // @[ICache.scala 541:33]
  wire [5:0] mainPipe_io_dataArray_toIData_bits_1_vSetIdx_0; // @[ICache.scala 541:33]
  wire [5:0] mainPipe_io_dataArray_toIData_bits_1_vSetIdx_1; // @[ICache.scala 541:33]
  wire [511:0] mainPipe_io_dataArray_fromIData_datas_0_0; // @[ICache.scala 541:33]
  wire [511:0] mainPipe_io_dataArray_fromIData_datas_0_1; // @[ICache.scala 541:33]
  wire [511:0] mainPipe_io_dataArray_fromIData_datas_0_2; // @[ICache.scala 541:33]
  wire [511:0] mainPipe_io_dataArray_fromIData_datas_0_3; // @[ICache.scala 541:33]
  wire [511:0] mainPipe_io_dataArray_fromIData_datas_1_0; // @[ICache.scala 541:33]
  wire [511:0] mainPipe_io_dataArray_fromIData_datas_1_1; // @[ICache.scala 541:33]
  wire [511:0] mainPipe_io_dataArray_fromIData_datas_1_2; // @[ICache.scala 541:33]
  wire [511:0] mainPipe_io_dataArray_fromIData_datas_1_3; // @[ICache.scala 541:33]
  wire [31:0] mainPipe_io_dataArray_fromIData_codes_0_0; // @[ICache.scala 541:33]
  wire [31:0] mainPipe_io_dataArray_fromIData_codes_0_1; // @[ICache.scala 541:33]
  wire [31:0] mainPipe_io_dataArray_fromIData_codes_0_2; // @[ICache.scala 541:33]
  wire [31:0] mainPipe_io_dataArray_fromIData_codes_0_3; // @[ICache.scala 541:33]
  wire [31:0] mainPipe_io_dataArray_fromIData_codes_1_0; // @[ICache.scala 541:33]
  wire [31:0] mainPipe_io_dataArray_fromIData_codes_1_1; // @[ICache.scala 541:33]
  wire [31:0] mainPipe_io_dataArray_fromIData_codes_1_2; // @[ICache.scala 541:33]
  wire [31:0] mainPipe_io_dataArray_fromIData_codes_1_3; // @[ICache.scala 541:33]
  wire [3:0] mainPipe_io_IPFReplacer_waymask; // @[ICache.scala 541:33]
  wire  mainPipe_io_mshr_0_toMSHR_ready; // @[ICache.scala 541:33]
  wire  mainPipe_io_mshr_0_toMSHR_valid; // @[ICache.scala 541:33]
  wire [35:0] mainPipe_io_mshr_0_toMSHR_bits_paddr; // @[ICache.scala 541:33]
  wire [38:0] mainPipe_io_mshr_0_toMSHR_bits_vaddr; // @[ICache.scala 541:33]
  wire [3:0] mainPipe_io_mshr_0_toMSHR_bits_waymask; // @[ICache.scala 541:33]
  wire  mainPipe_io_mshr_0_fromMSHR_valid; // @[ICache.scala 541:33]
  wire [511:0] mainPipe_io_mshr_0_fromMSHR_bits_data; // @[ICache.scala 541:33]
  wire  mainPipe_io_mshr_0_fromMSHR_bits_corrupt; // @[ICache.scala 541:33]
  wire  mainPipe_io_mshr_1_toMSHR_ready; // @[ICache.scala 541:33]
  wire  mainPipe_io_mshr_1_toMSHR_valid; // @[ICache.scala 541:33]
  wire [35:0] mainPipe_io_mshr_1_toMSHR_bits_paddr; // @[ICache.scala 541:33]
  wire [38:0] mainPipe_io_mshr_1_toMSHR_bits_vaddr; // @[ICache.scala 541:33]
  wire [3:0] mainPipe_io_mshr_1_toMSHR_bits_waymask; // @[ICache.scala 541:33]
  wire  mainPipe_io_mshr_1_fromMSHR_valid; // @[ICache.scala 541:33]
  wire [511:0] mainPipe_io_mshr_1_fromMSHR_bits_data; // @[ICache.scala 541:33]
  wire  mainPipe_io_mshr_1_fromMSHR_bits_corrupt; // @[ICache.scala 541:33]
  wire  mainPipe_io_errors_0_source_tag; // @[ICache.scala 541:33]
  wire  mainPipe_io_errors_0_source_data; // @[ICache.scala 541:33]
  wire  mainPipe_io_errors_0_source_l2; // @[ICache.scala 541:33]
  wire [35:0] mainPipe_io_errors_0_paddr; // @[ICache.scala 541:33]
  wire  mainPipe_io_errors_0_report_to_beu; // @[ICache.scala 541:33]
  wire  mainPipe_io_errors_0_valid; // @[ICache.scala 541:33]
  wire  mainPipe_io_errors_1_source_tag; // @[ICache.scala 541:33]
  wire  mainPipe_io_errors_1_source_data; // @[ICache.scala 541:33]
  wire  mainPipe_io_errors_1_source_l2; // @[ICache.scala 541:33]
  wire [35:0] mainPipe_io_errors_1_paddr; // @[ICache.scala 541:33]
  wire  mainPipe_io_errors_1_report_to_beu; // @[ICache.scala 541:33]
  wire  mainPipe_io_errors_1_valid; // @[ICache.scala 541:33]
  wire  mainPipe_io_fetch_req_ready; // @[ICache.scala 541:33]
  wire  mainPipe_io_fetch_req_valid; // @[ICache.scala 541:33]
  wire [38:0] mainPipe_io_fetch_req_bits_pcMemRead_0_startAddr; // @[ICache.scala 541:33]
  wire [38:0] mainPipe_io_fetch_req_bits_pcMemRead_0_nextlineStart; // @[ICache.scala 541:33]
  wire [38:0] mainPipe_io_fetch_req_bits_pcMemRead_1_startAddr; // @[ICache.scala 541:33]
  wire [38:0] mainPipe_io_fetch_req_bits_pcMemRead_1_nextlineStart; // @[ICache.scala 541:33]
  wire [38:0] mainPipe_io_fetch_req_bits_pcMemRead_2_startAddr; // @[ICache.scala 541:33]
  wire [38:0] mainPipe_io_fetch_req_bits_pcMemRead_2_nextlineStart; // @[ICache.scala 541:33]
  wire  mainPipe_io_fetch_req_bits_readValid_0; // @[ICache.scala 541:33]
  wire  mainPipe_io_fetch_req_bits_readValid_1; // @[ICache.scala 541:33]
  wire  mainPipe_io_fetch_req_bits_readValid_2; // @[ICache.scala 541:33]
  wire  mainPipe_io_fetch_resp_0_valid; // @[ICache.scala 541:33]
  wire [38:0] mainPipe_io_fetch_resp_0_bits_vaddr; // @[ICache.scala 541:33]
  wire [511:0] mainPipe_io_fetch_resp_0_bits_registerData; // @[ICache.scala 541:33]
  wire [511:0] mainPipe_io_fetch_resp_0_bits_sramData; // @[ICache.scala 541:33]
  wire  mainPipe_io_fetch_resp_0_bits_select; // @[ICache.scala 541:33]
  wire [35:0] mainPipe_io_fetch_resp_0_bits_paddr; // @[ICache.scala 541:33]
  wire  mainPipe_io_fetch_resp_0_bits_tlbExcp_pageFault; // @[ICache.scala 541:33]
  wire  mainPipe_io_fetch_resp_0_bits_tlbExcp_accessFault; // @[ICache.scala 541:33]
  wire  mainPipe_io_fetch_resp_0_bits_tlbExcp_mmio; // @[ICache.scala 541:33]
  wire  mainPipe_io_fetch_resp_1_valid; // @[ICache.scala 541:33]
  wire [38:0] mainPipe_io_fetch_resp_1_bits_vaddr; // @[ICache.scala 541:33]
  wire [511:0] mainPipe_io_fetch_resp_1_bits_registerData; // @[ICache.scala 541:33]
  wire [511:0] mainPipe_io_fetch_resp_1_bits_sramData; // @[ICache.scala 541:33]
  wire  mainPipe_io_fetch_resp_1_bits_select; // @[ICache.scala 541:33]
  wire  mainPipe_io_fetch_resp_1_bits_tlbExcp_pageFault; // @[ICache.scala 541:33]
  wire  mainPipe_io_fetch_resp_1_bits_tlbExcp_accessFault; // @[ICache.scala 541:33]
  wire  mainPipe_io_fetch_topdownIcacheMiss; // @[ICache.scala 541:33]
  wire  mainPipe_io_fetch_topdownItlbMiss; // @[ICache.scala 541:33]
  wire [35:0] mainPipe_io_pmp_0_req_bits_addr; // @[ICache.scala 541:33]
  wire  mainPipe_io_pmp_0_resp_instr; // @[ICache.scala 541:33]
  wire  mainPipe_io_pmp_0_resp_mmio; // @[ICache.scala 541:33]
  wire [35:0] mainPipe_io_pmp_1_req_bits_addr; // @[ICache.scala 541:33]
  wire  mainPipe_io_pmp_1_resp_instr; // @[ICache.scala 541:33]
  wire  mainPipe_io_itlb_0_req_valid; // @[ICache.scala 541:33]
  wire [38:0] mainPipe_io_itlb_0_req_bits_vaddr; // @[ICache.scala 541:33]
  wire [35:0] mainPipe_io_itlb_0_resp_bits_paddr_0; // @[ICache.scala 541:33]
  wire  mainPipe_io_itlb_0_resp_bits_miss; // @[ICache.scala 541:33]
  wire  mainPipe_io_itlb_0_resp_bits_excp_0_pf_instr; // @[ICache.scala 541:33]
  wire  mainPipe_io_itlb_0_resp_bits_excp_0_af_instr; // @[ICache.scala 541:33]
  wire  mainPipe_io_itlb_1_req_valid; // @[ICache.scala 541:33]
  wire [38:0] mainPipe_io_itlb_1_req_bits_vaddr; // @[ICache.scala 541:33]
  wire [35:0] mainPipe_io_itlb_1_resp_bits_paddr_0; // @[ICache.scala 541:33]
  wire  mainPipe_io_itlb_1_resp_bits_miss; // @[ICache.scala 541:33]
  wire  mainPipe_io_itlb_1_resp_bits_excp_0_pf_instr; // @[ICache.scala 541:33]
  wire  mainPipe_io_itlb_1_resp_bits_excp_0_af_instr; // @[ICache.scala 541:33]
  wire  mainPipe_io_respStall; // @[ICache.scala 541:33]
  wire  mainPipe_io_perfInfo_only_0_hit; // @[ICache.scala 541:33]
  wire  mainPipe_io_perfInfo_only_0_miss; // @[ICache.scala 541:33]
  wire  mainPipe_io_perfInfo_hit_0_hit_1; // @[ICache.scala 541:33]
  wire  mainPipe_io_perfInfo_hit_0_miss_1; // @[ICache.scala 541:33]
  wire  mainPipe_io_perfInfo_miss_0_hit_1; // @[ICache.scala 541:33]
  wire  mainPipe_io_perfInfo_miss_0_miss_1; // @[ICache.scala 541:33]
  wire  mainPipe_io_perfInfo_bank_hit_1; // @[ICache.scala 541:33]
  wire  mainPipe_io_perfInfo_hit; // @[ICache.scala 541:33]
  wire  mainPipe_io_csr_parity_enable; // @[ICache.scala 541:33]
  wire  missUnit_clock; // @[ICache.scala 542:33]
  wire  missUnit_reset; // @[ICache.scala 542:33]
  wire  missUnit_io_req_0_ready; // @[ICache.scala 542:33]
  wire  missUnit_io_req_0_valid; // @[ICache.scala 542:33]
  wire [35:0] missUnit_io_req_0_bits_paddr; // @[ICache.scala 542:33]
  wire [38:0] missUnit_io_req_0_bits_vaddr; // @[ICache.scala 542:33]
  wire [3:0] missUnit_io_req_0_bits_waymask; // @[ICache.scala 542:33]
  wire  missUnit_io_req_1_ready; // @[ICache.scala 542:33]
  wire  missUnit_io_req_1_valid; // @[ICache.scala 542:33]
  wire [35:0] missUnit_io_req_1_bits_paddr; // @[ICache.scala 542:33]
  wire [38:0] missUnit_io_req_1_bits_vaddr; // @[ICache.scala 542:33]
  wire [3:0] missUnit_io_req_1_bits_waymask; // @[ICache.scala 542:33]
  wire  missUnit_io_resp_0_valid; // @[ICache.scala 542:33]
  wire [511:0] missUnit_io_resp_0_bits_data; // @[ICache.scala 542:33]
  wire  missUnit_io_resp_0_bits_corrupt; // @[ICache.scala 542:33]
  wire  missUnit_io_resp_1_valid; // @[ICache.scala 542:33]
  wire [511:0] missUnit_io_resp_1_bits_data; // @[ICache.scala 542:33]
  wire  missUnit_io_resp_1_bits_corrupt; // @[ICache.scala 542:33]
  wire  missUnit_io_mem_acquire_ready; // @[ICache.scala 542:33]
  wire  missUnit_io_mem_acquire_valid; // @[ICache.scala 542:33]
  wire [2:0] missUnit_io_mem_acquire_bits_opcode; // @[ICache.scala 542:33]
  wire [2:0] missUnit_io_mem_acquire_bits_size; // @[ICache.scala 542:33]
  wire [1:0] missUnit_io_mem_acquire_bits_source; // @[ICache.scala 542:33]
  wire [35:0] missUnit_io_mem_acquire_bits_address; // @[ICache.scala 542:33]
  wire [3:0] missUnit_io_mem_acquire_bits_user_reqSource; // @[ICache.scala 542:33]
  wire [31:0] missUnit_io_mem_acquire_bits_mask; // @[ICache.scala 542:33]
  wire  missUnit_io_mem_grant_valid; // @[ICache.scala 542:33]
  wire [2:0] missUnit_io_mem_grant_bits_opcode; // @[ICache.scala 542:33]
  wire [1:0] missUnit_io_mem_grant_bits_source; // @[ICache.scala 542:33]
  wire [255:0] missUnit_io_mem_grant_bits_data; // @[ICache.scala 542:33]
  wire  missUnit_io_mem_grant_bits_corrupt; // @[ICache.scala 542:33]
  wire  missUnit_io_fdip_acquire_ready; // @[ICache.scala 542:33]
  wire  missUnit_io_fdip_acquire_valid; // @[ICache.scala 542:33]
  wire  missUnit_io_fdip_grant_valid; // @[ICache.scala 542:33]
  wire [2:0] missUnit_io_fdip_grant_bits_opcode; // @[ICache.scala 542:33]
  wire  missUnit_io_meta_write_ready; // @[ICache.scala 542:33]
  wire  missUnit_io_meta_write_valid; // @[ICache.scala 542:33]
  wire [5:0] missUnit_io_meta_write_bits_virIdx; // @[ICache.scala 542:33]
  wire [23:0] missUnit_io_meta_write_bits_phyTag; // @[ICache.scala 542:33]
  wire [3:0] missUnit_io_meta_write_bits_waymask; // @[ICache.scala 542:33]
  wire  missUnit_io_meta_write_bits_bankIdx; // @[ICache.scala 542:33]
  wire  missUnit_io_data_write_ready; // @[ICache.scala 542:33]
  wire  missUnit_io_data_write_valid; // @[ICache.scala 542:33]
  wire [5:0] missUnit_io_data_write_bits_virIdx; // @[ICache.scala 542:33]
  wire [511:0] missUnit_io_data_write_bits_data; // @[ICache.scala 542:33]
  wire [3:0] missUnit_io_data_write_bits_waymask; // @[ICache.scala 542:33]
  wire  missUnit_io_data_write_bits_bankIdx; // @[ICache.scala 542:33]
  wire  missUnit_io_fencei; // @[ICache.scala 542:33]
  wire  fdipPrefetch_clock; // @[ICache.scala 543:33]
  wire  fdipPrefetch_reset; // @[ICache.scala 543:33]
  wire [38:0] fdipPrefetch_io_ftqReq_req_bits_target; // @[ICache.scala 543:33]
  wire [5:0] fdipPrefetch_io_metaReadReq_bits_idx; // @[ICache.scala 543:33]
  wire [3:0] fdipPrefetch_io_metaWrite_bits_waymask; // @[ICache.scala 543:33]
  wire [3:0] fdipPrefetch_io_dataWrite_bits_waymask; // @[ICache.scala 543:33]
  wire [3:0] fdipPrefetch_io_IPFReplacer_waymask; // @[ICache.scala 543:33]
  wire  fdipPrefetch_io_mem_acquire_ready; // @[ICache.scala 543:33]
  wire  fdipPrefetch_io_mem_acquire_valid; // @[ICache.scala 543:33]
  wire  fdipPrefetch_io_mem_grant_valid; // @[ICache.scala 543:33]
  wire [2:0] fdipPrefetch_io_mem_grant_bits_opcode; // @[ICache.scala 543:33]
  wire  meta_write_arb_io_in_0_ready; // @[ICache.scala 557:31]
  wire  meta_write_arb_io_in_0_valid; // @[ICache.scala 557:31]
  wire [5:0] meta_write_arb_io_in_0_bits_virIdx; // @[ICache.scala 557:31]
  wire [23:0] meta_write_arb_io_in_0_bits_phyTag; // @[ICache.scala 557:31]
  wire [3:0] meta_write_arb_io_in_0_bits_waymask; // @[ICache.scala 557:31]
  wire  meta_write_arb_io_in_0_bits_bankIdx; // @[ICache.scala 557:31]
  wire  meta_write_arb_io_in_1_ready; // @[ICache.scala 557:31]
  wire  meta_write_arb_io_in_1_valid; // @[ICache.scala 557:31]
  wire [5:0] meta_write_arb_io_in_1_bits_virIdx; // @[ICache.scala 557:31]
  wire [23:0] meta_write_arb_io_in_1_bits_phyTag; // @[ICache.scala 557:31]
  wire [3:0] meta_write_arb_io_in_1_bits_waymask; // @[ICache.scala 557:31]
  wire  meta_write_arb_io_in_1_bits_bankIdx; // @[ICache.scala 557:31]
  wire  meta_write_arb_io_out_ready; // @[ICache.scala 557:31]
  wire  meta_write_arb_io_out_valid; // @[ICache.scala 557:31]
  wire [5:0] meta_write_arb_io_out_bits_virIdx; // @[ICache.scala 557:31]
  wire [23:0] meta_write_arb_io_out_bits_phyTag; // @[ICache.scala 557:31]
  wire [3:0] meta_write_arb_io_out_bits_waymask; // @[ICache.scala 557:31]
  wire  meta_write_arb_io_out_bits_bankIdx; // @[ICache.scala 557:31]
  wire  data_write_arb_io_in_0_ready; // @[ICache.scala 563:30]
  wire  data_write_arb_io_in_0_valid; // @[ICache.scala 563:30]
  wire [5:0] data_write_arb_io_in_0_bits_virIdx; // @[ICache.scala 563:30]
  wire [511:0] data_write_arb_io_in_0_bits_data; // @[ICache.scala 563:30]
  wire [3:0] data_write_arb_io_in_0_bits_waymask; // @[ICache.scala 563:30]
  wire  data_write_arb_io_in_0_bits_bankIdx; // @[ICache.scala 563:30]
  wire  data_write_arb_io_in_1_ready; // @[ICache.scala 563:30]
  wire  data_write_arb_io_in_1_valid; // @[ICache.scala 563:30]
  wire [5:0] data_write_arb_io_in_1_bits_virIdx; // @[ICache.scala 563:30]
  wire [511:0] data_write_arb_io_in_1_bits_data; // @[ICache.scala 563:30]
  wire [3:0] data_write_arb_io_in_1_bits_waymask; // @[ICache.scala 563:30]
  wire  data_write_arb_io_in_1_bits_bankIdx; // @[ICache.scala 563:30]
  wire  data_write_arb_io_out_ready; // @[ICache.scala 563:30]
  wire  data_write_arb_io_out_valid; // @[ICache.scala 563:30]
  wire [5:0] data_write_arb_io_out_bits_virIdx; // @[ICache.scala 563:30]
  wire [511:0] data_write_arb_io_out_bits_data; // @[ICache.scala 563:30]
  wire [3:0] data_write_arb_io_out_bits_waymask; // @[ICache.scala 563:30]
  wire  data_write_arb_io_out_bits_bankIdx; // @[ICache.scala 563:30]
  wire  cacheOpDecoder_clock; // @[ICache.scala 642:30]
  wire  cacheOpDecoder_reset; // @[ICache.scala 642:30]
  wire  cacheOpDecoder_io_csr_distribute_csr_wvalid; // @[ICache.scala 642:30]
  wire [11:0] cacheOpDecoder_io_csr_distribute_csr_waddr; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_csr_distribute_csr_wdata; // @[ICache.scala 642:30]
  wire  cacheOpDecoder_io_csr_update_wvalid; // @[ICache.scala 642:30]
  wire [11:0] cacheOpDecoder_io_csr_update_waddr; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_csr_update_wdata; // @[ICache.scala 642:30]
  wire  cacheOpDecoder_io_cache_req_valid; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_wayNum; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_index; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_opCode; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_tag_low; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_0; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_1; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_2; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_3; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_4; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_5; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_6; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_7; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_bank_num; // @[ICache.scala 642:30]
  wire  cacheOpDecoder_io_cache_resp_valid; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_tag_low; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_0; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_1; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_2; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_3; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_4; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_5; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_6; // @[ICache.scala 642:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_7; // @[ICache.scala 642:30]
  wire  cacheOpDecoder_io_error_source_tag; // @[ICache.scala 642:30]
  wire  cacheOpDecoder_io_error_source_data; // @[ICache.scala 642:30]
  wire  cacheOpDecoder_io_error_source_l2; // @[ICache.scala 642:30]
  wire  cacheOpDecoder_io_error_opType_fetch; // @[ICache.scala 642:30]
  wire  cacheOpDecoder_io_error_opType_load; // @[ICache.scala 642:30]
  wire  cacheOpDecoder_io_error_opType_store; // @[ICache.scala 642:30]
  wire  cacheOpDecoder_io_error_opType_probe; // @[ICache.scala 642:30]
  wire  cacheOpDecoder_io_error_opType_release; // @[ICache.scala 642:30]
  wire  cacheOpDecoder_io_error_opType_atom; // @[ICache.scala 642:30]
  wire [35:0] cacheOpDecoder_io_error_paddr; // @[ICache.scala 642:30]
  wire  cacheOpDecoder_io_error_report_to_beu; // @[ICache.scala 642:30]
  wire  cacheOpDecoder_io_error_valid; // @[ICache.scala 642:30]
  wire [35:0] _io_error_T_6 = mainPipe_io_errors_0_valid ? mainPipe_io_errors_0_paddr : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _io_error_T_7 = mainPipe_io_errors_1_valid ? mainPipe_io_errors_1_paddr : 36'h0; // @[Mux.scala 27:73]
  reg  io_error_REG_source_tag; // @[ICache.scala 624:22]
  reg  io_error_REG_source_data; // @[ICache.scala 624:22]
  reg  io_error_REG_source_l2; // @[ICache.scala 624:22]
  reg  io_error_REG_opType_fetch; // @[ICache.scala 624:22]
  reg [35:0] io_error_REG_paddr; // @[ICache.scala 624:22]
  reg  io_error_REG_report_to_beu; // @[ICache.scala 624:22]
  reg  io_error_REG_valid; // @[ICache.scala 624:22]
  ICacheMetaArray metaArray ( // @[ICache.scala 538:33]
    .clock(metaArray_clock),
    .reset(metaArray_reset),
    .io_write_valid(metaArray_io_write_valid),
    .io_write_bits_virIdx(metaArray_io_write_bits_virIdx),
    .io_write_bits_phyTag(metaArray_io_write_bits_phyTag),
    .io_write_bits_waymask(metaArray_io_write_bits_waymask),
    .io_write_bits_bankIdx(metaArray_io_write_bits_bankIdx),
    .io_read_ready(metaArray_io_read_ready),
    .io_read_valid(metaArray_io_read_valid),
    .io_read_bits_isDoubleLine(metaArray_io_read_bits_isDoubleLine),
    .io_read_bits_vSetIdx_0(metaArray_io_read_bits_vSetIdx_0),
    .io_read_bits_vSetIdx_1(metaArray_io_read_bits_vSetIdx_1),
    .io_readResp_metaData_0_0_tag(metaArray_io_readResp_metaData_0_0_tag),
    .io_readResp_metaData_0_1_tag(metaArray_io_readResp_metaData_0_1_tag),
    .io_readResp_metaData_0_2_tag(metaArray_io_readResp_metaData_0_2_tag),
    .io_readResp_metaData_0_3_tag(metaArray_io_readResp_metaData_0_3_tag),
    .io_readResp_metaData_1_0_tag(metaArray_io_readResp_metaData_1_0_tag),
    .io_readResp_metaData_1_1_tag(metaArray_io_readResp_metaData_1_1_tag),
    .io_readResp_metaData_1_2_tag(metaArray_io_readResp_metaData_1_2_tag),
    .io_readResp_metaData_1_3_tag(metaArray_io_readResp_metaData_1_3_tag),
    .io_readResp_errors_0_0(metaArray_io_readResp_errors_0_0),
    .io_readResp_errors_0_1(metaArray_io_readResp_errors_0_1),
    .io_readResp_errors_0_2(metaArray_io_readResp_errors_0_2),
    .io_readResp_errors_0_3(metaArray_io_readResp_errors_0_3),
    .io_readResp_errors_1_0(metaArray_io_readResp_errors_1_0),
    .io_readResp_errors_1_1(metaArray_io_readResp_errors_1_1),
    .io_readResp_errors_1_2(metaArray_io_readResp_errors_1_2),
    .io_readResp_errors_1_3(metaArray_io_readResp_errors_1_3),
    .io_readResp_entryValid_0_0(metaArray_io_readResp_entryValid_0_0),
    .io_readResp_entryValid_0_1(metaArray_io_readResp_entryValid_0_1),
    .io_readResp_entryValid_0_2(metaArray_io_readResp_entryValid_0_2),
    .io_readResp_entryValid_0_3(metaArray_io_readResp_entryValid_0_3),
    .io_readResp_entryValid_1_0(metaArray_io_readResp_entryValid_1_0),
    .io_readResp_entryValid_1_1(metaArray_io_readResp_entryValid_1_1),
    .io_readResp_entryValid_1_2(metaArray_io_readResp_entryValid_1_2),
    .io_readResp_entryValid_1_3(metaArray_io_readResp_entryValid_1_3),
    .io_cacheOp_req_valid(metaArray_io_cacheOp_req_valid),
    .io_cacheOp_req_bits_wayNum(metaArray_io_cacheOp_req_bits_wayNum),
    .io_cacheOp_req_bits_index(metaArray_io_cacheOp_req_bits_index),
    .io_cacheOp_req_bits_opCode(metaArray_io_cacheOp_req_bits_opCode),
    .io_cacheOp_req_bits_write_tag_low(metaArray_io_cacheOp_req_bits_write_tag_low),
    .io_cacheOp_resp_valid(metaArray_io_cacheOp_resp_valid),
    .io_cacheOp_resp_bits_read_tag_low(metaArray_io_cacheOp_resp_bits_read_tag_low),
    .io_fencei(metaArray_io_fencei)
  );
  ICacheDataArray dataArray ( // @[ICache.scala 539:33]
    .clock(dataArray_clock),
    .reset(dataArray_reset),
    .io_write_valid(dataArray_io_write_valid),
    .io_write_bits_virIdx(dataArray_io_write_bits_virIdx),
    .io_write_bits_data(dataArray_io_write_bits_data),
    .io_write_bits_waymask(dataArray_io_write_bits_waymask),
    .io_write_bits_bankIdx(dataArray_io_write_bits_bankIdx),
    .io_read_ready(dataArray_io_read_ready),
    .io_read_valid(dataArray_io_read_valid),
    .io_read_bits_0_isDoubleLine(dataArray_io_read_bits_0_isDoubleLine),
    .io_read_bits_0_vSetIdx_0(dataArray_io_read_bits_0_vSetIdx_0),
    .io_read_bits_0_vSetIdx_1(dataArray_io_read_bits_0_vSetIdx_1),
    .io_read_bits_1_isDoubleLine(dataArray_io_read_bits_1_isDoubleLine),
    .io_read_bits_1_vSetIdx_0(dataArray_io_read_bits_1_vSetIdx_0),
    .io_read_bits_1_vSetIdx_1(dataArray_io_read_bits_1_vSetIdx_1),
    .io_readResp_datas_0_0(dataArray_io_readResp_datas_0_0),
    .io_readResp_datas_0_1(dataArray_io_readResp_datas_0_1),
    .io_readResp_datas_0_2(dataArray_io_readResp_datas_0_2),
    .io_readResp_datas_0_3(dataArray_io_readResp_datas_0_3),
    .io_readResp_datas_1_0(dataArray_io_readResp_datas_1_0),
    .io_readResp_datas_1_1(dataArray_io_readResp_datas_1_1),
    .io_readResp_datas_1_2(dataArray_io_readResp_datas_1_2),
    .io_readResp_datas_1_3(dataArray_io_readResp_datas_1_3),
    .io_readResp_codes_0_0(dataArray_io_readResp_codes_0_0),
    .io_readResp_codes_0_1(dataArray_io_readResp_codes_0_1),
    .io_readResp_codes_0_2(dataArray_io_readResp_codes_0_2),
    .io_readResp_codes_0_3(dataArray_io_readResp_codes_0_3),
    .io_readResp_codes_1_0(dataArray_io_readResp_codes_1_0),
    .io_readResp_codes_1_1(dataArray_io_readResp_codes_1_1),
    .io_readResp_codes_1_2(dataArray_io_readResp_codes_1_2),
    .io_readResp_codes_1_3(dataArray_io_readResp_codes_1_3),
    .io_cacheOp_req_valid(dataArray_io_cacheOp_req_valid),
    .io_cacheOp_req_bits_wayNum(dataArray_io_cacheOp_req_bits_wayNum),
    .io_cacheOp_req_bits_index(dataArray_io_cacheOp_req_bits_index),
    .io_cacheOp_req_bits_opCode(dataArray_io_cacheOp_req_bits_opCode),
    .io_cacheOp_req_bits_write_data_vec_0(dataArray_io_cacheOp_req_bits_write_data_vec_0),
    .io_cacheOp_req_bits_write_data_vec_1(dataArray_io_cacheOp_req_bits_write_data_vec_1),
    .io_cacheOp_req_bits_write_data_vec_2(dataArray_io_cacheOp_req_bits_write_data_vec_2),
    .io_cacheOp_req_bits_write_data_vec_3(dataArray_io_cacheOp_req_bits_write_data_vec_3),
    .io_cacheOp_req_bits_write_data_vec_4(dataArray_io_cacheOp_req_bits_write_data_vec_4),
    .io_cacheOp_req_bits_write_data_vec_5(dataArray_io_cacheOp_req_bits_write_data_vec_5),
    .io_cacheOp_req_bits_write_data_vec_6(dataArray_io_cacheOp_req_bits_write_data_vec_6),
    .io_cacheOp_req_bits_write_data_vec_7(dataArray_io_cacheOp_req_bits_write_data_vec_7),
    .io_cacheOp_req_bits_bank_num(dataArray_io_cacheOp_req_bits_bank_num),
    .io_cacheOp_resp_valid(dataArray_io_cacheOp_resp_valid),
    .io_cacheOp_resp_bits_read_data_vec_0(dataArray_io_cacheOp_resp_bits_read_data_vec_0),
    .io_cacheOp_resp_bits_read_data_vec_1(dataArray_io_cacheOp_resp_bits_read_data_vec_1),
    .io_cacheOp_resp_bits_read_data_vec_2(dataArray_io_cacheOp_resp_bits_read_data_vec_2),
    .io_cacheOp_resp_bits_read_data_vec_3(dataArray_io_cacheOp_resp_bits_read_data_vec_3),
    .io_cacheOp_resp_bits_read_data_vec_4(dataArray_io_cacheOp_resp_bits_read_data_vec_4),
    .io_cacheOp_resp_bits_read_data_vec_5(dataArray_io_cacheOp_resp_bits_read_data_vec_5),
    .io_cacheOp_resp_bits_read_data_vec_6(dataArray_io_cacheOp_resp_bits_read_data_vec_6),
    .io_cacheOp_resp_bits_read_data_vec_7(dataArray_io_cacheOp_resp_bits_read_data_vec_7)
  );
  ICacheBankedMetaArray prefetchMetaArray ( // @[ICache.scala 540:33]
    .clock(prefetchMetaArray_clock),
    .reset(prefetchMetaArray_reset),
    .io_read_0_bits_idx(prefetchMetaArray_io_read_0_bits_idx),
    .io_write_ready(prefetchMetaArray_io_write_ready),
    .io_write_valid(prefetchMetaArray_io_write_valid),
    .io_write_bits_virIdx(prefetchMetaArray_io_write_bits_virIdx),
    .io_write_bits_phyTag(prefetchMetaArray_io_write_bits_phyTag),
    .io_write_bits_waymask(prefetchMetaArray_io_write_bits_waymask),
    .io_cacheOp_req_valid(prefetchMetaArray_io_cacheOp_req_valid),
    .io_cacheOp_req_bits_wayNum(prefetchMetaArray_io_cacheOp_req_bits_wayNum),
    .io_cacheOp_req_bits_index(prefetchMetaArray_io_cacheOp_req_bits_index),
    .io_cacheOp_req_bits_opCode(prefetchMetaArray_io_cacheOp_req_bits_opCode),
    .io_cacheOp_req_bits_write_tag_low(prefetchMetaArray_io_cacheOp_req_bits_write_tag_low)
  );
  ICacheMainPipe mainPipe ( // @[ICache.scala 541:33]
    .clock(mainPipe_clock),
    .reset(mainPipe_reset),
    .io_metaArray_toIMeta_ready(mainPipe_io_metaArray_toIMeta_ready),
    .io_metaArray_toIMeta_valid(mainPipe_io_metaArray_toIMeta_valid),
    .io_metaArray_toIMeta_bits_isDoubleLine(mainPipe_io_metaArray_toIMeta_bits_isDoubleLine),
    .io_metaArray_toIMeta_bits_vSetIdx_0(mainPipe_io_metaArray_toIMeta_bits_vSetIdx_0),
    .io_metaArray_toIMeta_bits_vSetIdx_1(mainPipe_io_metaArray_toIMeta_bits_vSetIdx_1),
    .io_metaArray_fromIMeta_metaData_0_0_tag(mainPipe_io_metaArray_fromIMeta_metaData_0_0_tag),
    .io_metaArray_fromIMeta_metaData_0_1_tag(mainPipe_io_metaArray_fromIMeta_metaData_0_1_tag),
    .io_metaArray_fromIMeta_metaData_0_2_tag(mainPipe_io_metaArray_fromIMeta_metaData_0_2_tag),
    .io_metaArray_fromIMeta_metaData_0_3_tag(mainPipe_io_metaArray_fromIMeta_metaData_0_3_tag),
    .io_metaArray_fromIMeta_metaData_1_0_tag(mainPipe_io_metaArray_fromIMeta_metaData_1_0_tag),
    .io_metaArray_fromIMeta_metaData_1_1_tag(mainPipe_io_metaArray_fromIMeta_metaData_1_1_tag),
    .io_metaArray_fromIMeta_metaData_1_2_tag(mainPipe_io_metaArray_fromIMeta_metaData_1_2_tag),
    .io_metaArray_fromIMeta_metaData_1_3_tag(mainPipe_io_metaArray_fromIMeta_metaData_1_3_tag),
    .io_metaArray_fromIMeta_errors_0_0(mainPipe_io_metaArray_fromIMeta_errors_0_0),
    .io_metaArray_fromIMeta_errors_0_1(mainPipe_io_metaArray_fromIMeta_errors_0_1),
    .io_metaArray_fromIMeta_errors_0_2(mainPipe_io_metaArray_fromIMeta_errors_0_2),
    .io_metaArray_fromIMeta_errors_0_3(mainPipe_io_metaArray_fromIMeta_errors_0_3),
    .io_metaArray_fromIMeta_errors_1_0(mainPipe_io_metaArray_fromIMeta_errors_1_0),
    .io_metaArray_fromIMeta_errors_1_1(mainPipe_io_metaArray_fromIMeta_errors_1_1),
    .io_metaArray_fromIMeta_errors_1_2(mainPipe_io_metaArray_fromIMeta_errors_1_2),
    .io_metaArray_fromIMeta_errors_1_3(mainPipe_io_metaArray_fromIMeta_errors_1_3),
    .io_metaArray_fromIMeta_entryValid_0_0(mainPipe_io_metaArray_fromIMeta_entryValid_0_0),
    .io_metaArray_fromIMeta_entryValid_0_1(mainPipe_io_metaArray_fromIMeta_entryValid_0_1),
    .io_metaArray_fromIMeta_entryValid_0_2(mainPipe_io_metaArray_fromIMeta_entryValid_0_2),
    .io_metaArray_fromIMeta_entryValid_0_3(mainPipe_io_metaArray_fromIMeta_entryValid_0_3),
    .io_metaArray_fromIMeta_entryValid_1_0(mainPipe_io_metaArray_fromIMeta_entryValid_1_0),
    .io_metaArray_fromIMeta_entryValid_1_1(mainPipe_io_metaArray_fromIMeta_entryValid_1_1),
    .io_metaArray_fromIMeta_entryValid_1_2(mainPipe_io_metaArray_fromIMeta_entryValid_1_2),
    .io_metaArray_fromIMeta_entryValid_1_3(mainPipe_io_metaArray_fromIMeta_entryValid_1_3),
    .io_dataArray_toIData_ready(mainPipe_io_dataArray_toIData_ready),
    .io_dataArray_toIData_valid(mainPipe_io_dataArray_toIData_valid),
    .io_dataArray_toIData_bits_0_isDoubleLine(mainPipe_io_dataArray_toIData_bits_0_isDoubleLine),
    .io_dataArray_toIData_bits_0_vSetIdx_0(mainPipe_io_dataArray_toIData_bits_0_vSetIdx_0),
    .io_dataArray_toIData_bits_0_vSetIdx_1(mainPipe_io_dataArray_toIData_bits_0_vSetIdx_1),
    .io_dataArray_toIData_bits_1_isDoubleLine(mainPipe_io_dataArray_toIData_bits_1_isDoubleLine),
    .io_dataArray_toIData_bits_1_vSetIdx_0(mainPipe_io_dataArray_toIData_bits_1_vSetIdx_0),
    .io_dataArray_toIData_bits_1_vSetIdx_1(mainPipe_io_dataArray_toIData_bits_1_vSetIdx_1),
    .io_dataArray_fromIData_datas_0_0(mainPipe_io_dataArray_fromIData_datas_0_0),
    .io_dataArray_fromIData_datas_0_1(mainPipe_io_dataArray_fromIData_datas_0_1),
    .io_dataArray_fromIData_datas_0_2(mainPipe_io_dataArray_fromIData_datas_0_2),
    .io_dataArray_fromIData_datas_0_3(mainPipe_io_dataArray_fromIData_datas_0_3),
    .io_dataArray_fromIData_datas_1_0(mainPipe_io_dataArray_fromIData_datas_1_0),
    .io_dataArray_fromIData_datas_1_1(mainPipe_io_dataArray_fromIData_datas_1_1),
    .io_dataArray_fromIData_datas_1_2(mainPipe_io_dataArray_fromIData_datas_1_2),
    .io_dataArray_fromIData_datas_1_3(mainPipe_io_dataArray_fromIData_datas_1_3),
    .io_dataArray_fromIData_codes_0_0(mainPipe_io_dataArray_fromIData_codes_0_0),
    .io_dataArray_fromIData_codes_0_1(mainPipe_io_dataArray_fromIData_codes_0_1),
    .io_dataArray_fromIData_codes_0_2(mainPipe_io_dataArray_fromIData_codes_0_2),
    .io_dataArray_fromIData_codes_0_3(mainPipe_io_dataArray_fromIData_codes_0_3),
    .io_dataArray_fromIData_codes_1_0(mainPipe_io_dataArray_fromIData_codes_1_0),
    .io_dataArray_fromIData_codes_1_1(mainPipe_io_dataArray_fromIData_codes_1_1),
    .io_dataArray_fromIData_codes_1_2(mainPipe_io_dataArray_fromIData_codes_1_2),
    .io_dataArray_fromIData_codes_1_3(mainPipe_io_dataArray_fromIData_codes_1_3),
    .io_IPFReplacer_waymask(mainPipe_io_IPFReplacer_waymask),
    .io_mshr_0_toMSHR_ready(mainPipe_io_mshr_0_toMSHR_ready),
    .io_mshr_0_toMSHR_valid(mainPipe_io_mshr_0_toMSHR_valid),
    .io_mshr_0_toMSHR_bits_paddr(mainPipe_io_mshr_0_toMSHR_bits_paddr),
    .io_mshr_0_toMSHR_bits_vaddr(mainPipe_io_mshr_0_toMSHR_bits_vaddr),
    .io_mshr_0_toMSHR_bits_waymask(mainPipe_io_mshr_0_toMSHR_bits_waymask),
    .io_mshr_0_fromMSHR_valid(mainPipe_io_mshr_0_fromMSHR_valid),
    .io_mshr_0_fromMSHR_bits_data(mainPipe_io_mshr_0_fromMSHR_bits_data),
    .io_mshr_0_fromMSHR_bits_corrupt(mainPipe_io_mshr_0_fromMSHR_bits_corrupt),
    .io_mshr_1_toMSHR_ready(mainPipe_io_mshr_1_toMSHR_ready),
    .io_mshr_1_toMSHR_valid(mainPipe_io_mshr_1_toMSHR_valid),
    .io_mshr_1_toMSHR_bits_paddr(mainPipe_io_mshr_1_toMSHR_bits_paddr),
    .io_mshr_1_toMSHR_bits_vaddr(mainPipe_io_mshr_1_toMSHR_bits_vaddr),
    .io_mshr_1_toMSHR_bits_waymask(mainPipe_io_mshr_1_toMSHR_bits_waymask),
    .io_mshr_1_fromMSHR_valid(mainPipe_io_mshr_1_fromMSHR_valid),
    .io_mshr_1_fromMSHR_bits_data(mainPipe_io_mshr_1_fromMSHR_bits_data),
    .io_mshr_1_fromMSHR_bits_corrupt(mainPipe_io_mshr_1_fromMSHR_bits_corrupt),
    .io_errors_0_source_tag(mainPipe_io_errors_0_source_tag),
    .io_errors_0_source_data(mainPipe_io_errors_0_source_data),
    .io_errors_0_source_l2(mainPipe_io_errors_0_source_l2),
    .io_errors_0_paddr(mainPipe_io_errors_0_paddr),
    .io_errors_0_report_to_beu(mainPipe_io_errors_0_report_to_beu),
    .io_errors_0_valid(mainPipe_io_errors_0_valid),
    .io_errors_1_source_tag(mainPipe_io_errors_1_source_tag),
    .io_errors_1_source_data(mainPipe_io_errors_1_source_data),
    .io_errors_1_source_l2(mainPipe_io_errors_1_source_l2),
    .io_errors_1_paddr(mainPipe_io_errors_1_paddr),
    .io_errors_1_report_to_beu(mainPipe_io_errors_1_report_to_beu),
    .io_errors_1_valid(mainPipe_io_errors_1_valid),
    .io_fetch_req_ready(mainPipe_io_fetch_req_ready),
    .io_fetch_req_valid(mainPipe_io_fetch_req_valid),
    .io_fetch_req_bits_pcMemRead_0_startAddr(mainPipe_io_fetch_req_bits_pcMemRead_0_startAddr),
    .io_fetch_req_bits_pcMemRead_0_nextlineStart(mainPipe_io_fetch_req_bits_pcMemRead_0_nextlineStart),
    .io_fetch_req_bits_pcMemRead_1_startAddr(mainPipe_io_fetch_req_bits_pcMemRead_1_startAddr),
    .io_fetch_req_bits_pcMemRead_1_nextlineStart(mainPipe_io_fetch_req_bits_pcMemRead_1_nextlineStart),
    .io_fetch_req_bits_pcMemRead_2_startAddr(mainPipe_io_fetch_req_bits_pcMemRead_2_startAddr),
    .io_fetch_req_bits_pcMemRead_2_nextlineStart(mainPipe_io_fetch_req_bits_pcMemRead_2_nextlineStart),
    .io_fetch_req_bits_readValid_0(mainPipe_io_fetch_req_bits_readValid_0),
    .io_fetch_req_bits_readValid_1(mainPipe_io_fetch_req_bits_readValid_1),
    .io_fetch_req_bits_readValid_2(mainPipe_io_fetch_req_bits_readValid_2),
    .io_fetch_resp_0_valid(mainPipe_io_fetch_resp_0_valid),
    .io_fetch_resp_0_bits_vaddr(mainPipe_io_fetch_resp_0_bits_vaddr),
    .io_fetch_resp_0_bits_registerData(mainPipe_io_fetch_resp_0_bits_registerData),
    .io_fetch_resp_0_bits_sramData(mainPipe_io_fetch_resp_0_bits_sramData),
    .io_fetch_resp_0_bits_select(mainPipe_io_fetch_resp_0_bits_select),
    .io_fetch_resp_0_bits_paddr(mainPipe_io_fetch_resp_0_bits_paddr),
    .io_fetch_resp_0_bits_tlbExcp_pageFault(mainPipe_io_fetch_resp_0_bits_tlbExcp_pageFault),
    .io_fetch_resp_0_bits_tlbExcp_accessFault(mainPipe_io_fetch_resp_0_bits_tlbExcp_accessFault),
    .io_fetch_resp_0_bits_tlbExcp_mmio(mainPipe_io_fetch_resp_0_bits_tlbExcp_mmio),
    .io_fetch_resp_1_valid(mainPipe_io_fetch_resp_1_valid),
    .io_fetch_resp_1_bits_vaddr(mainPipe_io_fetch_resp_1_bits_vaddr),
    .io_fetch_resp_1_bits_registerData(mainPipe_io_fetch_resp_1_bits_registerData),
    .io_fetch_resp_1_bits_sramData(mainPipe_io_fetch_resp_1_bits_sramData),
    .io_fetch_resp_1_bits_select(mainPipe_io_fetch_resp_1_bits_select),
    .io_fetch_resp_1_bits_tlbExcp_pageFault(mainPipe_io_fetch_resp_1_bits_tlbExcp_pageFault),
    .io_fetch_resp_1_bits_tlbExcp_accessFault(mainPipe_io_fetch_resp_1_bits_tlbExcp_accessFault),
    .io_fetch_topdownIcacheMiss(mainPipe_io_fetch_topdownIcacheMiss),
    .io_fetch_topdownItlbMiss(mainPipe_io_fetch_topdownItlbMiss),
    .io_pmp_0_req_bits_addr(mainPipe_io_pmp_0_req_bits_addr),
    .io_pmp_0_resp_instr(mainPipe_io_pmp_0_resp_instr),
    .io_pmp_0_resp_mmio(mainPipe_io_pmp_0_resp_mmio),
    .io_pmp_1_req_bits_addr(mainPipe_io_pmp_1_req_bits_addr),
    .io_pmp_1_resp_instr(mainPipe_io_pmp_1_resp_instr),
    .io_itlb_0_req_valid(mainPipe_io_itlb_0_req_valid),
    .io_itlb_0_req_bits_vaddr(mainPipe_io_itlb_0_req_bits_vaddr),
    .io_itlb_0_resp_bits_paddr_0(mainPipe_io_itlb_0_resp_bits_paddr_0),
    .io_itlb_0_resp_bits_miss(mainPipe_io_itlb_0_resp_bits_miss),
    .io_itlb_0_resp_bits_excp_0_pf_instr(mainPipe_io_itlb_0_resp_bits_excp_0_pf_instr),
    .io_itlb_0_resp_bits_excp_0_af_instr(mainPipe_io_itlb_0_resp_bits_excp_0_af_instr),
    .io_itlb_1_req_valid(mainPipe_io_itlb_1_req_valid),
    .io_itlb_1_req_bits_vaddr(mainPipe_io_itlb_1_req_bits_vaddr),
    .io_itlb_1_resp_bits_paddr_0(mainPipe_io_itlb_1_resp_bits_paddr_0),
    .io_itlb_1_resp_bits_miss(mainPipe_io_itlb_1_resp_bits_miss),
    .io_itlb_1_resp_bits_excp_0_pf_instr(mainPipe_io_itlb_1_resp_bits_excp_0_pf_instr),
    .io_itlb_1_resp_bits_excp_0_af_instr(mainPipe_io_itlb_1_resp_bits_excp_0_af_instr),
    .io_respStall(mainPipe_io_respStall),
    .io_perfInfo_only_0_hit(mainPipe_io_perfInfo_only_0_hit),
    .io_perfInfo_only_0_miss(mainPipe_io_perfInfo_only_0_miss),
    .io_perfInfo_hit_0_hit_1(mainPipe_io_perfInfo_hit_0_hit_1),
    .io_perfInfo_hit_0_miss_1(mainPipe_io_perfInfo_hit_0_miss_1),
    .io_perfInfo_miss_0_hit_1(mainPipe_io_perfInfo_miss_0_hit_1),
    .io_perfInfo_miss_0_miss_1(mainPipe_io_perfInfo_miss_0_miss_1),
    .io_perfInfo_bank_hit_1(mainPipe_io_perfInfo_bank_hit_1),
    .io_perfInfo_hit(mainPipe_io_perfInfo_hit),
    .io_csr_parity_enable(mainPipe_io_csr_parity_enable)
  );
  ICacheMissUnit missUnit ( // @[ICache.scala 542:33]
    .clock(missUnit_clock),
    .reset(missUnit_reset),
    .io_req_0_ready(missUnit_io_req_0_ready),
    .io_req_0_valid(missUnit_io_req_0_valid),
    .io_req_0_bits_paddr(missUnit_io_req_0_bits_paddr),
    .io_req_0_bits_vaddr(missUnit_io_req_0_bits_vaddr),
    .io_req_0_bits_waymask(missUnit_io_req_0_bits_waymask),
    .io_req_1_ready(missUnit_io_req_1_ready),
    .io_req_1_valid(missUnit_io_req_1_valid),
    .io_req_1_bits_paddr(missUnit_io_req_1_bits_paddr),
    .io_req_1_bits_vaddr(missUnit_io_req_1_bits_vaddr),
    .io_req_1_bits_waymask(missUnit_io_req_1_bits_waymask),
    .io_resp_0_valid(missUnit_io_resp_0_valid),
    .io_resp_0_bits_data(missUnit_io_resp_0_bits_data),
    .io_resp_0_bits_corrupt(missUnit_io_resp_0_bits_corrupt),
    .io_resp_1_valid(missUnit_io_resp_1_valid),
    .io_resp_1_bits_data(missUnit_io_resp_1_bits_data),
    .io_resp_1_bits_corrupt(missUnit_io_resp_1_bits_corrupt),
    .io_mem_acquire_ready(missUnit_io_mem_acquire_ready),
    .io_mem_acquire_valid(missUnit_io_mem_acquire_valid),
    .io_mem_acquire_bits_opcode(missUnit_io_mem_acquire_bits_opcode),
    .io_mem_acquire_bits_size(missUnit_io_mem_acquire_bits_size),
    .io_mem_acquire_bits_source(missUnit_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(missUnit_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_user_reqSource(missUnit_io_mem_acquire_bits_user_reqSource),
    .io_mem_acquire_bits_mask(missUnit_io_mem_acquire_bits_mask),
    .io_mem_grant_valid(missUnit_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(missUnit_io_mem_grant_bits_opcode),
    .io_mem_grant_bits_source(missUnit_io_mem_grant_bits_source),
    .io_mem_grant_bits_data(missUnit_io_mem_grant_bits_data),
    .io_mem_grant_bits_corrupt(missUnit_io_mem_grant_bits_corrupt),
    .io_fdip_acquire_ready(missUnit_io_fdip_acquire_ready),
    .io_fdip_acquire_valid(missUnit_io_fdip_acquire_valid),
    .io_fdip_grant_valid(missUnit_io_fdip_grant_valid),
    .io_fdip_grant_bits_opcode(missUnit_io_fdip_grant_bits_opcode),
    .io_meta_write_ready(missUnit_io_meta_write_ready),
    .io_meta_write_valid(missUnit_io_meta_write_valid),
    .io_meta_write_bits_virIdx(missUnit_io_meta_write_bits_virIdx),
    .io_meta_write_bits_phyTag(missUnit_io_meta_write_bits_phyTag),
    .io_meta_write_bits_waymask(missUnit_io_meta_write_bits_waymask),
    .io_meta_write_bits_bankIdx(missUnit_io_meta_write_bits_bankIdx),
    .io_data_write_ready(missUnit_io_data_write_ready),
    .io_data_write_valid(missUnit_io_data_write_valid),
    .io_data_write_bits_virIdx(missUnit_io_data_write_bits_virIdx),
    .io_data_write_bits_data(missUnit_io_data_write_bits_data),
    .io_data_write_bits_waymask(missUnit_io_data_write_bits_waymask),
    .io_data_write_bits_bankIdx(missUnit_io_data_write_bits_bankIdx),
    .io_fencei(missUnit_io_fencei)
  );
  FDIPPrefetch fdipPrefetch ( // @[ICache.scala 543:33]
    .clock(fdipPrefetch_clock),
    .reset(fdipPrefetch_reset),
    .io_ftqReq_req_bits_target(fdipPrefetch_io_ftqReq_req_bits_target),
    .io_metaReadReq_bits_idx(fdipPrefetch_io_metaReadReq_bits_idx),
    .io_metaWrite_bits_waymask(fdipPrefetch_io_metaWrite_bits_waymask),
    .io_dataWrite_bits_waymask(fdipPrefetch_io_dataWrite_bits_waymask),
    .io_IPFReplacer_waymask(fdipPrefetch_io_IPFReplacer_waymask),
    .io_mem_acquire_ready(fdipPrefetch_io_mem_acquire_ready),
    .io_mem_acquire_valid(fdipPrefetch_io_mem_acquire_valid),
    .io_mem_grant_valid(fdipPrefetch_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(fdipPrefetch_io_mem_grant_bits_opcode)
  );
  Arbiter_1 meta_write_arb ( // @[ICache.scala 557:31]
    .io_in_0_ready(meta_write_arb_io_in_0_ready),
    .io_in_0_valid(meta_write_arb_io_in_0_valid),
    .io_in_0_bits_virIdx(meta_write_arb_io_in_0_bits_virIdx),
    .io_in_0_bits_phyTag(meta_write_arb_io_in_0_bits_phyTag),
    .io_in_0_bits_waymask(meta_write_arb_io_in_0_bits_waymask),
    .io_in_0_bits_bankIdx(meta_write_arb_io_in_0_bits_bankIdx),
    .io_in_1_ready(meta_write_arb_io_in_1_ready),
    .io_in_1_valid(meta_write_arb_io_in_1_valid),
    .io_in_1_bits_virIdx(meta_write_arb_io_in_1_bits_virIdx),
    .io_in_1_bits_phyTag(meta_write_arb_io_in_1_bits_phyTag),
    .io_in_1_bits_waymask(meta_write_arb_io_in_1_bits_waymask),
    .io_in_1_bits_bankIdx(meta_write_arb_io_in_1_bits_bankIdx),
    .io_out_ready(meta_write_arb_io_out_ready),
    .io_out_valid(meta_write_arb_io_out_valid),
    .io_out_bits_virIdx(meta_write_arb_io_out_bits_virIdx),
    .io_out_bits_phyTag(meta_write_arb_io_out_bits_phyTag),
    .io_out_bits_waymask(meta_write_arb_io_out_bits_waymask),
    .io_out_bits_bankIdx(meta_write_arb_io_out_bits_bankIdx)
  );
  Arbiter_2 data_write_arb ( // @[ICache.scala 563:30]
    .io_in_0_ready(data_write_arb_io_in_0_ready),
    .io_in_0_valid(data_write_arb_io_in_0_valid),
    .io_in_0_bits_virIdx(data_write_arb_io_in_0_bits_virIdx),
    .io_in_0_bits_data(data_write_arb_io_in_0_bits_data),
    .io_in_0_bits_waymask(data_write_arb_io_in_0_bits_waymask),
    .io_in_0_bits_bankIdx(data_write_arb_io_in_0_bits_bankIdx),
    .io_in_1_ready(data_write_arb_io_in_1_ready),
    .io_in_1_valid(data_write_arb_io_in_1_valid),
    .io_in_1_bits_virIdx(data_write_arb_io_in_1_bits_virIdx),
    .io_in_1_bits_data(data_write_arb_io_in_1_bits_data),
    .io_in_1_bits_waymask(data_write_arb_io_in_1_bits_waymask),
    .io_in_1_bits_bankIdx(data_write_arb_io_in_1_bits_bankIdx),
    .io_out_ready(data_write_arb_io_out_ready),
    .io_out_valid(data_write_arb_io_out_valid),
    .io_out_bits_virIdx(data_write_arb_io_out_bits_virIdx),
    .io_out_bits_data(data_write_arb_io_out_bits_data),
    .io_out_bits_waymask(data_write_arb_io_out_bits_waymask),
    .io_out_bits_bankIdx(data_write_arb_io_out_bits_bankIdx)
  );
  CSRCacheOpDecoder cacheOpDecoder ( // @[ICache.scala 642:30]
    .clock(cacheOpDecoder_clock),
    .reset(cacheOpDecoder_reset),
    .io_csr_distribute_csr_wvalid(cacheOpDecoder_io_csr_distribute_csr_wvalid),
    .io_csr_distribute_csr_waddr(cacheOpDecoder_io_csr_distribute_csr_waddr),
    .io_csr_distribute_csr_wdata(cacheOpDecoder_io_csr_distribute_csr_wdata),
    .io_csr_update_wvalid(cacheOpDecoder_io_csr_update_wvalid),
    .io_csr_update_waddr(cacheOpDecoder_io_csr_update_waddr),
    .io_csr_update_wdata(cacheOpDecoder_io_csr_update_wdata),
    .io_cache_req_valid(cacheOpDecoder_io_cache_req_valid),
    .io_cache_req_bits_wayNum(cacheOpDecoder_io_cache_req_bits_wayNum),
    .io_cache_req_bits_index(cacheOpDecoder_io_cache_req_bits_index),
    .io_cache_req_bits_opCode(cacheOpDecoder_io_cache_req_bits_opCode),
    .io_cache_req_bits_write_tag_low(cacheOpDecoder_io_cache_req_bits_write_tag_low),
    .io_cache_req_bits_write_data_vec_0(cacheOpDecoder_io_cache_req_bits_write_data_vec_0),
    .io_cache_req_bits_write_data_vec_1(cacheOpDecoder_io_cache_req_bits_write_data_vec_1),
    .io_cache_req_bits_write_data_vec_2(cacheOpDecoder_io_cache_req_bits_write_data_vec_2),
    .io_cache_req_bits_write_data_vec_3(cacheOpDecoder_io_cache_req_bits_write_data_vec_3),
    .io_cache_req_bits_write_data_vec_4(cacheOpDecoder_io_cache_req_bits_write_data_vec_4),
    .io_cache_req_bits_write_data_vec_5(cacheOpDecoder_io_cache_req_bits_write_data_vec_5),
    .io_cache_req_bits_write_data_vec_6(cacheOpDecoder_io_cache_req_bits_write_data_vec_6),
    .io_cache_req_bits_write_data_vec_7(cacheOpDecoder_io_cache_req_bits_write_data_vec_7),
    .io_cache_req_bits_bank_num(cacheOpDecoder_io_cache_req_bits_bank_num),
    .io_cache_resp_valid(cacheOpDecoder_io_cache_resp_valid),
    .io_cache_resp_bits_read_tag_low(cacheOpDecoder_io_cache_resp_bits_read_tag_low),
    .io_cache_resp_bits_read_data_vec_0(cacheOpDecoder_io_cache_resp_bits_read_data_vec_0),
    .io_cache_resp_bits_read_data_vec_1(cacheOpDecoder_io_cache_resp_bits_read_data_vec_1),
    .io_cache_resp_bits_read_data_vec_2(cacheOpDecoder_io_cache_resp_bits_read_data_vec_2),
    .io_cache_resp_bits_read_data_vec_3(cacheOpDecoder_io_cache_resp_bits_read_data_vec_3),
    .io_cache_resp_bits_read_data_vec_4(cacheOpDecoder_io_cache_resp_bits_read_data_vec_4),
    .io_cache_resp_bits_read_data_vec_5(cacheOpDecoder_io_cache_resp_bits_read_data_vec_5),
    .io_cache_resp_bits_read_data_vec_6(cacheOpDecoder_io_cache_resp_bits_read_data_vec_6),
    .io_cache_resp_bits_read_data_vec_7(cacheOpDecoder_io_cache_resp_bits_read_data_vec_7),
    .io_error_source_tag(cacheOpDecoder_io_error_source_tag),
    .io_error_source_data(cacheOpDecoder_io_error_source_data),
    .io_error_source_l2(cacheOpDecoder_io_error_source_l2),
    .io_error_opType_fetch(cacheOpDecoder_io_error_opType_fetch),
    .io_error_opType_load(cacheOpDecoder_io_error_opType_load),
    .io_error_opType_store(cacheOpDecoder_io_error_opType_store),
    .io_error_opType_probe(cacheOpDecoder_io_error_opType_probe),
    .io_error_opType_release(cacheOpDecoder_io_error_opType_release),
    .io_error_opType_atom(cacheOpDecoder_io_error_opType_atom),
    .io_error_paddr(cacheOpDecoder_io_error_paddr),
    .io_error_report_to_beu(cacheOpDecoder_io_error_report_to_beu),
    .io_error_valid(cacheOpDecoder_io_error_valid)
  );
  assign auto_client_out_a_valid = missUnit_io_mem_acquire_valid; // @[Nodes.scala 1207:84 ICache.scala 616:9]
  assign auto_client_out_a_bits_opcode = missUnit_io_mem_acquire_bits_opcode; // @[Nodes.scala 1207:84 ICache.scala 616:9]
  assign auto_client_out_a_bits_size = missUnit_io_mem_acquire_bits_size; // @[Nodes.scala 1207:84 ICache.scala 616:9]
  assign auto_client_out_a_bits_source = missUnit_io_mem_acquire_bits_source; // @[Nodes.scala 1207:84 ICache.scala 616:9]
  assign auto_client_out_a_bits_address = missUnit_io_mem_acquire_bits_address; // @[Nodes.scala 1207:84 ICache.scala 616:9]
  assign auto_client_out_a_bits_user_reqSource = missUnit_io_mem_acquire_bits_user_reqSource; // @[Nodes.scala 1207:84 ICache.scala 616:9]
  assign auto_client_out_a_bits_mask = missUnit_io_mem_acquire_bits_mask; // @[Nodes.scala 1207:84 ICache.scala 616:9]
  assign io_fetch_req_ready = mainPipe_io_fetch_req_ready; // @[ICache.scala 627:25]
  assign io_fetch_resp_0_valid = mainPipe_io_fetch_resp_0_valid; // @[ICache.scala 596:21]
  assign io_fetch_resp_0_bits_vaddr = mainPipe_io_fetch_resp_0_bits_vaddr; // @[ICache.scala 596:21]
  assign io_fetch_resp_0_bits_registerData = mainPipe_io_fetch_resp_0_bits_registerData; // @[ICache.scala 596:21]
  assign io_fetch_resp_0_bits_sramData = mainPipe_io_fetch_resp_0_bits_sramData; // @[ICache.scala 596:21]
  assign io_fetch_resp_0_bits_select = mainPipe_io_fetch_resp_0_bits_select; // @[ICache.scala 596:21]
  assign io_fetch_resp_0_bits_paddr = mainPipe_io_fetch_resp_0_bits_paddr; // @[ICache.scala 596:21]
  assign io_fetch_resp_0_bits_tlbExcp_pageFault = mainPipe_io_fetch_resp_0_bits_tlbExcp_pageFault; // @[ICache.scala 596:21]
  assign io_fetch_resp_0_bits_tlbExcp_accessFault = mainPipe_io_fetch_resp_0_bits_tlbExcp_accessFault; // @[ICache.scala 596:21]
  assign io_fetch_resp_0_bits_tlbExcp_mmio = mainPipe_io_fetch_resp_0_bits_tlbExcp_mmio; // @[ICache.scala 596:21]
  assign io_fetch_resp_1_valid = mainPipe_io_fetch_resp_1_valid; // @[ICache.scala 596:21]
  assign io_fetch_resp_1_bits_vaddr = mainPipe_io_fetch_resp_1_bits_vaddr; // @[ICache.scala 596:21]
  assign io_fetch_resp_1_bits_registerData = mainPipe_io_fetch_resp_1_bits_registerData; // @[ICache.scala 596:21]
  assign io_fetch_resp_1_bits_sramData = mainPipe_io_fetch_resp_1_bits_sramData; // @[ICache.scala 596:21]
  assign io_fetch_resp_1_bits_select = mainPipe_io_fetch_resp_1_bits_select; // @[ICache.scala 596:21]
  assign io_fetch_resp_1_bits_tlbExcp_pageFault = mainPipe_io_fetch_resp_1_bits_tlbExcp_pageFault; // @[ICache.scala 596:21]
  assign io_fetch_resp_1_bits_tlbExcp_accessFault = mainPipe_io_fetch_resp_1_bits_tlbExcp_accessFault; // @[ICache.scala 596:21]
  assign io_fetch_topdownIcacheMiss = mainPipe_io_fetch_topdownIcacheMiss; // @[ICache.scala 597:30]
  assign io_fetch_topdownItlbMiss = mainPipe_io_fetch_topdownItlbMiss; // @[ICache.scala 598:30]
  assign io_toIFU = mainPipe_io_fetch_req_ready; // @[ICache.scala 593:12]
  assign io_pmp_0_req_bits_addr = mainPipe_io_pmp_0_req_bits_addr; // @[ICache.scala 580:13]
  assign io_pmp_1_req_bits_addr = mainPipe_io_pmp_1_req_bits_addr; // @[ICache.scala 581:13]
  assign io_itlb_0_req_valid = mainPipe_io_itlb_0_req_valid; // @[ICache.scala 586:21]
  assign io_itlb_0_req_bits_vaddr = mainPipe_io_itlb_0_req_bits_vaddr; // @[ICache.scala 586:21]
  assign io_itlb_1_req_valid = mainPipe_io_itlb_1_req_valid; // @[ICache.scala 587:21]
  assign io_itlb_1_req_bits_vaddr = mainPipe_io_itlb_1_req_bits_vaddr; // @[ICache.scala 587:21]
  assign io_perfInfo_only_0_hit = mainPipe_io_perfInfo_only_0_hit; // @[ICache.scala 594:15]
  assign io_perfInfo_only_0_miss = mainPipe_io_perfInfo_only_0_miss; // @[ICache.scala 594:15]
  assign io_perfInfo_hit_0_hit_1 = mainPipe_io_perfInfo_hit_0_hit_1; // @[ICache.scala 594:15]
  assign io_perfInfo_hit_0_miss_1 = mainPipe_io_perfInfo_hit_0_miss_1; // @[ICache.scala 594:15]
  assign io_perfInfo_miss_0_hit_1 = mainPipe_io_perfInfo_miss_0_hit_1; // @[ICache.scala 594:15]
  assign io_perfInfo_miss_0_miss_1 = mainPipe_io_perfInfo_miss_0_miss_1; // @[ICache.scala 594:15]
  assign io_perfInfo_bank_hit_1 = mainPipe_io_perfInfo_bank_hit_1; // @[ICache.scala 594:15]
  assign io_perfInfo_hit = mainPipe_io_perfInfo_hit; // @[ICache.scala 594:15]
  assign io_error_source_tag = io_error_REG_source_tag; // @[ICache.scala 624:12]
  assign io_error_source_data = io_error_REG_source_data; // @[ICache.scala 624:12]
  assign io_error_source_l2 = io_error_REG_source_l2; // @[ICache.scala 624:12]
  assign io_error_opType_fetch = io_error_REG_opType_fetch; // @[ICache.scala 624:12]
  assign io_error_opType_load = 1'h0; // @[ICache.scala 624:12]
  assign io_error_opType_store = 1'h0; // @[ICache.scala 624:12]
  assign io_error_opType_probe = 1'h0; // @[ICache.scala 624:12]
  assign io_error_opType_release = 1'h0; // @[ICache.scala 624:12]
  assign io_error_opType_atom = 1'h0; // @[ICache.scala 624:12]
  assign io_error_paddr = io_error_REG_paddr; // @[ICache.scala 624:12]
  assign io_error_report_to_beu = io_error_REG_report_to_beu; // @[ICache.scala 624:12]
  assign io_error_valid = io_error_REG_valid; // @[ICache.scala 624:12]
  assign io_csr_update_wvalid = cacheOpDecoder_io_csr_update_wvalid; // @[ICache.scala 643:25]
  assign io_csr_update_waddr = cacheOpDecoder_io_csr_update_waddr; // @[ICache.scala 643:25]
  assign io_csr_update_wdata = cacheOpDecoder_io_csr_update_wdata; // @[ICache.scala 643:25]
  assign metaArray_clock = clock;
  assign metaArray_reset = reset;
  assign metaArray_io_write_valid = meta_write_arb_io_out_valid; // @[ICache.scala 560:31]
  assign metaArray_io_write_bits_virIdx = meta_write_arb_io_out_bits_virIdx; // @[ICache.scala 560:31]
  assign metaArray_io_write_bits_phyTag = meta_write_arb_io_out_bits_phyTag; // @[ICache.scala 560:31]
  assign metaArray_io_write_bits_waymask = meta_write_arb_io_out_bits_waymask; // @[ICache.scala 560:31]
  assign metaArray_io_write_bits_bankIdx = meta_write_arb_io_out_bits_bankIdx; // @[ICache.scala 560:31]
  assign metaArray_io_read_valid = mainPipe_io_metaArray_toIMeta_valid; // @[ICache.scala 573:37]
  assign metaArray_io_read_bits_isDoubleLine = mainPipe_io_metaArray_toIMeta_bits_isDoubleLine; // @[ICache.scala 573:37]
  assign metaArray_io_read_bits_vSetIdx_0 = mainPipe_io_metaArray_toIMeta_bits_vSetIdx_0; // @[ICache.scala 573:37]
  assign metaArray_io_read_bits_vSetIdx_1 = mainPipe_io_metaArray_toIMeta_bits_vSetIdx_1; // @[ICache.scala 573:37]
  assign metaArray_io_cacheOp_req_valid = cacheOpDecoder_io_cache_req_valid; // @[ICache.scala 645:28]
  assign metaArray_io_cacheOp_req_bits_wayNum = cacheOpDecoder_io_cache_req_bits_wayNum; // @[ICache.scala 645:28]
  assign metaArray_io_cacheOp_req_bits_index = cacheOpDecoder_io_cache_req_bits_index; // @[ICache.scala 645:28]
  assign metaArray_io_cacheOp_req_bits_opCode = cacheOpDecoder_io_cache_req_bits_opCode; // @[ICache.scala 645:28]
  assign metaArray_io_cacheOp_req_bits_write_tag_low = cacheOpDecoder_io_cache_req_bits_write_tag_low; // @[ICache.scala 645:28]
  assign metaArray_io_fencei = io_fencei; // @[ICache.scala 632:23]
  assign dataArray_clock = clock;
  assign dataArray_reset = reset;
  assign dataArray_io_write_valid = data_write_arb_io_out_valid; // @[ICache.scala 566:31]
  assign dataArray_io_write_bits_virIdx = data_write_arb_io_out_bits_virIdx; // @[ICache.scala 566:31]
  assign dataArray_io_write_bits_data = data_write_arb_io_out_bits_data; // @[ICache.scala 566:31]
  assign dataArray_io_write_bits_waymask = data_write_arb_io_out_bits_waymask; // @[ICache.scala 566:31]
  assign dataArray_io_write_bits_bankIdx = data_write_arb_io_out_bits_bankIdx; // @[ICache.scala 566:31]
  assign dataArray_io_read_valid = mainPipe_io_dataArray_toIData_valid; // @[ICache.scala 571:37]
  assign dataArray_io_read_bits_0_isDoubleLine = mainPipe_io_dataArray_toIData_bits_0_isDoubleLine; // @[ICache.scala 571:37]
  assign dataArray_io_read_bits_0_vSetIdx_0 = mainPipe_io_dataArray_toIData_bits_0_vSetIdx_0; // @[ICache.scala 571:37]
  assign dataArray_io_read_bits_0_vSetIdx_1 = mainPipe_io_dataArray_toIData_bits_0_vSetIdx_1; // @[ICache.scala 571:37]
  assign dataArray_io_read_bits_1_isDoubleLine = mainPipe_io_dataArray_toIData_bits_1_isDoubleLine; // @[ICache.scala 571:37]
  assign dataArray_io_read_bits_1_vSetIdx_0 = mainPipe_io_dataArray_toIData_bits_1_vSetIdx_0; // @[ICache.scala 571:37]
  assign dataArray_io_read_bits_1_vSetIdx_1 = mainPipe_io_dataArray_toIData_bits_1_vSetIdx_1; // @[ICache.scala 571:37]
  assign dataArray_io_cacheOp_req_valid = cacheOpDecoder_io_cache_req_valid; // @[ICache.scala 644:28]
  assign dataArray_io_cacheOp_req_bits_wayNum = cacheOpDecoder_io_cache_req_bits_wayNum; // @[ICache.scala 644:28]
  assign dataArray_io_cacheOp_req_bits_index = cacheOpDecoder_io_cache_req_bits_index; // @[ICache.scala 644:28]
  assign dataArray_io_cacheOp_req_bits_opCode = cacheOpDecoder_io_cache_req_bits_opCode; // @[ICache.scala 644:28]
  assign dataArray_io_cacheOp_req_bits_write_data_vec_0 = cacheOpDecoder_io_cache_req_bits_write_data_vec_0; // @[ICache.scala 644:28]
  assign dataArray_io_cacheOp_req_bits_write_data_vec_1 = cacheOpDecoder_io_cache_req_bits_write_data_vec_1; // @[ICache.scala 644:28]
  assign dataArray_io_cacheOp_req_bits_write_data_vec_2 = cacheOpDecoder_io_cache_req_bits_write_data_vec_2; // @[ICache.scala 644:28]
  assign dataArray_io_cacheOp_req_bits_write_data_vec_3 = cacheOpDecoder_io_cache_req_bits_write_data_vec_3; // @[ICache.scala 644:28]
  assign dataArray_io_cacheOp_req_bits_write_data_vec_4 = cacheOpDecoder_io_cache_req_bits_write_data_vec_4; // @[ICache.scala 644:28]
  assign dataArray_io_cacheOp_req_bits_write_data_vec_5 = cacheOpDecoder_io_cache_req_bits_write_data_vec_5; // @[ICache.scala 644:28]
  assign dataArray_io_cacheOp_req_bits_write_data_vec_6 = cacheOpDecoder_io_cache_req_bits_write_data_vec_6; // @[ICache.scala 644:28]
  assign dataArray_io_cacheOp_req_bits_write_data_vec_7 = cacheOpDecoder_io_cache_req_bits_write_data_vec_7; // @[ICache.scala 644:28]
  assign dataArray_io_cacheOp_req_bits_bank_num = cacheOpDecoder_io_cache_req_bits_bank_num; // @[ICache.scala 644:28]
  assign prefetchMetaArray_clock = clock;
  assign prefetchMetaArray_reset = reset;
  assign prefetchMetaArray_io_read_0_bits_idx = fdipPrefetch_io_metaReadReq_bits_idx; // @[ICache.scala 548:37]
  assign prefetchMetaArray_io_write_valid = meta_write_arb_io_out_valid; // @[ICache.scala 569:30]
  assign prefetchMetaArray_io_write_bits_virIdx = meta_write_arb_io_out_bits_virIdx; // @[ICache.scala 569:30]
  assign prefetchMetaArray_io_write_bits_phyTag = meta_write_arb_io_out_bits_phyTag; // @[ICache.scala 569:30]
  assign prefetchMetaArray_io_write_bits_waymask = meta_write_arb_io_out_bits_waymask; // @[ICache.scala 569:30]
  assign prefetchMetaArray_io_cacheOp_req_valid = cacheOpDecoder_io_cache_req_valid; // @[ICache.scala 646:36]
  assign prefetchMetaArray_io_cacheOp_req_bits_wayNum = cacheOpDecoder_io_cache_req_bits_wayNum; // @[ICache.scala 646:36]
  assign prefetchMetaArray_io_cacheOp_req_bits_index = cacheOpDecoder_io_cache_req_bits_index; // @[ICache.scala 646:36]
  assign prefetchMetaArray_io_cacheOp_req_bits_opCode = cacheOpDecoder_io_cache_req_bits_opCode; // @[ICache.scala 646:36]
  assign prefetchMetaArray_io_cacheOp_req_bits_write_tag_low = cacheOpDecoder_io_cache_req_bits_write_tag_low; // @[ICache.scala 646:36]
  assign mainPipe_clock = clock;
  assign mainPipe_reset = reset;
  assign mainPipe_io_metaArray_toIMeta_ready = metaArray_io_read_ready; // @[ICache.scala 573:37]
  assign mainPipe_io_metaArray_fromIMeta_metaData_0_0_tag = metaArray_io_readResp_metaData_0_0_tag; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_metaData_0_1_tag = metaArray_io_readResp_metaData_0_1_tag; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_metaData_0_2_tag = metaArray_io_readResp_metaData_0_2_tag; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_metaData_0_3_tag = metaArray_io_readResp_metaData_0_3_tag; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_metaData_1_0_tag = metaArray_io_readResp_metaData_1_0_tag; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_metaData_1_1_tag = metaArray_io_readResp_metaData_1_1_tag; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_metaData_1_2_tag = metaArray_io_readResp_metaData_1_2_tag; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_metaData_1_3_tag = metaArray_io_readResp_metaData_1_3_tag; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_errors_0_0 = metaArray_io_readResp_errors_0_0; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_errors_0_1 = metaArray_io_readResp_errors_0_1; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_errors_0_2 = metaArray_io_readResp_errors_0_2; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_errors_0_3 = metaArray_io_readResp_errors_0_3; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_errors_1_0 = metaArray_io_readResp_errors_1_0; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_errors_1_1 = metaArray_io_readResp_errors_1_1; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_errors_1_2 = metaArray_io_readResp_errors_1_2; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_errors_1_3 = metaArray_io_readResp_errors_1_3; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_entryValid_0_0 = metaArray_io_readResp_entryValid_0_0; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_entryValid_0_1 = metaArray_io_readResp_entryValid_0_1; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_entryValid_0_2 = metaArray_io_readResp_entryValid_0_2; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_entryValid_0_3 = metaArray_io_readResp_entryValid_0_3; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_entryValid_1_0 = metaArray_io_readResp_entryValid_1_0; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_entryValid_1_1 = metaArray_io_readResp_entryValid_1_1; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_entryValid_1_2 = metaArray_io_readResp_entryValid_1_2; // @[ICache.scala 575:37]
  assign mainPipe_io_metaArray_fromIMeta_entryValid_1_3 = metaArray_io_readResp_entryValid_1_3; // @[ICache.scala 575:37]
  assign mainPipe_io_dataArray_toIData_ready = dataArray_io_read_ready; // @[ICache.scala 571:37]
  assign mainPipe_io_dataArray_fromIData_datas_0_0 = dataArray_io_readResp_datas_0_0; // @[ICache.scala 572:37]
  assign mainPipe_io_dataArray_fromIData_datas_0_1 = dataArray_io_readResp_datas_0_1; // @[ICache.scala 572:37]
  assign mainPipe_io_dataArray_fromIData_datas_0_2 = dataArray_io_readResp_datas_0_2; // @[ICache.scala 572:37]
  assign mainPipe_io_dataArray_fromIData_datas_0_3 = dataArray_io_readResp_datas_0_3; // @[ICache.scala 572:37]
  assign mainPipe_io_dataArray_fromIData_datas_1_0 = dataArray_io_readResp_datas_1_0; // @[ICache.scala 572:37]
  assign mainPipe_io_dataArray_fromIData_datas_1_1 = dataArray_io_readResp_datas_1_1; // @[ICache.scala 572:37]
  assign mainPipe_io_dataArray_fromIData_datas_1_2 = dataArray_io_readResp_datas_1_2; // @[ICache.scala 572:37]
  assign mainPipe_io_dataArray_fromIData_datas_1_3 = dataArray_io_readResp_datas_1_3; // @[ICache.scala 572:37]
  assign mainPipe_io_dataArray_fromIData_codes_0_0 = dataArray_io_readResp_codes_0_0; // @[ICache.scala 572:37]
  assign mainPipe_io_dataArray_fromIData_codes_0_1 = dataArray_io_readResp_codes_0_1; // @[ICache.scala 572:37]
  assign mainPipe_io_dataArray_fromIData_codes_0_2 = dataArray_io_readResp_codes_0_2; // @[ICache.scala 572:37]
  assign mainPipe_io_dataArray_fromIData_codes_0_3 = dataArray_io_readResp_codes_0_3; // @[ICache.scala 572:37]
  assign mainPipe_io_dataArray_fromIData_codes_1_0 = dataArray_io_readResp_codes_1_0; // @[ICache.scala 572:37]
  assign mainPipe_io_dataArray_fromIData_codes_1_1 = dataArray_io_readResp_codes_1_1; // @[ICache.scala 572:37]
  assign mainPipe_io_dataArray_fromIData_codes_1_2 = dataArray_io_readResp_codes_1_2; // @[ICache.scala 572:37]
  assign mainPipe_io_dataArray_fromIData_codes_1_3 = dataArray_io_readResp_codes_1_3; // @[ICache.scala 572:37]
  assign mainPipe_io_mshr_0_toMSHR_ready = missUnit_io_req_0_ready; // @[ICache.scala 601:34]
  assign mainPipe_io_mshr_0_fromMSHR_valid = missUnit_io_resp_0_valid; // @[ICache.scala 602:34]
  assign mainPipe_io_mshr_0_fromMSHR_bits_data = missUnit_io_resp_0_bits_data; // @[ICache.scala 602:34]
  assign mainPipe_io_mshr_0_fromMSHR_bits_corrupt = missUnit_io_resp_0_bits_corrupt; // @[ICache.scala 602:34]
  assign mainPipe_io_mshr_1_toMSHR_ready = missUnit_io_req_1_ready; // @[ICache.scala 601:34]
  assign mainPipe_io_mshr_1_fromMSHR_valid = missUnit_io_resp_1_valid; // @[ICache.scala 602:34]
  assign mainPipe_io_mshr_1_fromMSHR_bits_data = missUnit_io_resp_1_bits_data; // @[ICache.scala 602:34]
  assign mainPipe_io_mshr_1_fromMSHR_bits_corrupt = missUnit_io_resp_1_bits_corrupt; // @[ICache.scala 602:34]
  assign mainPipe_io_fetch_req_valid = io_fetch_req_valid; // @[ICache.scala 627:25]
  assign mainPipe_io_fetch_req_bits_pcMemRead_0_startAddr = io_fetch_req_bits_pcMemRead_0_startAddr; // @[ICache.scala 627:25]
  assign mainPipe_io_fetch_req_bits_pcMemRead_0_nextlineStart = io_fetch_req_bits_pcMemRead_0_nextlineStart; // @[ICache.scala 627:25]
  assign mainPipe_io_fetch_req_bits_pcMemRead_1_startAddr = io_fetch_req_bits_pcMemRead_1_startAddr; // @[ICache.scala 627:25]
  assign mainPipe_io_fetch_req_bits_pcMemRead_1_nextlineStart = io_fetch_req_bits_pcMemRead_1_nextlineStart; // @[ICache.scala 627:25]
  assign mainPipe_io_fetch_req_bits_pcMemRead_2_startAddr = io_fetch_req_bits_pcMemRead_2_startAddr; // @[ICache.scala 627:25]
  assign mainPipe_io_fetch_req_bits_pcMemRead_2_nextlineStart = io_fetch_req_bits_pcMemRead_2_nextlineStart; // @[ICache.scala 627:25]
  assign mainPipe_io_fetch_req_bits_readValid_0 = io_fetch_req_bits_readValid_0; // @[ICache.scala 627:25]
  assign mainPipe_io_fetch_req_bits_readValid_1 = io_fetch_req_bits_readValid_1; // @[ICache.scala 627:25]
  assign mainPipe_io_fetch_req_bits_readValid_2 = io_fetch_req_bits_readValid_2; // @[ICache.scala 627:25]
  assign mainPipe_io_pmp_0_resp_instr = io_pmp_0_resp_instr; // @[ICache.scala 580:13]
  assign mainPipe_io_pmp_0_resp_mmio = io_pmp_0_resp_mmio; // @[ICache.scala 580:13]
  assign mainPipe_io_pmp_1_resp_instr = io_pmp_1_resp_instr; // @[ICache.scala 581:13]
  assign mainPipe_io_itlb_0_resp_bits_paddr_0 = io_itlb_0_resp_bits_paddr_0; // @[ICache.scala 586:21]
  assign mainPipe_io_itlb_0_resp_bits_miss = io_itlb_0_resp_bits_miss; // @[ICache.scala 586:21]
  assign mainPipe_io_itlb_0_resp_bits_excp_0_pf_instr = io_itlb_0_resp_bits_excp_0_pf_instr; // @[ICache.scala 586:21]
  assign mainPipe_io_itlb_0_resp_bits_excp_0_af_instr = io_itlb_0_resp_bits_excp_0_af_instr; // @[ICache.scala 586:21]
  assign mainPipe_io_itlb_1_resp_bits_paddr_0 = io_itlb_1_resp_bits_paddr_0; // @[ICache.scala 587:21]
  assign mainPipe_io_itlb_1_resp_bits_miss = io_itlb_1_resp_bits_miss; // @[ICache.scala 587:21]
  assign mainPipe_io_itlb_1_resp_bits_excp_0_pf_instr = io_itlb_1_resp_bits_excp_0_pf_instr; // @[ICache.scala 587:21]
  assign mainPipe_io_itlb_1_resp_bits_excp_0_af_instr = io_itlb_1_resp_bits_excp_0_af_instr; // @[ICache.scala 587:21]
  assign mainPipe_io_respStall = io_stop; // @[ICache.scala 576:37]
  assign mainPipe_io_csr_parity_enable = io_csr_parity_enable; // @[ICache.scala 577:37]
  assign missUnit_clock = clock;
  assign missUnit_reset = reset;
  assign missUnit_io_req_0_valid = mainPipe_io_mshr_0_toMSHR_valid; // @[ICache.scala 601:34]
  assign missUnit_io_req_0_bits_paddr = mainPipe_io_mshr_0_toMSHR_bits_paddr; // @[ICache.scala 601:34]
  assign missUnit_io_req_0_bits_vaddr = mainPipe_io_mshr_0_toMSHR_bits_vaddr; // @[ICache.scala 601:34]
  assign missUnit_io_req_0_bits_waymask = mainPipe_io_mshr_0_toMSHR_bits_waymask; // @[ICache.scala 601:34]
  assign missUnit_io_req_1_valid = mainPipe_io_mshr_1_toMSHR_valid; // @[ICache.scala 601:34]
  assign missUnit_io_req_1_bits_paddr = mainPipe_io_mshr_1_toMSHR_bits_paddr; // @[ICache.scala 601:34]
  assign missUnit_io_req_1_bits_vaddr = mainPipe_io_mshr_1_toMSHR_bits_vaddr; // @[ICache.scala 601:34]
  assign missUnit_io_req_1_bits_waymask = mainPipe_io_mshr_1_toMSHR_bits_waymask; // @[ICache.scala 601:34]
  assign missUnit_io_mem_acquire_ready = auto_client_out_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missUnit_io_mem_grant_valid = auto_client_out_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missUnit_io_mem_grant_bits_opcode = auto_client_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missUnit_io_mem_grant_bits_source = auto_client_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missUnit_io_mem_grant_bits_data = auto_client_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missUnit_io_mem_grant_bits_corrupt = auto_client_out_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missUnit_io_fdip_acquire_valid = fdipPrefetch_io_mem_acquire_valid; // @[ICache.scala 607:28]
  assign missUnit_io_meta_write_ready = meta_write_arb_io_in_0_ready; // @[ICache.scala 558:31]
  assign missUnit_io_data_write_ready = data_write_arb_io_in_0_ready; // @[ICache.scala 564:31]
  assign missUnit_io_fencei = io_fencei; // @[ICache.scala 606:28]
  assign fdipPrefetch_clock = clock;
  assign fdipPrefetch_reset = reset;
  assign fdipPrefetch_io_ftqReq_req_bits_target = io_prefetch_req_bits_target; // @[ICache.scala 547:37]
  assign fdipPrefetch_io_IPFReplacer_waymask = mainPipe_io_IPFReplacer_waymask; // @[ICache.scala 553:37]
  assign fdipPrefetch_io_mem_acquire_ready = missUnit_io_fdip_acquire_ready; // @[ICache.scala 607:28]
  assign fdipPrefetch_io_mem_grant_valid = missUnit_io_fdip_grant_valid; // @[ICache.scala 608:28]
  assign fdipPrefetch_io_mem_grant_bits_opcode = missUnit_io_fdip_grant_bits_opcode; // @[ICache.scala 608:28]
  assign meta_write_arb_io_in_0_valid = missUnit_io_meta_write_valid; // @[ICache.scala 558:31]
  assign meta_write_arb_io_in_0_bits_virIdx = missUnit_io_meta_write_bits_virIdx; // @[ICache.scala 558:31]
  assign meta_write_arb_io_in_0_bits_phyTag = missUnit_io_meta_write_bits_phyTag; // @[ICache.scala 558:31]
  assign meta_write_arb_io_in_0_bits_waymask = missUnit_io_meta_write_bits_waymask; // @[ICache.scala 558:31]
  assign meta_write_arb_io_in_0_bits_bankIdx = missUnit_io_meta_write_bits_bankIdx; // @[ICache.scala 558:31]
  assign meta_write_arb_io_in_1_valid = 1'h0; // @[ICache.scala 559:31]
  assign meta_write_arb_io_in_1_bits_virIdx = 6'h0; // @[ICache.scala 559:31]
  assign meta_write_arb_io_in_1_bits_phyTag = 24'h0; // @[ICache.scala 559:31]
  assign meta_write_arb_io_in_1_bits_waymask = fdipPrefetch_io_metaWrite_bits_waymask; // @[ICache.scala 559:31]
  assign meta_write_arb_io_in_1_bits_bankIdx = 1'h0; // @[ICache.scala 559:31]
  assign meta_write_arb_io_out_ready = prefetchMetaArray_io_write_ready; // @[ICache.scala 569:30]
  assign data_write_arb_io_in_0_valid = missUnit_io_data_write_valid; // @[ICache.scala 564:31]
  assign data_write_arb_io_in_0_bits_virIdx = missUnit_io_data_write_bits_virIdx; // @[ICache.scala 564:31]
  assign data_write_arb_io_in_0_bits_data = missUnit_io_data_write_bits_data; // @[ICache.scala 564:31]
  assign data_write_arb_io_in_0_bits_waymask = missUnit_io_data_write_bits_waymask; // @[ICache.scala 564:31]
  assign data_write_arb_io_in_0_bits_bankIdx = missUnit_io_data_write_bits_bankIdx; // @[ICache.scala 564:31]
  assign data_write_arb_io_in_1_valid = 1'h0; // @[ICache.scala 565:31]
  assign data_write_arb_io_in_1_bits_virIdx = 6'h0; // @[ICache.scala 565:31]
  assign data_write_arb_io_in_1_bits_data = 512'h0; // @[ICache.scala 565:31]
  assign data_write_arb_io_in_1_bits_waymask = fdipPrefetch_io_dataWrite_bits_waymask; // @[ICache.scala 565:31]
  assign data_write_arb_io_in_1_bits_bankIdx = 1'h0; // @[ICache.scala 565:31]
  assign data_write_arb_io_out_ready = 1'h1; // @[ICache.scala 566:31]
  assign cacheOpDecoder_clock = clock;
  assign cacheOpDecoder_reset = reset;
  assign cacheOpDecoder_io_csr_distribute_csr_wvalid = io_csr_distribute_csr_wvalid; // @[ICache.scala 643:25]
  assign cacheOpDecoder_io_csr_distribute_csr_waddr = io_csr_distribute_csr_waddr; // @[ICache.scala 643:25]
  assign cacheOpDecoder_io_csr_distribute_csr_wdata = io_csr_distribute_csr_wdata; // @[ICache.scala 643:25]
  assign cacheOpDecoder_io_cache_resp_valid = dataArray_io_cacheOp_resp_valid | metaArray_io_cacheOp_resp_valid; // @[ICache.scala 648:37]
  assign cacheOpDecoder_io_cache_resp_bits_read_tag_low = metaArray_io_cacheOp_resp_valid ?
    metaArray_io_cacheOp_resp_bits_read_tag_low : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_0 = dataArray_io_cacheOp_resp_valid ?
    dataArray_io_cacheOp_resp_bits_read_data_vec_0 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_1 = dataArray_io_cacheOp_resp_valid ?
    dataArray_io_cacheOp_resp_bits_read_data_vec_1 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_2 = dataArray_io_cacheOp_resp_valid ?
    dataArray_io_cacheOp_resp_bits_read_data_vec_2 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_3 = dataArray_io_cacheOp_resp_valid ?
    dataArray_io_cacheOp_resp_bits_read_data_vec_3 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_4 = dataArray_io_cacheOp_resp_valid ?
    dataArray_io_cacheOp_resp_bits_read_data_vec_4 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_5 = dataArray_io_cacheOp_resp_valid ?
    dataArray_io_cacheOp_resp_bits_read_data_vec_5 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_6 = dataArray_io_cacheOp_resp_valid ?
    dataArray_io_cacheOp_resp_bits_read_data_vec_6 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_7 = dataArray_io_cacheOp_resp_valid ?
    dataArray_io_cacheOp_resp_bits_read_data_vec_7 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_error_source_tag = io_error_source_tag; // @[ICache.scala 654:27]
  assign cacheOpDecoder_io_error_source_data = io_error_source_data; // @[ICache.scala 654:27]
  assign cacheOpDecoder_io_error_source_l2 = io_error_source_l2; // @[ICache.scala 654:27]
  assign cacheOpDecoder_io_error_opType_fetch = io_error_opType_fetch; // @[ICache.scala 654:27]
  assign cacheOpDecoder_io_error_opType_load = io_error_opType_load; // @[ICache.scala 654:27]
  assign cacheOpDecoder_io_error_opType_store = io_error_opType_store; // @[ICache.scala 654:27]
  assign cacheOpDecoder_io_error_opType_probe = io_error_opType_probe; // @[ICache.scala 654:27]
  assign cacheOpDecoder_io_error_opType_release = io_error_opType_release; // @[ICache.scala 654:27]
  assign cacheOpDecoder_io_error_opType_atom = io_error_opType_atom; // @[ICache.scala 654:27]
  assign cacheOpDecoder_io_error_paddr = io_error_paddr; // @[ICache.scala 654:27]
  assign cacheOpDecoder_io_error_report_to_beu = io_error_report_to_beu; // @[ICache.scala 654:27]
  assign cacheOpDecoder_io_error_valid = io_error_valid; // @[ICache.scala 654:27]
  always @(posedge clock) begin
    io_error_REG_source_tag <= mainPipe_io_errors_0_valid & mainPipe_io_errors_0_source_tag | mainPipe_io_errors_1_valid
       & mainPipe_io_errors_1_source_tag; // @[Mux.scala 27:73]
    io_error_REG_source_data <= mainPipe_io_errors_0_valid & mainPipe_io_errors_0_source_data |
      mainPipe_io_errors_1_valid & mainPipe_io_errors_1_source_data; // @[Mux.scala 27:73]
    io_error_REG_source_l2 <= mainPipe_io_errors_0_valid & mainPipe_io_errors_0_source_l2 | mainPipe_io_errors_1_valid
       & mainPipe_io_errors_1_source_l2; // @[Mux.scala 27:73]
    io_error_REG_opType_fetch <= mainPipe_io_errors_0_valid | mainPipe_io_errors_1_valid; // @[Mux.scala 27:73]
    io_error_REG_paddr <= _io_error_T_6 | _io_error_T_7; // @[Mux.scala 27:73]
    io_error_REG_report_to_beu <= mainPipe_io_errors_0_valid & mainPipe_io_errors_0_report_to_beu |
      mainPipe_io_errors_1_valid & mainPipe_io_errors_1_report_to_beu; // @[Mux.scala 27:73]
    io_error_REG_valid <= mainPipe_io_errors_0_valid | mainPipe_io_errors_1_valid; // @[Mux.scala 27:73]
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
  io_error_REG_source_tag = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_error_REG_source_data = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  io_error_REG_source_l2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_error_REG_opType_fetch = _RAND_3[0:0];
  _RAND_4 = {2{`RANDOM}};
  io_error_REG_paddr = _RAND_4[35:0];
  _RAND_5 = {1{`RANDOM}};
  io_error_REG_report_to_beu = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  io_error_REG_valid = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

