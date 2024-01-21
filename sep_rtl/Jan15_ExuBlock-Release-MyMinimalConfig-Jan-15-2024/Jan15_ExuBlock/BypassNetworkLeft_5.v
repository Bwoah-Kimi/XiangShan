module BypassNetworkLeft_5(
  input         clock,
  input         io_hold,
  input  [63:0] io_source_0,
  output [63:0] io_target_0,
  input         io_bypass_0_valid_0,
  input  [63:0] io_bypass_0_data,
  input         io_bypass_1_valid_0,
  input  [63:0] io_bypass_1_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] bypassedData_0; // @[BypassNetwork.scala 91:25]
  wire [1:0] _bypassedData_0_target_T = {io_bypass_1_valid_0,io_bypass_0_valid_0}; // @[BypassNetwork.scala 46:32]
  wire [63:0] bypassedData_0_target_xs_0 = io_bypass_0_valid_0 ? io_bypass_0_data : 64'h0; // @[ParallelMux.scala 64:44]
  wire [63:0] bypassedData_0_target_xs_1 = io_bypass_1_valid_0 ? io_bypass_1_data : 64'h0; // @[ParallelMux.scala 64:44]
  wire [63:0] _bypassedData_0_target_T_2 = bypassedData_0_target_xs_0 | bypassedData_0_target_xs_1; // @[ParallelMux.scala 36:53]
  assign io_target_0 = bypassedData_0; // @[BypassNetwork.scala 99:13]
  always @(posedge clock) begin
    if (~io_hold) begin // @[BypassNetwork.scala 93:19]
      if (|_bypassedData_0_target_T) begin // @[BypassNetwork.scala 46:21]
        bypassedData_0 <= _bypassedData_0_target_T_2;
      end else begin
        bypassedData_0 <= io_source_0;
      end
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
  bypassedData_0 = _RAND_0[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

