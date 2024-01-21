module DataSel(
  input         clock,
  input         reset,
  input  [63:0] io_in_0,
  input  [63:0] io_in_1,
  input  [1:0]  io_sel_0,
  input  [1:0]  io_sel_1,
  input         io_en_0,
  input         io_en_1,
  output [63:0] io_out_0,
  output [63:0] io_out_1
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [63:0] _RAND_13;
`endif // RANDOMIZE_REG_INIT
  reg  en; // @[Pipeline.scala 58:31]
  reg [1:0] sel_rREG; // @[Pipeline.scala 58:31]
  reg [1:0] sel_r; // @[Pipeline.scala 58:31]
  reg [63:0] odata__0; // @[Reg.scala 16:16]
  reg [63:0] odata__1; // @[Reg.scala 16:16]
  wire [63:0] _io_out_0_T_2 = sel_r[0] ? odata__0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_0_T_3 = sel_r[1] ? odata__1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_0_T_4 = _io_out_0_T_2 | _io_out_0_T_3; // @[Mux.scala 27:73]
  reg  io_out_0_REG; // @[DataStorage.scala 290:56]
  reg [63:0] io_out_0_r; // @[Reg.scala 16:16]
  reg  en_1; // @[Pipeline.scala 58:31]
  reg [1:0] sel_rREG_1; // @[Pipeline.scala 58:31]
  reg [1:0] sel_r1; // @[Pipeline.scala 58:31]
  reg [63:0] odata_1_0; // @[Reg.scala 16:16]
  reg [63:0] odata_1_1; // @[Reg.scala 16:16]
  wire [63:0] _io_out_1_T_2 = sel_r1[0] ? odata_1_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_1_T_3 = sel_r1[1] ? odata_1_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_out_1_T_4 = _io_out_1_T_2 | _io_out_1_T_3; // @[Mux.scala 27:73]
  reg  io_out_1_REG; // @[DataStorage.scala 290:56]
  reg [63:0] io_out_1_r; // @[Reg.scala 16:16]
  assign io_out_0 = io_out_0_r; // @[DataStorage.scala 290:15]
  assign io_out_1 = io_out_1_r; // @[DataStorage.scala 290:15]
  always @(posedge clock) begin
    en <= io_en_0; // @[Pipeline.scala 58:31]
    sel_rREG <= io_sel_0; // @[Pipeline.scala 58:31]
    sel_r <= sel_rREG; // @[Pipeline.scala 58:31]
    if (en) begin // @[Reg.scala 17:18]
      odata__0 <= io_in_0; // @[Reg.scala 17:22]
    end
    if (en) begin // @[Reg.scala 17:18]
      odata__1 <= io_in_1; // @[Reg.scala 17:22]
    end
    if (io_out_0_REG) begin // @[Reg.scala 17:18]
      io_out_0_r <= _io_out_0_T_4; // @[Reg.scala 17:22]
    end
    en_1 <= io_en_1; // @[Pipeline.scala 58:31]
    sel_rREG_1 <= io_sel_1; // @[Pipeline.scala 58:31]
    sel_r1 <= sel_rREG_1; // @[Pipeline.scala 58:31]
    if (en_1) begin // @[Reg.scala 17:18]
      odata_1_0 <= io_in_0; // @[Reg.scala 17:22]
    end
    if (en_1) begin // @[Reg.scala 17:18]
      odata_1_1 <= io_in_1; // @[Reg.scala 17:22]
    end
    if (io_out_1_REG) begin // @[Reg.scala 17:18]
      io_out_1_r <= _io_out_1_T_4; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DataStorage.scala 290:56]
      io_out_0_REG <= 1'h0; // @[DataStorage.scala 290:56]
    end else begin
      io_out_0_REG <= en; // @[DataStorage.scala 290:56]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DataStorage.scala 290:56]
      io_out_1_REG <= 1'h0; // @[DataStorage.scala 290:56]
    end else begin
      io_out_1_REG <= en_1; // @[DataStorage.scala 290:56]
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
  en = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  sel_rREG = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  sel_r = _RAND_2[1:0];
  _RAND_3 = {2{`RANDOM}};
  odata__0 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  odata__1 = _RAND_4[63:0];
  _RAND_5 = {1{`RANDOM}};
  io_out_0_REG = _RAND_5[0:0];
  _RAND_6 = {2{`RANDOM}};
  io_out_0_r = _RAND_6[63:0];
  _RAND_7 = {1{`RANDOM}};
  en_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  sel_rREG_1 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  sel_r1 = _RAND_9[1:0];
  _RAND_10 = {2{`RANDOM}};
  odata_1_0 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  odata_1_1 = _RAND_11[63:0];
  _RAND_12 = {1{`RANDOM}};
  io_out_1_REG = _RAND_12[0:0];
  _RAND_13 = {2{`RANDOM}};
  io_out_1_r = _RAND_13[63:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    io_out_0_REG = 1'h0;
  end
  if (reset) begin
    io_out_1_REG = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

