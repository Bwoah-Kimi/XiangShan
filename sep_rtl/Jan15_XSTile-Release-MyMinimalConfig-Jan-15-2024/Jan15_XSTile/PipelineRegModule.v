module PipelineRegModule(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input  [35:0] io_in_bits_addr,
  input  [7:0]  io_in_bits_way_en,
  input  [1:0]  io_in_bits_alias,
  input         io_out_ready,
  output        io_out_valid,
  output [35:0] io_out_bits_addr,
  output [7:0]  io_out_bits_way_en,
  output [1:0]  io_out_bits_alias
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg  pipeline_reg_valid; // @[MemCommon.scala 385:24]
  wire  _T = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_0 = _T ? 1'h0 : pipeline_reg_valid; // @[MemCommon.scala 385:24 387:{26,34}]
  wire  _T_1 = io_in_ready & io_in_valid; // @[Decoupled.scala 50:35]
  reg [35:0] io_out_bits_raddr; // @[Reg.scala 16:16]
  reg [7:0] io_out_bits_rway_en; // @[Reg.scala 16:16]
  reg [1:0] io_out_bits_ralias; // @[Reg.scala 16:16]
  assign io_in_ready = ~pipeline_reg_valid | io_out_ready; // @[MemCommon.scala 391:27]
  assign io_out_valid = pipeline_reg_valid; // @[MemCommon.scala 393:18]
  assign io_out_bits_addr = io_out_bits_raddr; // @[MemCommon.scala 392:17]
  assign io_out_bits_way_en = io_out_bits_rway_en; // @[MemCommon.scala 392:17]
  assign io_out_bits_alias = io_out_bits_ralias; // @[MemCommon.scala 392:17]
  always @(posedge clock) begin
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_raddr <= io_in_bits_addr; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_rway_en <= io_in_bits_way_en; // @[Reg.scala 17:22]
    end
    if (_T_1) begin // @[Reg.scala 17:18]
      io_out_bits_ralias <= io_in_bits_alias; // @[Reg.scala 17:22]
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
  _RAND_1 = {2{`RANDOM}};
  io_out_bits_raddr = _RAND_1[35:0];
  _RAND_2 = {1{`RANDOM}};
  io_out_bits_rway_en = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  io_out_bits_ralias = _RAND_3[1:0];
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

