module BypassNetworkLeft_2(
  input         clock,
  input         io_hold,
  input  [63:0] io_source_0,
  input  [63:0] io_source_1,
  output [63:0] io_target_0,
  output [63:0] io_target_1,
  input         io_bypass_0_valid_0,
  input         io_bypass_0_valid_1,
  input  [63:0] io_bypass_0_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] bypassedData_0; // @[BypassNetwork.scala 91:25]
  reg [63:0] bypassedData_1; // @[BypassNetwork.scala 91:25]
  assign io_target_0 = bypassedData_0; // @[BypassNetwork.scala 99:13]
  assign io_target_1 = bypassedData_1; // @[BypassNetwork.scala 99:13]
  always @(posedge clock) begin
    if (~io_hold) begin // @[BypassNetwork.scala 93:19]
      if (|io_bypass_0_valid_0) begin // @[BypassNetwork.scala 46:21]
        if (io_bypass_0_valid_0) begin // @[ParallelMux.scala 64:44]
          bypassedData_0 <= io_bypass_0_data;
        end else begin
          bypassedData_0 <= 64'h0;
        end
      end else begin
        bypassedData_0 <= io_source_0;
      end
    end
    if (~io_hold) begin // @[BypassNetwork.scala 93:19]
      if (|io_bypass_0_valid_1) begin // @[BypassNetwork.scala 46:21]
        if (io_bypass_0_valid_1) begin // @[ParallelMux.scala 64:44]
          bypassedData_1 <= io_bypass_0_data;
        end else begin
          bypassedData_1 <= 64'h0;
        end
      end else begin
        bypassedData_1 <= io_source_1;
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
  _RAND_1 = {2{`RANDOM}};
  bypassedData_1 = _RAND_1[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

