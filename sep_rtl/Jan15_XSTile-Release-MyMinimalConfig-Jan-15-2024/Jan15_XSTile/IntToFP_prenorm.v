module IntToFP_prenorm(
  input  [63:0] io_in_int,
  input         io_in_sign,
  input         io_in_long,
  output [62:0] io_out_norm_int,
  output [5:0]  io_out_lzc,
  output        io_out_is_zero,
  output        io_out_sign
);
  wire [63:0] lza_io_b; // @[IntToFP.scala 37:19]
  wire [63:0] lza_io_f; // @[IntToFP.scala 37:19]
  wire [63:0] pos_lzc_clz_io_in; // @[CLZ.scala 22:21]
  wire [5:0] pos_lzc_clz_io_out; // @[CLZ.scala 22:21]
  wire [63:0] neg_lzc_clz_io_in; // @[CLZ.scala 22:21]
  wire [5:0] neg_lzc_clz_io_out; // @[CLZ.scala 22:21]
  wire  _in_sign_T_2 = io_in_long ? io_in_int[63] : io_in_int[31]; // @[IntToFP.scala 32:34]
  wire  in_sign = io_in_sign & _in_sign_T_2; // @[IntToFP.scala 32:28]
  wire [31:0] _in_sext_T_2 = io_in_int[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] in_sext = {_in_sext_T_2,io_in_int[31:0]}; // @[Cat.scala 31:58]
  wire [63:0] in_raw = io_in_sign & ~io_in_long ? in_sext : io_in_int; // @[IntToFP.scala 34:19]
  wire [63:0] _in_abs_T = ~in_raw; // @[IntToFP.scala 35:30]
  wire [63:0] _in_abs_T_2 = _in_abs_T + 64'h1; // @[IntToFP.scala 35:48]
  wire [63:0] in_abs = in_sign ? _in_abs_T_2 : in_raw; // @[IntToFP.scala 35:19]
  wire [5:0] lzc = in_sign ? neg_lzc_clz_io_out : pos_lzc_clz_io_out; // @[IntToFP.scala 44:16]
  wire  _one_mask_T_5 = lza_io_f[62] & ~(|lza_io_f[63]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_10 = lza_io_f[61] & ~(|lza_io_f[63:62]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_15 = lza_io_f[60] & ~(|lza_io_f[63:61]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_20 = lza_io_f[59] & ~(|lza_io_f[63:60]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_25 = lza_io_f[58] & ~(|lza_io_f[63:59]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_30 = lza_io_f[57] & ~(|lza_io_f[63:58]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_35 = lza_io_f[56] & ~(|lza_io_f[63:57]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_40 = lza_io_f[55] & ~(|lza_io_f[63:56]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_45 = lza_io_f[54] & ~(|lza_io_f[63:55]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_50 = lza_io_f[53] & ~(|lza_io_f[63:54]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_55 = lza_io_f[52] & ~(|lza_io_f[63:53]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_60 = lza_io_f[51] & ~(|lza_io_f[63:52]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_65 = lza_io_f[50] & ~(|lza_io_f[63:51]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_70 = lza_io_f[49] & ~(|lza_io_f[63:50]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_75 = lza_io_f[48] & ~(|lza_io_f[63:49]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_80 = lza_io_f[47] & ~(|lza_io_f[63:48]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_85 = lza_io_f[46] & ~(|lza_io_f[63:47]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_90 = lza_io_f[45] & ~(|lza_io_f[63:46]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_95 = lza_io_f[44] & ~(|lza_io_f[63:45]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_100 = lza_io_f[43] & ~(|lza_io_f[63:44]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_105 = lza_io_f[42] & ~(|lza_io_f[63:43]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_110 = lza_io_f[41] & ~(|lza_io_f[63:42]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_115 = lza_io_f[40] & ~(|lza_io_f[63:41]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_120 = lza_io_f[39] & ~(|lza_io_f[63:40]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_125 = lza_io_f[38] & ~(|lza_io_f[63:39]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_130 = lza_io_f[37] & ~(|lza_io_f[63:38]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_135 = lza_io_f[36] & ~(|lza_io_f[63:37]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_140 = lza_io_f[35] & ~(|lza_io_f[63:36]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_145 = lza_io_f[34] & ~(|lza_io_f[63:35]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_150 = lza_io_f[33] & ~(|lza_io_f[63:34]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_155 = lza_io_f[32] & ~(|lza_io_f[63:33]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_160 = lza_io_f[31] & ~(|lza_io_f[63:32]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_165 = lza_io_f[30] & ~(|lza_io_f[63:31]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_170 = lza_io_f[29] & ~(|lza_io_f[63:30]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_175 = lza_io_f[28] & ~(|lza_io_f[63:29]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_180 = lza_io_f[27] & ~(|lza_io_f[63:28]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_185 = lza_io_f[26] & ~(|lza_io_f[63:27]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_190 = lza_io_f[25] & ~(|lza_io_f[63:26]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_195 = lza_io_f[24] & ~(|lza_io_f[63:25]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_200 = lza_io_f[23] & ~(|lza_io_f[63:24]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_205 = lza_io_f[22] & ~(|lza_io_f[63:23]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_210 = lza_io_f[21] & ~(|lza_io_f[63:22]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_215 = lza_io_f[20] & ~(|lza_io_f[63:21]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_220 = lza_io_f[19] & ~(|lza_io_f[63:20]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_225 = lza_io_f[18] & ~(|lza_io_f[63:19]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_230 = lza_io_f[17] & ~(|lza_io_f[63:18]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_235 = lza_io_f[16] & ~(|lza_io_f[63:17]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_240 = lza_io_f[15] & ~(|lza_io_f[63:16]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_245 = lza_io_f[14] & ~(|lza_io_f[63:15]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_250 = lza_io_f[13] & ~(|lza_io_f[63:14]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_255 = lza_io_f[12] & ~(|lza_io_f[63:13]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_260 = lza_io_f[11] & ~(|lza_io_f[63:12]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_265 = lza_io_f[10] & ~(|lza_io_f[63:11]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_270 = lza_io_f[9] & ~(|lza_io_f[63:10]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_275 = lza_io_f[8] & ~(|lza_io_f[63:9]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_280 = lza_io_f[7] & ~(|lza_io_f[63:8]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_285 = lza_io_f[6] & ~(|lza_io_f[63:7]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_290 = lza_io_f[5] & ~(|lza_io_f[63:6]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_295 = lza_io_f[4] & ~(|lza_io_f[63:5]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_300 = lza_io_f[3] & ~(|lza_io_f[63:4]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_305 = lza_io_f[2] & ~(|lza_io_f[63:3]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_310 = lza_io_f[1] & ~(|lza_io_f[63:2]); // @[IntToFP.scala 50:32]
  wire  _one_mask_T_313 = ~(|lza_io_f[63:1]); // @[IntToFP.scala 49:20]
  wire [7:0] one_mask_lo_lo_lo = {_one_mask_T_280,_one_mask_T_285,_one_mask_T_290,_one_mask_T_295,_one_mask_T_300,
    _one_mask_T_305,_one_mask_T_310,_one_mask_T_313}; // @[Cat.scala 31:58]
  wire [15:0] one_mask_lo_lo = {_one_mask_T_240,_one_mask_T_245,_one_mask_T_250,_one_mask_T_255,_one_mask_T_260,
    _one_mask_T_265,_one_mask_T_270,_one_mask_T_275,one_mask_lo_lo_lo}; // @[Cat.scala 31:58]
  wire [7:0] one_mask_lo_hi_lo = {_one_mask_T_200,_one_mask_T_205,_one_mask_T_210,_one_mask_T_215,_one_mask_T_220,
    _one_mask_T_225,_one_mask_T_230,_one_mask_T_235}; // @[Cat.scala 31:58]
  wire [31:0] one_mask_lo = {_one_mask_T_160,_one_mask_T_165,_one_mask_T_170,_one_mask_T_175,_one_mask_T_180,
    _one_mask_T_185,_one_mask_T_190,_one_mask_T_195,one_mask_lo_hi_lo,one_mask_lo_lo}; // @[Cat.scala 31:58]
  wire [7:0] one_mask_hi_lo_lo = {_one_mask_T_120,_one_mask_T_125,_one_mask_T_130,_one_mask_T_135,_one_mask_T_140,
    _one_mask_T_145,_one_mask_T_150,_one_mask_T_155}; // @[Cat.scala 31:58]
  wire [15:0] one_mask_hi_lo = {_one_mask_T_80,_one_mask_T_85,_one_mask_T_90,_one_mask_T_95,_one_mask_T_100,
    _one_mask_T_105,_one_mask_T_110,_one_mask_T_115,one_mask_hi_lo_lo}; // @[Cat.scala 31:58]
  wire [7:0] one_mask_hi_hi_lo = {_one_mask_T_40,_one_mask_T_45,_one_mask_T_50,_one_mask_T_55,_one_mask_T_60,
    _one_mask_T_65,_one_mask_T_70,_one_mask_T_75}; // @[Cat.scala 31:58]
  wire [31:0] one_mask_hi = {lza_io_f[63],_one_mask_T_5,_one_mask_T_10,_one_mask_T_15,_one_mask_T_20,_one_mask_T_25,
    _one_mask_T_30,_one_mask_T_35,one_mask_hi_hi_lo,one_mask_hi_lo}; // @[Cat.scala 31:58]
  wire [63:0] one_mask = {one_mask_hi,one_mask_lo}; // @[Cat.scala 31:58]
  wire [63:0] _lzc_error_T = in_abs & one_mask; // @[IntToFP.scala 53:41]
  wire  lzc_error = in_sign & ~(|_lzc_error_T); // @[IntToFP.scala 53:22]
  wire [126:0] _GEN_1 = {{63'd0}, in_abs}; // @[IntToFP.scala 55:29]
  wire [126:0] _in_shift_s1_T = _GEN_1 << lzc; // @[IntToFP.scala 55:29]
  wire [62:0] in_shift_s1 = _in_shift_s1_T[62:0]; // @[IntToFP.scala 55:36]
  wire [62:0] _in_norm_T_1 = {in_shift_s1[61:0],1'h0}; // @[Cat.scala 31:58]
  wire [5:0] _GEN_0 = {{5'd0}, lzc_error}; // @[IntToFP.scala 59:21]
  LZA lza ( // @[IntToFP.scala 37:19]
    .io_b(lza_io_b),
    .io_f(lza_io_f)
  );
  CLZ pos_lzc_clz ( // @[CLZ.scala 22:21]
    .io_in(pos_lzc_clz_io_in),
    .io_out(pos_lzc_clz_io_out)
  );
  CLZ neg_lzc_clz ( // @[CLZ.scala 22:21]
    .io_in(neg_lzc_clz_io_in),
    .io_out(neg_lzc_clz_io_out)
  );
  assign io_out_norm_int = lzc_error ? _in_norm_T_1 : in_shift_s1; // @[IntToFP.scala 56:20]
  assign io_out_lzc = lzc + _GEN_0; // @[IntToFP.scala 59:21]
  assign io_out_is_zero = io_in_int == 64'h0; // @[IntToFP.scala 60:24]
  assign io_out_sign = io_in_sign & _in_sign_T_2; // @[IntToFP.scala 32:28]
  assign lza_io_b = ~in_raw; // @[IntToFP.scala 39:15]
  assign pos_lzc_clz_io_in = io_in_int; // @[CLZ.scala 23:15]
  assign neg_lzc_clz_io_in = lza_io_f; // @[CLZ.scala 23:15]
endmodule

