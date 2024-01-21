module RequestBuffer(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input  [6:0]  io_in_bits_set,
  input  [21:0] io_in_bits_tag,
  input  [5:0]  io_in_bits_off,
  input  [2:0]  io_in_bits_opcode,
  input  [2:0]  io_in_bits_param,
  input  [2:0]  io_in_bits_size,
  input  [4:0]  io_in_bits_sourceId,
  input  [3:0]  io_in_bits_reqSource,
  input         io_out_ready,
  output        io_out_valid,
  output [2:0]  io_out_bits_channel,
  output [6:0]  io_out_bits_set,
  output [21:0] io_out_bits_tag,
  output [5:0]  io_out_bits_off,
  output [2:0]  io_out_bits_opcode,
  output [2:0]  io_out_bits_param,
  output [2:0]  io_out_bits_size,
  output [4:0]  io_out_bits_sourceId,
  output [1:0]  io_out_bits_bufIdx,
  output        io_out_bits_needProbeAckData,
  output        io_out_bits_mshrTask,
  output [7:0]  io_out_bits_mshrId,
  output        io_out_bits_useProbeData,
  output        io_out_bits_dirty,
  output [2:0]  io_out_bits_way,
  output        io_out_bits_meta_dirty,
  output [1:0]  io_out_bits_meta_state,
  output        io_out_bits_meta_clients,
  output        io_out_bits_meta_accessed,
  output        io_out_bits_metaWen,
  output        io_out_bits_tagWen,
  output        io_out_bits_dsWen,
  output        io_out_bits_replTask,
  output [3:0]  io_out_bits_reqSource,
  input         io_mshrInfo_0_valid,
  input  [6:0]  io_mshrInfo_0_bits_set,
  input  [21:0] io_mshrInfo_0_bits_reqTag,
  input         io_mshrInfo_0_bits_willFree,
  input         io_mshrInfo_0_bits_needRelease,
  input  [21:0] io_mshrInfo_0_bits_metaTag,
  input         io_mshrInfo_0_bits_isAcqOrPrefetch,
  input         io_mshrInfo_1_valid,
  input  [6:0]  io_mshrInfo_1_bits_set,
  input  [21:0] io_mshrInfo_1_bits_reqTag,
  input         io_mshrInfo_1_bits_willFree,
  input         io_mshrInfo_1_bits_needRelease,
  input  [21:0] io_mshrInfo_1_bits_metaTag,
  input         io_mshrInfo_1_bits_isAcqOrPrefetch,
  input         io_mshrInfo_2_valid,
  input  [6:0]  io_mshrInfo_2_bits_set,
  input  [21:0] io_mshrInfo_2_bits_reqTag,
  input         io_mshrInfo_2_bits_willFree,
  input         io_mshrInfo_2_bits_needRelease,
  input  [21:0] io_mshrInfo_2_bits_metaTag,
  input         io_mshrInfo_2_bits_isAcqOrPrefetch,
  input         io_mshrInfo_3_valid,
  input  [6:0]  io_mshrInfo_3_bits_set,
  input  [21:0] io_mshrInfo_3_bits_reqTag,
  input         io_mshrInfo_3_bits_willFree,
  input         io_mshrInfo_3_bits_needRelease,
  input  [21:0] io_mshrInfo_3_bits_metaTag,
  input         io_mshrInfo_3_bits_isAcqOrPrefetch,
  input         io_mshrInfo_4_valid,
  input  [6:0]  io_mshrInfo_4_bits_set,
  input  [21:0] io_mshrInfo_4_bits_reqTag,
  input         io_mshrInfo_4_bits_willFree,
  input         io_mshrInfo_4_bits_needRelease,
  input  [21:0] io_mshrInfo_4_bits_metaTag,
  input         io_mshrInfo_4_bits_isAcqOrPrefetch,
  input         io_mshrInfo_5_valid,
  input  [6:0]  io_mshrInfo_5_bits_set,
  input  [21:0] io_mshrInfo_5_bits_reqTag,
  input         io_mshrInfo_5_bits_willFree,
  input         io_mshrInfo_5_bits_needRelease,
  input  [21:0] io_mshrInfo_5_bits_metaTag,
  input         io_mshrInfo_5_bits_isAcqOrPrefetch,
  input         io_mshrInfo_6_valid,
  input  [6:0]  io_mshrInfo_6_bits_set,
  input  [21:0] io_mshrInfo_6_bits_reqTag,
  input         io_mshrInfo_6_bits_willFree,
  input         io_mshrInfo_6_bits_needRelease,
  input  [21:0] io_mshrInfo_6_bits_metaTag,
  input         io_mshrInfo_6_bits_isAcqOrPrefetch,
  input         io_mshrInfo_7_valid,
  input  [6:0]  io_mshrInfo_7_bits_set,
  input  [21:0] io_mshrInfo_7_bits_reqTag,
  input         io_mshrInfo_7_bits_willFree,
  input         io_mshrInfo_7_bits_needRelease,
  input  [21:0] io_mshrInfo_7_bits_metaTag,
  input         io_mshrInfo_7_bits_isAcqOrPrefetch,
  input         io_mshrInfo_8_valid,
  input  [6:0]  io_mshrInfo_8_bits_set,
  input  [21:0] io_mshrInfo_8_bits_reqTag,
  input         io_mshrInfo_8_bits_willFree,
  input         io_mshrInfo_8_bits_needRelease,
  input  [21:0] io_mshrInfo_8_bits_metaTag,
  input         io_mshrInfo_8_bits_isAcqOrPrefetch,
  input         io_mshrInfo_9_valid,
  input  [6:0]  io_mshrInfo_9_bits_set,
  input  [21:0] io_mshrInfo_9_bits_reqTag,
  input         io_mshrInfo_9_bits_willFree,
  input         io_mshrInfo_9_bits_needRelease,
  input  [21:0] io_mshrInfo_9_bits_metaTag,
  input         io_mshrInfo_9_bits_isAcqOrPrefetch,
  input         io_mshrInfo_10_valid,
  input  [6:0]  io_mshrInfo_10_bits_set,
  input  [21:0] io_mshrInfo_10_bits_reqTag,
  input         io_mshrInfo_10_bits_willFree,
  input         io_mshrInfo_10_bits_needRelease,
  input  [21:0] io_mshrInfo_10_bits_metaTag,
  input         io_mshrInfo_10_bits_isAcqOrPrefetch,
  input         io_mshrInfo_11_valid,
  input  [6:0]  io_mshrInfo_11_bits_set,
  input  [21:0] io_mshrInfo_11_bits_reqTag,
  input         io_mshrInfo_11_bits_willFree,
  input         io_mshrInfo_11_bits_needRelease,
  input  [21:0] io_mshrInfo_11_bits_metaTag,
  input         io_mshrInfo_11_bits_isAcqOrPrefetch,
  input         io_mshrInfo_12_valid,
  input  [6:0]  io_mshrInfo_12_bits_set,
  input  [21:0] io_mshrInfo_12_bits_reqTag,
  input         io_mshrInfo_12_bits_willFree,
  input         io_mshrInfo_12_bits_needRelease,
  input  [21:0] io_mshrInfo_12_bits_metaTag,
  input         io_mshrInfo_12_bits_isAcqOrPrefetch,
  input         io_mshrInfo_13_valid,
  input  [6:0]  io_mshrInfo_13_bits_set,
  input  [21:0] io_mshrInfo_13_bits_reqTag,
  input         io_mshrInfo_13_bits_willFree,
  input         io_mshrInfo_13_bits_needRelease,
  input  [21:0] io_mshrInfo_13_bits_metaTag,
  input         io_mshrInfo_13_bits_isAcqOrPrefetch,
  input         io_mshrInfo_14_valid,
  input  [6:0]  io_mshrInfo_14_bits_set,
  input  [21:0] io_mshrInfo_14_bits_reqTag,
  input         io_mshrInfo_14_bits_willFree,
  input         io_mshrInfo_14_bits_needRelease,
  input  [21:0] io_mshrInfo_14_bits_metaTag,
  input         io_mshrInfo_14_bits_isAcqOrPrefetch,
  input         io_mshrInfo_15_valid,
  input  [6:0]  io_mshrInfo_15_bits_set,
  input  [21:0] io_mshrInfo_15_bits_reqTag,
  input         io_mshrInfo_15_bits_willFree,
  input         io_mshrInfo_15_bits_needRelease,
  input  [21:0] io_mshrInfo_15_bits_metaTag,
  input         io_mshrInfo_15_bits_isAcqOrPrefetch,
  input         io_mainPipeBlock_0,
  input         io_mainPipeBlock_1,
  output [21:0] io_ATag,
  output [6:0]  io_ASet,
  input         io_s1Entrance_valid,
  input  [6:0]  io_s1Entrance_bits_set
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
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
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
`endif // RANDOMIZE_REG_INIT
  wire  issueArb_clock; // @[RequestBuffer.scala 71:24]
  wire  issueArb_reset; // @[RequestBuffer.scala 71:24]
  wire  issueArb_io_in_0_valid; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_in_0_bits_task_channel; // @[RequestBuffer.scala 71:24]
  wire [6:0] issueArb_io_in_0_bits_task_set; // @[RequestBuffer.scala 71:24]
  wire [21:0] issueArb_io_in_0_bits_task_tag; // @[RequestBuffer.scala 71:24]
  wire [5:0] issueArb_io_in_0_bits_task_off; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_in_0_bits_task_opcode; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_in_0_bits_task_param; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_in_0_bits_task_size; // @[RequestBuffer.scala 71:24]
  wire [4:0] issueArb_io_in_0_bits_task_sourceId; // @[RequestBuffer.scala 71:24]
  wire [3:0] issueArb_io_in_0_bits_task_reqSource; // @[RequestBuffer.scala 71:24]
  wire  issueArb_io_in_1_valid; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_in_1_bits_task_channel; // @[RequestBuffer.scala 71:24]
  wire [6:0] issueArb_io_in_1_bits_task_set; // @[RequestBuffer.scala 71:24]
  wire [21:0] issueArb_io_in_1_bits_task_tag; // @[RequestBuffer.scala 71:24]
  wire [5:0] issueArb_io_in_1_bits_task_off; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_in_1_bits_task_opcode; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_in_1_bits_task_param; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_in_1_bits_task_size; // @[RequestBuffer.scala 71:24]
  wire [4:0] issueArb_io_in_1_bits_task_sourceId; // @[RequestBuffer.scala 71:24]
  wire [3:0] issueArb_io_in_1_bits_task_reqSource; // @[RequestBuffer.scala 71:24]
  wire  issueArb_io_in_2_valid; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_in_2_bits_task_channel; // @[RequestBuffer.scala 71:24]
  wire [6:0] issueArb_io_in_2_bits_task_set; // @[RequestBuffer.scala 71:24]
  wire [21:0] issueArb_io_in_2_bits_task_tag; // @[RequestBuffer.scala 71:24]
  wire [5:0] issueArb_io_in_2_bits_task_off; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_in_2_bits_task_opcode; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_in_2_bits_task_param; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_in_2_bits_task_size; // @[RequestBuffer.scala 71:24]
  wire [4:0] issueArb_io_in_2_bits_task_sourceId; // @[RequestBuffer.scala 71:24]
  wire [3:0] issueArb_io_in_2_bits_task_reqSource; // @[RequestBuffer.scala 71:24]
  wire  issueArb_io_in_3_valid; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_in_3_bits_task_channel; // @[RequestBuffer.scala 71:24]
  wire [6:0] issueArb_io_in_3_bits_task_set; // @[RequestBuffer.scala 71:24]
  wire [21:0] issueArb_io_in_3_bits_task_tag; // @[RequestBuffer.scala 71:24]
  wire [5:0] issueArb_io_in_3_bits_task_off; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_in_3_bits_task_opcode; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_in_3_bits_task_param; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_in_3_bits_task_size; // @[RequestBuffer.scala 71:24]
  wire [4:0] issueArb_io_in_3_bits_task_sourceId; // @[RequestBuffer.scala 71:24]
  wire [3:0] issueArb_io_in_3_bits_task_reqSource; // @[RequestBuffer.scala 71:24]
  wire  issueArb_io_out_ready; // @[RequestBuffer.scala 71:24]
  wire  issueArb_io_out_valid; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_out_bits_task_channel; // @[RequestBuffer.scala 71:24]
  wire [6:0] issueArb_io_out_bits_task_set; // @[RequestBuffer.scala 71:24]
  wire [21:0] issueArb_io_out_bits_task_tag; // @[RequestBuffer.scala 71:24]
  wire [5:0] issueArb_io_out_bits_task_off; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_out_bits_task_opcode; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_out_bits_task_param; // @[RequestBuffer.scala 71:24]
  wire [2:0] issueArb_io_out_bits_task_size; // @[RequestBuffer.scala 71:24]
  wire [4:0] issueArb_io_out_bits_task_sourceId; // @[RequestBuffer.scala 71:24]
  wire [3:0] issueArb_io_out_bits_task_reqSource; // @[RequestBuffer.scala 71:24]
  wire [1:0] issueArb_io_chosen; // @[RequestBuffer.scala 71:24]
  wire  chosenQ_clock; // @[RequestBuffer.scala 72:23]
  wire  chosenQ_reset; // @[RequestBuffer.scala 72:23]
  wire  chosenQ_io_enq_ready; // @[RequestBuffer.scala 72:23]
  wire  chosenQ_io_enq_valid; // @[RequestBuffer.scala 72:23]
  wire [2:0] chosenQ_io_enq_bits_bits_task_channel; // @[RequestBuffer.scala 72:23]
  wire [6:0] chosenQ_io_enq_bits_bits_task_set; // @[RequestBuffer.scala 72:23]
  wire [21:0] chosenQ_io_enq_bits_bits_task_tag; // @[RequestBuffer.scala 72:23]
  wire [5:0] chosenQ_io_enq_bits_bits_task_off; // @[RequestBuffer.scala 72:23]
  wire [2:0] chosenQ_io_enq_bits_bits_task_opcode; // @[RequestBuffer.scala 72:23]
  wire [2:0] chosenQ_io_enq_bits_bits_task_param; // @[RequestBuffer.scala 72:23]
  wire [2:0] chosenQ_io_enq_bits_bits_task_size; // @[RequestBuffer.scala 72:23]
  wire [4:0] chosenQ_io_enq_bits_bits_task_sourceId; // @[RequestBuffer.scala 72:23]
  wire [3:0] chosenQ_io_enq_bits_bits_task_reqSource; // @[RequestBuffer.scala 72:23]
  wire [1:0] chosenQ_io_enq_bits_id; // @[RequestBuffer.scala 72:23]
  wire  chosenQ_io_deq_ready; // @[RequestBuffer.scala 72:23]
  wire  chosenQ_io_deq_valid; // @[RequestBuffer.scala 72:23]
  wire [2:0] chosenQ_io_deq_bits_bits_task_channel; // @[RequestBuffer.scala 72:23]
  wire [6:0] chosenQ_io_deq_bits_bits_task_set; // @[RequestBuffer.scala 72:23]
  wire [21:0] chosenQ_io_deq_bits_bits_task_tag; // @[RequestBuffer.scala 72:23]
  wire [5:0] chosenQ_io_deq_bits_bits_task_off; // @[RequestBuffer.scala 72:23]
  wire [2:0] chosenQ_io_deq_bits_bits_task_opcode; // @[RequestBuffer.scala 72:23]
  wire [2:0] chosenQ_io_deq_bits_bits_task_param; // @[RequestBuffer.scala 72:23]
  wire [2:0] chosenQ_io_deq_bits_bits_task_size; // @[RequestBuffer.scala 72:23]
  wire [4:0] chosenQ_io_deq_bits_bits_task_sourceId; // @[RequestBuffer.scala 72:23]
  wire [1:0] chosenQ_io_deq_bits_bits_task_bufIdx; // @[RequestBuffer.scala 72:23]
  wire  chosenQ_io_deq_bits_bits_task_needProbeAckData; // @[RequestBuffer.scala 72:23]
  wire  chosenQ_io_deq_bits_bits_task_mshrTask; // @[RequestBuffer.scala 72:23]
  wire [7:0] chosenQ_io_deq_bits_bits_task_mshrId; // @[RequestBuffer.scala 72:23]
  wire  chosenQ_io_deq_bits_bits_task_useProbeData; // @[RequestBuffer.scala 72:23]
  wire  chosenQ_io_deq_bits_bits_task_dirty; // @[RequestBuffer.scala 72:23]
  wire [2:0] chosenQ_io_deq_bits_bits_task_way; // @[RequestBuffer.scala 72:23]
  wire  chosenQ_io_deq_bits_bits_task_meta_dirty; // @[RequestBuffer.scala 72:23]
  wire [1:0] chosenQ_io_deq_bits_bits_task_meta_state; // @[RequestBuffer.scala 72:23]
  wire  chosenQ_io_deq_bits_bits_task_meta_clients; // @[RequestBuffer.scala 72:23]
  wire  chosenQ_io_deq_bits_bits_task_meta_accessed; // @[RequestBuffer.scala 72:23]
  wire  chosenQ_io_deq_bits_bits_task_metaWen; // @[RequestBuffer.scala 72:23]
  wire  chosenQ_io_deq_bits_bits_task_tagWen; // @[RequestBuffer.scala 72:23]
  wire  chosenQ_io_deq_bits_bits_task_dsWen; // @[RequestBuffer.scala 72:23]
  wire  chosenQ_io_deq_bits_bits_task_replTask; // @[RequestBuffer.scala 72:23]
  wire [3:0] chosenQ_io_deq_bits_bits_task_reqSource; // @[RequestBuffer.scala 72:23]
  wire [1:0] chosenQ_io_deq_bits_id; // @[RequestBuffer.scala 72:23]
  reg  buffer_0_valid; // @[RequestBuffer.scala 70:23]
  reg  buffer_0_rdy; // @[RequestBuffer.scala 70:23]
  reg [2:0] buffer_0_task_channel; // @[RequestBuffer.scala 70:23]
  reg [6:0] buffer_0_task_set; // @[RequestBuffer.scala 70:23]
  reg [21:0] buffer_0_task_tag; // @[RequestBuffer.scala 70:23]
  reg [5:0] buffer_0_task_off; // @[RequestBuffer.scala 70:23]
  reg [2:0] buffer_0_task_opcode; // @[RequestBuffer.scala 70:23]
  reg [2:0] buffer_0_task_param; // @[RequestBuffer.scala 70:23]
  reg [2:0] buffer_0_task_size; // @[RequestBuffer.scala 70:23]
  reg [4:0] buffer_0_task_sourceId; // @[RequestBuffer.scala 70:23]
  reg [3:0] buffer_0_task_reqSource; // @[RequestBuffer.scala 70:23]
  reg [3:0] buffer_0_waitMP; // @[RequestBuffer.scala 70:23]
  reg [15:0] buffer_0_waitMS; // @[RequestBuffer.scala 70:23]
  reg  buffer_1_valid; // @[RequestBuffer.scala 70:23]
  reg  buffer_1_rdy; // @[RequestBuffer.scala 70:23]
  reg [2:0] buffer_1_task_channel; // @[RequestBuffer.scala 70:23]
  reg [6:0] buffer_1_task_set; // @[RequestBuffer.scala 70:23]
  reg [21:0] buffer_1_task_tag; // @[RequestBuffer.scala 70:23]
  reg [5:0] buffer_1_task_off; // @[RequestBuffer.scala 70:23]
  reg [2:0] buffer_1_task_opcode; // @[RequestBuffer.scala 70:23]
  reg [2:0] buffer_1_task_param; // @[RequestBuffer.scala 70:23]
  reg [2:0] buffer_1_task_size; // @[RequestBuffer.scala 70:23]
  reg [4:0] buffer_1_task_sourceId; // @[RequestBuffer.scala 70:23]
  reg [3:0] buffer_1_task_reqSource; // @[RequestBuffer.scala 70:23]
  reg [3:0] buffer_1_waitMP; // @[RequestBuffer.scala 70:23]
  reg [15:0] buffer_1_waitMS; // @[RequestBuffer.scala 70:23]
  reg  buffer_2_valid; // @[RequestBuffer.scala 70:23]
  reg  buffer_2_rdy; // @[RequestBuffer.scala 70:23]
  reg [2:0] buffer_2_task_channel; // @[RequestBuffer.scala 70:23]
  reg [6:0] buffer_2_task_set; // @[RequestBuffer.scala 70:23]
  reg [21:0] buffer_2_task_tag; // @[RequestBuffer.scala 70:23]
  reg [5:0] buffer_2_task_off; // @[RequestBuffer.scala 70:23]
  reg [2:0] buffer_2_task_opcode; // @[RequestBuffer.scala 70:23]
  reg [2:0] buffer_2_task_param; // @[RequestBuffer.scala 70:23]
  reg [2:0] buffer_2_task_size; // @[RequestBuffer.scala 70:23]
  reg [4:0] buffer_2_task_sourceId; // @[RequestBuffer.scala 70:23]
  reg [3:0] buffer_2_task_reqSource; // @[RequestBuffer.scala 70:23]
  reg [3:0] buffer_2_waitMP; // @[RequestBuffer.scala 70:23]
  reg [15:0] buffer_2_waitMS; // @[RequestBuffer.scala 70:23]
  reg  buffer_3_valid; // @[RequestBuffer.scala 70:23]
  reg  buffer_3_rdy; // @[RequestBuffer.scala 70:23]
  reg [2:0] buffer_3_task_channel; // @[RequestBuffer.scala 70:23]
  reg [6:0] buffer_3_task_set; // @[RequestBuffer.scala 70:23]
  reg [21:0] buffer_3_task_tag; // @[RequestBuffer.scala 70:23]
  reg [5:0] buffer_3_task_off; // @[RequestBuffer.scala 70:23]
  reg [2:0] buffer_3_task_opcode; // @[RequestBuffer.scala 70:23]
  reg [2:0] buffer_3_task_param; // @[RequestBuffer.scala 70:23]
  reg [2:0] buffer_3_task_size; // @[RequestBuffer.scala 70:23]
  reg [4:0] buffer_3_task_sourceId; // @[RequestBuffer.scala 70:23]
  reg [3:0] buffer_3_task_reqSource; // @[RequestBuffer.scala 70:23]
  reg [3:0] buffer_3_waitMP; // @[RequestBuffer.scala 70:23]
  reg [15:0] buffer_3_waitMS; // @[RequestBuffer.scala 70:23]
  wire [3:0] _full_T = {buffer_0_valid,buffer_1_valid,buffer_2_valid,buffer_3_valid}; // @[Cat.scala 31:58]
  wire  full = &_full_T; // @[RequestBuffer.scala 107:42]
  wire  _canFlow_T = ~full; // @[RequestBuffer.scala 109:27]
  wire  _canFlow_T_7 = io_in_bits_set == io_mshrInfo_0_bits_set & (io_in_bits_tag == io_mshrInfo_0_bits_reqTag |
    io_in_bits_tag == io_mshrInfo_0_bits_metaTag & io_mshrInfo_0_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _canFlow_T_10 = io_mshrInfo_0_valid & _canFlow_T_7 & ~io_mshrInfo_0_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _canFlow_T_16 = io_in_bits_set == io_mshrInfo_1_bits_set & (io_in_bits_tag == io_mshrInfo_1_bits_reqTag |
    io_in_bits_tag == io_mshrInfo_1_bits_metaTag & io_mshrInfo_1_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _canFlow_T_19 = io_mshrInfo_1_valid & _canFlow_T_16 & ~io_mshrInfo_1_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _canFlow_T_25 = io_in_bits_set == io_mshrInfo_2_bits_set & (io_in_bits_tag == io_mshrInfo_2_bits_reqTag |
    io_in_bits_tag == io_mshrInfo_2_bits_metaTag & io_mshrInfo_2_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _canFlow_T_28 = io_mshrInfo_2_valid & _canFlow_T_25 & ~io_mshrInfo_2_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _canFlow_T_34 = io_in_bits_set == io_mshrInfo_3_bits_set & (io_in_bits_tag == io_mshrInfo_3_bits_reqTag |
    io_in_bits_tag == io_mshrInfo_3_bits_metaTag & io_mshrInfo_3_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _canFlow_T_37 = io_mshrInfo_3_valid & _canFlow_T_34 & ~io_mshrInfo_3_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _canFlow_T_43 = io_in_bits_set == io_mshrInfo_4_bits_set & (io_in_bits_tag == io_mshrInfo_4_bits_reqTag |
    io_in_bits_tag == io_mshrInfo_4_bits_metaTag & io_mshrInfo_4_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _canFlow_T_46 = io_mshrInfo_4_valid & _canFlow_T_43 & ~io_mshrInfo_4_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _canFlow_T_52 = io_in_bits_set == io_mshrInfo_5_bits_set & (io_in_bits_tag == io_mshrInfo_5_bits_reqTag |
    io_in_bits_tag == io_mshrInfo_5_bits_metaTag & io_mshrInfo_5_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _canFlow_T_55 = io_mshrInfo_5_valid & _canFlow_T_52 & ~io_mshrInfo_5_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _canFlow_T_61 = io_in_bits_set == io_mshrInfo_6_bits_set & (io_in_bits_tag == io_mshrInfo_6_bits_reqTag |
    io_in_bits_tag == io_mshrInfo_6_bits_metaTag & io_mshrInfo_6_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _canFlow_T_64 = io_mshrInfo_6_valid & _canFlow_T_61 & ~io_mshrInfo_6_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _canFlow_T_70 = io_in_bits_set == io_mshrInfo_7_bits_set & (io_in_bits_tag == io_mshrInfo_7_bits_reqTag |
    io_in_bits_tag == io_mshrInfo_7_bits_metaTag & io_mshrInfo_7_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _canFlow_T_73 = io_mshrInfo_7_valid & _canFlow_T_70 & ~io_mshrInfo_7_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _canFlow_T_79 = io_in_bits_set == io_mshrInfo_8_bits_set & (io_in_bits_tag == io_mshrInfo_8_bits_reqTag |
    io_in_bits_tag == io_mshrInfo_8_bits_metaTag & io_mshrInfo_8_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _canFlow_T_82 = io_mshrInfo_8_valid & _canFlow_T_79 & ~io_mshrInfo_8_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _canFlow_T_88 = io_in_bits_set == io_mshrInfo_9_bits_set & (io_in_bits_tag == io_mshrInfo_9_bits_reqTag |
    io_in_bits_tag == io_mshrInfo_9_bits_metaTag & io_mshrInfo_9_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _canFlow_T_91 = io_mshrInfo_9_valid & _canFlow_T_88 & ~io_mshrInfo_9_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _canFlow_T_97 = io_in_bits_set == io_mshrInfo_10_bits_set & (io_in_bits_tag == io_mshrInfo_10_bits_reqTag |
    io_in_bits_tag == io_mshrInfo_10_bits_metaTag & io_mshrInfo_10_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _canFlow_T_100 = io_mshrInfo_10_valid & _canFlow_T_97 & ~io_mshrInfo_10_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _canFlow_T_106 = io_in_bits_set == io_mshrInfo_11_bits_set & (io_in_bits_tag == io_mshrInfo_11_bits_reqTag |
    io_in_bits_tag == io_mshrInfo_11_bits_metaTag & io_mshrInfo_11_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _canFlow_T_109 = io_mshrInfo_11_valid & _canFlow_T_106 & ~io_mshrInfo_11_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _canFlow_T_115 = io_in_bits_set == io_mshrInfo_12_bits_set & (io_in_bits_tag == io_mshrInfo_12_bits_reqTag |
    io_in_bits_tag == io_mshrInfo_12_bits_metaTag & io_mshrInfo_12_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _canFlow_T_118 = io_mshrInfo_12_valid & _canFlow_T_115 & ~io_mshrInfo_12_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _canFlow_T_124 = io_in_bits_set == io_mshrInfo_13_bits_set & (io_in_bits_tag == io_mshrInfo_13_bits_reqTag |
    io_in_bits_tag == io_mshrInfo_13_bits_metaTag & io_mshrInfo_13_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _canFlow_T_127 = io_mshrInfo_13_valid & _canFlow_T_124 & ~io_mshrInfo_13_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _canFlow_T_133 = io_in_bits_set == io_mshrInfo_14_bits_set & (io_in_bits_tag == io_mshrInfo_14_bits_reqTag |
    io_in_bits_tag == io_mshrInfo_14_bits_metaTag & io_mshrInfo_14_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _canFlow_T_136 = io_mshrInfo_14_valid & _canFlow_T_133 & ~io_mshrInfo_14_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _canFlow_T_142 = io_in_bits_set == io_mshrInfo_15_bits_set & (io_in_bits_tag == io_mshrInfo_15_bits_reqTag |
    io_in_bits_tag == io_mshrInfo_15_bits_metaTag & io_mshrInfo_15_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _canFlow_T_145 = io_mshrInfo_15_valid & _canFlow_T_142 & ~io_mshrInfo_15_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire [7:0] canFlow_lo = {_canFlow_T_73,_canFlow_T_64,_canFlow_T_55,_canFlow_T_46,_canFlow_T_37,_canFlow_T_28,
    _canFlow_T_19,_canFlow_T_10}; // @[RequestBuffer.scala 86:62]
  wire [15:0] _canFlow_T_146 = {_canFlow_T_145,_canFlow_T_136,_canFlow_T_127,_canFlow_T_118,_canFlow_T_109,
    _canFlow_T_100,_canFlow_T_91,_canFlow_T_82,canFlow_lo}; // @[RequestBuffer.scala 86:62]
  wire  _canFlow_T_147 = |_canFlow_T_146; // @[RequestBuffer.scala 87:55]
  wire  _canFlow_T_148 = ~_canFlow_T_147; // @[RequestBuffer.scala 109:36]
  wire [1:0] _canFlow_T_152 = {io_mainPipeBlock_0,io_mainPipeBlock_1}; // @[Cat.scala 31:58]
  wire  _canFlow_T_154 = ~(|_canFlow_T_152); // @[RequestBuffer.scala 109:70]
  wire  canFlow = ~full & ~_canFlow_T_147 & ~chosenQ_io_deq_valid & ~(|_canFlow_T_152); // @[RequestBuffer.scala 109:67]
  wire  doFlow = canFlow & io_out_ready; // @[RequestBuffer.scala 110:25]
  wire [28:0] _io_hasLatePF_T_1 = {io_in_bits_tag,io_in_bits_set}; // @[Cat.scala 31:58]
  wire [28:0] _io_hasLatePF_T_2 = {io_mshrInfo_0_bits_reqTag,io_mshrInfo_0_bits_set}; // @[Cat.scala 31:58]
  wire  _io_hasLatePF_T_3 = _io_hasLatePF_T_1 == _io_hasLatePF_T_2; // @[RequestBuffer.scala 79:70]
  wire [28:0] _io_hasLatePF_T_16 = {io_mshrInfo_1_bits_reqTag,io_mshrInfo_1_bits_set}; // @[Cat.scala 31:58]
  wire  _io_hasLatePF_T_17 = _io_hasLatePF_T_1 == _io_hasLatePF_T_16; // @[RequestBuffer.scala 79:70]
  wire [28:0] _io_hasLatePF_T_30 = {io_mshrInfo_2_bits_reqTag,io_mshrInfo_2_bits_set}; // @[Cat.scala 31:58]
  wire  _io_hasLatePF_T_31 = _io_hasLatePF_T_1 == _io_hasLatePF_T_30; // @[RequestBuffer.scala 79:70]
  wire [28:0] _io_hasLatePF_T_44 = {io_mshrInfo_3_bits_reqTag,io_mshrInfo_3_bits_set}; // @[Cat.scala 31:58]
  wire  _io_hasLatePF_T_45 = _io_hasLatePF_T_1 == _io_hasLatePF_T_44; // @[RequestBuffer.scala 79:70]
  wire [28:0] _io_hasLatePF_T_58 = {io_mshrInfo_4_bits_reqTag,io_mshrInfo_4_bits_set}; // @[Cat.scala 31:58]
  wire  _io_hasLatePF_T_59 = _io_hasLatePF_T_1 == _io_hasLatePF_T_58; // @[RequestBuffer.scala 79:70]
  wire [28:0] _io_hasLatePF_T_72 = {io_mshrInfo_5_bits_reqTag,io_mshrInfo_5_bits_set}; // @[Cat.scala 31:58]
  wire  _io_hasLatePF_T_73 = _io_hasLatePF_T_1 == _io_hasLatePF_T_72; // @[RequestBuffer.scala 79:70]
  wire [28:0] _io_hasLatePF_T_86 = {io_mshrInfo_6_bits_reqTag,io_mshrInfo_6_bits_set}; // @[Cat.scala 31:58]
  wire  _io_hasLatePF_T_87 = _io_hasLatePF_T_1 == _io_hasLatePF_T_86; // @[RequestBuffer.scala 79:70]
  wire [28:0] _io_hasLatePF_T_100 = {io_mshrInfo_7_bits_reqTag,io_mshrInfo_7_bits_set}; // @[Cat.scala 31:58]
  wire  _io_hasLatePF_T_101 = _io_hasLatePF_T_1 == _io_hasLatePF_T_100; // @[RequestBuffer.scala 79:70]
  wire [28:0] _io_hasLatePF_T_114 = {io_mshrInfo_8_bits_reqTag,io_mshrInfo_8_bits_set}; // @[Cat.scala 31:58]
  wire  _io_hasLatePF_T_115 = _io_hasLatePF_T_1 == _io_hasLatePF_T_114; // @[RequestBuffer.scala 79:70]
  wire [28:0] _io_hasLatePF_T_128 = {io_mshrInfo_9_bits_reqTag,io_mshrInfo_9_bits_set}; // @[Cat.scala 31:58]
  wire  _io_hasLatePF_T_129 = _io_hasLatePF_T_1 == _io_hasLatePF_T_128; // @[RequestBuffer.scala 79:70]
  wire [28:0] _io_hasLatePF_T_142 = {io_mshrInfo_10_bits_reqTag,io_mshrInfo_10_bits_set}; // @[Cat.scala 31:58]
  wire  _io_hasLatePF_T_143 = _io_hasLatePF_T_1 == _io_hasLatePF_T_142; // @[RequestBuffer.scala 79:70]
  wire [28:0] _io_hasLatePF_T_156 = {io_mshrInfo_11_bits_reqTag,io_mshrInfo_11_bits_set}; // @[Cat.scala 31:58]
  wire  _io_hasLatePF_T_157 = _io_hasLatePF_T_1 == _io_hasLatePF_T_156; // @[RequestBuffer.scala 79:70]
  wire [28:0] _io_hasLatePF_T_170 = {io_mshrInfo_12_bits_reqTag,io_mshrInfo_12_bits_set}; // @[Cat.scala 31:58]
  wire  _io_hasLatePF_T_171 = _io_hasLatePF_T_1 == _io_hasLatePF_T_170; // @[RequestBuffer.scala 79:70]
  wire [28:0] _io_hasLatePF_T_184 = {io_mshrInfo_13_bits_reqTag,io_mshrInfo_13_bits_set}; // @[Cat.scala 31:58]
  wire  _io_hasLatePF_T_185 = _io_hasLatePF_T_1 == _io_hasLatePF_T_184; // @[RequestBuffer.scala 79:70]
  wire [28:0] _io_hasLatePF_T_198 = {io_mshrInfo_14_bits_reqTag,io_mshrInfo_14_bits_set}; // @[Cat.scala 31:58]
  wire  _io_hasLatePF_T_199 = _io_hasLatePF_T_1 == _io_hasLatePF_T_198; // @[RequestBuffer.scala 79:70]
  wire [28:0] _io_hasLatePF_T_212 = {io_mshrInfo_15_bits_reqTag,io_mshrInfo_15_bits_set}; // @[Cat.scala 31:58]
  wire  _io_hasLatePF_T_213 = _io_hasLatePF_T_1 == _io_hasLatePF_T_212; // @[RequestBuffer.scala 79:70]
  wire  isPrefetch = io_in_bits_opcode == 3'h5; // @[RequestBuffer.scala 115:42]
  wire  _dupMask_T_4 = io_mshrInfo_0_valid & io_mshrInfo_0_bits_isAcqOrPrefetch & _io_hasLatePF_T_3; // @[RequestBuffer.scala 118:41]
  wire  _dupMask_T_9 = io_mshrInfo_1_valid & io_mshrInfo_1_bits_isAcqOrPrefetch & _io_hasLatePF_T_17; // @[RequestBuffer.scala 118:41]
  wire  _dupMask_T_14 = io_mshrInfo_2_valid & io_mshrInfo_2_bits_isAcqOrPrefetch & _io_hasLatePF_T_31; // @[RequestBuffer.scala 118:41]
  wire  _dupMask_T_19 = io_mshrInfo_3_valid & io_mshrInfo_3_bits_isAcqOrPrefetch & _io_hasLatePF_T_45; // @[RequestBuffer.scala 118:41]
  wire  _dupMask_T_24 = io_mshrInfo_4_valid & io_mshrInfo_4_bits_isAcqOrPrefetch & _io_hasLatePF_T_59; // @[RequestBuffer.scala 118:41]
  wire  _dupMask_T_29 = io_mshrInfo_5_valid & io_mshrInfo_5_bits_isAcqOrPrefetch & _io_hasLatePF_T_73; // @[RequestBuffer.scala 118:41]
  wire  _dupMask_T_34 = io_mshrInfo_6_valid & io_mshrInfo_6_bits_isAcqOrPrefetch & _io_hasLatePF_T_87; // @[RequestBuffer.scala 118:41]
  wire  _dupMask_T_39 = io_mshrInfo_7_valid & io_mshrInfo_7_bits_isAcqOrPrefetch & _io_hasLatePF_T_101; // @[RequestBuffer.scala 118:41]
  wire  _dupMask_T_44 = io_mshrInfo_8_valid & io_mshrInfo_8_bits_isAcqOrPrefetch & _io_hasLatePF_T_115; // @[RequestBuffer.scala 118:41]
  wire  _dupMask_T_49 = io_mshrInfo_9_valid & io_mshrInfo_9_bits_isAcqOrPrefetch & _io_hasLatePF_T_129; // @[RequestBuffer.scala 118:41]
  wire  _dupMask_T_54 = io_mshrInfo_10_valid & io_mshrInfo_10_bits_isAcqOrPrefetch & _io_hasLatePF_T_143; // @[RequestBuffer.scala 118:41]
  wire  _dupMask_T_59 = io_mshrInfo_11_valid & io_mshrInfo_11_bits_isAcqOrPrefetch & _io_hasLatePF_T_157; // @[RequestBuffer.scala 118:41]
  wire  _dupMask_T_64 = io_mshrInfo_12_valid & io_mshrInfo_12_bits_isAcqOrPrefetch & _io_hasLatePF_T_171; // @[RequestBuffer.scala 118:41]
  wire  _dupMask_T_69 = io_mshrInfo_13_valid & io_mshrInfo_13_bits_isAcqOrPrefetch & _io_hasLatePF_T_185; // @[RequestBuffer.scala 118:41]
  wire  _dupMask_T_74 = io_mshrInfo_14_valid & io_mshrInfo_14_bits_isAcqOrPrefetch & _io_hasLatePF_T_199; // @[RequestBuffer.scala 118:41]
  wire  _dupMask_T_79 = io_mshrInfo_15_valid & io_mshrInfo_15_bits_isAcqOrPrefetch & _io_hasLatePF_T_213; // @[RequestBuffer.scala 118:41]
  wire [28:0] _dupMask_T_81 = {buffer_0_task_tag,buffer_0_task_set}; // @[Cat.scala 31:58]
  wire  _dupMask_T_82 = _io_hasLatePF_T_1 == _dupMask_T_81; // @[RequestBuffer.scala 78:76]
  wire  _dupMask_T_83 = buffer_0_valid & _dupMask_T_82; // @[RequestBuffer.scala 120:15]
  wire [28:0] _dupMask_T_85 = {buffer_1_task_tag,buffer_1_task_set}; // @[Cat.scala 31:58]
  wire  _dupMask_T_86 = _io_hasLatePF_T_1 == _dupMask_T_85; // @[RequestBuffer.scala 78:76]
  wire  _dupMask_T_87 = buffer_1_valid & _dupMask_T_86; // @[RequestBuffer.scala 120:15]
  wire [28:0] _dupMask_T_89 = {buffer_2_task_tag,buffer_2_task_set}; // @[Cat.scala 31:58]
  wire  _dupMask_T_90 = _io_hasLatePF_T_1 == _dupMask_T_89; // @[RequestBuffer.scala 78:76]
  wire  _dupMask_T_91 = buffer_2_valid & _dupMask_T_90; // @[RequestBuffer.scala 120:15]
  wire [28:0] _dupMask_T_93 = {buffer_3_task_tag,buffer_3_task_set}; // @[Cat.scala 31:58]
  wire  _dupMask_T_94 = _io_hasLatePF_T_1 == _dupMask_T_93; // @[RequestBuffer.scala 78:76]
  wire  _dupMask_T_95 = buffer_3_valid & _dupMask_T_94; // @[RequestBuffer.scala 120:15]
  wire [9:0] dupMask_lo = {_dupMask_T_49,_dupMask_T_44,_dupMask_T_39,_dupMask_T_34,_dupMask_T_29,_dupMask_T_24,
    _dupMask_T_19,_dupMask_T_14,_dupMask_T_9,_dupMask_T_4}; // @[RequestBuffer.scala 122:5]
  wire [9:0] dupMask_hi = {_dupMask_T_95,_dupMask_T_91,_dupMask_T_87,_dupMask_T_83,_dupMask_T_79,_dupMask_T_74,
    _dupMask_T_69,_dupMask_T_64,_dupMask_T_59,_dupMask_T_54}; // @[RequestBuffer.scala 122:5]
  wire [19:0] dupMask = {dupMask_hi,dupMask_lo}; // @[RequestBuffer.scala 122:5]
  wire  dup = io_in_valid & isPrefetch & |dupMask; // @[RequestBuffer.scala 123:46]
  wire  _insertIdx_T = ~buffer_0_valid; // @[RequestBuffer.scala 130:46]
  wire  _insertIdx_T_1 = ~buffer_1_valid; // @[RequestBuffer.scala 130:46]
  wire  _insertIdx_T_2 = ~buffer_2_valid; // @[RequestBuffer.scala 130:46]
  wire [1:0] _insertIdx_T_4 = _insertIdx_T_2 ? 2'h2 : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] _insertIdx_T_5 = _insertIdx_T_1 ? 2'h1 : _insertIdx_T_4; // @[Mux.scala 47:70]
  wire [1:0] insertIdx = _insertIdx_T ? 2'h0 : _insertIdx_T_5; // @[Mux.scala 47:70]
  wire  alloc = _canFlow_T & io_in_valid & ~doFlow & ~dup; // @[RequestBuffer.scala 131:47]
  wire  _pipeBlockOut_T = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire  _pipeBlockOut_T_1 = io_in_bits_set == io_out_bits_set; // @[RequestBuffer.scala 80:64]
  wire  pipeBlockOut = _pipeBlockOut_T & _pipeBlockOut_T_1; // @[RequestBuffer.scala 135:36]
  wire  probeBlock = io_s1Entrance_valid & io_s1Entrance_bits_set == io_in_bits_set; // @[RequestBuffer.scala 136:44]
  wire  s1Block = pipeBlockOut | probeBlock; // @[RequestBuffer.scala 137:37]
  wire  _GEN_0 = 2'h0 == insertIdx | buffer_0_valid; // @[RequestBuffer.scala 139:{19,19} 70:23]
  wire  _GEN_1 = 2'h1 == insertIdx | buffer_1_valid; // @[RequestBuffer.scala 139:{19,19} 70:23]
  wire  _GEN_2 = 2'h2 == insertIdx | buffer_2_valid; // @[RequestBuffer.scala 139:{19,19} 70:23]
  wire  _GEN_3 = 2'h3 == insertIdx | buffer_3_valid; // @[RequestBuffer.scala 139:{19,19} 70:23]
  wire [3:0] _buffer_waitMP_T = {s1Block,io_mainPipeBlock_0,io_mainPipeBlock_1,1'h0}; // @[Cat.scala 31:58]
  wire  _GEN_116 = alloc ? _GEN_0 : buffer_0_valid; // @[RequestBuffer.scala 132:14 70:23]
  wire  _GEN_117 = alloc ? _GEN_1 : buffer_1_valid; // @[RequestBuffer.scala 132:14 70:23]
  wire  _GEN_118 = alloc ? _GEN_2 : buffer_2_valid; // @[RequestBuffer.scala 132:14 70:23]
  wire  _GEN_119 = alloc ? _GEN_3 : buffer_3_valid; // @[RequestBuffer.scala 132:14 70:23]
  wire  _pipeBlockOut_T_2 = buffer_0_task_set == io_out_bits_set; // @[RequestBuffer.scala 80:64]
  wire  pipeBlockOut_1 = io_out_valid & _pipeBlockOut_T_2; // @[RequestBuffer.scala 158:39]
  wire  _pipeBlockOut_T_3 = buffer_1_task_set == io_out_bits_set; // @[RequestBuffer.scala 80:64]
  wire  pipeBlockOut_2 = io_out_valid & _pipeBlockOut_T_3; // @[RequestBuffer.scala 158:39]
  wire  _pipeBlockOut_T_4 = buffer_2_task_set == io_out_bits_set; // @[RequestBuffer.scala 80:64]
  wire  pipeBlockOut_3 = io_out_valid & _pipeBlockOut_T_4; // @[RequestBuffer.scala 158:39]
  wire  _pipeBlockOut_T_5 = buffer_3_task_set == io_out_bits_set; // @[RequestBuffer.scala 80:64]
  wire  pipeBlockOut_4 = io_out_valid & _pipeBlockOut_T_5; // @[RequestBuffer.scala 158:39]
  wire  _willFreeMask_T = io_mshrInfo_0_valid & io_mshrInfo_0_bits_willFree; // @[RequestBuffer.scala 180:63]
  wire  _willFreeMask_T_1 = io_mshrInfo_1_valid & io_mshrInfo_1_bits_willFree; // @[RequestBuffer.scala 180:63]
  wire  _willFreeMask_T_2 = io_mshrInfo_2_valid & io_mshrInfo_2_bits_willFree; // @[RequestBuffer.scala 180:63]
  wire  _willFreeMask_T_3 = io_mshrInfo_3_valid & io_mshrInfo_3_bits_willFree; // @[RequestBuffer.scala 180:63]
  wire  _willFreeMask_T_4 = io_mshrInfo_4_valid & io_mshrInfo_4_bits_willFree; // @[RequestBuffer.scala 180:63]
  wire  _willFreeMask_T_5 = io_mshrInfo_5_valid & io_mshrInfo_5_bits_willFree; // @[RequestBuffer.scala 180:63]
  wire  _willFreeMask_T_6 = io_mshrInfo_6_valid & io_mshrInfo_6_bits_willFree; // @[RequestBuffer.scala 180:63]
  wire  _willFreeMask_T_7 = io_mshrInfo_7_valid & io_mshrInfo_7_bits_willFree; // @[RequestBuffer.scala 180:63]
  wire  _willFreeMask_T_8 = io_mshrInfo_8_valid & io_mshrInfo_8_bits_willFree; // @[RequestBuffer.scala 180:63]
  wire  _willFreeMask_T_9 = io_mshrInfo_9_valid & io_mshrInfo_9_bits_willFree; // @[RequestBuffer.scala 180:63]
  wire  _willFreeMask_T_10 = io_mshrInfo_10_valid & io_mshrInfo_10_bits_willFree; // @[RequestBuffer.scala 180:63]
  wire  _willFreeMask_T_11 = io_mshrInfo_11_valid & io_mshrInfo_11_bits_willFree; // @[RequestBuffer.scala 180:63]
  wire  _willFreeMask_T_12 = io_mshrInfo_12_valid & io_mshrInfo_12_bits_willFree; // @[RequestBuffer.scala 180:63]
  wire  _willFreeMask_T_13 = io_mshrInfo_13_valid & io_mshrInfo_13_bits_willFree; // @[RequestBuffer.scala 180:63]
  wire  _willFreeMask_T_14 = io_mshrInfo_14_valid & io_mshrInfo_14_bits_willFree; // @[RequestBuffer.scala 180:63]
  wire  _willFreeMask_T_15 = io_mshrInfo_15_valid & io_mshrInfo_15_bits_willFree; // @[RequestBuffer.scala 180:63]
  wire [7:0] willFreeMask_lo = {_willFreeMask_T_7,_willFreeMask_T_6,_willFreeMask_T_5,_willFreeMask_T_4,
    _willFreeMask_T_3,_willFreeMask_T_2,_willFreeMask_T_1,_willFreeMask_T}; // @[RequestBuffer.scala 180:84]
  wire [15:0] willFreeMask = {_willFreeMask_T_15,_willFreeMask_T_14,_willFreeMask_T_13,_willFreeMask_T_12,
    _willFreeMask_T_11,_willFreeMask_T_10,_willFreeMask_T_9,_willFreeMask_T_8,willFreeMask_lo}; // @[RequestBuffer.scala 180:84]
  wire [15:0] _waitMSUpdate_T = ~willFreeMask; // @[RequestBuffer.scala 181:37]
  wire [15:0] _waitMSUpdate_T_1 = buffer_0_waitMS & _waitMSUpdate_T; // @[RequestBuffer.scala 181:34]
  wire [3:0] _buffer_0_waitMP_T = {{1'd0}, buffer_0_waitMP[3:1]}; // @[RequestBuffer.scala 190:28]
  wire  _waitMSUpdate_T_7 = buffer_0_task_set == io_mshrInfo_0_bits_set & (buffer_0_task_tag ==
    io_mshrInfo_0_bits_reqTag | buffer_0_task_tag == io_mshrInfo_0_bits_metaTag & io_mshrInfo_0_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_10 = io_mshrInfo_0_valid & _waitMSUpdate_T_7 & ~io_mshrInfo_0_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_16 = buffer_0_task_set == io_mshrInfo_1_bits_set & (buffer_0_task_tag ==
    io_mshrInfo_1_bits_reqTag | buffer_0_task_tag == io_mshrInfo_1_bits_metaTag & io_mshrInfo_1_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_19 = io_mshrInfo_1_valid & _waitMSUpdate_T_16 & ~io_mshrInfo_1_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_25 = buffer_0_task_set == io_mshrInfo_2_bits_set & (buffer_0_task_tag ==
    io_mshrInfo_2_bits_reqTag | buffer_0_task_tag == io_mshrInfo_2_bits_metaTag & io_mshrInfo_2_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_28 = io_mshrInfo_2_valid & _waitMSUpdate_T_25 & ~io_mshrInfo_2_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_34 = buffer_0_task_set == io_mshrInfo_3_bits_set & (buffer_0_task_tag ==
    io_mshrInfo_3_bits_reqTag | buffer_0_task_tag == io_mshrInfo_3_bits_metaTag & io_mshrInfo_3_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_37 = io_mshrInfo_3_valid & _waitMSUpdate_T_34 & ~io_mshrInfo_3_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_43 = buffer_0_task_set == io_mshrInfo_4_bits_set & (buffer_0_task_tag ==
    io_mshrInfo_4_bits_reqTag | buffer_0_task_tag == io_mshrInfo_4_bits_metaTag & io_mshrInfo_4_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_46 = io_mshrInfo_4_valid & _waitMSUpdate_T_43 & ~io_mshrInfo_4_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_52 = buffer_0_task_set == io_mshrInfo_5_bits_set & (buffer_0_task_tag ==
    io_mshrInfo_5_bits_reqTag | buffer_0_task_tag == io_mshrInfo_5_bits_metaTag & io_mshrInfo_5_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_55 = io_mshrInfo_5_valid & _waitMSUpdate_T_52 & ~io_mshrInfo_5_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_61 = buffer_0_task_set == io_mshrInfo_6_bits_set & (buffer_0_task_tag ==
    io_mshrInfo_6_bits_reqTag | buffer_0_task_tag == io_mshrInfo_6_bits_metaTag & io_mshrInfo_6_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_64 = io_mshrInfo_6_valid & _waitMSUpdate_T_61 & ~io_mshrInfo_6_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_70 = buffer_0_task_set == io_mshrInfo_7_bits_set & (buffer_0_task_tag ==
    io_mshrInfo_7_bits_reqTag | buffer_0_task_tag == io_mshrInfo_7_bits_metaTag & io_mshrInfo_7_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_73 = io_mshrInfo_7_valid & _waitMSUpdate_T_70 & ~io_mshrInfo_7_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_79 = buffer_0_task_set == io_mshrInfo_8_bits_set & (buffer_0_task_tag ==
    io_mshrInfo_8_bits_reqTag | buffer_0_task_tag == io_mshrInfo_8_bits_metaTag & io_mshrInfo_8_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_82 = io_mshrInfo_8_valid & _waitMSUpdate_T_79 & ~io_mshrInfo_8_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_88 = buffer_0_task_set == io_mshrInfo_9_bits_set & (buffer_0_task_tag ==
    io_mshrInfo_9_bits_reqTag | buffer_0_task_tag == io_mshrInfo_9_bits_metaTag & io_mshrInfo_9_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_91 = io_mshrInfo_9_valid & _waitMSUpdate_T_88 & ~io_mshrInfo_9_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_97 = buffer_0_task_set == io_mshrInfo_10_bits_set & (buffer_0_task_tag ==
    io_mshrInfo_10_bits_reqTag | buffer_0_task_tag == io_mshrInfo_10_bits_metaTag & io_mshrInfo_10_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_100 = io_mshrInfo_10_valid & _waitMSUpdate_T_97 & ~io_mshrInfo_10_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_106 = buffer_0_task_set == io_mshrInfo_11_bits_set & (buffer_0_task_tag ==
    io_mshrInfo_11_bits_reqTag | buffer_0_task_tag == io_mshrInfo_11_bits_metaTag & io_mshrInfo_11_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_109 = io_mshrInfo_11_valid & _waitMSUpdate_T_106 & ~io_mshrInfo_11_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_115 = buffer_0_task_set == io_mshrInfo_12_bits_set & (buffer_0_task_tag ==
    io_mshrInfo_12_bits_reqTag | buffer_0_task_tag == io_mshrInfo_12_bits_metaTag & io_mshrInfo_12_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_118 = io_mshrInfo_12_valid & _waitMSUpdate_T_115 & ~io_mshrInfo_12_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_124 = buffer_0_task_set == io_mshrInfo_13_bits_set & (buffer_0_task_tag ==
    io_mshrInfo_13_bits_reqTag | buffer_0_task_tag == io_mshrInfo_13_bits_metaTag & io_mshrInfo_13_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_127 = io_mshrInfo_13_valid & _waitMSUpdate_T_124 & ~io_mshrInfo_13_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_133 = buffer_0_task_set == io_mshrInfo_14_bits_set & (buffer_0_task_tag ==
    io_mshrInfo_14_bits_reqTag | buffer_0_task_tag == io_mshrInfo_14_bits_metaTag & io_mshrInfo_14_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_136 = io_mshrInfo_14_valid & _waitMSUpdate_T_133 & ~io_mshrInfo_14_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_142 = buffer_0_task_set == io_mshrInfo_15_bits_set & (buffer_0_task_tag ==
    io_mshrInfo_15_bits_reqTag | buffer_0_task_tag == io_mshrInfo_15_bits_metaTag & io_mshrInfo_15_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_145 = io_mshrInfo_15_valid & _waitMSUpdate_T_142 & ~io_mshrInfo_15_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire [7:0] waitMSUpdate_lo = {_waitMSUpdate_T_73,_waitMSUpdate_T_64,_waitMSUpdate_T_55,_waitMSUpdate_T_46,
    _waitMSUpdate_T_37,_waitMSUpdate_T_28,_waitMSUpdate_T_19,_waitMSUpdate_T_10}; // @[RequestBuffer.scala 86:62]
  wire [15:0] _waitMSUpdate_T_146 = {_waitMSUpdate_T_145,_waitMSUpdate_T_136,_waitMSUpdate_T_127,_waitMSUpdate_T_118,
    _waitMSUpdate_T_109,_waitMSUpdate_T_100,_waitMSUpdate_T_91,_waitMSUpdate_T_82,waitMSUpdate_lo}; // @[RequestBuffer.scala 86:62]
  wire [15:0] waitMSUpdate = ~buffer_0_waitMP[1] & buffer_0_waitMP[0] ? _waitMSUpdate_T_146 : _waitMSUpdate_T_1; // @[RequestBuffer.scala 181:21 191:56 192:23]
  wire  s1A_Block = _pipeBlockOut_T & _pipeBlockOut_T_2; // @[RequestBuffer.scala 201:35]
  wire  s1B_Block = io_s1Entrance_valid & io_s1Entrance_bits_set == buffer_0_task_set; // @[RequestBuffer.scala 202:43]
  wire  s1_Block = s1A_Block | s1B_Block; // @[RequestBuffer.scala 203:33]
  wire [3:0] _buffer_0_waitMP_T_1 = buffer_0_waitMP | 4'h4; // @[RequestBuffer.scala 205:30]
  wire [15:0] _waitMSUpdate_T_148 = buffer_1_waitMS & _waitMSUpdate_T; // @[RequestBuffer.scala 181:34]
  wire [3:0] _buffer_1_waitMP_T = {{1'd0}, buffer_1_waitMP[3:1]}; // @[RequestBuffer.scala 190:28]
  wire  _waitMSUpdate_T_154 = buffer_1_task_set == io_mshrInfo_0_bits_set & (buffer_1_task_tag ==
    io_mshrInfo_0_bits_reqTag | buffer_1_task_tag == io_mshrInfo_0_bits_metaTag & io_mshrInfo_0_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_157 = io_mshrInfo_0_valid & _waitMSUpdate_T_154 & ~io_mshrInfo_0_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_163 = buffer_1_task_set == io_mshrInfo_1_bits_set & (buffer_1_task_tag ==
    io_mshrInfo_1_bits_reqTag | buffer_1_task_tag == io_mshrInfo_1_bits_metaTag & io_mshrInfo_1_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_166 = io_mshrInfo_1_valid & _waitMSUpdate_T_163 & ~io_mshrInfo_1_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_172 = buffer_1_task_set == io_mshrInfo_2_bits_set & (buffer_1_task_tag ==
    io_mshrInfo_2_bits_reqTag | buffer_1_task_tag == io_mshrInfo_2_bits_metaTag & io_mshrInfo_2_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_175 = io_mshrInfo_2_valid & _waitMSUpdate_T_172 & ~io_mshrInfo_2_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_181 = buffer_1_task_set == io_mshrInfo_3_bits_set & (buffer_1_task_tag ==
    io_mshrInfo_3_bits_reqTag | buffer_1_task_tag == io_mshrInfo_3_bits_metaTag & io_mshrInfo_3_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_184 = io_mshrInfo_3_valid & _waitMSUpdate_T_181 & ~io_mshrInfo_3_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_190 = buffer_1_task_set == io_mshrInfo_4_bits_set & (buffer_1_task_tag ==
    io_mshrInfo_4_bits_reqTag | buffer_1_task_tag == io_mshrInfo_4_bits_metaTag & io_mshrInfo_4_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_193 = io_mshrInfo_4_valid & _waitMSUpdate_T_190 & ~io_mshrInfo_4_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_199 = buffer_1_task_set == io_mshrInfo_5_bits_set & (buffer_1_task_tag ==
    io_mshrInfo_5_bits_reqTag | buffer_1_task_tag == io_mshrInfo_5_bits_metaTag & io_mshrInfo_5_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_202 = io_mshrInfo_5_valid & _waitMSUpdate_T_199 & ~io_mshrInfo_5_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_208 = buffer_1_task_set == io_mshrInfo_6_bits_set & (buffer_1_task_tag ==
    io_mshrInfo_6_bits_reqTag | buffer_1_task_tag == io_mshrInfo_6_bits_metaTag & io_mshrInfo_6_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_211 = io_mshrInfo_6_valid & _waitMSUpdate_T_208 & ~io_mshrInfo_6_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_217 = buffer_1_task_set == io_mshrInfo_7_bits_set & (buffer_1_task_tag ==
    io_mshrInfo_7_bits_reqTag | buffer_1_task_tag == io_mshrInfo_7_bits_metaTag & io_mshrInfo_7_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_220 = io_mshrInfo_7_valid & _waitMSUpdate_T_217 & ~io_mshrInfo_7_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_226 = buffer_1_task_set == io_mshrInfo_8_bits_set & (buffer_1_task_tag ==
    io_mshrInfo_8_bits_reqTag | buffer_1_task_tag == io_mshrInfo_8_bits_metaTag & io_mshrInfo_8_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_229 = io_mshrInfo_8_valid & _waitMSUpdate_T_226 & ~io_mshrInfo_8_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_235 = buffer_1_task_set == io_mshrInfo_9_bits_set & (buffer_1_task_tag ==
    io_mshrInfo_9_bits_reqTag | buffer_1_task_tag == io_mshrInfo_9_bits_metaTag & io_mshrInfo_9_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_238 = io_mshrInfo_9_valid & _waitMSUpdate_T_235 & ~io_mshrInfo_9_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_244 = buffer_1_task_set == io_mshrInfo_10_bits_set & (buffer_1_task_tag ==
    io_mshrInfo_10_bits_reqTag | buffer_1_task_tag == io_mshrInfo_10_bits_metaTag & io_mshrInfo_10_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_247 = io_mshrInfo_10_valid & _waitMSUpdate_T_244 & ~io_mshrInfo_10_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_253 = buffer_1_task_set == io_mshrInfo_11_bits_set & (buffer_1_task_tag ==
    io_mshrInfo_11_bits_reqTag | buffer_1_task_tag == io_mshrInfo_11_bits_metaTag & io_mshrInfo_11_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_256 = io_mshrInfo_11_valid & _waitMSUpdate_T_253 & ~io_mshrInfo_11_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_262 = buffer_1_task_set == io_mshrInfo_12_bits_set & (buffer_1_task_tag ==
    io_mshrInfo_12_bits_reqTag | buffer_1_task_tag == io_mshrInfo_12_bits_metaTag & io_mshrInfo_12_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_265 = io_mshrInfo_12_valid & _waitMSUpdate_T_262 & ~io_mshrInfo_12_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_271 = buffer_1_task_set == io_mshrInfo_13_bits_set & (buffer_1_task_tag ==
    io_mshrInfo_13_bits_reqTag | buffer_1_task_tag == io_mshrInfo_13_bits_metaTag & io_mshrInfo_13_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_274 = io_mshrInfo_13_valid & _waitMSUpdate_T_271 & ~io_mshrInfo_13_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_280 = buffer_1_task_set == io_mshrInfo_14_bits_set & (buffer_1_task_tag ==
    io_mshrInfo_14_bits_reqTag | buffer_1_task_tag == io_mshrInfo_14_bits_metaTag & io_mshrInfo_14_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_283 = io_mshrInfo_14_valid & _waitMSUpdate_T_280 & ~io_mshrInfo_14_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_289 = buffer_1_task_set == io_mshrInfo_15_bits_set & (buffer_1_task_tag ==
    io_mshrInfo_15_bits_reqTag | buffer_1_task_tag == io_mshrInfo_15_bits_metaTag & io_mshrInfo_15_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_292 = io_mshrInfo_15_valid & _waitMSUpdate_T_289 & ~io_mshrInfo_15_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire [7:0] waitMSUpdate_lo_1 = {_waitMSUpdate_T_220,_waitMSUpdate_T_211,_waitMSUpdate_T_202,_waitMSUpdate_T_193,
    _waitMSUpdate_T_184,_waitMSUpdate_T_175,_waitMSUpdate_T_166,_waitMSUpdate_T_157}; // @[RequestBuffer.scala 86:62]
  wire [15:0] _waitMSUpdate_T_293 = {_waitMSUpdate_T_292,_waitMSUpdate_T_283,_waitMSUpdate_T_274,_waitMSUpdate_T_265,
    _waitMSUpdate_T_256,_waitMSUpdate_T_247,_waitMSUpdate_T_238,_waitMSUpdate_T_229,waitMSUpdate_lo_1}; // @[RequestBuffer.scala 86:62]
  wire [15:0] waitMSUpdate_1 = ~buffer_1_waitMP[1] & buffer_1_waitMP[0] ? _waitMSUpdate_T_293 : _waitMSUpdate_T_148; // @[RequestBuffer.scala 181:21 191:56 192:23]
  wire  s1A_Block_1 = _pipeBlockOut_T & _pipeBlockOut_T_3; // @[RequestBuffer.scala 201:35]
  wire  s1B_Block_1 = io_s1Entrance_valid & io_s1Entrance_bits_set == buffer_1_task_set; // @[RequestBuffer.scala 202:43]
  wire  s1_Block_1 = s1A_Block_1 | s1B_Block_1; // @[RequestBuffer.scala 203:33]
  wire [3:0] _buffer_1_waitMP_T_1 = buffer_1_waitMP | 4'h4; // @[RequestBuffer.scala 205:30]
  wire [15:0] _waitMSUpdate_T_295 = buffer_2_waitMS & _waitMSUpdate_T; // @[RequestBuffer.scala 181:34]
  wire [3:0] _buffer_2_waitMP_T = {{1'd0}, buffer_2_waitMP[3:1]}; // @[RequestBuffer.scala 190:28]
  wire  _waitMSUpdate_T_301 = buffer_2_task_set == io_mshrInfo_0_bits_set & (buffer_2_task_tag ==
    io_mshrInfo_0_bits_reqTag | buffer_2_task_tag == io_mshrInfo_0_bits_metaTag & io_mshrInfo_0_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_304 = io_mshrInfo_0_valid & _waitMSUpdate_T_301 & ~io_mshrInfo_0_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_310 = buffer_2_task_set == io_mshrInfo_1_bits_set & (buffer_2_task_tag ==
    io_mshrInfo_1_bits_reqTag | buffer_2_task_tag == io_mshrInfo_1_bits_metaTag & io_mshrInfo_1_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_313 = io_mshrInfo_1_valid & _waitMSUpdate_T_310 & ~io_mshrInfo_1_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_319 = buffer_2_task_set == io_mshrInfo_2_bits_set & (buffer_2_task_tag ==
    io_mshrInfo_2_bits_reqTag | buffer_2_task_tag == io_mshrInfo_2_bits_metaTag & io_mshrInfo_2_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_322 = io_mshrInfo_2_valid & _waitMSUpdate_T_319 & ~io_mshrInfo_2_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_328 = buffer_2_task_set == io_mshrInfo_3_bits_set & (buffer_2_task_tag ==
    io_mshrInfo_3_bits_reqTag | buffer_2_task_tag == io_mshrInfo_3_bits_metaTag & io_mshrInfo_3_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_331 = io_mshrInfo_3_valid & _waitMSUpdate_T_328 & ~io_mshrInfo_3_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_337 = buffer_2_task_set == io_mshrInfo_4_bits_set & (buffer_2_task_tag ==
    io_mshrInfo_4_bits_reqTag | buffer_2_task_tag == io_mshrInfo_4_bits_metaTag & io_mshrInfo_4_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_340 = io_mshrInfo_4_valid & _waitMSUpdate_T_337 & ~io_mshrInfo_4_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_346 = buffer_2_task_set == io_mshrInfo_5_bits_set & (buffer_2_task_tag ==
    io_mshrInfo_5_bits_reqTag | buffer_2_task_tag == io_mshrInfo_5_bits_metaTag & io_mshrInfo_5_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_349 = io_mshrInfo_5_valid & _waitMSUpdate_T_346 & ~io_mshrInfo_5_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_355 = buffer_2_task_set == io_mshrInfo_6_bits_set & (buffer_2_task_tag ==
    io_mshrInfo_6_bits_reqTag | buffer_2_task_tag == io_mshrInfo_6_bits_metaTag & io_mshrInfo_6_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_358 = io_mshrInfo_6_valid & _waitMSUpdate_T_355 & ~io_mshrInfo_6_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_364 = buffer_2_task_set == io_mshrInfo_7_bits_set & (buffer_2_task_tag ==
    io_mshrInfo_7_bits_reqTag | buffer_2_task_tag == io_mshrInfo_7_bits_metaTag & io_mshrInfo_7_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_367 = io_mshrInfo_7_valid & _waitMSUpdate_T_364 & ~io_mshrInfo_7_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_373 = buffer_2_task_set == io_mshrInfo_8_bits_set & (buffer_2_task_tag ==
    io_mshrInfo_8_bits_reqTag | buffer_2_task_tag == io_mshrInfo_8_bits_metaTag & io_mshrInfo_8_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_376 = io_mshrInfo_8_valid & _waitMSUpdate_T_373 & ~io_mshrInfo_8_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_382 = buffer_2_task_set == io_mshrInfo_9_bits_set & (buffer_2_task_tag ==
    io_mshrInfo_9_bits_reqTag | buffer_2_task_tag == io_mshrInfo_9_bits_metaTag & io_mshrInfo_9_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_385 = io_mshrInfo_9_valid & _waitMSUpdate_T_382 & ~io_mshrInfo_9_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_391 = buffer_2_task_set == io_mshrInfo_10_bits_set & (buffer_2_task_tag ==
    io_mshrInfo_10_bits_reqTag | buffer_2_task_tag == io_mshrInfo_10_bits_metaTag & io_mshrInfo_10_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_394 = io_mshrInfo_10_valid & _waitMSUpdate_T_391 & ~io_mshrInfo_10_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_400 = buffer_2_task_set == io_mshrInfo_11_bits_set & (buffer_2_task_tag ==
    io_mshrInfo_11_bits_reqTag | buffer_2_task_tag == io_mshrInfo_11_bits_metaTag & io_mshrInfo_11_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_403 = io_mshrInfo_11_valid & _waitMSUpdate_T_400 & ~io_mshrInfo_11_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_409 = buffer_2_task_set == io_mshrInfo_12_bits_set & (buffer_2_task_tag ==
    io_mshrInfo_12_bits_reqTag | buffer_2_task_tag == io_mshrInfo_12_bits_metaTag & io_mshrInfo_12_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_412 = io_mshrInfo_12_valid & _waitMSUpdate_T_409 & ~io_mshrInfo_12_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_418 = buffer_2_task_set == io_mshrInfo_13_bits_set & (buffer_2_task_tag ==
    io_mshrInfo_13_bits_reqTag | buffer_2_task_tag == io_mshrInfo_13_bits_metaTag & io_mshrInfo_13_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_421 = io_mshrInfo_13_valid & _waitMSUpdate_T_418 & ~io_mshrInfo_13_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_427 = buffer_2_task_set == io_mshrInfo_14_bits_set & (buffer_2_task_tag ==
    io_mshrInfo_14_bits_reqTag | buffer_2_task_tag == io_mshrInfo_14_bits_metaTag & io_mshrInfo_14_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_430 = io_mshrInfo_14_valid & _waitMSUpdate_T_427 & ~io_mshrInfo_14_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_436 = buffer_2_task_set == io_mshrInfo_15_bits_set & (buffer_2_task_tag ==
    io_mshrInfo_15_bits_reqTag | buffer_2_task_tag == io_mshrInfo_15_bits_metaTag & io_mshrInfo_15_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_439 = io_mshrInfo_15_valid & _waitMSUpdate_T_436 & ~io_mshrInfo_15_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire [7:0] waitMSUpdate_lo_2 = {_waitMSUpdate_T_367,_waitMSUpdate_T_358,_waitMSUpdate_T_349,_waitMSUpdate_T_340,
    _waitMSUpdate_T_331,_waitMSUpdate_T_322,_waitMSUpdate_T_313,_waitMSUpdate_T_304}; // @[RequestBuffer.scala 86:62]
  wire [15:0] _waitMSUpdate_T_440 = {_waitMSUpdate_T_439,_waitMSUpdate_T_430,_waitMSUpdate_T_421,_waitMSUpdate_T_412,
    _waitMSUpdate_T_403,_waitMSUpdate_T_394,_waitMSUpdate_T_385,_waitMSUpdate_T_376,waitMSUpdate_lo_2}; // @[RequestBuffer.scala 86:62]
  wire [15:0] waitMSUpdate_2 = ~buffer_2_waitMP[1] & buffer_2_waitMP[0] ? _waitMSUpdate_T_440 : _waitMSUpdate_T_295; // @[RequestBuffer.scala 181:21 191:56 192:23]
  wire  s1A_Block_2 = _pipeBlockOut_T & _pipeBlockOut_T_4; // @[RequestBuffer.scala 201:35]
  wire  s1B_Block_2 = io_s1Entrance_valid & io_s1Entrance_bits_set == buffer_2_task_set; // @[RequestBuffer.scala 202:43]
  wire  s1_Block_2 = s1A_Block_2 | s1B_Block_2; // @[RequestBuffer.scala 203:33]
  wire [3:0] _buffer_2_waitMP_T_1 = buffer_2_waitMP | 4'h4; // @[RequestBuffer.scala 205:30]
  wire [15:0] _waitMSUpdate_T_442 = buffer_3_waitMS & _waitMSUpdate_T; // @[RequestBuffer.scala 181:34]
  wire [3:0] _buffer_3_waitMP_T = {{1'd0}, buffer_3_waitMP[3:1]}; // @[RequestBuffer.scala 190:28]
  wire  _waitMSUpdate_T_448 = buffer_3_task_set == io_mshrInfo_0_bits_set & (buffer_3_task_tag ==
    io_mshrInfo_0_bits_reqTag | buffer_3_task_tag == io_mshrInfo_0_bits_metaTag & io_mshrInfo_0_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_451 = io_mshrInfo_0_valid & _waitMSUpdate_T_448 & ~io_mshrInfo_0_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_457 = buffer_3_task_set == io_mshrInfo_1_bits_set & (buffer_3_task_tag ==
    io_mshrInfo_1_bits_reqTag | buffer_3_task_tag == io_mshrInfo_1_bits_metaTag & io_mshrInfo_1_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_460 = io_mshrInfo_1_valid & _waitMSUpdate_T_457 & ~io_mshrInfo_1_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_466 = buffer_3_task_set == io_mshrInfo_2_bits_set & (buffer_3_task_tag ==
    io_mshrInfo_2_bits_reqTag | buffer_3_task_tag == io_mshrInfo_2_bits_metaTag & io_mshrInfo_2_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_469 = io_mshrInfo_2_valid & _waitMSUpdate_T_466 & ~io_mshrInfo_2_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_475 = buffer_3_task_set == io_mshrInfo_3_bits_set & (buffer_3_task_tag ==
    io_mshrInfo_3_bits_reqTag | buffer_3_task_tag == io_mshrInfo_3_bits_metaTag & io_mshrInfo_3_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_478 = io_mshrInfo_3_valid & _waitMSUpdate_T_475 & ~io_mshrInfo_3_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_484 = buffer_3_task_set == io_mshrInfo_4_bits_set & (buffer_3_task_tag ==
    io_mshrInfo_4_bits_reqTag | buffer_3_task_tag == io_mshrInfo_4_bits_metaTag & io_mshrInfo_4_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_487 = io_mshrInfo_4_valid & _waitMSUpdate_T_484 & ~io_mshrInfo_4_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_493 = buffer_3_task_set == io_mshrInfo_5_bits_set & (buffer_3_task_tag ==
    io_mshrInfo_5_bits_reqTag | buffer_3_task_tag == io_mshrInfo_5_bits_metaTag & io_mshrInfo_5_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_496 = io_mshrInfo_5_valid & _waitMSUpdate_T_493 & ~io_mshrInfo_5_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_502 = buffer_3_task_set == io_mshrInfo_6_bits_set & (buffer_3_task_tag ==
    io_mshrInfo_6_bits_reqTag | buffer_3_task_tag == io_mshrInfo_6_bits_metaTag & io_mshrInfo_6_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_505 = io_mshrInfo_6_valid & _waitMSUpdate_T_502 & ~io_mshrInfo_6_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_511 = buffer_3_task_set == io_mshrInfo_7_bits_set & (buffer_3_task_tag ==
    io_mshrInfo_7_bits_reqTag | buffer_3_task_tag == io_mshrInfo_7_bits_metaTag & io_mshrInfo_7_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_514 = io_mshrInfo_7_valid & _waitMSUpdate_T_511 & ~io_mshrInfo_7_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_520 = buffer_3_task_set == io_mshrInfo_8_bits_set & (buffer_3_task_tag ==
    io_mshrInfo_8_bits_reqTag | buffer_3_task_tag == io_mshrInfo_8_bits_metaTag & io_mshrInfo_8_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_523 = io_mshrInfo_8_valid & _waitMSUpdate_T_520 & ~io_mshrInfo_8_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_529 = buffer_3_task_set == io_mshrInfo_9_bits_set & (buffer_3_task_tag ==
    io_mshrInfo_9_bits_reqTag | buffer_3_task_tag == io_mshrInfo_9_bits_metaTag & io_mshrInfo_9_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_532 = io_mshrInfo_9_valid & _waitMSUpdate_T_529 & ~io_mshrInfo_9_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_538 = buffer_3_task_set == io_mshrInfo_10_bits_set & (buffer_3_task_tag ==
    io_mshrInfo_10_bits_reqTag | buffer_3_task_tag == io_mshrInfo_10_bits_metaTag & io_mshrInfo_10_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_541 = io_mshrInfo_10_valid & _waitMSUpdate_T_538 & ~io_mshrInfo_10_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_547 = buffer_3_task_set == io_mshrInfo_11_bits_set & (buffer_3_task_tag ==
    io_mshrInfo_11_bits_reqTag | buffer_3_task_tag == io_mshrInfo_11_bits_metaTag & io_mshrInfo_11_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_550 = io_mshrInfo_11_valid & _waitMSUpdate_T_547 & ~io_mshrInfo_11_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_556 = buffer_3_task_set == io_mshrInfo_12_bits_set & (buffer_3_task_tag ==
    io_mshrInfo_12_bits_reqTag | buffer_3_task_tag == io_mshrInfo_12_bits_metaTag & io_mshrInfo_12_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_559 = io_mshrInfo_12_valid & _waitMSUpdate_T_556 & ~io_mshrInfo_12_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_565 = buffer_3_task_set == io_mshrInfo_13_bits_set & (buffer_3_task_tag ==
    io_mshrInfo_13_bits_reqTag | buffer_3_task_tag == io_mshrInfo_13_bits_metaTag & io_mshrInfo_13_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_568 = io_mshrInfo_13_valid & _waitMSUpdate_T_565 & ~io_mshrInfo_13_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_574 = buffer_3_task_set == io_mshrInfo_14_bits_set & (buffer_3_task_tag ==
    io_mshrInfo_14_bits_reqTag | buffer_3_task_tag == io_mshrInfo_14_bits_metaTag & io_mshrInfo_14_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_577 = io_mshrInfo_14_valid & _waitMSUpdate_T_574 & ~io_mshrInfo_14_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire  _waitMSUpdate_T_583 = buffer_3_task_set == io_mshrInfo_15_bits_set & (buffer_3_task_tag ==
    io_mshrInfo_15_bits_reqTag | buffer_3_task_tag == io_mshrInfo_15_bits_metaTag & io_mshrInfo_15_bits_needRelease); // @[RequestBuffer.scala 83:21]
  wire  _waitMSUpdate_T_586 = io_mshrInfo_15_valid & _waitMSUpdate_T_583 & ~io_mshrInfo_15_bits_willFree; // @[RequestBuffer.scala 86:40]
  wire [7:0] waitMSUpdate_lo_3 = {_waitMSUpdate_T_514,_waitMSUpdate_T_505,_waitMSUpdate_T_496,_waitMSUpdate_T_487,
    _waitMSUpdate_T_478,_waitMSUpdate_T_469,_waitMSUpdate_T_460,_waitMSUpdate_T_451}; // @[RequestBuffer.scala 86:62]
  wire [15:0] _waitMSUpdate_T_587 = {_waitMSUpdate_T_586,_waitMSUpdate_T_577,_waitMSUpdate_T_568,_waitMSUpdate_T_559,
    _waitMSUpdate_T_550,_waitMSUpdate_T_541,_waitMSUpdate_T_532,_waitMSUpdate_T_523,waitMSUpdate_lo_3}; // @[RequestBuffer.scala 86:62]
  wire [15:0] waitMSUpdate_3 = ~buffer_3_waitMP[1] & buffer_3_waitMP[0] ? _waitMSUpdate_T_587 : _waitMSUpdate_T_442; // @[RequestBuffer.scala 181:21 191:56 192:23]
  wire  s1A_Block_3 = _pipeBlockOut_T & _pipeBlockOut_T_5; // @[RequestBuffer.scala 201:35]
  wire  s1B_Block_3 = io_s1Entrance_valid & io_s1Entrance_bits_set == buffer_3_task_set; // @[RequestBuffer.scala 202:43]
  wire  s1_Block_3 = s1A_Block_3 | s1B_Block_3; // @[RequestBuffer.scala 203:33]
  wire [3:0] _buffer_3_waitMP_T_1 = buffer_3_waitMP | 4'h4; // @[RequestBuffer.scala 205:30]
  wire  _GEN_253 = 2'h1 == chosenQ_io_deq_bits_id ? buffer_1_rdy : buffer_0_rdy; // @[RequestBuffer.scala 219:{16,16}]
  wire  _GEN_254 = 2'h2 == chosenQ_io_deq_bits_id ? buffer_2_rdy : _GEN_253; // @[RequestBuffer.scala 219:{16,16}]
  wire  _GEN_255 = 2'h3 == chosenQ_io_deq_bits_id ? buffer_3_rdy : _GEN_254; // @[RequestBuffer.scala 219:{16,16}]
  wire  cancel = ~_GEN_255; // @[RequestBuffer.scala 219:16]
  wire  _io_out_valid_T = ~cancel; // @[RequestBuffer.scala 222:35]
  wire  _T_215 = chosenQ_io_deq_ready & chosenQ_io_deq_valid; // @[Decoupled.scala 50:35]
  FastArbiter issueArb ( // @[RequestBuffer.scala 71:24]
    .clock(issueArb_clock),
    .reset(issueArb_reset),
    .io_in_0_valid(issueArb_io_in_0_valid),
    .io_in_0_bits_task_channel(issueArb_io_in_0_bits_task_channel),
    .io_in_0_bits_task_set(issueArb_io_in_0_bits_task_set),
    .io_in_0_bits_task_tag(issueArb_io_in_0_bits_task_tag),
    .io_in_0_bits_task_off(issueArb_io_in_0_bits_task_off),
    .io_in_0_bits_task_opcode(issueArb_io_in_0_bits_task_opcode),
    .io_in_0_bits_task_param(issueArb_io_in_0_bits_task_param),
    .io_in_0_bits_task_size(issueArb_io_in_0_bits_task_size),
    .io_in_0_bits_task_sourceId(issueArb_io_in_0_bits_task_sourceId),
    .io_in_0_bits_task_reqSource(issueArb_io_in_0_bits_task_reqSource),
    .io_in_1_valid(issueArb_io_in_1_valid),
    .io_in_1_bits_task_channel(issueArb_io_in_1_bits_task_channel),
    .io_in_1_bits_task_set(issueArb_io_in_1_bits_task_set),
    .io_in_1_bits_task_tag(issueArb_io_in_1_bits_task_tag),
    .io_in_1_bits_task_off(issueArb_io_in_1_bits_task_off),
    .io_in_1_bits_task_opcode(issueArb_io_in_1_bits_task_opcode),
    .io_in_1_bits_task_param(issueArb_io_in_1_bits_task_param),
    .io_in_1_bits_task_size(issueArb_io_in_1_bits_task_size),
    .io_in_1_bits_task_sourceId(issueArb_io_in_1_bits_task_sourceId),
    .io_in_1_bits_task_reqSource(issueArb_io_in_1_bits_task_reqSource),
    .io_in_2_valid(issueArb_io_in_2_valid),
    .io_in_2_bits_task_channel(issueArb_io_in_2_bits_task_channel),
    .io_in_2_bits_task_set(issueArb_io_in_2_bits_task_set),
    .io_in_2_bits_task_tag(issueArb_io_in_2_bits_task_tag),
    .io_in_2_bits_task_off(issueArb_io_in_2_bits_task_off),
    .io_in_2_bits_task_opcode(issueArb_io_in_2_bits_task_opcode),
    .io_in_2_bits_task_param(issueArb_io_in_2_bits_task_param),
    .io_in_2_bits_task_size(issueArb_io_in_2_bits_task_size),
    .io_in_2_bits_task_sourceId(issueArb_io_in_2_bits_task_sourceId),
    .io_in_2_bits_task_reqSource(issueArb_io_in_2_bits_task_reqSource),
    .io_in_3_valid(issueArb_io_in_3_valid),
    .io_in_3_bits_task_channel(issueArb_io_in_3_bits_task_channel),
    .io_in_3_bits_task_set(issueArb_io_in_3_bits_task_set),
    .io_in_3_bits_task_tag(issueArb_io_in_3_bits_task_tag),
    .io_in_3_bits_task_off(issueArb_io_in_3_bits_task_off),
    .io_in_3_bits_task_opcode(issueArb_io_in_3_bits_task_opcode),
    .io_in_3_bits_task_param(issueArb_io_in_3_bits_task_param),
    .io_in_3_bits_task_size(issueArb_io_in_3_bits_task_size),
    .io_in_3_bits_task_sourceId(issueArb_io_in_3_bits_task_sourceId),
    .io_in_3_bits_task_reqSource(issueArb_io_in_3_bits_task_reqSource),
    .io_out_ready(issueArb_io_out_ready),
    .io_out_valid(issueArb_io_out_valid),
    .io_out_bits_task_channel(issueArb_io_out_bits_task_channel),
    .io_out_bits_task_set(issueArb_io_out_bits_task_set),
    .io_out_bits_task_tag(issueArb_io_out_bits_task_tag),
    .io_out_bits_task_off(issueArb_io_out_bits_task_off),
    .io_out_bits_task_opcode(issueArb_io_out_bits_task_opcode),
    .io_out_bits_task_param(issueArb_io_out_bits_task_param),
    .io_out_bits_task_size(issueArb_io_out_bits_task_size),
    .io_out_bits_task_sourceId(issueArb_io_out_bits_task_sourceId),
    .io_out_bits_task_reqSource(issueArb_io_out_bits_task_reqSource),
    .io_chosen(issueArb_io_chosen)
  );
  Queue_157 chosenQ ( // @[RequestBuffer.scala 72:23]
    .clock(chosenQ_clock),
    .reset(chosenQ_reset),
    .io_enq_ready(chosenQ_io_enq_ready),
    .io_enq_valid(chosenQ_io_enq_valid),
    .io_enq_bits_bits_task_channel(chosenQ_io_enq_bits_bits_task_channel),
    .io_enq_bits_bits_task_set(chosenQ_io_enq_bits_bits_task_set),
    .io_enq_bits_bits_task_tag(chosenQ_io_enq_bits_bits_task_tag),
    .io_enq_bits_bits_task_off(chosenQ_io_enq_bits_bits_task_off),
    .io_enq_bits_bits_task_opcode(chosenQ_io_enq_bits_bits_task_opcode),
    .io_enq_bits_bits_task_param(chosenQ_io_enq_bits_bits_task_param),
    .io_enq_bits_bits_task_size(chosenQ_io_enq_bits_bits_task_size),
    .io_enq_bits_bits_task_sourceId(chosenQ_io_enq_bits_bits_task_sourceId),
    .io_enq_bits_bits_task_reqSource(chosenQ_io_enq_bits_bits_task_reqSource),
    .io_enq_bits_id(chosenQ_io_enq_bits_id),
    .io_deq_ready(chosenQ_io_deq_ready),
    .io_deq_valid(chosenQ_io_deq_valid),
    .io_deq_bits_bits_task_channel(chosenQ_io_deq_bits_bits_task_channel),
    .io_deq_bits_bits_task_set(chosenQ_io_deq_bits_bits_task_set),
    .io_deq_bits_bits_task_tag(chosenQ_io_deq_bits_bits_task_tag),
    .io_deq_bits_bits_task_off(chosenQ_io_deq_bits_bits_task_off),
    .io_deq_bits_bits_task_opcode(chosenQ_io_deq_bits_bits_task_opcode),
    .io_deq_bits_bits_task_param(chosenQ_io_deq_bits_bits_task_param),
    .io_deq_bits_bits_task_size(chosenQ_io_deq_bits_bits_task_size),
    .io_deq_bits_bits_task_sourceId(chosenQ_io_deq_bits_bits_task_sourceId),
    .io_deq_bits_bits_task_bufIdx(chosenQ_io_deq_bits_bits_task_bufIdx),
    .io_deq_bits_bits_task_needProbeAckData(chosenQ_io_deq_bits_bits_task_needProbeAckData),
    .io_deq_bits_bits_task_mshrTask(chosenQ_io_deq_bits_bits_task_mshrTask),
    .io_deq_bits_bits_task_mshrId(chosenQ_io_deq_bits_bits_task_mshrId),
    .io_deq_bits_bits_task_useProbeData(chosenQ_io_deq_bits_bits_task_useProbeData),
    .io_deq_bits_bits_task_dirty(chosenQ_io_deq_bits_bits_task_dirty),
    .io_deq_bits_bits_task_way(chosenQ_io_deq_bits_bits_task_way),
    .io_deq_bits_bits_task_meta_dirty(chosenQ_io_deq_bits_bits_task_meta_dirty),
    .io_deq_bits_bits_task_meta_state(chosenQ_io_deq_bits_bits_task_meta_state),
    .io_deq_bits_bits_task_meta_clients(chosenQ_io_deq_bits_bits_task_meta_clients),
    .io_deq_bits_bits_task_meta_accessed(chosenQ_io_deq_bits_bits_task_meta_accessed),
    .io_deq_bits_bits_task_metaWen(chosenQ_io_deq_bits_bits_task_metaWen),
    .io_deq_bits_bits_task_tagWen(chosenQ_io_deq_bits_bits_task_tagWen),
    .io_deq_bits_bits_task_dsWen(chosenQ_io_deq_bits_bits_task_dsWen),
    .io_deq_bits_bits_task_replTask(chosenQ_io_deq_bits_bits_task_replTask),
    .io_deq_bits_bits_task_reqSource(chosenQ_io_deq_bits_bits_task_reqSource),
    .io_deq_bits_id(chosenQ_io_deq_bits_id)
  );
  assign io_in_ready = _canFlow_T | doFlow; // @[RequestBuffer.scala 128:26]
  assign io_out_valid = chosenQ_io_deq_valid & ~cancel | io_in_valid & canFlow; // @[RequestBuffer.scala 222:43]
  assign io_out_bits_channel = canFlow ? 3'h1 : chosenQ_io_deq_bits_bits_task_channel; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_set = canFlow ? io_in_bits_set : chosenQ_io_deq_bits_bits_task_set; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_tag = canFlow ? io_in_bits_tag : chosenQ_io_deq_bits_bits_task_tag; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_off = canFlow ? io_in_bits_off : chosenQ_io_deq_bits_bits_task_off; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_opcode = canFlow ? io_in_bits_opcode : chosenQ_io_deq_bits_bits_task_opcode; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_param = canFlow ? io_in_bits_param : chosenQ_io_deq_bits_bits_task_param; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_size = canFlow ? io_in_bits_size : chosenQ_io_deq_bits_bits_task_size; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_sourceId = canFlow ? io_in_bits_sourceId : chosenQ_io_deq_bits_bits_task_sourceId; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_bufIdx = canFlow ? 2'h0 : chosenQ_io_deq_bits_bits_task_bufIdx; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_needProbeAckData = canFlow ? 1'h0 : chosenQ_io_deq_bits_bits_task_needProbeAckData; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_mshrTask = canFlow ? 1'h0 : chosenQ_io_deq_bits_bits_task_mshrTask; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_mshrId = canFlow ? 8'h0 : chosenQ_io_deq_bits_bits_task_mshrId; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_useProbeData = canFlow ? 1'h0 : chosenQ_io_deq_bits_bits_task_useProbeData; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_dirty = canFlow ? 1'h0 : chosenQ_io_deq_bits_bits_task_dirty; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_way = canFlow ? 3'h0 : chosenQ_io_deq_bits_bits_task_way; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_meta_dirty = canFlow ? 1'h0 : chosenQ_io_deq_bits_bits_task_meta_dirty; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_meta_state = canFlow ? 2'h0 : chosenQ_io_deq_bits_bits_task_meta_state; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_meta_clients = canFlow ? 1'h0 : chosenQ_io_deq_bits_bits_task_meta_clients; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_meta_accessed = canFlow ? 1'h0 : chosenQ_io_deq_bits_bits_task_meta_accessed; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_metaWen = canFlow ? 1'h0 : chosenQ_io_deq_bits_bits_task_metaWen; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_tagWen = canFlow ? 1'h0 : chosenQ_io_deq_bits_bits_task_tagWen; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_dsWen = canFlow ? 1'h0 : chosenQ_io_deq_bits_bits_task_dsWen; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_replTask = canFlow ? 1'h0 : chosenQ_io_deq_bits_bits_task_replTask; // @[RequestBuffer.scala 223:22]
  assign io_out_bits_reqSource = canFlow ? io_in_bits_reqSource : chosenQ_io_deq_bits_bits_task_reqSource; // @[RequestBuffer.scala 223:22]
  assign io_ATag = io_in_bits_tag; // @[RequestBuffer.scala 67:11]
  assign io_ASet = io_in_bits_set; // @[RequestBuffer.scala 68:11]
  assign issueArb_clock = clock;
  assign issueArb_reset = reset;
  assign issueArb_io_in_0_valid = buffer_0_valid & buffer_0_rdy & ~pipeBlockOut_1; // @[RequestBuffer.scala 160:36]
  assign issueArb_io_in_0_bits_task_channel = buffer_0_task_channel; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_0_bits_task_set = buffer_0_task_set; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_0_bits_task_tag = buffer_0_task_tag; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_0_bits_task_off = buffer_0_task_off; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_0_bits_task_opcode = buffer_0_task_opcode; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_0_bits_task_param = buffer_0_task_param; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_0_bits_task_size = buffer_0_task_size; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_0_bits_task_sourceId = buffer_0_task_sourceId; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_0_bits_task_reqSource = buffer_0_task_reqSource; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_1_valid = buffer_1_valid & buffer_1_rdy & ~pipeBlockOut_2; // @[RequestBuffer.scala 160:36]
  assign issueArb_io_in_1_bits_task_channel = buffer_1_task_channel; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_1_bits_task_set = buffer_1_task_set; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_1_bits_task_tag = buffer_1_task_tag; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_1_bits_task_off = buffer_1_task_off; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_1_bits_task_opcode = buffer_1_task_opcode; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_1_bits_task_param = buffer_1_task_param; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_1_bits_task_size = buffer_1_task_size; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_1_bits_task_sourceId = buffer_1_task_sourceId; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_1_bits_task_reqSource = buffer_1_task_reqSource; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_2_valid = buffer_2_valid & buffer_2_rdy & ~pipeBlockOut_3; // @[RequestBuffer.scala 160:36]
  assign issueArb_io_in_2_bits_task_channel = buffer_2_task_channel; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_2_bits_task_set = buffer_2_task_set; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_2_bits_task_tag = buffer_2_task_tag; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_2_bits_task_off = buffer_2_task_off; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_2_bits_task_opcode = buffer_2_task_opcode; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_2_bits_task_param = buffer_2_task_param; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_2_bits_task_size = buffer_2_task_size; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_2_bits_task_sourceId = buffer_2_task_sourceId; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_2_bits_task_reqSource = buffer_2_task_reqSource; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_3_valid = buffer_3_valid & buffer_3_rdy & ~pipeBlockOut_4; // @[RequestBuffer.scala 160:36]
  assign issueArb_io_in_3_bits_task_channel = buffer_3_task_channel; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_3_bits_task_set = buffer_3_task_set; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_3_bits_task_tag = buffer_3_task_tag; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_3_bits_task_off = buffer_3_task_off; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_3_bits_task_opcode = buffer_3_task_opcode; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_3_bits_task_param = buffer_3_task_param; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_3_bits_task_size = buffer_3_task_size; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_3_bits_task_sourceId = buffer_3_task_sourceId; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_in_3_bits_task_reqSource = buffer_3_task_reqSource; // @[RequestBuffer.scala 161:16]
  assign issueArb_io_out_ready = chosenQ_io_enq_ready; // @[RequestBuffer.scala 171:25]
  assign chosenQ_clock = clock;
  assign chosenQ_reset = reset;
  assign chosenQ_io_enq_valid = issueArb_io_out_valid; // @[RequestBuffer.scala 168:24]
  assign chosenQ_io_enq_bits_bits_task_channel = issueArb_io_out_bits_task_channel; // @[RequestBuffer.scala 169:28]
  assign chosenQ_io_enq_bits_bits_task_set = issueArb_io_out_bits_task_set; // @[RequestBuffer.scala 169:28]
  assign chosenQ_io_enq_bits_bits_task_tag = issueArb_io_out_bits_task_tag; // @[RequestBuffer.scala 169:28]
  assign chosenQ_io_enq_bits_bits_task_off = issueArb_io_out_bits_task_off; // @[RequestBuffer.scala 169:28]
  assign chosenQ_io_enq_bits_bits_task_opcode = issueArb_io_out_bits_task_opcode; // @[RequestBuffer.scala 169:28]
  assign chosenQ_io_enq_bits_bits_task_param = issueArb_io_out_bits_task_param; // @[RequestBuffer.scala 169:28]
  assign chosenQ_io_enq_bits_bits_task_size = issueArb_io_out_bits_task_size; // @[RequestBuffer.scala 169:28]
  assign chosenQ_io_enq_bits_bits_task_sourceId = issueArb_io_out_bits_task_sourceId; // @[RequestBuffer.scala 169:28]
  assign chosenQ_io_enq_bits_bits_task_reqSource = issueArb_io_out_bits_task_reqSource; // @[RequestBuffer.scala 169:28]
  assign chosenQ_io_enq_bits_id = issueArb_io_chosen; // @[RequestBuffer.scala 170:26]
  assign chosenQ_io_deq_ready = io_out_ready | cancel; // @[RequestBuffer.scala 221:40]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 225:40]
      buffer_0_valid <= 1'h0; // @[RequestBuffer.scala 226:{42,42}]
    end else if (_T_215 & _io_out_valid_T) begin
      if (2'h0 == chosenQ_io_deq_bits_id) begin
        buffer_0_valid <= 1'h0;
      end else begin
        buffer_0_valid <= _GEN_116;
      end
    end else begin
      buffer_0_valid <= _GEN_116;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 175:19]
      buffer_0_rdy <= 1'h0; // @[RequestBuffer.scala 211:17]
    end else if (buffer_0_valid) begin // @[RequestBuffer.scala 132:14]
      buffer_0_rdy <= ~(|waitMSUpdate) & buffer_0_waitMP == 4'h0 & ~s1_Block; // @[RequestBuffer.scala 141:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h0 == insertIdx) begin
        buffer_0_rdy <= _canFlow_T_148 & _canFlow_T_154 & ~s1Block;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_0_task_channel <= 3'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h0 == insertIdx) begin
        buffer_0_task_channel <= 3'h1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_0_task_set <= 7'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h0 == insertIdx) begin
        buffer_0_task_set <= io_in_bits_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_0_task_tag <= 22'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h0 == insertIdx) begin
        buffer_0_task_tag <= io_in_bits_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_0_task_off <= 6'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h0 == insertIdx) begin
        buffer_0_task_off <= io_in_bits_off;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_0_task_opcode <= 3'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h0 == insertIdx) begin
        buffer_0_task_opcode <= io_in_bits_opcode;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_0_task_param <= 3'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h0 == insertIdx) begin
        buffer_0_task_param <= io_in_bits_param;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_0_task_size <= 3'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h0 == insertIdx) begin
        buffer_0_task_size <= io_in_bits_size;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_0_task_sourceId <= 5'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h0 == insertIdx) begin
        buffer_0_task_sourceId <= io_in_bits_sourceId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_0_task_reqSource <= 4'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h0 == insertIdx) begin
        buffer_0_task_reqSource <= io_in_bits_reqSource;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 175:19]
      buffer_0_waitMP <= 4'h0; // @[RequestBuffer.scala 190:16 204:22 205:18]
    end else if (buffer_0_valid) begin // @[RequestBuffer.scala 132:14]
      if (s1_Block) begin // @[RequestBuffer.scala 143:19]
        buffer_0_waitMP <= _buffer_0_waitMP_T_1; // @[RequestBuffer.scala 143:19]
      end else begin
        buffer_0_waitMP <= _buffer_0_waitMP_T; // @[RequestBuffer.scala 70:23]
      end
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h0 == insertIdx) begin
        buffer_0_waitMP <= _buffer_waitMP_T;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 175:19]
      buffer_0_waitMS <= 16'h0; // @[RequestBuffer.scala 181:21 191:56 192:23]
    end else if (buffer_0_valid) begin // @[RequestBuffer.scala 132:14]
      if (~buffer_0_waitMP[1] & buffer_0_waitMP[0]) begin // @[RequestBuffer.scala 148:19]
        buffer_0_waitMS <= _waitMSUpdate_T_146; // @[RequestBuffer.scala 148:19]
      end else begin
        buffer_0_waitMS <= _waitMSUpdate_T_1; // @[RequestBuffer.scala 70:23]
      end
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h0 == insertIdx) begin
        buffer_0_waitMS <= _canFlow_T_146;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 225:40]
      buffer_1_valid <= 1'h0; // @[RequestBuffer.scala 226:{42,42}]
    end else if (_T_215 & _io_out_valid_T) begin
      if (2'h1 == chosenQ_io_deq_bits_id) begin
        buffer_1_valid <= 1'h0;
      end else begin
        buffer_1_valid <= _GEN_117;
      end
    end else begin
      buffer_1_valid <= _GEN_117;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 175:19]
      buffer_1_rdy <= 1'h0; // @[RequestBuffer.scala 211:17]
    end else if (buffer_1_valid) begin // @[RequestBuffer.scala 132:14]
      buffer_1_rdy <= ~(|waitMSUpdate_1) & buffer_1_waitMP == 4'h0 & ~s1_Block_1; // @[RequestBuffer.scala 141:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h1 == insertIdx) begin
        buffer_1_rdy <= _canFlow_T_148 & _canFlow_T_154 & ~s1Block;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_1_task_channel <= 3'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h1 == insertIdx) begin
        buffer_1_task_channel <= 3'h1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_1_task_set <= 7'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h1 == insertIdx) begin
        buffer_1_task_set <= io_in_bits_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_1_task_tag <= 22'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h1 == insertIdx) begin
        buffer_1_task_tag <= io_in_bits_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_1_task_off <= 6'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h1 == insertIdx) begin
        buffer_1_task_off <= io_in_bits_off;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_1_task_opcode <= 3'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h1 == insertIdx) begin
        buffer_1_task_opcode <= io_in_bits_opcode;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_1_task_param <= 3'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h1 == insertIdx) begin
        buffer_1_task_param <= io_in_bits_param;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_1_task_size <= 3'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h1 == insertIdx) begin
        buffer_1_task_size <= io_in_bits_size;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_1_task_sourceId <= 5'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h1 == insertIdx) begin
        buffer_1_task_sourceId <= io_in_bits_sourceId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_1_task_reqSource <= 4'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h1 == insertIdx) begin
        buffer_1_task_reqSource <= io_in_bits_reqSource;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 175:19]
      buffer_1_waitMP <= 4'h0; // @[RequestBuffer.scala 190:16 204:22 205:18]
    end else if (buffer_1_valid) begin // @[RequestBuffer.scala 132:14]
      if (s1_Block_1) begin // @[RequestBuffer.scala 143:19]
        buffer_1_waitMP <= _buffer_1_waitMP_T_1; // @[RequestBuffer.scala 143:19]
      end else begin
        buffer_1_waitMP <= _buffer_1_waitMP_T; // @[RequestBuffer.scala 70:23]
      end
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h1 == insertIdx) begin
        buffer_1_waitMP <= _buffer_waitMP_T;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 175:19]
      buffer_1_waitMS <= 16'h0; // @[RequestBuffer.scala 181:21 191:56 192:23]
    end else if (buffer_1_valid) begin // @[RequestBuffer.scala 132:14]
      if (~buffer_1_waitMP[1] & buffer_1_waitMP[0]) begin // @[RequestBuffer.scala 148:19]
        buffer_1_waitMS <= _waitMSUpdate_T_293; // @[RequestBuffer.scala 148:19]
      end else begin
        buffer_1_waitMS <= _waitMSUpdate_T_148; // @[RequestBuffer.scala 70:23]
      end
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h1 == insertIdx) begin
        buffer_1_waitMS <= _canFlow_T_146;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 225:40]
      buffer_2_valid <= 1'h0; // @[RequestBuffer.scala 226:{42,42}]
    end else if (_T_215 & _io_out_valid_T) begin
      if (2'h2 == chosenQ_io_deq_bits_id) begin
        buffer_2_valid <= 1'h0;
      end else begin
        buffer_2_valid <= _GEN_118;
      end
    end else begin
      buffer_2_valid <= _GEN_118;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 175:19]
      buffer_2_rdy <= 1'h0; // @[RequestBuffer.scala 211:17]
    end else if (buffer_2_valid) begin // @[RequestBuffer.scala 132:14]
      buffer_2_rdy <= ~(|waitMSUpdate_2) & buffer_2_waitMP == 4'h0 & ~s1_Block_2; // @[RequestBuffer.scala 141:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h2 == insertIdx) begin
        buffer_2_rdy <= _canFlow_T_148 & _canFlow_T_154 & ~s1Block;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_2_task_channel <= 3'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h2 == insertIdx) begin
        buffer_2_task_channel <= 3'h1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_2_task_set <= 7'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h2 == insertIdx) begin
        buffer_2_task_set <= io_in_bits_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_2_task_tag <= 22'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h2 == insertIdx) begin
        buffer_2_task_tag <= io_in_bits_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_2_task_off <= 6'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h2 == insertIdx) begin
        buffer_2_task_off <= io_in_bits_off;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_2_task_opcode <= 3'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h2 == insertIdx) begin
        buffer_2_task_opcode <= io_in_bits_opcode;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_2_task_param <= 3'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h2 == insertIdx) begin
        buffer_2_task_param <= io_in_bits_param;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_2_task_size <= 3'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h2 == insertIdx) begin
        buffer_2_task_size <= io_in_bits_size;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_2_task_sourceId <= 5'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h2 == insertIdx) begin
        buffer_2_task_sourceId <= io_in_bits_sourceId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_2_task_reqSource <= 4'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h2 == insertIdx) begin
        buffer_2_task_reqSource <= io_in_bits_reqSource;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 175:19]
      buffer_2_waitMP <= 4'h0; // @[RequestBuffer.scala 190:16 204:22 205:18]
    end else if (buffer_2_valid) begin // @[RequestBuffer.scala 132:14]
      if (s1_Block_2) begin // @[RequestBuffer.scala 143:19]
        buffer_2_waitMP <= _buffer_2_waitMP_T_1; // @[RequestBuffer.scala 143:19]
      end else begin
        buffer_2_waitMP <= _buffer_2_waitMP_T; // @[RequestBuffer.scala 70:23]
      end
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h2 == insertIdx) begin
        buffer_2_waitMP <= _buffer_waitMP_T;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 175:19]
      buffer_2_waitMS <= 16'h0; // @[RequestBuffer.scala 181:21 191:56 192:23]
    end else if (buffer_2_valid) begin // @[RequestBuffer.scala 132:14]
      if (~buffer_2_waitMP[1] & buffer_2_waitMP[0]) begin // @[RequestBuffer.scala 148:19]
        buffer_2_waitMS <= _waitMSUpdate_T_440; // @[RequestBuffer.scala 148:19]
      end else begin
        buffer_2_waitMS <= _waitMSUpdate_T_295; // @[RequestBuffer.scala 70:23]
      end
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h2 == insertIdx) begin
        buffer_2_waitMS <= _canFlow_T_146;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 225:40]
      buffer_3_valid <= 1'h0; // @[RequestBuffer.scala 226:{42,42}]
    end else if (_T_215 & _io_out_valid_T) begin
      if (2'h3 == chosenQ_io_deq_bits_id) begin
        buffer_3_valid <= 1'h0;
      end else begin
        buffer_3_valid <= _GEN_119;
      end
    end else begin
      buffer_3_valid <= _GEN_119;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 175:19]
      buffer_3_rdy <= 1'h0; // @[RequestBuffer.scala 211:17]
    end else if (buffer_3_valid) begin // @[RequestBuffer.scala 132:14]
      buffer_3_rdy <= ~(|waitMSUpdate_3) & buffer_3_waitMP == 4'h0 & ~s1_Block_3; // @[RequestBuffer.scala 141:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h3 == insertIdx) begin
        buffer_3_rdy <= _canFlow_T_148 & _canFlow_T_154 & ~s1Block;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_3_task_channel <= 3'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h3 == insertIdx) begin
        buffer_3_task_channel <= 3'h1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_3_task_set <= 7'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h3 == insertIdx) begin
        buffer_3_task_set <= io_in_bits_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_3_task_tag <= 22'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h3 == insertIdx) begin
        buffer_3_task_tag <= io_in_bits_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_3_task_off <= 6'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h3 == insertIdx) begin
        buffer_3_task_off <= io_in_bits_off;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_3_task_opcode <= 3'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h3 == insertIdx) begin
        buffer_3_task_opcode <= io_in_bits_opcode;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_3_task_param <= 3'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h3 == insertIdx) begin
        buffer_3_task_param <= io_in_bits_param;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_3_task_size <= 3'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h3 == insertIdx) begin
        buffer_3_task_size <= io_in_bits_size;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_3_task_sourceId <= 5'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h3 == insertIdx) begin
        buffer_3_task_sourceId <= io_in_bits_sourceId;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 132:14]
      buffer_3_task_reqSource <= 4'h0; // @[RequestBuffer.scala 142:{19,19} 70:23]
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h3 == insertIdx) begin
        buffer_3_task_reqSource <= io_in_bits_reqSource;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 175:19]
      buffer_3_waitMP <= 4'h0; // @[RequestBuffer.scala 190:16 204:22 205:18]
    end else if (buffer_3_valid) begin // @[RequestBuffer.scala 132:14]
      if (s1_Block_3) begin // @[RequestBuffer.scala 143:19]
        buffer_3_waitMP <= _buffer_3_waitMP_T_1; // @[RequestBuffer.scala 143:19]
      end else begin
        buffer_3_waitMP <= _buffer_3_waitMP_T; // @[RequestBuffer.scala 70:23]
      end
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h3 == insertIdx) begin
        buffer_3_waitMP <= _buffer_waitMP_T;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 175:19]
      buffer_3_waitMS <= 16'h0; // @[RequestBuffer.scala 181:21 191:56 192:23]
    end else if (buffer_3_valid) begin // @[RequestBuffer.scala 132:14]
      if (~buffer_3_waitMP[1] & buffer_3_waitMP[0]) begin // @[RequestBuffer.scala 148:19]
        buffer_3_waitMS <= _waitMSUpdate_T_587; // @[RequestBuffer.scala 148:19]
      end else begin
        buffer_3_waitMS <= _waitMSUpdate_T_442; // @[RequestBuffer.scala 70:23]
      end
    end else if (alloc) begin // @[RequestBuffer.scala 70:23]
      if (2'h3 == insertIdx) begin
        buffer_3_waitMS <= _canFlow_T_146;
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
  buffer_0_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  buffer_0_rdy = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  buffer_0_task_channel = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  buffer_0_task_set = _RAND_3[6:0];
  _RAND_4 = {1{`RANDOM}};
  buffer_0_task_tag = _RAND_4[21:0];
  _RAND_5 = {1{`RANDOM}};
  buffer_0_task_off = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  buffer_0_task_opcode = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  buffer_0_task_param = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  buffer_0_task_size = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  buffer_0_task_sourceId = _RAND_9[4:0];
  _RAND_10 = {1{`RANDOM}};
  buffer_0_task_reqSource = _RAND_10[3:0];
  _RAND_11 = {1{`RANDOM}};
  buffer_0_waitMP = _RAND_11[3:0];
  _RAND_12 = {1{`RANDOM}};
  buffer_0_waitMS = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  buffer_1_valid = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  buffer_1_rdy = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  buffer_1_task_channel = _RAND_15[2:0];
  _RAND_16 = {1{`RANDOM}};
  buffer_1_task_set = _RAND_16[6:0];
  _RAND_17 = {1{`RANDOM}};
  buffer_1_task_tag = _RAND_17[21:0];
  _RAND_18 = {1{`RANDOM}};
  buffer_1_task_off = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  buffer_1_task_opcode = _RAND_19[2:0];
  _RAND_20 = {1{`RANDOM}};
  buffer_1_task_param = _RAND_20[2:0];
  _RAND_21 = {1{`RANDOM}};
  buffer_1_task_size = _RAND_21[2:0];
  _RAND_22 = {1{`RANDOM}};
  buffer_1_task_sourceId = _RAND_22[4:0];
  _RAND_23 = {1{`RANDOM}};
  buffer_1_task_reqSource = _RAND_23[3:0];
  _RAND_24 = {1{`RANDOM}};
  buffer_1_waitMP = _RAND_24[3:0];
  _RAND_25 = {1{`RANDOM}};
  buffer_1_waitMS = _RAND_25[15:0];
  _RAND_26 = {1{`RANDOM}};
  buffer_2_valid = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  buffer_2_rdy = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  buffer_2_task_channel = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  buffer_2_task_set = _RAND_29[6:0];
  _RAND_30 = {1{`RANDOM}};
  buffer_2_task_tag = _RAND_30[21:0];
  _RAND_31 = {1{`RANDOM}};
  buffer_2_task_off = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  buffer_2_task_opcode = _RAND_32[2:0];
  _RAND_33 = {1{`RANDOM}};
  buffer_2_task_param = _RAND_33[2:0];
  _RAND_34 = {1{`RANDOM}};
  buffer_2_task_size = _RAND_34[2:0];
  _RAND_35 = {1{`RANDOM}};
  buffer_2_task_sourceId = _RAND_35[4:0];
  _RAND_36 = {1{`RANDOM}};
  buffer_2_task_reqSource = _RAND_36[3:0];
  _RAND_37 = {1{`RANDOM}};
  buffer_2_waitMP = _RAND_37[3:0];
  _RAND_38 = {1{`RANDOM}};
  buffer_2_waitMS = _RAND_38[15:0];
  _RAND_39 = {1{`RANDOM}};
  buffer_3_valid = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  buffer_3_rdy = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  buffer_3_task_channel = _RAND_41[2:0];
  _RAND_42 = {1{`RANDOM}};
  buffer_3_task_set = _RAND_42[6:0];
  _RAND_43 = {1{`RANDOM}};
  buffer_3_task_tag = _RAND_43[21:0];
  _RAND_44 = {1{`RANDOM}};
  buffer_3_task_off = _RAND_44[5:0];
  _RAND_45 = {1{`RANDOM}};
  buffer_3_task_opcode = _RAND_45[2:0];
  _RAND_46 = {1{`RANDOM}};
  buffer_3_task_param = _RAND_46[2:0];
  _RAND_47 = {1{`RANDOM}};
  buffer_3_task_size = _RAND_47[2:0];
  _RAND_48 = {1{`RANDOM}};
  buffer_3_task_sourceId = _RAND_48[4:0];
  _RAND_49 = {1{`RANDOM}};
  buffer_3_task_reqSource = _RAND_49[3:0];
  _RAND_50 = {1{`RANDOM}};
  buffer_3_waitMP = _RAND_50[3:0];
  _RAND_51 = {1{`RANDOM}};
  buffer_3_waitMS = _RAND_51[15:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    buffer_0_valid = 1'h0;
  end
  if (reset) begin
    buffer_0_rdy = 1'h0;
  end
  if (reset) begin
    buffer_0_task_channel = 3'h0;
  end
  if (reset) begin
    buffer_0_task_set = 7'h0;
  end
  if (reset) begin
    buffer_0_task_tag = 22'h0;
  end
  if (reset) begin
    buffer_0_task_off = 6'h0;
  end
  if (reset) begin
    buffer_0_task_opcode = 3'h0;
  end
  if (reset) begin
    buffer_0_task_param = 3'h0;
  end
  if (reset) begin
    buffer_0_task_size = 3'h0;
  end
  if (reset) begin
    buffer_0_task_sourceId = 5'h0;
  end
  if (reset) begin
    buffer_0_task_reqSource = 4'h0;
  end
  if (reset) begin
    buffer_0_waitMP = 4'h0;
  end
  if (reset) begin
    buffer_0_waitMS = 16'h0;
  end
  if (reset) begin
    buffer_1_valid = 1'h0;
  end
  if (reset) begin
    buffer_1_rdy = 1'h0;
  end
  if (reset) begin
    buffer_1_task_channel = 3'h0;
  end
  if (reset) begin
    buffer_1_task_set = 7'h0;
  end
  if (reset) begin
    buffer_1_task_tag = 22'h0;
  end
  if (reset) begin
    buffer_1_task_off = 6'h0;
  end
  if (reset) begin
    buffer_1_task_opcode = 3'h0;
  end
  if (reset) begin
    buffer_1_task_param = 3'h0;
  end
  if (reset) begin
    buffer_1_task_size = 3'h0;
  end
  if (reset) begin
    buffer_1_task_sourceId = 5'h0;
  end
  if (reset) begin
    buffer_1_task_reqSource = 4'h0;
  end
  if (reset) begin
    buffer_1_waitMP = 4'h0;
  end
  if (reset) begin
    buffer_1_waitMS = 16'h0;
  end
  if (reset) begin
    buffer_2_valid = 1'h0;
  end
  if (reset) begin
    buffer_2_rdy = 1'h0;
  end
  if (reset) begin
    buffer_2_task_channel = 3'h0;
  end
  if (reset) begin
    buffer_2_task_set = 7'h0;
  end
  if (reset) begin
    buffer_2_task_tag = 22'h0;
  end
  if (reset) begin
    buffer_2_task_off = 6'h0;
  end
  if (reset) begin
    buffer_2_task_opcode = 3'h0;
  end
  if (reset) begin
    buffer_2_task_param = 3'h0;
  end
  if (reset) begin
    buffer_2_task_size = 3'h0;
  end
  if (reset) begin
    buffer_2_task_sourceId = 5'h0;
  end
  if (reset) begin
    buffer_2_task_reqSource = 4'h0;
  end
  if (reset) begin
    buffer_2_waitMP = 4'h0;
  end
  if (reset) begin
    buffer_2_waitMS = 16'h0;
  end
  if (reset) begin
    buffer_3_valid = 1'h0;
  end
  if (reset) begin
    buffer_3_rdy = 1'h0;
  end
  if (reset) begin
    buffer_3_task_channel = 3'h0;
  end
  if (reset) begin
    buffer_3_task_set = 7'h0;
  end
  if (reset) begin
    buffer_3_task_tag = 22'h0;
  end
  if (reset) begin
    buffer_3_task_off = 6'h0;
  end
  if (reset) begin
    buffer_3_task_opcode = 3'h0;
  end
  if (reset) begin
    buffer_3_task_param = 3'h0;
  end
  if (reset) begin
    buffer_3_task_size = 3'h0;
  end
  if (reset) begin
    buffer_3_task_sourceId = 5'h0;
  end
  if (reset) begin
    buffer_3_task_reqSource = 4'h0;
  end
  if (reset) begin
    buffer_3_waitMP = 4'h0;
  end
  if (reset) begin
    buffer_3_waitMS = 16'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

