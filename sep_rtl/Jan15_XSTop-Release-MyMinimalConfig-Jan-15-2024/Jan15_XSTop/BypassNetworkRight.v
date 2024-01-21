module BypassNetworkRight(
  input         clock,
  input         reset,
  input         io_hold,
  input  [63:0] io_source_0,
  input  [63:0] io_source_1,
  input  [63:0] io_source_2,
  output [63:0] io_target_0,
  output [63:0] io_target_1,
  output [63:0] io_target_2,
  input         io_bypass_0_valid_0,
  input         io_bypass_0_valid_1,
  input         io_bypass_0_valid_2,
  input  [63:0] io_bypass_0_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [63:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg  last_cycle_hold; // @[BypassNetwork.scala 62:32]
  reg [63:0] target_reg_0; // @[BypassNetwork.scala 65:23]
  reg [63:0] target_reg_1; // @[BypassNetwork.scala 65:23]
  reg [63:0] target_reg_2; // @[BypassNetwork.scala 65:23]
  reg  bypass_reg_0_valid_0; // @[BypassNetwork.scala 66:23]
  reg  bypass_reg_0_valid_1; // @[BypassNetwork.scala 66:23]
  reg  bypass_reg_0_valid_2; // @[BypassNetwork.scala 66:23]
  reg [63:0] bypass_reg_0_data; // @[BypassNetwork.scala 66:23]
  wire [63:0] io_target_0_target_xs_0 = bypass_reg_0_valid_0 ? bypass_reg_0_data : 64'h0; // @[ParallelMux.scala 64:44]
  wire [63:0] io_target_1_target_xs_0 = bypass_reg_0_valid_1 ? bypass_reg_0_data : 64'h0; // @[ParallelMux.scala 64:44]
  wire [63:0] io_target_2_target_xs_0 = bypass_reg_0_valid_2 ? bypass_reg_0_data : 64'h0; // @[ParallelMux.scala 64:44]
  assign io_target_0 = |bypass_reg_0_valid_0 ? io_target_0_target_xs_0 : target_reg_0; // @[BypassNetwork.scala 46:21]
  assign io_target_1 = |bypass_reg_0_valid_1 ? io_target_1_target_xs_0 : target_reg_1; // @[BypassNetwork.scala 46:21]
  assign io_target_2 = |bypass_reg_0_valid_2 ? io_target_2_target_xs_0 : target_reg_2; // @[BypassNetwork.scala 46:21]
  always @(posedge clock) begin
    if (io_hold & ~last_cycle_hold) begin // @[BypassNetwork.scala 69:38]
      target_reg_0 <= io_target_0; // @[BypassNetwork.scala 71:16]
    end else if (~io_hold) begin // @[BypassNetwork.scala 72:24]
      target_reg_0 <= io_source_0; // @[BypassNetwork.scala 73:16]
    end
    if (io_hold & ~last_cycle_hold) begin // @[BypassNetwork.scala 69:38]
      target_reg_1 <= io_target_1; // @[BypassNetwork.scala 71:16]
    end else if (~io_hold) begin // @[BypassNetwork.scala 72:24]
      target_reg_1 <= io_source_1; // @[BypassNetwork.scala 73:16]
    end
    if (io_hold & ~last_cycle_hold) begin // @[BypassNetwork.scala 69:38]
      target_reg_2 <= io_target_2; // @[BypassNetwork.scala 71:16]
    end else if (~io_hold) begin // @[BypassNetwork.scala 72:24]
      target_reg_2 <= io_source_2; // @[BypassNetwork.scala 73:16]
    end
    if (io_hold & ~last_cycle_hold) begin // @[BypassNetwork.scala 69:38]
      bypass_reg_0_valid_0 <= 1'h0; // @[BypassNetwork.scala 70:34]
    end else if (~io_hold) begin // @[BypassNetwork.scala 72:24]
      bypass_reg_0_valid_0 <= io_bypass_0_valid_0; // @[BypassNetwork.scala 76:20]
    end
    if (io_hold & ~last_cycle_hold) begin // @[BypassNetwork.scala 69:38]
      bypass_reg_0_valid_1 <= 1'h0; // @[BypassNetwork.scala 70:34]
    end else if (~io_hold) begin // @[BypassNetwork.scala 72:24]
      bypass_reg_0_valid_1 <= io_bypass_0_valid_1; // @[BypassNetwork.scala 76:20]
    end
    if (io_hold & ~last_cycle_hold) begin // @[BypassNetwork.scala 69:38]
      bypass_reg_0_valid_2 <= 1'h0; // @[BypassNetwork.scala 70:34]
    end else if (~io_hold) begin // @[BypassNetwork.scala 72:24]
      bypass_reg_0_valid_2 <= io_bypass_0_valid_2; // @[BypassNetwork.scala 76:20]
    end
    if (!(io_hold & ~last_cycle_hold)) begin // @[BypassNetwork.scala 69:38]
      if (~io_hold) begin // @[BypassNetwork.scala 72:24]
        bypass_reg_0_data <= io_bypass_0_data; // @[BypassNetwork.scala 75:19]
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BypassNetwork.scala 62:32]
      last_cycle_hold <= 1'h0; // @[BypassNetwork.scala 62:32]
    end else begin
      last_cycle_hold <= io_hold; // @[BypassNetwork.scala 63:19]
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
  last_cycle_hold = _RAND_0[0:0];
  _RAND_1 = {2{`RANDOM}};
  target_reg_0 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  target_reg_1 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  target_reg_2 = _RAND_3[63:0];
  _RAND_4 = {1{`RANDOM}};
  bypass_reg_0_valid_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  bypass_reg_0_valid_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  bypass_reg_0_valid_2 = _RAND_6[0:0];
  _RAND_7 = {2{`RANDOM}};
  bypass_reg_0_data = _RAND_7[63:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    last_cycle_hold = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

