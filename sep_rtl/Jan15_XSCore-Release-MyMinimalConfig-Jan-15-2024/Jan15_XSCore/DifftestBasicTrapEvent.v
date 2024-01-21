module DifftestBasicTrapEvent(
  input         io_clock,
input  [ 7:0] io_coreid,
input         io_valid,
input  [63:0] io_cycleCnt,
input  [63:0] io_instrCnt,
input         io_hasWFI
);
`ifndef SYNTHESIS
`ifdef DIFFTEST

import "DPI-C" function void v_difftest_BasicTrapEvent (
input     byte io_coreid,
input      bit io_valid,
input  longint io_cycleCnt,
input  longint io_instrCnt,
input      bit io_hasWFI
);

  always @(posedge io_clock) begin
    v_difftest_BasicTrapEvent (io_coreid,io_valid,io_cycleCnt,io_instrCnt,io_hasWFI);
  end
`endif
`endif
endmodule

