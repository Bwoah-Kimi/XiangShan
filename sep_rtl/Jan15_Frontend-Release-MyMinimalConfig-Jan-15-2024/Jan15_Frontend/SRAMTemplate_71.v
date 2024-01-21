module SRAMTemplate_71(
  input          clock,
  input          reset,
  input          io_rreq_valid,
  input  [2:0]   io_rreq_bits_setIdx,
  output [255:0] io_rresp_data_0_meta,
  input          io_wreq_valid,
  input  [2:0]   io_wreq_bits_setIdx,
  input  [255:0] io_wreq_bits_data_0_meta
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire [2:0] array_R0_addr; // @[SRAMTemplate.scala 105:26]
  wire  array_R0_en; // @[SRAMTemplate.scala 105:26]
  wire  array_R0_clk; // @[SRAMTemplate.scala 105:26]
  wire [255:0] array_R0_data_0; // @[SRAMTemplate.scala 105:26]
  wire [2:0] array_W0_addr; // @[SRAMTemplate.scala 105:26]
  wire  array_W0_en; // @[SRAMTemplate.scala 105:26]
  wire  array_W0_clk; // @[SRAMTemplate.scala 105:26]
  wire [255:0] array_W0_data_0; // @[SRAMTemplate.scala 105:26]
  reg [63:0] bypass_wdata_lfsr; // @[LFSR64.scala 27:33]
  wire  bypass_wdata_xor = bypass_wdata_lfsr[0] ^ bypass_wdata_lfsr[1] ^ bypass_wdata_lfsr[3] ^ bypass_wdata_lfsr[4]; // @[LFSR64.scala 29:43]
  wire [63:0] _bypass_wdata_lfsr_T_2 = {bypass_wdata_xor,bypass_wdata_lfsr[63:1]}; // @[Cat.scala 31:58]
  reg  bypass_mask_need_check; // @[SRAMTemplate.scala 135:29]
  reg [2:0] bypass_mask_waddr_reg; // @[SRAMTemplate.scala 136:28]
  reg [2:0] bypass_mask_raddr_reg; // @[SRAMTemplate.scala 137:28]
  wire  bypass_mask_bypass = bypass_mask_need_check & bypass_mask_waddr_reg == bypass_mask_raddr_reg; // @[SRAMTemplate.scala 139:39]
  wire [255:0] bypass_wdata_0 = {{192'd0}, bypass_wdata_lfsr}; // @[SRAMTemplate.scala 143:{58,58}]
  array_11 array ( // @[SRAMTemplate.scala 105:26]
    .R0_addr(array_R0_addr),
    .R0_en(array_R0_en),
    .R0_clk(array_R0_clk),
    .R0_data_0(array_R0_data_0),
    .W0_addr(array_W0_addr),
    .W0_en(array_W0_en),
    .W0_clk(array_W0_clk),
    .W0_data_0(array_W0_data_0)
  );
  assign io_rresp_data_0_meta = bypass_mask_bypass ? bypass_wdata_0 : array_R0_data_0; // @[SRAMTemplate.scala 148:30]
  assign array_R0_addr = io_rreq_bits_setIdx; // @[SRAMTemplate.scala 130:29]
  assign array_R0_en = io_rreq_valid; // @[SRAMTemplate.scala 105:26 130:{29,29}]
  assign array_R0_clk = clock; // @[SRAMTemplate.scala 130:{29,29}]
  assign array_W0_addr = io_wreq_bits_setIdx; // @[SRAMTemplate.scala 128:14]
  assign array_W0_en = io_wreq_valid; // @[SRAMTemplate.scala 128:14 105:26]
  assign array_W0_clk = clock; // @[SRAMTemplate.scala 128:14]
  assign array_W0_data_0 = io_wreq_bits_data_0_meta; // @[SRAMTemplate.scala 126:26]
  always @(posedge clock) begin
    bypass_mask_need_check <= io_rreq_valid & io_wreq_valid; // @[SRAMTemplate.scala 135:34]
    bypass_mask_waddr_reg <= io_wreq_bits_setIdx; // @[SRAMTemplate.scala 136:28]
    bypass_mask_raddr_reg <= io_rreq_bits_setIdx; // @[SRAMTemplate.scala 137:28]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LFSR64.scala 31:18]
      bypass_wdata_lfsr <= 64'h1234567887654321;
    end else if (bypass_wdata_lfsr == 64'h0) begin
      bypass_wdata_lfsr <= 64'h1;
    end else begin
      bypass_wdata_lfsr <= _bypass_wdata_lfsr_T_2;
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
  bypass_wdata_lfsr = _RAND_0[63:0];
  _RAND_1 = {1{`RANDOM}};
  bypass_mask_need_check = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  bypass_mask_waddr_reg = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  bypass_mask_raddr_reg = _RAND_3[2:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    bypass_wdata_lfsr = 64'h1234567887654321;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

