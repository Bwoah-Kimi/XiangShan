module IntToFPDataModule(
  input         clock,
  input  [63:0] io_in_src_0,
  input         io_in_fpCtrl_typeTagOut,
  input         io_in_fpCtrl_wflags,
  input  [1:0]  io_in_fpCtrl_typ,
  input  [2:0]  io_in_rm,
  output [63:0] io_out_data,
  output [4:0]  io_out_fflags,
  input         regEnables_0,
  input         regEnables_1
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  wire [63:0] i2f_io_int; // @[IntToFP.scala 61:23]
  wire  i2f_io_sign; // @[IntToFP.scala 61:23]
  wire  i2f_io_long; // @[IntToFP.scala 61:23]
  wire [2:0] i2f_io_rm; // @[IntToFP.scala 61:23]
  wire [31:0] i2f_io_result; // @[IntToFP.scala 61:23]
  wire [4:0] i2f_io_fflags; // @[IntToFP.scala 61:23]
  wire [63:0] i2f_1_io_int; // @[IntToFP.scala 61:23]
  wire  i2f_1_io_sign; // @[IntToFP.scala 61:23]
  wire  i2f_1_io_long; // @[IntToFP.scala 61:23]
  wire [2:0] i2f_1_io_rm; // @[IntToFP.scala 61:23]
  wire [63:0] i2f_1_io_result; // @[IntToFP.scala 61:23]
  wire [4:0] i2f_1_io_fflags; // @[IntToFP.scala 61:23]
  wire [63:0] _intValue_T_7 = {32'h0,io_in_src_0[31:0]}; // @[Cat.scala 31:58]
  wire  intValue_signBit_1 = io_in_src_0[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _intValue_T_10 = intValue_signBit_1 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _intValue_T_11 = {_intValue_T_10,io_in_src_0[31:0]}; // @[Cat.scala 31:58]
  reg [63:0] intValue; // @[Reg.scala 16:16]
  reg  ctrlReg_typeTagOut; // @[Reg.scala 16:16]
  reg  ctrlReg_wflags; // @[Reg.scala 16:16]
  reg [1:0] ctrlReg_typ; // @[Reg.scala 16:16]
  reg [2:0] rmReg; // @[Reg.scala 16:16]
  wire [63:0] _mux_data_WIRE_0 = {{32'd0}, i2f_io_result}; // @[IntToFP.scala 69:{24,24}]
  wire [63:0] _mux_data_WIRE_1 = i2f_1_io_result; // @[IntToFP.scala 69:{24,24}]
  wire [4:0] _mux_exc_WIRE_0 = i2f_io_fflags; // @[IntToFP.scala 70:{23,23}]
  wire [4:0] _mux_exc_WIRE_1 = i2f_1_io_fflags; // @[IntToFP.scala 70:{23,23}]
  reg [63:0] s3_out_data; // @[Reg.scala 16:16]
  reg [4:0] s3_out_exc; // @[Reg.scala 16:16]
  reg  s3_tag; // @[Reg.scala 16:16]
  wire [63:0] _io_out_data_T_3 = {32'hffffffff,s3_out_data[31:0]}; // @[Cat.scala 31:58]
  IntToFP i2f ( // @[IntToFP.scala 61:23]
    .io_int(i2f_io_int),
    .io_sign(i2f_io_sign),
    .io_long(i2f_io_long),
    .io_rm(i2f_io_rm),
    .io_result(i2f_io_result),
    .io_fflags(i2f_io_fflags)
  );
  IntToFP_1 i2f_1 ( // @[IntToFP.scala 61:23]
    .io_int(i2f_1_io_int),
    .io_sign(i2f_1_io_sign),
    .io_long(i2f_1_io_long),
    .io_rm(i2f_1_io_rm),
    .io_result(i2f_1_io_result),
    .io_fflags(i2f_1_io_fflags)
  );
  assign io_out_data = s3_tag ? s3_out_data : _io_out_data_T_3; // @[FPU.scala 36:8]
  assign io_out_fflags = s3_out_exc; // @[IntToFP.scala 77:10]
  assign i2f_io_int = intValue; // @[IntToFP.scala 64:18]
  assign i2f_io_sign = ~ctrlReg_typ[0]; // @[IntToFP.scala 62:22]
  assign i2f_io_long = ctrlReg_typ[1]; // @[IntToFP.scala 63:28]
  assign i2f_io_rm = rmReg; // @[IntToFP.scala 65:17]
  assign i2f_1_io_int = intValue; // @[IntToFP.scala 64:18]
  assign i2f_1_io_sign = ~ctrlReg_typ[0]; // @[IntToFP.scala 62:22]
  assign i2f_1_io_long = ctrlReg_typ[1]; // @[IntToFP.scala 63:28]
  assign i2f_1_io_rm = rmReg; // @[IntToFP.scala 65:17]
  always @(posedge clock) begin
    if (regEnables_0) begin // @[Reg.scala 17:18]
      if (io_in_fpCtrl_wflags) begin // @[IntToFP.scala 36:31]
        if (io_in_fpCtrl_typ[1]) begin // @[IntToFP.scala 37:8]
          intValue <= io_in_src_0;
        end else if (io_in_fpCtrl_typ[0]) begin // @[IntToFP.scala 39:10]
          intValue <= _intValue_T_7;
        end else begin
          intValue <= _intValue_T_11;
        end
      end else begin
        intValue <= io_in_src_0;
      end
    end
    if (regEnables_0) begin // @[Reg.scala 17:18]
      ctrlReg_typeTagOut <= io_in_fpCtrl_typeTagOut; // @[Reg.scala 17:22]
    end
    if (regEnables_0) begin // @[Reg.scala 17:18]
      ctrlReg_wflags <= io_in_fpCtrl_wflags; // @[Reg.scala 17:22]
    end
    if (regEnables_0) begin // @[Reg.scala 17:18]
      ctrlReg_typ <= io_in_fpCtrl_typ; // @[Reg.scala 17:22]
    end
    if (regEnables_0) begin // @[Reg.scala 17:18]
      rmReg <= io_in_rm; // @[Reg.scala 17:22]
    end
    if (regEnables_1) begin // @[Reg.scala 17:18]
      if (ctrlReg_wflags) begin // @[IntToFP.scala 59:18]
        if (ctrlReg_typeTagOut) begin // @[IntToFP.scala 69:14]
          s3_out_data <= _mux_data_WIRE_1; // @[IntToFP.scala 69:14]
        end else begin
          s3_out_data <= _mux_data_WIRE_0;
        end
      end else begin
        s3_out_data <= intValue; // @[IntToFP.scala 56:12]
      end
    end
    if (regEnables_1) begin // @[Reg.scala 17:18]
      if (ctrlReg_wflags) begin // @[IntToFP.scala 59:18]
        if (ctrlReg_typeTagOut) begin // @[IntToFP.scala 70:13]
          s3_out_exc <= _mux_exc_WIRE_1; // @[IntToFP.scala 70:13]
        end else begin
          s3_out_exc <= _mux_exc_WIRE_0;
        end
      end else begin
        s3_out_exc <= 5'h0; // @[IntToFP.scala 57:11]
      end
    end
    if (regEnables_1) begin // @[Reg.scala 17:18]
      s3_tag <= ctrlReg_typeTagOut; // @[Reg.scala 17:22]
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
  intValue = _RAND_0[63:0];
  _RAND_1 = {1{`RANDOM}};
  ctrlReg_typeTagOut = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  ctrlReg_wflags = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  ctrlReg_typ = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  rmReg = _RAND_4[2:0];
  _RAND_5 = {2{`RANDOM}};
  s3_out_data = _RAND_5[63:0];
  _RAND_6 = {1{`RANDOM}};
  s3_out_exc = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  s3_tag = _RAND_7[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

