module CustomL1Hint(
  input         io_s1_valid,
  input  [2:0]  io_s1_bits_channel,
  input  [2:0]  io_s1_bits_opcode,
  input  [4:0]  io_s1_bits_sourceId,
  input         io_s2_valid,
  input  [2:0]  io_s2_bits_channel,
  input  [2:0]  io_s2_bits_opcode,
  input  [4:0]  io_s2_bits_sourceId,
  input         io_s2_bits_mshrTask,
  input         io_s3_task_valid,
  input  [2:0]  io_s3_task_bits_channel,
  input  [2:0]  io_s3_task_bits_opcode,
  input  [4:0]  io_s3_task_bits_sourceId,
  input         io_s3_task_bits_mshrTask,
  input         io_s3_d,
  input         io_s3_need_mshr,
  input         io_s4_task_valid,
  input  [2:0]  io_s4_task_bits_channel,
  input  [2:0]  io_s4_task_bits_opcode,
  input  [4:0]  io_s4_task_bits_sourceId,
  input         io_s4_task_bits_mshrTask,
  input         io_s4_d,
  input         io_s4_need_write_releaseBuf,
  input         io_s4_need_write_refillBuf,
  input  [2:0]  io_s5_task_bits_channel,
  input  [2:0]  io_s5_task_bits_opcode,
  input  [4:0]  io_s5_task_bits_sourceId,
  input         io_s5_task_bits_mshrTask,
  input         io_s5_d,
  input  [4:0]  io_globalCounter,
  input         io_grantBufferHint_valid,
  input  [31:0] io_grantBufferHint_bits_sourceId,
  output        io_l1Hint_valid,
  output [31:0] io_l1Hint_bits_sourceId
);
  wire [1:0] globalCounter = io_globalCounter[1:0]; // @[CustomL1Hint.scala 73:41]
  wire  impossible_pipe_hint = io_globalCounter >= 5'h3; // @[CustomL1Hint.scala 76:47]
  wire  req_grantbuffer_next_cycle_s4 = ~io_s4_need_write_releaseBuf & ~io_s4_need_write_refillBuf; // @[CustomL1Hint.scala 85:65]
  wire  s3_l2_hit_grant_data = io_s3_task_valid & ~io_s3_task_bits_mshrTask & ~io_s3_need_mshr & io_s3_task_bits_channel
    [0] & io_s3_task_bits_opcode == 3'h6; // @[CustomL1Hint.scala 87:99]
  wire  _s4_l2_hit_grant_data_T_1 = io_s4_task_bits_opcode == 3'h5; // @[CustomL1Hint.scala 88:100]
  wire  s4_l2_hit_grant_data = io_s4_task_valid & req_grantbuffer_next_cycle_s4 & io_s4_task_bits_opcode == 3'h5 &
    io_s4_task_bits_channel[0] & ~io_s4_task_bits_mshrTask; // @[CustomL1Hint.scala 88:136]
  wire  s1_l2_miss_refill_grant_data = io_s1_valid & io_s1_bits_channel[0] & io_s1_bits_opcode == 3'h5; // @[CustomL1Hint.scala 94:77]
  wire  _s1_l2_miss_refill_counter_match_T_2 = io_s2_valid & io_s2_bits_channel[0]; // @[CustomL1Hint.scala 98:127]
  wire [1:0] _s1_l2_miss_refill_counter_match_T_3 = io_s4_d + io_s5_d; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_9 = {{1'd0}, io_s3_d}; // @[Bitwise.scala 48:55]
  wire [2:0] _s1_l2_miss_refill_counter_match_T_5 = _GEN_9 + _s1_l2_miss_refill_counter_match_T_3; // @[Bitwise.scala 48:55]
  wire [1:0] _s1_l2_miss_refill_counter_match_T_7 = s4_l2_hit_grant_data + _s1_l2_miss_refill_counter_match_T_2; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_10 = {{1'd0}, s3_l2_hit_grant_data}; // @[Bitwise.scala 48:55]
  wire [2:0] _s1_l2_miss_refill_counter_match_T_9 = _GEN_10 + _s1_l2_miss_refill_counter_match_T_7; // @[Bitwise.scala 48:55]
  wire [2:0] _s1_l2_miss_refill_counter_match_T_11 = _s1_l2_miss_refill_counter_match_T_5[1:0] +
    _s1_l2_miss_refill_counter_match_T_9[1:0]; // @[Bitwise.scala 48:55]
  wire  s1_l2_miss_refill_counter_match = _s1_l2_miss_refill_counter_match_T_11 == 3'h0 & globalCounter <= 2'h2; // @[CustomL1Hint.scala 98:159]
  wire  dummy_s1_valid = s1_l2_miss_refill_grant_data & s1_l2_miss_refill_counter_match; // @[CustomL1Hint.scala 99:77]
  wire  _hint_s1_valid_T = ~impossible_pipe_hint; // @[CustomL1Hint.scala 101:46]
  wire  hint_s1_valid = dummy_s1_valid & ~impossible_pipe_hint; // @[CustomL1Hint.scala 101:43]
  wire  s2_l2_miss_refill_grant_data = _s1_l2_miss_refill_counter_match_T_2 & io_s2_bits_opcode == 3'h5 &
    io_s2_bits_mshrTask; // @[CustomL1Hint.scala 106:114]
  wire [2:0] _s2_l2_miss_refill_counter_match_T = {io_s3_d,io_s4_d,io_s5_d}; // @[Cat.scala 31:58]
  wire [2:0] _GEN_11 = {{1'd0}, globalCounter}; // @[CustomL1Hint.scala 113:55]
  wire [2:0] _s2_l2_miss_refill_counter_match_T_3 = _GEN_11 + 3'h4; // @[CustomL1Hint.scala 113:55]
  wire [2:0] _GEN_12 = {{2'd0}, io_s5_task_bits_opcode[0]}; // @[CustomL1Hint.scala 113:61]
  wire [2:0] _s2_l2_miss_refill_counter_match_T_6 = _s2_l2_miss_refill_counter_match_T_3 + _GEN_12; // @[CustomL1Hint.scala 113:61]
  wire [2:0] _GEN_13 = {{2'd0}, io_s4_task_bits_opcode[0]}; // @[CustomL1Hint.scala 113:86]
  wire [2:0] _s2_l2_miss_refill_counter_match_T_9 = _s2_l2_miss_refill_counter_match_T_6 + _GEN_13; // @[CustomL1Hint.scala 113:86]
  wire [2:0] _GEN_14 = {{2'd0}, io_s3_task_bits_opcode[0]}; // @[CustomL1Hint.scala 113:111]
  wire [2:0] _s2_l2_miss_refill_counter_match_T_12 = _s2_l2_miss_refill_counter_match_T_9 + _GEN_14; // @[CustomL1Hint.scala 113:111]
  wire  _s2_l2_miss_refill_counter_match_T_13 = _s2_l2_miss_refill_counter_match_T_12 == 3'h3; // @[CustomL1Hint.scala 113:137]
  wire [1:0] _s2_l2_miss_refill_counter_match_T_16 = globalCounter + 2'h3; // @[CustomL1Hint.scala 114:55]
  wire [1:0] _GEN_15 = {{1'd0}, io_s4_task_bits_opcode[0]}; // @[CustomL1Hint.scala 114:61]
  wire [1:0] _s2_l2_miss_refill_counter_match_T_19 = _s2_l2_miss_refill_counter_match_T_16 + _GEN_15; // @[CustomL1Hint.scala 114:61]
  wire [1:0] _GEN_16 = {{1'd0}, io_s3_task_bits_opcode[0]}; // @[CustomL1Hint.scala 114:86]
  wire [1:0] _s2_l2_miss_refill_counter_match_T_22 = _s2_l2_miss_refill_counter_match_T_19 + _GEN_16; // @[CustomL1Hint.scala 114:86]
  wire  _s2_l2_miss_refill_counter_match_T_23 = _s2_l2_miss_refill_counter_match_T_22 == 2'h3; // @[CustomL1Hint.scala 114:112]
  wire [1:0] _GEN_21 = {{1'd0}, io_s5_task_bits_opcode[0]}; // @[CustomL1Hint.scala 116:86]
  wire [1:0] _s2_l2_miss_refill_counter_match_T_41 = _s2_l2_miss_refill_counter_match_T_16 + _GEN_21; // @[CustomL1Hint.scala 116:86]
  wire [1:0] _s2_l2_miss_refill_counter_match_T_44 = _s2_l2_miss_refill_counter_match_T_41 + _GEN_16; // @[CustomL1Hint.scala 116:111]
  wire  _s2_l2_miss_refill_counter_match_T_45 = _s2_l2_miss_refill_counter_match_T_44 == 2'h3; // @[CustomL1Hint.scala 116:137]
  wire  _s2_l2_miss_refill_counter_match_T_46 = s4_l2_hit_grant_data ? _s2_l2_miss_refill_counter_match_T_13 :
    _s2_l2_miss_refill_counter_match_T_45; // @[CustomL1Hint.scala 115:42]
  wire [1:0] _s2_l2_miss_refill_counter_match_T_67 = _s2_l2_miss_refill_counter_match_T_41 + _GEN_15; // @[CustomL1Hint.scala 118:111]
  wire  _s2_l2_miss_refill_counter_match_T_68 = _s2_l2_miss_refill_counter_match_T_67 == 2'h3; // @[CustomL1Hint.scala 118:137]
  wire  _s2_l2_miss_refill_counter_match_T_69 = s3_l2_hit_grant_data ? _s2_l2_miss_refill_counter_match_T_13 :
    _s2_l2_miss_refill_counter_match_T_68; // @[CustomL1Hint.scala 117:42]
  wire [1:0] _s2_l2_miss_refill_counter_match_T_81 = globalCounter + 2'h2; // @[CustomL1Hint.scala 120:80]
  wire [1:0] _s2_l2_miss_refill_counter_match_T_84 = _s2_l2_miss_refill_counter_match_T_81 + _GEN_16; // @[CustomL1Hint.scala 120:86]
  wire  _s2_l2_miss_refill_counter_match_T_85 = _s2_l2_miss_refill_counter_match_T_84 == 2'h3; // @[CustomL1Hint.scala 120:112]
  wire  _s2_l2_miss_refill_counter_match_T_86 = s4_l2_hit_grant_data ? _s2_l2_miss_refill_counter_match_T_23 :
    _s2_l2_miss_refill_counter_match_T_85; // @[CustomL1Hint.scala 119:42]
  wire [1:0] _s2_l2_miss_refill_counter_match_T_92 = _s2_l2_miss_refill_counter_match_T_81 + _GEN_15; // @[CustomL1Hint.scala 121:61]
  wire  _s2_l2_miss_refill_counter_match_T_93 = _s2_l2_miss_refill_counter_match_T_92 == 2'h3; // @[CustomL1Hint.scala 121:87]
  wire [1:0] _s2_l2_miss_refill_counter_match_T_121 = _s2_l2_miss_refill_counter_match_T_81 + _GEN_21; // @[CustomL1Hint.scala 125:74]
  wire  _s2_l2_miss_refill_counter_match_T_122 = _s2_l2_miss_refill_counter_match_T_121 == 2'h3; // @[CustomL1Hint.scala 125:100]
  wire  _s2_l2_miss_refill_counter_match_T_123 = s4_l2_hit_grant_data ? _s2_l2_miss_refill_counter_match_T_69 :
    _s2_l2_miss_refill_counter_match_T_122; // @[CustomL1Hint.scala 122:42]
  wire [2:0] _s2_l2_miss_refill_counter_match_T_129 = _s2_l2_miss_refill_counter_match_T_3 + _GEN_13; // @[CustomL1Hint.scala 127:90]
  wire [2:0] _s2_l2_miss_refill_counter_match_T_132 = _s2_l2_miss_refill_counter_match_T_129 + _GEN_14; // @[CustomL1Hint.scala 127:115]
  wire  _s2_l2_miss_refill_counter_match_T_139 = _s2_l2_miss_refill_counter_match_T_19 == 2'h3; // @[CustomL1Hint.scala 128:96]
  wire  _s2_l2_miss_refill_counter_match_T_140 = s3_l2_hit_grant_data ? _s2_l2_miss_refill_counter_match_T_132 == 3'h3
     : _s2_l2_miss_refill_counter_match_T_139; // @[CustomL1Hint.scala 127:46]
  wire  _s2_l2_miss_refill_counter_match_T_143 = _s2_l2_miss_refill_counter_match_T_81 == 2'h3; // @[CustomL1Hint.scala 129:75]
  wire  _s2_l2_miss_refill_counter_match_T_144 = s4_l2_hit_grant_data ? _s2_l2_miss_refill_counter_match_T_140 :
    _s2_l2_miss_refill_counter_match_T_143; // @[CustomL1Hint.scala 126:42]
  wire  _s2_l2_miss_refill_counter_match_T_148 = 3'h6 == _s2_l2_miss_refill_counter_match_T ?
    _s2_l2_miss_refill_counter_match_T_23 : 3'h7 == _s2_l2_miss_refill_counter_match_T &
    _s2_l2_miss_refill_counter_match_T_13; // @[Mux.scala 81:58]
  wire  _s2_l2_miss_refill_counter_match_T_150 = 3'h5 == _s2_l2_miss_refill_counter_match_T ?
    _s2_l2_miss_refill_counter_match_T_46 : _s2_l2_miss_refill_counter_match_T_148; // @[Mux.scala 81:58]
  wire  _s2_l2_miss_refill_counter_match_T_152 = 3'h3 == _s2_l2_miss_refill_counter_match_T ?
    _s2_l2_miss_refill_counter_match_T_69 : _s2_l2_miss_refill_counter_match_T_150; // @[Mux.scala 81:58]
  wire  _s2_l2_miss_refill_counter_match_T_154 = 3'h4 == _s2_l2_miss_refill_counter_match_T ?
    _s2_l2_miss_refill_counter_match_T_86 : _s2_l2_miss_refill_counter_match_T_152; // @[Mux.scala 81:58]
  wire  _s2_l2_miss_refill_counter_match_T_156 = 3'h2 == _s2_l2_miss_refill_counter_match_T ?
    _s2_l2_miss_refill_counter_match_T_93 : _s2_l2_miss_refill_counter_match_T_154; // @[Mux.scala 81:58]
  wire  _s2_l2_miss_refill_counter_match_T_158 = 3'h1 == _s2_l2_miss_refill_counter_match_T ?
    _s2_l2_miss_refill_counter_match_T_123 : _s2_l2_miss_refill_counter_match_T_156; // @[Mux.scala 81:58]
  wire  s2_l2_miss_refill_counter_match = 3'h0 == _s2_l2_miss_refill_counter_match_T ?
    _s2_l2_miss_refill_counter_match_T_144 : _s2_l2_miss_refill_counter_match_T_158; // @[Mux.scala 81:58]
  wire  hint_s2_valid = s2_l2_miss_refill_grant_data & s2_l2_miss_refill_counter_match & _hint_s1_valid_T; // @[CustomL1Hint.scala 132:92]
  wire  _T = io_s5_d & io_s4_d; // @[CustomL1Hint.scala 138:13]
  wire  _GEN_0 = s4_l2_hit_grant_data ? _s2_l2_miss_refill_counter_match_T_68 : _s2_l2_miss_refill_counter_match_T_41
     == 2'h3; // @[CustomL1Hint.scala 144:32 145:31 147:31]
  wire  _s3_l2_hit_counter_match_T_38 = _s2_l2_miss_refill_counter_match_T_16 == 2'h3; // @[CustomL1Hint.scala 153:55]
  wire  _GEN_1 = s4_l2_hit_grant_data ? _s2_l2_miss_refill_counter_match_T_139 : _s2_l2_miss_refill_counter_match_T_16
     == 2'h3; // @[CustomL1Hint.scala 150:32 151:31 153:31]
  wire  _GEN_2 = io_s5_d ? _GEN_0 : _GEN_1; // @[CustomL1Hint.scala 142:20]
  wire  _GEN_3 = io_s4_d ? _s2_l2_miss_refill_counter_match_T_139 : _GEN_2; // @[CustomL1Hint.scala 140:20 141:29]
  wire  s3_l2_hit_counter_match = io_s5_d & io_s4_d ? _s2_l2_miss_refill_counter_match_T_68 : _GEN_3; // @[CustomL1Hint.scala 138:22 139:29]
  wire  validHint_s3 = s3_l2_hit_grant_data & s3_l2_hit_counter_match; // @[CustomL1Hint.scala 156:43]
  wire  s3_l2_miss_refill_grant_data = io_s3_d & io_s3_task_bits_mshrTask & io_s3_task_bits_channel[0] &
    io_s3_task_bits_opcode == 3'h5; // @[CustomL1Hint.scala 160:83]
  wire  _GEN_5 = s4_l2_hit_grant_data ? _s2_l2_miss_refill_counter_match_T_68 : _s2_l2_miss_refill_counter_match_T_122; // @[CustomL1Hint.scala 167:32 168:39 170:39]
  wire [1:0] _s3_l2_miss_refill_counter_match_T_31 = globalCounter + 2'h1; // @[CustomL1Hint.scala 173:55]
  wire  _s3_l2_miss_refill_counter_match_T_32 = _s3_l2_miss_refill_counter_match_T_31 == 2'h3; // @[CustomL1Hint.scala 173:61]
  wire  _GEN_6 = io_s5_d ? _GEN_5 : _s3_l2_miss_refill_counter_match_T_31 == 2'h3; // @[CustomL1Hint.scala 166:20 173:37]
  wire  _GEN_7 = io_s4_d ? _s2_l2_miss_refill_counter_match_T_93 : _GEN_6; // @[CustomL1Hint.scala 164:20 165:37]
  wire  s3_l2_miss_refill_counter_match = _T ? _s2_l2_miss_refill_counter_match_T_68 : _GEN_7; // @[CustomL1Hint.scala 162:22 163:37]
  wire  validHintMiss_s3 = s3_l2_miss_refill_grant_data & s3_l2_miss_refill_counter_match; // @[CustomL1Hint.scala 175:55]
  wire  hint_s3_valid = (validHint_s3 | validHintMiss_s3) & _hint_s1_valid_T; // @[CustomL1Hint.scala 177:63]
  wire  _s4_l2_hit_counter_match_T_1 = io_s5_d & io_s5_task_bits_opcode[0]; // @[CustomL1Hint.scala 182:42]
  wire  s4_l2_hit_counter_match = io_s5_d & io_s5_task_bits_opcode[0] ? _s3_l2_hit_counter_match_T_38 :
    _s2_l2_miss_refill_counter_match_T_143; // @[CustomL1Hint.scala 182:36]
  wire  validHint_s4 = s4_l2_hit_grant_data & s4_l2_hit_counter_match; // @[CustomL1Hint.scala 184:54]
  wire  s4_l2_miss_refill_grant_data = io_s4_d & _s4_l2_hit_grant_data_T_1 & io_s4_task_bits_channel[0] &
    io_s4_task_bits_mshrTask; // @[CustomL1Hint.scala 187:105]
  wire  _s4_l2_miss_refill_counter_match_T_14 = io_s5_d & ~io_s5_task_bits_opcode[0] ?
    _s2_l2_miss_refill_counter_match_T_143 : _s3_l2_miss_refill_counter_match_T_32; // @[CustomL1Hint.scala 189:48]
  wire  s4_l2_miss_refill_counter_match = _s4_l2_hit_counter_match_T_1 ? _s3_l2_hit_counter_match_T_38 :
    _s4_l2_miss_refill_counter_match_T_14; // @[CustomL1Hint.scala 188:44]
  wire  validHintMiss_s4 = s4_l2_miss_refill_grant_data & s4_l2_miss_refill_counter_match; // @[CustomL1Hint.scala 191:55]
  wire  hint_s4_valid = (validHint_s4 | validHintMiss_s4) & _hint_s1_valid_T; // @[CustomL1Hint.scala 193:63]
  wire  _validHint_s5_T_4 = io_s5_d & io_s5_task_bits_opcode == 3'h5 & io_s5_task_bits_channel[0]; // @[CustomL1Hint.scala 198:64]
  wire  validHint_s5 = io_s5_d & io_s5_task_bits_opcode == 3'h5 & io_s5_task_bits_channel[0] & ~io_s5_task_bits_mshrTask
     & _s3_l2_miss_refill_counter_match_T_32; // @[CustomL1Hint.scala 198:112]
  wire  validHintMiss_s5 = _validHint_s5_T_4 & io_s5_task_bits_mshrTask & _s3_l2_miss_refill_counter_match_T_32; // @[CustomL1Hint.scala 201:115]
  wire  hint_s5_valid = (validHint_s5 | validHintMiss_s5) & _hint_s1_valid_T; // @[CustomL1Hint.scala 203:63]
  wire [5:0] _io_l1Hint_valid_T = {hint_s5_valid,hint_s4_valid,hint_s3_valid,hint_s2_valid,hint_s1_valid,
    io_grantBufferHint_valid}; // @[CustomL1Hint.scala 209:50]
  wire [31:0] io_l1Hint_bits_sourceId_xs_0 = io_grantBufferHint_valid ? io_grantBufferHint_bits_sourceId : 32'h0; // @[ParallelMux.scala 64:44]
  wire [31:0] hint_s1_bits_sourceId = {{27'd0}, io_s1_bits_sourceId}; // @[CustomL1Hint.scala 102:25 90:57]
  wire [31:0] io_l1Hint_bits_sourceId_xs_1 = hint_s1_valid ? hint_s1_bits_sourceId : 32'h0; // @[ParallelMux.scala 64:44]
  wire [31:0] hint_s2_bits_sourceId = {{27'd0}, io_s2_bits_sourceId}; // @[CustomL1Hint.scala 133:25 90:57]
  wire [31:0] io_l1Hint_bits_sourceId_xs_2 = hint_s2_valid ? hint_s2_bits_sourceId : 32'h0; // @[ParallelMux.scala 64:44]
  wire [31:0] hint_s3_bits_sourceId = {{27'd0}, io_s3_task_bits_sourceId}; // @[CustomL1Hint.scala 178:25 90:57]
  wire [31:0] io_l1Hint_bits_sourceId_xs_3 = hint_s3_valid ? hint_s3_bits_sourceId : 32'h0; // @[ParallelMux.scala 64:44]
  wire [31:0] hint_s4_bits_sourceId = {{27'd0}, io_s4_task_bits_sourceId}; // @[CustomL1Hint.scala 194:25 90:57]
  wire [31:0] io_l1Hint_bits_sourceId_xs_4 = hint_s4_valid ? hint_s4_bits_sourceId : 32'h0; // @[ParallelMux.scala 64:44]
  wire [31:0] hint_s5_bits_sourceId = {{27'd0}, io_s5_task_bits_sourceId}; // @[CustomL1Hint.scala 204:25 90:57]
  wire [31:0] io_l1Hint_bits_sourceId_xs_5 = hint_s5_valid ? hint_s5_bits_sourceId : 32'h0; // @[ParallelMux.scala 64:44]
  wire [31:0] _io_l1Hint_bits_sourceId_T = io_l1Hint_bits_sourceId_xs_1 | io_l1Hint_bits_sourceId_xs_2; // @[ParallelMux.scala 36:53]
  wire [31:0] _io_l1Hint_bits_sourceId_T_1 = io_l1Hint_bits_sourceId_xs_0 | _io_l1Hint_bits_sourceId_T; // @[ParallelMux.scala 36:53]
  wire [31:0] _io_l1Hint_bits_sourceId_T_2 = io_l1Hint_bits_sourceId_xs_4 | io_l1Hint_bits_sourceId_xs_5; // @[ParallelMux.scala 36:53]
  wire [31:0] _io_l1Hint_bits_sourceId_T_3 = io_l1Hint_bits_sourceId_xs_3 | _io_l1Hint_bits_sourceId_T_2; // @[ParallelMux.scala 36:53]
  assign io_l1Hint_valid = |_io_l1Hint_valid_T; // @[CustomL1Hint.scala 209:57]
  assign io_l1Hint_bits_sourceId = _io_l1Hint_bits_sourceId_T_1 | _io_l1Hint_bits_sourceId_T_3; // @[ParallelMux.scala 36:53]
endmodule

