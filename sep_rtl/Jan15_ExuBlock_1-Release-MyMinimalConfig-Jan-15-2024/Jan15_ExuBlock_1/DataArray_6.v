module DataArray_6(
  input         clock,
  input  [7:0]  io_read_0_addr,
  output [63:0] io_read_0_data_0,
  output [63:0] io_read_0_data_1,
  output [63:0] io_read_0_data_2,
  input  [7:0]  io_read_1_addr,
  output [63:0] io_read_1_data_0,
  output [63:0] io_read_1_data_1,
  output [63:0] io_read_1_data_2,
  input         io_write_0_enable,
  input         io_write_0_mask_0,
  input         io_write_0_mask_1,
  input         io_write_0_mask_2,
  input  [7:0]  io_write_0_addr,
  input  [63:0] io_write_0_data_0,
  input  [63:0] io_write_0_data_1,
  input  [63:0] io_write_0_data_2,
  input         io_multiWrite_0_enable,
  input  [7:0]  io_multiWrite_0_addr_0,
  input  [7:0]  io_multiWrite_0_addr_1,
  input  [7:0]  io_multiWrite_0_addr_2,
  input  [63:0] io_multiWrite_0_data,
  input         io_multiWrite_1_enable,
  input  [7:0]  io_multiWrite_1_addr_0,
  input  [7:0]  io_multiWrite_1_addr_1,
  input  [7:0]  io_multiWrite_1_addr_2,
  input  [63:0] io_multiWrite_1_data,
  input         io_multiWrite_2_enable,
  input  [7:0]  io_multiWrite_2_addr_0,
  input  [7:0]  io_multiWrite_2_addr_1,
  input  [7:0]  io_multiWrite_2_addr_2,
  input  [63:0] io_multiWrite_2_data,
  input         io_multiWrite_3_enable,
  input  [7:0]  io_multiWrite_3_addr_0,
  input  [7:0]  io_multiWrite_3_addr_1,
  input  [7:0]  io_multiWrite_3_addr_2,
  input  [63:0] io_multiWrite_3_data,
  input         io_partialWrite_0_enable,
  input  [7:0]  io_partialWrite_0_addr,
  input  [63:0] io_partialWrite_0_data_0,
  input  [63:0] io_partialWrite_0_data_1
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  dataModule_clock; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_io_rvec_0; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_io_rvec_1; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_io_rdata_0; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_io_rdata_1; // @[DataArray.scala 76:28]
  wire  dataModule_io_wen_0; // @[DataArray.scala 76:28]
  wire  dataModule_io_wen_1; // @[DataArray.scala 76:28]
  wire  dataModule_io_wen_2; // @[DataArray.scala 76:28]
  wire  dataModule_io_wen_3; // @[DataArray.scala 76:28]
  wire  dataModule_io_wen_4; // @[DataArray.scala 76:28]
  wire  dataModule_io_wen_5; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_io_wvec_0; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_io_wvec_1; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_io_wvec_2; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_io_wvec_3; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_io_wvec_4; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_io_wvec_5; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_io_wdata_0; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_io_wdata_1; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_io_wdata_2; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_io_wdata_3; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_io_wdata_4; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_io_wdata_5; // @[DataArray.scala 76:28]
  wire  dataModule_1_clock; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_1_io_rvec_0; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_1_io_rvec_1; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_1_io_rdata_0; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_1_io_rdata_1; // @[DataArray.scala 76:28]
  wire  dataModule_1_io_wen_0; // @[DataArray.scala 76:28]
  wire  dataModule_1_io_wen_1; // @[DataArray.scala 76:28]
  wire  dataModule_1_io_wen_2; // @[DataArray.scala 76:28]
  wire  dataModule_1_io_wen_3; // @[DataArray.scala 76:28]
  wire  dataModule_1_io_wen_4; // @[DataArray.scala 76:28]
  wire  dataModule_1_io_wen_5; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_1_io_wvec_0; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_1_io_wvec_1; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_1_io_wvec_2; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_1_io_wvec_3; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_1_io_wvec_4; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_1_io_wvec_5; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_1_io_wdata_0; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_1_io_wdata_1; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_1_io_wdata_2; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_1_io_wdata_3; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_1_io_wdata_4; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_1_io_wdata_5; // @[DataArray.scala 76:28]
  wire  dataModule_2_clock; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_2_io_rvec_0; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_2_io_rvec_1; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_2_io_rdata_0; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_2_io_rdata_1; // @[DataArray.scala 76:28]
  wire  dataModule_2_io_wen_0; // @[DataArray.scala 76:28]
  wire  dataModule_2_io_wen_1; // @[DataArray.scala 76:28]
  wire  dataModule_2_io_wen_2; // @[DataArray.scala 76:28]
  wire  dataModule_2_io_wen_3; // @[DataArray.scala 76:28]
  wire  dataModule_2_io_wen_4; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_2_io_wvec_0; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_2_io_wvec_1; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_2_io_wvec_2; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_2_io_wvec_3; // @[DataArray.scala 76:28]
  wire [7:0] dataModule_2_io_wvec_4; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_2_io_wdata_0; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_2_io_wdata_1; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_2_io_wdata_2; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_2_io_wdata_3; // @[DataArray.scala 76:28]
  wire [63:0] dataModule_2_io_wdata_4; // @[DataArray.scala 76:28]
  reg  partialWen_0; // @[DataArray.scala 68:87]
  reg [7:0] partialWaddr_0; // @[Reg.scala 16:16]
  reg [63:0] partialWdata_0; // @[Reg.scala 16:16]
  wire [7:0] _addr_match_T = partialWaddr_0 & io_read_0_addr; // @[DataArray.scala 85:57]
  wire  addr_match_0 = |_addr_match_T; // @[DataArray.scala 85:74]
  wire  bypass_0 = partialWen_0 & addr_match_0; // @[DataArray.scala 86:63]
  wire [7:0] _addr_match_T_1 = partialWaddr_0 & io_read_1_addr; // @[DataArray.scala 85:57]
  wire  addr_match_0_1 = |_addr_match_T_1; // @[DataArray.scala 85:74]
  wire  bypass_0_1 = partialWen_0 & addr_match_0_1; // @[DataArray.scala 86:63]
  reg  partialWen_0_1; // @[DataArray.scala 68:87]
  reg [7:0] partialWaddr_0_1; // @[Reg.scala 16:16]
  reg [63:0] partialWdata_0_1; // @[Reg.scala 16:16]
  wire [7:0] _addr_match_T_2 = partialWaddr_0_1 & io_read_0_addr; // @[DataArray.scala 85:57]
  wire  addr_match_0_2 = |_addr_match_T_2; // @[DataArray.scala 85:74]
  wire  bypass_0_2 = partialWen_0_1 & addr_match_0_2; // @[DataArray.scala 86:63]
  wire [7:0] _addr_match_T_3 = partialWaddr_0_1 & io_read_1_addr; // @[DataArray.scala 85:57]
  wire  addr_match_0_3 = |_addr_match_T_3; // @[DataArray.scala 85:74]
  wire  bypass_0_3 = partialWen_0_1 & addr_match_0_3; // @[DataArray.scala 86:63]
  AsyncRawDataModuleTemplate_4 dataModule ( // @[DataArray.scala 76:28]
    .clock(dataModule_clock),
    .io_rvec_0(dataModule_io_rvec_0),
    .io_rvec_1(dataModule_io_rvec_1),
    .io_rdata_0(dataModule_io_rdata_0),
    .io_rdata_1(dataModule_io_rdata_1),
    .io_wen_0(dataModule_io_wen_0),
    .io_wen_1(dataModule_io_wen_1),
    .io_wen_2(dataModule_io_wen_2),
    .io_wen_3(dataModule_io_wen_3),
    .io_wen_4(dataModule_io_wen_4),
    .io_wen_5(dataModule_io_wen_5),
    .io_wvec_0(dataModule_io_wvec_0),
    .io_wvec_1(dataModule_io_wvec_1),
    .io_wvec_2(dataModule_io_wvec_2),
    .io_wvec_3(dataModule_io_wvec_3),
    .io_wvec_4(dataModule_io_wvec_4),
    .io_wvec_5(dataModule_io_wvec_5),
    .io_wdata_0(dataModule_io_wdata_0),
    .io_wdata_1(dataModule_io_wdata_1),
    .io_wdata_2(dataModule_io_wdata_2),
    .io_wdata_3(dataModule_io_wdata_3),
    .io_wdata_4(dataModule_io_wdata_4),
    .io_wdata_5(dataModule_io_wdata_5)
  );
  AsyncRawDataModuleTemplate_4 dataModule_1 ( // @[DataArray.scala 76:28]
    .clock(dataModule_1_clock),
    .io_rvec_0(dataModule_1_io_rvec_0),
    .io_rvec_1(dataModule_1_io_rvec_1),
    .io_rdata_0(dataModule_1_io_rdata_0),
    .io_rdata_1(dataModule_1_io_rdata_1),
    .io_wen_0(dataModule_1_io_wen_0),
    .io_wen_1(dataModule_1_io_wen_1),
    .io_wen_2(dataModule_1_io_wen_2),
    .io_wen_3(dataModule_1_io_wen_3),
    .io_wen_4(dataModule_1_io_wen_4),
    .io_wen_5(dataModule_1_io_wen_5),
    .io_wvec_0(dataModule_1_io_wvec_0),
    .io_wvec_1(dataModule_1_io_wvec_1),
    .io_wvec_2(dataModule_1_io_wvec_2),
    .io_wvec_3(dataModule_1_io_wvec_3),
    .io_wvec_4(dataModule_1_io_wvec_4),
    .io_wvec_5(dataModule_1_io_wvec_5),
    .io_wdata_0(dataModule_1_io_wdata_0),
    .io_wdata_1(dataModule_1_io_wdata_1),
    .io_wdata_2(dataModule_1_io_wdata_2),
    .io_wdata_3(dataModule_1_io_wdata_3),
    .io_wdata_4(dataModule_1_io_wdata_4),
    .io_wdata_5(dataModule_1_io_wdata_5)
  );
  AsyncRawDataModuleTemplate_11 dataModule_2 ( // @[DataArray.scala 76:28]
    .clock(dataModule_2_clock),
    .io_rvec_0(dataModule_2_io_rvec_0),
    .io_rvec_1(dataModule_2_io_rvec_1),
    .io_rdata_0(dataModule_2_io_rdata_0),
    .io_rdata_1(dataModule_2_io_rdata_1),
    .io_wen_0(dataModule_2_io_wen_0),
    .io_wen_1(dataModule_2_io_wen_1),
    .io_wen_2(dataModule_2_io_wen_2),
    .io_wen_3(dataModule_2_io_wen_3),
    .io_wen_4(dataModule_2_io_wen_4),
    .io_wvec_0(dataModule_2_io_wvec_0),
    .io_wvec_1(dataModule_2_io_wvec_1),
    .io_wvec_2(dataModule_2_io_wvec_2),
    .io_wvec_3(dataModule_2_io_wvec_3),
    .io_wvec_4(dataModule_2_io_wvec_4),
    .io_wdata_0(dataModule_2_io_wdata_0),
    .io_wdata_1(dataModule_2_io_wdata_1),
    .io_wdata_2(dataModule_2_io_wdata_2),
    .io_wdata_3(dataModule_2_io_wdata_3),
    .io_wdata_4(dataModule_2_io_wdata_4)
  );
  assign io_read_0_data_0 = |bypass_0 ? partialWdata_0 : dataModule_io_rdata_0; // @[DataArray.scala 87:43 88:21 78:79]
  assign io_read_0_data_1 = |bypass_0_2 ? partialWdata_0_1 : dataModule_1_io_rdata_0; // @[DataArray.scala 87:43 88:21 78:79]
  assign io_read_0_data_2 = dataModule_2_io_rdata_0; // @[DataArray.scala 78:79]
  assign io_read_1_data_0 = |bypass_0_1 ? partialWdata_0 : dataModule_io_rdata_1; // @[DataArray.scala 87:43 88:21 78:79]
  assign io_read_1_data_1 = |bypass_0_3 ? partialWdata_0_1 : dataModule_1_io_rdata_1; // @[DataArray.scala 87:43 88:21 78:79]
  assign io_read_1_data_2 = dataModule_2_io_rdata_1; // @[DataArray.scala 78:79]
  assign dataModule_clock = clock;
  assign dataModule_io_rvec_0 = io_read_0_addr; // @[DataArray.scala 77:{34,34}]
  assign dataModule_io_rvec_1 = io_read_1_addr; // @[DataArray.scala 77:{34,34}]
  assign dataModule_io_wen_0 = io_write_0_enable & io_write_0_mask_0; // @[DataArray.scala 72:42]
  assign dataModule_io_wen_1 = io_multiWrite_0_enable; // @[DataArray.scala 79:23]
  assign dataModule_io_wen_2 = io_multiWrite_1_enable; // @[DataArray.scala 79:23]
  assign dataModule_io_wen_3 = io_multiWrite_2_enable; // @[DataArray.scala 79:23]
  assign dataModule_io_wen_4 = io_multiWrite_3_enable; // @[DataArray.scala 79:23]
  assign dataModule_io_wen_5 = partialWen_0; // @[DataArray.scala 79:23]
  assign dataModule_io_wvec_0 = io_write_0_addr; // @[DataArray.scala 80:24]
  assign dataModule_io_wvec_1 = io_multiWrite_0_addr_0; // @[DataArray.scala 80:24]
  assign dataModule_io_wvec_2 = io_multiWrite_1_addr_0; // @[DataArray.scala 80:24]
  assign dataModule_io_wvec_3 = io_multiWrite_2_addr_0; // @[DataArray.scala 80:24]
  assign dataModule_io_wvec_4 = io_multiWrite_3_addr_0; // @[DataArray.scala 80:24]
  assign dataModule_io_wvec_5 = partialWaddr_0; // @[DataArray.scala 80:24]
  assign dataModule_io_wdata_0 = io_write_0_data_0; // @[DataArray.scala 81:25]
  assign dataModule_io_wdata_1 = io_multiWrite_0_data; // @[DataArray.scala 81:25]
  assign dataModule_io_wdata_2 = io_multiWrite_1_data; // @[DataArray.scala 81:25]
  assign dataModule_io_wdata_3 = io_multiWrite_2_data; // @[DataArray.scala 81:25]
  assign dataModule_io_wdata_4 = io_multiWrite_3_data; // @[DataArray.scala 81:25]
  assign dataModule_io_wdata_5 = partialWdata_0; // @[DataArray.scala 81:25]
  assign dataModule_1_clock = clock;
  assign dataModule_1_io_rvec_0 = io_read_0_addr; // @[DataArray.scala 77:{34,34}]
  assign dataModule_1_io_rvec_1 = io_read_1_addr; // @[DataArray.scala 77:{34,34}]
  assign dataModule_1_io_wen_0 = io_write_0_enable & io_write_0_mask_1; // @[DataArray.scala 72:42]
  assign dataModule_1_io_wen_1 = io_multiWrite_0_enable; // @[DataArray.scala 79:23]
  assign dataModule_1_io_wen_2 = io_multiWrite_1_enable; // @[DataArray.scala 79:23]
  assign dataModule_1_io_wen_3 = io_multiWrite_2_enable; // @[DataArray.scala 79:23]
  assign dataModule_1_io_wen_4 = io_multiWrite_3_enable; // @[DataArray.scala 79:23]
  assign dataModule_1_io_wen_5 = partialWen_0_1; // @[DataArray.scala 79:23]
  assign dataModule_1_io_wvec_0 = io_write_0_addr; // @[DataArray.scala 80:24]
  assign dataModule_1_io_wvec_1 = io_multiWrite_0_addr_1; // @[DataArray.scala 80:24]
  assign dataModule_1_io_wvec_2 = io_multiWrite_1_addr_1; // @[DataArray.scala 80:24]
  assign dataModule_1_io_wvec_3 = io_multiWrite_2_addr_1; // @[DataArray.scala 80:24]
  assign dataModule_1_io_wvec_4 = io_multiWrite_3_addr_1; // @[DataArray.scala 80:24]
  assign dataModule_1_io_wvec_5 = partialWaddr_0_1; // @[DataArray.scala 80:24]
  assign dataModule_1_io_wdata_0 = io_write_0_data_1; // @[DataArray.scala 81:25]
  assign dataModule_1_io_wdata_1 = io_multiWrite_0_data; // @[DataArray.scala 81:25]
  assign dataModule_1_io_wdata_2 = io_multiWrite_1_data; // @[DataArray.scala 81:25]
  assign dataModule_1_io_wdata_3 = io_multiWrite_2_data; // @[DataArray.scala 81:25]
  assign dataModule_1_io_wdata_4 = io_multiWrite_3_data; // @[DataArray.scala 81:25]
  assign dataModule_1_io_wdata_5 = partialWdata_0_1; // @[DataArray.scala 81:25]
  assign dataModule_2_clock = clock;
  assign dataModule_2_io_rvec_0 = io_read_0_addr; // @[DataArray.scala 77:{34,34}]
  assign dataModule_2_io_rvec_1 = io_read_1_addr; // @[DataArray.scala 77:{34,34}]
  assign dataModule_2_io_wen_0 = io_write_0_enable & io_write_0_mask_2; // @[DataArray.scala 72:42]
  assign dataModule_2_io_wen_1 = io_multiWrite_0_enable; // @[DataArray.scala 79:23]
  assign dataModule_2_io_wen_2 = io_multiWrite_1_enable; // @[DataArray.scala 79:23]
  assign dataModule_2_io_wen_3 = io_multiWrite_2_enable; // @[DataArray.scala 79:23]
  assign dataModule_2_io_wen_4 = io_multiWrite_3_enable; // @[DataArray.scala 79:23]
  assign dataModule_2_io_wvec_0 = io_write_0_addr; // @[DataArray.scala 80:24]
  assign dataModule_2_io_wvec_1 = io_multiWrite_0_addr_2; // @[DataArray.scala 80:24]
  assign dataModule_2_io_wvec_2 = io_multiWrite_1_addr_2; // @[DataArray.scala 80:24]
  assign dataModule_2_io_wvec_3 = io_multiWrite_2_addr_2; // @[DataArray.scala 80:24]
  assign dataModule_2_io_wvec_4 = io_multiWrite_3_addr_2; // @[DataArray.scala 80:24]
  assign dataModule_2_io_wdata_0 = io_write_0_data_2; // @[DataArray.scala 81:25]
  assign dataModule_2_io_wdata_1 = io_multiWrite_0_data; // @[DataArray.scala 81:25]
  assign dataModule_2_io_wdata_2 = io_multiWrite_1_data; // @[DataArray.scala 81:25]
  assign dataModule_2_io_wdata_3 = io_multiWrite_2_data; // @[DataArray.scala 81:25]
  assign dataModule_2_io_wdata_4 = io_multiWrite_3_data; // @[DataArray.scala 81:25]
  always @(posedge clock) begin
    partialWen_0 <= io_partialWrite_0_enable; // @[DataArray.scala 68:87]
    if (io_partialWrite_0_enable) begin // @[Reg.scala 17:18]
      partialWaddr_0 <= io_partialWrite_0_addr; // @[Reg.scala 17:22]
    end
    if (io_partialWrite_0_enable) begin // @[Reg.scala 17:18]
      partialWdata_0 <= io_partialWrite_0_data_0; // @[Reg.scala 17:22]
    end
    partialWen_0_1 <= io_partialWrite_0_enable; // @[DataArray.scala 68:87]
    if (io_partialWrite_0_enable) begin // @[Reg.scala 17:18]
      partialWaddr_0_1 <= io_partialWrite_0_addr; // @[Reg.scala 17:22]
    end
    if (io_partialWrite_0_enable) begin // @[Reg.scala 17:18]
      partialWdata_0_1 <= io_partialWrite_0_data_1; // @[Reg.scala 17:22]
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
  partialWen_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  partialWaddr_0 = _RAND_1[7:0];
  _RAND_2 = {2{`RANDOM}};
  partialWdata_0 = _RAND_2[63:0];
  _RAND_3 = {1{`RANDOM}};
  partialWen_0_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  partialWaddr_0_1 = _RAND_4[7:0];
  _RAND_5 = {2{`RANDOM}};
  partialWdata_0_1 = _RAND_5[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

