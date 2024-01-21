module DifftestLrScEvent(
  input         io_clock,
input  [ 7:0] io_coreid,
input         io_valid,
input         io_success
);
`ifndef SYNTHESIS
`ifdef DIFFTEST

import "DPI-C" function void v_difftest_LrScEvent (
input     byte io_coreid,
input      bit io_valid,
input      bit io_success
);

  always @(posedge io_clock) begin
    v_difftest_LrScEvent (io_coreid,io_valid,io_success);
  end
`endif
`endif
endmodule

