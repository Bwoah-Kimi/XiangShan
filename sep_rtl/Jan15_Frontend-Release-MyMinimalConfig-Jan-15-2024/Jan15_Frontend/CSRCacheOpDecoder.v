module CSRCacheOpDecoder(
  input         clock,
  input         reset,
  input         io_csr_distribute_csr_wvalid,
  input  [11:0] io_csr_distribute_csr_waddr,
  input  [63:0] io_csr_distribute_csr_wdata,
  output        io_csr_update_wvalid,
  output [11:0] io_csr_update_waddr,
  output [63:0] io_csr_update_wdata,
  output        io_cache_req_valid,
  output [63:0] io_cache_req_bits_wayNum,
  output [63:0] io_cache_req_bits_index,
  output [63:0] io_cache_req_bits_opCode,
  output [63:0] io_cache_req_bits_write_tag_low,
  output [63:0] io_cache_req_bits_write_data_vec_0,
  output [63:0] io_cache_req_bits_write_data_vec_1,
  output [63:0] io_cache_req_bits_write_data_vec_2,
  output [63:0] io_cache_req_bits_write_data_vec_3,
  output [63:0] io_cache_req_bits_write_data_vec_4,
  output [63:0] io_cache_req_bits_write_data_vec_5,
  output [63:0] io_cache_req_bits_write_data_vec_6,
  output [63:0] io_cache_req_bits_write_data_vec_7,
  output [63:0] io_cache_req_bits_bank_num,
  input         io_cache_resp_valid,
  input  [63:0] io_cache_resp_bits_read_tag_low,
  input  [63:0] io_cache_resp_bits_read_data_vec_0,
  input  [63:0] io_cache_resp_bits_read_data_vec_1,
  input  [63:0] io_cache_resp_bits_read_data_vec_2,
  input  [63:0] io_cache_resp_bits_read_data_vec_3,
  input  [63:0] io_cache_resp_bits_read_data_vec_4,
  input  [63:0] io_cache_resp_bits_read_data_vec_5,
  input  [63:0] io_cache_resp_bits_read_data_vec_6,
  input  [63:0] io_cache_resp_bits_read_data_vec_7,
  input         io_error_source_tag,
  input         io_error_source_data,
  input         io_error_source_l2,
  input         io_error_opType_fetch,
  input         io_error_opType_load,
  input         io_error_opType_store,
  input         io_error_opType_probe,
  input         io_error_opType_release,
  input         io_error_opType_atom,
  input  [35:0] io_error_paddr,
  input         io_error_report_to_beu,
  input         io_error_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [63:0] _RAND_27;
`endif // RANDOMIZE_REG_INIT
  wire  error_delay_clock; // @[Hold.scala 97:23]
  wire  error_delay_io_in_source_tag; // @[Hold.scala 97:23]
  wire  error_delay_io_in_source_data; // @[Hold.scala 97:23]
  wire  error_delay_io_in_source_l2; // @[Hold.scala 97:23]
  wire  error_delay_io_in_opType_fetch; // @[Hold.scala 97:23]
  wire  error_delay_io_in_opType_load; // @[Hold.scala 97:23]
  wire  error_delay_io_in_opType_store; // @[Hold.scala 97:23]
  wire  error_delay_io_in_opType_probe; // @[Hold.scala 97:23]
  wire  error_delay_io_in_opType_release; // @[Hold.scala 97:23]
  wire  error_delay_io_in_opType_atom; // @[Hold.scala 97:23]
  wire [35:0] error_delay_io_in_paddr; // @[Hold.scala 97:23]
  wire  error_delay_io_in_report_to_beu; // @[Hold.scala 97:23]
  wire  error_delay_io_in_valid; // @[Hold.scala 97:23]
  wire  error_delay_io_out_source_tag; // @[Hold.scala 97:23]
  wire  error_delay_io_out_source_data; // @[Hold.scala 97:23]
  wire  error_delay_io_out_source_l2; // @[Hold.scala 97:23]
  wire  error_delay_io_out_opType_fetch; // @[Hold.scala 97:23]
  wire  error_delay_io_out_opType_load; // @[Hold.scala 97:23]
  wire  error_delay_io_out_opType_store; // @[Hold.scala 97:23]
  wire  error_delay_io_out_opType_probe; // @[Hold.scala 97:23]
  wire  error_delay_io_out_opType_release; // @[Hold.scala 97:23]
  wire  error_delay_io_out_opType_atom; // @[Hold.scala 97:23]
  wire [35:0] error_delay_io_out_paddr; // @[Hold.scala 97:23]
  wire  error_delay_io_out_report_to_beu; // @[Hold.scala 97:23]
  wire  error_delay_io_out_valid; // @[Hold.scala 97:23]
  reg  schedule_csr_op_resp_data; // @[CacheInstruction.scala 152:42]
  reg  schedule_csr_op_resp_finish; // @[CacheInstruction.scala 153:44]
  reg [2:0] data_transfer_cnt; // @[CacheInstruction.scala 156:34]
  reg [63:0] translated_cache_req_level; // @[CacheInstruction.scala 159:33]
  reg [63:0] translated_cache_req_wayNum; // @[CacheInstruction.scala 159:33]
  reg [63:0] translated_cache_req_index; // @[CacheInstruction.scala 159:33]
  reg [63:0] translated_cache_req_opCode; // @[CacheInstruction.scala 159:33]
  reg [63:0] translated_cache_req_write_tag_low; // @[CacheInstruction.scala 159:33]
  reg [63:0] translated_cache_req_write_data_vec_0; // @[CacheInstruction.scala 159:33]
  reg [63:0] translated_cache_req_write_data_vec_1; // @[CacheInstruction.scala 159:33]
  reg [63:0] translated_cache_req_write_data_vec_2; // @[CacheInstruction.scala 159:33]
  reg [63:0] translated_cache_req_write_data_vec_3; // @[CacheInstruction.scala 159:33]
  reg [63:0] translated_cache_req_write_data_vec_4; // @[CacheInstruction.scala 159:33]
  reg [63:0] translated_cache_req_write_data_vec_5; // @[CacheInstruction.scala 159:33]
  reg [63:0] translated_cache_req_write_data_vec_6; // @[CacheInstruction.scala 159:33]
  reg [63:0] translated_cache_req_write_data_vec_7; // @[CacheInstruction.scala 159:33]
  reg [63:0] translated_cache_req_bank_num; // @[CacheInstruction.scala 159:33]
  reg [63:0] translated_cache_req_opCode_dup_0; // @[CacheInstruction.scala 160:44]
  wire  _T_1 = io_csr_distribute_csr_waddr == 12'h5c5 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 168:123]
  wire  _T_86 = io_csr_distribute_csr_waddr == 12'h5c7 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 168:123]
  wire  _T_91 = io_csr_distribute_csr_waddr == 12'h5c8 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 168:123]
  wire  _T_96 = io_csr_distribute_csr_waddr == 12'h5c9 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 168:123]
  wire  _T_101 = io_csr_distribute_csr_waddr == 12'h5ca & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 168:123]
  wire  _T_111 = io_csr_distribute_csr_waddr == 12'h5cd & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 168:123]
  wire  _T_121 = io_csr_distribute_csr_waddr == 12'h5d1 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 168:123]
  wire  _T_126 = io_csr_distribute_csr_waddr == 12'h5d2 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 168:123]
  wire  _T_131 = io_csr_distribute_csr_waddr == 12'h5d3 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 168:123]
  wire  _T_136 = io_csr_distribute_csr_waddr == 12'h5d4 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 168:123]
  wire  _T_141 = io_csr_distribute_csr_waddr == 12'h5d5 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 168:123]
  wire  _T_146 = io_csr_distribute_csr_waddr == 12'h5d6 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 168:123]
  wire  _T_151 = io_csr_distribute_csr_waddr == 12'h5d7 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 168:123]
  wire  _T_156 = io_csr_distribute_csr_waddr == 12'h5d8 & io_csr_distribute_csr_wvalid; // @[CacheInstruction.scala 168:123]
  reg  io_cache_req_valid_REG; // @[CacheInstruction.scala 206:32]
  reg [63:0] raw_cache_resp_read_tag_low; // @[CacheInstruction.scala 217:27]
  reg [63:0] raw_cache_resp_read_data_vec_0; // @[CacheInstruction.scala 217:27]
  reg [63:0] raw_cache_resp_read_data_vec_1; // @[CacheInstruction.scala 217:27]
  reg [63:0] raw_cache_resp_read_data_vec_2; // @[CacheInstruction.scala 217:27]
  reg [63:0] raw_cache_resp_read_data_vec_3; // @[CacheInstruction.scala 217:27]
  reg [63:0] raw_cache_resp_read_data_vec_4; // @[CacheInstruction.scala 217:27]
  reg [63:0] raw_cache_resp_read_data_vec_5; // @[CacheInstruction.scala 217:27]
  reg [63:0] raw_cache_resp_read_data_vec_6; // @[CacheInstruction.scala 217:27]
  reg [63:0] raw_cache_resp_read_data_vec_7; // @[CacheInstruction.scala 217:27]
  wire  _T_165 = translated_cache_req_opCode == 64'h0; // @[CacheInstruction.scala 92:54]
  wire  _T_166 = translated_cache_req_opCode == 64'h1; // @[CacheInstruction.scala 93:54]
  wire  _T_167 = _T_165 | _T_166; // @[CacheInstruction.scala 102:53]
  wire  _T_168 = translated_cache_req_opCode == 64'h2; // @[CacheInstruction.scala 94:54]
  wire  _T_169 = _T_167 | _T_168; // @[CacheInstruction.scala 103:27]
  wire  _T_170 = translated_cache_req_opCode == 64'h3; // @[CacheInstruction.scala 95:54]
  wire  _T_171 = _T_169 | _T_170; // @[CacheInstruction.scala 104:23]
  wire  _GEN_36 = _T_171 ? 1'h0 : 1'h1; // @[CacheInstruction.scala 221:64 223:35 227:35]
  wire  _GEN_52 = io_cache_resp_valid ? _GEN_36 : schedule_csr_op_resp_finish; // @[CacheInstruction.scala 218:29 153:44]
  wire  _data_transfer_finished_T = data_transfer_cnt == 3'h7; // @[CacheInstruction.scala 263:25]
  wire  _data_transfer_finished_T_1 = _T_170 ? _data_transfer_finished_T : 1'h1; // @[CacheInstruction.scala 262:34]
  wire  data_transfer_finished = schedule_csr_op_resp_data & _data_transfer_finished_T_1; // @[CacheInstruction.scala 249:34 262:28]
  wire  _GEN_54 = io_csr_update_wvalid & schedule_csr_op_resp_data & data_transfer_finished | _GEN_52; // @[CacheInstruction.scala 232:86 234:33]
  wire  isReadTagECC = translated_cache_req_opCode_dup_0 == 64'h0; // @[CacheInstruction.scala 92:54]
  wire  isReadDataECC = translated_cache_req_opCode_dup_0 == 64'h1; // @[CacheInstruction.scala 93:54]
  wire [10:0] _GEN_75 = {{8'd0}, data_transfer_cnt}; // @[CacheInstruction.scala 253:108]
  wire [10:0] _io_csr_update_waddr_T_1 = 11'h5cd + _GEN_75; // @[CacheInstruction.scala 253:108]
  wire [10:0] _io_csr_update_waddr_T_3 = 11'h5d1 + _GEN_75; // @[CacheInstruction.scala 254:108]
  wire [10:0] _io_csr_update_waddr_T_4 = isReadTagECC ? 11'h5cb : 11'h0; // @[Mux.scala 27:73]
  wire [10:0] _io_csr_update_waddr_T_5 = isReadDataECC ? 11'h5d0 : 11'h0; // @[Mux.scala 27:73]
  wire [10:0] _io_csr_update_waddr_T_6 = _T_168 ? _io_csr_update_waddr_T_1 : 11'h0; // @[Mux.scala 27:73]
  wire [10:0] _io_csr_update_waddr_T_7 = _T_170 ? _io_csr_update_waddr_T_3 : 11'h0; // @[Mux.scala 27:73]
  wire [10:0] _io_csr_update_waddr_T_8 = _io_csr_update_waddr_T_4 | _io_csr_update_waddr_T_5; // @[Mux.scala 27:73]
  wire [10:0] _io_csr_update_waddr_T_9 = _io_csr_update_waddr_T_8 | _io_csr_update_waddr_T_6; // @[Mux.scala 27:73]
  wire [10:0] _io_csr_update_waddr_T_10 = _io_csr_update_waddr_T_9 | _io_csr_update_waddr_T_7; // @[Mux.scala 27:73]
  wire [63:0] _io_csr_update_wdata_T_2 = _T_168 ? raw_cache_resp_read_tag_low : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _GEN_58 = 3'h1 == data_transfer_cnt ? raw_cache_resp_read_data_vec_1 : raw_cache_resp_read_data_vec_0; // @[Mux.scala 27:{73,73}]
  wire [63:0] _GEN_59 = 3'h2 == data_transfer_cnt ? raw_cache_resp_read_data_vec_2 : _GEN_58; // @[Mux.scala 27:{73,73}]
  wire [63:0] _GEN_60 = 3'h3 == data_transfer_cnt ? raw_cache_resp_read_data_vec_3 : _GEN_59; // @[Mux.scala 27:{73,73}]
  wire [63:0] _GEN_61 = 3'h4 == data_transfer_cnt ? raw_cache_resp_read_data_vec_4 : _GEN_60; // @[Mux.scala 27:{73,73}]
  wire [63:0] _GEN_62 = 3'h5 == data_transfer_cnt ? raw_cache_resp_read_data_vec_5 : _GEN_61; // @[Mux.scala 27:{73,73}]
  wire [63:0] _GEN_63 = 3'h6 == data_transfer_cnt ? raw_cache_resp_read_data_vec_6 : _GEN_62; // @[Mux.scala 27:{73,73}]
  wire [63:0] _GEN_64 = 3'h7 == data_transfer_cnt ? raw_cache_resp_read_data_vec_7 : _GEN_63; // @[Mux.scala 27:{73,73}]
  wire [63:0] _io_csr_update_wdata_T_3 = _T_170 ? _GEN_64 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_csr_update_wdata_T_6 = _io_csr_update_wdata_T_2 | _io_csr_update_wdata_T_3; // @[Mux.scala 27:73]
  wire [2:0] _data_transfer_cnt_T_1 = data_transfer_cnt + 3'h1; // @[CacheInstruction.scala 266:44]
  wire [10:0] _GEN_69 = schedule_csr_op_resp_finish ? 11'h5c6 : _io_csr_update_waddr_T_10; // @[CacheInstruction.scala 269:36 270:31]
  wire [63:0] _GEN_70 = schedule_csr_op_resp_finish ? 64'h1 : _io_csr_update_wdata_T_6; // @[CacheInstruction.scala 269:36 271:31]
  wire [40:0] io_csr_update_wdata_lo = {error_delay_io_out_opType_probe,error_delay_io_out_opType_release,
    error_delay_io_out_opType_atom,error_delay_io_out_paddr,error_delay_io_out_report_to_beu,error_delay_io_out_valid}; // @[CacheInstruction.scala 278:40]
  wire [46:0] _io_csr_update_wdata_T_7 = {error_delay_io_out_source_tag,error_delay_io_out_source_data,
    error_delay_io_out_source_l2,error_delay_io_out_opType_fetch,error_delay_io_out_opType_load,
    error_delay_io_out_opType_store,io_csr_update_wdata_lo}; // @[CacheInstruction.scala 278:40]
  wire [10:0] _GEN_72 = error_delay_io_out_report_to_beu ? 11'h5d9 : _GEN_69; // @[CacheInstruction.scala 276:29 277:31]
  DelayN error_delay ( // @[Hold.scala 97:23]
    .clock(error_delay_clock),
    .io_in_source_tag(error_delay_io_in_source_tag),
    .io_in_source_data(error_delay_io_in_source_data),
    .io_in_source_l2(error_delay_io_in_source_l2),
    .io_in_opType_fetch(error_delay_io_in_opType_fetch),
    .io_in_opType_load(error_delay_io_in_opType_load),
    .io_in_opType_store(error_delay_io_in_opType_store),
    .io_in_opType_probe(error_delay_io_in_opType_probe),
    .io_in_opType_release(error_delay_io_in_opType_release),
    .io_in_opType_atom(error_delay_io_in_opType_atom),
    .io_in_paddr(error_delay_io_in_paddr),
    .io_in_report_to_beu(error_delay_io_in_report_to_beu),
    .io_in_valid(error_delay_io_in_valid),
    .io_out_source_tag(error_delay_io_out_source_tag),
    .io_out_source_data(error_delay_io_out_source_data),
    .io_out_source_l2(error_delay_io_out_source_l2),
    .io_out_opType_fetch(error_delay_io_out_opType_fetch),
    .io_out_opType_load(error_delay_io_out_opType_load),
    .io_out_opType_store(error_delay_io_out_opType_store),
    .io_out_opType_probe(error_delay_io_out_opType_probe),
    .io_out_opType_release(error_delay_io_out_opType_release),
    .io_out_opType_atom(error_delay_io_out_opType_atom),
    .io_out_paddr(error_delay_io_out_paddr),
    .io_out_report_to_beu(error_delay_io_out_report_to_beu),
    .io_out_valid(error_delay_io_out_valid)
  );
  assign io_csr_update_wvalid = error_delay_io_out_report_to_beu | (schedule_csr_op_resp_data |
    schedule_csr_op_resp_finish); // @[CacheInstruction.scala 241:25 276:29 279:27]
  assign io_csr_update_waddr = {{1'd0}, _GEN_72};
  assign io_csr_update_wdata = error_delay_io_out_report_to_beu ? {{17'd0}, _io_csr_update_wdata_T_7} :
    _GEN_70; // @[CacheInstruction.scala 276:29 278:31]
  assign io_cache_req_valid = io_cache_req_valid_REG; // @[CacheInstruction.scala 206:22]
  assign io_cache_req_bits_wayNum = translated_cache_req_wayNum; // @[CacheInstruction.scala 208:21]
  assign io_cache_req_bits_index = translated_cache_req_index; // @[CacheInstruction.scala 208:21]
  assign io_cache_req_bits_opCode = translated_cache_req_opCode; // @[CacheInstruction.scala 208:21]
  assign io_cache_req_bits_write_tag_low = translated_cache_req_write_tag_low; // @[CacheInstruction.scala 208:21]
  assign io_cache_req_bits_write_data_vec_0 = translated_cache_req_write_data_vec_0; // @[CacheInstruction.scala 208:21]
  assign io_cache_req_bits_write_data_vec_1 = translated_cache_req_write_data_vec_1; // @[CacheInstruction.scala 208:21]
  assign io_cache_req_bits_write_data_vec_2 = translated_cache_req_write_data_vec_2; // @[CacheInstruction.scala 208:21]
  assign io_cache_req_bits_write_data_vec_3 = translated_cache_req_write_data_vec_3; // @[CacheInstruction.scala 208:21]
  assign io_cache_req_bits_write_data_vec_4 = translated_cache_req_write_data_vec_4; // @[CacheInstruction.scala 208:21]
  assign io_cache_req_bits_write_data_vec_5 = translated_cache_req_write_data_vec_5; // @[CacheInstruction.scala 208:21]
  assign io_cache_req_bits_write_data_vec_6 = translated_cache_req_write_data_vec_6; // @[CacheInstruction.scala 208:21]
  assign io_cache_req_bits_write_data_vec_7 = translated_cache_req_write_data_vec_7; // @[CacheInstruction.scala 208:21]
  assign io_cache_req_bits_bank_num = translated_cache_req_bank_num; // @[CacheInstruction.scala 208:21]
  assign error_delay_clock = clock;
  assign error_delay_io_in_source_tag = io_error_source_tag; // @[Hold.scala 98:17]
  assign error_delay_io_in_source_data = io_error_source_data; // @[Hold.scala 98:17]
  assign error_delay_io_in_source_l2 = io_error_source_l2; // @[Hold.scala 98:17]
  assign error_delay_io_in_opType_fetch = io_error_opType_fetch; // @[Hold.scala 98:17]
  assign error_delay_io_in_opType_load = io_error_opType_load; // @[Hold.scala 98:17]
  assign error_delay_io_in_opType_store = io_error_opType_store; // @[Hold.scala 98:17]
  assign error_delay_io_in_opType_probe = io_error_opType_probe; // @[Hold.scala 98:17]
  assign error_delay_io_in_opType_release = io_error_opType_release; // @[Hold.scala 98:17]
  assign error_delay_io_in_opType_atom = io_error_opType_atom; // @[Hold.scala 98:17]
  assign error_delay_io_in_paddr = io_error_paddr; // @[Hold.scala 98:17]
  assign error_delay_io_in_report_to_beu = io_error_report_to_beu; // @[Hold.scala 98:17]
  assign error_delay_io_in_valid = io_error_valid; // @[Hold.scala 98:17]
  always @(posedge clock) begin
    if (_T_86) begin // @[CacheInstruction.scala 175:6]
      translated_cache_req_level <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 176:17]
    end
    if (_T_91) begin // @[CacheInstruction.scala 175:6]
      translated_cache_req_wayNum <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 176:17]
    end
    if (_T_96) begin // @[CacheInstruction.scala 175:6]
      translated_cache_req_index <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 176:17]
    end
    if (_T_1) begin // @[CacheInstruction.scala 175:6]
      translated_cache_req_opCode <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 176:17]
    end
    if (_T_111) begin // @[CacheInstruction.scala 175:6]
      translated_cache_req_write_tag_low <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 176:17]
    end
    if (_T_121) begin // @[CacheInstruction.scala 175:6]
      translated_cache_req_write_data_vec_0 <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 176:17]
    end
    if (_T_126) begin // @[CacheInstruction.scala 175:6]
      translated_cache_req_write_data_vec_1 <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 176:17]
    end
    if (_T_131) begin // @[CacheInstruction.scala 175:6]
      translated_cache_req_write_data_vec_2 <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 176:17]
    end
    if (_T_136) begin // @[CacheInstruction.scala 175:6]
      translated_cache_req_write_data_vec_3 <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 176:17]
    end
    if (_T_141) begin // @[CacheInstruction.scala 175:6]
      translated_cache_req_write_data_vec_4 <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 176:17]
    end
    if (_T_146) begin // @[CacheInstruction.scala 175:6]
      translated_cache_req_write_data_vec_5 <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 176:17]
    end
    if (_T_151) begin // @[CacheInstruction.scala 175:6]
      translated_cache_req_write_data_vec_6 <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 176:17]
    end
    if (_T_156) begin // @[CacheInstruction.scala 175:6]
      translated_cache_req_write_data_vec_7 <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 176:17]
    end
    if (_T_101) begin // @[CacheInstruction.scala 175:6]
      translated_cache_req_bank_num <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 176:17]
    end
    if (_T_1) begin // @[CacheInstruction.scala 175:6]
      translated_cache_req_opCode_dup_0 <= io_csr_distribute_csr_wdata; // @[CacheInstruction.scala 176:17]
    end
    io_cache_req_valid_REG <= _T_1 & 64'h0 == translated_cache_req_level; // @[CacheInstruction.scala 200:72]
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 218:29]
      raw_cache_resp_read_tag_low <= io_cache_resp_bits_read_tag_low; // @[CacheInstruction.scala 220:20]
    end
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 218:29]
      raw_cache_resp_read_data_vec_0 <= io_cache_resp_bits_read_data_vec_0; // @[CacheInstruction.scala 220:20]
    end
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 218:29]
      raw_cache_resp_read_data_vec_1 <= io_cache_resp_bits_read_data_vec_1; // @[CacheInstruction.scala 220:20]
    end
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 218:29]
      raw_cache_resp_read_data_vec_2 <= io_cache_resp_bits_read_data_vec_2; // @[CacheInstruction.scala 220:20]
    end
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 218:29]
      raw_cache_resp_read_data_vec_3 <= io_cache_resp_bits_read_data_vec_3; // @[CacheInstruction.scala 220:20]
    end
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 218:29]
      raw_cache_resp_read_data_vec_4 <= io_cache_resp_bits_read_data_vec_4; // @[CacheInstruction.scala 220:20]
    end
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 218:29]
      raw_cache_resp_read_data_vec_5 <= io_cache_resp_bits_read_data_vec_5; // @[CacheInstruction.scala 220:20]
    end
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 218:29]
      raw_cache_resp_read_data_vec_6 <= io_cache_resp_bits_read_data_vec_6; // @[CacheInstruction.scala 220:20]
    end
    if (io_cache_resp_valid) begin // @[CacheInstruction.scala 218:29]
      raw_cache_resp_read_data_vec_7 <= io_cache_resp_bits_read_data_vec_7; // @[CacheInstruction.scala 220:20]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CacheInstruction.scala 232:86]
      schedule_csr_op_resp_data <= 1'h0; // @[CacheInstruction.scala 233:31]
    end else if (io_csr_update_wvalid & schedule_csr_op_resp_data & data_transfer_finished) begin // @[CacheInstruction.scala 218:29]
      schedule_csr_op_resp_data <= 1'h0;
    end else if (io_cache_resp_valid) begin // @[CacheInstruction.scala 152:42]
      schedule_csr_op_resp_data <= _T_171;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CacheInstruction.scala 236:62]
      schedule_csr_op_resp_finish <= 1'h0; // @[CacheInstruction.scala 237:33]
    end else if (io_csr_update_wvalid & schedule_csr_op_resp_finish) begin
      schedule_csr_op_resp_finish <= 1'h0;
    end else begin
      schedule_csr_op_resp_finish <= _GEN_54;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CacheInstruction.scala 269:36]
      data_transfer_cnt <= 3'h0; // @[CacheInstruction.scala 272:23]
    end else if (schedule_csr_op_resp_finish) begin // @[CacheInstruction.scala 249:34]
      data_transfer_cnt <= 3'h0; // @[CacheInstruction.scala 266:23]
    end else if (schedule_csr_op_resp_data) begin // @[CacheInstruction.scala 156:34]
      data_transfer_cnt <= _data_transfer_cnt_T_1;
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
  schedule_csr_op_resp_data = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  schedule_csr_op_resp_finish = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  data_transfer_cnt = _RAND_2[2:0];
  _RAND_3 = {2{`RANDOM}};
  translated_cache_req_level = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  translated_cache_req_wayNum = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  translated_cache_req_index = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  translated_cache_req_opCode = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  translated_cache_req_write_tag_low = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  translated_cache_req_write_data_vec_0 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  translated_cache_req_write_data_vec_1 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  translated_cache_req_write_data_vec_2 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  translated_cache_req_write_data_vec_3 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  translated_cache_req_write_data_vec_4 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  translated_cache_req_write_data_vec_5 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  translated_cache_req_write_data_vec_6 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  translated_cache_req_write_data_vec_7 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  translated_cache_req_bank_num = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  translated_cache_req_opCode_dup_0 = _RAND_17[63:0];
  _RAND_18 = {1{`RANDOM}};
  io_cache_req_valid_REG = _RAND_18[0:0];
  _RAND_19 = {2{`RANDOM}};
  raw_cache_resp_read_tag_low = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  raw_cache_resp_read_data_vec_0 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  raw_cache_resp_read_data_vec_1 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  raw_cache_resp_read_data_vec_2 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  raw_cache_resp_read_data_vec_3 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  raw_cache_resp_read_data_vec_4 = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  raw_cache_resp_read_data_vec_5 = _RAND_25[63:0];
  _RAND_26 = {2{`RANDOM}};
  raw_cache_resp_read_data_vec_6 = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  raw_cache_resp_read_data_vec_7 = _RAND_27[63:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    schedule_csr_op_resp_data = 1'h0;
  end
  if (reset) begin
    schedule_csr_op_resp_finish = 1'h0;
  end
  if (reset) begin
    data_transfer_cnt = 3'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

