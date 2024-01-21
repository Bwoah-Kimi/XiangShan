module Fence(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input  [63:0] io_in_bits_src_0,
  input  [63:0] io_in_bits_src_1,
  input         io_in_bits_uop_cf_pd_isRVC,
  input  [1:0]  io_in_bits_uop_cf_pd_brType,
  input         io_in_bits_uop_cf_pd_isCall,
  input         io_in_bits_uop_cf_pd_isRet,
  input  [6:0]  io_in_bits_uop_ctrl_fuOpType,
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input  [19:0] io_in_bits_uop_ctrl_imm,
  input  [5:0]  io_in_bits_uop_pdest,
  input         io_in_bits_uop_robIdx_flag,
  input  [4:0]  io_in_bits_uop_robIdx_value,
  input         io_in_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_bits_uop_lqIdx_value,
  output        io_out_valid,
  output        io_out_bits_uop_cf_exceptionVec_2,
  output        io_out_bits_uop_cf_pd_isRVC,
  output [1:0]  io_out_bits_uop_cf_pd_brType,
  output        io_out_bits_uop_cf_pd_isCall,
  output        io_out_bits_uop_cf_pd_isRet,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output [19:0] io_out_bits_uop_ctrl_imm,
  output [5:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [4:0]  io_out_bits_uop_robIdx_value,
  output        io_out_bits_uop_lqIdx_flag,
  output [3:0]  io_out_bits_uop_lqIdx_value,
  output        sfence_valid,
  output        sfence_bits_rs1,
  output        sfence_bits_rs2,
  output [38:0] sfence_bits_addr,
  output [15:0] sfence_bits_asid,
  output        fencei,
  output        toSbuffer_flushSb,
  input         toSbuffer_sbIsEmpty,
  input         disableSfence
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  wire  _T = io_in_ready & io_in_valid; // @[Decoupled.scala 50:35]
  reg [2:0] state; // @[Fence.scala 46:22]
  reg  uop_cf_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] uop_cf_pd_brType; // @[Reg.scala 16:16]
  reg  uop_cf_pd_isCall; // @[Reg.scala 16:16]
  reg  uop_cf_pd_isRet; // @[Reg.scala 16:16]
  reg [6:0] uop_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  uop_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  uop_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [19:0] uop_ctrl_imm; // @[Reg.scala 16:16]
  reg [5:0] uop_pdest; // @[Reg.scala 16:16]
  reg  uop_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] uop_robIdx_value; // @[Reg.scala 16:16]
  reg  uop_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] uop_lqIdx_value; // @[Reg.scala 16:16]
  wire  _toSbuffer_flushSb_T = state == 3'h1; // @[Fence.scala 62:25]
  wire  _toSbuffer_flushSb_T_1 = uop_ctrl_fuOpType == 7'h11; // @[Fence.scala 62:46]
  reg [63:0] sfence_bits_addr_r; // @[Reg.scala 16:16]
  reg [63:0] sfence_bits_asid_r; // @[Reg.scala 16:16]
  wire [2:0] _GEN_110 = state == 3'h0 & io_in_valid ? 3'h1 : state; // @[Fence.scala 46:22 73:{42,50}]
  wire [2:0] _GEN_111 = _toSbuffer_flushSb_T & uop_ctrl_fuOpType == 7'h12 & toSbuffer_sbIsEmpty ? 3'h3 : _GEN_110; // @[Fence.scala 74:{69,77}]
  wire  _T_27 = state != 3'h0; // @[Fence.scala 78:15]
  wire  _T_28 = state != 3'h1; // @[Fence.scala 78:35]
  assign io_in_ready = state == 3'h0; // @[Fence.scala 80:24]
  assign io_out_valid = _T_27 & _T_28; // @[Fence.scala 81:36]
  assign io_out_bits_uop_cf_exceptionVec_2 = _toSbuffer_flushSb_T_1 & disableSfence; // @[Fence.scala 84:80]
  assign io_out_bits_uop_cf_pd_isRVC = uop_cf_pd_isRVC; // @[Fence.scala 83:19]
  assign io_out_bits_uop_cf_pd_brType = uop_cf_pd_brType; // @[Fence.scala 83:19]
  assign io_out_bits_uop_cf_pd_isCall = uop_cf_pd_isCall; // @[Fence.scala 83:19]
  assign io_out_bits_uop_cf_pd_isRet = uop_cf_pd_isRet; // @[Fence.scala 83:19]
  assign io_out_bits_uop_ctrl_rfWen = uop_ctrl_rfWen; // @[Fence.scala 83:19]
  assign io_out_bits_uop_ctrl_fpWen = uop_ctrl_fpWen; // @[Fence.scala 83:19]
  assign io_out_bits_uop_ctrl_imm = uop_ctrl_imm; // @[Fence.scala 83:19]
  assign io_out_bits_uop_pdest = uop_pdest; // @[Fence.scala 83:19]
  assign io_out_bits_uop_robIdx_flag = uop_robIdx_flag; // @[Fence.scala 83:19]
  assign io_out_bits_uop_robIdx_value = uop_robIdx_value; // @[Fence.scala 83:19]
  assign io_out_bits_uop_lqIdx_flag = uop_lqIdx_flag; // @[Fence.scala 83:19]
  assign io_out_bits_uop_lqIdx_value = uop_lqIdx_value; // @[Fence.scala 83:19]
  assign sfence_valid = state == 3'h2 & ~disableSfence; // @[Fence.scala 64:35]
  assign sfence_bits_rs1 = uop_ctrl_imm[4:0] == 5'h0; // @[Fence.scala 65:42]
  assign sfence_bits_rs2 = uop_ctrl_imm[9:5] == 5'h0; // @[Fence.scala 66:42]
  assign sfence_bits_addr = sfence_bits_addr_r[38:0]; // @[Fence.scala 70:20]
  assign sfence_bits_asid = sfence_bits_asid_r[15:0]; // @[Fence.scala 71:20]
  assign fencei = state == 3'h3; // @[Fence.scala 63:25]
  assign toSbuffer_flushSb = state == 3'h1 & ~(uop_ctrl_fuOpType == 7'h11 & disableSfence); // @[Fence.scala 62:36]
  always @(posedge clock) begin
    if (_T) begin // @[Reg.scala 17:18]
      uop_cf_pd_isRVC <= io_in_bits_uop_cf_pd_isRVC; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uop_cf_pd_brType <= io_in_bits_uop_cf_pd_brType; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uop_cf_pd_isCall <= io_in_bits_uop_cf_pd_isCall; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uop_cf_pd_isRet <= io_in_bits_uop_cf_pd_isRet; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uop_ctrl_fuOpType <= io_in_bits_uop_ctrl_fuOpType; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uop_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uop_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uop_ctrl_imm <= io_in_bits_uop_ctrl_imm; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uop_pdest <= io_in_bits_uop_pdest; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uop_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uop_robIdx_value <= io_in_bits_uop_robIdx_value; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uop_lqIdx_flag <= io_in_bits_uop_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uop_lqIdx_value <= io_in_bits_uop_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      sfence_bits_addr_r <= io_in_bits_src_0; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      sfence_bits_asid_r <= io_in_bits_src_1; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Fence.scala 78:47]
      state <= 3'h0; // @[Fence.scala 78:55]
    end else if (state != 3'h0 & state != 3'h1) begin // @[Fence.scala 77:71]
      state <= 3'h0; // @[Fence.scala 77:79]
    end else if (_toSbuffer_flushSb_T & uop_ctrl_fuOpType == 7'h0 & toSbuffer_sbIsEmpty) begin // @[Fence.scala 76:69]
      state <= 3'h5; // @[Fence.scala 76:77]
    end else if (_toSbuffer_flushSb_T & uop_ctrl_fuOpType == 7'h10 & toSbuffer_sbIsEmpty) begin // @[Fence.scala 75:88]
      state <= 3'h4; // @[Fence.scala 75:96]
    end else if (_toSbuffer_flushSb_T & _toSbuffer_flushSb_T_1 & (toSbuffer_sbIsEmpty | disableSfence)) begin
      state <= 3'h2;
    end else begin
      state <= _GEN_111;
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
  state = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  uop_cf_pd_isRVC = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  uop_cf_pd_brType = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  uop_cf_pd_isCall = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  uop_cf_pd_isRet = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  uop_ctrl_fuOpType = _RAND_5[6:0];
  _RAND_6 = {1{`RANDOM}};
  uop_ctrl_rfWen = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  uop_ctrl_fpWen = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  uop_ctrl_imm = _RAND_8[19:0];
  _RAND_9 = {1{`RANDOM}};
  uop_pdest = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  uop_robIdx_flag = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  uop_robIdx_value = _RAND_11[4:0];
  _RAND_12 = {1{`RANDOM}};
  uop_lqIdx_flag = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  uop_lqIdx_value = _RAND_13[3:0];
  _RAND_14 = {2{`RANDOM}};
  sfence_bits_addr_r = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  sfence_bits_asid_r = _RAND_15[63:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    state = 3'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

