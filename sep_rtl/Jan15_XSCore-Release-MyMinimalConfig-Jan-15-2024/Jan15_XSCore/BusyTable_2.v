module BusyTable_2(
  input        clock,
  input        reset,
  input        io_allocPregs_0_valid,
  input  [5:0] io_allocPregs_0_bits,
  input        io_allocPregs_1_valid,
  input  [5:0] io_allocPregs_1_bits,
  input        io_wbPregs_0_valid,
  input  [5:0] io_wbPregs_0_bits,
  input        io_wbPregs_1_valid,
  input  [5:0] io_wbPregs_1_bits,
  input        io_wbPregs_2_valid,
  input  [5:0] io_wbPregs_2_bits,
  input        io_wbPregs_3_valid,
  input  [5:0] io_wbPregs_3_bits,
  input  [5:0] io_read_2_req,
  output       io_read_2_resp,
  input  [5:0] io_read_3_req,
  output       io_read_3_resp,
  input  [5:0] io_read_4_req,
  output       io_read_4_resp,
  output [5:0] io_perf_0_value,
  output [5:0] io_perf_1_value,
  output [5:0] io_perf_2_value,
  output [5:0] io_perf_3_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
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
`endif // RANDOMIZE_REG_INIT
  reg [63:0] table_; // @[BusyTable.scala 41:22]
  wire [63:0] _wbMask_T = 64'h1 << io_wbPregs_0_bits; // @[OneHot.scala 57:35]
  wire [63:0] _wbMask_T_1 = io_wbPregs_0_valid ? _wbMask_T : 64'h0; // @[BusyTable.scala 44:33]
  wire [63:0] _wbMask_T_2 = 64'h1 << io_wbPregs_1_bits; // @[OneHot.scala 57:35]
  wire [63:0] _wbMask_T_3 = io_wbPregs_1_valid ? _wbMask_T_2 : 64'h0; // @[BusyTable.scala 44:33]
  wire [63:0] _wbMask_T_4 = 64'h1 << io_wbPregs_2_bits; // @[OneHot.scala 57:35]
  wire [63:0] _wbMask_T_5 = io_wbPregs_2_valid ? _wbMask_T_4 : 64'h0; // @[BusyTable.scala 44:33]
  wire [63:0] _wbMask_T_6 = 64'h1 << io_wbPregs_3_bits; // @[OneHot.scala 57:35]
  wire [63:0] _wbMask_T_7 = io_wbPregs_3_valid ? _wbMask_T_6 : 64'h0; // @[BusyTable.scala 44:33]
  wire [63:0] _wbMask_T_8 = _wbMask_T_1 | _wbMask_T_3; // @[ParallelMux.scala 36:53]
  wire [63:0] _wbMask_T_9 = _wbMask_T_5 | _wbMask_T_7; // @[ParallelMux.scala 36:53]
  wire [63:0] wbMask = _wbMask_T_8 | _wbMask_T_9; // @[ParallelMux.scala 36:53]
  wire [63:0] _allocMask_T = 64'h1 << io_allocPregs_0_bits; // @[OneHot.scala 57:35]
  wire [63:0] _allocMask_T_1 = io_allocPregs_0_valid ? _allocMask_T : 64'h0; // @[BusyTable.scala 44:33]
  wire [63:0] _allocMask_T_2 = 64'h1 << io_allocPregs_1_bits; // @[OneHot.scala 57:35]
  wire [63:0] _allocMask_T_3 = io_allocPregs_1_valid ? _allocMask_T_2 : 64'h0; // @[BusyTable.scala 44:33]
  wire [63:0] allocMask = _allocMask_T_1 | _allocMask_T_3; // @[ParallelMux.scala 36:53]
  wire [63:0] _tableAfterWb_T = ~wbMask; // @[BusyTable.scala 50:31]
  wire [63:0] tableAfterWb = table_ & _tableAfterWb_T; // @[BusyTable.scala 50:28]
  wire [63:0] _io_read_2_resp_T = table_ >> io_read_2_req; // @[BusyTable.scala 53:40]
  wire [63:0] _io_read_3_resp_T = table_ >> io_read_3_req; // @[BusyTable.scala 53:40]
  wire [63:0] _io_read_4_resp_T = table_ >> io_read_4_req; // @[BusyTable.scala 53:40]
  wire  oddTable_0 = table_[1]; // @[BusyTable.scala 57:24]
  wire  oddTable_1 = table_[3]; // @[BusyTable.scala 57:24]
  wire  oddTable_2 = table_[5]; // @[BusyTable.scala 57:24]
  wire  oddTable_3 = table_[7]; // @[BusyTable.scala 57:24]
  wire  oddTable_4 = table_[9]; // @[BusyTable.scala 57:24]
  wire  oddTable_5 = table_[11]; // @[BusyTable.scala 57:24]
  wire  oddTable_6 = table_[13]; // @[BusyTable.scala 57:24]
  wire  oddTable_7 = table_[15]; // @[BusyTable.scala 57:24]
  wire  oddTable_8 = table_[17]; // @[BusyTable.scala 57:24]
  wire  oddTable_9 = table_[19]; // @[BusyTable.scala 57:24]
  wire  oddTable_10 = table_[21]; // @[BusyTable.scala 57:24]
  wire  oddTable_11 = table_[23]; // @[BusyTable.scala 57:24]
  wire  oddTable_12 = table_[25]; // @[BusyTable.scala 57:24]
  wire  oddTable_13 = table_[27]; // @[BusyTable.scala 57:24]
  wire  oddTable_14 = table_[29]; // @[BusyTable.scala 57:24]
  wire  oddTable_15 = table_[31]; // @[BusyTable.scala 57:24]
  wire  oddTable_16 = table_[33]; // @[BusyTable.scala 57:24]
  wire  oddTable_17 = table_[35]; // @[BusyTable.scala 57:24]
  wire  oddTable_18 = table_[37]; // @[BusyTable.scala 57:24]
  wire  oddTable_19 = table_[39]; // @[BusyTable.scala 57:24]
  wire  oddTable_20 = table_[41]; // @[BusyTable.scala 57:24]
  wire  oddTable_21 = table_[43]; // @[BusyTable.scala 57:24]
  wire  oddTable_22 = table_[45]; // @[BusyTable.scala 57:24]
  wire  oddTable_23 = table_[47]; // @[BusyTable.scala 57:24]
  wire  oddTable_24 = table_[49]; // @[BusyTable.scala 57:24]
  wire  oddTable_25 = table_[51]; // @[BusyTable.scala 57:24]
  wire  oddTable_26 = table_[53]; // @[BusyTable.scala 57:24]
  wire  oddTable_27 = table_[55]; // @[BusyTable.scala 57:24]
  wire  oddTable_28 = table_[57]; // @[BusyTable.scala 57:24]
  wire  oddTable_29 = table_[59]; // @[BusyTable.scala 57:24]
  wire  oddTable_30 = table_[61]; // @[BusyTable.scala 57:24]
  wire  oddTable_31 = table_[63]; // @[BusyTable.scala 57:24]
  wire [1:0] _busyCount_T = oddTable_0 + oddTable_1; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_2 = oddTable_2 + oddTable_3; // @[Bitwise.scala 48:55]
  wire [2:0] _busyCount_T_4 = _busyCount_T + _busyCount_T_2; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_6 = oddTable_4 + oddTable_5; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_8 = oddTable_6 + oddTable_7; // @[Bitwise.scala 48:55]
  wire [2:0] _busyCount_T_10 = _busyCount_T_6 + _busyCount_T_8; // @[Bitwise.scala 48:55]
  wire [3:0] _busyCount_T_12 = _busyCount_T_4 + _busyCount_T_10; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_14 = oddTable_8 + oddTable_9; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_16 = oddTable_10 + oddTable_11; // @[Bitwise.scala 48:55]
  wire [2:0] _busyCount_T_18 = _busyCount_T_14 + _busyCount_T_16; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_20 = oddTable_12 + oddTable_13; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_22 = oddTable_14 + oddTable_15; // @[Bitwise.scala 48:55]
  wire [2:0] _busyCount_T_24 = _busyCount_T_20 + _busyCount_T_22; // @[Bitwise.scala 48:55]
  wire [3:0] _busyCount_T_26 = _busyCount_T_18 + _busyCount_T_24; // @[Bitwise.scala 48:55]
  wire [4:0] _busyCount_T_28 = _busyCount_T_12 + _busyCount_T_26; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_30 = oddTable_16 + oddTable_17; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_32 = oddTable_18 + oddTable_19; // @[Bitwise.scala 48:55]
  wire [2:0] _busyCount_T_34 = _busyCount_T_30 + _busyCount_T_32; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_36 = oddTable_20 + oddTable_21; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_38 = oddTable_22 + oddTable_23; // @[Bitwise.scala 48:55]
  wire [2:0] _busyCount_T_40 = _busyCount_T_36 + _busyCount_T_38; // @[Bitwise.scala 48:55]
  wire [3:0] _busyCount_T_42 = _busyCount_T_34 + _busyCount_T_40; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_44 = oddTable_24 + oddTable_25; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_46 = oddTable_26 + oddTable_27; // @[Bitwise.scala 48:55]
  wire [2:0] _busyCount_T_48 = _busyCount_T_44 + _busyCount_T_46; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_50 = oddTable_28 + oddTable_29; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_52 = oddTable_30 + oddTable_31; // @[Bitwise.scala 48:55]
  wire [2:0] _busyCount_T_54 = _busyCount_T_50 + _busyCount_T_52; // @[Bitwise.scala 48:55]
  wire [3:0] _busyCount_T_56 = _busyCount_T_48 + _busyCount_T_54; // @[Bitwise.scala 48:55]
  wire [4:0] _busyCount_T_58 = _busyCount_T_42 + _busyCount_T_56; // @[Bitwise.scala 48:55]
  reg [5:0] busyCount_REG; // @[BusyTable.scala 59:34]
  wire [1:0] _busyCount_T_62 = table_[0] + table_[2]; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_64 = table_[4] + table_[6]; // @[Bitwise.scala 48:55]
  wire [2:0] _busyCount_T_66 = _busyCount_T_62 + _busyCount_T_64; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_68 = table_[8] + table_[10]; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_70 = table_[12] + table_[14]; // @[Bitwise.scala 48:55]
  wire [2:0] _busyCount_T_72 = _busyCount_T_68 + _busyCount_T_70; // @[Bitwise.scala 48:55]
  wire [3:0] _busyCount_T_74 = _busyCount_T_66 + _busyCount_T_72; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_76 = table_[16] + table_[18]; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_78 = table_[20] + table_[22]; // @[Bitwise.scala 48:55]
  wire [2:0] _busyCount_T_80 = _busyCount_T_76 + _busyCount_T_78; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_82 = table_[24] + table_[26]; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_84 = table_[28] + table_[30]; // @[Bitwise.scala 48:55]
  wire [2:0] _busyCount_T_86 = _busyCount_T_82 + _busyCount_T_84; // @[Bitwise.scala 48:55]
  wire [3:0] _busyCount_T_88 = _busyCount_T_80 + _busyCount_T_86; // @[Bitwise.scala 48:55]
  wire [4:0] _busyCount_T_90 = _busyCount_T_74 + _busyCount_T_88; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_92 = table_[32] + table_[34]; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_94 = table_[36] + table_[38]; // @[Bitwise.scala 48:55]
  wire [2:0] _busyCount_T_96 = _busyCount_T_92 + _busyCount_T_94; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_98 = table_[40] + table_[42]; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_100 = table_[44] + table_[46]; // @[Bitwise.scala 48:55]
  wire [2:0] _busyCount_T_102 = _busyCount_T_98 + _busyCount_T_100; // @[Bitwise.scala 48:55]
  wire [3:0] _busyCount_T_104 = _busyCount_T_96 + _busyCount_T_102; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_106 = table_[48] + table_[50]; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_108 = table_[52] + table_[54]; // @[Bitwise.scala 48:55]
  wire [2:0] _busyCount_T_110 = _busyCount_T_106 + _busyCount_T_108; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_112 = table_[56] + table_[58]; // @[Bitwise.scala 48:55]
  wire [1:0] _busyCount_T_114 = table_[60] + table_[62]; // @[Bitwise.scala 48:55]
  wire [2:0] _busyCount_T_116 = _busyCount_T_112 + _busyCount_T_114; // @[Bitwise.scala 48:55]
  wire [3:0] _busyCount_T_118 = _busyCount_T_110 + _busyCount_T_116; // @[Bitwise.scala 48:55]
  wire [4:0] _busyCount_T_120 = _busyCount_T_104 + _busyCount_T_118; // @[Bitwise.scala 48:55]
  reg [5:0] busyCount_REG_1; // @[BusyTable.scala 59:64]
  reg [5:0] busyCount; // @[BusyTable.scala 59:26]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  assign io_read_2_resp = ~_io_read_2_resp_T[0]; // @[BusyTable.scala 53:34]
  assign io_read_3_resp = ~_io_read_3_resp_T[0]; // @[BusyTable.scala 53:34]
  assign io_read_4_resp = ~_io_read_4_resp_T[0]; // @[BusyTable.scala 53:34]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  always @(posedge clock) begin
    busyCount_REG <= _busyCount_T_28 + _busyCount_T_58; // @[Bitwise.scala 48:55]
    busyCount_REG_1 <= _busyCount_T_90 + _busyCount_T_120; // @[Bitwise.scala 48:55]
    busyCount <= busyCount_REG + busyCount_REG_1; // @[BusyTable.scala 59:55]
    io_perf_0_value_REG <= busyCount < 6'h10; // @[BusyTable.scala 72:42]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= busyCount > 6'h10 & busyCount <= 6'h20; // @[BusyTable.scala 73:62]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= busyCount > 6'h20 & busyCount <= 6'h30; // @[BusyTable.scala 74:62]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= busyCount > 6'h30; // @[BusyTable.scala 75:42]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BusyTable.scala 51:38]
      table_ <= 64'h0;
    end else begin
      table_ <= tableAfterWb | allocMask;
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
  table_ = _RAND_0[63:0];
  _RAND_1 = {1{`RANDOM}};
  busyCount_REG = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  busyCount_REG_1 = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  busyCount = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_11[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    table_ = 64'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

