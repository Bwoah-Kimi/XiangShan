module FPToIntDataModule(
  input         clock,
  input  [63:0] io_in_src_0,
  input  [63:0] io_in_src_1,
  input         io_in_fpCtrl_typeTagIn,
  input         io_in_fpCtrl_wflags,
  input         io_in_fpCtrl_fcvt,
  input  [1:0]  io_in_fpCtrl_typ,
  input  [1:0]  io_in_fpCtrl_fmt,
  input  [2:0]  io_in_rm,
  output [63:0] io_out_data,
  output [4:0]  io_out_fflags,
  input         regEnables_0,
  input         regEnables_1
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] scmp_io_a; // @[FPToInt.scala 73:20]
  wire [31:0] scmp_io_b; // @[FPToInt.scala 73:20]
  wire  scmp_io_signaling; // @[FPToInt.scala 73:20]
  wire  scmp_io_eq; // @[FPToInt.scala 73:20]
  wire  scmp_io_lt; // @[FPToInt.scala 73:20]
  wire [4:0] scmp_io_fflags; // @[FPToInt.scala 73:20]
  wire [63:0] dcmp_io_a; // @[FPToInt.scala 74:20]
  wire [63:0] dcmp_io_b; // @[FPToInt.scala 74:20]
  wire  dcmp_io_signaling; // @[FPToInt.scala 74:20]
  wire  dcmp_io_eq; // @[FPToInt.scala 74:20]
  wire  dcmp_io_lt; // @[FPToInt.scala 74:20]
  wire [4:0] dcmp_io_fflags; // @[FPToInt.scala 74:20]
  wire [31:0] s2i_io_a; // @[FPToInt.scala 96:19]
  wire [2:0] s2i_io_rm; // @[FPToInt.scala 96:19]
  wire [1:0] s2i_io_op; // @[FPToInt.scala 96:19]
  wire [63:0] s2i_io_result; // @[FPToInt.scala 96:19]
  wire [4:0] s2i_io_fflags; // @[FPToInt.scala 96:19]
  wire [63:0] d2i_io_a; // @[FPToInt.scala 97:19]
  wire [2:0] d2i_io_rm; // @[FPToInt.scala 97:19]
  wire [1:0] d2i_io_op; // @[FPToInt.scala 97:19]
  wire [63:0] d2i_io_result; // @[FPToInt.scala 97:19]
  wire [4:0] d2i_io_fflags; // @[FPToInt.scala 97:19]
  wire  src1_d_isBoxed = &io_in_src_0[63:32]; // @[FPU.scala 24:34]
  wire [31:0] _src1_d_T_4 = src1_d_isBoxed ? io_in_src_0[31:0] : 32'h7fc00000; // @[FPU.scala 27:10]
  reg [63:0] src1_d; // @[Reg.scala 16:16]
  wire  src2_d_isBoxed = &io_in_src_1[63:32]; // @[FPU.scala 24:34]
  wire [31:0] _src2_d_T_4 = src2_d_isBoxed ? io_in_src_1[31:0] : 32'h7fc00000; // @[FPU.scala 27:10]
  reg [63:0] src2_d; // @[Reg.scala 16:16]
  reg  ctrl_reg_typeTagIn; // @[Reg.scala 16:16]
  reg  ctrl_reg_wflags; // @[Reg.scala 16:16]
  reg  ctrl_reg_fcvt; // @[Reg.scala 16:16]
  reg [1:0] ctrl_reg_typ; // @[Reg.scala 16:16]
  reg [1:0] ctrl_reg_fmt; // @[Reg.scala 16:16]
  reg [2:0] rm_reg; // @[Reg.scala 16:16]
  wire  _move_out_T = ~ctrl_reg_typeTagIn; // @[FPToInt.scala 45:41]
  wire [63:0] move_out = ~ctrl_reg_typeTagIn ? {{32'd0}, src1_d[31:0]} : src1_d; // @[FPToInt.scala 45:21]
  wire  classify_out_float_sign = src1_d[31]; // @[package.scala 59:19]
  wire [7:0] classify_out_float_exp = src1_d[30:23]; // @[package.scala 60:18]
  wire [22:0] classify_out_float_sig = src1_d[22:0]; // @[package.scala 61:18]
  wire  classify_out_decode_expNotZero = |classify_out_float_exp; // @[package.scala 32:31]
  wire  classify_out_decode_expIsOnes = &classify_out_float_exp; // @[package.scala 33:31]
  wire  classify_out_decode_sigNotZero = |classify_out_float_sig; // @[package.scala 34:31]
  wire  classify_out_decode__expIsZero = ~classify_out_decode_expNotZero; // @[package.scala 37:27]
  wire  classify_out_decode__sigIsZero = ~classify_out_decode_sigNotZero; // @[package.scala 40:27]
  wire  classify_out_decode__isSubnormal = classify_out_decode__expIsZero & classify_out_decode_sigNotZero; // @[package.scala 41:46]
  wire  classify_out_decode__isInf = classify_out_decode_expIsOnes & classify_out_decode__sigIsZero; // @[package.scala 42:40]
  wire  classify_out_decode__isZero = classify_out_decode__expIsZero & classify_out_decode__sigIsZero; // @[package.scala 43:41]
  wire  classify_out_decode__isNaN = classify_out_decode_expIsOnes & classify_out_decode_sigNotZero; // @[package.scala 44:40]
  wire  classify_out_decode__isSNaN = classify_out_decode__isNaN & ~classify_out_float_sig[22]; // @[package.scala 45:37]
  wire  classify_out_decode__isQNaN = classify_out_decode__isNaN & classify_out_float_sig[22]; // @[package.scala 46:37]
  wire  classify_out_isNormal = ~classify_out_decode_expIsOnes & ~classify_out_decode__expIsZero; // @[FPToInt.scala 53:38]
  wire  _classify_out_T_2 = ~classify_out_float_sign; // @[FPToInt.scala 57:23]
  wire  _classify_out_T_3 = classify_out_decode__isInf & ~classify_out_float_sign; // @[FPToInt.scala 57:20]
  wire  _classify_out_T_5 = classify_out_isNormal & _classify_out_T_2; // @[FPToInt.scala 58:16]
  wire  _classify_out_T_7 = classify_out_decode__isSubnormal & _classify_out_T_2; // @[FPToInt.scala 59:26]
  wire  _classify_out_T_9 = classify_out_decode__isZero & _classify_out_T_2; // @[FPToInt.scala 60:21]
  wire  _classify_out_T_10 = classify_out_decode__isZero & classify_out_float_sign; // @[FPToInt.scala 61:21]
  wire  _classify_out_T_11 = classify_out_decode__isSubnormal & classify_out_float_sign; // @[FPToInt.scala 62:26]
  wire  _classify_out_T_12 = classify_out_isNormal & classify_out_float_sign; // @[FPToInt.scala 63:16]
  wire  _classify_out_T_13 = classify_out_decode__isInf & classify_out_float_sign; // @[FPToInt.scala 64:20]
  wire [9:0] _classify_out_T_14 = {classify_out_decode__isQNaN,classify_out_decode__isSNaN,_classify_out_T_3,
    _classify_out_T_5,_classify_out_T_7,_classify_out_T_9,_classify_out_T_10,_classify_out_T_11,_classify_out_T_12,
    _classify_out_T_13}; // @[Cat.scala 31:58]
  wire  classify_out_float_1_sign = src1_d[63]; // @[package.scala 59:19]
  wire [10:0] classify_out_float_1_exp = src1_d[62:52]; // @[package.scala 60:18]
  wire [51:0] classify_out_float_1_sig = src1_d[51:0]; // @[package.scala 61:18]
  wire  classify_out_decode_expNotZero_1 = |classify_out_float_1_exp; // @[package.scala 32:31]
  wire  classify_out_decode_expIsOnes_1 = &classify_out_float_1_exp; // @[package.scala 33:31]
  wire  classify_out_decode_sigNotZero_1 = |classify_out_float_1_sig; // @[package.scala 34:31]
  wire  classify_out_decode_1_expIsZero = ~classify_out_decode_expNotZero_1; // @[package.scala 37:27]
  wire  classify_out_decode_1_sigIsZero = ~classify_out_decode_sigNotZero_1; // @[package.scala 40:27]
  wire  classify_out_decode_1_isSubnormal = classify_out_decode_1_expIsZero & classify_out_decode_sigNotZero_1; // @[package.scala 41:46]
  wire  classify_out_decode_1_isInf = classify_out_decode_expIsOnes_1 & classify_out_decode_1_sigIsZero; // @[package.scala 42:40]
  wire  classify_out_decode_1_isZero = classify_out_decode_1_expIsZero & classify_out_decode_1_sigIsZero; // @[package.scala 43:41]
  wire  classify_out_decode_1_isNaN = classify_out_decode_expIsOnes_1 & classify_out_decode_sigNotZero_1; // @[package.scala 44:40]
  wire  classify_out_decode_1_isSNaN = classify_out_decode_1_isNaN & ~classify_out_float_1_sig[51]; // @[package.scala 45:37]
  wire  classify_out_decode_1_isQNaN = classify_out_decode_1_isNaN & classify_out_float_1_sig[51]; // @[package.scala 46:37]
  wire  classify_out_isNormal_1 = ~classify_out_decode_expIsOnes_1 & ~classify_out_decode_1_expIsZero; // @[FPToInt.scala 53:38]
  wire  _classify_out_T_15 = ~classify_out_float_1_sign; // @[FPToInt.scala 57:23]
  wire  _classify_out_T_16 = classify_out_decode_1_isInf & ~classify_out_float_1_sign; // @[FPToInt.scala 57:20]
  wire  _classify_out_T_18 = classify_out_isNormal_1 & _classify_out_T_15; // @[FPToInt.scala 58:16]
  wire  _classify_out_T_20 = classify_out_decode_1_isSubnormal & _classify_out_T_15; // @[FPToInt.scala 59:26]
  wire  _classify_out_T_22 = classify_out_decode_1_isZero & _classify_out_T_15; // @[FPToInt.scala 60:21]
  wire  _classify_out_T_23 = classify_out_decode_1_isZero & classify_out_float_1_sign; // @[FPToInt.scala 61:21]
  wire  _classify_out_T_24 = classify_out_decode_1_isSubnormal & classify_out_float_1_sign; // @[FPToInt.scala 62:26]
  wire  _classify_out_T_25 = classify_out_isNormal_1 & classify_out_float_1_sign; // @[FPToInt.scala 63:16]
  wire  _classify_out_T_26 = classify_out_decode_1_isInf & classify_out_float_1_sign; // @[FPToInt.scala 64:20]
  wire [9:0] _classify_out_T_27 = {classify_out_decode_1_isQNaN,classify_out_decode_1_isSNaN,_classify_out_T_16,
    _classify_out_T_18,_classify_out_T_20,_classify_out_T_22,_classify_out_T_23,_classify_out_T_24,_classify_out_T_25,
    _classify_out_T_26}; // @[Cat.scala 31:58]
  wire [9:0] classify_out = _move_out_T ? _classify_out_T_14 : _classify_out_T_27; // @[FPToInt.scala 68:25]
  wire  lt = _move_out_T ? scmp_io_lt : dcmp_io_lt; // @[FPToInt.scala 81:15]
  wire  eq = _move_out_T ? scmp_io_eq : dcmp_io_eq; // @[FPToInt.scala 85:15]
  wire [2:0] _cmp_out_T = ~rm_reg; // @[FPToInt.scala 90:19]
  wire [1:0] _cmp_out_T_1 = {lt,eq}; // @[Cat.scala 31:58]
  wire [2:0] _GEN_19 = {{1'd0}, _cmp_out_T_1}; // @[FPToInt.scala 90:37]
  wire [2:0] _cmp_out_T_2 = _cmp_out_T & _GEN_19; // @[FPToInt.scala 90:37]
  wire  cmp_out = |_cmp_out_T_2; // @[FPToInt.scala 90:55]
  wire  _s2i_io_op_T_2 = ~ctrl_reg_typ[0]; // @[FPToInt.scala 104:7]
  wire [63:0] conv_out = _move_out_T ? s2i_io_result : d2i_io_result; // @[FPToInt.scala 108:21]
  wire [63:0] _intData_T = ctrl_reg_fcvt ? conv_out : {{63'd0}, cmp_out}; // @[FPToInt.scala 119:8]
  wire [63:0] _intData_T_2 = rm_reg[0] ? {{54'd0}, classify_out} : move_out; // @[FPToInt.scala 120:8]
  wire [63:0] intData = ctrl_reg_wflags ? _intData_T : _intData_T_2; // @[FPToInt.scala 118:17]
  wire  long = ctrl_reg_fcvt ? ctrl_reg_typ[1] : ctrl_reg_fmt[0]; // @[FPToInt.scala 122:17]
  wire  intValue_signBit_1 = intData[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _intValue_T_3 = intValue_signBit_1 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _intValue_T_4 = {_intValue_T_3,intData[31:0]}; // @[Cat.scala 31:58]
  reg [63:0] intValue; // @[Reg.scala 16:16]
  reg [4:0] exc; // @[Reg.scala 16:16]
  FCMP scmp ( // @[FPToInt.scala 73:20]
    .io_a(scmp_io_a),
    .io_b(scmp_io_b),
    .io_signaling(scmp_io_signaling),
    .io_eq(scmp_io_eq),
    .io_lt(scmp_io_lt),
    .io_fflags(scmp_io_fflags)
  );
  FCMP_1 dcmp ( // @[FPToInt.scala 74:20]
    .io_a(dcmp_io_a),
    .io_b(dcmp_io_b),
    .io_signaling(dcmp_io_signaling),
    .io_eq(dcmp_io_eq),
    .io_lt(dcmp_io_lt),
    .io_fflags(dcmp_io_fflags)
  );
  FPToInt s2i ( // @[FPToInt.scala 96:19]
    .io_a(s2i_io_a),
    .io_rm(s2i_io_rm),
    .io_op(s2i_io_op),
    .io_result(s2i_io_result),
    .io_fflags(s2i_io_fflags)
  );
  FPToInt_1 d2i ( // @[FPToInt.scala 97:19]
    .io_a(d2i_io_a),
    .io_rm(d2i_io_rm),
    .io_op(d2i_io_op),
    .io_result(d2i_io_result),
    .io_fflags(d2i_io_fflags)
  );
  assign io_out_data = intValue; // @[FPToInt.scala 130:15]
  assign io_out_fflags = exc; // @[FPToInt.scala 131:10]
  assign scmp_io_a = src1_d[31:0]; // @[FPToInt.scala 77:14]
  assign scmp_io_b = src2_d[31:0]; // @[FPToInt.scala 78:14]
  assign scmp_io_signaling = ~rm_reg[1]; // @[FPToInt.scala 79:25]
  assign dcmp_io_a = src1_d; // @[FPToInt.scala 77:14]
  assign dcmp_io_b = src2_d; // @[FPToInt.scala 78:14]
  assign dcmp_io_signaling = ~rm_reg[1]; // @[FPToInt.scala 79:25]
  assign s2i_io_a = src1_d[31:0]; // @[FPToInt.scala 100:14]
  assign s2i_io_rm = rm_reg; // @[FPToInt.scala 101:15]
  assign s2i_io_op = {ctrl_reg_typ[1],_s2i_io_op_T_2}; // @[Cat.scala 31:58]
  assign d2i_io_a = src1_d; // @[FPToInt.scala 100:14]
  assign d2i_io_rm = rm_reg; // @[FPToInt.scala 101:15]
  assign d2i_io_op = {ctrl_reg_typ[1],_s2i_io_op_T_2}; // @[Cat.scala 31:58]
  always @(posedge clock) begin
    if (regEnables_0) begin // @[Reg.scala 17:18]
      if (io_in_fpCtrl_typeTagIn) begin // @[FPU.scala 25:8]
        src1_d <= io_in_src_0;
      end else begin
        src1_d <= {{32'd0}, _src1_d_T_4};
      end
    end
    if (regEnables_0) begin // @[Reg.scala 17:18]
      if (io_in_fpCtrl_typeTagIn) begin // @[FPU.scala 25:8]
        src2_d <= io_in_src_1;
      end else begin
        src2_d <= {{32'd0}, _src2_d_T_4};
      end
    end
    if (regEnables_0) begin // @[Reg.scala 17:18]
      ctrl_reg_typeTagIn <= io_in_fpCtrl_typeTagIn; // @[Reg.scala 17:22]
    end
    if (regEnables_0) begin // @[Reg.scala 17:18]
      ctrl_reg_wflags <= io_in_fpCtrl_wflags; // @[Reg.scala 17:22]
    end
    if (regEnables_0) begin // @[Reg.scala 17:18]
      ctrl_reg_fcvt <= io_in_fpCtrl_fcvt; // @[Reg.scala 17:22]
    end
    if (regEnables_0) begin // @[Reg.scala 17:18]
      ctrl_reg_typ <= io_in_fpCtrl_typ; // @[Reg.scala 17:22]
    end
    if (regEnables_0) begin // @[Reg.scala 17:18]
      ctrl_reg_fmt <= io_in_fpCtrl_fmt; // @[Reg.scala 17:22]
    end
    if (regEnables_0) begin // @[Reg.scala 17:18]
      rm_reg <= io_in_rm; // @[Reg.scala 17:22]
    end
    if (regEnables_1) begin // @[Reg.scala 17:18]
      if (long) begin // @[FPToInt.scala 123:31]
        if (ctrl_reg_wflags) begin // @[FPToInt.scala 118:17]
          if (ctrl_reg_fcvt) begin // @[FPToInt.scala 119:8]
            intValue <= conv_out;
          end else begin
            intValue <= {{63'd0}, cmp_out};
          end
        end else if (rm_reg[0]) begin // @[FPToInt.scala 120:8]
          intValue <= {{54'd0}, classify_out};
        end else begin
          intValue <= move_out;
        end
      end else begin
        intValue <= _intValue_T_4;
      end
    end
    if (regEnables_1) begin // @[Reg.scala 17:18]
      if (ctrl_reg_fcvt) begin // @[FPToInt.scala 128:26]
        if (_move_out_T) begin // @[FPToInt.scala 112:21]
          exc <= s2i_io_fflags;
        end else begin
          exc <= d2i_io_fflags;
        end
      end else if (_move_out_T) begin // @[FPToInt.scala 91:20]
        exc <= scmp_io_fflags;
      end else begin
        exc <= dcmp_io_fflags;
      end
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
  src1_d = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  src2_d = _RAND_1[63:0];
  _RAND_2 = {1{`RANDOM}};
  ctrl_reg_typeTagIn = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  ctrl_reg_wflags = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  ctrl_reg_fcvt = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  ctrl_reg_typ = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  ctrl_reg_fmt = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  rm_reg = _RAND_7[2:0];
  _RAND_8 = {2{`RANDOM}};
  intValue = _RAND_8[63:0];
  _RAND_9 = {1{`RANDOM}};
  exc = _RAND_9[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

