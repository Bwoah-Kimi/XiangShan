module DifftestDebugMode(
  input         io_clock,
input  [ 7:0] io_coreid,
input         io_debugMode,
input  [63:0] io_dcsr,
input  [63:0] io_dpc,
input  [63:0] io_dscratch0,
input  [63:0] io_dscratch1
);
`ifndef SYNTHESIS
`ifdef DIFFTEST

import "DPI-C" function void v_difftest_DebugMode (
input     byte io_coreid,
input      bit io_debugMode,
input  longint io_dcsr,
input  longint io_dpc,
input  longint io_dscratch0,
input  longint io_dscratch1
);

  always @(posedge io_clock) begin
    v_difftest_DebugMode (io_coreid,io_debugMode,io_dcsr,io_dpc,io_dscratch0,io_dscratch1);
  end
`endif
`endif
endmodule

