module PipelineRegModule_24(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input  [3:0]  io_in_bits_source,
  input  [35:0] io_in_bits_addr,
  input  [7:0]  io_in_bits_way_en,
  input  [1:0]  io_in_bits_alias,
  input  [1:0]  io_in_bits_miss_id,
  input  [3:0]  io_in_bits_id,
  input         io_in_bits_error,
  input  [7:0]  io_in_bits_wmask,
  input  [63:0] io_in_bits_data_0,
  input  [63:0] io_in_bits_data_1,
  input  [63:0] io_in_bits_data_2,
  input  [63:0] io_in_bits_data_3,
  input  [63:0] io_in_bits_data_4,
  input  [63:0] io_in_bits_data_5,
  input  [63:0] io_in_bits_data_6,
  input  [63:0] io_in_bits_data_7,
  input  [1:0]  io_in_bits_meta_coh_state,
  input         io_out_ready,
  output        io_out_valid,
  output [3:0]  io_out_bits_source,
  output [35:0] io_out_bits_addr,
  output [7:0]  io_out_bits_way_en,
  output [1:0]  io_out_bits_alias,
  output [1:0]  io_out_bits_miss_id,
  output [3:0]  io_out_bits_id,
  output        io_out_bits_error,
  output [7:0]  io_out_bits_wmask,
  output [63:0] io_out_bits_data_0,
  output [63:0] io_out_bits_data_1,
  output [63:0] io_out_bits_data_2,
  output [63:0] io_out_bits_data_3,
  output [63:0] io_out_bits_data_4,
  output [63:0] io_out_bits_data_5,
  output [63:0] io_out_bits_data_6,
  output [63:0] io_out_bits_data_7,
  output [1:0]  io_out_bits_meta_coh_state
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [31:0] _RAND_17;
`endif // RANDOMIZE_REG_INIT
  reg  pipeline_reg_valid; // @[MemCommon.scala 385:24]
  wire  _T = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_0 = _T ? 1'h0 : pipeline_reg_valid; // @[MemCommon.scala 385:24 387:{26,34}]
  wire  _T_1 = io_in_ready & io_in_valid; // @[Decoupled.scala 50:35]
  reg [3:0] io_out_bits_rsource; // @[Reg.scala 16:16]
  reg [35:0] io_out_bits_raddr; // @[Reg.scala 16:16]
  reg [7:0] io_out_bits_rway_en; // @[Reg.scala 16:16]
  reg [1:0] io_out_bits_ralias; // @[Reg.scala 16:16]
  reg [1:0] io_out_bits_rmiss_id; // @[Reg.scala 16:16]
  reg [3:0] io_out_bits_rid; // @[Reg.scala 16:16]
  reg  io_out_bits_rerror; // @[Reg.scala 16:16]
  reg [7:0] io_out_bits_rwmask; // @[Reg.scala 16:16]
  reg [63:0] io_out_bits_rdata_0; // @[Reg.scala 16:16]
  reg [63:0] io_out_bits_rdata_1; // @[Reg.scala 16:16]
  reg [63:0] io_out_bits_rdata_2; // @[Reg.scala 16:16]
  reg [63:0] io_out_bits_rdata_3; // @[Reg.scala 16:16]
  reg [63:0] io_out_bits_rdata_4; // @[Reg.scala 16:16]
  reg [63:0] io_out_bits_rdata_5; // @[Reg.scala 16:16]
  reg [63:0] io_out_bits_rdata_6; // @[Reg.scala 16:16]
  reg [63:0] io_out_bits_rdata_7; // @[Reg.scala 16:16]
  reg [1:0] io_out_bits_rmeta_coh_state; // @[Reg.scala 16:16]
  assign io_in_ready = ~pipeline_reg_valid | io_out_ready; // @[MemCommon.scala 391:27]
  assign io_out_valid = pipeline_reg_valid; // @[MemCommon.scala 393:18]
  assign io_out_bits_source = io_out_bits_rsource; // @[MemCommon.scala 392:17]
  assign io_out_bits_addr = io_out_bits_raddr; // @[MemCommon.scala 392:17]
  assign io_out_bits_way_en = io_out_bits_rway_en; // @[MemCommon.scala 392:17]
  assign io_out_bits_alias = io_out_bits_ralias; // @[MemCommon.scala 392:17]
  assign io_out_bits_miss_id = io_out_bits_rmiss_id; // @[MemCommon.scala 392:17]
  assign io_out_bits_id = io_out_bits_rid; // @[MemCommon.scala 392:17]
  assign io_out_bits_error = io_out_bits_rerror; // @[MemCommon.scala 392:17]
  assign io_out_bits_wmask = io_out_bits_rwmask; // @[MemCommon.scala 392:17]
  assign io_out_bits_data_0 = io_out_bits_rdata_0; // @[MemCommon.scala 392:17]
  assign io_out_bits_data_1 = io_out_bits_rdata_1; // @[MemCommon.scala 392:17]
  assign io_out_bits_data_2 = io_out_bits_rdata_2; // @[MemCommon.scala 392:17]
  assign io_out_bits_data_3 = io_out_bits_rdata_3; // @[MemCommon.scala 392:17]
  assign io_out_bits_data_4 = io_out_bits_rdata_4; // @[MemCommon.scala 392:17]
  assign io_out_bits_data_5 = io_out_bits_rdata_5; // @[MemCommon.scala 392:17]
  assign io_out_bits_data_6 = io_out_bits_rdata_6; // @[MemCommon.scala 392:17]
  assign io_out_bits_data_7 = io_out_bits_rdata_7; // @[MemCommon.scala 392:17]
  assign io_out_bits_meta_coh_state = io_out_bits_rmeta_coh_state; // @[MemCommon.scala 392:17]
  always @(posedge clock) begin
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rsource <= io_in_bits_source; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_raddr <= io_in_bits_addr; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rway_en <= io_in_bits_way_en; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_ralias <= io_in_bits_alias; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rmiss_id <= io_in_bits_miss_id; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rid <= io_in_bits_id; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rerror <= io_in_bits_error; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rwmask <= io_in_bits_wmask; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rdata_0 <= io_in_bits_data_0; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rdata_1 <= io_in_bits_data_1; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rdata_2 <= io_in_bits_data_2; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rdata_3 <= io_in_bits_data_3; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rdata_4 <= io_in_bits_data_4; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rdata_5 <= io_in_bits_data_5; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rdata_6 <= io_in_bits_data_6; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rdata_7 <= io_in_bits_data_7; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rmeta_coh_state <= io_in_bits_meta_coh_state; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MemCommon.scala 388:25]
      pipeline_reg_valid <= 1'h0; // @[MemCommon.scala 388:33]
    end else begin
      pipeline_reg_valid <= _T_1 | _GEN_0;
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
  pipeline_reg_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_out_bits_rsource = _RAND_1[3:0];
  _RAND_2 = {2{`RANDOM}};
  io_out_bits_raddr = _RAND_2[35:0];
  _RAND_3 = {1{`RANDOM}};
  io_out_bits_rway_en = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  io_out_bits_ralias = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  io_out_bits_rmiss_id = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  io_out_bits_rid = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  io_out_bits_rerror = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_out_bits_rwmask = _RAND_8[7:0];
  _RAND_9 = {2{`RANDOM}};
  io_out_bits_rdata_0 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  io_out_bits_rdata_1 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  io_out_bits_rdata_2 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  io_out_bits_rdata_3 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  io_out_bits_rdata_4 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  io_out_bits_rdata_5 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  io_out_bits_rdata_6 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  io_out_bits_rdata_7 = _RAND_16[63:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_bits_rmeta_coh_state = _RAND_17[1:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    pipeline_reg_valid = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

