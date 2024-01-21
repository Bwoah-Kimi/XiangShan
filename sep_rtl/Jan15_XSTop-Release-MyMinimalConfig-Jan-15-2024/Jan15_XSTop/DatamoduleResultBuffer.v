module DatamoduleResultBuffer(
  input          clock,
  input          reset,
  output         io_enq_0_ready,
  input          io_enq_0_valid,
  input  [35:0]  io_enq_0_bits_addr,
  input  [38:0]  io_enq_0_bits_vaddr,
  input  [127:0] io_enq_0_bits_data,
  input  [15:0]  io_enq_0_bits_mask,
  input          io_enq_0_bits_wline,
  input  [3:0]   io_enq_0_bits_sqPtr_value,
  output         io_enq_1_ready,
  input          io_enq_1_valid,
  input  [35:0]  io_enq_1_bits_addr,
  input  [38:0]  io_enq_1_bits_vaddr,
  input  [127:0] io_enq_1_bits_data,
  input  [15:0]  io_enq_1_bits_mask,
  input          io_enq_1_bits_wline,
  input  [3:0]   io_enq_1_bits_sqPtr_value,
  input          io_deq_0_ready,
  output         io_deq_0_valid,
  output [35:0]  io_deq_0_bits_addr,
  output [38:0]  io_deq_0_bits_vaddr,
  output [127:0] io_deq_0_bits_data,
  output [15:0]  io_deq_0_bits_mask,
  output         io_deq_0_bits_wline,
  output [3:0]   io_deq_0_bits_sqPtr_value,
  input          io_deq_1_ready,
  output         io_deq_1_valid,
  output [35:0]  io_deq_1_bits_addr,
  output [38:0]  io_deq_1_bits_vaddr,
  output [127:0] io_deq_1_bits_data,
  output [15:0]  io_deq_1_bits_mask,
  output         io_deq_1_bits_wline,
  output [3:0]   io_deq_1_bits_sqPtr_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [127:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [127:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  reg [35:0] data_0_addr; // @[DatamoduleResultBuffer.scala 55:17]
  reg [38:0] data_0_vaddr; // @[DatamoduleResultBuffer.scala 55:17]
  reg [127:0] data_0_data; // @[DatamoduleResultBuffer.scala 55:17]
  reg [15:0] data_0_mask; // @[DatamoduleResultBuffer.scala 55:17]
  reg  data_0_wline; // @[DatamoduleResultBuffer.scala 55:17]
  reg [3:0] data_0_sqPtr_value; // @[DatamoduleResultBuffer.scala 55:17]
  reg [35:0] data_1_addr; // @[DatamoduleResultBuffer.scala 55:17]
  reg [38:0] data_1_vaddr; // @[DatamoduleResultBuffer.scala 55:17]
  reg [127:0] data_1_data; // @[DatamoduleResultBuffer.scala 55:17]
  reg [15:0] data_1_mask; // @[DatamoduleResultBuffer.scala 55:17]
  reg  data_1_wline; // @[DatamoduleResultBuffer.scala 55:17]
  reg [3:0] data_1_sqPtr_value; // @[DatamoduleResultBuffer.scala 55:17]
  reg  valids_0; // @[DatamoduleResultBuffer.scala 56:23]
  reg  valids_1; // @[DatamoduleResultBuffer.scala 56:23]
  reg  enq_flag; // @[DatamoduleResultBuffer.scala 57:25]
  reg  deq_flag; // @[DatamoduleResultBuffer.scala 58:25]
  wire [1:0] _io_deq_0_valid_T = {{1'd0}, deq_flag}; // @[DatamoduleResultBuffer.scala 63:44]
  wire  _io_deq_1_valid_T_1 = deq_flag + 1'h1; // @[DatamoduleResultBuffer.scala 63:44]
  wire  _GEN_19 = deq_flag + 1'h1 ? valids_1 : valids_0; // @[DatamoduleResultBuffer.scala 63:{55,55}]
  wire  _entry_allowin_0_T_1 = io_deq_0_ready & io_deq_0_valid; // @[Decoupled.scala 50:35]
  wire  _entry_allowin_0_T_6 = io_deq_1_ready & io_deq_1_valid; // @[Decoupled.scala 50:35]
  wire  entry_allowin_0 = ~valids_0 | (_entry_allowin_0_T_1 & ~_io_deq_0_valid_T[0] | _entry_allowin_0_T_6 & ~
    _io_deq_1_valid_T_1); // @[DatamoduleResultBuffer.scala 73:53]
  wire  entry_allowin_1 = ~valids_1 | (_entry_allowin_0_T_1 & _io_deq_0_valid_T[0] | _entry_allowin_0_T_6 &
    _io_deq_1_valid_T_1); // @[DatamoduleResultBuffer.scala 73:53]
  wire [1:0] _io_enq_0_ready_T = {{1'd0}, enq_flag}; // @[DatamoduleResultBuffer.scala 77:60]
  wire  _io_enq_1_ready_T_1 = enq_flag + 1'h1; // @[DatamoduleResultBuffer.scala 77:60]
  wire  _GEN_39 = enq_flag + 1'h1 ? entry_allowin_1 : entry_allowin_0; // @[DatamoduleResultBuffer.scala 77:{71,71}]
  wire  _GEN_40 = ~_io_deq_0_valid_T[0] ? 1'h0 : valids_0; // @[DatamoduleResultBuffer.scala 56:23 87:{34,34}]
  wire  _GEN_41 = _io_deq_0_valid_T[0] ? 1'h0 : valids_1; // @[DatamoduleResultBuffer.scala 56:23 87:{34,34}]
  wire  _GEN_42 = _entry_allowin_0_T_1 ? _GEN_40 : valids_0; // @[DatamoduleResultBuffer.scala 56:23 86:30]
  wire  _GEN_43 = _entry_allowin_0_T_1 ? _GEN_41 : valids_1; // @[DatamoduleResultBuffer.scala 56:23 86:30]
  wire  _GEN_45 = ~_io_deq_1_valid_T_1 ? 1'h0 : _GEN_42; // @[DatamoduleResultBuffer.scala 87:{34,34}]
  wire  _GEN_46 = _io_deq_1_valid_T_1 ? 1'h0 : _GEN_43; // @[DatamoduleResultBuffer.scala 87:{34,34}]
  wire  _GEN_47 = _entry_allowin_0_T_6 ? _GEN_45 : _GEN_42; // @[DatamoduleResultBuffer.scala 86:30]
  wire  _GEN_48 = _entry_allowin_0_T_6 ? _GEN_46 : _GEN_43; // @[DatamoduleResultBuffer.scala 86:30]
  wire  _T_30 = io_enq_0_ready & io_enq_0_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_50 = ~_io_enq_0_ready_T[0] | _GEN_47; // @[DatamoduleResultBuffer.scala 94:{34,34}]
  wire  _GEN_51 = _io_enq_0_ready_T[0] | _GEN_48; // @[DatamoduleResultBuffer.scala 94:{34,34}]
  wire [35:0] _GEN_52 = ~_io_enq_0_ready_T[0] ? io_enq_0_bits_addr : data_0_addr; // @[DatamoduleResultBuffer.scala 55:17 95:{32,32}]
  wire [35:0] _GEN_53 = _io_enq_0_ready_T[0] ? io_enq_0_bits_addr : data_1_addr; // @[DatamoduleResultBuffer.scala 55:17 95:{32,32}]
  wire [38:0] _GEN_54 = ~_io_enq_0_ready_T[0] ? io_enq_0_bits_vaddr : data_0_vaddr; // @[DatamoduleResultBuffer.scala 55:17 95:{32,32}]
  wire [38:0] _GEN_55 = _io_enq_0_ready_T[0] ? io_enq_0_bits_vaddr : data_1_vaddr; // @[DatamoduleResultBuffer.scala 55:17 95:{32,32}]
  wire [127:0] _GEN_56 = ~_io_enq_0_ready_T[0] ? io_enq_0_bits_data : data_0_data; // @[DatamoduleResultBuffer.scala 55:17 95:{32,32}]
  wire [127:0] _GEN_57 = _io_enq_0_ready_T[0] ? io_enq_0_bits_data : data_1_data; // @[DatamoduleResultBuffer.scala 55:17 95:{32,32}]
  wire [15:0] _GEN_58 = ~_io_enq_0_ready_T[0] ? io_enq_0_bits_mask : data_0_mask; // @[DatamoduleResultBuffer.scala 55:17 95:{32,32}]
  wire [15:0] _GEN_59 = _io_enq_0_ready_T[0] ? io_enq_0_bits_mask : data_1_mask; // @[DatamoduleResultBuffer.scala 55:17 95:{32,32}]
  wire  _GEN_60 = ~_io_enq_0_ready_T[0] ? io_enq_0_bits_wline : data_0_wline; // @[DatamoduleResultBuffer.scala 55:17 95:{32,32}]
  wire  _GEN_61 = _io_enq_0_ready_T[0] ? io_enq_0_bits_wline : data_1_wline; // @[DatamoduleResultBuffer.scala 55:17 95:{32,32}]
  wire [3:0] _GEN_64 = ~_io_enq_0_ready_T[0] ? io_enq_0_bits_sqPtr_value : data_0_sqPtr_value; // @[DatamoduleResultBuffer.scala 55:17 95:{32,32}]
  wire [3:0] _GEN_65 = _io_enq_0_ready_T[0] ? io_enq_0_bits_sqPtr_value : data_1_sqPtr_value; // @[DatamoduleResultBuffer.scala 55:17 95:{32,32}]
  wire  _GEN_68 = _T_30 ? _GEN_50 : _GEN_47; // @[DatamoduleResultBuffer.scala 93:30]
  wire  _GEN_69 = _T_30 ? _GEN_51 : _GEN_48; // @[DatamoduleResultBuffer.scala 93:30]
  wire [35:0] _GEN_70 = _T_30 ? _GEN_52 : data_0_addr; // @[DatamoduleResultBuffer.scala 55:17 93:30]
  wire [35:0] _GEN_71 = _T_30 ? _GEN_53 : data_1_addr; // @[DatamoduleResultBuffer.scala 55:17 93:30]
  wire [38:0] _GEN_72 = _T_30 ? _GEN_54 : data_0_vaddr; // @[DatamoduleResultBuffer.scala 55:17 93:30]
  wire [38:0] _GEN_73 = _T_30 ? _GEN_55 : data_1_vaddr; // @[DatamoduleResultBuffer.scala 55:17 93:30]
  wire [127:0] _GEN_74 = _T_30 ? _GEN_56 : data_0_data; // @[DatamoduleResultBuffer.scala 55:17 93:30]
  wire [127:0] _GEN_75 = _T_30 ? _GEN_57 : data_1_data; // @[DatamoduleResultBuffer.scala 55:17 93:30]
  wire [15:0] _GEN_76 = _T_30 ? _GEN_58 : data_0_mask; // @[DatamoduleResultBuffer.scala 55:17 93:30]
  wire [15:0] _GEN_77 = _T_30 ? _GEN_59 : data_1_mask; // @[DatamoduleResultBuffer.scala 55:17 93:30]
  wire  _GEN_78 = _T_30 ? _GEN_60 : data_0_wline; // @[DatamoduleResultBuffer.scala 55:17 93:30]
  wire  _GEN_79 = _T_30 ? _GEN_61 : data_1_wline; // @[DatamoduleResultBuffer.scala 55:17 93:30]
  wire [3:0] _GEN_82 = _T_30 ? _GEN_64 : data_0_sqPtr_value; // @[DatamoduleResultBuffer.scala 55:17 93:30]
  wire [3:0] _GEN_83 = _T_30 ? _GEN_65 : data_1_sqPtr_value; // @[DatamoduleResultBuffer.scala 55:17 93:30]
  wire  _T_35 = io_enq_1_ready & io_enq_1_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_87 = ~_io_enq_1_ready_T_1 | _GEN_68; // @[DatamoduleResultBuffer.scala 94:{34,34}]
  wire  _GEN_88 = _io_enq_1_ready_T_1 | _GEN_69; // @[DatamoduleResultBuffer.scala 94:{34,34}]
  assign io_enq_0_ready = _io_enq_0_ready_T[0] ? entry_allowin_1 : entry_allowin_0; // @[DatamoduleResultBuffer.scala 77:{71,71}]
  assign io_enq_1_ready = _GEN_39 & io_enq_0_ready; // @[DatamoduleResultBuffer.scala 77:71]
  assign io_deq_0_valid = _io_deq_0_valid_T[0] ? valids_1 : valids_0; // @[DatamoduleResultBuffer.scala 63:{55,55}]
  assign io_deq_0_bits_addr = _io_deq_0_valid_T[0] ? data_1_addr : data_0_addr; // @[DatamoduleResultBuffer.scala 64:{24,24}]
  assign io_deq_0_bits_vaddr = _io_deq_0_valid_T[0] ? data_1_vaddr : data_0_vaddr; // @[DatamoduleResultBuffer.scala 64:{24,24}]
  assign io_deq_0_bits_data = _io_deq_0_valid_T[0] ? data_1_data : data_0_data; // @[DatamoduleResultBuffer.scala 64:{24,24}]
  assign io_deq_0_bits_mask = _io_deq_0_valid_T[0] ? data_1_mask : data_0_mask; // @[DatamoduleResultBuffer.scala 64:{24,24}]
  assign io_deq_0_bits_wline = _io_deq_0_valid_T[0] ? data_1_wline : data_0_wline; // @[DatamoduleResultBuffer.scala 64:{24,24}]
  assign io_deq_0_bits_sqPtr_value = _io_deq_0_valid_T[0] ? data_1_sqPtr_value : data_0_sqPtr_value; // @[DatamoduleResultBuffer.scala 64:{24,24}]
  assign io_deq_1_valid = _GEN_19 & io_deq_0_valid; // @[DatamoduleResultBuffer.scala 63:55]
  assign io_deq_1_bits_addr = _io_deq_1_valid_T_1 ? data_1_addr : data_0_addr; // @[DatamoduleResultBuffer.scala 64:{24,24}]
  assign io_deq_1_bits_vaddr = _io_deq_1_valid_T_1 ? data_1_vaddr : data_0_vaddr; // @[DatamoduleResultBuffer.scala 64:{24,24}]
  assign io_deq_1_bits_data = _io_deq_1_valid_T_1 ? data_1_data : data_0_data; // @[DatamoduleResultBuffer.scala 64:{24,24}]
  assign io_deq_1_bits_mask = _io_deq_1_valid_T_1 ? data_1_mask : data_0_mask; // @[DatamoduleResultBuffer.scala 64:{24,24}]
  assign io_deq_1_bits_wline = _io_deq_1_valid_T_1 ? data_1_wline : data_0_wline; // @[DatamoduleResultBuffer.scala 64:{24,24}]
  assign io_deq_1_bits_sqPtr_value = _io_deq_1_valid_T_1 ? data_1_sqPtr_value : data_0_sqPtr_value; // @[DatamoduleResultBuffer.scala 64:{24,24}]
  always @(posedge clock) begin
    if (_T_35) begin // @[DatamoduleResultBuffer.scala 93:30]
      if (~_io_enq_1_ready_T_1) begin // @[DatamoduleResultBuffer.scala 95:32]
        data_0_addr <= io_enq_1_bits_addr; // @[DatamoduleResultBuffer.scala 95:32]
      end else begin
        data_0_addr <= _GEN_70;
      end
    end else begin
      data_0_addr <= _GEN_70;
    end
    if (_T_35) begin // @[DatamoduleResultBuffer.scala 93:30]
      if (~_io_enq_1_ready_T_1) begin // @[DatamoduleResultBuffer.scala 95:32]
        data_0_vaddr <= io_enq_1_bits_vaddr; // @[DatamoduleResultBuffer.scala 95:32]
      end else begin
        data_0_vaddr <= _GEN_72;
      end
    end else begin
      data_0_vaddr <= _GEN_72;
    end
    if (_T_35) begin // @[DatamoduleResultBuffer.scala 93:30]
      if (~_io_enq_1_ready_T_1) begin // @[DatamoduleResultBuffer.scala 95:32]
        data_0_data <= io_enq_1_bits_data; // @[DatamoduleResultBuffer.scala 95:32]
      end else begin
        data_0_data <= _GEN_74;
      end
    end else begin
      data_0_data <= _GEN_74;
    end
    if (_T_35) begin // @[DatamoduleResultBuffer.scala 93:30]
      if (~_io_enq_1_ready_T_1) begin // @[DatamoduleResultBuffer.scala 95:32]
        data_0_mask <= io_enq_1_bits_mask; // @[DatamoduleResultBuffer.scala 95:32]
      end else begin
        data_0_mask <= _GEN_76;
      end
    end else begin
      data_0_mask <= _GEN_76;
    end
    if (_T_35) begin // @[DatamoduleResultBuffer.scala 93:30]
      if (~_io_enq_1_ready_T_1) begin // @[DatamoduleResultBuffer.scala 95:32]
        data_0_wline <= io_enq_1_bits_wline; // @[DatamoduleResultBuffer.scala 95:32]
      end else begin
        data_0_wline <= _GEN_78;
      end
    end else begin
      data_0_wline <= _GEN_78;
    end
    if (_T_35) begin // @[DatamoduleResultBuffer.scala 93:30]
      if (~_io_enq_1_ready_T_1) begin // @[DatamoduleResultBuffer.scala 95:32]
        data_0_sqPtr_value <= io_enq_1_bits_sqPtr_value; // @[DatamoduleResultBuffer.scala 95:32]
      end else begin
        data_0_sqPtr_value <= _GEN_82;
      end
    end else begin
      data_0_sqPtr_value <= _GEN_82;
    end
    if (_T_35) begin // @[DatamoduleResultBuffer.scala 93:30]
      if (_io_enq_1_ready_T_1) begin // @[DatamoduleResultBuffer.scala 95:32]
        data_1_addr <= io_enq_1_bits_addr; // @[DatamoduleResultBuffer.scala 95:32]
      end else begin
        data_1_addr <= _GEN_71;
      end
    end else begin
      data_1_addr <= _GEN_71;
    end
    if (_T_35) begin // @[DatamoduleResultBuffer.scala 93:30]
      if (_io_enq_1_ready_T_1) begin // @[DatamoduleResultBuffer.scala 95:32]
        data_1_vaddr <= io_enq_1_bits_vaddr; // @[DatamoduleResultBuffer.scala 95:32]
      end else begin
        data_1_vaddr <= _GEN_73;
      end
    end else begin
      data_1_vaddr <= _GEN_73;
    end
    if (_T_35) begin // @[DatamoduleResultBuffer.scala 93:30]
      if (_io_enq_1_ready_T_1) begin // @[DatamoduleResultBuffer.scala 95:32]
        data_1_data <= io_enq_1_bits_data; // @[DatamoduleResultBuffer.scala 95:32]
      end else begin
        data_1_data <= _GEN_75;
      end
    end else begin
      data_1_data <= _GEN_75;
    end
    if (_T_35) begin // @[DatamoduleResultBuffer.scala 93:30]
      if (_io_enq_1_ready_T_1) begin // @[DatamoduleResultBuffer.scala 95:32]
        data_1_mask <= io_enq_1_bits_mask; // @[DatamoduleResultBuffer.scala 95:32]
      end else begin
        data_1_mask <= _GEN_77;
      end
    end else begin
      data_1_mask <= _GEN_77;
    end
    if (_T_35) begin // @[DatamoduleResultBuffer.scala 93:30]
      if (_io_enq_1_ready_T_1) begin // @[DatamoduleResultBuffer.scala 95:32]
        data_1_wline <= io_enq_1_bits_wline; // @[DatamoduleResultBuffer.scala 95:32]
      end else begin
        data_1_wline <= _GEN_79;
      end
    end else begin
      data_1_wline <= _GEN_79;
    end
    if (_T_35) begin // @[DatamoduleResultBuffer.scala 93:30]
      if (_io_enq_1_ready_T_1) begin // @[DatamoduleResultBuffer.scala 95:32]
        data_1_sqPtr_value <= io_enq_1_bits_sqPtr_value; // @[DatamoduleResultBuffer.scala 95:32]
      end else begin
        data_1_sqPtr_value <= _GEN_83;
      end
    end else begin
      data_1_sqPtr_value <= _GEN_83;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DatamoduleResultBuffer.scala 93:30]
      valids_0 <= 1'h0;
    end else if (_T_35) begin // @[DatamoduleResultBuffer.scala 93:30]
      valids_0 <= _GEN_87;
    end else if (_T_30) begin // @[DatamoduleResultBuffer.scala 86:30]
      valids_0 <= _GEN_50; // @[DatamoduleResultBuffer.scala 87:{34,34}]
    end else if (_entry_allowin_0_T_6) begin
      if (~_io_deq_1_valid_T_1) begin
        valids_0 <= 1'h0;
      end else begin
        valids_0 <= _GEN_42;
      end
    end else begin
      valids_0 <= _GEN_42;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DatamoduleResultBuffer.scala 93:30]
      valids_1 <= 1'h0;
    end else if (_T_35) begin // @[DatamoduleResultBuffer.scala 93:30]
      valids_1 <= _GEN_88;
    end else if (_T_30) begin // @[DatamoduleResultBuffer.scala 86:30]
      valids_1 <= _GEN_51; // @[DatamoduleResultBuffer.scala 87:{34,34}]
    end else if (_entry_allowin_0_T_6) begin
      if (_io_deq_1_valid_T_1) begin
        valids_1 <= 1'h0;
      end else begin
        valids_1 <= _GEN_43;
      end
    end else begin
      valids_1 <= _GEN_43;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DatamoduleResultBuffer.scala 93:30]
      enq_flag <= 1'h0; // @[DatamoduleResultBuffer.scala 96:40]
    end else if (_T_35) begin // @[DatamoduleResultBuffer.scala 93:30]
      enq_flag <= _io_enq_1_ready_T_1 + 1'h1; // @[DatamoduleResultBuffer.scala 96:40]
    end else if (_T_30) begin // @[DatamoduleResultBuffer.scala 57:25]
      enq_flag <= _io_enq_0_ready_T[0] + 1'h1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DatamoduleResultBuffer.scala 86:30]
      deq_flag <= 1'h0; // @[DatamoduleResultBuffer.scala 88:40]
    end else if (_entry_allowin_0_T_6) begin // @[DatamoduleResultBuffer.scala 86:30]
      deq_flag <= _io_deq_1_valid_T_1 + 1'h1; // @[DatamoduleResultBuffer.scala 88:40]
    end else if (_entry_allowin_0_T_1) begin // @[DatamoduleResultBuffer.scala 58:25]
      deq_flag <= _io_deq_0_valid_T[0] + 1'h1;
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
  data_0_addr = _RAND_0[35:0];
  _RAND_1 = {2{`RANDOM}};
  data_0_vaddr = _RAND_1[38:0];
  _RAND_2 = {4{`RANDOM}};
  data_0_data = _RAND_2[127:0];
  _RAND_3 = {1{`RANDOM}};
  data_0_mask = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  data_0_wline = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  data_0_sqPtr_value = _RAND_5[3:0];
  _RAND_6 = {2{`RANDOM}};
  data_1_addr = _RAND_6[35:0];
  _RAND_7 = {2{`RANDOM}};
  data_1_vaddr = _RAND_7[38:0];
  _RAND_8 = {4{`RANDOM}};
  data_1_data = _RAND_8[127:0];
  _RAND_9 = {1{`RANDOM}};
  data_1_mask = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  data_1_wline = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  data_1_sqPtr_value = _RAND_11[3:0];
  _RAND_12 = {1{`RANDOM}};
  valids_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  valids_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  enq_flag = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  deq_flag = _RAND_15[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    valids_0 = 1'h0;
  end
  if (reset) begin
    valids_1 = 1'h0;
  end
  if (reset) begin
    enq_flag = 1'h0;
  end
  if (reset) begin
    deq_flag = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

