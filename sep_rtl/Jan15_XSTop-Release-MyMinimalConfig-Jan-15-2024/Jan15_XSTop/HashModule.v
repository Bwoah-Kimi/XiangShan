module HashModule(
  input         clock,
  input  [63:0] io_src,
  input  [6:0]  io_func,
  input         io_regEnable,
  output [63:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire [63:0] _sha256sum0_T_2 = {32'h0,io_src[1:0],io_src[31:2]}; // @[Cat.scala 31:58]
  wire [63:0] _sha256sum0_T_5 = {32'h0,io_src[12:0],io_src[31:13]}; // @[Cat.scala 31:58]
  wire [63:0] _sha256sum0_T_6 = _sha256sum0_T_2 ^ _sha256sum0_T_5; // @[Bku.scala 164:36]
  wire [63:0] _sha256sum0_T_9 = {32'h0,io_src[21:0],io_src[31:22]}; // @[Cat.scala 31:58]
  wire [63:0] sha256sum0 = _sha256sum0_T_6 ^ _sha256sum0_T_9; // @[Bku.scala 164:54]
  wire [63:0] _sha256sum1_T_2 = {32'h0,io_src[5:0],io_src[31:6]}; // @[Cat.scala 31:58]
  wire [63:0] _sha256sum1_T_5 = {32'h0,io_src[10:0],io_src[31:11]}; // @[Cat.scala 31:58]
  wire [63:0] _sha256sum1_T_6 = _sha256sum1_T_2 ^ _sha256sum1_T_5; // @[Bku.scala 165:36]
  wire [63:0] _sha256sum1_T_9 = {32'h0,io_src[24:0],io_src[31:25]}; // @[Cat.scala 31:58]
  wire [63:0] sha256sum1 = _sha256sum1_T_6 ^ _sha256sum1_T_9; // @[Bku.scala 165:54]
  wire [63:0] _sha256sig0_T_2 = {32'h0,io_src[6:0],io_src[31:7]}; // @[Cat.scala 31:58]
  wire [63:0] _sha256sig0_T_5 = {32'h0,io_src[17:0],io_src[31:18]}; // @[Cat.scala 31:58]
  wire [63:0] _sha256sig0_T_6 = _sha256sig0_T_2 ^ _sha256sig0_T_5; // @[Bku.scala 166:36]
  wire [63:0] _sha256sig0_T_8 = {35'h0,io_src[31:3]}; // @[Cat.scala 31:58]
  wire [63:0] sha256sig0 = _sha256sig0_T_6 ^ _sha256sig0_T_8; // @[Bku.scala 166:54]
  wire [63:0] _sha256sig1_T_2 = {32'h0,io_src[16:0],io_src[31:17]}; // @[Cat.scala 31:58]
  wire [63:0] _sha256sig1_T_5 = {32'h0,io_src[18:0],io_src[31:19]}; // @[Cat.scala 31:58]
  wire [63:0] _sha256sig1_T_6 = _sha256sig1_T_2 ^ _sha256sig1_T_5; // @[Bku.scala 167:36]
  wire [63:0] _sha256sig1_T_8 = {42'h0,io_src[31:10]}; // @[Cat.scala 31:58]
  wire [63:0] sha256sig1 = _sha256sig1_T_6 ^ _sha256sig1_T_8; // @[Bku.scala 167:54]
  wire [63:0] _sha512sum0_T_2 = {io_src[27:0],io_src[63:28]}; // @[Cat.scala 31:58]
  wire [63:0] _sha512sum0_T_5 = {io_src[33:0],io_src[63:34]}; // @[Cat.scala 31:58]
  wire [63:0] _sha512sum0_T_6 = _sha512sum0_T_2 ^ _sha512sum0_T_5; // @[Bku.scala 168:36]
  wire [63:0] _sha512sum0_T_9 = {io_src[38:0],io_src[63:39]}; // @[Cat.scala 31:58]
  wire [63:0] sha512sum0 = _sha512sum0_T_6 ^ _sha512sum0_T_9; // @[Bku.scala 168:54]
  wire [63:0] _sha512sum1_T_2 = {io_src[13:0],io_src[63:14]}; // @[Cat.scala 31:58]
  wire [63:0] _sha512sum1_T_5 = {io_src[17:0],io_src[63:18]}; // @[Cat.scala 31:58]
  wire [63:0] _sha512sum1_T_6 = _sha512sum1_T_2 ^ _sha512sum1_T_5; // @[Bku.scala 169:36]
  wire [63:0] _sha512sum1_T_9 = {io_src[40:0],io_src[63:41]}; // @[Cat.scala 31:58]
  wire [63:0] sha512sum1 = _sha512sum1_T_6 ^ _sha512sum1_T_9; // @[Bku.scala 169:54]
  wire [63:0] _sha512sig0_T_2 = {io_src[0],io_src[63:1]}; // @[Cat.scala 31:58]
  wire [63:0] _sha512sig0_T_5 = {io_src[7:0],io_src[63:8]}; // @[Cat.scala 31:58]
  wire [63:0] _sha512sig0_T_6 = _sha512sig0_T_2 ^ _sha512sig0_T_5; // @[Bku.scala 170:36]
  wire [63:0] _sha512sig0_T_8 = {7'h0,io_src[63:7]}; // @[Cat.scala 31:58]
  wire [63:0] sha512sig0 = _sha512sig0_T_6 ^ _sha512sig0_T_8; // @[Bku.scala 170:54]
  wire [63:0] _sha512sig1_T_2 = {io_src[18:0],io_src[63:19]}; // @[Cat.scala 31:58]
  wire [63:0] _sha512sig1_T_5 = {io_src[60:0],io_src[63:61]}; // @[Cat.scala 31:58]
  wire [63:0] _sha512sig1_T_6 = _sha512sig1_T_2 ^ _sha512sig1_T_5; // @[Bku.scala 171:36]
  wire [63:0] _sha512sig1_T_8 = {6'h0,io_src[63:6]}; // @[Cat.scala 31:58]
  wire [63:0] sha512sig1 = _sha512sig1_T_6 ^ _sha512sig1_T_8; // @[Bku.scala 171:54]
  wire [63:0] _sm3p0_T_2 = {32'h0,io_src[22:0],io_src[31:23]}; // @[Cat.scala 31:58]
  wire [63:0] _sm3p0_T_5 = {32'h0,io_src[14:0],io_src[31:15]}; // @[Cat.scala 31:58]
  wire [63:0] _sm3p0_T_6 = _sm3p0_T_2 ^ _sm3p0_T_5; // @[Bku.scala 172:36]
  wire [63:0] sm3p0 = _sm3p0_T_6 ^ io_src; // @[Bku.scala 172:54]
  wire [63:0] _sm3p1_T_2 = {32'h0,io_src[8:0],io_src[31:9]}; // @[Cat.scala 31:58]
  wire [63:0] _sm3p1_T_6 = _sm3p1_T_2 ^ _sha256sig1_T_2; // @[Bku.scala 173:36]
  wire [63:0] sm3p1 = _sm3p1_T_6 ^ io_src; // @[Bku.scala 173:54]
  wire  shaSource_signBit = sha256sum0[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _shaSource_T_2 = shaSource_signBit ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] shaSource_0 = {_shaSource_T_2,sha256sum0[31:0]}; // @[Cat.scala 31:58]
  wire  shaSource_signBit_1 = sha256sum1[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _shaSource_T_6 = shaSource_signBit_1 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] shaSource_1 = {_shaSource_T_6,sha256sum1[31:0]}; // @[Cat.scala 31:58]
  wire  shaSource_signBit_2 = sha256sig0[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _shaSource_T_10 = shaSource_signBit_2 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] shaSource_2 = {_shaSource_T_10,sha256sig0[31:0]}; // @[Cat.scala 31:58]
  wire  shaSource_signBit_3 = sha256sig1[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _shaSource_T_14 = shaSource_signBit_3 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] shaSource_3 = {_shaSource_T_14,sha256sig1[31:0]}; // @[Cat.scala 31:58]
  wire  sm3_signBit = sm3p1[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _sm3_T_3 = sm3_signBit ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _sm3_T_4 = {_sm3_T_3,sm3p1[31:0]}; // @[Cat.scala 31:58]
  wire  sm3_signBit_1 = sm3p0[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _sm3_T_7 = sm3_signBit_1 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _sm3_T_8 = {_sm3_T_7,sm3p0[31:0]}; // @[Cat.scala 31:58]
  wire [63:0] _GEN_1 = 3'h1 == io_func[2:0] ? shaSource_1 : shaSource_0; // @[Bku.scala 188:{26,26}]
  wire [63:0] _GEN_2 = 3'h2 == io_func[2:0] ? shaSource_2 : _GEN_1; // @[Bku.scala 188:{26,26}]
  wire [63:0] _GEN_3 = 3'h3 == io_func[2:0] ? shaSource_3 : _GEN_2; // @[Bku.scala 188:{26,26}]
  wire [63:0] _GEN_4 = 3'h4 == io_func[2:0] ? sha512sum0 : _GEN_3; // @[Bku.scala 188:{26,26}]
  wire [63:0] _GEN_5 = 3'h5 == io_func[2:0] ? sha512sum1 : _GEN_4; // @[Bku.scala 188:{26,26}]
  reg [63:0] io_out_r; // @[Reg.scala 16:16]
  assign io_out = io_out_r; // @[Bku.scala 188:10]
  always @(posedge clock) begin
    if (io_regEnable) begin // @[Reg.scala 17:18]
      if (io_func[3]) begin // @[Bku.scala 188:26]
        if (io_func[0]) begin // @[Bku.scala 186:16]
          io_out_r <= _sm3_T_4;
        end else begin
          io_out_r <= _sm3_T_8;
        end
      end else if (3'h7 == io_func[2:0]) begin // @[Bku.scala 188:26]
        io_out_r <= sha512sig1; // @[Bku.scala 188:26]
      end else if (3'h6 == io_func[2:0]) begin // @[Bku.scala 188:26]
        io_out_r <= sha512sig0; // @[Bku.scala 188:26]
      end else begin
        io_out_r <= _GEN_5;
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
  io_out_r = _RAND_0[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

