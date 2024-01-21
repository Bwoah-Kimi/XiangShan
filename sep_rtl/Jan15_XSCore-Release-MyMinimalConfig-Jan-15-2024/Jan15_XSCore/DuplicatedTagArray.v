module DuplicatedTagArray(
  input         clock,
  input         reset,
  input         io_read_0_valid,
  input  [5:0]  io_read_0_bits_idx,
  input         io_read_1_valid,
  input  [5:0]  io_read_1_bits_idx,
  output        io_read_2_ready,
  input         io_read_2_valid,
  input  [5:0]  io_read_2_bits_idx,
  output [29:0] io_resp_0_0,
  output [29:0] io_resp_0_1,
  output [29:0] io_resp_0_2,
  output [29:0] io_resp_0_3,
  output [29:0] io_resp_0_4,
  output [29:0] io_resp_0_5,
  output [29:0] io_resp_0_6,
  output [29:0] io_resp_0_7,
  output [29:0] io_resp_1_0,
  output [29:0] io_resp_1_1,
  output [29:0] io_resp_1_2,
  output [29:0] io_resp_1_3,
  output [29:0] io_resp_1_4,
  output [29:0] io_resp_1_5,
  output [29:0] io_resp_1_6,
  output [29:0] io_resp_1_7,
  output [29:0] io_resp_2_0,
  output [29:0] io_resp_2_1,
  output [29:0] io_resp_2_2,
  output [29:0] io_resp_2_3,
  output [29:0] io_resp_2_4,
  output [29:0] io_resp_2_5,
  output [29:0] io_resp_2_6,
  output [29:0] io_resp_2_7,
  input         io_write_valid,
  input  [5:0]  io_write_bits_idx,
  input  [7:0]  io_write_bits_way_en,
  input  [23:0] io_write_bits_tag,
  input         io_cacheOp_req_valid,
  input  [63:0] io_cacheOp_req_bits_wayNum,
  input  [63:0] io_cacheOp_req_bits_index,
  input  [63:0] io_cacheOp_req_bits_write_tag_low,
  input  [63:0] io_cacheOp_req_bits_write_tag_ecc,
  output        io_cacheOp_resp_valid,
  output [63:0] io_cacheOp_resp_bits_read_tag_low,
  output [63:0] io_cacheOp_resp_bits_read_tag_ecc,
  input         io_cacheOp_req_dup_0_valid,
  input         io_cacheOp_req_dup_1_valid,
  input         io_cacheOp_req_dup_2_valid,
  input         io_cacheOp_req_dup_3_valid,
  input         io_cacheOp_req_dup_4_valid,
  input         io_cacheOp_req_dup_5_valid,
  input         io_cacheOp_req_dup_6_valid,
  input         io_cacheOp_req_dup_7_valid,
  input         io_cacheOp_req_dup_8_valid,
  input         io_cacheOp_req_dup_9_valid,
  input         io_cacheOp_req_dup_10_valid,
  input         io_cacheOp_req_dup_11_valid,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_0,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_1,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_2,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_3,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_4,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_5,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_6,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_7,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_8,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_9,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_10,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_11
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  array_0_clock; // @[TagArray.scala 117:43]
  wire  array_0_reset; // @[TagArray.scala 117:43]
  wire  array_0_io_read_ready; // @[TagArray.scala 117:43]
  wire  array_0_io_read_valid; // @[TagArray.scala 117:43]
  wire [5:0] array_0_io_read_bits_idx; // @[TagArray.scala 117:43]
  wire [23:0] array_0_io_resp_0; // @[TagArray.scala 117:43]
  wire [23:0] array_0_io_resp_1; // @[TagArray.scala 117:43]
  wire [23:0] array_0_io_resp_2; // @[TagArray.scala 117:43]
  wire [23:0] array_0_io_resp_3; // @[TagArray.scala 117:43]
  wire [23:0] array_0_io_resp_4; // @[TagArray.scala 117:43]
  wire [23:0] array_0_io_resp_5; // @[TagArray.scala 117:43]
  wire [23:0] array_0_io_resp_6; // @[TagArray.scala 117:43]
  wire [23:0] array_0_io_resp_7; // @[TagArray.scala 117:43]
  wire  array_0_io_write_valid; // @[TagArray.scala 117:43]
  wire [5:0] array_0_io_write_bits_idx; // @[TagArray.scala 117:43]
  wire [7:0] array_0_io_write_bits_way_en; // @[TagArray.scala 117:43]
  wire [23:0] array_0_io_write_bits_tag; // @[TagArray.scala 117:43]
  wire  array_0_io_ecc_read_ready; // @[TagArray.scala 117:43]
  wire  array_0_io_ecc_read_valid; // @[TagArray.scala 117:43]
  wire [5:0] array_0_io_ecc_read_bits_idx; // @[TagArray.scala 117:43]
  wire [5:0] array_0_io_ecc_resp_0; // @[TagArray.scala 117:43]
  wire [5:0] array_0_io_ecc_resp_1; // @[TagArray.scala 117:43]
  wire [5:0] array_0_io_ecc_resp_2; // @[TagArray.scala 117:43]
  wire [5:0] array_0_io_ecc_resp_3; // @[TagArray.scala 117:43]
  wire [5:0] array_0_io_ecc_resp_4; // @[TagArray.scala 117:43]
  wire [5:0] array_0_io_ecc_resp_5; // @[TagArray.scala 117:43]
  wire [5:0] array_0_io_ecc_resp_6; // @[TagArray.scala 117:43]
  wire [5:0] array_0_io_ecc_resp_7; // @[TagArray.scala 117:43]
  wire  array_0_io_ecc_write_valid; // @[TagArray.scala 117:43]
  wire [5:0] array_0_io_ecc_write_bits_idx; // @[TagArray.scala 117:43]
  wire [7:0] array_0_io_ecc_write_bits_way_en; // @[TagArray.scala 117:43]
  wire [5:0] array_0_io_ecc_write_bits_ecc; // @[TagArray.scala 117:43]
  wire  array_1_clock; // @[TagArray.scala 117:43]
  wire  array_1_reset; // @[TagArray.scala 117:43]
  wire  array_1_io_read_ready; // @[TagArray.scala 117:43]
  wire  array_1_io_read_valid; // @[TagArray.scala 117:43]
  wire [5:0] array_1_io_read_bits_idx; // @[TagArray.scala 117:43]
  wire [23:0] array_1_io_resp_0; // @[TagArray.scala 117:43]
  wire [23:0] array_1_io_resp_1; // @[TagArray.scala 117:43]
  wire [23:0] array_1_io_resp_2; // @[TagArray.scala 117:43]
  wire [23:0] array_1_io_resp_3; // @[TagArray.scala 117:43]
  wire [23:0] array_1_io_resp_4; // @[TagArray.scala 117:43]
  wire [23:0] array_1_io_resp_5; // @[TagArray.scala 117:43]
  wire [23:0] array_1_io_resp_6; // @[TagArray.scala 117:43]
  wire [23:0] array_1_io_resp_7; // @[TagArray.scala 117:43]
  wire  array_1_io_write_valid; // @[TagArray.scala 117:43]
  wire [5:0] array_1_io_write_bits_idx; // @[TagArray.scala 117:43]
  wire [7:0] array_1_io_write_bits_way_en; // @[TagArray.scala 117:43]
  wire [23:0] array_1_io_write_bits_tag; // @[TagArray.scala 117:43]
  wire  array_1_io_ecc_read_ready; // @[TagArray.scala 117:43]
  wire  array_1_io_ecc_read_valid; // @[TagArray.scala 117:43]
  wire [5:0] array_1_io_ecc_read_bits_idx; // @[TagArray.scala 117:43]
  wire [5:0] array_1_io_ecc_resp_0; // @[TagArray.scala 117:43]
  wire [5:0] array_1_io_ecc_resp_1; // @[TagArray.scala 117:43]
  wire [5:0] array_1_io_ecc_resp_2; // @[TagArray.scala 117:43]
  wire [5:0] array_1_io_ecc_resp_3; // @[TagArray.scala 117:43]
  wire [5:0] array_1_io_ecc_resp_4; // @[TagArray.scala 117:43]
  wire [5:0] array_1_io_ecc_resp_5; // @[TagArray.scala 117:43]
  wire [5:0] array_1_io_ecc_resp_6; // @[TagArray.scala 117:43]
  wire [5:0] array_1_io_ecc_resp_7; // @[TagArray.scala 117:43]
  wire  array_1_io_ecc_write_valid; // @[TagArray.scala 117:43]
  wire [5:0] array_1_io_ecc_write_bits_idx; // @[TagArray.scala 117:43]
  wire [7:0] array_1_io_ecc_write_bits_way_en; // @[TagArray.scala 117:43]
  wire [5:0] array_1_io_ecc_write_bits_ecc; // @[TagArray.scala 117:43]
  wire  array_2_clock; // @[TagArray.scala 117:43]
  wire  array_2_reset; // @[TagArray.scala 117:43]
  wire  array_2_io_read_ready; // @[TagArray.scala 117:43]
  wire  array_2_io_read_valid; // @[TagArray.scala 117:43]
  wire [5:0] array_2_io_read_bits_idx; // @[TagArray.scala 117:43]
  wire [23:0] array_2_io_resp_0; // @[TagArray.scala 117:43]
  wire [23:0] array_2_io_resp_1; // @[TagArray.scala 117:43]
  wire [23:0] array_2_io_resp_2; // @[TagArray.scala 117:43]
  wire [23:0] array_2_io_resp_3; // @[TagArray.scala 117:43]
  wire [23:0] array_2_io_resp_4; // @[TagArray.scala 117:43]
  wire [23:0] array_2_io_resp_5; // @[TagArray.scala 117:43]
  wire [23:0] array_2_io_resp_6; // @[TagArray.scala 117:43]
  wire [23:0] array_2_io_resp_7; // @[TagArray.scala 117:43]
  wire  array_2_io_write_valid; // @[TagArray.scala 117:43]
  wire [5:0] array_2_io_write_bits_idx; // @[TagArray.scala 117:43]
  wire [7:0] array_2_io_write_bits_way_en; // @[TagArray.scala 117:43]
  wire [23:0] array_2_io_write_bits_tag; // @[TagArray.scala 117:43]
  wire  array_2_io_ecc_read_ready; // @[TagArray.scala 117:43]
  wire  array_2_io_ecc_read_valid; // @[TagArray.scala 117:43]
  wire [5:0] array_2_io_ecc_read_bits_idx; // @[TagArray.scala 117:43]
  wire [5:0] array_2_io_ecc_resp_0; // @[TagArray.scala 117:43]
  wire [5:0] array_2_io_ecc_resp_1; // @[TagArray.scala 117:43]
  wire [5:0] array_2_io_ecc_resp_2; // @[TagArray.scala 117:43]
  wire [5:0] array_2_io_ecc_resp_3; // @[TagArray.scala 117:43]
  wire [5:0] array_2_io_ecc_resp_4; // @[TagArray.scala 117:43]
  wire [5:0] array_2_io_ecc_resp_5; // @[TagArray.scala 117:43]
  wire [5:0] array_2_io_ecc_resp_6; // @[TagArray.scala 117:43]
  wire [5:0] array_2_io_ecc_resp_7; // @[TagArray.scala 117:43]
  wire  array_2_io_ecc_write_valid; // @[TagArray.scala 117:43]
  wire [5:0] array_2_io_ecc_write_bits_idx; // @[TagArray.scala 117:43]
  wire [7:0] array_2_io_ecc_write_bits_way_en; // @[TagArray.scala 117:43]
  wire [5:0] array_2_io_ecc_write_bits_ecc; // @[TagArray.scala 117:43]
  wire [23:0] _ecc_syndromeUInt_T = 24'haaad5b & io_write_bits_tag; // @[ECC.scala 147:74]
  wire  _ecc_syndromeUInt_T_1 = ^_ecc_syndromeUInt_T; // @[ECC.scala 147:79]
  wire [23:0] _ecc_syndromeUInt_T_3 = 24'h33366d & io_write_bits_tag; // @[ECC.scala 147:74]
  wire  _ecc_syndromeUInt_T_4 = ^_ecc_syndromeUInt_T_3; // @[ECC.scala 147:79]
  wire [23:0] _ecc_syndromeUInt_T_6 = 24'hc3c78e & io_write_bits_tag; // @[ECC.scala 147:74]
  wire  _ecc_syndromeUInt_T_7 = ^_ecc_syndromeUInt_T_6; // @[ECC.scala 147:79]
  wire [23:0] _ecc_syndromeUInt_T_9 = 24'hfc07f0 & io_write_bits_tag; // @[ECC.scala 147:74]
  wire  _ecc_syndromeUInt_T_10 = ^_ecc_syndromeUInt_T_9; // @[ECC.scala 147:79]
  wire [23:0] _ecc_syndromeUInt_T_12 = 24'hfff800 & io_write_bits_tag; // @[ECC.scala 147:74]
  wire  _ecc_syndromeUInt_T_13 = ^_ecc_syndromeUInt_T_12; // @[ECC.scala 147:79]
  wire [28:0] _ecc_T = {_ecc_syndromeUInt_T_13,_ecc_syndromeUInt_T_10,_ecc_syndromeUInt_T_7,_ecc_syndromeUInt_T_4,
    _ecc_syndromeUInt_T_1,io_write_bits_tag}; // @[Cat.scala 31:58]
  wire  _ecc_T_1 = ^_ecc_T; // @[ECC.scala 81:55]
  wire [29:0] _ecc_T_3 = {_ecc_T_1,_ecc_syndromeUInt_T_13,_ecc_syndromeUInt_T_10,_ecc_syndromeUInt_T_7,
    _ecc_syndromeUInt_T_4,_ecc_syndromeUInt_T_1,io_write_bits_tag}; // @[Cat.scala 31:58]
  wire [5:0] ecc = _ecc_T_3[29:24]; // @[TagArray.scala 121:11]
  wire  _T_28 = io_cacheOp_req_bits_opCode_dup_0 == 64'h2; // @[CacheInstruction.scala 94:54]
  wire [31:0] _array_0_io_read_bits_way_en_T_1 = 32'h1 << io_cacheOp_req_bits_wayNum[4:0]; // @[OneHot.scala 57:35]
  wire [63:0] _GEN_1 = io_cacheOp_req_dup_0_valid & _T_28 ? io_cacheOp_req_bits_index : {{58'd0}, io_read_0_bits_idx}; // @[TagArray.scala 135:22 158:97 160:35]
  wire  _T_30 = io_cacheOp_req_bits_opCode_dup_1 == 64'h2; // @[CacheInstruction.scala 94:54]
  wire [63:0] _GEN_5 = io_cacheOp_req_dup_1_valid & _T_30 ? io_cacheOp_req_bits_index : {{58'd0}, io_read_1_bits_idx}; // @[TagArray.scala 135:22 158:97 160:35]
  wire  _T_32 = io_cacheOp_req_bits_opCode_dup_2 == 64'h2; // @[CacheInstruction.scala 94:54]
  wire [63:0] _GEN_9 = io_cacheOp_req_dup_2_valid & _T_32 ? io_cacheOp_req_bits_index : {{58'd0}, io_read_2_bits_idx}; // @[TagArray.scala 135:22 158:97 160:35]
  wire  _GEN_11 = io_cacheOp_req_dup_2_valid & _T_32 | (io_cacheOp_req_dup_1_valid & _T_30 | io_cacheOp_req_dup_0_valid
     & _T_28); // @[TagArray.scala 158:97 162:25]
  wire  _T_34 = io_cacheOp_req_bits_opCode_dup_3 == 64'h0; // @[CacheInstruction.scala 92:54]
  wire [63:0] _GEN_13 = io_cacheOp_req_dup_3_valid & _T_34 ? io_cacheOp_req_bits_index : {{58'd0}, io_read_0_bits_idx}; // @[TagArray.scala 166:100 137:31 168:39]
  wire  _T_36 = io_cacheOp_req_bits_opCode_dup_4 == 64'h0; // @[CacheInstruction.scala 92:54]
  wire [63:0] _GEN_17 = io_cacheOp_req_dup_4_valid & _T_36 ? io_cacheOp_req_bits_index : {{58'd0}, io_read_1_bits_idx}; // @[TagArray.scala 166:100 137:31 168:39]
  wire  _T_38 = io_cacheOp_req_bits_opCode_dup_5 == 64'h0; // @[CacheInstruction.scala 92:54]
  wire [63:0] _GEN_21 = io_cacheOp_req_dup_5_valid & _T_38 ? io_cacheOp_req_bits_index : {{58'd0}, io_read_2_bits_idx}; // @[TagArray.scala 166:100 137:31 168:39]
  wire  _GEN_23 = io_cacheOp_req_dup_5_valid & _T_38 | (io_cacheOp_req_dup_4_valid & _T_36 | (io_cacheOp_req_dup_3_valid
     & _T_34 | _GEN_11)); // @[TagArray.scala 166:100 170:25]
  wire  _T_40 = io_cacheOp_req_bits_opCode_dup_6 == 64'h6; // @[CacheInstruction.scala 98:54]
  wire [63:0] _GEN_25 = io_cacheOp_req_dup_6_valid & _T_40 ? io_cacheOp_req_bits_index : {{58'd0}, io_write_bits_idx}; // @[TagArray.scala 128:28 174:98 176:36]
  wire [31:0] _GEN_26 = io_cacheOp_req_dup_6_valid & _T_40 ? _array_0_io_read_bits_way_en_T_1 : {{24'd0},
    io_write_bits_way_en}; // @[TagArray.scala 128:28 174:98 177:39]
  wire [63:0] _GEN_27 = io_cacheOp_req_dup_6_valid & _T_40 ? io_cacheOp_req_bits_write_tag_low : {{40'd0},
    io_write_bits_tag}; // @[TagArray.scala 128:28 174:98 178:36]
  wire  _T_42 = io_cacheOp_req_bits_opCode_dup_7 == 64'h6; // @[CacheInstruction.scala 98:54]
  wire [63:0] _GEN_30 = io_cacheOp_req_dup_7_valid & _T_42 ? io_cacheOp_req_bits_index : {{58'd0}, io_write_bits_idx}; // @[TagArray.scala 128:28 174:98 176:36]
  wire [31:0] _GEN_31 = io_cacheOp_req_dup_7_valid & _T_42 ? _array_0_io_read_bits_way_en_T_1 : {{24'd0},
    io_write_bits_way_en}; // @[TagArray.scala 128:28 174:98 177:39]
  wire [63:0] _GEN_32 = io_cacheOp_req_dup_7_valid & _T_42 ? io_cacheOp_req_bits_write_tag_low : {{40'd0},
    io_write_bits_tag}; // @[TagArray.scala 128:28 174:98 178:36]
  wire  _T_44 = io_cacheOp_req_bits_opCode_dup_8 == 64'h6; // @[CacheInstruction.scala 98:54]
  wire [63:0] _GEN_35 = io_cacheOp_req_dup_8_valid & _T_44 ? io_cacheOp_req_bits_index : {{58'd0}, io_write_bits_idx}; // @[TagArray.scala 128:28 174:98 176:36]
  wire [31:0] _GEN_36 = io_cacheOp_req_dup_8_valid & _T_44 ? _array_0_io_read_bits_way_en_T_1 : {{24'd0},
    io_write_bits_way_en}; // @[TagArray.scala 128:28 174:98 177:39]
  wire [63:0] _GEN_37 = io_cacheOp_req_dup_8_valid & _T_44 ? io_cacheOp_req_bits_write_tag_low : {{40'd0},
    io_write_bits_tag}; // @[TagArray.scala 128:28 174:98 178:36]
  wire  _GEN_38 = io_cacheOp_req_dup_8_valid & _T_44 | (io_cacheOp_req_dup_7_valid & _T_42 | (io_cacheOp_req_dup_6_valid
     & _T_40 | _GEN_23)); // @[TagArray.scala 174:98 179:25]
  wire  _T_46 = io_cacheOp_req_bits_opCode_dup_9 == 64'h4; // @[CacheInstruction.scala 96:54]
  wire [63:0] _GEN_40 = io_cacheOp_req_dup_9_valid & _T_46 ? io_cacheOp_req_bits_index : {{58'd0}, io_write_bits_idx}; // @[TagArray.scala 183:101 130:36 185:40]
  wire [31:0] _GEN_41 = io_cacheOp_req_dup_9_valid & _T_46 ? _array_0_io_read_bits_way_en_T_1 : {{24'd0},
    io_write_bits_way_en}; // @[TagArray.scala 183:101 131:39 186:43]
  wire [63:0] _GEN_42 = io_cacheOp_req_dup_9_valid & _T_46 ? io_cacheOp_req_bits_write_tag_ecc : {{58'd0}, ecc}; // @[TagArray.scala 183:101 133:36 187:40]
  wire  _T_48 = io_cacheOp_req_bits_opCode_dup_10 == 64'h4; // @[CacheInstruction.scala 96:54]
  wire [63:0] _GEN_45 = io_cacheOp_req_dup_10_valid & _T_48 ? io_cacheOp_req_bits_index : {{58'd0}, io_write_bits_idx}; // @[TagArray.scala 183:101 130:36 185:40]
  wire [31:0] _GEN_46 = io_cacheOp_req_dup_10_valid & _T_48 ? _array_0_io_read_bits_way_en_T_1 : {{24'd0},
    io_write_bits_way_en}; // @[TagArray.scala 183:101 131:39 186:43]
  wire [63:0] _GEN_47 = io_cacheOp_req_dup_10_valid & _T_48 ? io_cacheOp_req_bits_write_tag_ecc : {{58'd0}, ecc}; // @[TagArray.scala 183:101 133:36 187:40]
  wire  _T_50 = io_cacheOp_req_bits_opCode_dup_11 == 64'h4; // @[CacheInstruction.scala 96:54]
  wire [63:0] _GEN_50 = io_cacheOp_req_dup_11_valid & _T_50 ? io_cacheOp_req_bits_index : {{58'd0}, io_write_bits_idx}; // @[TagArray.scala 183:101 130:36 185:40]
  wire [31:0] _GEN_51 = io_cacheOp_req_dup_11_valid & _T_50 ? _array_0_io_read_bits_way_en_T_1 : {{24'd0},
    io_write_bits_way_en}; // @[TagArray.scala 183:101 131:39 186:43]
  wire [63:0] _GEN_52 = io_cacheOp_req_dup_11_valid & _T_50 ? io_cacheOp_req_bits_write_tag_ecc : {{58'd0}, ecc}; // @[TagArray.scala 183:101 133:36 187:40]
  wire  cacheOpShouldResp = io_cacheOp_req_dup_11_valid & _T_50 | (io_cacheOp_req_dup_10_valid & _T_48 | (
    io_cacheOp_req_dup_9_valid & _T_46 | _GEN_38)); // @[TagArray.scala 183:101 188:25]
  reg  io_cacheOp_resp_valid_REG; // @[TagArray.scala 192:35]
  reg [63:0] io_cacheOp_resp_bits_read_tag_low_REG; // @[TagArray.scala 193:91]
  wire [23:0] _GEN_54 = array_0_io_resp_0; // @[TagArray.scala 193:{43,43}]
  wire [23:0] _GEN_55 = 3'h1 == io_cacheOp_resp_bits_read_tag_low_REG[2:0] ? array_0_io_resp_1 : _GEN_54; // @[TagArray.scala 193:{43,43}]
  wire [23:0] _GEN_56 = 3'h2 == io_cacheOp_resp_bits_read_tag_low_REG[2:0] ? array_0_io_resp_2 : _GEN_55; // @[TagArray.scala 193:{43,43}]
  wire [23:0] _GEN_57 = 3'h3 == io_cacheOp_resp_bits_read_tag_low_REG[2:0] ? array_0_io_resp_3 : _GEN_56; // @[TagArray.scala 193:{43,43}]
  wire [23:0] _GEN_58 = 3'h4 == io_cacheOp_resp_bits_read_tag_low_REG[2:0] ? array_0_io_resp_4 : _GEN_57; // @[TagArray.scala 193:{43,43}]
  wire [23:0] _GEN_59 = 3'h5 == io_cacheOp_resp_bits_read_tag_low_REG[2:0] ? array_0_io_resp_5 : _GEN_58; // @[TagArray.scala 193:{43,43}]
  wire [23:0] _GEN_60 = 3'h6 == io_cacheOp_resp_bits_read_tag_low_REG[2:0] ? array_0_io_resp_6 : _GEN_59; // @[TagArray.scala 193:{43,43}]
  wire [23:0] _GEN_61 = 3'h7 == io_cacheOp_resp_bits_read_tag_low_REG[2:0] ? array_0_io_resp_7 : _GEN_60; // @[TagArray.scala 193:{43,43}]
  wire [23:0] _io_cacheOp_resp_bits_read_tag_low_T_2 = io_cacheOp_resp_valid ? _GEN_61 : 24'h0; // @[TagArray.scala 193:43]
  reg [63:0] io_cacheOp_resp_bits_read_tag_ecc_REG; // @[TagArray.scala 194:95]
  wire [5:0] _GEN_62 = array_0_io_ecc_resp_0; // @[TagArray.scala 194:{43,43}]
  wire [5:0] _GEN_63 = 3'h1 == io_cacheOp_resp_bits_read_tag_ecc_REG[2:0] ? array_0_io_ecc_resp_1 : _GEN_62; // @[TagArray.scala 194:{43,43}]
  wire [5:0] _GEN_64 = 3'h2 == io_cacheOp_resp_bits_read_tag_ecc_REG[2:0] ? array_0_io_ecc_resp_2 : _GEN_63; // @[TagArray.scala 194:{43,43}]
  wire [5:0] _GEN_65 = 3'h3 == io_cacheOp_resp_bits_read_tag_ecc_REG[2:0] ? array_0_io_ecc_resp_3 : _GEN_64; // @[TagArray.scala 194:{43,43}]
  wire [5:0] _GEN_66 = 3'h4 == io_cacheOp_resp_bits_read_tag_ecc_REG[2:0] ? array_0_io_ecc_resp_4 : _GEN_65; // @[TagArray.scala 194:{43,43}]
  wire [5:0] _GEN_67 = 3'h5 == io_cacheOp_resp_bits_read_tag_ecc_REG[2:0] ? array_0_io_ecc_resp_5 : _GEN_66; // @[TagArray.scala 194:{43,43}]
  wire [5:0] _GEN_68 = 3'h6 == io_cacheOp_resp_bits_read_tag_ecc_REG[2:0] ? array_0_io_ecc_resp_6 : _GEN_67; // @[TagArray.scala 194:{43,43}]
  wire [5:0] _GEN_69 = 3'h7 == io_cacheOp_resp_bits_read_tag_ecc_REG[2:0] ? array_0_io_ecc_resp_7 : _GEN_68; // @[TagArray.scala 194:{43,43}]
  wire [5:0] _io_cacheOp_resp_bits_read_tag_ecc_T_2 = io_cacheOp_resp_valid ? _GEN_69 : 6'h0; // @[TagArray.scala 194:43]
  TagArray array_0 ( // @[TagArray.scala 117:43]
    .clock(array_0_clock),
    .reset(array_0_reset),
    .io_read_ready(array_0_io_read_ready),
    .io_read_valid(array_0_io_read_valid),
    .io_read_bits_idx(array_0_io_read_bits_idx),
    .io_resp_0(array_0_io_resp_0),
    .io_resp_1(array_0_io_resp_1),
    .io_resp_2(array_0_io_resp_2),
    .io_resp_3(array_0_io_resp_3),
    .io_resp_4(array_0_io_resp_4),
    .io_resp_5(array_0_io_resp_5),
    .io_resp_6(array_0_io_resp_6),
    .io_resp_7(array_0_io_resp_7),
    .io_write_valid(array_0_io_write_valid),
    .io_write_bits_idx(array_0_io_write_bits_idx),
    .io_write_bits_way_en(array_0_io_write_bits_way_en),
    .io_write_bits_tag(array_0_io_write_bits_tag),
    .io_ecc_read_ready(array_0_io_ecc_read_ready),
    .io_ecc_read_valid(array_0_io_ecc_read_valid),
    .io_ecc_read_bits_idx(array_0_io_ecc_read_bits_idx),
    .io_ecc_resp_0(array_0_io_ecc_resp_0),
    .io_ecc_resp_1(array_0_io_ecc_resp_1),
    .io_ecc_resp_2(array_0_io_ecc_resp_2),
    .io_ecc_resp_3(array_0_io_ecc_resp_3),
    .io_ecc_resp_4(array_0_io_ecc_resp_4),
    .io_ecc_resp_5(array_0_io_ecc_resp_5),
    .io_ecc_resp_6(array_0_io_ecc_resp_6),
    .io_ecc_resp_7(array_0_io_ecc_resp_7),
    .io_ecc_write_valid(array_0_io_ecc_write_valid),
    .io_ecc_write_bits_idx(array_0_io_ecc_write_bits_idx),
    .io_ecc_write_bits_way_en(array_0_io_ecc_write_bits_way_en),
    .io_ecc_write_bits_ecc(array_0_io_ecc_write_bits_ecc)
  );
  TagArray array_1 ( // @[TagArray.scala 117:43]
    .clock(array_1_clock),
    .reset(array_1_reset),
    .io_read_ready(array_1_io_read_ready),
    .io_read_valid(array_1_io_read_valid),
    .io_read_bits_idx(array_1_io_read_bits_idx),
    .io_resp_0(array_1_io_resp_0),
    .io_resp_1(array_1_io_resp_1),
    .io_resp_2(array_1_io_resp_2),
    .io_resp_3(array_1_io_resp_3),
    .io_resp_4(array_1_io_resp_4),
    .io_resp_5(array_1_io_resp_5),
    .io_resp_6(array_1_io_resp_6),
    .io_resp_7(array_1_io_resp_7),
    .io_write_valid(array_1_io_write_valid),
    .io_write_bits_idx(array_1_io_write_bits_idx),
    .io_write_bits_way_en(array_1_io_write_bits_way_en),
    .io_write_bits_tag(array_1_io_write_bits_tag),
    .io_ecc_read_ready(array_1_io_ecc_read_ready),
    .io_ecc_read_valid(array_1_io_ecc_read_valid),
    .io_ecc_read_bits_idx(array_1_io_ecc_read_bits_idx),
    .io_ecc_resp_0(array_1_io_ecc_resp_0),
    .io_ecc_resp_1(array_1_io_ecc_resp_1),
    .io_ecc_resp_2(array_1_io_ecc_resp_2),
    .io_ecc_resp_3(array_1_io_ecc_resp_3),
    .io_ecc_resp_4(array_1_io_ecc_resp_4),
    .io_ecc_resp_5(array_1_io_ecc_resp_5),
    .io_ecc_resp_6(array_1_io_ecc_resp_6),
    .io_ecc_resp_7(array_1_io_ecc_resp_7),
    .io_ecc_write_valid(array_1_io_ecc_write_valid),
    .io_ecc_write_bits_idx(array_1_io_ecc_write_bits_idx),
    .io_ecc_write_bits_way_en(array_1_io_ecc_write_bits_way_en),
    .io_ecc_write_bits_ecc(array_1_io_ecc_write_bits_ecc)
  );
  TagArray array_2 ( // @[TagArray.scala 117:43]
    .clock(array_2_clock),
    .reset(array_2_reset),
    .io_read_ready(array_2_io_read_ready),
    .io_read_valid(array_2_io_read_valid),
    .io_read_bits_idx(array_2_io_read_bits_idx),
    .io_resp_0(array_2_io_resp_0),
    .io_resp_1(array_2_io_resp_1),
    .io_resp_2(array_2_io_resp_2),
    .io_resp_3(array_2_io_resp_3),
    .io_resp_4(array_2_io_resp_4),
    .io_resp_5(array_2_io_resp_5),
    .io_resp_6(array_2_io_resp_6),
    .io_resp_7(array_2_io_resp_7),
    .io_write_valid(array_2_io_write_valid),
    .io_write_bits_idx(array_2_io_write_bits_idx),
    .io_write_bits_way_en(array_2_io_write_bits_way_en),
    .io_write_bits_tag(array_2_io_write_bits_tag),
    .io_ecc_read_ready(array_2_io_ecc_read_ready),
    .io_ecc_read_valid(array_2_io_ecc_read_valid),
    .io_ecc_read_bits_idx(array_2_io_ecc_read_bits_idx),
    .io_ecc_resp_0(array_2_io_ecc_resp_0),
    .io_ecc_resp_1(array_2_io_ecc_resp_1),
    .io_ecc_resp_2(array_2_io_ecc_resp_2),
    .io_ecc_resp_3(array_2_io_ecc_resp_3),
    .io_ecc_resp_4(array_2_io_ecc_resp_4),
    .io_ecc_resp_5(array_2_io_ecc_resp_5),
    .io_ecc_resp_6(array_2_io_ecc_resp_6),
    .io_ecc_resp_7(array_2_io_ecc_resp_7),
    .io_ecc_write_valid(array_2_io_ecc_write_valid),
    .io_ecc_write_bits_idx(array_2_io_ecc_write_bits_idx),
    .io_ecc_write_bits_way_en(array_2_io_ecc_write_bits_way_en),
    .io_ecc_write_bits_ecc(array_2_io_ecc_write_bits_ecc)
  );
  assign io_read_2_ready = array_2_io_read_ready & array_2_io_ecc_read_ready; // @[TagArray.scala 142:48]
  assign io_resp_0_0 = {array_0_io_ecc_resp_0,array_0_io_resp_0}; // @[Cat.scala 31:58]
  assign io_resp_0_1 = {array_0_io_ecc_resp_1,array_0_io_resp_1}; // @[Cat.scala 31:58]
  assign io_resp_0_2 = {array_0_io_ecc_resp_2,array_0_io_resp_2}; // @[Cat.scala 31:58]
  assign io_resp_0_3 = {array_0_io_ecc_resp_3,array_0_io_resp_3}; // @[Cat.scala 31:58]
  assign io_resp_0_4 = {array_0_io_ecc_resp_4,array_0_io_resp_4}; // @[Cat.scala 31:58]
  assign io_resp_0_5 = {array_0_io_ecc_resp_5,array_0_io_resp_5}; // @[Cat.scala 31:58]
  assign io_resp_0_6 = {array_0_io_ecc_resp_6,array_0_io_resp_6}; // @[Cat.scala 31:58]
  assign io_resp_0_7 = {array_0_io_ecc_resp_7,array_0_io_resp_7}; // @[Cat.scala 31:58]
  assign io_resp_1_0 = {array_1_io_ecc_resp_0,array_1_io_resp_0}; // @[Cat.scala 31:58]
  assign io_resp_1_1 = {array_1_io_ecc_resp_1,array_1_io_resp_1}; // @[Cat.scala 31:58]
  assign io_resp_1_2 = {array_1_io_ecc_resp_2,array_1_io_resp_2}; // @[Cat.scala 31:58]
  assign io_resp_1_3 = {array_1_io_ecc_resp_3,array_1_io_resp_3}; // @[Cat.scala 31:58]
  assign io_resp_1_4 = {array_1_io_ecc_resp_4,array_1_io_resp_4}; // @[Cat.scala 31:58]
  assign io_resp_1_5 = {array_1_io_ecc_resp_5,array_1_io_resp_5}; // @[Cat.scala 31:58]
  assign io_resp_1_6 = {array_1_io_ecc_resp_6,array_1_io_resp_6}; // @[Cat.scala 31:58]
  assign io_resp_1_7 = {array_1_io_ecc_resp_7,array_1_io_resp_7}; // @[Cat.scala 31:58]
  assign io_resp_2_0 = {array_2_io_ecc_resp_0,array_2_io_resp_0}; // @[Cat.scala 31:58]
  assign io_resp_2_1 = {array_2_io_ecc_resp_1,array_2_io_resp_1}; // @[Cat.scala 31:58]
  assign io_resp_2_2 = {array_2_io_ecc_resp_2,array_2_io_resp_2}; // @[Cat.scala 31:58]
  assign io_resp_2_3 = {array_2_io_ecc_resp_3,array_2_io_resp_3}; // @[Cat.scala 31:58]
  assign io_resp_2_4 = {array_2_io_ecc_resp_4,array_2_io_resp_4}; // @[Cat.scala 31:58]
  assign io_resp_2_5 = {array_2_io_ecc_resp_5,array_2_io_resp_5}; // @[Cat.scala 31:58]
  assign io_resp_2_6 = {array_2_io_ecc_resp_6,array_2_io_resp_6}; // @[Cat.scala 31:58]
  assign io_resp_2_7 = {array_2_io_ecc_resp_7,array_2_io_resp_7}; // @[Cat.scala 31:58]
  assign io_cacheOp_resp_valid = io_cacheOp_resp_valid_REG; // @[TagArray.scala 192:25]
  assign io_cacheOp_resp_bits_read_tag_low = {{40'd0}, _io_cacheOp_resp_bits_read_tag_low_T_2}; // @[TagArray.scala 193:37]
  assign io_cacheOp_resp_bits_read_tag_ecc = {{58'd0}, _io_cacheOp_resp_bits_read_tag_ecc_T_2}; // @[TagArray.scala 194:37]
  assign array_0_clock = clock;
  assign array_0_reset = reset;
  assign array_0_io_read_valid = io_cacheOp_req_dup_0_valid & _T_28 | io_read_0_valid; // @[TagArray.scala 135:22 158:97 159:32]
  assign array_0_io_read_bits_idx = _GEN_1[5:0];
  assign array_0_io_write_valid = io_cacheOp_req_dup_6_valid & _T_40 | io_write_valid; // @[TagArray.scala 127:29 174:98 175:33]
  assign array_0_io_write_bits_idx = _GEN_25[5:0];
  assign array_0_io_write_bits_way_en = _GEN_26[7:0];
  assign array_0_io_write_bits_tag = _GEN_27[23:0];
  assign array_0_io_ecc_read_valid = io_cacheOp_req_dup_3_valid & _T_34 | io_read_0_valid; // @[TagArray.scala 166:100 136:32 167:36]
  assign array_0_io_ecc_read_bits_idx = _GEN_13[5:0];
  assign array_0_io_ecc_write_valid = io_cacheOp_req_dup_9_valid & _T_46 | io_write_valid; // @[TagArray.scala 183:101 129:33 184:37]
  assign array_0_io_ecc_write_bits_idx = _GEN_40[5:0];
  assign array_0_io_ecc_write_bits_way_en = _GEN_41[7:0];
  assign array_0_io_ecc_write_bits_ecc = _GEN_42[5:0];
  assign array_1_clock = clock;
  assign array_1_reset = reset;
  assign array_1_io_read_valid = io_cacheOp_req_dup_1_valid & _T_30 | io_read_1_valid; // @[TagArray.scala 135:22 158:97 159:32]
  assign array_1_io_read_bits_idx = _GEN_5[5:0];
  assign array_1_io_write_valid = io_cacheOp_req_dup_7_valid & _T_42 | io_write_valid; // @[TagArray.scala 127:29 174:98 175:33]
  assign array_1_io_write_bits_idx = _GEN_30[5:0];
  assign array_1_io_write_bits_way_en = _GEN_31[7:0];
  assign array_1_io_write_bits_tag = _GEN_32[23:0];
  assign array_1_io_ecc_read_valid = io_cacheOp_req_dup_4_valid & _T_36 | io_read_1_valid; // @[TagArray.scala 166:100 136:32 167:36]
  assign array_1_io_ecc_read_bits_idx = _GEN_17[5:0];
  assign array_1_io_ecc_write_valid = io_cacheOp_req_dup_10_valid & _T_48 | io_write_valid; // @[TagArray.scala 183:101 129:33 184:37]
  assign array_1_io_ecc_write_bits_idx = _GEN_45[5:0];
  assign array_1_io_ecc_write_bits_way_en = _GEN_46[7:0];
  assign array_1_io_ecc_write_bits_ecc = _GEN_47[5:0];
  assign array_2_clock = clock;
  assign array_2_reset = reset;
  assign array_2_io_read_valid = io_cacheOp_req_dup_2_valid & _T_32 | io_read_2_valid; // @[TagArray.scala 135:22 158:97 159:32]
  assign array_2_io_read_bits_idx = _GEN_9[5:0];
  assign array_2_io_write_valid = io_cacheOp_req_dup_8_valid & _T_44 | io_write_valid; // @[TagArray.scala 127:29 174:98 175:33]
  assign array_2_io_write_bits_idx = _GEN_35[5:0];
  assign array_2_io_write_bits_way_en = _GEN_36[7:0];
  assign array_2_io_write_bits_tag = _GEN_37[23:0];
  assign array_2_io_ecc_read_valid = io_cacheOp_req_dup_5_valid & _T_38 | io_read_2_valid; // @[TagArray.scala 166:100 136:32 167:36]
  assign array_2_io_ecc_read_bits_idx = _GEN_21[5:0];
  assign array_2_io_ecc_write_valid = io_cacheOp_req_dup_11_valid & _T_50 | io_write_valid; // @[TagArray.scala 183:101 129:33 184:37]
  assign array_2_io_ecc_write_bits_idx = _GEN_50[5:0];
  assign array_2_io_ecc_write_bits_way_en = _GEN_51[7:0];
  assign array_2_io_ecc_write_bits_ecc = _GEN_52[5:0];
  always @(posedge clock) begin
    io_cacheOp_resp_valid_REG <= io_cacheOp_req_valid & cacheOpShouldResp; // @[TagArray.scala 192:57]
    io_cacheOp_resp_bits_read_tag_low_REG <= io_cacheOp_req_bits_wayNum; // @[TagArray.scala 193:91]
    io_cacheOp_resp_bits_read_tag_ecc_REG <= io_cacheOp_req_bits_wayNum; // @[TagArray.scala 194:95]
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
  io_cacheOp_resp_valid_REG = _RAND_0[0:0];
  _RAND_1 = {2{`RANDOM}};
  io_cacheOp_resp_bits_read_tag_low_REG = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  io_cacheOp_resp_bits_read_tag_ecc_REG = _RAND_2[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

