module RefillPipe(
  output        io_req_ready,
  input         io_req_valid,
  input  [3:0]  io_req_bits_source,
  input  [35:0] io_req_bits_addr,
  input  [1:0]  io_req_bits_miss_id,
  input  [3:0]  io_req_bits_id,
  input         io_req_bits_error,
  input  [7:0]  io_req_bits_wmask,
  input  [63:0] io_req_bits_data_0,
  input  [63:0] io_req_bits_data_1,
  input  [63:0] io_req_bits_data_2,
  input  [63:0] io_req_bits_data_3,
  input  [63:0] io_req_bits_data_4,
  input  [63:0] io_req_bits_data_5,
  input  [63:0] io_req_bits_data_6,
  input  [63:0] io_req_bits_data_7,
  input  [1:0]  io_req_bits_meta_coh_state,
  input         io_req_dup_for_data_w0_valid,
  input  [35:0] io_req_dup_for_data_w0_bits_addr,
  input  [7:0]  io_req_dup_for_data_w0_bits_way_en,
  input  [1:0]  io_req_dup_for_data_w0_bits_alias,
  input         io_req_dup_for_data_w1_valid,
  input  [35:0] io_req_dup_for_data_w1_bits_addr,
  input  [7:0]  io_req_dup_for_data_w1_bits_way_en,
  input  [1:0]  io_req_dup_for_data_w1_bits_alias,
  input         io_req_dup_for_data_w2_valid,
  input  [35:0] io_req_dup_for_data_w2_bits_addr,
  input  [7:0]  io_req_dup_for_data_w2_bits_way_en,
  input  [1:0]  io_req_dup_for_data_w2_bits_alias,
  input         io_req_dup_for_data_w3_valid,
  input  [35:0] io_req_dup_for_data_w3_bits_addr,
  input  [7:0]  io_req_dup_for_data_w3_bits_way_en,
  input  [1:0]  io_req_dup_for_data_w3_bits_alias,
  input         io_req_dup_for_data_w4_valid,
  input  [35:0] io_req_dup_for_data_w4_bits_addr,
  input  [7:0]  io_req_dup_for_data_w4_bits_way_en,
  input  [1:0]  io_req_dup_for_data_w4_bits_alias,
  input         io_req_dup_for_data_w5_valid,
  input  [35:0] io_req_dup_for_data_w5_bits_addr,
  input  [7:0]  io_req_dup_for_data_w5_bits_way_en,
  input  [1:0]  io_req_dup_for_data_w5_bits_alias,
  input         io_req_dup_for_data_w6_valid,
  input  [35:0] io_req_dup_for_data_w6_bits_addr,
  input  [7:0]  io_req_dup_for_data_w6_bits_way_en,
  input  [1:0]  io_req_dup_for_data_w6_bits_alias,
  input         io_req_dup_for_data_w7_valid,
  input  [35:0] io_req_dup_for_data_w7_bits_addr,
  input  [7:0]  io_req_dup_for_data_w7_bits_way_en,
  input  [1:0]  io_req_dup_for_data_w7_bits_alias,
  input         io_req_dup_for_meta_wvalid,
  input  [35:0] io_req_dup_for_meta_waddr,
  input  [7:0]  io_req_dup_for_meta_wway_en,
  input  [1:0]  io_req_dup_for_meta_walias,
  input         io_req_dup_for_tag_wvalid,
  input  [35:0] io_req_dup_for_tag_waddr,
  input  [7:0]  io_req_dup_for_tag_wway_en,
  input  [1:0]  io_req_dup_for_tag_walias,
  input         io_req_dup_for_err_wvalid,
  input  [35:0] io_req_dup_for_err_waddr,
  input  [7:0]  io_req_dup_for_err_wway_en,
  input  [1:0]  io_req_dup_for_err_walias,
  output        io_resp_valid,
  output [1:0]  io_resp_bits,
  output        io_data_write_valid,
  output [7:0]  io_data_write_bits_wmask,
  output [63:0] io_data_write_bits_data_0,
  output [63:0] io_data_write_bits_data_1,
  output [63:0] io_data_write_bits_data_2,
  output [63:0] io_data_write_bits_data_3,
  output [63:0] io_data_write_bits_data_4,
  output [63:0] io_data_write_bits_data_5,
  output [63:0] io_data_write_bits_data_6,
  output [63:0] io_data_write_bits_data_7,
  output        io_data_write_dup_0_valid,
  output [7:0]  io_data_write_dup_0_bits_way_en,
  output [35:0] io_data_write_dup_0_bits_addr,
  output        io_data_write_dup_1_valid,
  output [7:0]  io_data_write_dup_1_bits_way_en,
  output [35:0] io_data_write_dup_1_bits_addr,
  output        io_data_write_dup_2_valid,
  output [7:0]  io_data_write_dup_2_bits_way_en,
  output [35:0] io_data_write_dup_2_bits_addr,
  output        io_data_write_dup_3_valid,
  output [7:0]  io_data_write_dup_3_bits_way_en,
  output [35:0] io_data_write_dup_3_bits_addr,
  output        io_data_write_dup_4_valid,
  output [7:0]  io_data_write_dup_4_bits_way_en,
  output [35:0] io_data_write_dup_4_bits_addr,
  output        io_data_write_dup_5_valid,
  output [7:0]  io_data_write_dup_5_bits_way_en,
  output [35:0] io_data_write_dup_5_bits_addr,
  output        io_data_write_dup_6_valid,
  output [7:0]  io_data_write_dup_6_bits_way_en,
  output [35:0] io_data_write_dup_6_bits_addr,
  output        io_data_write_dup_7_valid,
  output [7:0]  io_data_write_dup_7_bits_way_en,
  output [35:0] io_data_write_dup_7_bits_addr,
  output        io_meta_write_valid,
  output [5:0]  io_meta_write_bits_idx,
  output [7:0]  io_meta_write_bits_way_en,
  output [1:0]  io_meta_write_bits_meta_coh_state,
  output        io_error_flag_write_valid,
  output [5:0]  io_error_flag_write_bits_idx,
  output [7:0]  io_error_flag_write_bits_way_en,
  output        io_error_flag_write_bits_flag,
  output        io_tag_write_valid,
  output [5:0]  io_tag_write_bits_idx,
  output [7:0]  io_tag_write_bits_way_en,
  output [23:0] io_tag_write_bits_tag,
  output        io_store_resp_valid,
  output [3:0]  io_store_resp_bits_id,
  output        io_release_wakeup_valid,
  output [1:0]  io_release_wakeup_bits
);
  wire [13:0] _io_data_write_bits_addr_T_1 = {io_req_dup_for_data_w0_bits_alias,io_req_dup_for_data_w0_bits_addr[11:0]
    }; // @[Cat.scala 31:58]
  wire [13:0] _io_data_write_dup_1_bits_addr_T_1 = {io_req_dup_for_data_w1_bits_alias,io_req_dup_for_data_w1_bits_addr
    [11:0]}; // @[Cat.scala 31:58]
  wire [13:0] _io_data_write_dup_2_bits_addr_T_1 = {io_req_dup_for_data_w2_bits_alias,io_req_dup_for_data_w2_bits_addr
    [11:0]}; // @[Cat.scala 31:58]
  wire [13:0] _io_data_write_dup_3_bits_addr_T_1 = {io_req_dup_for_data_w3_bits_alias,io_req_dup_for_data_w3_bits_addr
    [11:0]}; // @[Cat.scala 31:58]
  wire [13:0] _io_data_write_dup_4_bits_addr_T_1 = {io_req_dup_for_data_w4_bits_alias,io_req_dup_for_data_w4_bits_addr
    [11:0]}; // @[Cat.scala 31:58]
  wire [13:0] _io_data_write_dup_5_bits_addr_T_1 = {io_req_dup_for_data_w5_bits_alias,io_req_dup_for_data_w5_bits_addr
    [11:0]}; // @[Cat.scala 31:58]
  wire [13:0] _io_data_write_dup_6_bits_addr_T_1 = {io_req_dup_for_data_w6_bits_alias,io_req_dup_for_data_w6_bits_addr
    [11:0]}; // @[Cat.scala 31:58]
  wire [13:0] _io_data_write_dup_7_bits_addr_T_1 = {io_req_dup_for_data_w7_bits_alias,io_req_dup_for_data_w7_bits_addr
    [11:0]}; // @[Cat.scala 31:58]
  wire [13:0] _io_meta_write_bits_idx_T_1 = {io_req_dup_for_meta_walias,io_req_dup_for_meta_waddr[11:0]}; // @[Cat.scala 31:58]
  wire [13:0] _io_error_flag_write_bits_idx_T_1 = {io_req_dup_for_err_walias,io_req_dup_for_err_waddr[11:0]}
    ; // @[Cat.scala 31:58]
  wire [13:0] _io_tag_write_bits_idx_T_1 = {io_req_dup_for_tag_walias,io_req_dup_for_tag_waddr[11:0]}; // @[Cat.scala 31:58]
  assign io_req_ready = 1'h1; // @[RefillPipe.scala 97:16]
  assign io_resp_valid = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  assign io_resp_bits = io_req_bits_miss_id; // @[RefillPipe.scala 99:16]
  assign io_data_write_valid = io_req_dup_for_data_w0_valid; // @[RefillPipe.scala 104:23]
  assign io_data_write_bits_wmask = io_req_bits_wmask; // @[RefillPipe.scala 107:28]
  assign io_data_write_bits_data_0 = io_req_bits_data_0; // @[RefillPipe.scala 108:27]
  assign io_data_write_bits_data_1 = io_req_bits_data_1; // @[RefillPipe.scala 108:27]
  assign io_data_write_bits_data_2 = io_req_bits_data_2; // @[RefillPipe.scala 108:27]
  assign io_data_write_bits_data_3 = io_req_bits_data_3; // @[RefillPipe.scala 108:27]
  assign io_data_write_bits_data_4 = io_req_bits_data_4; // @[RefillPipe.scala 108:27]
  assign io_data_write_bits_data_5 = io_req_bits_data_5; // @[RefillPipe.scala 108:27]
  assign io_data_write_bits_data_6 = io_req_bits_data_6; // @[RefillPipe.scala 108:27]
  assign io_data_write_bits_data_7 = io_req_bits_data_7; // @[RefillPipe.scala 108:27]
  assign io_data_write_dup_0_valid = io_req_dup_for_data_w0_valid; // @[RefillPipe.scala 111:13]
  assign io_data_write_dup_0_bits_way_en = io_req_dup_for_data_w0_bits_way_en; // @[RefillPipe.scala 113:19]
  assign io_data_write_dup_0_bits_addr = {{22'd0}, _io_data_write_bits_addr_T_1}; // @[RefillPipe.scala 112:17]
  assign io_data_write_dup_1_valid = io_req_dup_for_data_w1_valid; // @[RefillPipe.scala 111:13]
  assign io_data_write_dup_1_bits_way_en = io_req_dup_for_data_w1_bits_way_en; // @[RefillPipe.scala 113:19]
  assign io_data_write_dup_1_bits_addr = {{22'd0}, _io_data_write_dup_1_bits_addr_T_1}; // @[RefillPipe.scala 112:17]
  assign io_data_write_dup_2_valid = io_req_dup_for_data_w2_valid; // @[RefillPipe.scala 111:13]
  assign io_data_write_dup_2_bits_way_en = io_req_dup_for_data_w2_bits_way_en; // @[RefillPipe.scala 113:19]
  assign io_data_write_dup_2_bits_addr = {{22'd0}, _io_data_write_dup_2_bits_addr_T_1}; // @[RefillPipe.scala 112:17]
  assign io_data_write_dup_3_valid = io_req_dup_for_data_w3_valid; // @[RefillPipe.scala 111:13]
  assign io_data_write_dup_3_bits_way_en = io_req_dup_for_data_w3_bits_way_en; // @[RefillPipe.scala 113:19]
  assign io_data_write_dup_3_bits_addr = {{22'd0}, _io_data_write_dup_3_bits_addr_T_1}; // @[RefillPipe.scala 112:17]
  assign io_data_write_dup_4_valid = io_req_dup_for_data_w4_valid; // @[RefillPipe.scala 111:13]
  assign io_data_write_dup_4_bits_way_en = io_req_dup_for_data_w4_bits_way_en; // @[RefillPipe.scala 113:19]
  assign io_data_write_dup_4_bits_addr = {{22'd0}, _io_data_write_dup_4_bits_addr_T_1}; // @[RefillPipe.scala 112:17]
  assign io_data_write_dup_5_valid = io_req_dup_for_data_w5_valid; // @[RefillPipe.scala 111:13]
  assign io_data_write_dup_5_bits_way_en = io_req_dup_for_data_w5_bits_way_en; // @[RefillPipe.scala 113:19]
  assign io_data_write_dup_5_bits_addr = {{22'd0}, _io_data_write_dup_5_bits_addr_T_1}; // @[RefillPipe.scala 112:17]
  assign io_data_write_dup_6_valid = io_req_dup_for_data_w6_valid; // @[RefillPipe.scala 111:13]
  assign io_data_write_dup_6_bits_way_en = io_req_dup_for_data_w6_bits_way_en; // @[RefillPipe.scala 113:19]
  assign io_data_write_dup_6_bits_addr = {{22'd0}, _io_data_write_dup_6_bits_addr_T_1}; // @[RefillPipe.scala 112:17]
  assign io_data_write_dup_7_valid = io_req_dup_for_data_w7_valid; // @[RefillPipe.scala 111:13]
  assign io_data_write_dup_7_bits_way_en = io_req_dup_for_data_w7_bits_way_en; // @[RefillPipe.scala 113:19]
  assign io_data_write_dup_7_bits_addr = {{22'd0}, _io_data_write_dup_7_bits_addr_T_1}; // @[RefillPipe.scala 112:17]
  assign io_meta_write_valid = io_req_dup_for_meta_wvalid; // @[RefillPipe.scala 116:23]
  assign io_meta_write_bits_idx = _io_meta_write_bits_idx_T_1[11:6]; // @[L1Cache.scala 83:33]
  assign io_meta_write_bits_way_en = io_req_dup_for_meta_wway_en; // @[RefillPipe.scala 118:29]
  assign io_meta_write_bits_meta_coh_state = io_req_bits_meta_coh_state; // @[RefillPipe.scala 119:27]
  assign io_error_flag_write_valid = io_req_dup_for_err_wvalid; // @[RefillPipe.scala 121:29]
  assign io_error_flag_write_bits_idx = _io_error_flag_write_bits_idx_T_1[11:6]; // @[L1Cache.scala 83:33]
  assign io_error_flag_write_bits_way_en = io_req_dup_for_err_wway_en; // @[RefillPipe.scala 123:35]
  assign io_error_flag_write_bits_flag = io_req_bits_error; // @[RefillPipe.scala 124:33]
  assign io_tag_write_valid = io_req_dup_for_tag_wvalid; // @[RefillPipe.scala 136:22]
  assign io_tag_write_bits_idx = _io_tag_write_bits_idx_T_1[11:6]; // @[L1Cache.scala 83:33]
  assign io_tag_write_bits_way_en = io_req_dup_for_tag_wway_en; // @[RefillPipe.scala 138:28]
  assign io_tag_write_bits_tag = io_req_bits_addr[35:12]; // @[L1Cache.scala 80:41]
  assign io_store_resp_valid = io_req_valid & io_req_bits_source == 4'h1; // @[RefillPipe.scala 142:41]
  assign io_store_resp_bits_id = io_req_bits_id; // @[RefillPipe.scala 146:25]
  assign io_release_wakeup_valid = io_req_valid; // @[RefillPipe.scala 148:27]
  assign io_release_wakeup_bits = io_req_bits_miss_id; // @[RefillPipe.scala 149:26]
endmodule

