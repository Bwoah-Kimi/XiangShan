module SyncDataModuleTemplate__32entry_1(
  input        clock,
  input  [4:0] io_raddr_0,
  input  [4:0] io_raddr_1,
  output [4:0] io_rdata_0,
  output [4:0] io_rdata_1,
  input        io_wen_0,
  input        io_wen_1,
  input        io_wen_2,
  input  [4:0] io_waddr_0,
  input  [4:0] io_waddr_1,
  input  [4:0] io_waddr_2,
  input  [4:0] io_wdata_0,
  input  [4:0] io_wdata_1,
  input  [4:0] io_wdata_2
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
`endif // RANDOMIZE_REG_INIT
  wire  dataBanks_0_clock; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_rdata_0; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_rdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_2; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_waddr_2; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_wdata_0; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_wdata_1; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_wdata_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_clock; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_1_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_1_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_1_io_rdata_0; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_1_io_rdata_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wen_2; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_1_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_1_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_1_io_waddr_2; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_1_io_wdata_0; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_1_io_wdata_1; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_1_io_wdata_2; // @[DataModuleTemplate.scala 120:26]
  reg [4:0] raddr_dup__0; // @[DataModuleTemplate.scala 123:28]
  reg [4:0] raddr_dup__1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup__0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup__1; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup__2; // @[DataModuleTemplate.scala 124:26]
  reg [4:0] waddr_dup_0; // @[Reg.scala 16:16]
  reg [4:0] waddr_dup_1; // @[Reg.scala 16:16]
  reg [4:0] waddr_dup_2; // @[Reg.scala 16:16]
  reg [4:0] r; // @[Reg.scala 16:16]
  reg [4:0] r_1; // @[Reg.scala 16:16]
  reg [4:0] r_2; // @[Reg.scala 16:16]
  reg [4:0] raddr_dup_1_0; // @[DataModuleTemplate.scala 123:28]
  reg [4:0] raddr_dup_1_1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_1_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_1_1; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_1_2; // @[DataModuleTemplate.scala 124:26]
  reg [4:0] waddr_dup_0_1; // @[Reg.scala 16:16]
  reg [4:0] waddr_dup_1_1; // @[Reg.scala 16:16]
  reg [4:0] waddr_dup_2_1; // @[Reg.scala 16:16]
  reg [4:0] r_3; // @[Reg.scala 16:16]
  reg [4:0] r_4; // @[Reg.scala 16:16]
  reg [4:0] r_5; // @[Reg.scala 16:16]
  reg [4:0] raddr_dup_2; // @[DataModuleTemplate.scala 145:28]
  wire  index_dec_shiftAmount = raddr_dup_2[4]; // @[DataModuleTemplate.scala 110:30]
  wire [1:0] index_dec = 2'h1 << index_dec_shiftAmount; // @[OneHot.scala 64:12]
  wire [4:0] _io_rdata_0_T_2 = index_dec[0] ? dataBanks_0_io_rdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_3 = index_dec[1] ? dataBanks_1_io_rdata_0 : 5'h0; // @[Mux.scala 27:73]
  reg [4:0] raddr_dup_3; // @[DataModuleTemplate.scala 145:28]
  wire  index_dec_shiftAmount_1 = raddr_dup_3[4]; // @[DataModuleTemplate.scala 110:30]
  wire [1:0] index_dec_1 = 2'h1 << index_dec_shiftAmount_1; // @[OneHot.scala 64:12]
  wire [4:0] _io_rdata_1_T_2 = index_dec_1[0] ? dataBanks_0_io_rdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_3 = index_dec_1[1] ? dataBanks_1_io_rdata_1 : 5'h0; // @[Mux.scala 27:73]
  NegedgeDataModule__16entry_3 dataBanks_0 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_0_clock),
    .io_raddr_0(dataBanks_0_io_raddr_0),
    .io_raddr_1(dataBanks_0_io_raddr_1),
    .io_rdata_0(dataBanks_0_io_rdata_0),
    .io_rdata_1(dataBanks_0_io_rdata_1),
    .io_wen_0(dataBanks_0_io_wen_0),
    .io_wen_1(dataBanks_0_io_wen_1),
    .io_wen_2(dataBanks_0_io_wen_2),
    .io_waddr_0(dataBanks_0_io_waddr_0),
    .io_waddr_1(dataBanks_0_io_waddr_1),
    .io_waddr_2(dataBanks_0_io_waddr_2),
    .io_wdata_0(dataBanks_0_io_wdata_0),
    .io_wdata_1(dataBanks_0_io_wdata_1),
    .io_wdata_2(dataBanks_0_io_wdata_2)
  );
  NegedgeDataModule__16entry_3 dataBanks_1 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_1_clock),
    .io_raddr_0(dataBanks_1_io_raddr_0),
    .io_raddr_1(dataBanks_1_io_raddr_1),
    .io_rdata_0(dataBanks_1_io_rdata_0),
    .io_rdata_1(dataBanks_1_io_rdata_1),
    .io_wen_0(dataBanks_1_io_wen_0),
    .io_wen_1(dataBanks_1_io_wen_1),
    .io_wen_2(dataBanks_1_io_wen_2),
    .io_waddr_0(dataBanks_1_io_waddr_0),
    .io_waddr_1(dataBanks_1_io_waddr_1),
    .io_waddr_2(dataBanks_1_io_waddr_2),
    .io_wdata_0(dataBanks_1_io_wdata_0),
    .io_wdata_1(dataBanks_1_io_wdata_1),
    .io_wdata_2(dataBanks_1_io_wdata_2)
  );
  assign io_rdata_0 = _io_rdata_0_T_2 | _io_rdata_0_T_3; // @[Mux.scala 27:73]
  assign io_rdata_1 = _io_rdata_1_T_2 | _io_rdata_1_T_3; // @[Mux.scala 27:73]
  assign dataBanks_0_clock = clock;
  assign dataBanks_0_io_raddr_0 = raddr_dup__0[3:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_0_io_raddr_1 = raddr_dup__1[3:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_0_io_wen_0 = wen_dup__0 & ~waddr_dup_0[4]; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_wen_1 = wen_dup__1 & ~waddr_dup_1[4]; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_wen_2 = wen_dup__2 & ~waddr_dup_2[4]; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_waddr_0 = waddr_dup_0[3:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_0_io_waddr_1 = waddr_dup_1[3:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_0_io_waddr_2 = waddr_dup_2[3:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_0_io_wdata_0 = r; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1 = r_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_2 = r_2; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_clock = clock;
  assign dataBanks_1_io_raddr_0 = raddr_dup_1_0[3:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_1_io_raddr_1 = raddr_dup_1_1[3:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_1_io_wen_0 = wen_dup_1_0 & waddr_dup_0_1[4]; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_1_io_wen_1 = wen_dup_1_1 & waddr_dup_1_1[4]; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_1_io_wen_2 = wen_dup_1_2 & waddr_dup_2_1[4]; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_1_io_waddr_0 = waddr_dup_0_1[3:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_1_io_waddr_1 = waddr_dup_1_1[3:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_1_io_waddr_2 = waddr_dup_2_1[3:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_1_io_wdata_0 = r_3; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_1 = r_4; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_2 = r_5; // @[DataModuleTemplate.scala 136:25]
  always @(posedge clock) begin
    raddr_dup__0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup__0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup__1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    wen_dup__2 <= io_wen_2; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      waddr_dup_2 <= io_waddr_2; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r <= io_wdata_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1 <= io_wdata_1; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_2 <= io_wdata_2; // @[Reg.scala 17:22]
    end
    raddr_dup_1_0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup_1_1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup_1_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_1_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    wen_dup_1_2 <= io_wen_2; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0_1 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1_1 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      waddr_dup_2_1 <= io_waddr_2; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_3 <= io_wdata_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_4 <= io_wdata_1; // @[Reg.scala 17:22]
    end
    if (io_wen_2) begin // @[Reg.scala 17:18]
      r_5 <= io_wdata_2; // @[Reg.scala 17:22]
    end
    raddr_dup_2 <= io_raddr_0; // @[DataModuleTemplate.scala 145:28]
    raddr_dup_3 <= io_raddr_1; // @[DataModuleTemplate.scala 145:28]
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
  raddr_dup__0 = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  raddr_dup__1 = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  wen_dup__0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  wen_dup__1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  wen_dup__2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  waddr_dup_0 = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  waddr_dup_1 = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  waddr_dup_2 = _RAND_7[4:0];
  _RAND_8 = {1{`RANDOM}};
  r = _RAND_8[4:0];
  _RAND_9 = {1{`RANDOM}};
  r_1 = _RAND_9[4:0];
  _RAND_10 = {1{`RANDOM}};
  r_2 = _RAND_10[4:0];
  _RAND_11 = {1{`RANDOM}};
  raddr_dup_1_0 = _RAND_11[4:0];
  _RAND_12 = {1{`RANDOM}};
  raddr_dup_1_1 = _RAND_12[4:0];
  _RAND_13 = {1{`RANDOM}};
  wen_dup_1_0 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  wen_dup_1_1 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  wen_dup_1_2 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  waddr_dup_0_1 = _RAND_16[4:0];
  _RAND_17 = {1{`RANDOM}};
  waddr_dup_1_1 = _RAND_17[4:0];
  _RAND_18 = {1{`RANDOM}};
  waddr_dup_2_1 = _RAND_18[4:0];
  _RAND_19 = {1{`RANDOM}};
  r_3 = _RAND_19[4:0];
  _RAND_20 = {1{`RANDOM}};
  r_4 = _RAND_20[4:0];
  _RAND_21 = {1{`RANDOM}};
  r_5 = _RAND_21[4:0];
  _RAND_22 = {1{`RANDOM}};
  raddr_dup_2 = _RAND_22[4:0];
  _RAND_23 = {1{`RANDOM}};
  raddr_dup_3 = _RAND_23[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

