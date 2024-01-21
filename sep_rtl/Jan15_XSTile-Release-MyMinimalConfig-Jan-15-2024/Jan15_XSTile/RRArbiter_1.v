module RRArbiter_1(
  input         clock,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [6:0]  io_in_0_bits_set,
  input  [21:0] io_in_0_bits_tag,
  input  [5:0]  io_in_0_bits_off,
  input  [2:0]  io_in_0_bits_opcode,
  input  [2:0]  io_in_0_bits_param,
  input  [2:0]  io_in_0_bits_size,
  input  [4:0]  io_in_0_bits_sourceId,
  input  [1:0]  io_in_0_bits_bufIdx,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [6:0]  io_in_1_bits_set,
  input  [21:0] io_in_1_bits_tag,
  input  [5:0]  io_in_1_bits_off,
  input  [2:0]  io_in_1_bits_opcode,
  input  [2:0]  io_in_1_bits_param,
  input  [2:0]  io_in_1_bits_size,
  input  [4:0]  io_in_1_bits_sourceId,
  input  [1:0]  io_in_1_bits_bufIdx,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input  [6:0]  io_in_2_bits_set,
  input  [21:0] io_in_2_bits_tag,
  input  [5:0]  io_in_2_bits_off,
  input  [2:0]  io_in_2_bits_opcode,
  input  [2:0]  io_in_2_bits_param,
  input  [2:0]  io_in_2_bits_size,
  input  [4:0]  io_in_2_bits_sourceId,
  input  [1:0]  io_in_2_bits_bufIdx,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input  [6:0]  io_in_3_bits_set,
  input  [21:0] io_in_3_bits_tag,
  input  [5:0]  io_in_3_bits_off,
  input  [2:0]  io_in_3_bits_opcode,
  input  [2:0]  io_in_3_bits_param,
  input  [2:0]  io_in_3_bits_size,
  input  [4:0]  io_in_3_bits_sourceId,
  input  [1:0]  io_in_3_bits_bufIdx,
  input         io_out_ready,
  output        io_out_valid,
  output [6:0]  io_out_bits_set,
  output [21:0] io_out_bits_tag,
  output [5:0]  io_out_bits_off,
  output [2:0]  io_out_bits_opcode,
  output [2:0]  io_out_bits_param,
  output [2:0]  io_out_bits_size,
  output [4:0]  io_out_bits_sourceId,
  output [1:0]  io_out_bits_bufIdx,
  output [1:0]  io_chosen
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  _GEN_1 = 2'h1 == io_chosen ? io_in_1_valid : io_in_0_valid; // @[Arbiter.scala 56:{16,16}]
  wire  _GEN_2 = 2'h2 == io_chosen ? io_in_2_valid : _GEN_1; // @[Arbiter.scala 56:{16,16}]
  wire [6:0] _GEN_9 = 2'h1 == io_chosen ? io_in_1_bits_set : io_in_0_bits_set; // @[Arbiter.scala 57:{15,15}]
  wire [6:0] _GEN_10 = 2'h2 == io_chosen ? io_in_2_bits_set : _GEN_9; // @[Arbiter.scala 57:{15,15}]
  wire [21:0] _GEN_13 = 2'h1 == io_chosen ? io_in_1_bits_tag : io_in_0_bits_tag; // @[Arbiter.scala 57:{15,15}]
  wire [21:0] _GEN_14 = 2'h2 == io_chosen ? io_in_2_bits_tag : _GEN_13; // @[Arbiter.scala 57:{15,15}]
  wire [5:0] _GEN_17 = 2'h1 == io_chosen ? io_in_1_bits_off : io_in_0_bits_off; // @[Arbiter.scala 57:{15,15}]
  wire [5:0] _GEN_18 = 2'h2 == io_chosen ? io_in_2_bits_off : _GEN_17; // @[Arbiter.scala 57:{15,15}]
  wire [2:0] _GEN_21 = 2'h1 == io_chosen ? io_in_1_bits_opcode : io_in_0_bits_opcode; // @[Arbiter.scala 57:{15,15}]
  wire [2:0] _GEN_22 = 2'h2 == io_chosen ? io_in_2_bits_opcode : _GEN_21; // @[Arbiter.scala 57:{15,15}]
  wire [2:0] _GEN_25 = 2'h1 == io_chosen ? io_in_1_bits_param : io_in_0_bits_param; // @[Arbiter.scala 57:{15,15}]
  wire [2:0] _GEN_26 = 2'h2 == io_chosen ? io_in_2_bits_param : _GEN_25; // @[Arbiter.scala 57:{15,15}]
  wire [2:0] _GEN_29 = 2'h1 == io_chosen ? io_in_1_bits_size : io_in_0_bits_size; // @[Arbiter.scala 57:{15,15}]
  wire [2:0] _GEN_30 = 2'h2 == io_chosen ? io_in_2_bits_size : _GEN_29; // @[Arbiter.scala 57:{15,15}]
  wire [4:0] _GEN_33 = 2'h1 == io_chosen ? io_in_1_bits_sourceId : io_in_0_bits_sourceId; // @[Arbiter.scala 57:{15,15}]
  wire [4:0] _GEN_34 = 2'h2 == io_chosen ? io_in_2_bits_sourceId : _GEN_33; // @[Arbiter.scala 57:{15,15}]
  wire [1:0] _GEN_37 = 2'h1 == io_chosen ? io_in_1_bits_bufIdx : io_in_0_bits_bufIdx; // @[Arbiter.scala 57:{15,15}]
  wire [1:0] _GEN_38 = 2'h2 == io_chosen ? io_in_2_bits_bufIdx : _GEN_37; // @[Arbiter.scala 57:{15,15}]
  wire  _ctrl_validMask_grantMask_lastGrant_T = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  reg [1:0] lastGrant; // @[Reg.scala 16:16]
  wire  grantMask_1 = 2'h1 > lastGrant; // @[Arbiter.scala 82:49]
  wire  grantMask_2 = 2'h2 > lastGrant; // @[Arbiter.scala 82:49]
  wire  grantMask_3 = 2'h3 > lastGrant; // @[Arbiter.scala 82:49]
  wire  validMask_1 = io_in_1_valid & grantMask_1; // @[Arbiter.scala 83:76]
  wire  validMask_2 = io_in_2_valid & grantMask_2; // @[Arbiter.scala 83:76]
  wire  validMask_3 = io_in_3_valid & grantMask_3; // @[Arbiter.scala 83:76]
  wire  ctrl_2 = ~validMask_1; // @[Arbiter.scala 46:78]
  wire  ctrl_3 = ~(validMask_1 | validMask_2); // @[Arbiter.scala 46:78]
  wire  ctrl_4 = ~(validMask_1 | validMask_2 | validMask_3); // @[Arbiter.scala 46:78]
  wire  ctrl_5 = ~(validMask_1 | validMask_2 | validMask_3 | io_in_0_valid); // @[Arbiter.scala 46:78]
  wire  ctrl_6 = ~(validMask_1 | validMask_2 | validMask_3 | io_in_0_valid | io_in_1_valid); // @[Arbiter.scala 46:78]
  wire  ctrl_7 = ~(validMask_1 | validMask_2 | validMask_3 | io_in_0_valid | io_in_1_valid | io_in_2_valid); // @[Arbiter.scala 46:78]
  wire  _T_3 = grantMask_1 | ctrl_5; // @[Arbiter.scala 87:50]
  wire  _T_5 = ctrl_2 & grantMask_2 | ctrl_6; // @[Arbiter.scala 87:50]
  wire  _T_7 = ctrl_3 & grantMask_3 | ctrl_7; // @[Arbiter.scala 87:50]
  wire [1:0] _GEN_105 = io_in_2_valid ? 2'h2 : 2'h3; // @[Arbiter.scala 92:{26,35}]
  wire [1:0] _GEN_106 = io_in_1_valid ? 2'h1 : _GEN_105; // @[Arbiter.scala 92:{26,35}]
  wire [1:0] _GEN_107 = io_in_0_valid ? 2'h0 : _GEN_106; // @[Arbiter.scala 92:{26,35}]
  wire [1:0] _GEN_108 = validMask_3 ? 2'h3 : _GEN_107; // @[Arbiter.scala 94:{24,33}]
  wire [1:0] _GEN_109 = validMask_2 ? 2'h2 : _GEN_108; // @[Arbiter.scala 94:{24,33}]
  assign io_in_0_ready = ctrl_4 & io_out_ready; // @[Arbiter.scala 75:21]
  assign io_in_1_ready = _T_3 & io_out_ready; // @[Arbiter.scala 75:21]
  assign io_in_2_ready = _T_5 & io_out_ready; // @[Arbiter.scala 75:21]
  assign io_in_3_ready = _T_7 & io_out_ready; // @[Arbiter.scala 75:21]
  assign io_out_valid = 2'h3 == io_chosen ? io_in_3_valid : _GEN_2; // @[Arbiter.scala 56:{16,16}]
  assign io_out_bits_set = 2'h3 == io_chosen ? io_in_3_bits_set : _GEN_10; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_tag = 2'h3 == io_chosen ? io_in_3_bits_tag : _GEN_14; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_off = 2'h3 == io_chosen ? io_in_3_bits_off : _GEN_18; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_opcode = 2'h3 == io_chosen ? io_in_3_bits_opcode : _GEN_22; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_param = 2'h3 == io_chosen ? io_in_3_bits_param : _GEN_26; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_size = 2'h3 == io_chosen ? io_in_3_bits_size : _GEN_30; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_sourceId = 2'h3 == io_chosen ? io_in_3_bits_sourceId : _GEN_34; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_bufIdx = 2'h3 == io_chosen ? io_in_3_bits_bufIdx : _GEN_38; // @[Arbiter.scala 57:{15,15}]
  assign io_chosen = validMask_1 ? 2'h1 : _GEN_109; // @[Arbiter.scala 94:{24,33}]
  always @(posedge clock) begin
    if (_ctrl_validMask_grantMask_lastGrant_T) begin // @[Reg.scala 17:18]
      lastGrant <= io_chosen; // @[Reg.scala 17:22]
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
  lastGrant = _RAND_0[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

