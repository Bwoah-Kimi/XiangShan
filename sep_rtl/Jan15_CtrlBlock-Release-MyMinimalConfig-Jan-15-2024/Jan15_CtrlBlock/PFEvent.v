module PFEvent(
  input         clock,
  input         reset,
  input         io_distribute_csr_wvalid,
  input  [11:0] io_distribute_csr_waddr,
  input  [63:0] io_distribute_csr_wdata,
  output [63:0] io_hpmevent_0,
  output [63:0] io_hpmevent_1,
  output [63:0] io_hpmevent_2,
  output [63:0] io_hpmevent_3,
  output [63:0] io_hpmevent_4,
  output [63:0] io_hpmevent_5,
  output [63:0] io_hpmevent_6,
  output [63:0] io_hpmevent_7,
  output [63:0] io_hpmevent_8,
  output [63:0] io_hpmevent_9,
  output [63:0] io_hpmevent_10,
  output [63:0] io_hpmevent_11,
  output [63:0] io_hpmevent_12,
  output [63:0] io_hpmevent_13,
  output [63:0] io_hpmevent_14,
  output [63:0] io_hpmevent_15,
  output [63:0] io_hpmevent_16,
  output [63:0] io_hpmevent_17,
  output [63:0] io_hpmevent_18,
  output [63:0] io_hpmevent_19,
  output [63:0] io_hpmevent_20,
  output [63:0] io_hpmevent_21,
  output [63:0] io_hpmevent_22,
  output [63:0] io_hpmevent_23
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
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
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] perfEvents_0; // @[CSR.scala 1271:40]
  reg [63:0] perfEvents_1; // @[CSR.scala 1271:40]
  reg [63:0] perfEvents_2; // @[CSR.scala 1271:40]
  reg [63:0] perfEvents_3; // @[CSR.scala 1271:40]
  reg [63:0] perfEvents_4; // @[CSR.scala 1271:40]
  reg [63:0] perfEvents_5; // @[CSR.scala 1271:40]
  reg [63:0] perfEvents_6; // @[CSR.scala 1271:40]
  reg [63:0] perfEvents_7; // @[CSR.scala 1271:40]
  reg [63:0] perfEvents_8; // @[CSR.scala 1272:40]
  reg [63:0] perfEvents_9; // @[CSR.scala 1272:40]
  reg [63:0] perfEvents_10; // @[CSR.scala 1272:40]
  reg [63:0] perfEvents_11; // @[CSR.scala 1272:40]
  reg [63:0] perfEvents_12; // @[CSR.scala 1272:40]
  reg [63:0] perfEvents_13; // @[CSR.scala 1272:40]
  reg [63:0] perfEvents_14; // @[CSR.scala 1272:40]
  reg [63:0] perfEvents_15; // @[CSR.scala 1272:40]
  reg [63:0] perfEvents_16; // @[CSR.scala 1273:40]
  reg [63:0] perfEvents_17; // @[CSR.scala 1273:40]
  reg [63:0] perfEvents_18; // @[CSR.scala 1273:40]
  reg [63:0] perfEvents_19; // @[CSR.scala 1273:40]
  reg [63:0] perfEvents_20; // @[CSR.scala 1273:40]
  reg [63:0] perfEvents_21; // @[CSR.scala 1273:40]
  reg [63:0] perfEvents_22; // @[CSR.scala 1273:40]
  reg [63:0] perfEvents_23; // @[CSR.scala 1273:40]
  reg [63:0] wdata_reg; // @[Reg.scala 16:16]
  reg  wen_reg; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_6_T = wdata_reg & 64'hf87fff3fcff3fcff; // @[BitUtils.scala 73:14]
  wire [63:0] _perfEvents_6_T_2 = perfEvents_6 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_6_T_3 = _perfEvents_6_T | _perfEvents_6_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_1; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_11_T_2 = perfEvents_11 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_11_T_3 = _perfEvents_6_T | _perfEvents_11_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_3; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_14_T_2 = perfEvents_14 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_14_T_3 = _perfEvents_6_T | _perfEvents_14_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_4; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_3_T_2 = perfEvents_3 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_3_T_3 = _perfEvents_6_T | _perfEvents_3_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_5; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_18_T_2 = perfEvents_18 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_18_T_3 = _perfEvents_6_T | _perfEvents_18_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_6; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_7_T_2 = perfEvents_7 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_7_T_3 = _perfEvents_6_T | _perfEvents_7_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_7; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_22_T_2 = perfEvents_22 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_22_T_3 = _perfEvents_6_T | _perfEvents_22_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_8; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_17_T_2 = perfEvents_17 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_17_T_3 = _perfEvents_6_T | _perfEvents_17_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_9; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_12_T_2 = perfEvents_12 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_12_T_3 = _perfEvents_6_T | _perfEvents_12_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_11; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_2_T_2 = perfEvents_2 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_2_T_3 = _perfEvents_6_T | _perfEvents_2_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_12; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_21_T_2 = perfEvents_21 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_21_T_3 = _perfEvents_6_T | _perfEvents_21_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_13; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_16_T_2 = perfEvents_16 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_16_T_3 = _perfEvents_6_T | _perfEvents_16_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_14; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_23_T_2 = perfEvents_23 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_23_T_3 = _perfEvents_6_T | _perfEvents_23_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_15; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_1_T_2 = perfEvents_1 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_1_T_3 = _perfEvents_6_T | _perfEvents_1_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_17; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_8_T_2 = perfEvents_8 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_8_T_3 = _perfEvents_6_T | _perfEvents_8_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_18; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_13_T_2 = perfEvents_13 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_13_T_3 = _perfEvents_6_T | _perfEvents_13_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_20; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_9_T_2 = perfEvents_9 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_9_T_3 = _perfEvents_6_T | _perfEvents_9_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_21; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_20_T_2 = perfEvents_20 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_20_T_3 = _perfEvents_6_T | _perfEvents_20_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_22; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_5_T_2 = perfEvents_5 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_5_T_3 = _perfEvents_6_T | _perfEvents_5_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_23; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_10_T_2 = perfEvents_10 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_10_T_3 = _perfEvents_6_T | _perfEvents_10_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_24; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_15_T_2 = perfEvents_15 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_15_T_3 = _perfEvents_6_T | _perfEvents_15_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_25; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_4_T_2 = perfEvents_4 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_4_T_3 = _perfEvents_6_T | _perfEvents_4_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_27; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_19_T_2 = perfEvents_19 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_19_T_3 = _perfEvents_6_T | _perfEvents_19_T_2; // @[BitUtils.scala 73:26]
  reg  wen_reg_28; // @[RegMap.scala 55:30]
  wire [63:0] _perfEvents_0_T_2 = perfEvents_0 & 64'h78000c0300c0300; // @[BitUtils.scala 73:37]
  wire [63:0] _perfEvents_0_T_3 = _perfEvents_6_T | _perfEvents_0_T_2; // @[BitUtils.scala 73:26]
  assign io_hpmevent_0 = perfEvents_0; // @[CSR.scala 1285:20]
  assign io_hpmevent_1 = perfEvents_1; // @[CSR.scala 1285:20]
  assign io_hpmevent_2 = perfEvents_2; // @[CSR.scala 1285:20]
  assign io_hpmevent_3 = perfEvents_3; // @[CSR.scala 1285:20]
  assign io_hpmevent_4 = perfEvents_4; // @[CSR.scala 1285:20]
  assign io_hpmevent_5 = perfEvents_5; // @[CSR.scala 1285:20]
  assign io_hpmevent_6 = perfEvents_6; // @[CSR.scala 1285:20]
  assign io_hpmevent_7 = perfEvents_7; // @[CSR.scala 1285:20]
  assign io_hpmevent_8 = perfEvents_8; // @[CSR.scala 1285:20]
  assign io_hpmevent_9 = perfEvents_9; // @[CSR.scala 1285:20]
  assign io_hpmevent_10 = perfEvents_10; // @[CSR.scala 1285:20]
  assign io_hpmevent_11 = perfEvents_11; // @[CSR.scala 1285:20]
  assign io_hpmevent_12 = perfEvents_12; // @[CSR.scala 1285:20]
  assign io_hpmevent_13 = perfEvents_13; // @[CSR.scala 1285:20]
  assign io_hpmevent_14 = perfEvents_14; // @[CSR.scala 1285:20]
  assign io_hpmevent_15 = perfEvents_15; // @[CSR.scala 1285:20]
  assign io_hpmevent_16 = perfEvents_16; // @[CSR.scala 1285:20]
  assign io_hpmevent_17 = perfEvents_17; // @[CSR.scala 1285:20]
  assign io_hpmevent_18 = perfEvents_18; // @[CSR.scala 1285:20]
  assign io_hpmevent_19 = perfEvents_19; // @[CSR.scala 1285:20]
  assign io_hpmevent_20 = perfEvents_20; // @[CSR.scala 1285:20]
  assign io_hpmevent_21 = perfEvents_21; // @[CSR.scala 1285:20]
  assign io_hpmevent_22 = perfEvents_22; // @[CSR.scala 1285:20]
  assign io_hpmevent_23 = perfEvents_23; // @[CSR.scala 1285:20]
  always @(posedge clock) begin
    if (io_distribute_csr_wvalid) begin // @[Reg.scala 17:18]
      wdata_reg <= io_distribute_csr_wdata; // @[Reg.scala 17:22]
    end
    wen_reg <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h329; // @[RegMap.scala 55:35]
    wen_reg_1 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h32e; // @[RegMap.scala 55:35]
    wen_reg_3 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h331; // @[RegMap.scala 55:35]
    wen_reg_4 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h326; // @[RegMap.scala 55:35]
    wen_reg_5 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h335; // @[RegMap.scala 55:35]
    wen_reg_6 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h32a; // @[RegMap.scala 55:35]
    wen_reg_7 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h339; // @[RegMap.scala 55:35]
    wen_reg_8 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h334; // @[RegMap.scala 55:35]
    wen_reg_9 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h32f; // @[RegMap.scala 55:35]
    wen_reg_11 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h325; // @[RegMap.scala 55:35]
    wen_reg_12 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h338; // @[RegMap.scala 55:35]
    wen_reg_13 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h333; // @[RegMap.scala 55:35]
    wen_reg_14 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h33a; // @[RegMap.scala 55:35]
    wen_reg_15 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h324; // @[RegMap.scala 55:35]
    wen_reg_17 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h32b; // @[RegMap.scala 55:35]
    wen_reg_18 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h330; // @[RegMap.scala 55:35]
    wen_reg_20 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h32c; // @[RegMap.scala 55:35]
    wen_reg_21 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h337; // @[RegMap.scala 55:35]
    wen_reg_22 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h328; // @[RegMap.scala 55:35]
    wen_reg_23 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h32d; // @[RegMap.scala 55:35]
    wen_reg_24 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h332; // @[RegMap.scala 55:35]
    wen_reg_25 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h327; // @[RegMap.scala 55:35]
    wen_reg_27 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h336; // @[RegMap.scala 55:35]
    wen_reg_28 <= io_distribute_csr_wvalid & io_distribute_csr_waddr == 12'h323; // @[RegMap.scala 55:35]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_0 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_28) begin // @[CSR.scala 1271:40]
      perfEvents_0 <= _perfEvents_0_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_1 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_15) begin // @[CSR.scala 1271:40]
      perfEvents_1 <= _perfEvents_1_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_2 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_11) begin // @[CSR.scala 1271:40]
      perfEvents_2 <= _perfEvents_2_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_3 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_4) begin // @[CSR.scala 1271:40]
      perfEvents_3 <= _perfEvents_3_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_4 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_25) begin // @[CSR.scala 1271:40]
      perfEvents_4 <= _perfEvents_4_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_5 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_22) begin // @[CSR.scala 1271:40]
      perfEvents_5 <= _perfEvents_5_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_6 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg) begin // @[CSR.scala 1271:40]
      perfEvents_6 <= _perfEvents_6_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_7 <= 64'h0; // @[RegMap.scala 56:28]
    end else if (wen_reg_6) begin // @[CSR.scala 1271:40]
      perfEvents_7 <= _perfEvents_7_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_8 <= 64'h4010040100; // @[RegMap.scala 56:28]
    end else if (wen_reg_17) begin // @[CSR.scala 1272:40]
      perfEvents_8 <= _perfEvents_8_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_9 <= 64'h4010040100; // @[RegMap.scala 56:28]
    end else if (wen_reg_20) begin // @[CSR.scala 1272:40]
      perfEvents_9 <= _perfEvents_9_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_10 <= 64'h4010040100; // @[RegMap.scala 56:28]
    end else if (wen_reg_23) begin // @[CSR.scala 1272:40]
      perfEvents_10 <= _perfEvents_10_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_11 <= 64'h4010040100; // @[RegMap.scala 56:28]
    end else if (wen_reg_1) begin // @[CSR.scala 1272:40]
      perfEvents_11 <= _perfEvents_11_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_12 <= 64'h4010040100; // @[RegMap.scala 56:28]
    end else if (wen_reg_9) begin // @[CSR.scala 1272:40]
      perfEvents_12 <= _perfEvents_12_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_13 <= 64'h4010040100; // @[RegMap.scala 56:28]
    end else if (wen_reg_18) begin // @[CSR.scala 1272:40]
      perfEvents_13 <= _perfEvents_13_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_14 <= 64'h4010040100; // @[RegMap.scala 56:28]
    end else if (wen_reg_3) begin // @[CSR.scala 1272:40]
      perfEvents_14 <= _perfEvents_14_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_15 <= 64'h4010040100; // @[RegMap.scala 56:28]
    end else if (wen_reg_24) begin // @[CSR.scala 1272:40]
      perfEvents_15 <= _perfEvents_15_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_16 <= 64'h8020080200; // @[RegMap.scala 56:28]
    end else if (wen_reg_13) begin // @[CSR.scala 1273:40]
      perfEvents_16 <= _perfEvents_16_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_17 <= 64'h8020080200; // @[RegMap.scala 56:28]
    end else if (wen_reg_8) begin // @[CSR.scala 1273:40]
      perfEvents_17 <= _perfEvents_17_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_18 <= 64'h8020080200; // @[RegMap.scala 56:28]
    end else if (wen_reg_5) begin // @[CSR.scala 1273:40]
      perfEvents_18 <= _perfEvents_18_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_19 <= 64'h8020080200; // @[RegMap.scala 56:28]
    end else if (wen_reg_27) begin // @[CSR.scala 1273:40]
      perfEvents_19 <= _perfEvents_19_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_20 <= 64'h8020080200; // @[RegMap.scala 56:28]
    end else if (wen_reg_21) begin // @[CSR.scala 1273:40]
      perfEvents_20 <= _perfEvents_20_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_21 <= 64'h8020080200; // @[RegMap.scala 56:28]
    end else if (wen_reg_12) begin // @[CSR.scala 1273:40]
      perfEvents_21 <= _perfEvents_21_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_22 <= 64'h8020080200; // @[RegMap.scala 56:28]
    end else if (wen_reg_7) begin // @[CSR.scala 1273:40]
      perfEvents_22 <= _perfEvents_22_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegMap.scala 56:24]
      perfEvents_23 <= 64'h8020080200; // @[RegMap.scala 56:28]
    end else if (wen_reg_14) begin // @[CSR.scala 1273:40]
      perfEvents_23 <= _perfEvents_23_T_3;
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
  perfEvents_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  perfEvents_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  perfEvents_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  perfEvents_3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  perfEvents_4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  perfEvents_5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  perfEvents_6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  perfEvents_7 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  perfEvents_8 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  perfEvents_9 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  perfEvents_10 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  perfEvents_11 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  perfEvents_12 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  perfEvents_13 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  perfEvents_14 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  perfEvents_15 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  perfEvents_16 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  perfEvents_17 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  perfEvents_18 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  perfEvents_19 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  perfEvents_20 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  perfEvents_21 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  perfEvents_22 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  perfEvents_23 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  wdata_reg = _RAND_24[63:0];
  _RAND_25 = {1{`RANDOM}};
  wen_reg = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  wen_reg_1 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  wen_reg_3 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  wen_reg_4 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  wen_reg_5 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  wen_reg_6 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  wen_reg_7 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  wen_reg_8 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  wen_reg_9 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  wen_reg_11 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  wen_reg_12 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  wen_reg_13 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  wen_reg_14 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  wen_reg_15 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  wen_reg_17 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  wen_reg_18 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  wen_reg_20 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  wen_reg_21 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  wen_reg_22 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  wen_reg_23 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  wen_reg_24 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  wen_reg_25 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  wen_reg_27 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  wen_reg_28 = _RAND_48[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    perfEvents_0 = 64'h0;
  end
  if (reset) begin
    perfEvents_1 = 64'h0;
  end
  if (reset) begin
    perfEvents_2 = 64'h0;
  end
  if (reset) begin
    perfEvents_3 = 64'h0;
  end
  if (reset) begin
    perfEvents_4 = 64'h0;
  end
  if (reset) begin
    perfEvents_5 = 64'h0;
  end
  if (reset) begin
    perfEvents_6 = 64'h0;
  end
  if (reset) begin
    perfEvents_7 = 64'h0;
  end
  if (reset) begin
    perfEvents_8 = 64'h4010040100;
  end
  if (reset) begin
    perfEvents_9 = 64'h4010040100;
  end
  if (reset) begin
    perfEvents_10 = 64'h4010040100;
  end
  if (reset) begin
    perfEvents_11 = 64'h4010040100;
  end
  if (reset) begin
    perfEvents_12 = 64'h4010040100;
  end
  if (reset) begin
    perfEvents_13 = 64'h4010040100;
  end
  if (reset) begin
    perfEvents_14 = 64'h4010040100;
  end
  if (reset) begin
    perfEvents_15 = 64'h4010040100;
  end
  if (reset) begin
    perfEvents_16 = 64'h8020080200;
  end
  if (reset) begin
    perfEvents_17 = 64'h8020080200;
  end
  if (reset) begin
    perfEvents_18 = 64'h8020080200;
  end
  if (reset) begin
    perfEvents_19 = 64'h8020080200;
  end
  if (reset) begin
    perfEvents_20 = 64'h8020080200;
  end
  if (reset) begin
    perfEvents_21 = 64'h8020080200;
  end
  if (reset) begin
    perfEvents_22 = 64'h8020080200;
  end
  if (reset) begin
    perfEvents_23 = 64'h8020080200;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

