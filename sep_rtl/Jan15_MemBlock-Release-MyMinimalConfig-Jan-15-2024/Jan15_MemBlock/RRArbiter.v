module RRArbiter(
  input         clock,
  input         io_in_0_valid,
  input  [26:0] io_in_0_bits_req_info_vpn,
  input  [23:0] io_in_0_bits_ppn,
  input         io_in_1_valid,
  input  [26:0] io_in_1_bits_req_info_vpn,
  input  [23:0] io_in_1_bits_ppn,
  input         io_in_2_valid,
  input  [26:0] io_in_2_bits_req_info_vpn,
  input  [23:0] io_in_2_bits_ppn,
  input         io_in_3_valid,
  input  [26:0] io_in_3_bits_req_info_vpn,
  input  [23:0] io_in_3_bits_ppn,
  input         io_in_4_valid,
  input  [26:0] io_in_4_bits_req_info_vpn,
  input  [23:0] io_in_4_bits_ppn,
  input         io_in_5_valid,
  input  [26:0] io_in_5_bits_req_info_vpn,
  input  [23:0] io_in_5_bits_ppn,
  input         io_out_ready,
  output        io_out_valid,
  output [26:0] io_out_bits_req_info_vpn,
  output [23:0] io_out_bits_ppn,
  output [2:0]  io_chosen
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  _GEN_1 = 3'h1 == io_chosen ? io_in_1_valid : io_in_0_valid; // @[Arbiter.scala 56:{16,16}]
  wire  _GEN_2 = 3'h2 == io_chosen ? io_in_2_valid : _GEN_1; // @[Arbiter.scala 56:{16,16}]
  wire  _GEN_3 = 3'h3 == io_chosen ? io_in_3_valid : _GEN_2; // @[Arbiter.scala 56:{16,16}]
  wire  _GEN_4 = 3'h4 == io_chosen ? io_in_4_valid : _GEN_3; // @[Arbiter.scala 56:{16,16}]
  wire [26:0] _GEN_7 = 3'h1 == io_chosen ? io_in_1_bits_req_info_vpn : io_in_0_bits_req_info_vpn; // @[Arbiter.scala 57:{15,15}]
  wire [26:0] _GEN_8 = 3'h2 == io_chosen ? io_in_2_bits_req_info_vpn : _GEN_7; // @[Arbiter.scala 57:{15,15}]
  wire [26:0] _GEN_9 = 3'h3 == io_chosen ? io_in_3_bits_req_info_vpn : _GEN_8; // @[Arbiter.scala 57:{15,15}]
  wire [26:0] _GEN_10 = 3'h4 == io_chosen ? io_in_4_bits_req_info_vpn : _GEN_9; // @[Arbiter.scala 57:{15,15}]
  wire [23:0] _GEN_19 = 3'h1 == io_chosen ? io_in_1_bits_ppn : io_in_0_bits_ppn; // @[Arbiter.scala 57:{15,15}]
  wire [23:0] _GEN_20 = 3'h2 == io_chosen ? io_in_2_bits_ppn : _GEN_19; // @[Arbiter.scala 57:{15,15}]
  wire [23:0] _GEN_21 = 3'h3 == io_chosen ? io_in_3_bits_ppn : _GEN_20; // @[Arbiter.scala 57:{15,15}]
  wire [23:0] _GEN_22 = 3'h4 == io_chosen ? io_in_4_bits_ppn : _GEN_21; // @[Arbiter.scala 57:{15,15}]
  wire  _ctrl_validMask_grantMask_lastGrant_T = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  reg [2:0] lastGrant; // @[Reg.scala 16:16]
  wire  grantMask_1 = 3'h1 > lastGrant; // @[Arbiter.scala 82:49]
  wire  grantMask_2 = 3'h2 > lastGrant; // @[Arbiter.scala 82:49]
  wire  grantMask_3 = 3'h3 > lastGrant; // @[Arbiter.scala 82:49]
  wire  grantMask_4 = 3'h4 > lastGrant; // @[Arbiter.scala 82:49]
  wire  grantMask_5 = 3'h5 > lastGrant; // @[Arbiter.scala 82:49]
  wire  validMask_1 = io_in_1_valid & grantMask_1; // @[Arbiter.scala 83:76]
  wire  validMask_2 = io_in_2_valid & grantMask_2; // @[Arbiter.scala 83:76]
  wire  validMask_3 = io_in_3_valid & grantMask_3; // @[Arbiter.scala 83:76]
  wire  validMask_4 = io_in_4_valid & grantMask_4; // @[Arbiter.scala 83:76]
  wire  validMask_5 = io_in_5_valid & grantMask_5; // @[Arbiter.scala 83:76]
  wire [2:0] _GEN_37 = io_in_4_valid ? 3'h4 : 3'h5; // @[Arbiter.scala 92:{26,35}]
  wire [2:0] _GEN_38 = io_in_3_valid ? 3'h3 : _GEN_37; // @[Arbiter.scala 92:{26,35}]
  wire [2:0] _GEN_39 = io_in_2_valid ? 3'h2 : _GEN_38; // @[Arbiter.scala 92:{26,35}]
  wire [2:0] _GEN_40 = io_in_1_valid ? 3'h1 : _GEN_39; // @[Arbiter.scala 92:{26,35}]
  wire [2:0] _GEN_41 = io_in_0_valid ? 3'h0 : _GEN_40; // @[Arbiter.scala 92:{26,35}]
  wire [2:0] _GEN_42 = validMask_5 ? 3'h5 : _GEN_41; // @[Arbiter.scala 94:{24,33}]
  wire [2:0] _GEN_43 = validMask_4 ? 3'h4 : _GEN_42; // @[Arbiter.scala 94:{24,33}]
  wire [2:0] _GEN_44 = validMask_3 ? 3'h3 : _GEN_43; // @[Arbiter.scala 94:{24,33}]
  wire [2:0] _GEN_45 = validMask_2 ? 3'h2 : _GEN_44; // @[Arbiter.scala 94:{24,33}]
  assign io_out_valid = 3'h5 == io_chosen ? io_in_5_valid : _GEN_4; // @[Arbiter.scala 56:{16,16}]
  assign io_out_bits_req_info_vpn = 3'h5 == io_chosen ? io_in_5_bits_req_info_vpn : _GEN_10; // @[Arbiter.scala 57:{15,15}]
  assign io_out_bits_ppn = 3'h5 == io_chosen ? io_in_5_bits_ppn : _GEN_22; // @[Arbiter.scala 57:{15,15}]
  assign io_chosen = validMask_1 ? 3'h1 : _GEN_45; // @[Arbiter.scala 94:{24,33}]
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
  lastGrant = _RAND_0[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

