module BusErrorUnit(
  input         clock,
  input         reset,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [1:0]  auto_in_a_bits_size,
  input  [2:0]  auto_in_a_bits_source,
  input  [29:0] auto_in_a_bits_address,
  input  [7:0]  auto_in_a_bits_mask,
  input  [63:0] auto_in_a_bits_data,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [1:0]  auto_in_d_bits_size,
  output [2:0]  auto_in_d_bits_source,
  output [63:0] auto_in_d_bits_data,
  output        auto_int_out_0,
  input         io_errors_icache_ecc_error_valid,
  input  [35:0] io_errors_icache_ecc_error_bits,
  input         io_errors_dcache_ecc_error_valid,
  input  [35:0] io_errors_dcache_ecc_error_bits
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] cause_reg; // @[DescribedReg.scala 24:37]
  reg [35:0] value_reg; // @[DescribedReg.scala 24:55]
  reg  enable_0; // @[BusErrorUnit.scala 64:21]
  reg  enable_1; // @[BusErrorUnit.scala 64:21]
  reg  enable_2; // @[BusErrorUnit.scala 64:21]
  reg  global_interrupt_0; // @[BusErrorUnit.scala 70:31]
  reg  global_interrupt_1; // @[BusErrorUnit.scala 70:31]
  reg  global_interrupt_2; // @[BusErrorUnit.scala 70:31]
  reg  accrued_0; // @[BusErrorUnit.scala 76:22]
  reg  accrued_1; // @[BusErrorUnit.scala 76:22]
  reg  accrued_2; // @[BusErrorUnit.scala 76:22]
  reg  local_interrupt_0; // @[BusErrorUnit.scala 82:30]
  reg  local_interrupt_1; // @[BusErrorUnit.scala 82:30]
  reg  local_interrupt_2; // @[BusErrorUnit.scala 82:30]
  wire  _GEN_3 = io_errors_icache_ecc_error_valid | accrued_0; // @[BusErrorUnit.scala 92:26 93:13 76:22]
  wire  _GEN_4 = io_errors_icache_ecc_error_valid & enable_0; // @[BusErrorUnit.scala 92:26]
  wire  _GEN_7 = enable_1 | _GEN_4; // @[BusErrorUnit.scala 94:19 95:21]
  wire [35:0] _GEN_9 = enable_1 ? io_errors_dcache_ecc_error_bits : io_errors_icache_ecc_error_bits; // @[BusErrorUnit.scala 94:19 97:21]
  wire  _GEN_10 = io_errors_dcache_ecc_error_valid | accrued_1; // @[BusErrorUnit.scala 92:26 93:13 76:22]
  wire  cause_wen = io_errors_dcache_ecc_error_valid ? _GEN_7 : io_errors_icache_ecc_error_valid & enable_0; // @[BusErrorUnit.scala 92:26]
  wire  _GEN_12 = io_errors_dcache_ecc_error_valid & enable_1; // @[BusErrorUnit.scala 92:26]
  wire [35:0] new_value = io_errors_dcache_ecc_error_valid ? _GEN_9 : io_errors_icache_ecc_error_bits; // @[BusErrorUnit.scala 92:26]
  wire [1:0] new_cause = {{1'd0}, _GEN_12}; // @[BusErrorUnit.scala 92:26]
  wire [1:0] _GEN_21 = cause_reg == 2'h0 & cause_wen ? new_cause : cause_reg; // @[BusErrorUnit.scala 103:37 104:13 DescribedReg.scala 24:37]
  wire [35:0] _GEN_22 = cause_reg == 2'h0 & cause_wen ? new_value : value_reg; // @[BusErrorUnit.scala 103:37 105:13 DescribedReg.scala 24:55]
  wire [2:0] _io_interrupt_T = {accrued_2,accrued_1,accrued_0}; // @[BusErrorUnit.scala 109:30]
  wire [2:0] _bundleOut_0_0_T_1 = {global_interrupt_2,global_interrupt_1,global_interrupt_0}; // @[BusErrorUnit.scala 110:54]
  wire [2:0] _bundleOut_0_0_T_2 = _io_interrupt_T & _bundleOut_0_0_T_1; // @[BusErrorUnit.scala 110:35]
  wire [7:0] pad = {{6'd0}, cause_reg}; // @[RegField.scala 150:19]
  wire  in_bits_read = auto_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 71:36]
  wire [8:0] in_bits_index = auto_in_a_bits_address[11:3]; // @[RegisterRouter.scala 70:18 72:19]
  wire [2:0] out_iindex = {in_bits_index[2],in_bits_index[1],in_bits_index[0]}; // @[Cat.scala 31:58]
  wire [8:0] out_findex = in_bits_index & 9'h1f8; // @[RegisterRouter.scala 82:24]
  wire  _out_T_2 = out_findex == 9'h0; // @[RegisterRouter.scala 82:24]
  wire [7:0] _out_backSel_T = 8'h1 << out_iindex; // @[OneHot.scala 57:35]
  wire  out_backSel_0 = _out_backSel_T[0]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_0 = auto_in_a_valid & auto_in_d_ready & ~in_bits_read & out_backSel_0 & out_findex == 9'h0; // @[RegisterRouter.scala 82:24]
  wire [7:0] _out_backMask_T_23 = auto_in_a_bits_mask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_21 = auto_in_a_bits_mask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_19 = auto_in_a_bits_mask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_17 = auto_in_a_bits_mask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_15 = auto_in_a_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_13 = auto_in_a_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_11 = auto_in_a_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_9 = auto_in_a_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] out_backMask = {_out_backMask_T_23,_out_backMask_T_21,_out_backMask_T_19,_out_backMask_T_17,
    _out_backMask_T_15,_out_backMask_T_13,_out_backMask_T_11,_out_backMask_T_9}; // @[Cat.scala 31:58]
  wire  out_womask = &out_backMask[1:0]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready = out_woready_0 & out_womask; // @[RegisterRouter.scala 82:24]
  wire [7:0] newBytes_0 = out_f_woready ? {{6'd0}, auto_in_a_bits_data[1:0]} : pad; // @[RegField.scala 158:{20,33}]
  wire [7:0] _GEN_23 = out_f_woready ? newBytes_0 : {{6'd0}, _GEN_21}; // @[RegField.scala 154:{34,40}]
  wire [39:0] pad_1 = {{4'd0}, value_reg}; // @[RegField.scala 150:19]
  wire [7:0] oldBytes_1_0 = pad_1[7:0]; // @[RegField.scala 151:53]
  wire [7:0] oldBytes_1_1 = pad_1[15:8]; // @[RegField.scala 151:53]
  wire [7:0] oldBytes_1_2 = pad_1[23:16]; // @[RegField.scala 151:53]
  wire [7:0] oldBytes_1_3 = pad_1[31:24]; // @[RegField.scala 151:53]
  wire [7:0] oldBytes_1_4 = pad_1[39:32]; // @[RegField.scala 151:53]
  wire  out_backSel_1 = _out_backSel_T[1]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_5 = auto_in_a_valid & auto_in_d_ready & ~in_bits_read & out_backSel_1 & out_findex == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  out_womask_5 = &out_backMask[7:0]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_5 = out_woready_5 & out_womask_5; // @[RegisterRouter.scala 82:24]
  wire  out_womask_6 = &out_backMask[15:8]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_6 = out_woready_5 & out_womask_6; // @[RegisterRouter.scala 82:24]
  wire  out_womask_7 = &out_backMask[23:16]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_7 = out_woready_5 & out_womask_7; // @[RegisterRouter.scala 82:24]
  wire  out_womask_8 = &out_backMask[31:24]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_8 = out_woready_5 & out_womask_8; // @[RegisterRouter.scala 82:24]
  wire  out_womask_9 = &out_backMask[35:32]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_9 = out_woready_5 & out_womask_9; // @[RegisterRouter.scala 82:24]
  wire [7:0] newBytes_1_1 = out_f_woready_6 ? auto_in_a_bits_data[15:8] : oldBytes_1_1; // @[RegField.scala 158:{20,33}]
  wire [7:0] newBytes_1_0 = out_f_woready_5 ? auto_in_a_bits_data[7:0] : oldBytes_1_0; // @[RegField.scala 158:{20,33}]
  wire [7:0] newBytes_1_4 = out_f_woready_9 ? {{4'd0}, auto_in_a_bits_data[35:32]} : oldBytes_1_4; // @[RegField.scala 158:{20,33}]
  wire [7:0] newBytes_1_3 = out_f_woready_8 ? auto_in_a_bits_data[31:24] : oldBytes_1_3; // @[RegField.scala 158:{20,33}]
  wire [7:0] newBytes_1_2 = out_f_woready_7 ? auto_in_a_bits_data[23:16] : oldBytes_1_2; // @[RegField.scala 158:{20,33}]
  wire [39:0] _value_reg_T = {newBytes_1_4,newBytes_1_3,newBytes_1_2,newBytes_1_1,newBytes_1_0}; // @[RegField.scala 154:52]
  wire [39:0] _GEN_24 = out_f_woready_5 | out_f_woready_6 | out_f_woready_7 | out_f_woready_8 | out_f_woready_9 ?
    _value_reg_T : {{4'd0}, _GEN_22}; // @[RegField.scala 154:{34,40}]
  wire [2:0] out_prepend = {1'h0,pad[1:0]}; // @[Cat.scala 31:58]
  wire [7:0] _out_T_30 = {{5'd0}, out_prepend}; // @[RegisterRouter.scala 82:24]
  wire  out_wimask_2 = &out_backMask[0]; // @[RegisterRouter.scala 82:24]
  wire  out_frontSel_5 = _out_backSel_T[5]; // @[RegisterRouter.scala 82:24]
  wire  out_wivalid_2 = auto_in_a_valid & auto_in_d_ready & ~in_bits_read & out_frontSel_5 & out_findex == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_2 = out_wivalid_2 & out_wimask_2; // @[RegisterRouter.scala 82:24]
  wire  out_wimask_3 = &out_backMask[1]; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_3 = out_wivalid_2 & out_wimask_3; // @[RegisterRouter.scala 82:24]
  wire  out_wimask_4 = &out_backMask[2]; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_4 = out_wivalid_2 & out_wimask_4; // @[RegisterRouter.scala 82:24]
  wire [2:0] out_prepend_2 = {local_interrupt_2,local_interrupt_1,local_interrupt_0}; // @[Cat.scala 31:58]
  wire [39:0] out_prepend_6 = {oldBytes_1_4,oldBytes_1_3,oldBytes_1_2,oldBytes_1_1,oldBytes_1_0}; // @[Cat.scala 31:58]
  wire [36:0] out_prepend_7 = {1'h0,out_prepend_6[35:0]}; // @[Cat.scala 31:58]
  wire [39:0] _out_T_127 = {{3'd0}, out_prepend_7}; // @[RegisterRouter.scala 82:24]
  wire  out_frontSel_2 = _out_backSel_T[2]; // @[RegisterRouter.scala 82:24]
  wire  out_wivalid_11 = auto_in_a_valid & auto_in_d_ready & ~in_bits_read & out_frontSel_2 & out_findex == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_11 = out_wivalid_11 & out_wimask_2; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_12 = out_wivalid_11 & out_wimask_3; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_13 = out_wivalid_11 & out_wimask_4; // @[RegisterRouter.scala 82:24]
  wire [2:0] out_prepend_9 = {enable_2,enable_1,enable_0}; // @[Cat.scala 31:58]
  wire  out_frontSel_3 = _out_backSel_T[3]; // @[RegisterRouter.scala 82:24]
  wire  out_wivalid_14 = auto_in_a_valid & auto_in_d_ready & ~in_bits_read & out_frontSel_3 & out_findex == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_14 = out_wivalid_14 & out_wimask_2; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_15 = out_wivalid_14 & out_wimask_3; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_16 = out_wivalid_14 & out_wimask_4; // @[RegisterRouter.scala 82:24]
  wire [2:0] out_prepend_11 = {global_interrupt_2,global_interrupt_1,global_interrupt_0}; // @[Cat.scala 31:58]
  wire  out_frontSel_4 = _out_backSel_T[4]; // @[RegisterRouter.scala 82:24]
  wire  out_wivalid_17 = auto_in_a_valid & auto_in_d_ready & ~in_bits_read & out_frontSel_4 & out_findex == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_17 = out_wivalid_17 & out_wimask_2; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_18 = out_wivalid_17 & out_wimask_3; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_19 = out_wivalid_17 & out_wimask_4; // @[RegisterRouter.scala 82:24]
  wire [2:0] out_prepend_13 = {accrued_2,accrued_1,accrued_0}; // @[Cat.scala 31:58]
  wire  _GEN_76 = 3'h1 == out_iindex ? _out_T_2 : _out_T_2; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_77 = 3'h2 == out_iindex ? _out_T_2 : _GEN_76; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_78 = 3'h3 == out_iindex ? _out_T_2 : _GEN_77; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_79 = 3'h4 == out_iindex ? _out_T_2 : _GEN_78; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_80 = 3'h5 == out_iindex ? _out_T_2 : _GEN_79; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_82 = 3'h7 == out_iindex | (3'h6 == out_iindex | _GEN_80); // @[MuxLiteral.scala 48:{10,10}]
  wire [39:0] _out_out_bits_data_WIRE_1_0 = {{32'd0}, _out_T_30}; // @[MuxLiteral.scala 48:{48,48}]
  wire [39:0] _GEN_84 = 3'h1 == out_iindex ? _out_T_127 : _out_out_bits_data_WIRE_1_0; // @[MuxLiteral.scala 48:{10,10}]
  wire [39:0] _out_out_bits_data_WIRE_1_2 = {{37'd0}, out_prepend_9}; // @[MuxLiteral.scala 48:{48,48}]
  wire [39:0] _GEN_85 = 3'h2 == out_iindex ? _out_out_bits_data_WIRE_1_2 : _GEN_84; // @[MuxLiteral.scala 48:{10,10}]
  wire [39:0] _out_out_bits_data_WIRE_1_3 = {{37'd0}, out_prepend_11}; // @[MuxLiteral.scala 48:{48,48}]
  wire [39:0] _GEN_86 = 3'h3 == out_iindex ? _out_out_bits_data_WIRE_1_3 : _GEN_85; // @[MuxLiteral.scala 48:{10,10}]
  wire [39:0] _out_out_bits_data_WIRE_1_4 = {{37'd0}, out_prepend_13}; // @[MuxLiteral.scala 48:{48,48}]
  wire [39:0] _GEN_87 = 3'h4 == out_iindex ? _out_out_bits_data_WIRE_1_4 : _GEN_86; // @[MuxLiteral.scala 48:{10,10}]
  wire [39:0] _out_out_bits_data_WIRE_1_5 = {{37'd0}, out_prepend_2}; // @[MuxLiteral.scala 48:{48,48}]
  wire [39:0] _GEN_88 = 3'h5 == out_iindex ? _out_out_bits_data_WIRE_1_5 : _GEN_87; // @[MuxLiteral.scala 48:{10,10}]
  wire [39:0] _GEN_89 = 3'h6 == out_iindex ? 40'h0 : _GEN_88; // @[MuxLiteral.scala 48:{10,10}]
  wire [39:0] _GEN_90 = 3'h7 == out_iindex ? 40'h0 : _GEN_89; // @[MuxLiteral.scala 48:{10,10}]
  wire [39:0] _out_out_bits_data_T_4 = _GEN_82 ? _GEN_90 : 40'h0; // @[RegisterRouter.scala 82:24]
  assign auto_in_a_ready = auto_in_d_ready; // @[RegisterRouter.scala 82:24]
  assign auto_in_d_valid = auto_in_a_valid; // @[RegisterRouter.scala 82:24]
  assign auto_in_d_bits_opcode = {{2'd0}, in_bits_read}; // @[Nodes.scala 1210:84 RegisterRouter.scala 97:19]
  assign auto_in_d_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_in_d_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_in_d_bits_data = {{24'd0}, _out_out_bits_data_T_4}; // @[RegisterRouter.scala 82:{24,24}]
  assign auto_int_out_0 = |_bundleOut_0_0_T_2; // @[BusErrorUnit.scala 110:62]
  always @(posedge clock) begin
    value_reg <= _GEN_24[35:0];
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DescribedReg.scala 24:37]
      cause_reg <= 2'h0; // @[DescribedReg.scala 24:37]
    end else begin
      cause_reg <= _GEN_23[1:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enable_0 <= 1'h1; // @[RegField.scala 74:92]
    end else if (out_f_wivalid_11) begin // @[BusErrorUnit.scala 64:21]
      enable_0 <= auto_in_a_bits_data[0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enable_1 <= 1'h1; // @[RegField.scala 74:92]
    end else if (out_f_wivalid_12) begin // @[BusErrorUnit.scala 64:21]
      enable_1 <= auto_in_a_bits_data[1];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      enable_2 <= 1'h1; // @[RegField.scala 74:92]
    end else if (out_f_wivalid_13) begin // @[BusErrorUnit.scala 64:21]
      enable_2 <= auto_in_a_bits_data[2];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      global_interrupt_0 <= 1'h0; // @[RegField.scala 74:92]
    end else if (out_f_wivalid_14) begin // @[BusErrorUnit.scala 70:31]
      global_interrupt_0 <= auto_in_a_bits_data[0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      global_interrupt_1 <= 1'h0; // @[RegField.scala 74:92]
    end else if (out_f_wivalid_15) begin // @[BusErrorUnit.scala 70:31]
      global_interrupt_1 <= auto_in_a_bits_data[1];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      global_interrupt_2 <= 1'h0; // @[RegField.scala 74:92]
    end else if (out_f_wivalid_16) begin // @[BusErrorUnit.scala 70:31]
      global_interrupt_2 <= auto_in_a_bits_data[2];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      accrued_0 <= 1'h0; // @[RegField.scala 74:92]
    end else if (out_f_wivalid_17) begin
      accrued_0 <= auto_in_a_bits_data[0];
    end else begin
      accrued_0 <= _GEN_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      accrued_1 <= 1'h0; // @[RegField.scala 74:92]
    end else if (out_f_wivalid_18) begin
      accrued_1 <= auto_in_a_bits_data[1];
    end else begin
      accrued_1 <= _GEN_10;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      accrued_2 <= 1'h0; // @[RegField.scala 74:92]
    end else if (out_f_wivalid_19) begin
      accrued_2 <= auto_in_a_bits_data[2];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      local_interrupt_0 <= 1'h0; // @[RegField.scala 74:92]
    end else if (out_f_wivalid_2) begin // @[BusErrorUnit.scala 82:30]
      local_interrupt_0 <= auto_in_a_bits_data[0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      local_interrupt_1 <= 1'h0; // @[RegField.scala 74:92]
    end else if (out_f_wivalid_3) begin // @[BusErrorUnit.scala 82:30]
      local_interrupt_1 <= auto_in_a_bits_data[1];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RegField.scala 74:88]
      local_interrupt_2 <= 1'h0; // @[RegField.scala 74:92]
    end else if (out_f_wivalid_4) begin // @[BusErrorUnit.scala 82:30]
      local_interrupt_2 <= auto_in_a_bits_data[2];
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
  cause_reg = _RAND_0[1:0];
  _RAND_1 = {2{`RANDOM}};
  value_reg = _RAND_1[35:0];
  _RAND_2 = {1{`RANDOM}};
  enable_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  enable_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  enable_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  global_interrupt_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  global_interrupt_1 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  global_interrupt_2 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  accrued_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  accrued_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  accrued_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  local_interrupt_0 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  local_interrupt_1 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  local_interrupt_2 = _RAND_13[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    cause_reg = 2'h0;
  end
  if (reset) begin
    enable_0 = 1'h1;
  end
  if (reset) begin
    enable_1 = 1'h1;
  end
  if (reset) begin
    enable_2 = 1'h1;
  end
  if (reset) begin
    global_interrupt_0 = 1'h0;
  end
  if (reset) begin
    global_interrupt_1 = 1'h0;
  end
  if (reset) begin
    global_interrupt_2 = 1'h0;
  end
  if (reset) begin
    accrued_0 = 1'h0;
  end
  if (reset) begin
    accrued_1 = 1'h0;
  end
  if (reset) begin
    accrued_2 = 1'h0;
  end
  if (reset) begin
    local_interrupt_0 = 1'h0;
  end
  if (reset) begin
    local_interrupt_1 = 1'h0;
  end
  if (reset) begin
    local_interrupt_2 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

