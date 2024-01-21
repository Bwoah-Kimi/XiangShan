module DifftestArchFpRegState(
  input         io_clock,
input  [ 7:0] io_coreid,
input  [63:0] io_fpr_0,
input  [63:0] io_fpr_1,
input  [63:0] io_fpr_2,
input  [63:0] io_fpr_3,
input  [63:0] io_fpr_4,
input  [63:0] io_fpr_5,
input  [63:0] io_fpr_6,
input  [63:0] io_fpr_7,
input  [63:0] io_fpr_8,
input  [63:0] io_fpr_9,
input  [63:0] io_fpr_10,
input  [63:0] io_fpr_11,
input  [63:0] io_fpr_12,
input  [63:0] io_fpr_13,
input  [63:0] io_fpr_14,
input  [63:0] io_fpr_15,
input  [63:0] io_fpr_16,
input  [63:0] io_fpr_17,
input  [63:0] io_fpr_18,
input  [63:0] io_fpr_19,
input  [63:0] io_fpr_20,
input  [63:0] io_fpr_21,
input  [63:0] io_fpr_22,
input  [63:0] io_fpr_23,
input  [63:0] io_fpr_24,
input  [63:0] io_fpr_25,
input  [63:0] io_fpr_26,
input  [63:0] io_fpr_27,
input  [63:0] io_fpr_28,
input  [63:0] io_fpr_29,
input  [63:0] io_fpr_30,
input  [63:0] io_fpr_31
);
`ifndef SYNTHESIS
`ifdef DIFFTEST

import "DPI-C" function void v_difftest_ArchFpRegState (
input     byte io_coreid,
input  longint io_fpr_0,
input  longint io_fpr_1,
input  longint io_fpr_2,
input  longint io_fpr_3,
input  longint io_fpr_4,
input  longint io_fpr_5,
input  longint io_fpr_6,
input  longint io_fpr_7,
input  longint io_fpr_8,
input  longint io_fpr_9,
input  longint io_fpr_10,
input  longint io_fpr_11,
input  longint io_fpr_12,
input  longint io_fpr_13,
input  longint io_fpr_14,
input  longint io_fpr_15,
input  longint io_fpr_16,
input  longint io_fpr_17,
input  longint io_fpr_18,
input  longint io_fpr_19,
input  longint io_fpr_20,
input  longint io_fpr_21,
input  longint io_fpr_22,
input  longint io_fpr_23,
input  longint io_fpr_24,
input  longint io_fpr_25,
input  longint io_fpr_26,
input  longint io_fpr_27,
input  longint io_fpr_28,
input  longint io_fpr_29,
input  longint io_fpr_30,
input  longint io_fpr_31
);

  always @(posedge io_clock) begin
    v_difftest_ArchFpRegState (io_coreid,io_fpr_0,io_fpr_1,io_fpr_2,io_fpr_3,io_fpr_4,io_fpr_5,io_fpr_6,io_fpr_7,io_fpr_8,io_fpr_9,io_fpr_10,io_fpr_11,io_fpr_12,io_fpr_13,io_fpr_14,io_fpr_15,io_fpr_16,io_fpr_17,io_fpr_18,io_fpr_19,io_fpr_20,io_fpr_21,io_fpr_22,io_fpr_23,io_fpr_24,io_fpr_25,io_fpr_26,io_fpr_27,io_fpr_28,io_fpr_29,io_fpr_30,io_fpr_31);
  end
`endif
`endif
endmodule

