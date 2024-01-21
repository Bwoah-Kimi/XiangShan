module FPToFPDataModule(
  input         clock,
  input  [63:0] io_in_src_0,
  input  [63:0] io_in_src_1,
  input         io_in_fpCtrl_typeTagIn,
  input         io_in_fpCtrl_typeTagOut,
  input         io_in_fpCtrl_wflags,
  input         io_in_fpCtrl_fcvt,
  input  [2:0]  io_in_rm,
  output [63:0] io_out_data,
  output [4:0]  io_out_fflags,
  input         regEnables_0,
  input         regEnables_1
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] scmp_io_a; // @[FPToFP.scala 56:20]
  wire [31:0] scmp_io_b; // @[FPToFP.scala 56:20]
  wire  scmp_io_signaling; // @[FPToFP.scala 56:20]
  wire  scmp_io_eq; // @[FPToFP.scala 56:20]
  wire  scmp_io_lt; // @[FPToFP.scala 56:20]
  wire [4:0] scmp_io_fflags; // @[FPToFP.scala 56:20]
  wire [63:0] dcmp_io_a; // @[FPToFP.scala 57:20]
  wire [63:0] dcmp_io_b; // @[FPToFP.scala 57:20]
  wire  dcmp_io_signaling; // @[FPToFP.scala 57:20]
  wire  dcmp_io_eq; // @[FPToFP.scala 57:20]
  wire  dcmp_io_lt; // @[FPToFP.scala 57:20]
  wire [4:0] dcmp_io_fflags; // @[FPToFP.scala 57:20]
  wire [31:0] s2d_io_in; // @[FPToFP.scala 90:19]
  wire [63:0] s2d_io_result; // @[FPToFP.scala 90:19]
  wire [4:0] s2d_io_fflags; // @[FPToFP.scala 90:19]
  wire [63:0] d2s_io_in; // @[FPToFP.scala 95:19]
  wire [2:0] d2s_io_rm; // @[FPToFP.scala 95:19]
  wire [31:0] d2s_io_result; // @[FPToFP.scala 95:19]
  wire [4:0] d2s_io_fflags; // @[FPToFP.scala 95:19]
  reg  ctrl_typeTagIn; // @[Reg.scala 16:16]
  reg  ctrl_typeTagOut; // @[Reg.scala 16:16]
  reg  ctrl_wflags; // @[Reg.scala 16:16]
  reg  ctrl_fcvt; // @[Reg.scala 16:16]
  wire  src1_isBoxed = &io_in_src_0[63:32]; // @[FPU.scala 24:34]
  wire [31:0] _src1_T_4 = src1_isBoxed ? io_in_src_0[31:0] : 32'h7fc00000; // @[FPU.scala 27:10]
  reg [63:0] src1; // @[Reg.scala 16:16]
  wire  src2_isBoxed = &io_in_src_1[63:32]; // @[FPU.scala 24:34]
  wire [31:0] _src2_T_4 = src2_isBoxed ? io_in_src_1[31:0] : 32'h7fc00000; // @[FPU.scala 27:10]
  reg [63:0] src2; // @[Reg.scala 16:16]
  reg [2:0] rmReg; // @[Reg.scala 16:16]
  wire [63:0] _signNum_T_1 = src1 ^ src2; // @[FPToFP.scala 41:36]
  wire [63:0] _signNum_T_3 = ~src2; // @[FPToFP.scala 41:58]
  wire [63:0] _signNum_T_4 = rmReg[0] ? _signNum_T_3 : src2; // @[FPToFP.scala 41:47]
  wire [63:0] signNum = rmReg[1] ? _signNum_T_1 : _signNum_T_4; // @[FPToFP.scala 41:20]
  wire [31:0] _fsgnj_T_2 = {signNum[31],src1[30:0]}; // @[Cat.scala 31:58]
  wire [63:0] _fsgnj_T_5 = {signNum[63],src1[62:0]}; // @[Cat.scala 31:58]
  wire [63:0] _fsgnj_WIRE_0 = {{32'd0}, _fsgnj_T_2}; // @[FPToFP.scala 42:{22,22}]
  wire [63:0] _GEN_18 = ctrl_typeTagIn ? _fsgnj_T_5 : _fsgnj_WIRE_0; // @[FPToFP.scala 53:{17,17}]
  wire  _lt_T_5 = scmp_io_lt | $signed(scmp_io_a) < 32'sh0 & $signed(scmp_io_b) >= 32'sh0; // @[FPToFP.scala 62:16]
  wire  _lt_T_11 = dcmp_io_lt | $signed(dcmp_io_a) < 64'sh0 & $signed(dcmp_io_b) >= 64'sh0; // @[FPToFP.scala 62:16]
  wire [7:0] fp_a_fp_exp = src1[30:23]; // @[package.scala 60:18]
  wire [22:0] fp_a_fp_sig = src1[22:0]; // @[package.scala 61:18]
  wire  fp_a_expIsOnes = &fp_a_fp_exp; // @[package.scala 33:31]
  wire  fp_a_sigNotZero = |fp_a_fp_sig; // @[package.scala 34:31]
  wire  fp_a__isNaN = fp_a_expIsOnes & fp_a_sigNotZero; // @[package.scala 44:40]
  wire  fp_a__isSNaN = fp_a__isNaN & ~fp_a_fp_sig[22]; // @[package.scala 45:37]
  wire [7:0] fp_bfp_exp = src2[30:23]; // @[package.scala 60:18]
  wire [22:0] fp_bfp_sig = src2[22:0]; // @[package.scala 61:18]
  wire  fp_bexpIsOnes = &fp_bfp_exp; // @[package.scala 33:31]
  wire  fp_bsigNotZero = |fp_bfp_sig; // @[package.scala 34:31]
  wire  fp_b_isNaN = fp_bexpIsOnes & fp_bsigNotZero; // @[package.scala 44:40]
  wire  fp_b_isSNaN = fp_b_isNaN & ~fp_bfp_sig[22]; // @[package.scala 45:37]
  wire  isInv = fp_a__isSNaN | fp_b_isSNaN; // @[FPToFP.scala 70:29]
  wire  isNaNOut = fp_a__isNaN & fp_b_isNaN; // @[FPToFP.scala 71:27]
  wire  _GEN_20 = ctrl_typeTagIn ? _lt_T_11 : _lt_T_5; // @[FPToFP.scala 72:{36,36}]
  wire  isLHS = fp_b_isNaN | rmReg[0] != _GEN_20 & ~fp_a__isNaN; // @[FPToFP.scala 72:24]
  wire [63:0] _data_T_2 = isLHS ? src1 : src2; // @[FPToFP.scala 75:10]
  wire [63:0] fminmax_data_0 = isNaNOut ? 64'h7fc00000 : _data_T_2; // @[FPToFP.scala 73:19]
  wire [4:0] fminmax_exc_0 = {isInv,4'h0}; // @[Cat.scala 31:58]
  wire [10:0] fp_a_fp_1_exp = src1[62:52]; // @[package.scala 60:18]
  wire [51:0] fp_a_fp_1_sig = src1[51:0]; // @[package.scala 61:18]
  wire  fp_a_expIsOnes_1 = &fp_a_fp_1_exp; // @[package.scala 33:31]
  wire  fp_a_sigNotZero_1 = |fp_a_fp_1_sig; // @[package.scala 34:31]
  wire  fp_a_1_isNaN = fp_a_expIsOnes_1 & fp_a_sigNotZero_1; // @[package.scala 44:40]
  wire  fp_a_1_isSNaN = fp_a_1_isNaN & ~fp_a_fp_1_sig[51]; // @[package.scala 45:37]
  wire [10:0] fp_bfp_1_exp = src2[62:52]; // @[package.scala 60:18]
  wire [51:0] fp_bfp_1_sig = src2[51:0]; // @[package.scala 61:18]
  wire  fp_bexpIsOnes_1 = &fp_bfp_1_exp; // @[package.scala 33:31]
  wire  fp_bsigNotZero_1 = |fp_bfp_1_sig; // @[package.scala 34:31]
  wire  fp_b1_isNaN = fp_bexpIsOnes_1 & fp_bsigNotZero_1; // @[package.scala 44:40]
  wire  fp_b1_isSNaN = fp_b1_isNaN & ~fp_bfp_1_sig[51]; // @[package.scala 45:37]
  wire  isInv_1 = fp_a_1_isSNaN | fp_b1_isSNaN; // @[FPToFP.scala 70:29]
  wire  isNaNOut_1 = fp_a_1_isNaN & fp_b1_isNaN; // @[FPToFP.scala 71:27]
  wire  isLHS_1 = fp_b1_isNaN | rmReg[0] != _GEN_20 & ~fp_a_1_isNaN; // @[FPToFP.scala 72:24]
  wire [63:0] _data_T_5 = isLHS_1 ? src1 : src2; // @[FPToFP.scala 75:10]
  wire [63:0] fminmax_data_1 = isNaNOut_1 ? 64'h7ff8000000000000 : _data_T_5; // @[FPToFP.scala 73:19]
  wire [4:0] fminmax_exc_1 = {isInv_1,4'h0}; // @[Cat.scala 31:58]
  wire [63:0] _GEN_24 = ctrl_typeTagIn ? fminmax_data_1 : fminmax_data_0; // @[FPToFP.scala 83:{19,19}]
  wire [63:0] fsgnjMux_data = ctrl_wflags ? _GEN_24 : _GEN_18; // @[FPToFP.scala 81:15 53:17 83:19]
  wire [63:0] fcvt_data = ctrl_typeTagIn ? {{32'd0}, d2s_io_result} : s2d_io_result; // @[FPToFP.scala 105:22]
  wire [63:0] mux_data = ctrl_fcvt ? fcvt_data : fsgnjMux_data; // @[FPToFP.scala 108:18 109:14]
  wire [63:0] _boxed_data_T_4 = {32'hffffffff,mux_data[31:0]}; // @[Cat.scala 31:58]
  reg [63:0] io_out_data_r; // @[Reg.scala 16:16]
  reg [4:0] io_out_fflags_r; // @[Reg.scala 16:16]
  FCMP scmp ( // @[FPToFP.scala 56:20]
    .io_a(scmp_io_a),
    .io_b(scmp_io_b),
    .io_signaling(scmp_io_signaling),
    .io_eq(scmp_io_eq),
    .io_lt(scmp_io_lt),
    .io_fflags(scmp_io_fflags)
  );
  FCMP_1 dcmp ( // @[FPToFP.scala 57:20]
    .io_a(dcmp_io_a),
    .io_b(dcmp_io_b),
    .io_signaling(dcmp_io_signaling),
    .io_eq(dcmp_io_eq),
    .io_lt(dcmp_io_lt),
    .io_fflags(dcmp_io_fflags)
  );
  FPToFP s2d ( // @[FPToFP.scala 90:19]
    .io_in(s2d_io_in),
    .io_result(s2d_io_result),
    .io_fflags(s2d_io_fflags)
  );
  FPToFP_1 d2s ( // @[FPToFP.scala 95:19]
    .io_in(d2s_io_in),
    .io_rm(d2s_io_rm),
    .io_result(d2s_io_result),
    .io_fflags(d2s_io_fflags)
  );
  assign io_out_data = io_out_data_r; // @[FPToFP.scala 118:15]
  assign io_out_fflags = io_out_fflags_r; // @[FPToFP.scala 119:10]
  assign scmp_io_a = src1[31:0]; // @[FPToFP.scala 59:15]
  assign scmp_io_b = src2[31:0]; // @[FPToFP.scala 60:15]
  assign scmp_io_signaling = ~rmReg[1]; // @[FPToFP.scala 61:26]
  assign dcmp_io_a = src1; // @[FPToFP.scala 59:15]
  assign dcmp_io_b = src2; // @[FPToFP.scala 60:15]
  assign dcmp_io_signaling = ~rmReg[1]; // @[FPToFP.scala 61:26]
  assign s2d_io_in = src1[31:0]; // @[FPToFP.scala 101:16]
  assign d2s_io_in = src1; // @[FPToFP.scala 101:16]
  assign d2s_io_rm = rmReg; // @[FPToFP.scala 102:16]
  always @(posedge clock) begin
    if (regEnables_0) begin // @[Reg.scala 17:18]
      ctrl_typeTagIn <= io_in_fpCtrl_typeTagIn; // @[Reg.scala 17:22]
    end
    if (regEnables_0) begin // @[Reg.scala 17:18]
      ctrl_typeTagOut <= io_in_fpCtrl_typeTagOut; // @[Reg.scala 17:22]
    end
    if (regEnables_0) begin // @[Reg.scala 17:18]
      ctrl_wflags <= io_in_fpCtrl_wflags; // @[Reg.scala 17:22]
    end
    if (regEnables_0) begin // @[Reg.scala 17:18]
      ctrl_fcvt <= io_in_fpCtrl_fcvt; // @[Reg.scala 17:22]
    end
    if (regEnables_0) begin // @[Reg.scala 17:18]
      if (io_in_fpCtrl_typeTagIn) begin // @[FPU.scala 25:8]
        src1 <= io_in_src_0;
      end else begin
        src1 <= {{32'd0}, _src1_T_4};
      end
    end
    if (regEnables_0) begin // @[Reg.scala 17:18]
      if (io_in_fpCtrl_typeTagIn) begin // @[FPU.scala 25:8]
        src2 <= io_in_src_1;
      end else begin
        src2 <= {{32'd0}, _src2_T_4};
      end
    end
    if (regEnables_0) begin // @[Reg.scala 17:18]
      rmReg <= io_in_rm; // @[Reg.scala 17:22]
    end
    if (regEnables_1) begin // @[Reg.scala 17:18]
      if (~ctrl_typeTagOut) begin // @[FPToFP.scala 113:23]
        io_out_data_r <= _boxed_data_T_4;
      end else if (ctrl_fcvt) begin // @[FPToFP.scala 108:18]
        if (ctrl_typeTagIn) begin // @[FPToFP.scala 105:22]
          io_out_data_r <= {{32'd0}, d2s_io_result};
        end else begin
          io_out_data_r <= s2d_io_result;
        end
      end else if (ctrl_wflags) begin // @[FPToFP.scala 81:15]
        io_out_data_r <= _GEN_24; // @[FPToFP.scala 83:19]
      end else begin
        io_out_data_r <= _GEN_18; // @[FPToFP.scala 53:17]
      end
    end
    if (regEnables_1) begin // @[Reg.scala 17:18]
      if (ctrl_fcvt) begin // @[FPToFP.scala 108:18]
        if (ctrl_typeTagIn) begin // @[FPToFP.scala 106:21]
          io_out_fflags_r <= d2s_io_fflags;
        end else begin
          io_out_fflags_r <= s2d_io_fflags;
        end
      end else if (ctrl_wflags) begin // @[FPToFP.scala 81:15]
        if (ctrl_typeTagIn) begin // @[FPToFP.scala 82:18]
          io_out_fflags_r <= fminmax_exc_1; // @[FPToFP.scala 82:18]
        end else begin
          io_out_fflags_r <= fminmax_exc_0;
        end
      end else begin
        io_out_fflags_r <= 5'h0; // @[FPToFP.scala 54:16]
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
  _RAND_0 = {1{`RANDOM}};
  ctrl_typeTagIn = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  ctrl_typeTagOut = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  ctrl_wflags = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  ctrl_fcvt = _RAND_3[0:0];
  _RAND_4 = {2{`RANDOM}};
  src1 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  src2 = _RAND_5[63:0];
  _RAND_6 = {1{`RANDOM}};
  rmReg = _RAND_6[2:0];
  _RAND_7 = {2{`RANDOM}};
  io_out_data_r = _RAND_7[63:0];
  _RAND_8 = {1{`RANDOM}};
  io_out_fflags_r = _RAND_8[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

