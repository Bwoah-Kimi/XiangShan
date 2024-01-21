module FDivSqrtDataModule(
  input         clock,
  input         reset,
  input  [63:0] io_in_src_0,
  input  [63:0] io_in_src_1,
  input         io_in_fpCtrl_typeTagIn,
  input         io_in_fpCtrl_sqrt,
  input  [2:0]  io_in_rm,
  output [63:0] io_out_data,
  output [4:0]  io_out_fflags,
  input         in_valid,
  input         out_ready,
  output        in_ready,
  output        out_valid,
  input         kill_w,
  input         kill_r
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  divSqrt_0_clock; // @[FDivSqrt.scala 36:13]
  wire  divSqrt_0_reset; // @[FDivSqrt.scala 36:13]
  wire [31:0] divSqrt_0_io_a; // @[FDivSqrt.scala 36:13]
  wire [31:0] divSqrt_0_io_b; // @[FDivSqrt.scala 36:13]
  wire [2:0] divSqrt_0_io_rm; // @[FDivSqrt.scala 36:13]
  wire [31:0] divSqrt_0_io_result; // @[FDivSqrt.scala 36:13]
  wire [4:0] divSqrt_0_io_fflags; // @[FDivSqrt.scala 36:13]
  wire  divSqrt_0_io_specialIO_in_valid; // @[FDivSqrt.scala 36:13]
  wire  divSqrt_0_io_specialIO_out_ready; // @[FDivSqrt.scala 36:13]
  wire  divSqrt_0_io_specialIO_in_ready; // @[FDivSqrt.scala 36:13]
  wire  divSqrt_0_io_specialIO_out_valid; // @[FDivSqrt.scala 36:13]
  wire  divSqrt_0_io_specialIO_isSqrt; // @[FDivSqrt.scala 36:13]
  wire  divSqrt_0_io_specialIO_kill; // @[FDivSqrt.scala 36:13]
  wire  divSqrt_1_clock; // @[FDivSqrt.scala 36:13]
  wire  divSqrt_1_reset; // @[FDivSqrt.scala 36:13]
  wire [63:0] divSqrt_1_io_a; // @[FDivSqrt.scala 36:13]
  wire [63:0] divSqrt_1_io_b; // @[FDivSqrt.scala 36:13]
  wire [2:0] divSqrt_1_io_rm; // @[FDivSqrt.scala 36:13]
  wire [63:0] divSqrt_1_io_result; // @[FDivSqrt.scala 36:13]
  wire [4:0] divSqrt_1_io_fflags; // @[FDivSqrt.scala 36:13]
  wire  divSqrt_1_io_specialIO_in_valid; // @[FDivSqrt.scala 36:13]
  wire  divSqrt_1_io_specialIO_out_ready; // @[FDivSqrt.scala 36:13]
  wire  divSqrt_1_io_specialIO_in_ready; // @[FDivSqrt.scala 36:13]
  wire  divSqrt_1_io_specialIO_out_valid; // @[FDivSqrt.scala 36:13]
  wire  divSqrt_1_io_specialIO_isSqrt; // @[FDivSqrt.scala 36:13]
  wire  divSqrt_1_io_specialIO_kill; // @[FDivSqrt.scala 36:13]
  wire  in_fire = in_valid & in_ready; // @[FDivSqrt.scala 57:26]
  wire  src1_isBoxed = &io_in_src_0[63:32]; // @[FPU.scala 24:34]
  wire [31:0] _src1_T_4 = src1_isBoxed ? io_in_src_0[31:0] : 32'h7fc00000; // @[FPU.scala 27:10]
  wire [63:0] src1 = io_in_fpCtrl_typeTagIn ? io_in_src_0 : {{32'd0}, _src1_T_4}; // @[FPU.scala 25:8]
  wire  src2_isBoxed = &io_in_src_1[63:32]; // @[FPU.scala 24:34]
  wire [31:0] _src2_T_4 = src2_isBoxed ? io_in_src_1[31:0] : 32'h7fc00000; // @[FPU.scala 27:10]
  wire [63:0] src2 = io_in_fpCtrl_typeTagIn ? io_in_src_1 : {{32'd0}, _src2_T_4}; // @[FPU.scala 25:8]
  wire  typeSel_0 = ~io_in_fpCtrl_typeTagIn; // @[FDivSqrt.scala 65:60]
  reg  outSel_0; // @[Reg.scala 28:20]
  reg  outSel_1; // @[Reg.scala 28:20]
  reg [63:0] outDataSel_0; // @[Reg.scala 16:16]
  reg [63:0] outDataSel_1; // @[Reg.scala 16:16]
  wire [31:0] _io_out_data_T_1 = divSqrt_0_io_result; // @[FPU.scala 41:24]
  wire [63:0] _io_out_data_T_2 = {32'hffffffff,_io_out_data_T_1}; // @[Cat.scala 31:58]
  wire [63:0] _io_out_data_T_3 = divSqrt_1_io_result; // @[FPU.scala 43:8]
  wire [63:0] _io_out_data_T_4 = outDataSel_0 & _io_out_data_T_2; // @[FDivSqrt.scala 85:20]
  wire [63:0] _io_out_data_T_5 = outDataSel_1 & _io_out_data_T_3; // @[FDivSqrt.scala 85:20]
  wire [4:0] _io_out_fflags_T = outSel_0 ? divSqrt_0_io_fflags : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_fflags_T_1 = outSel_1 ? divSqrt_1_io_fflags : 5'h0; // @[Mux.scala 27:73]
  InstantiableFDIV divSqrt_0 ( // @[FDivSqrt.scala 36:13]
    .clock(divSqrt_0_clock),
    .reset(divSqrt_0_reset),
    .io_a(divSqrt_0_io_a),
    .io_b(divSqrt_0_io_b),
    .io_rm(divSqrt_0_io_rm),
    .io_result(divSqrt_0_io_result),
    .io_fflags(divSqrt_0_io_fflags),
    .io_specialIO_in_valid(divSqrt_0_io_specialIO_in_valid),
    .io_specialIO_out_ready(divSqrt_0_io_specialIO_out_ready),
    .io_specialIO_in_ready(divSqrt_0_io_specialIO_in_ready),
    .io_specialIO_out_valid(divSqrt_0_io_specialIO_out_valid),
    .io_specialIO_isSqrt(divSqrt_0_io_specialIO_isSqrt),
    .io_specialIO_kill(divSqrt_0_io_specialIO_kill)
  );
  InstantiableFDIV_1 divSqrt_1 ( // @[FDivSqrt.scala 36:13]
    .clock(divSqrt_1_clock),
    .reset(divSqrt_1_reset),
    .io_a(divSqrt_1_io_a),
    .io_b(divSqrt_1_io_b),
    .io_rm(divSqrt_1_io_rm),
    .io_result(divSqrt_1_io_result),
    .io_fflags(divSqrt_1_io_fflags),
    .io_specialIO_in_valid(divSqrt_1_io_specialIO_in_valid),
    .io_specialIO_out_ready(divSqrt_1_io_specialIO_out_ready),
    .io_specialIO_in_ready(divSqrt_1_io_specialIO_in_ready),
    .io_specialIO_out_valid(divSqrt_1_io_specialIO_out_valid),
    .io_specialIO_isSqrt(divSqrt_1_io_specialIO_isSqrt),
    .io_specialIO_kill(divSqrt_1_io_specialIO_kill)
  );
  assign io_out_data = _io_out_data_T_4 | _io_out_data_T_5; // @[FDivSqrt.scala 85:37]
  assign io_out_fflags = _io_out_fflags_T | _io_out_fflags_T_1; // @[Mux.scala 27:73]
  assign in_ready = divSqrt_0_io_specialIO_in_ready & divSqrt_1_io_specialIO_in_ready; // @[FDivSqrt.scala 81:72]
  assign out_valid = outSel_0 & divSqrt_0_io_specialIO_out_valid | outSel_1 & divSqrt_1_io_specialIO_out_valid; // @[Mux.scala 27:73]
  assign divSqrt_0_clock = clock; // @[FDivSqrt.scala 36:13]
  assign divSqrt_0_reset = reset; // @[FDivSqrt.scala 36:13]
  assign divSqrt_0_io_a = src1[31:0]; // @[FDivSqrt.scala 71:15]
  assign divSqrt_0_io_b = src2[31:0]; // @[FDivSqrt.scala 72:15]
  assign divSqrt_0_io_rm = io_in_rm; // @[FDivSqrt.scala 73:16]
  assign divSqrt_0_io_specialIO_in_valid = in_fire & ~kill_w & typeSel_0; // @[FDivSqrt.scala 74:54]
  assign divSqrt_0_io_specialIO_out_ready = out_ready; // @[FDivSqrt.scala 75:33]
  assign divSqrt_0_io_specialIO_isSqrt = io_in_fpCtrl_sqrt; // @[FDivSqrt.scala 76:30]
  assign divSqrt_0_io_specialIO_kill = kill_r; // @[FDivSqrt.scala 77:28]
  assign divSqrt_1_clock = clock; // @[FDivSqrt.scala 36:13]
  assign divSqrt_1_reset = reset; // @[FDivSqrt.scala 36:13]
  assign divSqrt_1_io_a = io_in_fpCtrl_typeTagIn ? io_in_src_0 : {{32'd0}, _src1_T_4}; // @[FPU.scala 25:8]
  assign divSqrt_1_io_b = io_in_fpCtrl_typeTagIn ? io_in_src_1 : {{32'd0}, _src2_T_4}; // @[FPU.scala 25:8]
  assign divSqrt_1_io_rm = io_in_rm; // @[FDivSqrt.scala 73:16]
  assign divSqrt_1_io_specialIO_in_valid = in_fire & ~kill_w & io_in_fpCtrl_typeTagIn; // @[FDivSqrt.scala 74:54]
  assign divSqrt_1_io_specialIO_out_ready = out_ready; // @[FDivSqrt.scala 75:33]
  assign divSqrt_1_io_specialIO_isSqrt = io_in_fpCtrl_sqrt; // @[FDivSqrt.scala 76:30]
  assign divSqrt_1_io_specialIO_kill = kill_r; // @[FDivSqrt.scala 77:28]
  always @(posedge clock) begin
    if (in_fire) begin // @[Reg.scala 17:18]
      if (typeSel_0) begin // @[Bitwise.scala 74:12]
        outDataSel_0 <= 64'hffffffffffffffff;
      end else begin
        outDataSel_0 <= 64'h0;
      end
    end
    if (in_fire) begin // @[Reg.scala 17:18]
      if (io_in_fpCtrl_typeTagIn) begin // @[Bitwise.scala 74:12]
        outDataSel_1 <= 64'hffffffffffffffff;
      end else begin
        outDataSel_1 <= 64'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      outSel_0 <= 1'h1; // @[Reg.scala 29:22]
    end else if (in_fire) begin // @[Reg.scala 28:20]
      outSel_0 <= typeSel_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      outSel_1 <= 1'h1; // @[Reg.scala 29:22]
    end else if (in_fire) begin // @[Reg.scala 28:20]
      outSel_1 <= io_in_fpCtrl_typeTagIn;
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
  outSel_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  outSel_1 = _RAND_1[0:0];
  _RAND_2 = {2{`RANDOM}};
  outDataSel_0 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  outDataSel_1 = _RAND_3[63:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    outSel_0 = 1'h1;
  end
  if (reset) begin
    outSel_1 = 1'h1;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

