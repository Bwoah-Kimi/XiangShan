module SRAMWrapper(
  input         clock,
  input         reset,
  input         io_rreq_valid,
  input  [10:0] io_rreq_bits_setIdx,
  output [63:0] io_rresp_data_0,
  input         io_wreq_valid,
  input  [10:0] io_wreq_bits_setIdx,
  input  [63:0] io_wreq_bits_data_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  banks_0_clock; // @[SRAMWrapper.scala 40:22]
  wire  banks_0_io_rreq_valid; // @[SRAMWrapper.scala 40:22]
  wire [10:0] banks_0_io_rreq_bits_setIdx; // @[SRAMWrapper.scala 40:22]
  wire [63:0] banks_0_io_rresp_data_0; // @[SRAMWrapper.scala 40:22]
  wire  banks_0_io_wreq_valid; // @[SRAMWrapper.scala 40:22]
  wire [10:0] banks_0_io_wreq_bits_setIdx; // @[SRAMWrapper.scala 40:22]
  wire [63:0] banks_0_io_wreq_bits_data_0; // @[SRAMWrapper.scala 40:22]
  wire  clkGate_TE; // @[SRAMWrapper.scala 44:25]
  wire  clkGate_E; // @[SRAMWrapper.scala 44:25]
  wire  clkGate_CK; // @[SRAMWrapper.scala 44:25]
  wire  clkGate_Q; // @[SRAMWrapper.scala 44:25]
  reg  clk_en; // @[SRAMWrapper.scala 45:25]
  SRAMTemplate_288 banks_0 ( // @[SRAMWrapper.scala 40:22]
    .clock(banks_0_clock),
    .io_rreq_valid(banks_0_io_rreq_valid),
    .io_rreq_bits_setIdx(banks_0_io_rreq_bits_setIdx),
    .io_rresp_data_0(banks_0_io_rresp_data_0),
    .io_wreq_valid(banks_0_io_wreq_valid),
    .io_wreq_bits_setIdx(banks_0_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(banks_0_io_wreq_bits_data_0)
  );
  STD_CLKGT_func clkGate ( // @[SRAMWrapper.scala 44:25]
    .TE(clkGate_TE),
    .E(clkGate_E),
    .CK(clkGate_CK),
    .Q(clkGate_Q)
  );
  assign io_rresp_data_0 = banks_0_io_rresp_data_0; // @[SRAMWrapper.scala 69:18]
  assign banks_0_clock = clock;
  assign banks_0_io_rreq_valid = io_rreq_valid; // @[SRAMWrapper.scala 55:43]
  assign banks_0_io_rreq_bits_setIdx = io_rreq_bits_setIdx; // @[SRAMWrapper.scala 32:43]
  assign banks_0_io_wreq_valid = io_wreq_valid; // @[SRAMWrapper.scala 57:43]
  assign banks_0_io_wreq_bits_setIdx = io_wreq_bits_setIdx; // @[SRAMWrapper.scala 34:43]
  assign banks_0_io_wreq_bits_data_0 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 66:{18,18}]
  assign clkGate_TE = 1'h0; // @[SRAMWrapper.scala 47:19]
  assign clkGate_E = clk_en; // @[SRAMWrapper.scala 48:18]
  assign clkGate_CK = clock; // @[SRAMWrapper.scala 49:19]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SRAMWrapper.scala 46:15]
      clk_en <= 1'h0;
    end else begin
      clk_en <= ~clk_en;
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
  clk_en = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    clk_en = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

