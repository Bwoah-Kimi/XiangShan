module NearPath(
  input         io_in_a_sign,
  input  [7:0]  io_in_a_exp,
  input  [47:0] io_in_a_sig,
  input         io_in_bsign,
  input  [47:0] io_in_bsig,
  input         io_in_need_shift_b,
  output        io_out_result_sign,
  output [7:0]  io_out_result_exp,
  output        io_out_sig_is_zero,
  output        io_out_a_lt_b,
  output        io_out_lza_error,
  output        io_out_int_bit,
  output [48:0] io_out_sig_raw,
  output [5:0]  io_out_lzc
);
  wire [48:0] lza_ab_io_a; // @[FADD.scala 109:22]
  wire [48:0] lza_ab_io_b; // @[FADD.scala 109:22]
  wire [48:0] lza_ab_io_f; // @[FADD.scala 109:22]
  wire [48:0] lzc_clz_io_in; // @[CLZ.scala 22:21]
  wire [5:0] lzc_clz_io_out; // @[CLZ.scala 22:21]
  wire [48:0] _bsig_T = {io_in_bsig,1'h0}; // @[Cat.scala 31:58]
  wire [48:0] b_sig = _bsig_T >> io_in_need_shift_b; // @[FADD.scala 103:37]
  wire [48:0] b_neg = ~b_sig; // @[FADD.scala 104:16]
  wire [49:0] _a_minus_bT = {1'h0,io_in_a_sig,1'h0}; // @[Cat.scala 31:58]
  wire [49:0] _a_minus_bT_1 = {1'h1,b_neg}; // @[Cat.scala 31:58]
  wire [49:0] _a_minus_bT_3 = _a_minus_bT + _a_minus_bT_1; // @[FADD.scala 106:40]
  wire [49:0] a_minus_b = _a_minus_bT_3 + 50'h1; // @[FADD.scala 106:63]
  wire  a_lt_b = a_minus_b[49]; // @[FADD.scala 107:30]
  wire [48:0] sig_raw = a_minus_b[48:0]; // @[FADD.scala 108:31]
  wire  lza_str_zero = ~(|lza_ab_io_f); // @[FADD.scala 113:22]
  wire  need_shift_lim = io_in_a_exp < 8'h31; // @[FADD.scala 116:30]
  wire [49:0] _shift_lim_mask_raw_T_2 = 50'h2000000000000 >> io_in_a_exp[5:0]; // @[FADD.scala 119:41]
  wire [48:0] shift_lim_mask_raw = _shift_lim_mask_raw_T_2[48:0]; // @[FADD.scala 120:16]
  wire [48:0] shift_lim_mask = need_shift_lim ? shift_lim_mask_raw : 49'h0; // @[FADD.scala 121:27]
  wire [48:0] _shift_lim_bit_T = shift_lim_mask_raw & sig_raw; // @[FADD.scala 122:43]
  wire  shift_lim_bit = |_shift_lim_bit_T; // @[FADD.scala 122:57]
  wire [48:0] lzc_str = shift_lim_mask | lza_ab_io_f; // @[FADD.scala 124:32]
  wire  _int_bit_mask_T_5 = lzc_str[47] & ~(|lzc_str[48]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_10 = lzc_str[46] & ~(|lzc_str[48:47]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_15 = lzc_str[45] & ~(|lzc_str[48:46]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_20 = lzc_str[44] & ~(|lzc_str[48:45]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_25 = lzc_str[43] & ~(|lzc_str[48:44]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_30 = lzc_str[42] & ~(|lzc_str[48:43]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_35 = lzc_str[41] & ~(|lzc_str[48:42]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_40 = lzc_str[40] & ~(|lzc_str[48:41]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_45 = lzc_str[39] & ~(|lzc_str[48:40]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_50 = lzc_str[38] & ~(|lzc_str[48:39]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_55 = lzc_str[37] & ~(|lzc_str[48:38]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_60 = lzc_str[36] & ~(|lzc_str[48:37]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_65 = lzc_str[35] & ~(|lzc_str[48:36]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_70 = lzc_str[34] & ~(|lzc_str[48:35]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_75 = lzc_str[33] & ~(|lzc_str[48:34]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_80 = lzc_str[32] & ~(|lzc_str[48:33]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_85 = lzc_str[31] & ~(|lzc_str[48:32]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_90 = lzc_str[30] & ~(|lzc_str[48:31]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_95 = lzc_str[29] & ~(|lzc_str[48:30]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_100 = lzc_str[28] & ~(|lzc_str[48:29]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_105 = lzc_str[27] & ~(|lzc_str[48:28]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_110 = lzc_str[26] & ~(|lzc_str[48:27]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_115 = lzc_str[25] & ~(|lzc_str[48:26]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_120 = lzc_str[24] & ~(|lzc_str[48:25]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_125 = lzc_str[23] & ~(|lzc_str[48:24]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_130 = lzc_str[22] & ~(|lzc_str[48:23]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_135 = lzc_str[21] & ~(|lzc_str[48:22]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_140 = lzc_str[20] & ~(|lzc_str[48:21]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_145 = lzc_str[19] & ~(|lzc_str[48:20]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_150 = lzc_str[18] & ~(|lzc_str[48:19]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_155 = lzc_str[17] & ~(|lzc_str[48:18]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_160 = lzc_str[16] & ~(|lzc_str[48:17]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_165 = lzc_str[15] & ~(|lzc_str[48:16]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_170 = lzc_str[14] & ~(|lzc_str[48:15]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_175 = lzc_str[13] & ~(|lzc_str[48:14]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_180 = lzc_str[12] & ~(|lzc_str[48:13]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_185 = lzc_str[11] & ~(|lzc_str[48:12]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_190 = lzc_str[10] & ~(|lzc_str[48:11]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_195 = lzc_str[9] & ~(|lzc_str[48:10]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_200 = lzc_str[8] & ~(|lzc_str[48:9]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_205 = lzc_str[7] & ~(|lzc_str[48:8]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_210 = lzc_str[6] & ~(|lzc_str[48:7]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_215 = lzc_str[5] & ~(|lzc_str[48:6]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_220 = lzc_str[4] & ~(|lzc_str[48:5]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_225 = lzc_str[3] & ~(|lzc_str[48:4]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_230 = lzc_str[2] & ~(|lzc_str[48:3]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_235 = lzc_str[1] & ~(|lzc_str[48:2]); // @[FADD.scala 129:40]
  wire  _int_bit_mask_T_240 = lzc_str[0] & ~(|lzc_str[48:1]); // @[FADD.scala 129:40]
  wire [5:0] int_bit_mask_lo_lo_lo = {_int_bit_mask_T_215,_int_bit_mask_T_220,_int_bit_mask_T_225,_int_bit_mask_T_230,
    _int_bit_mask_T_235,_int_bit_mask_T_240}; // @[Cat.scala 31:58]
  wire [11:0] int_bit_mask_lo_lo = {_int_bit_mask_T_185,_int_bit_mask_T_190,_int_bit_mask_T_195,_int_bit_mask_T_200,
    _int_bit_mask_T_205,_int_bit_mask_T_210,int_bit_mask_lo_lo_lo}; // @[Cat.scala 31:58]
  wire [5:0] int_bit_mask_lo_hi_lo = {_int_bit_mask_T_155,_int_bit_mask_T_160,_int_bit_mask_T_165,_int_bit_mask_T_170,
    _int_bit_mask_T_175,_int_bit_mask_T_180}; // @[Cat.scala 31:58]
  wire [23:0] int_bit_mask_lo = {_int_bit_mask_T_125,_int_bit_mask_T_130,_int_bit_mask_T_135,_int_bit_mask_T_140,
    _int_bit_mask_T_145,_int_bit_mask_T_150,int_bit_mask_lo_hi_lo,int_bit_mask_lo_lo}; // @[Cat.scala 31:58]
  wire [5:0] int_bit_mask_hi_lo_lo = {_int_bit_mask_T_95,_int_bit_mask_T_100,_int_bit_mask_T_105,_int_bit_mask_T_110,
    _int_bit_mask_T_115,_int_bit_mask_T_120}; // @[Cat.scala 31:58]
  wire [11:0] int_bit_mask_hi_lo = {_int_bit_mask_T_65,_int_bit_mask_T_70,_int_bit_mask_T_75,_int_bit_mask_T_80,
    _int_bit_mask_T_85,_int_bit_mask_T_90,int_bit_mask_hi_lo_lo}; // @[Cat.scala 31:58]
  wire [5:0] int_bit_mask_hi_hi_lo = {_int_bit_mask_T_35,_int_bit_mask_T_40,_int_bit_mask_T_45,_int_bit_mask_T_50,
    _int_bit_mask_T_55,_int_bit_mask_T_60}; // @[Cat.scala 31:58]
  wire [48:0] int_bit_mask = {lzc_str[48],_int_bit_mask_T_5,_int_bit_mask_T_10,_int_bit_mask_T_15,_int_bit_mask_T_20,
    _int_bit_mask_T_25,_int_bit_mask_T_30,int_bit_mask_hi_hi_lo,int_bit_mask_hi_lo,int_bit_mask_lo}; // @[Cat.scala 31:58]
  wire [48:0] _GEN_0 = {{48'd0}, lza_str_zero}; // @[FADD.scala 133:20]
  wire [48:0] _int_bit_predicted_T = int_bit_mask | _GEN_0; // @[FADD.scala 133:20]
  wire [48:0] _int_bit_predicted_T_1 = _int_bit_predicted_T & sig_raw; // @[FADD.scala 133:36]
  wire  int_bit_predicted = |_int_bit_predicted_T_1; // @[FADD.scala 133:50]
  wire [48:0] _int_bit_rshift_1_T = {{1'd0}, int_bit_mask[48:1]}; // @[FADD.scala 135:20]
  wire [48:0] _int_bit_rshift_1_T_1 = _int_bit_rshift_1_T & sig_raw; // @[FADD.scala 135:37]
  wire  int_bit_rshift_1 = |_int_bit_rshift_1_T_1; // @[FADD.scala 135:51]
  wire  _exceed_lim_mask_T_1 = |lza_ab_io_f[48]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_3 = |lza_ab_io_f[48:47]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_5 = |lza_ab_io_f[48:46]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_7 = |lza_ab_io_f[48:45]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_9 = |lza_ab_io_f[48:44]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_11 = |lza_ab_io_f[48:43]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_13 = |lza_ab_io_f[48:42]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_15 = |lza_ab_io_f[48:41]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_17 = |lza_ab_io_f[48:40]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_19 = |lza_ab_io_f[48:39]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_21 = |lza_ab_io_f[48:38]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_23 = |lza_ab_io_f[48:37]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_25 = |lza_ab_io_f[48:36]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_27 = |lza_ab_io_f[48:35]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_29 = |lza_ab_io_f[48:34]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_31 = |lza_ab_io_f[48:33]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_33 = |lza_ab_io_f[48:32]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_35 = |lza_ab_io_f[48:31]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_37 = |lza_ab_io_f[48:30]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_39 = |lza_ab_io_f[48:29]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_41 = |lza_ab_io_f[48:28]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_43 = |lza_ab_io_f[48:27]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_45 = |lza_ab_io_f[48:26]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_47 = |lza_ab_io_f[48:25]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_49 = |lza_ab_io_f[48:24]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_51 = |lza_ab_io_f[48:23]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_53 = |lza_ab_io_f[48:22]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_55 = |lza_ab_io_f[48:21]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_57 = |lza_ab_io_f[48:20]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_59 = |lza_ab_io_f[48:19]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_61 = |lza_ab_io_f[48:18]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_63 = |lza_ab_io_f[48:17]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_65 = |lza_ab_io_f[48:16]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_67 = |lza_ab_io_f[48:15]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_69 = |lza_ab_io_f[48:14]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_71 = |lza_ab_io_f[48:13]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_73 = |lza_ab_io_f[48:12]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_75 = |lza_ab_io_f[48:11]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_77 = |lza_ab_io_f[48:10]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_79 = |lza_ab_io_f[48:9]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_81 = |lza_ab_io_f[48:8]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_83 = |lza_ab_io_f[48:7]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_85 = |lza_ab_io_f[48:6]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_87 = |lza_ab_io_f[48:5]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_89 = |lza_ab_io_f[48:4]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_91 = |lza_ab_io_f[48:3]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_93 = |lza_ab_io_f[48:2]; // @[FADD.scala 139:64]
  wire  _exceed_lim_mask_T_95 = |lza_ab_io_f[48:1]; // @[FADD.scala 139:64]
  wire [5:0] exceed_lim_mask_lo_lo_lo = {_exceed_lim_mask_T_85,_exceed_lim_mask_T_87,_exceed_lim_mask_T_89,
    _exceed_lim_mask_T_91,_exceed_lim_mask_T_93,_exceed_lim_mask_T_95}; // @[Cat.scala 31:58]
  wire [11:0] exceed_lim_mask_lo_lo = {_exceed_lim_mask_T_73,_exceed_lim_mask_T_75,_exceed_lim_mask_T_77,
    _exceed_lim_mask_T_79,_exceed_lim_mask_T_81,_exceed_lim_mask_T_83,exceed_lim_mask_lo_lo_lo}; // @[Cat.scala 31:58]
  wire [5:0] exceed_lim_mask_lo_hi_lo = {_exceed_lim_mask_T_61,_exceed_lim_mask_T_63,_exceed_lim_mask_T_65,
    _exceed_lim_mask_T_67,_exceed_lim_mask_T_69,_exceed_lim_mask_T_71}; // @[Cat.scala 31:58]
  wire [23:0] exceed_lim_mask_lo = {_exceed_lim_mask_T_49,_exceed_lim_mask_T_51,_exceed_lim_mask_T_53,
    _exceed_lim_mask_T_55,_exceed_lim_mask_T_57,_exceed_lim_mask_T_59,exceed_lim_mask_lo_hi_lo,exceed_lim_mask_lo_lo}; // @[Cat.scala 31:58]
  wire [5:0] exceed_lim_mask_hi_lo_lo = {_exceed_lim_mask_T_37,_exceed_lim_mask_T_39,_exceed_lim_mask_T_41,
    _exceed_lim_mask_T_43,_exceed_lim_mask_T_45,_exceed_lim_mask_T_47}; // @[Cat.scala 31:58]
  wire [11:0] exceed_lim_mask_hi_lo = {_exceed_lim_mask_T_25,_exceed_lim_mask_T_27,_exceed_lim_mask_T_29,
    _exceed_lim_mask_T_31,_exceed_lim_mask_T_33,_exceed_lim_mask_T_35,exceed_lim_mask_hi_lo_lo}; // @[Cat.scala 31:58]
  wire [5:0] exceed_lim_mask_hi_hi_lo = {_exceed_lim_mask_T_13,_exceed_lim_mask_T_15,_exceed_lim_mask_T_17,
    _exceed_lim_mask_T_19,_exceed_lim_mask_T_21,_exceed_lim_mask_T_23}; // @[Cat.scala 31:58]
  wire [48:0] exceed_lim_mask = {1'h0,_exceed_lim_mask_T_1,_exceed_lim_mask_T_3,_exceed_lim_mask_T_5,
    _exceed_lim_mask_T_7,_exceed_lim_mask_T_9,_exceed_lim_mask_T_11,exceed_lim_mask_hi_hi_lo,exceed_lim_mask_hi_lo,
    exceed_lim_mask_lo}; // @[Cat.scala 31:58]
  wire [48:0] _exceed_lim_T = exceed_lim_mask & shift_lim_mask_raw; // @[FADD.scala 142:41]
  wire  exceed_lim = need_shift_lim & ~(|_exceed_lim_T); // @[FADD.scala 142:20]
  LZA_2 lza_ab ( // @[FADD.scala 109:22]
    .io_a(lza_ab_io_a),
    .io_b(lza_ab_io_b),
    .io_f(lza_ab_io_f)
  );
  CLZ_6 lzc_clz ( // @[CLZ.scala 22:21]
    .io_in(lzc_clz_io_in),
    .io_out(lzc_clz_io_out)
  );
  assign io_out_result_sign = a_lt_b ? io_in_bsign : io_in_a_sign; // @[FADD.scala 166:27]
  assign io_out_result_exp = io_in_a_exp; // @[FADD.scala 168:20 170:14]
  assign io_out_sig_is_zero = lza_str_zero & ~sig_raw[0]; // @[FADD.scala 173:38]
  assign io_out_a_lt_b = a_minus_b[49]; // @[FADD.scala 107:30]
  assign io_out_lza_error = ~int_bit_predicted & ~exceed_lim; // @[FADD.scala 147:38]
  assign io_out_int_bit = exceed_lim ? shift_lim_bit : int_bit_rshift_1 | int_bit_predicted; // @[FADD.scala 145:8]
  assign io_out_sig_raw = a_minus_b[48:0]; // @[FADD.scala 108:31]
  assign io_out_lzc = lzc_clz_io_out; // @[FADD.scala 177:14]
  assign lza_ab_io_a = {io_in_a_sig,1'h0}; // @[Cat.scala 31:58]
  assign lza_ab_io_b = ~b_sig; // @[FADD.scala 104:16]
  assign lzc_clz_io_in = shift_lim_mask | lza_ab_io_f; // @[FADD.scala 124:32]
endmodule

