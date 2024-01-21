module ClmulModule(
  input         clock,
  input  [63:0] io_src_0,
  input  [63:0] io_src_1,
  input  [6:0]  io_func,
  input         io_regEnable,
  output [63:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [127:0] _RAND_1;
  reg [127:0] _RAND_2;
  reg [127:0] _RAND_3;
  reg [127:0] _RAND_4;
  reg [127:0] _RAND_5;
  reg [127:0] _RAND_6;
  reg [127:0] _RAND_7;
  reg [127:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  wire [63:0] _mul0_0_T_1 = io_src_0[0] ? io_src_1 : 64'h0; // @[Bku.scala 102:19]
  wire [64:0] _mul0_1_T_1 = {io_src_1,1'h0}; // @[Cat.scala 31:58]
  wire [64:0] _mul0_1_T_2 = io_src_0[1] ? _mul0_1_T_1 : 65'h0; // @[Bku.scala 102:19]
  wire [65:0] _mul0_2_T_1 = {io_src_1,2'h0}; // @[Cat.scala 31:58]
  wire [65:0] _mul0_2_T_2 = io_src_0[2] ? _mul0_2_T_1 : 66'h0; // @[Bku.scala 102:19]
  wire [66:0] _mul0_3_T_1 = {io_src_1,3'h0}; // @[Cat.scala 31:58]
  wire [66:0] _mul0_3_T_2 = io_src_0[3] ? _mul0_3_T_1 : 67'h0; // @[Bku.scala 102:19]
  wire [67:0] _mul0_4_T_1 = {io_src_1,4'h0}; // @[Cat.scala 31:58]
  wire [67:0] _mul0_4_T_2 = io_src_0[4] ? _mul0_4_T_1 : 68'h0; // @[Bku.scala 102:19]
  wire [68:0] _mul0_5_T_1 = {io_src_1,5'h0}; // @[Cat.scala 31:58]
  wire [68:0] _mul0_5_T_2 = io_src_0[5] ? _mul0_5_T_1 : 69'h0; // @[Bku.scala 102:19]
  wire [69:0] _mul0_6_T_1 = {io_src_1,6'h0}; // @[Cat.scala 31:58]
  wire [69:0] _mul0_6_T_2 = io_src_0[6] ? _mul0_6_T_1 : 70'h0; // @[Bku.scala 102:19]
  wire [70:0] _mul0_7_T_1 = {io_src_1,7'h0}; // @[Cat.scala 31:58]
  wire [70:0] _mul0_7_T_2 = io_src_0[7] ? _mul0_7_T_1 : 71'h0; // @[Bku.scala 102:19]
  wire [71:0] _mul0_8_T_1 = {io_src_1,8'h0}; // @[Cat.scala 31:58]
  wire [71:0] _mul0_8_T_2 = io_src_0[8] ? _mul0_8_T_1 : 72'h0; // @[Bku.scala 102:19]
  wire [72:0] _mul0_9_T_1 = {io_src_1,9'h0}; // @[Cat.scala 31:58]
  wire [72:0] _mul0_9_T_2 = io_src_0[9] ? _mul0_9_T_1 : 73'h0; // @[Bku.scala 102:19]
  wire [73:0] _mul0_10_T_1 = {io_src_1,10'h0}; // @[Cat.scala 31:58]
  wire [73:0] _mul0_10_T_2 = io_src_0[10] ? _mul0_10_T_1 : 74'h0; // @[Bku.scala 102:19]
  wire [74:0] _mul0_11_T_1 = {io_src_1,11'h0}; // @[Cat.scala 31:58]
  wire [74:0] _mul0_11_T_2 = io_src_0[11] ? _mul0_11_T_1 : 75'h0; // @[Bku.scala 102:19]
  wire [75:0] _mul0_12_T_1 = {io_src_1,12'h0}; // @[Cat.scala 31:58]
  wire [75:0] _mul0_12_T_2 = io_src_0[12] ? _mul0_12_T_1 : 76'h0; // @[Bku.scala 102:19]
  wire [76:0] _mul0_13_T_1 = {io_src_1,13'h0}; // @[Cat.scala 31:58]
  wire [76:0] _mul0_13_T_2 = io_src_0[13] ? _mul0_13_T_1 : 77'h0; // @[Bku.scala 102:19]
  wire [77:0] _mul0_14_T_1 = {io_src_1,14'h0}; // @[Cat.scala 31:58]
  wire [77:0] _mul0_14_T_2 = io_src_0[14] ? _mul0_14_T_1 : 78'h0; // @[Bku.scala 102:19]
  wire [78:0] _mul0_15_T_1 = {io_src_1,15'h0}; // @[Cat.scala 31:58]
  wire [78:0] _mul0_15_T_2 = io_src_0[15] ? _mul0_15_T_1 : 79'h0; // @[Bku.scala 102:19]
  wire [79:0] _mul0_16_T_1 = {io_src_1,16'h0}; // @[Cat.scala 31:58]
  wire [79:0] _mul0_16_T_2 = io_src_0[16] ? _mul0_16_T_1 : 80'h0; // @[Bku.scala 102:19]
  wire [80:0] _mul0_17_T_1 = {io_src_1,17'h0}; // @[Cat.scala 31:58]
  wire [80:0] _mul0_17_T_2 = io_src_0[17] ? _mul0_17_T_1 : 81'h0; // @[Bku.scala 102:19]
  wire [81:0] _mul0_18_T_1 = {io_src_1,18'h0}; // @[Cat.scala 31:58]
  wire [81:0] _mul0_18_T_2 = io_src_0[18] ? _mul0_18_T_1 : 82'h0; // @[Bku.scala 102:19]
  wire [82:0] _mul0_19_T_1 = {io_src_1,19'h0}; // @[Cat.scala 31:58]
  wire [82:0] _mul0_19_T_2 = io_src_0[19] ? _mul0_19_T_1 : 83'h0; // @[Bku.scala 102:19]
  wire [83:0] _mul0_20_T_1 = {io_src_1,20'h0}; // @[Cat.scala 31:58]
  wire [83:0] _mul0_20_T_2 = io_src_0[20] ? _mul0_20_T_1 : 84'h0; // @[Bku.scala 102:19]
  wire [84:0] _mul0_21_T_1 = {io_src_1,21'h0}; // @[Cat.scala 31:58]
  wire [84:0] _mul0_21_T_2 = io_src_0[21] ? _mul0_21_T_1 : 85'h0; // @[Bku.scala 102:19]
  wire [85:0] _mul0_22_T_1 = {io_src_1,22'h0}; // @[Cat.scala 31:58]
  wire [85:0] _mul0_22_T_2 = io_src_0[22] ? _mul0_22_T_1 : 86'h0; // @[Bku.scala 102:19]
  wire [86:0] _mul0_23_T_1 = {io_src_1,23'h0}; // @[Cat.scala 31:58]
  wire [86:0] _mul0_23_T_2 = io_src_0[23] ? _mul0_23_T_1 : 87'h0; // @[Bku.scala 102:19]
  wire [87:0] _mul0_24_T_1 = {io_src_1,24'h0}; // @[Cat.scala 31:58]
  wire [87:0] _mul0_24_T_2 = io_src_0[24] ? _mul0_24_T_1 : 88'h0; // @[Bku.scala 102:19]
  wire [88:0] _mul0_25_T_1 = {io_src_1,25'h0}; // @[Cat.scala 31:58]
  wire [88:0] _mul0_25_T_2 = io_src_0[25] ? _mul0_25_T_1 : 89'h0; // @[Bku.scala 102:19]
  wire [89:0] _mul0_26_T_1 = {io_src_1,26'h0}; // @[Cat.scala 31:58]
  wire [89:0] _mul0_26_T_2 = io_src_0[26] ? _mul0_26_T_1 : 90'h0; // @[Bku.scala 102:19]
  wire [90:0] _mul0_27_T_1 = {io_src_1,27'h0}; // @[Cat.scala 31:58]
  wire [90:0] _mul0_27_T_2 = io_src_0[27] ? _mul0_27_T_1 : 91'h0; // @[Bku.scala 102:19]
  wire [91:0] _mul0_28_T_1 = {io_src_1,28'h0}; // @[Cat.scala 31:58]
  wire [91:0] _mul0_28_T_2 = io_src_0[28] ? _mul0_28_T_1 : 92'h0; // @[Bku.scala 102:19]
  wire [92:0] _mul0_29_T_1 = {io_src_1,29'h0}; // @[Cat.scala 31:58]
  wire [92:0] _mul0_29_T_2 = io_src_0[29] ? _mul0_29_T_1 : 93'h0; // @[Bku.scala 102:19]
  wire [93:0] _mul0_30_T_1 = {io_src_1,30'h0}; // @[Cat.scala 31:58]
  wire [93:0] _mul0_30_T_2 = io_src_0[30] ? _mul0_30_T_1 : 94'h0; // @[Bku.scala 102:19]
  wire [94:0] _mul0_31_T_1 = {io_src_1,31'h0}; // @[Cat.scala 31:58]
  wire [94:0] _mul0_31_T_2 = io_src_0[31] ? _mul0_31_T_1 : 95'h0; // @[Bku.scala 102:19]
  wire [95:0] _mul0_32_T_1 = {io_src_1,32'h0}; // @[Cat.scala 31:58]
  wire [95:0] _mul0_32_T_2 = io_src_0[32] ? _mul0_32_T_1 : 96'h0; // @[Bku.scala 102:19]
  wire [96:0] _mul0_33_T_1 = {io_src_1,33'h0}; // @[Cat.scala 31:58]
  wire [96:0] _mul0_33_T_2 = io_src_0[33] ? _mul0_33_T_1 : 97'h0; // @[Bku.scala 102:19]
  wire [97:0] _mul0_34_T_1 = {io_src_1,34'h0}; // @[Cat.scala 31:58]
  wire [97:0] _mul0_34_T_2 = io_src_0[34] ? _mul0_34_T_1 : 98'h0; // @[Bku.scala 102:19]
  wire [98:0] _mul0_35_T_1 = {io_src_1,35'h0}; // @[Cat.scala 31:58]
  wire [98:0] _mul0_35_T_2 = io_src_0[35] ? _mul0_35_T_1 : 99'h0; // @[Bku.scala 102:19]
  wire [99:0] _mul0_36_T_1 = {io_src_1,36'h0}; // @[Cat.scala 31:58]
  wire [99:0] _mul0_36_T_2 = io_src_0[36] ? _mul0_36_T_1 : 100'h0; // @[Bku.scala 102:19]
  wire [100:0] _mul0_37_T_1 = {io_src_1,37'h0}; // @[Cat.scala 31:58]
  wire [100:0] _mul0_37_T_2 = io_src_0[37] ? _mul0_37_T_1 : 101'h0; // @[Bku.scala 102:19]
  wire [101:0] _mul0_38_T_1 = {io_src_1,38'h0}; // @[Cat.scala 31:58]
  wire [101:0] _mul0_38_T_2 = io_src_0[38] ? _mul0_38_T_1 : 102'h0; // @[Bku.scala 102:19]
  wire [102:0] _mul0_39_T_1 = {io_src_1,39'h0}; // @[Cat.scala 31:58]
  wire [102:0] _mul0_39_T_2 = io_src_0[39] ? _mul0_39_T_1 : 103'h0; // @[Bku.scala 102:19]
  wire [103:0] _mul0_40_T_1 = {io_src_1,40'h0}; // @[Cat.scala 31:58]
  wire [103:0] _mul0_40_T_2 = io_src_0[40] ? _mul0_40_T_1 : 104'h0; // @[Bku.scala 102:19]
  wire [104:0] _mul0_41_T_1 = {io_src_1,41'h0}; // @[Cat.scala 31:58]
  wire [104:0] _mul0_41_T_2 = io_src_0[41] ? _mul0_41_T_1 : 105'h0; // @[Bku.scala 102:19]
  wire [105:0] _mul0_42_T_1 = {io_src_1,42'h0}; // @[Cat.scala 31:58]
  wire [105:0] _mul0_42_T_2 = io_src_0[42] ? _mul0_42_T_1 : 106'h0; // @[Bku.scala 102:19]
  wire [106:0] _mul0_43_T_1 = {io_src_1,43'h0}; // @[Cat.scala 31:58]
  wire [106:0] _mul0_43_T_2 = io_src_0[43] ? _mul0_43_T_1 : 107'h0; // @[Bku.scala 102:19]
  wire [107:0] _mul0_44_T_1 = {io_src_1,44'h0}; // @[Cat.scala 31:58]
  wire [107:0] _mul0_44_T_2 = io_src_0[44] ? _mul0_44_T_1 : 108'h0; // @[Bku.scala 102:19]
  wire [108:0] _mul0_45_T_1 = {io_src_1,45'h0}; // @[Cat.scala 31:58]
  wire [108:0] _mul0_45_T_2 = io_src_0[45] ? _mul0_45_T_1 : 109'h0; // @[Bku.scala 102:19]
  wire [109:0] _mul0_46_T_1 = {io_src_1,46'h0}; // @[Cat.scala 31:58]
  wire [109:0] _mul0_46_T_2 = io_src_0[46] ? _mul0_46_T_1 : 110'h0; // @[Bku.scala 102:19]
  wire [110:0] _mul0_47_T_1 = {io_src_1,47'h0}; // @[Cat.scala 31:58]
  wire [110:0] _mul0_47_T_2 = io_src_0[47] ? _mul0_47_T_1 : 111'h0; // @[Bku.scala 102:19]
  wire [111:0] _mul0_48_T_1 = {io_src_1,48'h0}; // @[Cat.scala 31:58]
  wire [111:0] _mul0_48_T_2 = io_src_0[48] ? _mul0_48_T_1 : 112'h0; // @[Bku.scala 102:19]
  wire [112:0] _mul0_49_T_1 = {io_src_1,49'h0}; // @[Cat.scala 31:58]
  wire [112:0] _mul0_49_T_2 = io_src_0[49] ? _mul0_49_T_1 : 113'h0; // @[Bku.scala 102:19]
  wire [113:0] _mul0_50_T_1 = {io_src_1,50'h0}; // @[Cat.scala 31:58]
  wire [113:0] _mul0_50_T_2 = io_src_0[50] ? _mul0_50_T_1 : 114'h0; // @[Bku.scala 102:19]
  wire [114:0] _mul0_51_T_1 = {io_src_1,51'h0}; // @[Cat.scala 31:58]
  wire [114:0] _mul0_51_T_2 = io_src_0[51] ? _mul0_51_T_1 : 115'h0; // @[Bku.scala 102:19]
  wire [115:0] _mul0_52_T_1 = {io_src_1,52'h0}; // @[Cat.scala 31:58]
  wire [115:0] _mul0_52_T_2 = io_src_0[52] ? _mul0_52_T_1 : 116'h0; // @[Bku.scala 102:19]
  wire [116:0] _mul0_53_T_1 = {io_src_1,53'h0}; // @[Cat.scala 31:58]
  wire [116:0] _mul0_53_T_2 = io_src_0[53] ? _mul0_53_T_1 : 117'h0; // @[Bku.scala 102:19]
  wire [117:0] _mul0_54_T_1 = {io_src_1,54'h0}; // @[Cat.scala 31:58]
  wire [117:0] _mul0_54_T_2 = io_src_0[54] ? _mul0_54_T_1 : 118'h0; // @[Bku.scala 102:19]
  wire [118:0] _mul0_55_T_1 = {io_src_1,55'h0}; // @[Cat.scala 31:58]
  wire [118:0] _mul0_55_T_2 = io_src_0[55] ? _mul0_55_T_1 : 119'h0; // @[Bku.scala 102:19]
  wire [119:0] _mul0_56_T_1 = {io_src_1,56'h0}; // @[Cat.scala 31:58]
  wire [119:0] _mul0_56_T_2 = io_src_0[56] ? _mul0_56_T_1 : 120'h0; // @[Bku.scala 102:19]
  wire [120:0] _mul0_57_T_1 = {io_src_1,57'h0}; // @[Cat.scala 31:58]
  wire [120:0] _mul0_57_T_2 = io_src_0[57] ? _mul0_57_T_1 : 121'h0; // @[Bku.scala 102:19]
  wire [121:0] _mul0_58_T_1 = {io_src_1,58'h0}; // @[Cat.scala 31:58]
  wire [121:0] _mul0_58_T_2 = io_src_0[58] ? _mul0_58_T_1 : 122'h0; // @[Bku.scala 102:19]
  wire [122:0] _mul0_59_T_1 = {io_src_1,59'h0}; // @[Cat.scala 31:58]
  wire [122:0] _mul0_59_T_2 = io_src_0[59] ? _mul0_59_T_1 : 123'h0; // @[Bku.scala 102:19]
  wire [123:0] _mul0_60_T_1 = {io_src_1,60'h0}; // @[Cat.scala 31:58]
  wire [123:0] _mul0_60_T_2 = io_src_0[60] ? _mul0_60_T_1 : 124'h0; // @[Bku.scala 102:19]
  wire [124:0] _mul0_61_T_1 = {io_src_1,61'h0}; // @[Cat.scala 31:58]
  wire [124:0] _mul0_61_T_2 = io_src_0[61] ? _mul0_61_T_1 : 125'h0; // @[Bku.scala 102:19]
  wire [125:0] _mul0_62_T_1 = {io_src_1,62'h0}; // @[Cat.scala 31:58]
  wire [125:0] _mul0_62_T_2 = io_src_0[62] ? _mul0_62_T_1 : 126'h0; // @[Bku.scala 102:19]
  wire [126:0] _mul0_63_T_1 = {io_src_1,63'h0}; // @[Cat.scala 31:58]
  wire [126:0] _mul0_63_T_2 = io_src_0[63] ? _mul0_63_T_1 : 127'h0; // @[Bku.scala 102:19]
  wire [127:0] mul0_0 = {{64'd0}, _mul0_0_T_1}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_1 = {{63'd0}, _mul0_1_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_0 = mul0_0 ^ mul0_1; // @[Bku.scala 104:48]
  wire [127:0] mul0_2 = {{62'd0}, _mul0_2_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_3 = {{61'd0}, _mul0_3_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_1 = mul0_2 ^ mul0_3; // @[Bku.scala 104:48]
  wire [127:0] mul0_4 = {{60'd0}, _mul0_4_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_5 = {{59'd0}, _mul0_5_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_2 = mul0_4 ^ mul0_5; // @[Bku.scala 104:48]
  wire [127:0] mul0_6 = {{58'd0}, _mul0_6_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_7 = {{57'd0}, _mul0_7_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_3 = mul0_6 ^ mul0_7; // @[Bku.scala 104:48]
  wire [127:0] mul0_8 = {{56'd0}, _mul0_8_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_9 = {{55'd0}, _mul0_9_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_4 = mul0_8 ^ mul0_9; // @[Bku.scala 104:48]
  wire [127:0] mul0_10 = {{54'd0}, _mul0_10_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_11 = {{53'd0}, _mul0_11_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_5 = mul0_10 ^ mul0_11; // @[Bku.scala 104:48]
  wire [127:0] mul0_12 = {{52'd0}, _mul0_12_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_13 = {{51'd0}, _mul0_13_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_6 = mul0_12 ^ mul0_13; // @[Bku.scala 104:48]
  wire [127:0] mul0_14 = {{50'd0}, _mul0_14_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_15 = {{49'd0}, _mul0_15_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_7 = mul0_14 ^ mul0_15; // @[Bku.scala 104:48]
  wire [127:0] mul0_16 = {{48'd0}, _mul0_16_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_17 = {{47'd0}, _mul0_17_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_8 = mul0_16 ^ mul0_17; // @[Bku.scala 104:48]
  wire [127:0] mul0_18 = {{46'd0}, _mul0_18_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_19 = {{45'd0}, _mul0_19_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_9 = mul0_18 ^ mul0_19; // @[Bku.scala 104:48]
  wire [127:0] mul0_20 = {{44'd0}, _mul0_20_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_21 = {{43'd0}, _mul0_21_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_10 = mul0_20 ^ mul0_21; // @[Bku.scala 104:48]
  wire [127:0] mul0_22 = {{42'd0}, _mul0_22_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_23 = {{41'd0}, _mul0_23_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_11 = mul0_22 ^ mul0_23; // @[Bku.scala 104:48]
  wire [127:0] mul0_24 = {{40'd0}, _mul0_24_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_25 = {{39'd0}, _mul0_25_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_12 = mul0_24 ^ mul0_25; // @[Bku.scala 104:48]
  wire [127:0] mul0_26 = {{38'd0}, _mul0_26_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_27 = {{37'd0}, _mul0_27_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_13 = mul0_26 ^ mul0_27; // @[Bku.scala 104:48]
  wire [127:0] mul0_28 = {{36'd0}, _mul0_28_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_29 = {{35'd0}, _mul0_29_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_14 = mul0_28 ^ mul0_29; // @[Bku.scala 104:48]
  wire [127:0] mul0_30 = {{34'd0}, _mul0_30_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_31 = {{33'd0}, _mul0_31_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_15 = mul0_30 ^ mul0_31; // @[Bku.scala 104:48]
  wire [127:0] mul0_32 = {{32'd0}, _mul0_32_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_33 = {{31'd0}, _mul0_33_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_16 = mul0_32 ^ mul0_33; // @[Bku.scala 104:48]
  wire [127:0] mul0_34 = {{30'd0}, _mul0_34_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_35 = {{29'd0}, _mul0_35_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_17 = mul0_34 ^ mul0_35; // @[Bku.scala 104:48]
  wire [127:0] mul0_36 = {{28'd0}, _mul0_36_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_37 = {{27'd0}, _mul0_37_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_18 = mul0_36 ^ mul0_37; // @[Bku.scala 104:48]
  wire [127:0] mul0_38 = {{26'd0}, _mul0_38_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_39 = {{25'd0}, _mul0_39_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_19 = mul0_38 ^ mul0_39; // @[Bku.scala 104:48]
  wire [127:0] mul0_40 = {{24'd0}, _mul0_40_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_41 = {{23'd0}, _mul0_41_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_20 = mul0_40 ^ mul0_41; // @[Bku.scala 104:48]
  wire [127:0] mul0_42 = {{22'd0}, _mul0_42_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_43 = {{21'd0}, _mul0_43_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_21 = mul0_42 ^ mul0_43; // @[Bku.scala 104:48]
  wire [127:0] mul0_44 = {{20'd0}, _mul0_44_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_45 = {{19'd0}, _mul0_45_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_22 = mul0_44 ^ mul0_45; // @[Bku.scala 104:48]
  wire [127:0] mul0_46 = {{18'd0}, _mul0_46_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_47 = {{17'd0}, _mul0_47_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_23 = mul0_46 ^ mul0_47; // @[Bku.scala 104:48]
  wire [127:0] mul0_48 = {{16'd0}, _mul0_48_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_49 = {{15'd0}, _mul0_49_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_24 = mul0_48 ^ mul0_49; // @[Bku.scala 104:48]
  wire [127:0] mul0_50 = {{14'd0}, _mul0_50_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_51 = {{13'd0}, _mul0_51_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_25 = mul0_50 ^ mul0_51; // @[Bku.scala 104:48]
  wire [127:0] mul0_52 = {{12'd0}, _mul0_52_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_53 = {{11'd0}, _mul0_53_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_26 = mul0_52 ^ mul0_53; // @[Bku.scala 104:48]
  wire [127:0] mul0_54 = {{10'd0}, _mul0_54_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_55 = {{9'd0}, _mul0_55_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_27 = mul0_54 ^ mul0_55; // @[Bku.scala 104:48]
  wire [127:0] mul0_56 = {{8'd0}, _mul0_56_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_57 = {{7'd0}, _mul0_57_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_28 = mul0_56 ^ mul0_57; // @[Bku.scala 104:48]
  wire [127:0] mul0_58 = {{6'd0}, _mul0_58_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_59 = {{5'd0}, _mul0_59_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_29 = mul0_58 ^ mul0_59; // @[Bku.scala 104:48]
  wire [127:0] mul0_60 = {{4'd0}, _mul0_60_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_61 = {{3'd0}, _mul0_61_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_30 = mul0_60 ^ mul0_61; // @[Bku.scala 104:48]
  wire [127:0] mul0_62 = {{2'd0}, _mul0_62_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul0_63 = {{1'd0}, _mul0_63_T_2}; // @[Bku.scala 102:13 97:18]
  wire [127:0] mul1_31 = mul0_62 ^ mul0_63; // @[Bku.scala 104:48]
  wire [127:0] mul2_0 = mul1_0 ^ mul1_1; // @[Bku.scala 105:48]
  wire [127:0] mul2_1 = mul1_2 ^ mul1_3; // @[Bku.scala 105:48]
  wire [127:0] mul2_2 = mul1_4 ^ mul1_5; // @[Bku.scala 105:48]
  wire [127:0] mul2_3 = mul1_6 ^ mul1_7; // @[Bku.scala 105:48]
  wire [127:0] mul2_4 = mul1_8 ^ mul1_9; // @[Bku.scala 105:48]
  wire [127:0] mul2_5 = mul1_10 ^ mul1_11; // @[Bku.scala 105:48]
  wire [127:0] mul2_6 = mul1_12 ^ mul1_13; // @[Bku.scala 105:48]
  wire [127:0] mul2_7 = mul1_14 ^ mul1_15; // @[Bku.scala 105:48]
  wire [127:0] mul2_8 = mul1_16 ^ mul1_17; // @[Bku.scala 105:48]
  wire [127:0] mul2_9 = mul1_18 ^ mul1_19; // @[Bku.scala 105:48]
  wire [127:0] mul2_10 = mul1_20 ^ mul1_21; // @[Bku.scala 105:48]
  wire [127:0] mul2_11 = mul1_22 ^ mul1_23; // @[Bku.scala 105:48]
  wire [127:0] mul2_12 = mul1_24 ^ mul1_25; // @[Bku.scala 105:48]
  wire [127:0] mul2_13 = mul1_26 ^ mul1_27; // @[Bku.scala 105:48]
  wire [127:0] mul2_14 = mul1_28 ^ mul1_29; // @[Bku.scala 105:48]
  wire [127:0] mul2_15 = mul1_30 ^ mul1_31; // @[Bku.scala 105:48]
  reg [6:0] funcReg; // @[Reg.scala 16:16]
  reg [127:0] mul3_0; // @[Bku.scala 109:17]
  reg [127:0] mul3_1; // @[Bku.scala 109:17]
  reg [127:0] mul3_2; // @[Bku.scala 109:17]
  reg [127:0] mul3_3; // @[Bku.scala 109:17]
  reg [127:0] mul3_4; // @[Bku.scala 109:17]
  reg [127:0] mul3_5; // @[Bku.scala 109:17]
  reg [127:0] mul3_6; // @[Bku.scala 109:17]
  reg [127:0] mul3_7; // @[Bku.scala 109:17]
  wire [127:0] _mul3_0_T = mul2_0 ^ mul2_1; // @[Bku.scala 111:49]
  wire [127:0] _mul3_1_T = mul2_2 ^ mul2_3; // @[Bku.scala 111:49]
  wire [127:0] _mul3_2_T = mul2_4 ^ mul2_5; // @[Bku.scala 111:49]
  wire [127:0] _mul3_3_T = mul2_6 ^ mul2_7; // @[Bku.scala 111:49]
  wire [127:0] _mul3_4_T = mul2_8 ^ mul2_9; // @[Bku.scala 111:49]
  wire [127:0] _mul3_5_T = mul2_10 ^ mul2_11; // @[Bku.scala 111:49]
  wire [127:0] _mul3_6_T = mul2_12 ^ mul2_13; // @[Bku.scala 111:49]
  wire [127:0] _mul3_7_T = mul2_14 ^ mul2_15; // @[Bku.scala 111:49]
  wire [127:0] _res_T = mul3_0 ^ mul3_1; // @[ParallelMux.scala 58:52]
  wire [127:0] _res_T_1 = mul3_2 ^ mul3_3; // @[ParallelMux.scala 58:52]
  wire [127:0] _res_T_2 = _res_T ^ _res_T_1; // @[ParallelMux.scala 58:52]
  wire [127:0] _res_T_3 = mul3_4 ^ mul3_5; // @[ParallelMux.scala 58:52]
  wire [127:0] _res_T_4 = mul3_6 ^ mul3_7; // @[ParallelMux.scala 58:52]
  wire [127:0] _res_T_5 = _res_T_3 ^ _res_T_4; // @[ParallelMux.scala 58:52]
  wire [127:0] res = _res_T_2 ^ _res_T_5; // @[ParallelMux.scala 58:52]
  wire [63:0] clmul = res[63:0]; // @[Bku.scala 117:19]
  wire [63:0] clmulh = res[127:64]; // @[Bku.scala 118:19]
  wire [63:0] clmulr = res[126:63]; // @[Bku.scala 119:19]
  wire [63:0] _io_out_T_3 = 7'h1 == funcReg ? clmulh : clmul; // @[Mux.scala 81:58]
  assign io_out = 7'h2 == funcReg ? clmulr : _io_out_T_3; // @[Mux.scala 81:58]
  always @(posedge clock) begin
    if (io_regEnable) begin // @[Reg.scala 17:18]
      funcReg <= io_func; // @[Reg.scala 17:22]
    end
    if (io_regEnable) begin // @[Bku.scala 110:23]
      mul3_0 <= _mul3_0_T; // @[Bku.scala 111:36]
    end
    if (io_regEnable) begin // @[Bku.scala 110:23]
      mul3_1 <= _mul3_1_T; // @[Bku.scala 111:36]
    end
    if (io_regEnable) begin // @[Bku.scala 110:23]
      mul3_2 <= _mul3_2_T; // @[Bku.scala 111:36]
    end
    if (io_regEnable) begin // @[Bku.scala 110:23]
      mul3_3 <= _mul3_3_T; // @[Bku.scala 111:36]
    end
    if (io_regEnable) begin // @[Bku.scala 110:23]
      mul3_4 <= _mul3_4_T; // @[Bku.scala 111:36]
    end
    if (io_regEnable) begin // @[Bku.scala 110:23]
      mul3_5 <= _mul3_5_T; // @[Bku.scala 111:36]
    end
    if (io_regEnable) begin // @[Bku.scala 110:23]
      mul3_6 <= _mul3_6_T; // @[Bku.scala 111:36]
    end
    if (io_regEnable) begin // @[Bku.scala 110:23]
      mul3_7 <= _mul3_7_T; // @[Bku.scala 111:36]
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
  funcReg = _RAND_0[6:0];
  _RAND_1 = {4{`RANDOM}};
  mul3_0 = _RAND_1[127:0];
  _RAND_2 = {4{`RANDOM}};
  mul3_1 = _RAND_2[127:0];
  _RAND_3 = {4{`RANDOM}};
  mul3_2 = _RAND_3[127:0];
  _RAND_4 = {4{`RANDOM}};
  mul3_3 = _RAND_4[127:0];
  _RAND_5 = {4{`RANDOM}};
  mul3_4 = _RAND_5[127:0];
  _RAND_6 = {4{`RANDOM}};
  mul3_5 = _RAND_6[127:0];
  _RAND_7 = {4{`RANDOM}};
  mul3_6 = _RAND_7[127:0];
  _RAND_8 = {4{`RANDOM}};
  mul3_7 = _RAND_8[127:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

