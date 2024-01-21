module SQDataModule(
  input          clock,
  input  [3:0]   io_raddr_0,
  input  [3:0]   io_raddr_1,
  output [15:0]  io_rdata_0_mask,
  output [127:0] io_rdata_0_data,
  output [15:0]  io_rdata_1_mask,
  output [127:0] io_rdata_1_data,
  input          io_data_wen_0,
  input          io_data_wen_1,
  input  [3:0]   io_data_waddr_0,
  input  [3:0]   io_data_waddr_1,
  input  [127:0] io_data_wdata_0,
  input  [127:0] io_data_wdata_1,
  input          io_mask_wen_0,
  input          io_mask_wen_1,
  input  [3:0]   io_mask_waddr_0,
  input  [3:0]   io_mask_waddr_1,
  input  [15:0]  io_mask_wdata_0,
  input  [15:0]  io_mask_wdata_1,
  input  [11:0]  io_needForward_0_0,
  input  [11:0]  io_needForward_0_1,
  input  [11:0]  io_needForward_1_0,
  input  [11:0]  io_needForward_1_1,
  output         io_forwardMask_0_0,
  output         io_forwardMask_0_1,
  output         io_forwardMask_0_2,
  output         io_forwardMask_0_3,
  output         io_forwardMask_0_4,
  output         io_forwardMask_0_5,
  output         io_forwardMask_0_6,
  output         io_forwardMask_0_7,
  output         io_forwardMask_0_8,
  output         io_forwardMask_0_9,
  output         io_forwardMask_0_10,
  output         io_forwardMask_0_11,
  output         io_forwardMask_0_12,
  output         io_forwardMask_0_13,
  output         io_forwardMask_0_14,
  output         io_forwardMask_0_15,
  output         io_forwardMask_1_0,
  output         io_forwardMask_1_1,
  output         io_forwardMask_1_2,
  output         io_forwardMask_1_3,
  output         io_forwardMask_1_4,
  output         io_forwardMask_1_5,
  output         io_forwardMask_1_6,
  output         io_forwardMask_1_7,
  output         io_forwardMask_1_8,
  output         io_forwardMask_1_9,
  output         io_forwardMask_1_10,
  output         io_forwardMask_1_11,
  output         io_forwardMask_1_12,
  output         io_forwardMask_1_13,
  output         io_forwardMask_1_14,
  output         io_forwardMask_1_15,
  output [7:0]   io_forwardData_0_0,
  output [7:0]   io_forwardData_0_1,
  output [7:0]   io_forwardData_0_2,
  output [7:0]   io_forwardData_0_3,
  output [7:0]   io_forwardData_0_4,
  output [7:0]   io_forwardData_0_5,
  output [7:0]   io_forwardData_0_6,
  output [7:0]   io_forwardData_0_7,
  output [7:0]   io_forwardData_0_8,
  output [7:0]   io_forwardData_0_9,
  output [7:0]   io_forwardData_0_10,
  output [7:0]   io_forwardData_0_11,
  output [7:0]   io_forwardData_0_12,
  output [7:0]   io_forwardData_0_13,
  output [7:0]   io_forwardData_0_14,
  output [7:0]   io_forwardData_0_15,
  output [7:0]   io_forwardData_1_0,
  output [7:0]   io_forwardData_1_1,
  output [7:0]   io_forwardData_1_2,
  output [7:0]   io_forwardData_1_3,
  output [7:0]   io_forwardData_1_4,
  output [7:0]   io_forwardData_1_5,
  output [7:0]   io_forwardData_1_6,
  output [7:0]   io_forwardData_1_7,
  output [7:0]   io_forwardData_1_8,
  output [7:0]   io_forwardData_1_9,
  output [7:0]   io_forwardData_1_10,
  output [7:0]   io_forwardData_1_11,
  output [7:0]   io_forwardData_1_12,
  output [7:0]   io_forwardData_1_13,
  output [7:0]   io_forwardData_1_14,
  output [7:0]   io_forwardData_1_15
);
  wire  data16_0_clock; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_0_io_raddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_0_io_raddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_0_io_rdata_0_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_0_io_rdata_0_data; // @[StoreQueueData.scala 293:35]
  wire  data16_0_io_rdata_1_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_0_io_rdata_1_data; // @[StoreQueueData.scala 293:35]
  wire  data16_0_io_data_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_0_io_data_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_0_io_data_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_0_io_data_waddr_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_0_io_data_wdata_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_0_io_data_wdata_1; // @[StoreQueueData.scala 293:35]
  wire  data16_0_io_mask_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_0_io_mask_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_0_io_mask_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_0_io_mask_waddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_0_io_mask_wdata_0; // @[StoreQueueData.scala 293:35]
  wire  data16_0_io_mask_wdata_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_0_io_needForward_0_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_0_io_needForward_0_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_0_io_needForward_1_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_0_io_needForward_1_1; // @[StoreQueueData.scala 293:35]
  wire  data16_0_io_forwardValid_0; // @[StoreQueueData.scala 293:35]
  wire  data16_0_io_forwardValid_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_0_io_forwardData_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_0_io_forwardData_1; // @[StoreQueueData.scala 293:35]
  wire  data16_1_clock; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_1_io_raddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_1_io_raddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_1_io_rdata_0_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_1_io_rdata_0_data; // @[StoreQueueData.scala 293:35]
  wire  data16_1_io_rdata_1_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_1_io_rdata_1_data; // @[StoreQueueData.scala 293:35]
  wire  data16_1_io_data_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_1_io_data_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_1_io_data_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_1_io_data_waddr_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_1_io_data_wdata_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_1_io_data_wdata_1; // @[StoreQueueData.scala 293:35]
  wire  data16_1_io_mask_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_1_io_mask_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_1_io_mask_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_1_io_mask_waddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_1_io_mask_wdata_0; // @[StoreQueueData.scala 293:35]
  wire  data16_1_io_mask_wdata_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_1_io_needForward_0_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_1_io_needForward_0_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_1_io_needForward_1_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_1_io_needForward_1_1; // @[StoreQueueData.scala 293:35]
  wire  data16_1_io_forwardValid_0; // @[StoreQueueData.scala 293:35]
  wire  data16_1_io_forwardValid_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_1_io_forwardData_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_1_io_forwardData_1; // @[StoreQueueData.scala 293:35]
  wire  data16_2_clock; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_2_io_raddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_2_io_raddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_2_io_rdata_0_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_2_io_rdata_0_data; // @[StoreQueueData.scala 293:35]
  wire  data16_2_io_rdata_1_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_2_io_rdata_1_data; // @[StoreQueueData.scala 293:35]
  wire  data16_2_io_data_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_2_io_data_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_2_io_data_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_2_io_data_waddr_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_2_io_data_wdata_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_2_io_data_wdata_1; // @[StoreQueueData.scala 293:35]
  wire  data16_2_io_mask_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_2_io_mask_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_2_io_mask_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_2_io_mask_waddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_2_io_mask_wdata_0; // @[StoreQueueData.scala 293:35]
  wire  data16_2_io_mask_wdata_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_2_io_needForward_0_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_2_io_needForward_0_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_2_io_needForward_1_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_2_io_needForward_1_1; // @[StoreQueueData.scala 293:35]
  wire  data16_2_io_forwardValid_0; // @[StoreQueueData.scala 293:35]
  wire  data16_2_io_forwardValid_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_2_io_forwardData_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_2_io_forwardData_1; // @[StoreQueueData.scala 293:35]
  wire  data16_3_clock; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_3_io_raddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_3_io_raddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_3_io_rdata_0_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_3_io_rdata_0_data; // @[StoreQueueData.scala 293:35]
  wire  data16_3_io_rdata_1_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_3_io_rdata_1_data; // @[StoreQueueData.scala 293:35]
  wire  data16_3_io_data_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_3_io_data_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_3_io_data_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_3_io_data_waddr_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_3_io_data_wdata_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_3_io_data_wdata_1; // @[StoreQueueData.scala 293:35]
  wire  data16_3_io_mask_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_3_io_mask_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_3_io_mask_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_3_io_mask_waddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_3_io_mask_wdata_0; // @[StoreQueueData.scala 293:35]
  wire  data16_3_io_mask_wdata_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_3_io_needForward_0_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_3_io_needForward_0_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_3_io_needForward_1_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_3_io_needForward_1_1; // @[StoreQueueData.scala 293:35]
  wire  data16_3_io_forwardValid_0; // @[StoreQueueData.scala 293:35]
  wire  data16_3_io_forwardValid_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_3_io_forwardData_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_3_io_forwardData_1; // @[StoreQueueData.scala 293:35]
  wire  data16_4_clock; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_4_io_raddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_4_io_raddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_4_io_rdata_0_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_4_io_rdata_0_data; // @[StoreQueueData.scala 293:35]
  wire  data16_4_io_rdata_1_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_4_io_rdata_1_data; // @[StoreQueueData.scala 293:35]
  wire  data16_4_io_data_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_4_io_data_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_4_io_data_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_4_io_data_waddr_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_4_io_data_wdata_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_4_io_data_wdata_1; // @[StoreQueueData.scala 293:35]
  wire  data16_4_io_mask_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_4_io_mask_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_4_io_mask_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_4_io_mask_waddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_4_io_mask_wdata_0; // @[StoreQueueData.scala 293:35]
  wire  data16_4_io_mask_wdata_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_4_io_needForward_0_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_4_io_needForward_0_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_4_io_needForward_1_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_4_io_needForward_1_1; // @[StoreQueueData.scala 293:35]
  wire  data16_4_io_forwardValid_0; // @[StoreQueueData.scala 293:35]
  wire  data16_4_io_forwardValid_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_4_io_forwardData_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_4_io_forwardData_1; // @[StoreQueueData.scala 293:35]
  wire  data16_5_clock; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_5_io_raddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_5_io_raddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_5_io_rdata_0_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_5_io_rdata_0_data; // @[StoreQueueData.scala 293:35]
  wire  data16_5_io_rdata_1_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_5_io_rdata_1_data; // @[StoreQueueData.scala 293:35]
  wire  data16_5_io_data_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_5_io_data_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_5_io_data_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_5_io_data_waddr_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_5_io_data_wdata_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_5_io_data_wdata_1; // @[StoreQueueData.scala 293:35]
  wire  data16_5_io_mask_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_5_io_mask_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_5_io_mask_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_5_io_mask_waddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_5_io_mask_wdata_0; // @[StoreQueueData.scala 293:35]
  wire  data16_5_io_mask_wdata_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_5_io_needForward_0_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_5_io_needForward_0_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_5_io_needForward_1_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_5_io_needForward_1_1; // @[StoreQueueData.scala 293:35]
  wire  data16_5_io_forwardValid_0; // @[StoreQueueData.scala 293:35]
  wire  data16_5_io_forwardValid_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_5_io_forwardData_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_5_io_forwardData_1; // @[StoreQueueData.scala 293:35]
  wire  data16_6_clock; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_6_io_raddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_6_io_raddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_6_io_rdata_0_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_6_io_rdata_0_data; // @[StoreQueueData.scala 293:35]
  wire  data16_6_io_rdata_1_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_6_io_rdata_1_data; // @[StoreQueueData.scala 293:35]
  wire  data16_6_io_data_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_6_io_data_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_6_io_data_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_6_io_data_waddr_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_6_io_data_wdata_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_6_io_data_wdata_1; // @[StoreQueueData.scala 293:35]
  wire  data16_6_io_mask_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_6_io_mask_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_6_io_mask_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_6_io_mask_waddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_6_io_mask_wdata_0; // @[StoreQueueData.scala 293:35]
  wire  data16_6_io_mask_wdata_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_6_io_needForward_0_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_6_io_needForward_0_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_6_io_needForward_1_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_6_io_needForward_1_1; // @[StoreQueueData.scala 293:35]
  wire  data16_6_io_forwardValid_0; // @[StoreQueueData.scala 293:35]
  wire  data16_6_io_forwardValid_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_6_io_forwardData_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_6_io_forwardData_1; // @[StoreQueueData.scala 293:35]
  wire  data16_7_clock; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_7_io_raddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_7_io_raddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_7_io_rdata_0_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_7_io_rdata_0_data; // @[StoreQueueData.scala 293:35]
  wire  data16_7_io_rdata_1_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_7_io_rdata_1_data; // @[StoreQueueData.scala 293:35]
  wire  data16_7_io_data_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_7_io_data_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_7_io_data_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_7_io_data_waddr_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_7_io_data_wdata_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_7_io_data_wdata_1; // @[StoreQueueData.scala 293:35]
  wire  data16_7_io_mask_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_7_io_mask_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_7_io_mask_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_7_io_mask_waddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_7_io_mask_wdata_0; // @[StoreQueueData.scala 293:35]
  wire  data16_7_io_mask_wdata_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_7_io_needForward_0_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_7_io_needForward_0_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_7_io_needForward_1_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_7_io_needForward_1_1; // @[StoreQueueData.scala 293:35]
  wire  data16_7_io_forwardValid_0; // @[StoreQueueData.scala 293:35]
  wire  data16_7_io_forwardValid_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_7_io_forwardData_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_7_io_forwardData_1; // @[StoreQueueData.scala 293:35]
  wire  data16_8_clock; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_8_io_raddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_8_io_raddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_8_io_rdata_0_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_8_io_rdata_0_data; // @[StoreQueueData.scala 293:35]
  wire  data16_8_io_rdata_1_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_8_io_rdata_1_data; // @[StoreQueueData.scala 293:35]
  wire  data16_8_io_data_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_8_io_data_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_8_io_data_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_8_io_data_waddr_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_8_io_data_wdata_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_8_io_data_wdata_1; // @[StoreQueueData.scala 293:35]
  wire  data16_8_io_mask_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_8_io_mask_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_8_io_mask_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_8_io_mask_waddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_8_io_mask_wdata_0; // @[StoreQueueData.scala 293:35]
  wire  data16_8_io_mask_wdata_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_8_io_needForward_0_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_8_io_needForward_0_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_8_io_needForward_1_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_8_io_needForward_1_1; // @[StoreQueueData.scala 293:35]
  wire  data16_8_io_forwardValid_0; // @[StoreQueueData.scala 293:35]
  wire  data16_8_io_forwardValid_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_8_io_forwardData_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_8_io_forwardData_1; // @[StoreQueueData.scala 293:35]
  wire  data16_9_clock; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_9_io_raddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_9_io_raddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_9_io_rdata_0_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_9_io_rdata_0_data; // @[StoreQueueData.scala 293:35]
  wire  data16_9_io_rdata_1_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_9_io_rdata_1_data; // @[StoreQueueData.scala 293:35]
  wire  data16_9_io_data_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_9_io_data_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_9_io_data_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_9_io_data_waddr_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_9_io_data_wdata_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_9_io_data_wdata_1; // @[StoreQueueData.scala 293:35]
  wire  data16_9_io_mask_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_9_io_mask_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_9_io_mask_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_9_io_mask_waddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_9_io_mask_wdata_0; // @[StoreQueueData.scala 293:35]
  wire  data16_9_io_mask_wdata_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_9_io_needForward_0_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_9_io_needForward_0_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_9_io_needForward_1_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_9_io_needForward_1_1; // @[StoreQueueData.scala 293:35]
  wire  data16_9_io_forwardValid_0; // @[StoreQueueData.scala 293:35]
  wire  data16_9_io_forwardValid_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_9_io_forwardData_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_9_io_forwardData_1; // @[StoreQueueData.scala 293:35]
  wire  data16_10_clock; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_10_io_raddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_10_io_raddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_10_io_rdata_0_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_10_io_rdata_0_data; // @[StoreQueueData.scala 293:35]
  wire  data16_10_io_rdata_1_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_10_io_rdata_1_data; // @[StoreQueueData.scala 293:35]
  wire  data16_10_io_data_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_10_io_data_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_10_io_data_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_10_io_data_waddr_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_10_io_data_wdata_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_10_io_data_wdata_1; // @[StoreQueueData.scala 293:35]
  wire  data16_10_io_mask_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_10_io_mask_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_10_io_mask_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_10_io_mask_waddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_10_io_mask_wdata_0; // @[StoreQueueData.scala 293:35]
  wire  data16_10_io_mask_wdata_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_10_io_needForward_0_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_10_io_needForward_0_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_10_io_needForward_1_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_10_io_needForward_1_1; // @[StoreQueueData.scala 293:35]
  wire  data16_10_io_forwardValid_0; // @[StoreQueueData.scala 293:35]
  wire  data16_10_io_forwardValid_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_10_io_forwardData_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_10_io_forwardData_1; // @[StoreQueueData.scala 293:35]
  wire  data16_11_clock; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_11_io_raddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_11_io_raddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_11_io_rdata_0_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_11_io_rdata_0_data; // @[StoreQueueData.scala 293:35]
  wire  data16_11_io_rdata_1_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_11_io_rdata_1_data; // @[StoreQueueData.scala 293:35]
  wire  data16_11_io_data_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_11_io_data_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_11_io_data_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_11_io_data_waddr_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_11_io_data_wdata_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_11_io_data_wdata_1; // @[StoreQueueData.scala 293:35]
  wire  data16_11_io_mask_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_11_io_mask_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_11_io_mask_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_11_io_mask_waddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_11_io_mask_wdata_0; // @[StoreQueueData.scala 293:35]
  wire  data16_11_io_mask_wdata_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_11_io_needForward_0_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_11_io_needForward_0_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_11_io_needForward_1_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_11_io_needForward_1_1; // @[StoreQueueData.scala 293:35]
  wire  data16_11_io_forwardValid_0; // @[StoreQueueData.scala 293:35]
  wire  data16_11_io_forwardValid_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_11_io_forwardData_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_11_io_forwardData_1; // @[StoreQueueData.scala 293:35]
  wire  data16_12_clock; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_12_io_raddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_12_io_raddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_12_io_rdata_0_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_12_io_rdata_0_data; // @[StoreQueueData.scala 293:35]
  wire  data16_12_io_rdata_1_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_12_io_rdata_1_data; // @[StoreQueueData.scala 293:35]
  wire  data16_12_io_data_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_12_io_data_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_12_io_data_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_12_io_data_waddr_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_12_io_data_wdata_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_12_io_data_wdata_1; // @[StoreQueueData.scala 293:35]
  wire  data16_12_io_mask_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_12_io_mask_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_12_io_mask_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_12_io_mask_waddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_12_io_mask_wdata_0; // @[StoreQueueData.scala 293:35]
  wire  data16_12_io_mask_wdata_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_12_io_needForward_0_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_12_io_needForward_0_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_12_io_needForward_1_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_12_io_needForward_1_1; // @[StoreQueueData.scala 293:35]
  wire  data16_12_io_forwardValid_0; // @[StoreQueueData.scala 293:35]
  wire  data16_12_io_forwardValid_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_12_io_forwardData_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_12_io_forwardData_1; // @[StoreQueueData.scala 293:35]
  wire  data16_13_clock; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_13_io_raddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_13_io_raddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_13_io_rdata_0_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_13_io_rdata_0_data; // @[StoreQueueData.scala 293:35]
  wire  data16_13_io_rdata_1_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_13_io_rdata_1_data; // @[StoreQueueData.scala 293:35]
  wire  data16_13_io_data_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_13_io_data_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_13_io_data_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_13_io_data_waddr_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_13_io_data_wdata_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_13_io_data_wdata_1; // @[StoreQueueData.scala 293:35]
  wire  data16_13_io_mask_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_13_io_mask_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_13_io_mask_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_13_io_mask_waddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_13_io_mask_wdata_0; // @[StoreQueueData.scala 293:35]
  wire  data16_13_io_mask_wdata_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_13_io_needForward_0_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_13_io_needForward_0_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_13_io_needForward_1_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_13_io_needForward_1_1; // @[StoreQueueData.scala 293:35]
  wire  data16_13_io_forwardValid_0; // @[StoreQueueData.scala 293:35]
  wire  data16_13_io_forwardValid_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_13_io_forwardData_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_13_io_forwardData_1; // @[StoreQueueData.scala 293:35]
  wire  data16_14_clock; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_14_io_raddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_14_io_raddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_14_io_rdata_0_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_14_io_rdata_0_data; // @[StoreQueueData.scala 293:35]
  wire  data16_14_io_rdata_1_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_14_io_rdata_1_data; // @[StoreQueueData.scala 293:35]
  wire  data16_14_io_data_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_14_io_data_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_14_io_data_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_14_io_data_waddr_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_14_io_data_wdata_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_14_io_data_wdata_1; // @[StoreQueueData.scala 293:35]
  wire  data16_14_io_mask_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_14_io_mask_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_14_io_mask_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_14_io_mask_waddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_14_io_mask_wdata_0; // @[StoreQueueData.scala 293:35]
  wire  data16_14_io_mask_wdata_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_14_io_needForward_0_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_14_io_needForward_0_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_14_io_needForward_1_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_14_io_needForward_1_1; // @[StoreQueueData.scala 293:35]
  wire  data16_14_io_forwardValid_0; // @[StoreQueueData.scala 293:35]
  wire  data16_14_io_forwardValid_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_14_io_forwardData_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_14_io_forwardData_1; // @[StoreQueueData.scala 293:35]
  wire  data16_15_clock; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_15_io_raddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_15_io_raddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_15_io_rdata_0_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_15_io_rdata_0_data; // @[StoreQueueData.scala 293:35]
  wire  data16_15_io_rdata_1_valid; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_15_io_rdata_1_data; // @[StoreQueueData.scala 293:35]
  wire  data16_15_io_data_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_15_io_data_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_15_io_data_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_15_io_data_waddr_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_15_io_data_wdata_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_15_io_data_wdata_1; // @[StoreQueueData.scala 293:35]
  wire  data16_15_io_mask_wen_0; // @[StoreQueueData.scala 293:35]
  wire  data16_15_io_mask_wen_1; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_15_io_mask_waddr_0; // @[StoreQueueData.scala 293:35]
  wire [3:0] data16_15_io_mask_waddr_1; // @[StoreQueueData.scala 293:35]
  wire  data16_15_io_mask_wdata_0; // @[StoreQueueData.scala 293:35]
  wire  data16_15_io_mask_wdata_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_15_io_needForward_0_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_15_io_needForward_0_1; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_15_io_needForward_1_0; // @[StoreQueueData.scala 293:35]
  wire [11:0] data16_15_io_needForward_1_1; // @[StoreQueueData.scala 293:35]
  wire  data16_15_io_forwardValid_0; // @[StoreQueueData.scala 293:35]
  wire  data16_15_io_forwardValid_1; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_15_io_forwardData_0; // @[StoreQueueData.scala 293:35]
  wire [7:0] data16_15_io_forwardData_1; // @[StoreQueueData.scala 293:35]
  wire  _io_rdata_0_mask_WIRE_1 = data16_1_io_rdata_0_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_0_mask_WIRE_0 = data16_0_io_rdata_0_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_0_mask_WIRE_3 = data16_3_io_rdata_0_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_0_mask_WIRE_2 = data16_2_io_rdata_0_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_0_mask_WIRE_5 = data16_5_io_rdata_0_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_0_mask_WIRE_4 = data16_4_io_rdata_0_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_0_mask_WIRE_7 = data16_7_io_rdata_0_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_0_mask_WIRE_6 = data16_6_io_rdata_0_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire [7:0] io_rdata_0_mask_lo = {_io_rdata_0_mask_WIRE_7,_io_rdata_0_mask_WIRE_6,_io_rdata_0_mask_WIRE_5,
    _io_rdata_0_mask_WIRE_4,_io_rdata_0_mask_WIRE_3,_io_rdata_0_mask_WIRE_2,_io_rdata_0_mask_WIRE_1,
    _io_rdata_0_mask_WIRE_0}; // @[StoreQueueData.scala 313:85]
  wire  _io_rdata_0_mask_WIRE_9 = data16_9_io_rdata_0_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_0_mask_WIRE_8 = data16_8_io_rdata_0_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_0_mask_WIRE_11 = data16_11_io_rdata_0_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_0_mask_WIRE_10 = data16_10_io_rdata_0_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_0_mask_WIRE_13 = data16_13_io_rdata_0_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_0_mask_WIRE_12 = data16_12_io_rdata_0_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_0_mask_WIRE_15 = data16_15_io_rdata_0_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_0_mask_WIRE_14 = data16_14_io_rdata_0_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire [7:0] io_rdata_0_mask_hi = {_io_rdata_0_mask_WIRE_15,_io_rdata_0_mask_WIRE_14,_io_rdata_0_mask_WIRE_13,
    _io_rdata_0_mask_WIRE_12,_io_rdata_0_mask_WIRE_11,_io_rdata_0_mask_WIRE_10,_io_rdata_0_mask_WIRE_9,
    _io_rdata_0_mask_WIRE_8}; // @[StoreQueueData.scala 313:85]
  wire [7:0] _io_rdata_0_data_WIRE_1 = data16_1_io_rdata_0_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_0 = data16_0_io_rdata_0_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_3 = data16_3_io_rdata_0_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_2 = data16_2_io_rdata_0_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_5 = data16_5_io_rdata_0_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_4 = data16_4_io_rdata_0_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_7 = data16_7_io_rdata_0_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_6 = data16_6_io_rdata_0_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [63:0] io_rdata_0_data_lo = {_io_rdata_0_data_WIRE_7,_io_rdata_0_data_WIRE_6,_io_rdata_0_data_WIRE_5,
    _io_rdata_0_data_WIRE_4,_io_rdata_0_data_WIRE_3,_io_rdata_0_data_WIRE_2,_io_rdata_0_data_WIRE_1,
    _io_rdata_0_data_WIRE_0}; // @[StoreQueueData.scala 314:84]
  wire [7:0] _io_rdata_0_data_WIRE_9 = data16_9_io_rdata_0_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_8 = data16_8_io_rdata_0_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_11 = data16_11_io_rdata_0_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_10 = data16_10_io_rdata_0_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_13 = data16_13_io_rdata_0_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_12 = data16_12_io_rdata_0_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_15 = data16_15_io_rdata_0_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_0_data_WIRE_14 = data16_14_io_rdata_0_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [63:0] io_rdata_0_data_hi = {_io_rdata_0_data_WIRE_15,_io_rdata_0_data_WIRE_14,_io_rdata_0_data_WIRE_13,
    _io_rdata_0_data_WIRE_12,_io_rdata_0_data_WIRE_11,_io_rdata_0_data_WIRE_10,_io_rdata_0_data_WIRE_9,
    _io_rdata_0_data_WIRE_8}; // @[StoreQueueData.scala 314:84]
  wire  _io_rdata_1_mask_WIRE_1 = data16_1_io_rdata_1_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_1_mask_WIRE_0 = data16_0_io_rdata_1_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_1_mask_WIRE_3 = data16_3_io_rdata_1_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_1_mask_WIRE_2 = data16_2_io_rdata_1_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_1_mask_WIRE_5 = data16_5_io_rdata_1_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_1_mask_WIRE_4 = data16_4_io_rdata_1_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_1_mask_WIRE_7 = data16_7_io_rdata_1_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_1_mask_WIRE_6 = data16_6_io_rdata_1_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire [7:0] io_rdata_1_mask_lo = {_io_rdata_1_mask_WIRE_7,_io_rdata_1_mask_WIRE_6,_io_rdata_1_mask_WIRE_5,
    _io_rdata_1_mask_WIRE_4,_io_rdata_1_mask_WIRE_3,_io_rdata_1_mask_WIRE_2,_io_rdata_1_mask_WIRE_1,
    _io_rdata_1_mask_WIRE_0}; // @[StoreQueueData.scala 313:85]
  wire  _io_rdata_1_mask_WIRE_9 = data16_9_io_rdata_1_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_1_mask_WIRE_8 = data16_8_io_rdata_1_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_1_mask_WIRE_11 = data16_11_io_rdata_1_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_1_mask_WIRE_10 = data16_10_io_rdata_1_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_1_mask_WIRE_13 = data16_13_io_rdata_1_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_1_mask_WIRE_12 = data16_12_io_rdata_1_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_1_mask_WIRE_15 = data16_15_io_rdata_1_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire  _io_rdata_1_mask_WIRE_14 = data16_14_io_rdata_1_valid; // @[StoreQueueData.scala 313:{32,32}]
  wire [7:0] io_rdata_1_mask_hi = {_io_rdata_1_mask_WIRE_15,_io_rdata_1_mask_WIRE_14,_io_rdata_1_mask_WIRE_13,
    _io_rdata_1_mask_WIRE_12,_io_rdata_1_mask_WIRE_11,_io_rdata_1_mask_WIRE_10,_io_rdata_1_mask_WIRE_9,
    _io_rdata_1_mask_WIRE_8}; // @[StoreQueueData.scala 313:85]
  wire [7:0] _io_rdata_1_data_WIRE_1 = data16_1_io_rdata_1_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_0 = data16_0_io_rdata_1_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_3 = data16_3_io_rdata_1_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_2 = data16_2_io_rdata_1_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_5 = data16_5_io_rdata_1_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_4 = data16_4_io_rdata_1_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_7 = data16_7_io_rdata_1_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_6 = data16_6_io_rdata_1_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [63:0] io_rdata_1_data_lo = {_io_rdata_1_data_WIRE_7,_io_rdata_1_data_WIRE_6,_io_rdata_1_data_WIRE_5,
    _io_rdata_1_data_WIRE_4,_io_rdata_1_data_WIRE_3,_io_rdata_1_data_WIRE_2,_io_rdata_1_data_WIRE_1,
    _io_rdata_1_data_WIRE_0}; // @[StoreQueueData.scala 314:84]
  wire [7:0] _io_rdata_1_data_WIRE_9 = data16_9_io_rdata_1_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_8 = data16_8_io_rdata_1_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_11 = data16_11_io_rdata_1_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_10 = data16_10_io_rdata_1_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_13 = data16_13_io_rdata_1_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_12 = data16_12_io_rdata_1_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_15 = data16_15_io_rdata_1_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [7:0] _io_rdata_1_data_WIRE_14 = data16_14_io_rdata_1_data; // @[StoreQueueData.scala 314:{32,32}]
  wire [63:0] io_rdata_1_data_hi = {_io_rdata_1_data_WIRE_15,_io_rdata_1_data_WIRE_14,_io_rdata_1_data_WIRE_13,
    _io_rdata_1_data_WIRE_12,_io_rdata_1_data_WIRE_11,_io_rdata_1_data_WIRE_10,_io_rdata_1_data_WIRE_9,
    _io_rdata_1_data_WIRE_8}; // @[StoreQueueData.scala 314:84]
  SQData8Module data16_0 ( // @[StoreQueueData.scala 293:35]
    .clock(data16_0_clock),
    .io_raddr_0(data16_0_io_raddr_0),
    .io_raddr_1(data16_0_io_raddr_1),
    .io_rdata_0_valid(data16_0_io_rdata_0_valid),
    .io_rdata_0_data(data16_0_io_rdata_0_data),
    .io_rdata_1_valid(data16_0_io_rdata_1_valid),
    .io_rdata_1_data(data16_0_io_rdata_1_data),
    .io_data_wen_0(data16_0_io_data_wen_0),
    .io_data_wen_1(data16_0_io_data_wen_1),
    .io_data_waddr_0(data16_0_io_data_waddr_0),
    .io_data_waddr_1(data16_0_io_data_waddr_1),
    .io_data_wdata_0(data16_0_io_data_wdata_0),
    .io_data_wdata_1(data16_0_io_data_wdata_1),
    .io_mask_wen_0(data16_0_io_mask_wen_0),
    .io_mask_wen_1(data16_0_io_mask_wen_1),
    .io_mask_waddr_0(data16_0_io_mask_waddr_0),
    .io_mask_waddr_1(data16_0_io_mask_waddr_1),
    .io_mask_wdata_0(data16_0_io_mask_wdata_0),
    .io_mask_wdata_1(data16_0_io_mask_wdata_1),
    .io_needForward_0_0(data16_0_io_needForward_0_0),
    .io_needForward_0_1(data16_0_io_needForward_0_1),
    .io_needForward_1_0(data16_0_io_needForward_1_0),
    .io_needForward_1_1(data16_0_io_needForward_1_1),
    .io_forwardValid_0(data16_0_io_forwardValid_0),
    .io_forwardValid_1(data16_0_io_forwardValid_1),
    .io_forwardData_0(data16_0_io_forwardData_0),
    .io_forwardData_1(data16_0_io_forwardData_1)
  );
  SQData8Module data16_1 ( // @[StoreQueueData.scala 293:35]
    .clock(data16_1_clock),
    .io_raddr_0(data16_1_io_raddr_0),
    .io_raddr_1(data16_1_io_raddr_1),
    .io_rdata_0_valid(data16_1_io_rdata_0_valid),
    .io_rdata_0_data(data16_1_io_rdata_0_data),
    .io_rdata_1_valid(data16_1_io_rdata_1_valid),
    .io_rdata_1_data(data16_1_io_rdata_1_data),
    .io_data_wen_0(data16_1_io_data_wen_0),
    .io_data_wen_1(data16_1_io_data_wen_1),
    .io_data_waddr_0(data16_1_io_data_waddr_0),
    .io_data_waddr_1(data16_1_io_data_waddr_1),
    .io_data_wdata_0(data16_1_io_data_wdata_0),
    .io_data_wdata_1(data16_1_io_data_wdata_1),
    .io_mask_wen_0(data16_1_io_mask_wen_0),
    .io_mask_wen_1(data16_1_io_mask_wen_1),
    .io_mask_waddr_0(data16_1_io_mask_waddr_0),
    .io_mask_waddr_1(data16_1_io_mask_waddr_1),
    .io_mask_wdata_0(data16_1_io_mask_wdata_0),
    .io_mask_wdata_1(data16_1_io_mask_wdata_1),
    .io_needForward_0_0(data16_1_io_needForward_0_0),
    .io_needForward_0_1(data16_1_io_needForward_0_1),
    .io_needForward_1_0(data16_1_io_needForward_1_0),
    .io_needForward_1_1(data16_1_io_needForward_1_1),
    .io_forwardValid_0(data16_1_io_forwardValid_0),
    .io_forwardValid_1(data16_1_io_forwardValid_1),
    .io_forwardData_0(data16_1_io_forwardData_0),
    .io_forwardData_1(data16_1_io_forwardData_1)
  );
  SQData8Module data16_2 ( // @[StoreQueueData.scala 293:35]
    .clock(data16_2_clock),
    .io_raddr_0(data16_2_io_raddr_0),
    .io_raddr_1(data16_2_io_raddr_1),
    .io_rdata_0_valid(data16_2_io_rdata_0_valid),
    .io_rdata_0_data(data16_2_io_rdata_0_data),
    .io_rdata_1_valid(data16_2_io_rdata_1_valid),
    .io_rdata_1_data(data16_2_io_rdata_1_data),
    .io_data_wen_0(data16_2_io_data_wen_0),
    .io_data_wen_1(data16_2_io_data_wen_1),
    .io_data_waddr_0(data16_2_io_data_waddr_0),
    .io_data_waddr_1(data16_2_io_data_waddr_1),
    .io_data_wdata_0(data16_2_io_data_wdata_0),
    .io_data_wdata_1(data16_2_io_data_wdata_1),
    .io_mask_wen_0(data16_2_io_mask_wen_0),
    .io_mask_wen_1(data16_2_io_mask_wen_1),
    .io_mask_waddr_0(data16_2_io_mask_waddr_0),
    .io_mask_waddr_1(data16_2_io_mask_waddr_1),
    .io_mask_wdata_0(data16_2_io_mask_wdata_0),
    .io_mask_wdata_1(data16_2_io_mask_wdata_1),
    .io_needForward_0_0(data16_2_io_needForward_0_0),
    .io_needForward_0_1(data16_2_io_needForward_0_1),
    .io_needForward_1_0(data16_2_io_needForward_1_0),
    .io_needForward_1_1(data16_2_io_needForward_1_1),
    .io_forwardValid_0(data16_2_io_forwardValid_0),
    .io_forwardValid_1(data16_2_io_forwardValid_1),
    .io_forwardData_0(data16_2_io_forwardData_0),
    .io_forwardData_1(data16_2_io_forwardData_1)
  );
  SQData8Module data16_3 ( // @[StoreQueueData.scala 293:35]
    .clock(data16_3_clock),
    .io_raddr_0(data16_3_io_raddr_0),
    .io_raddr_1(data16_3_io_raddr_1),
    .io_rdata_0_valid(data16_3_io_rdata_0_valid),
    .io_rdata_0_data(data16_3_io_rdata_0_data),
    .io_rdata_1_valid(data16_3_io_rdata_1_valid),
    .io_rdata_1_data(data16_3_io_rdata_1_data),
    .io_data_wen_0(data16_3_io_data_wen_0),
    .io_data_wen_1(data16_3_io_data_wen_1),
    .io_data_waddr_0(data16_3_io_data_waddr_0),
    .io_data_waddr_1(data16_3_io_data_waddr_1),
    .io_data_wdata_0(data16_3_io_data_wdata_0),
    .io_data_wdata_1(data16_3_io_data_wdata_1),
    .io_mask_wen_0(data16_3_io_mask_wen_0),
    .io_mask_wen_1(data16_3_io_mask_wen_1),
    .io_mask_waddr_0(data16_3_io_mask_waddr_0),
    .io_mask_waddr_1(data16_3_io_mask_waddr_1),
    .io_mask_wdata_0(data16_3_io_mask_wdata_0),
    .io_mask_wdata_1(data16_3_io_mask_wdata_1),
    .io_needForward_0_0(data16_3_io_needForward_0_0),
    .io_needForward_0_1(data16_3_io_needForward_0_1),
    .io_needForward_1_0(data16_3_io_needForward_1_0),
    .io_needForward_1_1(data16_3_io_needForward_1_1),
    .io_forwardValid_0(data16_3_io_forwardValid_0),
    .io_forwardValid_1(data16_3_io_forwardValid_1),
    .io_forwardData_0(data16_3_io_forwardData_0),
    .io_forwardData_1(data16_3_io_forwardData_1)
  );
  SQData8Module data16_4 ( // @[StoreQueueData.scala 293:35]
    .clock(data16_4_clock),
    .io_raddr_0(data16_4_io_raddr_0),
    .io_raddr_1(data16_4_io_raddr_1),
    .io_rdata_0_valid(data16_4_io_rdata_0_valid),
    .io_rdata_0_data(data16_4_io_rdata_0_data),
    .io_rdata_1_valid(data16_4_io_rdata_1_valid),
    .io_rdata_1_data(data16_4_io_rdata_1_data),
    .io_data_wen_0(data16_4_io_data_wen_0),
    .io_data_wen_1(data16_4_io_data_wen_1),
    .io_data_waddr_0(data16_4_io_data_waddr_0),
    .io_data_waddr_1(data16_4_io_data_waddr_1),
    .io_data_wdata_0(data16_4_io_data_wdata_0),
    .io_data_wdata_1(data16_4_io_data_wdata_1),
    .io_mask_wen_0(data16_4_io_mask_wen_0),
    .io_mask_wen_1(data16_4_io_mask_wen_1),
    .io_mask_waddr_0(data16_4_io_mask_waddr_0),
    .io_mask_waddr_1(data16_4_io_mask_waddr_1),
    .io_mask_wdata_0(data16_4_io_mask_wdata_0),
    .io_mask_wdata_1(data16_4_io_mask_wdata_1),
    .io_needForward_0_0(data16_4_io_needForward_0_0),
    .io_needForward_0_1(data16_4_io_needForward_0_1),
    .io_needForward_1_0(data16_4_io_needForward_1_0),
    .io_needForward_1_1(data16_4_io_needForward_1_1),
    .io_forwardValid_0(data16_4_io_forwardValid_0),
    .io_forwardValid_1(data16_4_io_forwardValid_1),
    .io_forwardData_0(data16_4_io_forwardData_0),
    .io_forwardData_1(data16_4_io_forwardData_1)
  );
  SQData8Module data16_5 ( // @[StoreQueueData.scala 293:35]
    .clock(data16_5_clock),
    .io_raddr_0(data16_5_io_raddr_0),
    .io_raddr_1(data16_5_io_raddr_1),
    .io_rdata_0_valid(data16_5_io_rdata_0_valid),
    .io_rdata_0_data(data16_5_io_rdata_0_data),
    .io_rdata_1_valid(data16_5_io_rdata_1_valid),
    .io_rdata_1_data(data16_5_io_rdata_1_data),
    .io_data_wen_0(data16_5_io_data_wen_0),
    .io_data_wen_1(data16_5_io_data_wen_1),
    .io_data_waddr_0(data16_5_io_data_waddr_0),
    .io_data_waddr_1(data16_5_io_data_waddr_1),
    .io_data_wdata_0(data16_5_io_data_wdata_0),
    .io_data_wdata_1(data16_5_io_data_wdata_1),
    .io_mask_wen_0(data16_5_io_mask_wen_0),
    .io_mask_wen_1(data16_5_io_mask_wen_1),
    .io_mask_waddr_0(data16_5_io_mask_waddr_0),
    .io_mask_waddr_1(data16_5_io_mask_waddr_1),
    .io_mask_wdata_0(data16_5_io_mask_wdata_0),
    .io_mask_wdata_1(data16_5_io_mask_wdata_1),
    .io_needForward_0_0(data16_5_io_needForward_0_0),
    .io_needForward_0_1(data16_5_io_needForward_0_1),
    .io_needForward_1_0(data16_5_io_needForward_1_0),
    .io_needForward_1_1(data16_5_io_needForward_1_1),
    .io_forwardValid_0(data16_5_io_forwardValid_0),
    .io_forwardValid_1(data16_5_io_forwardValid_1),
    .io_forwardData_0(data16_5_io_forwardData_0),
    .io_forwardData_1(data16_5_io_forwardData_1)
  );
  SQData8Module data16_6 ( // @[StoreQueueData.scala 293:35]
    .clock(data16_6_clock),
    .io_raddr_0(data16_6_io_raddr_0),
    .io_raddr_1(data16_6_io_raddr_1),
    .io_rdata_0_valid(data16_6_io_rdata_0_valid),
    .io_rdata_0_data(data16_6_io_rdata_0_data),
    .io_rdata_1_valid(data16_6_io_rdata_1_valid),
    .io_rdata_1_data(data16_6_io_rdata_1_data),
    .io_data_wen_0(data16_6_io_data_wen_0),
    .io_data_wen_1(data16_6_io_data_wen_1),
    .io_data_waddr_0(data16_6_io_data_waddr_0),
    .io_data_waddr_1(data16_6_io_data_waddr_1),
    .io_data_wdata_0(data16_6_io_data_wdata_0),
    .io_data_wdata_1(data16_6_io_data_wdata_1),
    .io_mask_wen_0(data16_6_io_mask_wen_0),
    .io_mask_wen_1(data16_6_io_mask_wen_1),
    .io_mask_waddr_0(data16_6_io_mask_waddr_0),
    .io_mask_waddr_1(data16_6_io_mask_waddr_1),
    .io_mask_wdata_0(data16_6_io_mask_wdata_0),
    .io_mask_wdata_1(data16_6_io_mask_wdata_1),
    .io_needForward_0_0(data16_6_io_needForward_0_0),
    .io_needForward_0_1(data16_6_io_needForward_0_1),
    .io_needForward_1_0(data16_6_io_needForward_1_0),
    .io_needForward_1_1(data16_6_io_needForward_1_1),
    .io_forwardValid_0(data16_6_io_forwardValid_0),
    .io_forwardValid_1(data16_6_io_forwardValid_1),
    .io_forwardData_0(data16_6_io_forwardData_0),
    .io_forwardData_1(data16_6_io_forwardData_1)
  );
  SQData8Module data16_7 ( // @[StoreQueueData.scala 293:35]
    .clock(data16_7_clock),
    .io_raddr_0(data16_7_io_raddr_0),
    .io_raddr_1(data16_7_io_raddr_1),
    .io_rdata_0_valid(data16_7_io_rdata_0_valid),
    .io_rdata_0_data(data16_7_io_rdata_0_data),
    .io_rdata_1_valid(data16_7_io_rdata_1_valid),
    .io_rdata_1_data(data16_7_io_rdata_1_data),
    .io_data_wen_0(data16_7_io_data_wen_0),
    .io_data_wen_1(data16_7_io_data_wen_1),
    .io_data_waddr_0(data16_7_io_data_waddr_0),
    .io_data_waddr_1(data16_7_io_data_waddr_1),
    .io_data_wdata_0(data16_7_io_data_wdata_0),
    .io_data_wdata_1(data16_7_io_data_wdata_1),
    .io_mask_wen_0(data16_7_io_mask_wen_0),
    .io_mask_wen_1(data16_7_io_mask_wen_1),
    .io_mask_waddr_0(data16_7_io_mask_waddr_0),
    .io_mask_waddr_1(data16_7_io_mask_waddr_1),
    .io_mask_wdata_0(data16_7_io_mask_wdata_0),
    .io_mask_wdata_1(data16_7_io_mask_wdata_1),
    .io_needForward_0_0(data16_7_io_needForward_0_0),
    .io_needForward_0_1(data16_7_io_needForward_0_1),
    .io_needForward_1_0(data16_7_io_needForward_1_0),
    .io_needForward_1_1(data16_7_io_needForward_1_1),
    .io_forwardValid_0(data16_7_io_forwardValid_0),
    .io_forwardValid_1(data16_7_io_forwardValid_1),
    .io_forwardData_0(data16_7_io_forwardData_0),
    .io_forwardData_1(data16_7_io_forwardData_1)
  );
  SQData8Module data16_8 ( // @[StoreQueueData.scala 293:35]
    .clock(data16_8_clock),
    .io_raddr_0(data16_8_io_raddr_0),
    .io_raddr_1(data16_8_io_raddr_1),
    .io_rdata_0_valid(data16_8_io_rdata_0_valid),
    .io_rdata_0_data(data16_8_io_rdata_0_data),
    .io_rdata_1_valid(data16_8_io_rdata_1_valid),
    .io_rdata_1_data(data16_8_io_rdata_1_data),
    .io_data_wen_0(data16_8_io_data_wen_0),
    .io_data_wen_1(data16_8_io_data_wen_1),
    .io_data_waddr_0(data16_8_io_data_waddr_0),
    .io_data_waddr_1(data16_8_io_data_waddr_1),
    .io_data_wdata_0(data16_8_io_data_wdata_0),
    .io_data_wdata_1(data16_8_io_data_wdata_1),
    .io_mask_wen_0(data16_8_io_mask_wen_0),
    .io_mask_wen_1(data16_8_io_mask_wen_1),
    .io_mask_waddr_0(data16_8_io_mask_waddr_0),
    .io_mask_waddr_1(data16_8_io_mask_waddr_1),
    .io_mask_wdata_0(data16_8_io_mask_wdata_0),
    .io_mask_wdata_1(data16_8_io_mask_wdata_1),
    .io_needForward_0_0(data16_8_io_needForward_0_0),
    .io_needForward_0_1(data16_8_io_needForward_0_1),
    .io_needForward_1_0(data16_8_io_needForward_1_0),
    .io_needForward_1_1(data16_8_io_needForward_1_1),
    .io_forwardValid_0(data16_8_io_forwardValid_0),
    .io_forwardValid_1(data16_8_io_forwardValid_1),
    .io_forwardData_0(data16_8_io_forwardData_0),
    .io_forwardData_1(data16_8_io_forwardData_1)
  );
  SQData8Module data16_9 ( // @[StoreQueueData.scala 293:35]
    .clock(data16_9_clock),
    .io_raddr_0(data16_9_io_raddr_0),
    .io_raddr_1(data16_9_io_raddr_1),
    .io_rdata_0_valid(data16_9_io_rdata_0_valid),
    .io_rdata_0_data(data16_9_io_rdata_0_data),
    .io_rdata_1_valid(data16_9_io_rdata_1_valid),
    .io_rdata_1_data(data16_9_io_rdata_1_data),
    .io_data_wen_0(data16_9_io_data_wen_0),
    .io_data_wen_1(data16_9_io_data_wen_1),
    .io_data_waddr_0(data16_9_io_data_waddr_0),
    .io_data_waddr_1(data16_9_io_data_waddr_1),
    .io_data_wdata_0(data16_9_io_data_wdata_0),
    .io_data_wdata_1(data16_9_io_data_wdata_1),
    .io_mask_wen_0(data16_9_io_mask_wen_0),
    .io_mask_wen_1(data16_9_io_mask_wen_1),
    .io_mask_waddr_0(data16_9_io_mask_waddr_0),
    .io_mask_waddr_1(data16_9_io_mask_waddr_1),
    .io_mask_wdata_0(data16_9_io_mask_wdata_0),
    .io_mask_wdata_1(data16_9_io_mask_wdata_1),
    .io_needForward_0_0(data16_9_io_needForward_0_0),
    .io_needForward_0_1(data16_9_io_needForward_0_1),
    .io_needForward_1_0(data16_9_io_needForward_1_0),
    .io_needForward_1_1(data16_9_io_needForward_1_1),
    .io_forwardValid_0(data16_9_io_forwardValid_0),
    .io_forwardValid_1(data16_9_io_forwardValid_1),
    .io_forwardData_0(data16_9_io_forwardData_0),
    .io_forwardData_1(data16_9_io_forwardData_1)
  );
  SQData8Module data16_10 ( // @[StoreQueueData.scala 293:35]
    .clock(data16_10_clock),
    .io_raddr_0(data16_10_io_raddr_0),
    .io_raddr_1(data16_10_io_raddr_1),
    .io_rdata_0_valid(data16_10_io_rdata_0_valid),
    .io_rdata_0_data(data16_10_io_rdata_0_data),
    .io_rdata_1_valid(data16_10_io_rdata_1_valid),
    .io_rdata_1_data(data16_10_io_rdata_1_data),
    .io_data_wen_0(data16_10_io_data_wen_0),
    .io_data_wen_1(data16_10_io_data_wen_1),
    .io_data_waddr_0(data16_10_io_data_waddr_0),
    .io_data_waddr_1(data16_10_io_data_waddr_1),
    .io_data_wdata_0(data16_10_io_data_wdata_0),
    .io_data_wdata_1(data16_10_io_data_wdata_1),
    .io_mask_wen_0(data16_10_io_mask_wen_0),
    .io_mask_wen_1(data16_10_io_mask_wen_1),
    .io_mask_waddr_0(data16_10_io_mask_waddr_0),
    .io_mask_waddr_1(data16_10_io_mask_waddr_1),
    .io_mask_wdata_0(data16_10_io_mask_wdata_0),
    .io_mask_wdata_1(data16_10_io_mask_wdata_1),
    .io_needForward_0_0(data16_10_io_needForward_0_0),
    .io_needForward_0_1(data16_10_io_needForward_0_1),
    .io_needForward_1_0(data16_10_io_needForward_1_0),
    .io_needForward_1_1(data16_10_io_needForward_1_1),
    .io_forwardValid_0(data16_10_io_forwardValid_0),
    .io_forwardValid_1(data16_10_io_forwardValid_1),
    .io_forwardData_0(data16_10_io_forwardData_0),
    .io_forwardData_1(data16_10_io_forwardData_1)
  );
  SQData8Module data16_11 ( // @[StoreQueueData.scala 293:35]
    .clock(data16_11_clock),
    .io_raddr_0(data16_11_io_raddr_0),
    .io_raddr_1(data16_11_io_raddr_1),
    .io_rdata_0_valid(data16_11_io_rdata_0_valid),
    .io_rdata_0_data(data16_11_io_rdata_0_data),
    .io_rdata_1_valid(data16_11_io_rdata_1_valid),
    .io_rdata_1_data(data16_11_io_rdata_1_data),
    .io_data_wen_0(data16_11_io_data_wen_0),
    .io_data_wen_1(data16_11_io_data_wen_1),
    .io_data_waddr_0(data16_11_io_data_waddr_0),
    .io_data_waddr_1(data16_11_io_data_waddr_1),
    .io_data_wdata_0(data16_11_io_data_wdata_0),
    .io_data_wdata_1(data16_11_io_data_wdata_1),
    .io_mask_wen_0(data16_11_io_mask_wen_0),
    .io_mask_wen_1(data16_11_io_mask_wen_1),
    .io_mask_waddr_0(data16_11_io_mask_waddr_0),
    .io_mask_waddr_1(data16_11_io_mask_waddr_1),
    .io_mask_wdata_0(data16_11_io_mask_wdata_0),
    .io_mask_wdata_1(data16_11_io_mask_wdata_1),
    .io_needForward_0_0(data16_11_io_needForward_0_0),
    .io_needForward_0_1(data16_11_io_needForward_0_1),
    .io_needForward_1_0(data16_11_io_needForward_1_0),
    .io_needForward_1_1(data16_11_io_needForward_1_1),
    .io_forwardValid_0(data16_11_io_forwardValid_0),
    .io_forwardValid_1(data16_11_io_forwardValid_1),
    .io_forwardData_0(data16_11_io_forwardData_0),
    .io_forwardData_1(data16_11_io_forwardData_1)
  );
  SQData8Module data16_12 ( // @[StoreQueueData.scala 293:35]
    .clock(data16_12_clock),
    .io_raddr_0(data16_12_io_raddr_0),
    .io_raddr_1(data16_12_io_raddr_1),
    .io_rdata_0_valid(data16_12_io_rdata_0_valid),
    .io_rdata_0_data(data16_12_io_rdata_0_data),
    .io_rdata_1_valid(data16_12_io_rdata_1_valid),
    .io_rdata_1_data(data16_12_io_rdata_1_data),
    .io_data_wen_0(data16_12_io_data_wen_0),
    .io_data_wen_1(data16_12_io_data_wen_1),
    .io_data_waddr_0(data16_12_io_data_waddr_0),
    .io_data_waddr_1(data16_12_io_data_waddr_1),
    .io_data_wdata_0(data16_12_io_data_wdata_0),
    .io_data_wdata_1(data16_12_io_data_wdata_1),
    .io_mask_wen_0(data16_12_io_mask_wen_0),
    .io_mask_wen_1(data16_12_io_mask_wen_1),
    .io_mask_waddr_0(data16_12_io_mask_waddr_0),
    .io_mask_waddr_1(data16_12_io_mask_waddr_1),
    .io_mask_wdata_0(data16_12_io_mask_wdata_0),
    .io_mask_wdata_1(data16_12_io_mask_wdata_1),
    .io_needForward_0_0(data16_12_io_needForward_0_0),
    .io_needForward_0_1(data16_12_io_needForward_0_1),
    .io_needForward_1_0(data16_12_io_needForward_1_0),
    .io_needForward_1_1(data16_12_io_needForward_1_1),
    .io_forwardValid_0(data16_12_io_forwardValid_0),
    .io_forwardValid_1(data16_12_io_forwardValid_1),
    .io_forwardData_0(data16_12_io_forwardData_0),
    .io_forwardData_1(data16_12_io_forwardData_1)
  );
  SQData8Module data16_13 ( // @[StoreQueueData.scala 293:35]
    .clock(data16_13_clock),
    .io_raddr_0(data16_13_io_raddr_0),
    .io_raddr_1(data16_13_io_raddr_1),
    .io_rdata_0_valid(data16_13_io_rdata_0_valid),
    .io_rdata_0_data(data16_13_io_rdata_0_data),
    .io_rdata_1_valid(data16_13_io_rdata_1_valid),
    .io_rdata_1_data(data16_13_io_rdata_1_data),
    .io_data_wen_0(data16_13_io_data_wen_0),
    .io_data_wen_1(data16_13_io_data_wen_1),
    .io_data_waddr_0(data16_13_io_data_waddr_0),
    .io_data_waddr_1(data16_13_io_data_waddr_1),
    .io_data_wdata_0(data16_13_io_data_wdata_0),
    .io_data_wdata_1(data16_13_io_data_wdata_1),
    .io_mask_wen_0(data16_13_io_mask_wen_0),
    .io_mask_wen_1(data16_13_io_mask_wen_1),
    .io_mask_waddr_0(data16_13_io_mask_waddr_0),
    .io_mask_waddr_1(data16_13_io_mask_waddr_1),
    .io_mask_wdata_0(data16_13_io_mask_wdata_0),
    .io_mask_wdata_1(data16_13_io_mask_wdata_1),
    .io_needForward_0_0(data16_13_io_needForward_0_0),
    .io_needForward_0_1(data16_13_io_needForward_0_1),
    .io_needForward_1_0(data16_13_io_needForward_1_0),
    .io_needForward_1_1(data16_13_io_needForward_1_1),
    .io_forwardValid_0(data16_13_io_forwardValid_0),
    .io_forwardValid_1(data16_13_io_forwardValid_1),
    .io_forwardData_0(data16_13_io_forwardData_0),
    .io_forwardData_1(data16_13_io_forwardData_1)
  );
  SQData8Module data16_14 ( // @[StoreQueueData.scala 293:35]
    .clock(data16_14_clock),
    .io_raddr_0(data16_14_io_raddr_0),
    .io_raddr_1(data16_14_io_raddr_1),
    .io_rdata_0_valid(data16_14_io_rdata_0_valid),
    .io_rdata_0_data(data16_14_io_rdata_0_data),
    .io_rdata_1_valid(data16_14_io_rdata_1_valid),
    .io_rdata_1_data(data16_14_io_rdata_1_data),
    .io_data_wen_0(data16_14_io_data_wen_0),
    .io_data_wen_1(data16_14_io_data_wen_1),
    .io_data_waddr_0(data16_14_io_data_waddr_0),
    .io_data_waddr_1(data16_14_io_data_waddr_1),
    .io_data_wdata_0(data16_14_io_data_wdata_0),
    .io_data_wdata_1(data16_14_io_data_wdata_1),
    .io_mask_wen_0(data16_14_io_mask_wen_0),
    .io_mask_wen_1(data16_14_io_mask_wen_1),
    .io_mask_waddr_0(data16_14_io_mask_waddr_0),
    .io_mask_waddr_1(data16_14_io_mask_waddr_1),
    .io_mask_wdata_0(data16_14_io_mask_wdata_0),
    .io_mask_wdata_1(data16_14_io_mask_wdata_1),
    .io_needForward_0_0(data16_14_io_needForward_0_0),
    .io_needForward_0_1(data16_14_io_needForward_0_1),
    .io_needForward_1_0(data16_14_io_needForward_1_0),
    .io_needForward_1_1(data16_14_io_needForward_1_1),
    .io_forwardValid_0(data16_14_io_forwardValid_0),
    .io_forwardValid_1(data16_14_io_forwardValid_1),
    .io_forwardData_0(data16_14_io_forwardData_0),
    .io_forwardData_1(data16_14_io_forwardData_1)
  );
  SQData8Module data16_15 ( // @[StoreQueueData.scala 293:35]
    .clock(data16_15_clock),
    .io_raddr_0(data16_15_io_raddr_0),
    .io_raddr_1(data16_15_io_raddr_1),
    .io_rdata_0_valid(data16_15_io_rdata_0_valid),
    .io_rdata_0_data(data16_15_io_rdata_0_data),
    .io_rdata_1_valid(data16_15_io_rdata_1_valid),
    .io_rdata_1_data(data16_15_io_rdata_1_data),
    .io_data_wen_0(data16_15_io_data_wen_0),
    .io_data_wen_1(data16_15_io_data_wen_1),
    .io_data_waddr_0(data16_15_io_data_waddr_0),
    .io_data_waddr_1(data16_15_io_data_waddr_1),
    .io_data_wdata_0(data16_15_io_data_wdata_0),
    .io_data_wdata_1(data16_15_io_data_wdata_1),
    .io_mask_wen_0(data16_15_io_mask_wen_0),
    .io_mask_wen_1(data16_15_io_mask_wen_1),
    .io_mask_waddr_0(data16_15_io_mask_waddr_0),
    .io_mask_waddr_1(data16_15_io_mask_waddr_1),
    .io_mask_wdata_0(data16_15_io_mask_wdata_0),
    .io_mask_wdata_1(data16_15_io_mask_wdata_1),
    .io_needForward_0_0(data16_15_io_needForward_0_0),
    .io_needForward_0_1(data16_15_io_needForward_0_1),
    .io_needForward_1_0(data16_15_io_needForward_1_0),
    .io_needForward_1_1(data16_15_io_needForward_1_1),
    .io_forwardValid_0(data16_15_io_forwardValid_0),
    .io_forwardValid_1(data16_15_io_forwardValid_1),
    .io_forwardData_0(data16_15_io_forwardData_0),
    .io_forwardData_1(data16_15_io_forwardData_1)
  );
  assign io_rdata_0_mask = {io_rdata_0_mask_hi,io_rdata_0_mask_lo}; // @[StoreQueueData.scala 313:85]
  assign io_rdata_0_data = {io_rdata_0_data_hi,io_rdata_0_data_lo}; // @[StoreQueueData.scala 314:84]
  assign io_rdata_1_mask = {io_rdata_1_mask_hi,io_rdata_1_mask_lo}; // @[StoreQueueData.scala 313:85]
  assign io_rdata_1_data = {io_rdata_1_data_hi,io_rdata_1_data_lo}; // @[StoreQueueData.scala 314:84]
  assign io_forwardMask_0_0 = data16_0_io_forwardValid_0; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_0_1 = data16_1_io_forwardValid_0; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_0_2 = data16_2_io_forwardValid_0; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_0_3 = data16_3_io_forwardValid_0; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_0_4 = data16_4_io_forwardValid_0; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_0_5 = data16_5_io_forwardValid_0; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_0_6 = data16_6_io_forwardValid_0; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_0_7 = data16_7_io_forwardValid_0; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_0_8 = data16_8_io_forwardValid_0; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_0_9 = data16_9_io_forwardValid_0; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_0_10 = data16_10_io_forwardValid_0; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_0_11 = data16_11_io_forwardValid_0; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_0_12 = data16_12_io_forwardValid_0; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_0_13 = data16_13_io_forwardValid_0; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_0_14 = data16_14_io_forwardValid_0; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_0_15 = data16_15_io_forwardValid_0; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_1_0 = data16_0_io_forwardValid_1; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_1_1 = data16_1_io_forwardValid_1; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_1_2 = data16_2_io_forwardValid_1; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_1_3 = data16_3_io_forwardValid_1; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_1_4 = data16_4_io_forwardValid_1; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_1_5 = data16_5_io_forwardValid_1; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_1_6 = data16_6_io_forwardValid_1; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_1_7 = data16_7_io_forwardValid_1; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_1_8 = data16_8_io_forwardValid_1; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_1_9 = data16_9_io_forwardValid_1; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_1_10 = data16_10_io_forwardValid_1; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_1_11 = data16_11_io_forwardValid_1; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_1_12 = data16_12_io_forwardValid_1; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_1_13 = data16_13_io_forwardValid_1; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_1_14 = data16_14_io_forwardValid_1; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardMask_1_15 = data16_15_io_forwardValid_1; // @[StoreQueueData.scala 334:{35,35}]
  assign io_forwardData_0_0 = data16_0_io_forwardData_0; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_0_1 = data16_1_io_forwardData_0; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_0_2 = data16_2_io_forwardData_0; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_0_3 = data16_3_io_forwardData_0; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_0_4 = data16_4_io_forwardData_0; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_0_5 = data16_5_io_forwardData_0; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_0_6 = data16_6_io_forwardData_0; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_0_7 = data16_7_io_forwardData_0; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_0_8 = data16_8_io_forwardData_0; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_0_9 = data16_9_io_forwardData_0; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_0_10 = data16_10_io_forwardData_0; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_0_11 = data16_11_io_forwardData_0; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_0_12 = data16_12_io_forwardData_0; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_0_13 = data16_13_io_forwardData_0; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_0_14 = data16_14_io_forwardData_0; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_0_15 = data16_15_io_forwardData_0; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_1_0 = data16_0_io_forwardData_1; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_1_1 = data16_1_io_forwardData_1; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_1_2 = data16_2_io_forwardData_1; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_1_3 = data16_3_io_forwardData_1; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_1_4 = data16_4_io_forwardData_1; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_1_5 = data16_5_io_forwardData_1; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_1_6 = data16_6_io_forwardData_1; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_1_7 = data16_7_io_forwardData_1; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_1_8 = data16_8_io_forwardData_1; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_1_9 = data16_9_io_forwardData_1; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_1_10 = data16_10_io_forwardData_1; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_1_11 = data16_11_io_forwardData_1; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_1_12 = data16_12_io_forwardData_1; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_1_13 = data16_13_io_forwardData_1; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_1_14 = data16_14_io_forwardData_1; // @[StoreQueueData.scala 335:{35,35}]
  assign io_forwardData_1_15 = data16_15_io_forwardData_1; // @[StoreQueueData.scala 335:{35,35}]
  assign data16_0_clock = clock;
  assign data16_0_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 311:29]
  assign data16_0_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 311:29]
  assign data16_0_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 304:34]
  assign data16_0_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 304:34]
  assign data16_0_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 302:34]
  assign data16_0_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 302:34]
  assign data16_0_io_data_wdata_0 = io_data_wdata_0[7:0]; // @[StoreQueueData.scala 303:53]
  assign data16_0_io_data_wdata_1 = io_data_wdata_1[7:0]; // @[StoreQueueData.scala 303:53]
  assign data16_0_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 301:34]
  assign data16_0_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 301:34]
  assign data16_0_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 299:34]
  assign data16_0_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 299:34]
  assign data16_0_io_mask_wdata_0 = io_mask_wdata_0[0]; // @[StoreQueueData.scala 300:53]
  assign data16_0_io_mask_wdata_1 = io_mask_wdata_1[0]; // @[StoreQueueData.scala 300:53]
  assign data16_0_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 332:35]
  assign data16_0_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 332:35]
  assign data16_0_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 332:35]
  assign data16_0_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 332:35]
  assign data16_1_clock = clock;
  assign data16_1_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 311:29]
  assign data16_1_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 311:29]
  assign data16_1_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 304:34]
  assign data16_1_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 304:34]
  assign data16_1_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 302:34]
  assign data16_1_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 302:34]
  assign data16_1_io_data_wdata_0 = io_data_wdata_0[15:8]; // @[StoreQueueData.scala 303:53]
  assign data16_1_io_data_wdata_1 = io_data_wdata_1[15:8]; // @[StoreQueueData.scala 303:53]
  assign data16_1_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 301:34]
  assign data16_1_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 301:34]
  assign data16_1_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 299:34]
  assign data16_1_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 299:34]
  assign data16_1_io_mask_wdata_0 = io_mask_wdata_0[1]; // @[StoreQueueData.scala 300:53]
  assign data16_1_io_mask_wdata_1 = io_mask_wdata_1[1]; // @[StoreQueueData.scala 300:53]
  assign data16_1_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 332:35]
  assign data16_1_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 332:35]
  assign data16_1_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 332:35]
  assign data16_1_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 332:35]
  assign data16_2_clock = clock;
  assign data16_2_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 311:29]
  assign data16_2_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 311:29]
  assign data16_2_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 304:34]
  assign data16_2_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 304:34]
  assign data16_2_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 302:34]
  assign data16_2_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 302:34]
  assign data16_2_io_data_wdata_0 = io_data_wdata_0[23:16]; // @[StoreQueueData.scala 303:53]
  assign data16_2_io_data_wdata_1 = io_data_wdata_1[23:16]; // @[StoreQueueData.scala 303:53]
  assign data16_2_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 301:34]
  assign data16_2_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 301:34]
  assign data16_2_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 299:34]
  assign data16_2_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 299:34]
  assign data16_2_io_mask_wdata_0 = io_mask_wdata_0[2]; // @[StoreQueueData.scala 300:53]
  assign data16_2_io_mask_wdata_1 = io_mask_wdata_1[2]; // @[StoreQueueData.scala 300:53]
  assign data16_2_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 332:35]
  assign data16_2_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 332:35]
  assign data16_2_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 332:35]
  assign data16_2_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 332:35]
  assign data16_3_clock = clock;
  assign data16_3_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 311:29]
  assign data16_3_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 311:29]
  assign data16_3_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 304:34]
  assign data16_3_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 304:34]
  assign data16_3_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 302:34]
  assign data16_3_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 302:34]
  assign data16_3_io_data_wdata_0 = io_data_wdata_0[31:24]; // @[StoreQueueData.scala 303:53]
  assign data16_3_io_data_wdata_1 = io_data_wdata_1[31:24]; // @[StoreQueueData.scala 303:53]
  assign data16_3_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 301:34]
  assign data16_3_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 301:34]
  assign data16_3_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 299:34]
  assign data16_3_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 299:34]
  assign data16_3_io_mask_wdata_0 = io_mask_wdata_0[3]; // @[StoreQueueData.scala 300:53]
  assign data16_3_io_mask_wdata_1 = io_mask_wdata_1[3]; // @[StoreQueueData.scala 300:53]
  assign data16_3_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 332:35]
  assign data16_3_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 332:35]
  assign data16_3_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 332:35]
  assign data16_3_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 332:35]
  assign data16_4_clock = clock;
  assign data16_4_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 311:29]
  assign data16_4_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 311:29]
  assign data16_4_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 304:34]
  assign data16_4_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 304:34]
  assign data16_4_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 302:34]
  assign data16_4_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 302:34]
  assign data16_4_io_data_wdata_0 = io_data_wdata_0[39:32]; // @[StoreQueueData.scala 303:53]
  assign data16_4_io_data_wdata_1 = io_data_wdata_1[39:32]; // @[StoreQueueData.scala 303:53]
  assign data16_4_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 301:34]
  assign data16_4_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 301:34]
  assign data16_4_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 299:34]
  assign data16_4_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 299:34]
  assign data16_4_io_mask_wdata_0 = io_mask_wdata_0[4]; // @[StoreQueueData.scala 300:53]
  assign data16_4_io_mask_wdata_1 = io_mask_wdata_1[4]; // @[StoreQueueData.scala 300:53]
  assign data16_4_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 332:35]
  assign data16_4_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 332:35]
  assign data16_4_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 332:35]
  assign data16_4_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 332:35]
  assign data16_5_clock = clock;
  assign data16_5_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 311:29]
  assign data16_5_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 311:29]
  assign data16_5_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 304:34]
  assign data16_5_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 304:34]
  assign data16_5_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 302:34]
  assign data16_5_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 302:34]
  assign data16_5_io_data_wdata_0 = io_data_wdata_0[47:40]; // @[StoreQueueData.scala 303:53]
  assign data16_5_io_data_wdata_1 = io_data_wdata_1[47:40]; // @[StoreQueueData.scala 303:53]
  assign data16_5_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 301:34]
  assign data16_5_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 301:34]
  assign data16_5_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 299:34]
  assign data16_5_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 299:34]
  assign data16_5_io_mask_wdata_0 = io_mask_wdata_0[5]; // @[StoreQueueData.scala 300:53]
  assign data16_5_io_mask_wdata_1 = io_mask_wdata_1[5]; // @[StoreQueueData.scala 300:53]
  assign data16_5_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 332:35]
  assign data16_5_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 332:35]
  assign data16_5_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 332:35]
  assign data16_5_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 332:35]
  assign data16_6_clock = clock;
  assign data16_6_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 311:29]
  assign data16_6_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 311:29]
  assign data16_6_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 304:34]
  assign data16_6_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 304:34]
  assign data16_6_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 302:34]
  assign data16_6_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 302:34]
  assign data16_6_io_data_wdata_0 = io_data_wdata_0[55:48]; // @[StoreQueueData.scala 303:53]
  assign data16_6_io_data_wdata_1 = io_data_wdata_1[55:48]; // @[StoreQueueData.scala 303:53]
  assign data16_6_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 301:34]
  assign data16_6_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 301:34]
  assign data16_6_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 299:34]
  assign data16_6_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 299:34]
  assign data16_6_io_mask_wdata_0 = io_mask_wdata_0[6]; // @[StoreQueueData.scala 300:53]
  assign data16_6_io_mask_wdata_1 = io_mask_wdata_1[6]; // @[StoreQueueData.scala 300:53]
  assign data16_6_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 332:35]
  assign data16_6_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 332:35]
  assign data16_6_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 332:35]
  assign data16_6_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 332:35]
  assign data16_7_clock = clock;
  assign data16_7_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 311:29]
  assign data16_7_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 311:29]
  assign data16_7_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 304:34]
  assign data16_7_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 304:34]
  assign data16_7_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 302:34]
  assign data16_7_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 302:34]
  assign data16_7_io_data_wdata_0 = io_data_wdata_0[63:56]; // @[StoreQueueData.scala 303:53]
  assign data16_7_io_data_wdata_1 = io_data_wdata_1[63:56]; // @[StoreQueueData.scala 303:53]
  assign data16_7_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 301:34]
  assign data16_7_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 301:34]
  assign data16_7_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 299:34]
  assign data16_7_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 299:34]
  assign data16_7_io_mask_wdata_0 = io_mask_wdata_0[7]; // @[StoreQueueData.scala 300:53]
  assign data16_7_io_mask_wdata_1 = io_mask_wdata_1[7]; // @[StoreQueueData.scala 300:53]
  assign data16_7_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 332:35]
  assign data16_7_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 332:35]
  assign data16_7_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 332:35]
  assign data16_7_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 332:35]
  assign data16_8_clock = clock;
  assign data16_8_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 311:29]
  assign data16_8_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 311:29]
  assign data16_8_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 304:34]
  assign data16_8_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 304:34]
  assign data16_8_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 302:34]
  assign data16_8_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 302:34]
  assign data16_8_io_data_wdata_0 = io_data_wdata_0[71:64]; // @[StoreQueueData.scala 303:53]
  assign data16_8_io_data_wdata_1 = io_data_wdata_1[71:64]; // @[StoreQueueData.scala 303:53]
  assign data16_8_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 301:34]
  assign data16_8_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 301:34]
  assign data16_8_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 299:34]
  assign data16_8_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 299:34]
  assign data16_8_io_mask_wdata_0 = io_mask_wdata_0[8]; // @[StoreQueueData.scala 300:53]
  assign data16_8_io_mask_wdata_1 = io_mask_wdata_1[8]; // @[StoreQueueData.scala 300:53]
  assign data16_8_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 332:35]
  assign data16_8_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 332:35]
  assign data16_8_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 332:35]
  assign data16_8_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 332:35]
  assign data16_9_clock = clock;
  assign data16_9_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 311:29]
  assign data16_9_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 311:29]
  assign data16_9_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 304:34]
  assign data16_9_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 304:34]
  assign data16_9_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 302:34]
  assign data16_9_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 302:34]
  assign data16_9_io_data_wdata_0 = io_data_wdata_0[79:72]; // @[StoreQueueData.scala 303:53]
  assign data16_9_io_data_wdata_1 = io_data_wdata_1[79:72]; // @[StoreQueueData.scala 303:53]
  assign data16_9_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 301:34]
  assign data16_9_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 301:34]
  assign data16_9_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 299:34]
  assign data16_9_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 299:34]
  assign data16_9_io_mask_wdata_0 = io_mask_wdata_0[9]; // @[StoreQueueData.scala 300:53]
  assign data16_9_io_mask_wdata_1 = io_mask_wdata_1[9]; // @[StoreQueueData.scala 300:53]
  assign data16_9_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 332:35]
  assign data16_9_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 332:35]
  assign data16_9_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 332:35]
  assign data16_9_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 332:35]
  assign data16_10_clock = clock;
  assign data16_10_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 311:29]
  assign data16_10_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 311:29]
  assign data16_10_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 304:34]
  assign data16_10_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 304:34]
  assign data16_10_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 302:34]
  assign data16_10_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 302:34]
  assign data16_10_io_data_wdata_0 = io_data_wdata_0[87:80]; // @[StoreQueueData.scala 303:53]
  assign data16_10_io_data_wdata_1 = io_data_wdata_1[87:80]; // @[StoreQueueData.scala 303:53]
  assign data16_10_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 301:34]
  assign data16_10_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 301:34]
  assign data16_10_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 299:34]
  assign data16_10_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 299:34]
  assign data16_10_io_mask_wdata_0 = io_mask_wdata_0[10]; // @[StoreQueueData.scala 300:53]
  assign data16_10_io_mask_wdata_1 = io_mask_wdata_1[10]; // @[StoreQueueData.scala 300:53]
  assign data16_10_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 332:35]
  assign data16_10_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 332:35]
  assign data16_10_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 332:35]
  assign data16_10_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 332:35]
  assign data16_11_clock = clock;
  assign data16_11_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 311:29]
  assign data16_11_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 311:29]
  assign data16_11_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 304:34]
  assign data16_11_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 304:34]
  assign data16_11_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 302:34]
  assign data16_11_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 302:34]
  assign data16_11_io_data_wdata_0 = io_data_wdata_0[95:88]; // @[StoreQueueData.scala 303:53]
  assign data16_11_io_data_wdata_1 = io_data_wdata_1[95:88]; // @[StoreQueueData.scala 303:53]
  assign data16_11_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 301:34]
  assign data16_11_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 301:34]
  assign data16_11_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 299:34]
  assign data16_11_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 299:34]
  assign data16_11_io_mask_wdata_0 = io_mask_wdata_0[11]; // @[StoreQueueData.scala 300:53]
  assign data16_11_io_mask_wdata_1 = io_mask_wdata_1[11]; // @[StoreQueueData.scala 300:53]
  assign data16_11_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 332:35]
  assign data16_11_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 332:35]
  assign data16_11_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 332:35]
  assign data16_11_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 332:35]
  assign data16_12_clock = clock;
  assign data16_12_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 311:29]
  assign data16_12_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 311:29]
  assign data16_12_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 304:34]
  assign data16_12_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 304:34]
  assign data16_12_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 302:34]
  assign data16_12_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 302:34]
  assign data16_12_io_data_wdata_0 = io_data_wdata_0[103:96]; // @[StoreQueueData.scala 303:53]
  assign data16_12_io_data_wdata_1 = io_data_wdata_1[103:96]; // @[StoreQueueData.scala 303:53]
  assign data16_12_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 301:34]
  assign data16_12_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 301:34]
  assign data16_12_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 299:34]
  assign data16_12_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 299:34]
  assign data16_12_io_mask_wdata_0 = io_mask_wdata_0[12]; // @[StoreQueueData.scala 300:53]
  assign data16_12_io_mask_wdata_1 = io_mask_wdata_1[12]; // @[StoreQueueData.scala 300:53]
  assign data16_12_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 332:35]
  assign data16_12_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 332:35]
  assign data16_12_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 332:35]
  assign data16_12_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 332:35]
  assign data16_13_clock = clock;
  assign data16_13_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 311:29]
  assign data16_13_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 311:29]
  assign data16_13_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 304:34]
  assign data16_13_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 304:34]
  assign data16_13_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 302:34]
  assign data16_13_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 302:34]
  assign data16_13_io_data_wdata_0 = io_data_wdata_0[111:104]; // @[StoreQueueData.scala 303:53]
  assign data16_13_io_data_wdata_1 = io_data_wdata_1[111:104]; // @[StoreQueueData.scala 303:53]
  assign data16_13_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 301:34]
  assign data16_13_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 301:34]
  assign data16_13_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 299:34]
  assign data16_13_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 299:34]
  assign data16_13_io_mask_wdata_0 = io_mask_wdata_0[13]; // @[StoreQueueData.scala 300:53]
  assign data16_13_io_mask_wdata_1 = io_mask_wdata_1[13]; // @[StoreQueueData.scala 300:53]
  assign data16_13_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 332:35]
  assign data16_13_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 332:35]
  assign data16_13_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 332:35]
  assign data16_13_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 332:35]
  assign data16_14_clock = clock;
  assign data16_14_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 311:29]
  assign data16_14_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 311:29]
  assign data16_14_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 304:34]
  assign data16_14_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 304:34]
  assign data16_14_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 302:34]
  assign data16_14_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 302:34]
  assign data16_14_io_data_wdata_0 = io_data_wdata_0[119:112]; // @[StoreQueueData.scala 303:53]
  assign data16_14_io_data_wdata_1 = io_data_wdata_1[119:112]; // @[StoreQueueData.scala 303:53]
  assign data16_14_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 301:34]
  assign data16_14_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 301:34]
  assign data16_14_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 299:34]
  assign data16_14_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 299:34]
  assign data16_14_io_mask_wdata_0 = io_mask_wdata_0[14]; // @[StoreQueueData.scala 300:53]
  assign data16_14_io_mask_wdata_1 = io_mask_wdata_1[14]; // @[StoreQueueData.scala 300:53]
  assign data16_14_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 332:35]
  assign data16_14_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 332:35]
  assign data16_14_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 332:35]
  assign data16_14_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 332:35]
  assign data16_15_clock = clock;
  assign data16_15_io_raddr_0 = io_raddr_0; // @[StoreQueueData.scala 311:29]
  assign data16_15_io_raddr_1 = io_raddr_1; // @[StoreQueueData.scala 311:29]
  assign data16_15_io_data_wen_0 = io_data_wen_0; // @[StoreQueueData.scala 304:34]
  assign data16_15_io_data_wen_1 = io_data_wen_1; // @[StoreQueueData.scala 304:34]
  assign data16_15_io_data_waddr_0 = io_data_waddr_0; // @[StoreQueueData.scala 302:34]
  assign data16_15_io_data_waddr_1 = io_data_waddr_1; // @[StoreQueueData.scala 302:34]
  assign data16_15_io_data_wdata_0 = io_data_wdata_0[127:120]; // @[StoreQueueData.scala 303:53]
  assign data16_15_io_data_wdata_1 = io_data_wdata_1[127:120]; // @[StoreQueueData.scala 303:53]
  assign data16_15_io_mask_wen_0 = io_mask_wen_0; // @[StoreQueueData.scala 301:34]
  assign data16_15_io_mask_wen_1 = io_mask_wen_1; // @[StoreQueueData.scala 301:34]
  assign data16_15_io_mask_waddr_0 = io_mask_waddr_0; // @[StoreQueueData.scala 299:34]
  assign data16_15_io_mask_waddr_1 = io_mask_waddr_1; // @[StoreQueueData.scala 299:34]
  assign data16_15_io_mask_wdata_0 = io_mask_wdata_0[15]; // @[StoreQueueData.scala 300:53]
  assign data16_15_io_mask_wdata_1 = io_mask_wdata_1[15]; // @[StoreQueueData.scala 300:53]
  assign data16_15_io_needForward_0_0 = io_needForward_0_0; // @[StoreQueueData.scala 332:35]
  assign data16_15_io_needForward_0_1 = io_needForward_0_1; // @[StoreQueueData.scala 332:35]
  assign data16_15_io_needForward_1_0 = io_needForward_1_0; // @[StoreQueueData.scala 332:35]
  assign data16_15_io_needForward_1_1 = io_needForward_1_1; // @[StoreQueueData.scala 332:35]
endmodule

