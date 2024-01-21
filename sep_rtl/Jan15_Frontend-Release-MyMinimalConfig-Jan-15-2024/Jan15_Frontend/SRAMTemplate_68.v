module SRAMTemplate_68(
  input         clock,
  input         reset,
  input         io_rreq_valid,
  input  [2:0]  io_rreq_bits_setIdx,
  output [7:0]  io_rresp_data_0_folded_hist_hist_17_folded_hist,
  output [7:0]  io_rresp_data_0_folded_hist_hist_16_folded_hist,
  output [10:0] io_rresp_data_0_folded_hist_hist_15_folded_hist,
  output [6:0]  io_rresp_data_0_folded_hist_hist_14_folded_hist,
  output [6:0]  io_rresp_data_0_folded_hist_hist_13_folded_hist,
  output [6:0]  io_rresp_data_0_folded_hist_hist_12_folded_hist,
  output [7:0]  io_rresp_data_0_folded_hist_hist_11_folded_hist,
  output [8:0]  io_rresp_data_0_folded_hist_hist_10_folded_hist,
  output [6:0]  io_rresp_data_0_folded_hist_hist_9_folded_hist,
  output [7:0]  io_rresp_data_0_folded_hist_hist_8_folded_hist,
  output [8:0]  io_rresp_data_0_folded_hist_hist_7_folded_hist,
  output [8:0]  io_rresp_data_0_folded_hist_hist_6_folded_hist,
  output [10:0] io_rresp_data_0_folded_hist_hist_5_folded_hist,
  output [3:0]  io_rresp_data_0_folded_hist_hist_4_folded_hist,
  output [10:0] io_rresp_data_0_folded_hist_hist_3_folded_hist,
  output [7:0]  io_rresp_data_0_folded_hist_hist_2_folded_hist,
  output [7:0]  io_rresp_data_0_folded_hist_hist_1_folded_hist,
  output [7:0]  io_rresp_data_0_folded_hist_hist_0_folded_hist,
  output        io_rresp_data_0_afhob_afhob_5_bits_0,
  output        io_rresp_data_0_afhob_afhob_5_bits_1,
  output        io_rresp_data_0_afhob_afhob_5_bits_2,
  output        io_rresp_data_0_afhob_afhob_5_bits_3,
  output        io_rresp_data_0_afhob_afhob_4_bits_0,
  output        io_rresp_data_0_afhob_afhob_4_bits_1,
  output        io_rresp_data_0_afhob_afhob_4_bits_2,
  output        io_rresp_data_0_afhob_afhob_3_bits_0,
  output        io_rresp_data_0_afhob_afhob_3_bits_1,
  output        io_rresp_data_0_afhob_afhob_3_bits_2,
  output        io_rresp_data_0_afhob_afhob_3_bits_3,
  output        io_rresp_data_0_afhob_afhob_2_bits_0,
  output        io_rresp_data_0_afhob_afhob_2_bits_1,
  output        io_rresp_data_0_afhob_afhob_2_bits_2,
  output        io_rresp_data_0_afhob_afhob_2_bits_3,
  output        io_rresp_data_0_afhob_afhob_1_bits_0,
  output        io_rresp_data_0_afhob_afhob_1_bits_1,
  output        io_rresp_data_0_afhob_afhob_1_bits_2,
  output        io_rresp_data_0_afhob_afhob_1_bits_3,
  output        io_rresp_data_0_afhob_afhob_0_bits_0,
  output        io_rresp_data_0_afhob_afhob_0_bits_1,
  output        io_rresp_data_0_afhob_afhob_0_bits_2,
  output        io_rresp_data_0_afhob_afhob_0_bits_3,
  output [2:0]  io_rresp_data_0_lastBrNumOH,
  output        io_rresp_data_0_histPtr_flag,
  output [7:0]  io_rresp_data_0_histPtr_value,
  output [4:0]  io_rresp_data_0_rasSp,
  output [38:0] io_rresp_data_0_rasTop_retAddr,
  output [7:0]  io_rresp_data_0_rasTop_ctr,
  input         io_wreq_valid,
  input  [2:0]  io_wreq_bits_setIdx,
  input  [7:0]  io_wreq_bits_data_0_folded_hist_hist_17_folded_hist,
  input  [7:0]  io_wreq_bits_data_0_folded_hist_hist_16_folded_hist,
  input  [10:0] io_wreq_bits_data_0_folded_hist_hist_15_folded_hist,
  input  [6:0]  io_wreq_bits_data_0_folded_hist_hist_14_folded_hist,
  input  [6:0]  io_wreq_bits_data_0_folded_hist_hist_13_folded_hist,
  input  [6:0]  io_wreq_bits_data_0_folded_hist_hist_12_folded_hist,
  input  [7:0]  io_wreq_bits_data_0_folded_hist_hist_11_folded_hist,
  input  [8:0]  io_wreq_bits_data_0_folded_hist_hist_10_folded_hist,
  input  [6:0]  io_wreq_bits_data_0_folded_hist_hist_9_folded_hist,
  input  [7:0]  io_wreq_bits_data_0_folded_hist_hist_8_folded_hist,
  input  [8:0]  io_wreq_bits_data_0_folded_hist_hist_7_folded_hist,
  input  [8:0]  io_wreq_bits_data_0_folded_hist_hist_6_folded_hist,
  input  [10:0] io_wreq_bits_data_0_folded_hist_hist_5_folded_hist,
  input  [3:0]  io_wreq_bits_data_0_folded_hist_hist_4_folded_hist,
  input  [10:0] io_wreq_bits_data_0_folded_hist_hist_3_folded_hist,
  input  [7:0]  io_wreq_bits_data_0_folded_hist_hist_2_folded_hist,
  input  [7:0]  io_wreq_bits_data_0_folded_hist_hist_1_folded_hist,
  input  [7:0]  io_wreq_bits_data_0_folded_hist_hist_0_folded_hist,
  input         io_wreq_bits_data_0_afhob_afhob_5_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_5_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_5_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_5_bits_3,
  input         io_wreq_bits_data_0_afhob_afhob_4_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_4_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_4_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_4_bits_3,
  input         io_wreq_bits_data_0_afhob_afhob_3_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_3_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_3_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_3_bits_3,
  input         io_wreq_bits_data_0_afhob_afhob_2_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_2_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_2_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_2_bits_3,
  input         io_wreq_bits_data_0_afhob_afhob_1_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_1_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_1_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_1_bits_3,
  input         io_wreq_bits_data_0_afhob_afhob_0_bits_0,
  input         io_wreq_bits_data_0_afhob_afhob_0_bits_1,
  input         io_wreq_bits_data_0_afhob_afhob_0_bits_2,
  input         io_wreq_bits_data_0_afhob_afhob_0_bits_3,
  input  [2:0]  io_wreq_bits_data_0_lastBrNumOH,
  input         io_wreq_bits_data_0_histPtr_flag,
  input  [7:0]  io_wreq_bits_data_0_histPtr_value,
  input  [4:0]  io_wreq_bits_data_0_rasSp,
  input  [38:0] io_wreq_bits_data_0_rasTop_retAddr,
  input  [7:0]  io_wreq_bits_data_0_rasTop_ctr
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire [2:0] array_R0_addr; // @[SRAMTemplate.scala 105:26]
  wire  array_R0_en; // @[SRAMTemplate.scala 105:26]
  wire  array_R0_clk; // @[SRAMTemplate.scala 105:26]
  wire [235:0] array_R0_data_0; // @[SRAMTemplate.scala 105:26]
  wire [2:0] array_W0_addr; // @[SRAMTemplate.scala 105:26]
  wire  array_W0_en; // @[SRAMTemplate.scala 105:26]
  wire  array_W0_clk; // @[SRAMTemplate.scala 105:26]
  wire [235:0] array_W0_data_0; // @[SRAMTemplate.scala 105:26]
  wire [63:0] wdata_lo_lo_lo = {io_wreq_bits_data_0_lastBrNumOH,io_wreq_bits_data_0_histPtr_flag,
    io_wreq_bits_data_0_histPtr_value,io_wreq_bits_data_0_rasSp,io_wreq_bits_data_0_rasTop_retAddr,
    io_wreq_bits_data_0_rasTop_ctr}; // @[SRAMTemplate.scala 126:102]
  wire [69:0] wdata_lo_lo = {io_wreq_bits_data_0_afhob_afhob_1_bits_1,io_wreq_bits_data_0_afhob_afhob_1_bits_0,
    io_wreq_bits_data_0_afhob_afhob_0_bits_3,io_wreq_bits_data_0_afhob_afhob_0_bits_2,
    io_wreq_bits_data_0_afhob_afhob_0_bits_1,io_wreq_bits_data_0_afhob_afhob_0_bits_0,wdata_lo_lo_lo}; // @[SRAMTemplate.scala 126:102]
  wire [5:0] wdata_lo_hi_lo = {io_wreq_bits_data_0_afhob_afhob_2_bits_3,io_wreq_bits_data_0_afhob_afhob_2_bits_2,
    io_wreq_bits_data_0_afhob_afhob_2_bits_1,io_wreq_bits_data_0_afhob_afhob_2_bits_0,
    io_wreq_bits_data_0_afhob_afhob_1_bits_3,io_wreq_bits_data_0_afhob_afhob_1_bits_2}; // @[SRAMTemplate.scala 126:102]
  wire [81:0] wdata_lo = {io_wreq_bits_data_0_afhob_afhob_4_bits_1,io_wreq_bits_data_0_afhob_afhob_4_bits_0,
    io_wreq_bits_data_0_afhob_afhob_3_bits_3,io_wreq_bits_data_0_afhob_afhob_3_bits_2,
    io_wreq_bits_data_0_afhob_afhob_3_bits_1,io_wreq_bits_data_0_afhob_afhob_3_bits_0,wdata_lo_hi_lo,wdata_lo_lo}; // @[SRAMTemplate.scala 126:102]
  wire [5:0] wdata_hi_lo_lo = {io_wreq_bits_data_0_afhob_afhob_5_bits_3,io_wreq_bits_data_0_afhob_afhob_5_bits_2,
    io_wreq_bits_data_0_afhob_afhob_5_bits_1,io_wreq_bits_data_0_afhob_afhob_5_bits_0,
    io_wreq_bits_data_0_afhob_afhob_4_bits_3,io_wreq_bits_data_0_afhob_afhob_4_bits_2}; // @[SRAMTemplate.scala 126:102]
  wire [55:0] wdata_hi_lo = {io_wreq_bits_data_0_folded_hist_hist_5_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_4_folded_hist,io_wreq_bits_data_0_folded_hist_hist_3_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_2_folded_hist,io_wreq_bits_data_0_folded_hist_hist_1_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_0_folded_hist,wdata_hi_lo_lo}; // @[SRAMTemplate.scala 126:102]
  wire [49:0] wdata_hi_hi_lo = {io_wreq_bits_data_0_folded_hist_hist_11_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_10_folded_hist,io_wreq_bits_data_0_folded_hist_hist_9_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_8_folded_hist,io_wreq_bits_data_0_folded_hist_hist_7_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_6_folded_hist}; // @[SRAMTemplate.scala 126:102]
  wire [153:0] wdata_hi = {io_wreq_bits_data_0_folded_hist_hist_17_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_16_folded_hist,io_wreq_bits_data_0_folded_hist_hist_15_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_14_folded_hist,io_wreq_bits_data_0_folded_hist_hist_13_folded_hist,
    io_wreq_bits_data_0_folded_hist_hist_12_folded_hist,wdata_hi_hi_lo,wdata_hi_lo}; // @[SRAMTemplate.scala 126:102]
  reg [63:0] bypass_wdata_lfsr; // @[LFSR64.scala 27:33]
  wire  bypass_wdata_xor = bypass_wdata_lfsr[0] ^ bypass_wdata_lfsr[1] ^ bypass_wdata_lfsr[3] ^ bypass_wdata_lfsr[4]; // @[LFSR64.scala 29:43]
  wire [63:0] _bypass_wdata_lfsr_T_2 = {bypass_wdata_xor,bypass_wdata_lfsr[63:1]}; // @[Cat.scala 31:58]
  reg  bypass_mask_need_check; // @[SRAMTemplate.scala 135:29]
  reg [2:0] bypass_mask_waddr_reg; // @[SRAMTemplate.scala 136:28]
  reg [2:0] bypass_mask_raddr_reg; // @[SRAMTemplate.scala 137:28]
  wire  bypass_mask_bypass = bypass_mask_need_check & bypass_mask_waddr_reg == bypass_mask_raddr_reg; // @[SRAMTemplate.scala 139:39]
  wire [235:0] bypass_wdata_0 = {{172'd0}, bypass_wdata_lfsr}; // @[SRAMTemplate.scala 143:{58,58}]
  wire [235:0] mem_rdata_0 = bypass_mask_bypass ? bypass_wdata_0 : array_R0_data_0; // @[SRAMTemplate.scala 148:30]
  array_10 array ( // @[SRAMTemplate.scala 105:26]
    .R0_addr(array_R0_addr),
    .R0_en(array_R0_en),
    .R0_clk(array_R0_clk),
    .R0_data_0(array_R0_data_0),
    .W0_addr(array_W0_addr),
    .W0_en(array_W0_en),
    .W0_clk(array_W0_clk),
    .W0_data_0(array_W0_data_0)
  );
  assign io_rresp_data_0_folded_hist_hist_17_folded_hist = mem_rdata_0[235:228]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_folded_hist_hist_16_folded_hist = mem_rdata_0[227:220]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_folded_hist_hist_15_folded_hist = mem_rdata_0[219:209]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_folded_hist_hist_14_folded_hist = mem_rdata_0[208:202]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_folded_hist_hist_13_folded_hist = mem_rdata_0[201:195]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_folded_hist_hist_12_folded_hist = mem_rdata_0[194:188]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_folded_hist_hist_11_folded_hist = mem_rdata_0[187:180]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_folded_hist_hist_10_folded_hist = mem_rdata_0[179:171]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_folded_hist_hist_9_folded_hist = mem_rdata_0[170:164]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_folded_hist_hist_8_folded_hist = mem_rdata_0[163:156]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_folded_hist_hist_7_folded_hist = mem_rdata_0[155:147]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_folded_hist_hist_6_folded_hist = mem_rdata_0[146:138]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_folded_hist_hist_5_folded_hist = mem_rdata_0[137:127]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_folded_hist_hist_4_folded_hist = mem_rdata_0[126:123]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_folded_hist_hist_3_folded_hist = mem_rdata_0[122:112]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_folded_hist_hist_2_folded_hist = mem_rdata_0[111:104]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_folded_hist_hist_1_folded_hist = mem_rdata_0[103:96]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_folded_hist_hist_0_folded_hist = mem_rdata_0[95:88]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_5_bits_0 = mem_rdata_0[84]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_5_bits_1 = mem_rdata_0[85]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_5_bits_2 = mem_rdata_0[86]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_5_bits_3 = mem_rdata_0[87]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_4_bits_0 = mem_rdata_0[80]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_4_bits_1 = mem_rdata_0[81]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_4_bits_2 = mem_rdata_0[82]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_3_bits_0 = mem_rdata_0[76]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_3_bits_1 = mem_rdata_0[77]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_3_bits_2 = mem_rdata_0[78]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_3_bits_3 = mem_rdata_0[79]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_2_bits_0 = mem_rdata_0[72]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_2_bits_1 = mem_rdata_0[73]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_2_bits_2 = mem_rdata_0[74]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_2_bits_3 = mem_rdata_0[75]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_1_bits_0 = mem_rdata_0[68]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_1_bits_1 = mem_rdata_0[69]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_1_bits_2 = mem_rdata_0[70]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_1_bits_3 = mem_rdata_0[71]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_0_bits_0 = mem_rdata_0[64]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_0_bits_1 = mem_rdata_0[65]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_0_bits_2 = mem_rdata_0[66]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_afhob_afhob_0_bits_3 = mem_rdata_0[67]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_lastBrNumOH = mem_rdata_0[63:61]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_histPtr_flag = mem_rdata_0[60]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_histPtr_value = mem_rdata_0[59:52]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_rasSp = mem_rdata_0[51:47]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_rasTop_retAddr = mem_rdata_0[46:8]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_rasTop_ctr = mem_rdata_0[7:0]; // @[SRAMTemplate.scala 154:45]
  assign array_R0_addr = io_rreq_bits_setIdx; // @[SRAMTemplate.scala 130:29]
  assign array_R0_en = io_rreq_valid; // @[SRAMTemplate.scala 105:26 130:{29,29}]
  assign array_R0_clk = clock; // @[SRAMTemplate.scala 130:{29,29}]
  assign array_W0_addr = io_wreq_bits_setIdx; // @[SRAMTemplate.scala 128:14]
  assign array_W0_en = io_wreq_valid; // @[SRAMTemplate.scala 128:14 105:26]
  assign array_W0_clk = clock; // @[SRAMTemplate.scala 128:14]
  assign array_W0_data_0 = {wdata_hi,wdata_lo}; // @[SRAMTemplate.scala 126:102]
  always @(posedge clock) begin
    bypass_mask_need_check <= io_rreq_valid & io_wreq_valid; // @[SRAMTemplate.scala 135:34]
    bypass_mask_waddr_reg <= io_wreq_bits_setIdx; // @[SRAMTemplate.scala 136:28]
    bypass_mask_raddr_reg <= io_rreq_bits_setIdx; // @[SRAMTemplate.scala 137:28]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LFSR64.scala 31:18]
      bypass_wdata_lfsr <= 64'h1234567887654321;
    end else if (bypass_wdata_lfsr == 64'h0) begin
      bypass_wdata_lfsr <= 64'h1;
    end else begin
      bypass_wdata_lfsr <= _bypass_wdata_lfsr_T_2;
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
  _RAND_0 = {2{`RANDOM}};
  bypass_wdata_lfsr = _RAND_0[63:0];
  _RAND_1 = {1{`RANDOM}};
  bypass_mask_need_check = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  bypass_mask_waddr_reg = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  bypass_mask_raddr_reg = _RAND_3[2:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    bypass_wdata_lfsr = 64'h1234567887654321;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

