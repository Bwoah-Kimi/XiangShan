module ICacheDataArray(
  input          clock,
  input          reset,
  input          io_write_valid,
  input  [5:0]   io_write_bits_virIdx,
  input  [511:0] io_write_bits_data,
  input  [3:0]   io_write_bits_waymask,
  input          io_write_bits_bankIdx,
  output         io_read_ready,
  input          io_read_valid,
  input          io_read_bits_0_isDoubleLine,
  input  [5:0]   io_read_bits_0_vSetIdx_0,
  input  [5:0]   io_read_bits_0_vSetIdx_1,
  input          io_read_bits_1_isDoubleLine,
  input  [5:0]   io_read_bits_1_vSetIdx_0,
  input  [5:0]   io_read_bits_1_vSetIdx_1,
  output [511:0] io_readResp_datas_0_0,
  output [511:0] io_readResp_datas_0_1,
  output [511:0] io_readResp_datas_0_2,
  output [511:0] io_readResp_datas_0_3,
  output [511:0] io_readResp_datas_1_0,
  output [511:0] io_readResp_datas_1_1,
  output [511:0] io_readResp_datas_1_2,
  output [511:0] io_readResp_datas_1_3,
  output [31:0]  io_readResp_codes_0_0,
  output [31:0]  io_readResp_codes_0_1,
  output [31:0]  io_readResp_codes_0_2,
  output [31:0]  io_readResp_codes_0_3,
  output [31:0]  io_readResp_codes_1_0,
  output [31:0]  io_readResp_codes_1_1,
  output [31:0]  io_readResp_codes_1_2,
  output [31:0]  io_readResp_codes_1_3,
  input          io_cacheOp_req_valid,
  input  [63:0]  io_cacheOp_req_bits_wayNum,
  input  [63:0]  io_cacheOp_req_bits_index,
  input  [63:0]  io_cacheOp_req_bits_opCode,
  input  [63:0]  io_cacheOp_req_bits_write_data_vec_0,
  input  [63:0]  io_cacheOp_req_bits_write_data_vec_1,
  input  [63:0]  io_cacheOp_req_bits_write_data_vec_2,
  input  [63:0]  io_cacheOp_req_bits_write_data_vec_3,
  input  [63:0]  io_cacheOp_req_bits_write_data_vec_4,
  input  [63:0]  io_cacheOp_req_bits_write_data_vec_5,
  input  [63:0]  io_cacheOp_req_bits_write_data_vec_6,
  input  [63:0]  io_cacheOp_req_bits_write_data_vec_7,
  input  [63:0]  io_cacheOp_req_bits_bank_num,
  output         io_cacheOp_resp_valid,
  output [63:0]  io_cacheOp_resp_bits_read_data_vec_0,
  output [63:0]  io_cacheOp_resp_bits_read_data_vec_1,
  output [63:0]  io_cacheOp_resp_bits_read_data_vec_2,
  output [63:0]  io_cacheOp_resp_bits_read_data_vec_3,
  output [63:0]  io_cacheOp_resp_bits_read_data_vec_4,
  output [63:0]  io_cacheOp_resp_bits_read_data_vec_5,
  output [63:0]  io_cacheOp_resp_bits_read_data_vec_6,
  output [63:0]  io_cacheOp_resp_bits_read_data_vec_7
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  dataArrays_0_clock; // @[ICache.scala 359:27]
  wire  dataArrays_0_reset; // @[ICache.scala 359:27]
  wire  dataArrays_0_io_read_req_0_ready; // @[ICache.scala 359:27]
  wire  dataArrays_0_io_read_req_0_valid; // @[ICache.scala 359:27]
  wire [4:0] dataArrays_0_io_read_req_0_bits_ridx; // @[ICache.scala 359:27]
  wire  dataArrays_0_io_read_req_1_ready; // @[ICache.scala 359:27]
  wire  dataArrays_0_io_read_req_1_valid; // @[ICache.scala 359:27]
  wire [4:0] dataArrays_0_io_read_req_1_bits_ridx; // @[ICache.scala 359:27]
  wire [511:0] dataArrays_0_io_read_resp_rdata_0_0; // @[ICache.scala 359:27]
  wire [511:0] dataArrays_0_io_read_resp_rdata_0_1; // @[ICache.scala 359:27]
  wire [511:0] dataArrays_0_io_read_resp_rdata_1_0; // @[ICache.scala 359:27]
  wire [511:0] dataArrays_0_io_read_resp_rdata_1_1; // @[ICache.scala 359:27]
  wire  dataArrays_0_io_write_valid; // @[ICache.scala 359:27]
  wire [511:0] dataArrays_0_io_write_bits_wdata; // @[ICache.scala 359:27]
  wire [4:0] dataArrays_0_io_write_bits_widx; // @[ICache.scala 359:27]
  wire  dataArrays_0_io_write_bits_wbankidx; // @[ICache.scala 359:27]
  wire  dataArrays_0_io_write_bits_wmask_0; // @[ICache.scala 359:27]
  wire  dataArrays_0_io_write_bits_wmask_1; // @[ICache.scala 359:27]
  wire  dataArrays_1_clock; // @[ICache.scala 359:27]
  wire  dataArrays_1_reset; // @[ICache.scala 359:27]
  wire  dataArrays_1_io_read_req_0_ready; // @[ICache.scala 359:27]
  wire  dataArrays_1_io_read_req_0_valid; // @[ICache.scala 359:27]
  wire [4:0] dataArrays_1_io_read_req_0_bits_ridx; // @[ICache.scala 359:27]
  wire  dataArrays_1_io_read_req_1_ready; // @[ICache.scala 359:27]
  wire  dataArrays_1_io_read_req_1_valid; // @[ICache.scala 359:27]
  wire [4:0] dataArrays_1_io_read_req_1_bits_ridx; // @[ICache.scala 359:27]
  wire [511:0] dataArrays_1_io_read_resp_rdata_0_0; // @[ICache.scala 359:27]
  wire [511:0] dataArrays_1_io_read_resp_rdata_0_1; // @[ICache.scala 359:27]
  wire [511:0] dataArrays_1_io_read_resp_rdata_1_0; // @[ICache.scala 359:27]
  wire [511:0] dataArrays_1_io_read_resp_rdata_1_1; // @[ICache.scala 359:27]
  wire  dataArrays_1_io_write_valid; // @[ICache.scala 359:27]
  wire [511:0] dataArrays_1_io_write_bits_wdata; // @[ICache.scala 359:27]
  wire [4:0] dataArrays_1_io_write_bits_widx; // @[ICache.scala 359:27]
  wire  dataArrays_1_io_write_bits_wbankidx; // @[ICache.scala 359:27]
  wire  dataArrays_1_io_write_bits_wmask_0; // @[ICache.scala 359:27]
  wire  dataArrays_1_io_write_bits_wmask_1; // @[ICache.scala 359:27]
  wire  codeArrays_0_clock; // @[ICache.scala 398:27]
  wire  codeArrays_0_reset; // @[ICache.scala 398:27]
  wire  codeArrays_0_io_rreq_ready; // @[ICache.scala 398:27]
  wire  codeArrays_0_io_rreq_valid; // @[ICache.scala 398:27]
  wire [4:0] codeArrays_0_io_rreq_bits_setIdx; // @[ICache.scala 398:27]
  wire [31:0] codeArrays_0_io_rresp_data_0; // @[ICache.scala 398:27]
  wire [31:0] codeArrays_0_io_rresp_data_1; // @[ICache.scala 398:27]
  wire [31:0] codeArrays_0_io_rresp_data_2; // @[ICache.scala 398:27]
  wire [31:0] codeArrays_0_io_rresp_data_3; // @[ICache.scala 398:27]
  wire  codeArrays_0_io_wreq_valid; // @[ICache.scala 398:27]
  wire [4:0] codeArrays_0_io_wreq_bits_setIdx; // @[ICache.scala 398:27]
  wire [31:0] codeArrays_0_io_wreq_bits_data_0; // @[ICache.scala 398:27]
  wire [31:0] codeArrays_0_io_wreq_bits_data_1; // @[ICache.scala 398:27]
  wire [31:0] codeArrays_0_io_wreq_bits_data_2; // @[ICache.scala 398:27]
  wire [31:0] codeArrays_0_io_wreq_bits_data_3; // @[ICache.scala 398:27]
  wire [3:0] codeArrays_0_io_wreq_bits_waymask; // @[ICache.scala 398:27]
  wire  codeArrays_1_clock; // @[ICache.scala 398:27]
  wire  codeArrays_1_reset; // @[ICache.scala 398:27]
  wire  codeArrays_1_io_rreq_ready; // @[ICache.scala 398:27]
  wire  codeArrays_1_io_rreq_valid; // @[ICache.scala 398:27]
  wire [4:0] codeArrays_1_io_rreq_bits_setIdx; // @[ICache.scala 398:27]
  wire [31:0] codeArrays_1_io_rresp_data_0; // @[ICache.scala 398:27]
  wire [31:0] codeArrays_1_io_rresp_data_1; // @[ICache.scala 398:27]
  wire [31:0] codeArrays_1_io_rresp_data_2; // @[ICache.scala 398:27]
  wire [31:0] codeArrays_1_io_rresp_data_3; // @[ICache.scala 398:27]
  wire  codeArrays_1_io_wreq_valid; // @[ICache.scala 398:27]
  wire [4:0] codeArrays_1_io_wreq_bits_setIdx; // @[ICache.scala 398:27]
  wire [31:0] codeArrays_1_io_wreq_bits_data_0; // @[ICache.scala 398:27]
  wire [31:0] codeArrays_1_io_wreq_bits_data_1; // @[ICache.scala 398:27]
  wire [31:0] codeArrays_1_io_wreq_bits_data_2; // @[ICache.scala 398:27]
  wire [31:0] codeArrays_1_io_wreq_bits_data_3; // @[ICache.scala 398:27]
  wire [3:0] codeArrays_1_io_wreq_bits_waymask; // @[ICache.scala 398:27]
  wire  _port_0_read_0_reg_T_1 = ~io_read_bits_0_vSetIdx_0[0]; // @[ICacheBundle.scala 32:24]
  wire  _port_0_read_0_reg_T_2 = io_read_valid & _port_0_read_0_reg_T_1; // @[ICache.scala 350:58]
  wire  _port_0_read_0_reg_T_3 = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  wire  _port_0_read_1_reg_T_1 = io_read_valid & io_read_bits_0_vSetIdx_0[0]; // @[ICache.scala 351:58]
  reg  port_0_read_1_reg; // @[Reg.scala 16:16]
  wire  _port_1_read_1_reg_T_1 = io_read_bits_0_vSetIdx_1[0] & io_read_bits_0_isDoubleLine; // @[ICacheBundle.scala 35:39]
  wire  _port_1_read_0_reg_T_2 = ~io_read_bits_0_vSetIdx_1[0] & io_read_bits_0_isDoubleLine; // @[ICacheBundle.scala 34:39]
  wire  _port_1_read_0_reg_T_3 = io_read_valid & _port_1_read_0_reg_T_2; // @[ICache.scala 353:58]
  reg  port_1_read_0_reg; // @[Reg.scala 16:16]
  wire [5:0] bank_0_idx_vec_0 = _port_0_read_0_reg_T_2 ? io_read_bits_0_vSetIdx_0 : io_read_bits_0_vSetIdx_1; // @[ICache.scala 355:53]
  wire  _bank_0_idx_vec_T_4 = ~io_read_bits_1_vSetIdx_0[0]; // @[ICacheBundle.scala 32:24]
  wire [5:0] bank_0_idx = io_read_valid & _bank_0_idx_vec_T_4 ? io_read_bits_1_vSetIdx_0 : io_read_bits_1_vSetIdx_1; // @[ICache.scala 355:53]
  wire [5:0] bank_1_idx_vec_0 = _port_0_read_1_reg_T_1 ? io_read_bits_0_vSetIdx_0 : io_read_bits_0_vSetIdx_1; // @[ICache.scala 356:53]
  wire [5:0] bank_1_idx = io_read_valid & io_read_bits_1_vSetIdx_0[0] ? io_read_bits_1_vSetIdx_0 :
    io_read_bits_1_vSetIdx_1; // @[ICache.scala 356:53]
  wire  _dataArray_io_read_req_0_valid_T_5 = _port_0_read_0_reg_T_1 | _port_1_read_0_reg_T_2; // @[ICacheBundle.scala 37:35]
  wire  _dataArray_io_read_req_1_valid_T_3 = io_read_bits_0_vSetIdx_0[0] | _port_1_read_1_reg_T_1; // @[ICacheBundle.scala 38:36]
  wire  _dataArray_io_read_req_0_valid_T_11 = ~io_read_bits_1_vSetIdx_1[0] & io_read_bits_1_isDoubleLine; // @[ICacheBundle.scala 34:39]
  wire  _dataArray_io_read_req_0_valid_T_12 = _bank_0_idx_vec_T_4 | _dataArray_io_read_req_0_valid_T_11; // @[ICacheBundle.scala 37:35]
  wire  _dataArray_io_read_req_1_valid_T_7 = io_read_bits_1_vSetIdx_1[0] & io_read_bits_1_isDoubleLine; // @[ICacheBundle.scala 35:39]
  wire  _dataArray_io_read_req_1_valid_T_8 = io_read_bits_1_vSetIdx_0[0] | _dataArray_io_read_req_1_valid_T_7; // @[ICacheBundle.scala 38:36]
  wire [1023:0] _read_datas_0_0_T = {dataArrays_0_io_read_resp_rdata_0_1,dataArrays_0_io_read_resp_rdata_0_0}; // @[ICache.scala 383:84]
  wire [511:0] read_datas_0_0 = _read_datas_0_0_T[511:0]; // @[ICache.scala 383:84]
  wire [1023:0] _read_datas_0_2_T = {dataArrays_1_io_read_resp_rdata_0_1,dataArrays_1_io_read_resp_rdata_0_0}; // @[ICache.scala 383:84]
  wire [511:0] read_datas_0_2 = _read_datas_0_2_T[511:0]; // @[ICache.scala 383:84]
  wire [1023:0] _read_datas_1_0_T = {dataArrays_0_io_read_resp_rdata_1_1,dataArrays_0_io_read_resp_rdata_1_0}; // @[ICache.scala 383:84]
  wire [511:0] read_datas_1_0 = _read_datas_1_0_T[511:0]; // @[ICache.scala 383:84]
  wire [1023:0] _read_datas_1_2_T = {dataArrays_1_io_read_resp_rdata_1_1,dataArrays_1_io_read_resp_rdata_1_0}; // @[ICache.scala 383:84]
  wire [511:0] read_datas_1_2 = _read_datas_1_2_T[511:0]; // @[ICache.scala 383:84]
  wire  _io_read_ready_T_3 = dataArrays_0_io_read_req_0_ready & dataArrays_0_io_read_req_1_ready & (
    dataArrays_1_io_read_req_0_ready & dataArrays_1_io_read_req_1_ready); // @[ICache.scala 424:85]
  wire  _io_read_ready_T_4 = ~io_write_valid & _io_read_ready_T_3; // @[ICache.scala 423:36]
  wire  _io_read_ready_T_5 = codeArrays_0_io_rreq_ready & codeArrays_1_io_rreq_ready; // @[ICache.scala 425:63]
  wire [127:0] _T_14 = {codeArrays_0_io_rresp_data_3,codeArrays_0_io_rresp_data_2,codeArrays_0_io_rresp_data_1,
    codeArrays_0_io_rresp_data_0}; // @[ICache.scala 430:50]
  wire [31:0] read_codes_0_0 = _T_14[31:0]; // @[ICache.scala 430:50]
  wire [31:0] read_codes_0_1 = _T_14[63:32]; // @[ICache.scala 430:50]
  wire [31:0] read_codes_0_2 = _T_14[95:64]; // @[ICache.scala 430:50]
  wire [31:0] read_codes_0_3 = _T_14[127:96]; // @[ICache.scala 430:50]
  wire [127:0] _T_19 = {codeArrays_1_io_rresp_data_3,codeArrays_1_io_rresp_data_2,codeArrays_1_io_rresp_data_1,
    codeArrays_1_io_rresp_data_0}; // @[ICache.scala 430:50]
  wire [31:0] read_codes_1_0 = _T_19[31:0]; // @[ICache.scala 430:50]
  wire [31:0] read_codes_1_1 = _T_19[63:32]; // @[ICache.scala 430:50]
  wire [31:0] read_codes_1_2 = _T_19[95:64]; // @[ICache.scala 430:50]
  wire [31:0] read_codes_1_3 = _T_19[127:96]; // @[ICache.scala 430:50]
  wire [15:0] write_data_code_unit = io_write_bits_data[15:0]; // @[ICache.scala 336:28]
  wire  _write_data_code_T = ^write_data_code_unit; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_2 = {_write_data_code_T,write_data_code_unit}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_1 = io_write_bits_data[31:16]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_4 = ^write_data_code_unit_1; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_6 = {_write_data_code_T_4,write_data_code_unit_1}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_2 = io_write_bits_data[47:32]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_8 = ^write_data_code_unit_2; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_10 = {_write_data_code_T_8,write_data_code_unit_2}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_3 = io_write_bits_data[63:48]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_12 = ^write_data_code_unit_3; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_14 = {_write_data_code_T_12,write_data_code_unit_3}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_4 = io_write_bits_data[79:64]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_16 = ^write_data_code_unit_4; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_18 = {_write_data_code_T_16,write_data_code_unit_4}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_5 = io_write_bits_data[95:80]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_20 = ^write_data_code_unit_5; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_22 = {_write_data_code_T_20,write_data_code_unit_5}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_6 = io_write_bits_data[111:96]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_24 = ^write_data_code_unit_6; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_26 = {_write_data_code_T_24,write_data_code_unit_6}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_7 = io_write_bits_data[127:112]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_28 = ^write_data_code_unit_7; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_30 = {_write_data_code_T_28,write_data_code_unit_7}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_8 = io_write_bits_data[143:128]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_32 = ^write_data_code_unit_8; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_34 = {_write_data_code_T_32,write_data_code_unit_8}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_9 = io_write_bits_data[159:144]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_36 = ^write_data_code_unit_9; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_38 = {_write_data_code_T_36,write_data_code_unit_9}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_10 = io_write_bits_data[175:160]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_40 = ^write_data_code_unit_10; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_42 = {_write_data_code_T_40,write_data_code_unit_10}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_11 = io_write_bits_data[191:176]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_44 = ^write_data_code_unit_11; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_46 = {_write_data_code_T_44,write_data_code_unit_11}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_12 = io_write_bits_data[207:192]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_48 = ^write_data_code_unit_12; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_50 = {_write_data_code_T_48,write_data_code_unit_12}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_13 = io_write_bits_data[223:208]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_52 = ^write_data_code_unit_13; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_54 = {_write_data_code_T_52,write_data_code_unit_13}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_14 = io_write_bits_data[239:224]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_56 = ^write_data_code_unit_14; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_58 = {_write_data_code_T_56,write_data_code_unit_14}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_15 = io_write_bits_data[255:240]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_60 = ^write_data_code_unit_15; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_62 = {_write_data_code_T_60,write_data_code_unit_15}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_16 = io_write_bits_data[271:256]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_64 = ^write_data_code_unit_16; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_66 = {_write_data_code_T_64,write_data_code_unit_16}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_17 = io_write_bits_data[287:272]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_68 = ^write_data_code_unit_17; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_70 = {_write_data_code_T_68,write_data_code_unit_17}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_18 = io_write_bits_data[303:288]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_72 = ^write_data_code_unit_18; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_74 = {_write_data_code_T_72,write_data_code_unit_18}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_19 = io_write_bits_data[319:304]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_76 = ^write_data_code_unit_19; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_78 = {_write_data_code_T_76,write_data_code_unit_19}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_20 = io_write_bits_data[335:320]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_80 = ^write_data_code_unit_20; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_82 = {_write_data_code_T_80,write_data_code_unit_20}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_21 = io_write_bits_data[351:336]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_84 = ^write_data_code_unit_21; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_86 = {_write_data_code_T_84,write_data_code_unit_21}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_22 = io_write_bits_data[367:352]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_88 = ^write_data_code_unit_22; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_90 = {_write_data_code_T_88,write_data_code_unit_22}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_23 = io_write_bits_data[383:368]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_92 = ^write_data_code_unit_23; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_94 = {_write_data_code_T_92,write_data_code_unit_23}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_24 = io_write_bits_data[399:384]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_96 = ^write_data_code_unit_24; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_98 = {_write_data_code_T_96,write_data_code_unit_24}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_25 = io_write_bits_data[415:400]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_100 = ^write_data_code_unit_25; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_102 = {_write_data_code_T_100,write_data_code_unit_25}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_26 = io_write_bits_data[431:416]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_104 = ^write_data_code_unit_26; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_106 = {_write_data_code_T_104,write_data_code_unit_26}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_27 = io_write_bits_data[447:432]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_108 = ^write_data_code_unit_27; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_110 = {_write_data_code_T_108,write_data_code_unit_27}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_28 = io_write_bits_data[463:448]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_112 = ^write_data_code_unit_28; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_114 = {_write_data_code_T_112,write_data_code_unit_28}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_29 = io_write_bits_data[479:464]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_116 = ^write_data_code_unit_29; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_118 = {_write_data_code_T_116,write_data_code_unit_29}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_30 = io_write_bits_data[495:480]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_120 = ^write_data_code_unit_30; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_122 = {_write_data_code_T_120,write_data_code_unit_30}; // @[Cat.scala 31:58]
  wire [15:0] write_data_code_unit_31 = io_write_bits_data[511:496]; // @[ICache.scala 336:28]
  wire  _write_data_code_T_124 = ^write_data_code_unit_31; // @[ECC.scala 81:55]
  wire [16:0] _write_data_code_T_126 = {_write_data_code_T_124,write_data_code_unit_31}; // @[Cat.scala 31:58]
  wire [7:0] write_data_code_lo_lo = {_write_data_code_T_30[16],_write_data_code_T_26[16],_write_data_code_T_22[16],
    _write_data_code_T_18[16],_write_data_code_T_14[16],_write_data_code_T_10[16],_write_data_code_T_6[16],
    _write_data_code_T_2[16]}; // @[ICache.scala 436:50]
  wire [15:0] write_data_code_lo = {_write_data_code_T_62[16],_write_data_code_T_58[16],_write_data_code_T_54[16],
    _write_data_code_T_50[16],_write_data_code_T_46[16],_write_data_code_T_42[16],_write_data_code_T_38[16],
    _write_data_code_T_34[16],write_data_code_lo_lo}; // @[ICache.scala 436:50]
  wire [7:0] write_data_code_hi_lo = {_write_data_code_T_94[16],_write_data_code_T_90[16],_write_data_code_T_86[16],
    _write_data_code_T_82[16],_write_data_code_T_78[16],_write_data_code_T_74[16],_write_data_code_T_70[16],
    _write_data_code_T_66[16]}; // @[ICache.scala 436:50]
  wire [15:0] write_data_code_hi = {_write_data_code_T_126[16],_write_data_code_T_122[16],_write_data_code_T_118[16],
    _write_data_code_T_114[16],_write_data_code_T_110[16],_write_data_code_T_106[16],_write_data_code_T_102[16],
    _write_data_code_T_98[16],write_data_code_hi_lo}; // @[ICache.scala 436:50]
  wire  _T_26 = io_cacheOp_req_bits_opCode == 64'h3; // @[CacheInstruction.scala 95:54]
  wire  _cacheOpShouldResp_T = dataArrays_0_io_read_req_0_ready & dataArrays_0_io_read_req_0_valid; // @[Decoupled.scala 50:35]
  wire  _cacheOpShouldResp_T_1 = dataArrays_0_io_read_req_1_ready & dataArrays_0_io_read_req_1_valid; // @[Decoupled.scala 50:35]
  wire [511:0] dataresp_0 = io_cacheOp_req_bits_bank_num[0] ? read_datas_1_0 : read_datas_0_0; // @[ICache.scala 463:21]
  wire [511:0] dataresp_1 = io_cacheOp_req_bits_bank_num[0] ? _read_datas_1_0_T[1023:512] : _read_datas_0_0_T[1023:512]; // @[ICache.scala 463:21]
  wire [511:0] dataresp_2 = io_cacheOp_req_bits_bank_num[0] ? read_datas_1_2 : read_datas_0_2; // @[ICache.scala 463:21]
  wire [511:0] dataresp_3 = io_cacheOp_req_bits_bank_num[0] ? _read_datas_1_2_T[1023:512] : _read_datas_0_2_T[1023:512]; // @[ICache.scala 463:21]
  wire  _GEN_4 = _T_26 ? ~io_cacheOp_req_bits_bank_num[0] : _dataArray_io_read_req_0_valid_T_5 & io_read_valid; // @[ICache.scala 364:36 454:6 457:36]
  wire [4:0] _GEN_5 = _T_26 ? io_cacheOp_req_bits_index[5:1] : bank_0_idx_vec_0[5:1]; // @[ICache.scala 454:6 459:26 365:40]
  wire  _GEN_6 = _T_26 ? io_cacheOp_req_bits_bank_num[0] : _dataArray_io_read_req_1_valid_T_3 & io_read_valid; // @[ICache.scala 366:36 454:6 458:36]
  wire [4:0] _GEN_7 = _T_26 ? io_cacheOp_req_bits_index[5:1] : bank_1_idx_vec_0[5:1]; // @[ICache.scala 454:6 459:26 367:40]
  wire  _GEN_8 = _T_26 ? ~io_cacheOp_req_bits_bank_num[0] : _dataArray_io_read_req_0_valid_T_12 & io_read_valid; // @[ICache.scala 364:36 454:6 457:36]
  wire [4:0] _GEN_9 = _T_26 ? io_cacheOp_req_bits_index[5:1] : bank_0_idx[5:1]; // @[ICache.scala 454:6 459:26 365:40]
  wire  _GEN_10 = _T_26 ? io_cacheOp_req_bits_bank_num[0] : _dataArray_io_read_req_1_valid_T_8 & io_read_valid; // @[ICache.scala 366:36 454:6 458:36]
  wire [4:0] _GEN_11 = _T_26 ? io_cacheOp_req_bits_index[5:1] : bank_1_idx[5:1]; // @[ICache.scala 454:6 459:26 367:40]
  wire  _GEN_12 = _T_26 & (_cacheOpShouldResp_T | _cacheOpShouldResp_T_1); // @[ICache.scala 454:6 462:25]
  wire  _T_30 = io_cacheOp_req_bits_opCode == 64'h7; // @[CacheInstruction.scala 99:54]
  wire [511:0] _dataArrays_0_io_write_bits_wdata_T = {io_cacheOp_req_bits_write_data_vec_7,
    io_cacheOp_req_bits_write_data_vec_6,io_cacheOp_req_bits_write_data_vec_5,io_cacheOp_req_bits_write_data_vec_4,
    io_cacheOp_req_bits_write_data_vec_3,io_cacheOp_req_bits_write_data_vec_2,io_cacheOp_req_bits_write_data_vec_1,
    io_cacheOp_req_bits_write_data_vec_0}; // @[ICache.scala 468:89]
  wire [31:0] _T_32 = 32'h1 << io_cacheOp_req_bits_wayNum[4:0]; // @[OneHot.scala 57:35]
  wire  _GEN_17 = _T_30 | io_write_valid; // @[ICache.scala 370:38 465:66 467:38]
  wire [511:0] _GEN_18 = _T_30 ? _dataArrays_0_io_write_bits_wdata_T : io_write_bits_data; // @[ICache.scala 371:38 465:66 468:43]
  wire  _GEN_19 = _T_30 ? io_cacheOp_req_bits_bank_num[0] : io_write_bits_bankIdx; // @[ICache.scala 373:38 465:66 469:46]
  wire [4:0] _GEN_20 = _T_30 ? io_cacheOp_req_bits_index[5:1] : io_write_bits_virIdx[5:1]; // @[ICache.scala 372:38 465:66 470:42]
  wire  _GEN_21 = _T_30 ? _T_32[0] : io_write_bits_waymask[0]; // @[ICache.scala 374:38 465:66 471:44]
  wire  _GEN_22 = _T_30 ? _T_32[1] : io_write_bits_waymask[1]; // @[ICache.scala 374:38 465:66 471:44]
  wire  _GEN_26 = _T_30 ? _T_32[2] : io_write_bits_waymask[2]; // @[ICache.scala 374:38 465:66 471:44]
  wire  _GEN_27 = _T_30 ? _T_32[3] : io_write_bits_waymask[3]; // @[ICache.scala 374:38 465:66 471:44]
  wire  _GEN_28 = _T_30 | _GEN_12; // @[ICache.scala 465:66 473:25]
  reg  io_cacheOp_resp_valid_REG; // @[ICache.scala 477:35]
  wire [511:0] _GEN_54 = 2'h1 == io_cacheOp_req_bits_wayNum[1:0] ? dataresp_1 : dataresp_0; // @[ICache.scala 481:{96,96}]
  wire [511:0] _GEN_55 = 2'h2 == io_cacheOp_req_bits_wayNum[1:0] ? dataresp_2 : _GEN_54; // @[ICache.scala 481:{96,96}]
  wire [511:0] _GEN_56 = 2'h3 == io_cacheOp_req_bits_wayNum[1:0] ? dataresp_3 : _GEN_55; // @[ICache.scala 481:{96,96}]
  ICachePartWayArray dataArrays_0 ( // @[ICache.scala 359:27]
    .clock(dataArrays_0_clock),
    .reset(dataArrays_0_reset),
    .io_read_req_0_ready(dataArrays_0_io_read_req_0_ready),
    .io_read_req_0_valid(dataArrays_0_io_read_req_0_valid),
    .io_read_req_0_bits_ridx(dataArrays_0_io_read_req_0_bits_ridx),
    .io_read_req_1_ready(dataArrays_0_io_read_req_1_ready),
    .io_read_req_1_valid(dataArrays_0_io_read_req_1_valid),
    .io_read_req_1_bits_ridx(dataArrays_0_io_read_req_1_bits_ridx),
    .io_read_resp_rdata_0_0(dataArrays_0_io_read_resp_rdata_0_0),
    .io_read_resp_rdata_0_1(dataArrays_0_io_read_resp_rdata_0_1),
    .io_read_resp_rdata_1_0(dataArrays_0_io_read_resp_rdata_1_0),
    .io_read_resp_rdata_1_1(dataArrays_0_io_read_resp_rdata_1_1),
    .io_write_valid(dataArrays_0_io_write_valid),
    .io_write_bits_wdata(dataArrays_0_io_write_bits_wdata),
    .io_write_bits_widx(dataArrays_0_io_write_bits_widx),
    .io_write_bits_wbankidx(dataArrays_0_io_write_bits_wbankidx),
    .io_write_bits_wmask_0(dataArrays_0_io_write_bits_wmask_0),
    .io_write_bits_wmask_1(dataArrays_0_io_write_bits_wmask_1)
  );
  ICachePartWayArray dataArrays_1 ( // @[ICache.scala 359:27]
    .clock(dataArrays_1_clock),
    .reset(dataArrays_1_reset),
    .io_read_req_0_ready(dataArrays_1_io_read_req_0_ready),
    .io_read_req_0_valid(dataArrays_1_io_read_req_0_valid),
    .io_read_req_0_bits_ridx(dataArrays_1_io_read_req_0_bits_ridx),
    .io_read_req_1_ready(dataArrays_1_io_read_req_1_ready),
    .io_read_req_1_valid(dataArrays_1_io_read_req_1_valid),
    .io_read_req_1_bits_ridx(dataArrays_1_io_read_req_1_bits_ridx),
    .io_read_resp_rdata_0_0(dataArrays_1_io_read_resp_rdata_0_0),
    .io_read_resp_rdata_0_1(dataArrays_1_io_read_resp_rdata_0_1),
    .io_read_resp_rdata_1_0(dataArrays_1_io_read_resp_rdata_1_0),
    .io_read_resp_rdata_1_1(dataArrays_1_io_read_resp_rdata_1_1),
    .io_write_valid(dataArrays_1_io_write_valid),
    .io_write_bits_wdata(dataArrays_1_io_write_bits_wdata),
    .io_write_bits_widx(dataArrays_1_io_write_bits_widx),
    .io_write_bits_wbankidx(dataArrays_1_io_write_bits_wbankidx),
    .io_write_bits_wmask_0(dataArrays_1_io_write_bits_wmask_0),
    .io_write_bits_wmask_1(dataArrays_1_io_write_bits_wmask_1)
  );
  SRAMTemplate_6 codeArrays_0 ( // @[ICache.scala 398:27]
    .clock(codeArrays_0_clock),
    .reset(codeArrays_0_reset),
    .io_rreq_ready(codeArrays_0_io_rreq_ready),
    .io_rreq_valid(codeArrays_0_io_rreq_valid),
    .io_rreq_bits_setIdx(codeArrays_0_io_rreq_bits_setIdx),
    .io_rresp_data_0(codeArrays_0_io_rresp_data_0),
    .io_rresp_data_1(codeArrays_0_io_rresp_data_1),
    .io_rresp_data_2(codeArrays_0_io_rresp_data_2),
    .io_rresp_data_3(codeArrays_0_io_rresp_data_3),
    .io_wreq_valid(codeArrays_0_io_wreq_valid),
    .io_wreq_bits_setIdx(codeArrays_0_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(codeArrays_0_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(codeArrays_0_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(codeArrays_0_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(codeArrays_0_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(codeArrays_0_io_wreq_bits_waymask)
  );
  SRAMTemplate_6 codeArrays_1 ( // @[ICache.scala 398:27]
    .clock(codeArrays_1_clock),
    .reset(codeArrays_1_reset),
    .io_rreq_ready(codeArrays_1_io_rreq_ready),
    .io_rreq_valid(codeArrays_1_io_rreq_valid),
    .io_rreq_bits_setIdx(codeArrays_1_io_rreq_bits_setIdx),
    .io_rresp_data_0(codeArrays_1_io_rresp_data_0),
    .io_rresp_data_1(codeArrays_1_io_rresp_data_1),
    .io_rresp_data_2(codeArrays_1_io_rresp_data_2),
    .io_rresp_data_3(codeArrays_1_io_rresp_data_3),
    .io_wreq_valid(codeArrays_1_io_wreq_valid),
    .io_wreq_bits_setIdx(codeArrays_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(codeArrays_1_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(codeArrays_1_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(codeArrays_1_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(codeArrays_1_io_wreq_bits_data_3),
    .io_wreq_bits_waymask(codeArrays_1_io_wreq_bits_waymask)
  );
  assign io_read_ready = _io_read_ready_T_4 & _io_read_ready_T_5; // @[ICache.scala 424:90]
  assign io_readResp_datas_0_0 = port_0_read_1_reg ? read_datas_1_0 : read_datas_0_0; // @[ICache.scala 387:30]
  assign io_readResp_datas_0_1 = port_0_read_1_reg ? _read_datas_1_0_T[1023:512] : _read_datas_0_0_T[1023:512]; // @[ICache.scala 387:30]
  assign io_readResp_datas_0_2 = port_0_read_1_reg ? read_datas_1_2 : read_datas_0_2; // @[ICache.scala 387:30]
  assign io_readResp_datas_0_3 = port_0_read_1_reg ? _read_datas_1_2_T[1023:512] : _read_datas_0_2_T[1023:512]; // @[ICache.scala 387:30]
  assign io_readResp_datas_1_0 = port_1_read_0_reg ? read_datas_0_0 : read_datas_1_0; // @[ICache.scala 388:30]
  assign io_readResp_datas_1_1 = port_1_read_0_reg ? _read_datas_0_0_T[1023:512] : _read_datas_1_0_T[1023:512]; // @[ICache.scala 388:30]
  assign io_readResp_datas_1_2 = port_1_read_0_reg ? read_datas_0_2 : read_datas_1_2; // @[ICache.scala 388:30]
  assign io_readResp_datas_1_3 = port_1_read_0_reg ? _read_datas_0_2_T[1023:512] : _read_datas_1_2_T[1023:512]; // @[ICache.scala 388:30]
  assign io_readResp_codes_0_0 = port_0_read_1_reg ? read_codes_1_0 : read_codes_0_0; // @[ICache.scala 439:30]
  assign io_readResp_codes_0_1 = port_0_read_1_reg ? read_codes_1_1 : read_codes_0_1; // @[ICache.scala 439:30]
  assign io_readResp_codes_0_2 = port_0_read_1_reg ? read_codes_1_2 : read_codes_0_2; // @[ICache.scala 439:30]
  assign io_readResp_codes_0_3 = port_0_read_1_reg ? read_codes_1_3 : read_codes_0_3; // @[ICache.scala 439:30]
  assign io_readResp_codes_1_0 = port_1_read_0_reg ? read_codes_0_0 : read_codes_1_0; // @[ICache.scala 440:30]
  assign io_readResp_codes_1_1 = port_1_read_0_reg ? read_codes_0_1 : read_codes_1_1; // @[ICache.scala 440:30]
  assign io_readResp_codes_1_2 = port_1_read_0_reg ? read_codes_0_2 : read_codes_1_2; // @[ICache.scala 440:30]
  assign io_readResp_codes_1_3 = port_1_read_0_reg ? read_codes_0_3 : read_codes_1_3; // @[ICache.scala 440:30]
  assign io_cacheOp_resp_valid = io_cacheOp_resp_valid_REG; // @[ICache.scala 477:25]
  assign io_cacheOp_resp_bits_read_data_vec_0 = _GEN_56[63:0]; // @[ICache.scala 481:96]
  assign io_cacheOp_resp_bits_read_data_vec_1 = _GEN_56[127:64]; // @[ICache.scala 481:96]
  assign io_cacheOp_resp_bits_read_data_vec_2 = _GEN_56[191:128]; // @[ICache.scala 481:96]
  assign io_cacheOp_resp_bits_read_data_vec_3 = _GEN_56[255:192]; // @[ICache.scala 481:96]
  assign io_cacheOp_resp_bits_read_data_vec_4 = _GEN_56[319:256]; // @[ICache.scala 481:96]
  assign io_cacheOp_resp_bits_read_data_vec_5 = _GEN_56[383:320]; // @[ICache.scala 481:96]
  assign io_cacheOp_resp_bits_read_data_vec_6 = _GEN_56[447:384]; // @[ICache.scala 481:96]
  assign io_cacheOp_resp_bits_read_data_vec_7 = _GEN_56[511:448]; // @[ICache.scala 481:96]
  assign dataArrays_0_clock = clock;
  assign dataArrays_0_reset = reset;
  assign dataArrays_0_io_read_req_0_valid = io_cacheOp_req_valid ? _GEN_4 : _dataArray_io_read_req_0_valid_T_5 &
    io_read_valid; // @[ICache.scala 451:29 364:36]
  assign dataArrays_0_io_read_req_0_bits_ridx = io_cacheOp_req_valid ? _GEN_5 : bank_0_idx_vec_0[5:1]; // @[ICache.scala 451:29 365:40]
  assign dataArrays_0_io_read_req_1_valid = io_cacheOp_req_valid ? _GEN_6 : _dataArray_io_read_req_1_valid_T_3 &
    io_read_valid; // @[ICache.scala 451:29 366:36]
  assign dataArrays_0_io_read_req_1_bits_ridx = io_cacheOp_req_valid ? _GEN_7 : bank_1_idx_vec_0[5:1]; // @[ICache.scala 451:29 367:40]
  assign dataArrays_0_io_write_valid = io_cacheOp_req_valid ? _GEN_17 : io_write_valid; // @[ICache.scala 451:29 370:38]
  assign dataArrays_0_io_write_bits_wdata = io_cacheOp_req_valid ? _GEN_18 : io_write_bits_data; // @[ICache.scala 451:29 371:38]
  assign dataArrays_0_io_write_bits_widx = io_cacheOp_req_valid ? _GEN_20 : io_write_bits_virIdx[5:1]; // @[ICache.scala 451:29 372:38]
  assign dataArrays_0_io_write_bits_wbankidx = io_cacheOp_req_valid ? _GEN_19 : io_write_bits_bankIdx; // @[ICache.scala 451:29 373:38]
  assign dataArrays_0_io_write_bits_wmask_0 = io_cacheOp_req_valid ? _GEN_21 : io_write_bits_waymask[0]; // @[ICache.scala 451:29 374:38]
  assign dataArrays_0_io_write_bits_wmask_1 = io_cacheOp_req_valid ? _GEN_22 : io_write_bits_waymask[1]; // @[ICache.scala 451:29 374:38]
  assign dataArrays_1_clock = clock;
  assign dataArrays_1_reset = reset;
  assign dataArrays_1_io_read_req_0_valid = io_cacheOp_req_valid ? _GEN_8 : _dataArray_io_read_req_0_valid_T_12 &
    io_read_valid; // @[ICache.scala 451:29 364:36]
  assign dataArrays_1_io_read_req_0_bits_ridx = io_cacheOp_req_valid ? _GEN_9 : bank_0_idx[5:1]; // @[ICache.scala 451:29 365:40]
  assign dataArrays_1_io_read_req_1_valid = io_cacheOp_req_valid ? _GEN_10 : _dataArray_io_read_req_1_valid_T_8 &
    io_read_valid; // @[ICache.scala 451:29 366:36]
  assign dataArrays_1_io_read_req_1_bits_ridx = io_cacheOp_req_valid ? _GEN_11 : bank_1_idx[5:1]; // @[ICache.scala 451:29 367:40]
  assign dataArrays_1_io_write_valid = io_cacheOp_req_valid ? _GEN_17 : io_write_valid; // @[ICache.scala 451:29 370:38]
  assign dataArrays_1_io_write_bits_wdata = io_cacheOp_req_valid ? _GEN_18 : io_write_bits_data; // @[ICache.scala 451:29 371:38]
  assign dataArrays_1_io_write_bits_widx = io_cacheOp_req_valid ? _GEN_20 : io_write_bits_virIdx[5:1]; // @[ICache.scala 451:29 372:38]
  assign dataArrays_1_io_write_bits_wbankidx = io_cacheOp_req_valid ? _GEN_19 : io_write_bits_bankIdx; // @[ICache.scala 451:29 373:38]
  assign dataArrays_1_io_write_bits_wmask_0 = io_cacheOp_req_valid ? _GEN_26 : io_write_bits_waymask[2]; // @[ICache.scala 451:29 374:38]
  assign dataArrays_1_io_write_bits_wmask_1 = io_cacheOp_req_valid ? _GEN_27 : io_write_bits_waymask[3]; // @[ICache.scala 451:29 374:38]
  assign codeArrays_0_clock = clock;
  assign codeArrays_0_reset = reset;
  assign codeArrays_0_io_rreq_valid = io_read_valid & _dataArray_io_read_req_0_valid_T_12; // @[ICache.scala 408:49]
  assign codeArrays_0_io_rreq_bits_setIdx = bank_0_idx[5:1]; // @[ICache.scala 409:54]
  assign codeArrays_0_io_wreq_valid = io_write_valid & ~io_write_bits_bankIdx; // @[ICache.scala 391:46]
  assign codeArrays_0_io_wreq_bits_setIdx = io_write_bits_virIdx[5:1]; // @[ICache.scala 411:86]
  assign codeArrays_0_io_wreq_bits_data_0 = {write_data_code_hi,write_data_code_lo}; // @[ICache.scala 436:50]
  assign codeArrays_0_io_wreq_bits_data_1 = {write_data_code_hi,write_data_code_lo}; // @[ICache.scala 436:50]
  assign codeArrays_0_io_wreq_bits_data_2 = {write_data_code_hi,write_data_code_lo}; // @[ICache.scala 436:50]
  assign codeArrays_0_io_wreq_bits_data_3 = {write_data_code_hi,write_data_code_lo}; // @[ICache.scala 436:50]
  assign codeArrays_0_io_wreq_bits_waymask = io_write_bits_waymask; // @[SRAMTemplate.scala 54:24]
  assign codeArrays_1_clock = clock;
  assign codeArrays_1_reset = reset;
  assign codeArrays_1_io_rreq_valid = io_read_valid & _dataArray_io_read_req_1_valid_T_8; // @[ICache.scala 414:49]
  assign codeArrays_1_io_rreq_bits_setIdx = bank_1_idx[5:1]; // @[ICache.scala 415:54]
  assign codeArrays_1_io_wreq_valid = io_write_valid & io_write_bits_bankIdx; // @[ICache.scala 392:46]
  assign codeArrays_1_io_wreq_bits_setIdx = io_write_bits_virIdx[5:1]; // @[ICache.scala 417:86]
  assign codeArrays_1_io_wreq_bits_data_0 = {write_data_code_hi,write_data_code_lo}; // @[ICache.scala 436:50]
  assign codeArrays_1_io_wreq_bits_data_1 = {write_data_code_hi,write_data_code_lo}; // @[ICache.scala 436:50]
  assign codeArrays_1_io_wreq_bits_data_2 = {write_data_code_hi,write_data_code_lo}; // @[ICache.scala 436:50]
  assign codeArrays_1_io_wreq_bits_data_3 = {write_data_code_hi,write_data_code_lo}; // @[ICache.scala 436:50]
  assign codeArrays_1_io_wreq_bits_waymask = io_write_bits_waymask; // @[SRAMTemplate.scala 54:24]
  always @(posedge clock) begin
    if (_port_0_read_0_reg_T_3) begin // @[Reg.scala 17:18]
      port_0_read_1_reg <= _port_0_read_1_reg_T_1; // @[Reg.scala 17:22]
    end
    if (_port_0_read_0_reg_T_3) begin // @[Reg.scala 17:18]
      port_1_read_0_reg <= _port_1_read_0_reg_T_3; // @[Reg.scala 17:22]
    end
    io_cacheOp_resp_valid_REG <= io_cacheOp_req_valid & _GEN_28; // @[ICache.scala 451:29]
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
  port_0_read_1_reg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  port_1_read_0_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  io_cacheOp_resp_valid_REG = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

