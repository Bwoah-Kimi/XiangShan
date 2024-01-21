module BusyTable_1(
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
  input  [5:0] io_read_0_req,
  output       io_read_0_resp,
  input  [5:0] io_read_1_req,
  output       io_read_1_resp
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
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
  wire [63:0] _io_read_0_resp_T = table_ >> io_read_0_req; // @[BusyTable.scala 53:40]
  wire [63:0] _io_read_1_resp_T = table_ >> io_read_1_req; // @[BusyTable.scala 53:40]
  assign io_read_0_resp = ~_io_read_0_resp_T[0]; // @[BusyTable.scala 53:34]
  assign io_read_1_resp = ~_io_read_1_resp_T[0]; // @[BusyTable.scala 53:34]
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

