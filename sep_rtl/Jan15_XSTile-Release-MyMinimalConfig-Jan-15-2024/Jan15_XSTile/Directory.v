module Directory(
  input         clock,
  input         reset,
  output        io_read_ready,
  input         io_read_valid,
  input  [21:0] io_read_bits_tag,
  input  [6:0]  io_read_bits_set,
  input  [7:0]  io_read_bits_wayMask,
  input  [2:0]  io_read_bits_replacerInfo_channel,
  input  [2:0]  io_read_bits_replacerInfo_opcode,
  input  [3:0]  io_read_bits_replacerInfo_reqSource,
  input         io_read_bits_refill,
  input  [7:0]  io_read_bits_mshrId,
  output        io_resp_hit,
  output [21:0] io_resp_tag,
  output [6:0]  io_resp_set,
  output [2:0]  io_resp_way,
  output        io_resp_meta_dirty,
  output [1:0]  io_resp_meta_state,
  output        io_resp_meta_clients,
  output        io_resp_meta_accessed,
  output        io_resp_error,
  output [2:0]  io_resp_replacerInfo_channel,
  output [2:0]  io_resp_replacerInfo_opcode,
  output [3:0]  io_resp_replacerInfo_reqSource,
  input         io_metaWReq_valid,
  input  [6:0]  io_metaWReq_bits_set,
  input  [7:0]  io_metaWReq_bits_wayOH,
  input         io_metaWReq_bits_wmeta_dirty,
  input  [1:0]  io_metaWReq_bits_wmeta_state,
  input         io_metaWReq_bits_wmeta_clients,
  input         io_metaWReq_bits_wmeta_accessed,
  input         io_tagWReq_valid,
  input  [6:0]  io_tagWReq_bits_set,
  input  [2:0]  io_tagWReq_bits_way,
  input  [21:0] io_tagWReq_bits_wtag,
  output        io_replResp_valid,
  output [21:0] io_replResp_bits_tag,
  output [6:0]  io_replResp_bits_set,
  output [2:0]  io_replResp_bits_way,
  output        io_replResp_bits_meta_dirty,
  output [1:0]  io_replResp_bits_meta_state,
  output        io_replResp_bits_meta_clients,
  output        io_replResp_bits_meta_accessed,
  output [7:0]  io_replResp_bits_mshrId,
  output        io_replResp_bits_retry,
  input         io_msInfo_0_valid,
  input  [6:0]  io_msInfo_0_bits_set,
  input  [2:0]  io_msInfo_0_bits_way,
  input  [21:0] io_msInfo_0_bits_reqTag,
  input         io_msInfo_0_bits_willFree,
  input         io_msInfo_0_bits_needRelease,
  input         io_msInfo_0_bits_releaseNotSent,
  input  [21:0] io_msInfo_0_bits_metaTag,
  input         io_msInfo_0_bits_dirHit,
  input         io_msInfo_0_bits_nestB,
  input         io_msInfo_0_bits_mergeB,
  input         io_msInfo_0_bits_isAcqOrPrefetch,
  input         io_msInfo_0_bits_isPrefetch,
  input         io_msInfo_1_valid,
  input  [6:0]  io_msInfo_1_bits_set,
  input  [2:0]  io_msInfo_1_bits_way,
  input  [21:0] io_msInfo_1_bits_reqTag,
  input         io_msInfo_1_bits_willFree,
  input         io_msInfo_1_bits_needRelease,
  input         io_msInfo_1_bits_releaseNotSent,
  input  [21:0] io_msInfo_1_bits_metaTag,
  input         io_msInfo_1_bits_dirHit,
  input         io_msInfo_1_bits_nestB,
  input         io_msInfo_1_bits_mergeB,
  input         io_msInfo_1_bits_isAcqOrPrefetch,
  input         io_msInfo_1_bits_isPrefetch,
  input         io_msInfo_2_valid,
  input  [6:0]  io_msInfo_2_bits_set,
  input  [2:0]  io_msInfo_2_bits_way,
  input  [21:0] io_msInfo_2_bits_reqTag,
  input         io_msInfo_2_bits_willFree,
  input         io_msInfo_2_bits_needRelease,
  input         io_msInfo_2_bits_releaseNotSent,
  input  [21:0] io_msInfo_2_bits_metaTag,
  input         io_msInfo_2_bits_dirHit,
  input         io_msInfo_2_bits_nestB,
  input         io_msInfo_2_bits_mergeB,
  input         io_msInfo_2_bits_isAcqOrPrefetch,
  input         io_msInfo_2_bits_isPrefetch,
  input         io_msInfo_3_valid,
  input  [6:0]  io_msInfo_3_bits_set,
  input  [2:0]  io_msInfo_3_bits_way,
  input  [21:0] io_msInfo_3_bits_reqTag,
  input         io_msInfo_3_bits_willFree,
  input         io_msInfo_3_bits_needRelease,
  input         io_msInfo_3_bits_releaseNotSent,
  input  [21:0] io_msInfo_3_bits_metaTag,
  input         io_msInfo_3_bits_dirHit,
  input         io_msInfo_3_bits_nestB,
  input         io_msInfo_3_bits_mergeB,
  input         io_msInfo_3_bits_isAcqOrPrefetch,
  input         io_msInfo_3_bits_isPrefetch,
  input         io_msInfo_4_valid,
  input  [6:0]  io_msInfo_4_bits_set,
  input  [2:0]  io_msInfo_4_bits_way,
  input  [21:0] io_msInfo_4_bits_reqTag,
  input         io_msInfo_4_bits_willFree,
  input         io_msInfo_4_bits_needRelease,
  input         io_msInfo_4_bits_releaseNotSent,
  input  [21:0] io_msInfo_4_bits_metaTag,
  input         io_msInfo_4_bits_dirHit,
  input         io_msInfo_4_bits_nestB,
  input         io_msInfo_4_bits_mergeB,
  input         io_msInfo_4_bits_isAcqOrPrefetch,
  input         io_msInfo_4_bits_isPrefetch,
  input         io_msInfo_5_valid,
  input  [6:0]  io_msInfo_5_bits_set,
  input  [2:0]  io_msInfo_5_bits_way,
  input  [21:0] io_msInfo_5_bits_reqTag,
  input         io_msInfo_5_bits_willFree,
  input         io_msInfo_5_bits_needRelease,
  input         io_msInfo_5_bits_releaseNotSent,
  input  [21:0] io_msInfo_5_bits_metaTag,
  input         io_msInfo_5_bits_dirHit,
  input         io_msInfo_5_bits_nestB,
  input         io_msInfo_5_bits_mergeB,
  input         io_msInfo_5_bits_isAcqOrPrefetch,
  input         io_msInfo_5_bits_isPrefetch,
  input         io_msInfo_6_valid,
  input  [6:0]  io_msInfo_6_bits_set,
  input  [2:0]  io_msInfo_6_bits_way,
  input  [21:0] io_msInfo_6_bits_reqTag,
  input         io_msInfo_6_bits_willFree,
  input         io_msInfo_6_bits_needRelease,
  input         io_msInfo_6_bits_releaseNotSent,
  input  [21:0] io_msInfo_6_bits_metaTag,
  input         io_msInfo_6_bits_dirHit,
  input         io_msInfo_6_bits_nestB,
  input         io_msInfo_6_bits_mergeB,
  input         io_msInfo_6_bits_isAcqOrPrefetch,
  input         io_msInfo_6_bits_isPrefetch,
  input         io_msInfo_7_valid,
  input  [6:0]  io_msInfo_7_bits_set,
  input  [2:0]  io_msInfo_7_bits_way,
  input  [21:0] io_msInfo_7_bits_reqTag,
  input         io_msInfo_7_bits_willFree,
  input         io_msInfo_7_bits_needRelease,
  input         io_msInfo_7_bits_releaseNotSent,
  input  [21:0] io_msInfo_7_bits_metaTag,
  input         io_msInfo_7_bits_dirHit,
  input         io_msInfo_7_bits_nestB,
  input         io_msInfo_7_bits_mergeB,
  input         io_msInfo_7_bits_isAcqOrPrefetch,
  input         io_msInfo_7_bits_isPrefetch,
  input         io_msInfo_8_valid,
  input  [6:0]  io_msInfo_8_bits_set,
  input  [2:0]  io_msInfo_8_bits_way,
  input  [21:0] io_msInfo_8_bits_reqTag,
  input         io_msInfo_8_bits_willFree,
  input         io_msInfo_8_bits_needRelease,
  input         io_msInfo_8_bits_releaseNotSent,
  input  [21:0] io_msInfo_8_bits_metaTag,
  input         io_msInfo_8_bits_dirHit,
  input         io_msInfo_8_bits_nestB,
  input         io_msInfo_8_bits_mergeB,
  input         io_msInfo_8_bits_isAcqOrPrefetch,
  input         io_msInfo_8_bits_isPrefetch,
  input         io_msInfo_9_valid,
  input  [6:0]  io_msInfo_9_bits_set,
  input  [2:0]  io_msInfo_9_bits_way,
  input  [21:0] io_msInfo_9_bits_reqTag,
  input         io_msInfo_9_bits_willFree,
  input         io_msInfo_9_bits_needRelease,
  input         io_msInfo_9_bits_releaseNotSent,
  input  [21:0] io_msInfo_9_bits_metaTag,
  input         io_msInfo_9_bits_dirHit,
  input         io_msInfo_9_bits_nestB,
  input         io_msInfo_9_bits_mergeB,
  input         io_msInfo_9_bits_isAcqOrPrefetch,
  input         io_msInfo_9_bits_isPrefetch,
  input         io_msInfo_10_valid,
  input  [6:0]  io_msInfo_10_bits_set,
  input  [2:0]  io_msInfo_10_bits_way,
  input  [21:0] io_msInfo_10_bits_reqTag,
  input         io_msInfo_10_bits_willFree,
  input         io_msInfo_10_bits_needRelease,
  input         io_msInfo_10_bits_releaseNotSent,
  input  [21:0] io_msInfo_10_bits_metaTag,
  input         io_msInfo_10_bits_dirHit,
  input         io_msInfo_10_bits_nestB,
  input         io_msInfo_10_bits_mergeB,
  input         io_msInfo_10_bits_isAcqOrPrefetch,
  input         io_msInfo_10_bits_isPrefetch,
  input         io_msInfo_11_valid,
  input  [6:0]  io_msInfo_11_bits_set,
  input  [2:0]  io_msInfo_11_bits_way,
  input  [21:0] io_msInfo_11_bits_reqTag,
  input         io_msInfo_11_bits_willFree,
  input         io_msInfo_11_bits_needRelease,
  input         io_msInfo_11_bits_releaseNotSent,
  input  [21:0] io_msInfo_11_bits_metaTag,
  input         io_msInfo_11_bits_dirHit,
  input         io_msInfo_11_bits_nestB,
  input         io_msInfo_11_bits_mergeB,
  input         io_msInfo_11_bits_isAcqOrPrefetch,
  input         io_msInfo_11_bits_isPrefetch,
  input         io_msInfo_12_valid,
  input  [6:0]  io_msInfo_12_bits_set,
  input  [2:0]  io_msInfo_12_bits_way,
  input  [21:0] io_msInfo_12_bits_reqTag,
  input         io_msInfo_12_bits_willFree,
  input         io_msInfo_12_bits_needRelease,
  input         io_msInfo_12_bits_releaseNotSent,
  input  [21:0] io_msInfo_12_bits_metaTag,
  input         io_msInfo_12_bits_dirHit,
  input         io_msInfo_12_bits_nestB,
  input         io_msInfo_12_bits_mergeB,
  input         io_msInfo_12_bits_isAcqOrPrefetch,
  input         io_msInfo_12_bits_isPrefetch,
  input         io_msInfo_13_valid,
  input  [6:0]  io_msInfo_13_bits_set,
  input  [2:0]  io_msInfo_13_bits_way,
  input  [21:0] io_msInfo_13_bits_reqTag,
  input         io_msInfo_13_bits_willFree,
  input         io_msInfo_13_bits_needRelease,
  input         io_msInfo_13_bits_releaseNotSent,
  input  [21:0] io_msInfo_13_bits_metaTag,
  input         io_msInfo_13_bits_dirHit,
  input         io_msInfo_13_bits_nestB,
  input         io_msInfo_13_bits_mergeB,
  input         io_msInfo_13_bits_isAcqOrPrefetch,
  input         io_msInfo_13_bits_isPrefetch,
  input         io_msInfo_14_valid,
  input  [6:0]  io_msInfo_14_bits_set,
  input  [2:0]  io_msInfo_14_bits_way,
  input  [21:0] io_msInfo_14_bits_reqTag,
  input         io_msInfo_14_bits_willFree,
  input         io_msInfo_14_bits_needRelease,
  input         io_msInfo_14_bits_releaseNotSent,
  input  [21:0] io_msInfo_14_bits_metaTag,
  input         io_msInfo_14_bits_dirHit,
  input         io_msInfo_14_bits_nestB,
  input         io_msInfo_14_bits_mergeB,
  input         io_msInfo_14_bits_isAcqOrPrefetch,
  input         io_msInfo_14_bits_isPrefetch,
  input         io_msInfo_15_valid,
  input  [6:0]  io_msInfo_15_bits_set,
  input  [2:0]  io_msInfo_15_bits_way,
  input  [21:0] io_msInfo_15_bits_reqTag,
  input         io_msInfo_15_bits_willFree,
  input         io_msInfo_15_bits_needRelease,
  input         io_msInfo_15_bits_releaseNotSent,
  input  [21:0] io_msInfo_15_bits_metaTag,
  input         io_msInfo_15_bits_dirHit,
  input         io_msInfo_15_bits_nestB,
  input         io_msInfo_15_bits_mergeB,
  input         io_msInfo_15_bits_isAcqOrPrefetch,
  input         io_msInfo_15_bits_isPrefetch
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
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
`endif // RANDOMIZE_REG_INIT
  wire  tagArray_clock; // @[Directory.scala 132:25]
  wire  tagArray_io_rreq_ready; // @[Directory.scala 132:25]
  wire  tagArray_io_rreq_valid; // @[Directory.scala 132:25]
  wire [6:0] tagArray_io_rreq_bits_setIdx; // @[Directory.scala 132:25]
  wire [21:0] tagArray_io_rresp_data_0; // @[Directory.scala 132:25]
  wire [21:0] tagArray_io_rresp_data_1; // @[Directory.scala 132:25]
  wire [21:0] tagArray_io_rresp_data_2; // @[Directory.scala 132:25]
  wire [21:0] tagArray_io_rresp_data_3; // @[Directory.scala 132:25]
  wire [21:0] tagArray_io_rresp_data_4; // @[Directory.scala 132:25]
  wire [21:0] tagArray_io_rresp_data_5; // @[Directory.scala 132:25]
  wire [21:0] tagArray_io_rresp_data_6; // @[Directory.scala 132:25]
  wire [21:0] tagArray_io_rresp_data_7; // @[Directory.scala 132:25]
  wire  tagArray_io_wreq_ready; // @[Directory.scala 132:25]
  wire  tagArray_io_wreq_valid; // @[Directory.scala 132:25]
  wire [6:0] tagArray_io_wreq_bits_setIdx; // @[Directory.scala 132:25]
  wire [21:0] tagArray_io_wreq_bits_data_0; // @[Directory.scala 132:25]
  wire [21:0] tagArray_io_wreq_bits_data_1; // @[Directory.scala 132:25]
  wire [21:0] tagArray_io_wreq_bits_data_2; // @[Directory.scala 132:25]
  wire [21:0] tagArray_io_wreq_bits_data_3; // @[Directory.scala 132:25]
  wire [21:0] tagArray_io_wreq_bits_data_4; // @[Directory.scala 132:25]
  wire [21:0] tagArray_io_wreq_bits_data_5; // @[Directory.scala 132:25]
  wire [21:0] tagArray_io_wreq_bits_data_6; // @[Directory.scala 132:25]
  wire [21:0] tagArray_io_wreq_bits_data_7; // @[Directory.scala 132:25]
  wire [7:0] tagArray_io_wreq_bits_waymask; // @[Directory.scala 132:25]
  wire  metaArray_clock; // @[Directory.scala 133:25]
  wire  metaArray_io_rreq_ready; // @[Directory.scala 133:25]
  wire  metaArray_io_rreq_valid; // @[Directory.scala 133:25]
  wire [6:0] metaArray_io_rreq_bits_setIdx; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_0_dirty; // @[Directory.scala 133:25]
  wire [1:0] metaArray_io_rresp_data_0_state; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_0_clients; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_0_accessed; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_1_dirty; // @[Directory.scala 133:25]
  wire [1:0] metaArray_io_rresp_data_1_state; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_1_clients; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_1_accessed; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_2_dirty; // @[Directory.scala 133:25]
  wire [1:0] metaArray_io_rresp_data_2_state; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_2_clients; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_2_accessed; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_3_dirty; // @[Directory.scala 133:25]
  wire [1:0] metaArray_io_rresp_data_3_state; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_3_clients; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_3_accessed; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_4_dirty; // @[Directory.scala 133:25]
  wire [1:0] metaArray_io_rresp_data_4_state; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_4_clients; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_4_accessed; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_5_dirty; // @[Directory.scala 133:25]
  wire [1:0] metaArray_io_rresp_data_5_state; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_5_clients; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_5_accessed; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_6_dirty; // @[Directory.scala 133:25]
  wire [1:0] metaArray_io_rresp_data_6_state; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_6_clients; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_6_accessed; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_7_dirty; // @[Directory.scala 133:25]
  wire [1:0] metaArray_io_rresp_data_7_state; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_7_clients; // @[Directory.scala 133:25]
  wire  metaArray_io_rresp_data_7_accessed; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_ready; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_valid; // @[Directory.scala 133:25]
  wire [6:0] metaArray_io_wreq_bits_setIdx; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_0_dirty; // @[Directory.scala 133:25]
  wire [1:0] metaArray_io_wreq_bits_data_0_state; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_0_clients; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_0_accessed; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_1_dirty; // @[Directory.scala 133:25]
  wire [1:0] metaArray_io_wreq_bits_data_1_state; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_1_clients; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_1_accessed; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_2_dirty; // @[Directory.scala 133:25]
  wire [1:0] metaArray_io_wreq_bits_data_2_state; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_2_clients; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_2_accessed; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_3_dirty; // @[Directory.scala 133:25]
  wire [1:0] metaArray_io_wreq_bits_data_3_state; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_3_clients; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_3_accessed; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_4_dirty; // @[Directory.scala 133:25]
  wire [1:0] metaArray_io_wreq_bits_data_4_state; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_4_clients; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_4_accessed; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_5_dirty; // @[Directory.scala 133:25]
  wire [1:0] metaArray_io_wreq_bits_data_5_state; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_5_clients; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_5_accessed; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_6_dirty; // @[Directory.scala 133:25]
  wire [1:0] metaArray_io_wreq_bits_data_6_state; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_6_clients; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_6_accessed; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_7_dirty; // @[Directory.scala 133:25]
  wire [1:0] metaArray_io_wreq_bits_data_7_state; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_7_clients; // @[Directory.scala 133:25]
  wire  metaArray_io_wreq_bits_data_7_accessed; // @[Directory.scala 133:25]
  wire [7:0] metaArray_io_wreq_bits_waymask; // @[Directory.scala 133:25]
  wire  replacer_sram_opt_clock; // @[Directory.scala 144:16]
  wire  replacer_sram_opt_reset; // @[Directory.scala 144:16]
  wire  replacer_sram_opt_io_rreq_valid; // @[Directory.scala 144:16]
  wire [6:0] replacer_sram_opt_io_rreq_bits_setIdx; // @[Directory.scala 144:16]
  wire [6:0] replacer_sram_opt_io_rresp_data_0; // @[Directory.scala 144:16]
  wire  replacer_sram_opt_io_wreq_valid; // @[Directory.scala 144:16]
  wire [6:0] replacer_sram_opt_io_wreq_bits_setIdx; // @[Directory.scala 144:16]
  wire [6:0] replacer_sram_opt_io_wreq_bits_data_0; // @[Directory.scala 144:16]
  reg  resetFinish; // @[Directory.scala 137:28]
  reg [6:0] resetIdx; // @[Directory.scala 138:25]
  wire  _reqValid_s2_T = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  reg  reqValid_s2; // @[Directory.scala 152:28]
  reg  reqValid_s3; // @[Directory.scala 153:28]
  reg [21:0] req_s2_tag; // @[Reg.scala 28:20]
  reg [6:0] req_s2_set; // @[Reg.scala 28:20]
  reg [7:0] req_s2_wayMask; // @[Reg.scala 28:20]
  reg [2:0] req_s2_replacerInfo_channel; // @[Reg.scala 28:20]
  reg [2:0] req_s2_replacerInfo_opcode; // @[Reg.scala 28:20]
  reg [3:0] req_s2_replacerInfo_reqSource; // @[Reg.scala 28:20]
  reg [7:0] req_s2_mshrId; // @[Reg.scala 28:20]
  reg [21:0] req_s3_tag; // @[Reg.scala 28:20]
  reg [6:0] req_s3_set; // @[Reg.scala 28:20]
  reg [7:0] req_s3_wayMask; // @[Reg.scala 28:20]
  reg [2:0] req_s3_replacerInfo_channel; // @[Reg.scala 28:20]
  reg [2:0] req_s3_replacerInfo_opcode; // @[Reg.scala 28:20]
  reg [3:0] req_s3_replacerInfo_reqSource; // @[Reg.scala 28:20]
  reg [7:0] req_s3_mshrId; // @[Reg.scala 28:20]
  reg  refillReqValid_s2; // @[Directory.scala 157:34]
  reg  refillReqValid_s3; // @[Directory.scala 158:34]
  reg  metaAll_s3_0_dirty; // @[Reg.scala 28:20]
  reg [1:0] metaAll_s3_0_state; // @[Reg.scala 28:20]
  reg  metaAll_s3_0_clients; // @[Reg.scala 28:20]
  reg  metaAll_s3_0_accessed; // @[Reg.scala 28:20]
  reg  metaAll_s3_1_dirty; // @[Reg.scala 28:20]
  reg [1:0] metaAll_s3_1_state; // @[Reg.scala 28:20]
  reg  metaAll_s3_1_clients; // @[Reg.scala 28:20]
  reg  metaAll_s3_1_accessed; // @[Reg.scala 28:20]
  reg  metaAll_s3_2_dirty; // @[Reg.scala 28:20]
  reg [1:0] metaAll_s3_2_state; // @[Reg.scala 28:20]
  reg  metaAll_s3_2_clients; // @[Reg.scala 28:20]
  reg  metaAll_s3_2_accessed; // @[Reg.scala 28:20]
  reg  metaAll_s3_3_dirty; // @[Reg.scala 28:20]
  reg [1:0] metaAll_s3_3_state; // @[Reg.scala 28:20]
  reg  metaAll_s3_3_clients; // @[Reg.scala 28:20]
  reg  metaAll_s3_3_accessed; // @[Reg.scala 28:20]
  reg  metaAll_s3_4_dirty; // @[Reg.scala 28:20]
  reg [1:0] metaAll_s3_4_state; // @[Reg.scala 28:20]
  reg  metaAll_s3_4_clients; // @[Reg.scala 28:20]
  reg  metaAll_s3_4_accessed; // @[Reg.scala 28:20]
  reg  metaAll_s3_5_dirty; // @[Reg.scala 28:20]
  reg [1:0] metaAll_s3_5_state; // @[Reg.scala 28:20]
  reg  metaAll_s3_5_clients; // @[Reg.scala 28:20]
  reg  metaAll_s3_5_accessed; // @[Reg.scala 28:20]
  reg  metaAll_s3_6_dirty; // @[Reg.scala 28:20]
  reg [1:0] metaAll_s3_6_state; // @[Reg.scala 28:20]
  reg  metaAll_s3_6_clients; // @[Reg.scala 28:20]
  reg  metaAll_s3_6_accessed; // @[Reg.scala 28:20]
  reg  metaAll_s3_7_dirty; // @[Reg.scala 28:20]
  reg [1:0] metaAll_s3_7_state; // @[Reg.scala 28:20]
  reg  metaAll_s3_7_clients; // @[Reg.scala 28:20]
  reg  metaAll_s3_7_accessed; // @[Reg.scala 28:20]
  wire  metaRead_0_dirty = metaArray_io_rresp_data_0_dirty; // @[Directory.scala 135:22 170:12]
  wire [1:0] metaRead_0_state = metaArray_io_rresp_data_0_state; // @[Directory.scala 135:22 170:12]
  wire  metaRead_0_clients = metaArray_io_rresp_data_0_clients; // @[Directory.scala 135:22 170:12]
  wire  metaRead_0_accessed = metaArray_io_rresp_data_0_accessed; // @[Directory.scala 135:22 170:12]
  wire  metaRead_1_dirty = metaArray_io_rresp_data_1_dirty; // @[Directory.scala 135:22 170:12]
  wire [1:0] metaRead_1_state = metaArray_io_rresp_data_1_state; // @[Directory.scala 135:22 170:12]
  wire  metaRead_1_clients = metaArray_io_rresp_data_1_clients; // @[Directory.scala 135:22 170:12]
  wire  metaRead_1_accessed = metaArray_io_rresp_data_1_accessed; // @[Directory.scala 135:22 170:12]
  wire  metaRead_2_dirty = metaArray_io_rresp_data_2_dirty; // @[Directory.scala 135:22 170:12]
  wire [1:0] metaRead_2_state = metaArray_io_rresp_data_2_state; // @[Directory.scala 135:22 170:12]
  wire  metaRead_2_clients = metaArray_io_rresp_data_2_clients; // @[Directory.scala 135:22 170:12]
  wire  metaRead_2_accessed = metaArray_io_rresp_data_2_accessed; // @[Directory.scala 135:22 170:12]
  wire  metaRead_3_dirty = metaArray_io_rresp_data_3_dirty; // @[Directory.scala 135:22 170:12]
  wire [1:0] metaRead_3_state = metaArray_io_rresp_data_3_state; // @[Directory.scala 135:22 170:12]
  wire  metaRead_3_clients = metaArray_io_rresp_data_3_clients; // @[Directory.scala 135:22 170:12]
  wire  metaRead_3_accessed = metaArray_io_rresp_data_3_accessed; // @[Directory.scala 135:22 170:12]
  wire  metaRead_4_dirty = metaArray_io_rresp_data_4_dirty; // @[Directory.scala 135:22 170:12]
  wire [1:0] metaRead_4_state = metaArray_io_rresp_data_4_state; // @[Directory.scala 135:22 170:12]
  wire  metaRead_4_clients = metaArray_io_rresp_data_4_clients; // @[Directory.scala 135:22 170:12]
  wire  metaRead_4_accessed = metaArray_io_rresp_data_4_accessed; // @[Directory.scala 135:22 170:12]
  wire  metaRead_5_dirty = metaArray_io_rresp_data_5_dirty; // @[Directory.scala 135:22 170:12]
  wire [1:0] metaRead_5_state = metaArray_io_rresp_data_5_state; // @[Directory.scala 135:22 170:12]
  wire  metaRead_5_clients = metaArray_io_rresp_data_5_clients; // @[Directory.scala 135:22 170:12]
  wire  metaRead_5_accessed = metaArray_io_rresp_data_5_accessed; // @[Directory.scala 135:22 170:12]
  wire  metaRead_6_dirty = metaArray_io_rresp_data_6_dirty; // @[Directory.scala 135:22 170:12]
  wire [1:0] metaRead_6_state = metaArray_io_rresp_data_6_state; // @[Directory.scala 135:22 170:12]
  wire  metaRead_6_clients = metaArray_io_rresp_data_6_clients; // @[Directory.scala 135:22 170:12]
  wire  metaRead_6_accessed = metaArray_io_rresp_data_6_accessed; // @[Directory.scala 135:22 170:12]
  wire  metaRead_7_dirty = metaArray_io_rresp_data_7_dirty; // @[Directory.scala 135:22 170:12]
  wire [1:0] metaRead_7_state = metaArray_io_rresp_data_7_state; // @[Directory.scala 135:22 170:12]
  wire  metaRead_7_clients = metaArray_io_rresp_data_7_clients; // @[Directory.scala 135:22 170:12]
  wire  metaRead_7_accessed = metaArray_io_rresp_data_7_accessed; // @[Directory.scala 135:22 170:12]
  reg [21:0] tagAll_s3_0; // @[Reg.scala 28:20]
  reg [21:0] tagAll_s3_1; // @[Reg.scala 28:20]
  reg [21:0] tagAll_s3_2; // @[Reg.scala 28:20]
  reg [21:0] tagAll_s3_3; // @[Reg.scala 28:20]
  reg [21:0] tagAll_s3_4; // @[Reg.scala 28:20]
  reg [21:0] tagAll_s3_5; // @[Reg.scala 28:20]
  reg [21:0] tagAll_s3_6; // @[Reg.scala 28:20]
  reg [21:0] tagAll_s3_7; // @[Reg.scala 28:20]
  wire [21:0] tagRead_0 = tagArray_io_rresp_data_0; // @[Directory.scala 134:21 161:11]
  wire [21:0] tagRead_1 = tagArray_io_rresp_data_1; // @[Directory.scala 134:21 161:11]
  wire [21:0] tagRead_2 = tagArray_io_rresp_data_2; // @[Directory.scala 134:21 161:11]
  wire [21:0] tagRead_3 = tagArray_io_rresp_data_3; // @[Directory.scala 134:21 161:11]
  wire [21:0] tagRead_4 = tagArray_io_rresp_data_4; // @[Directory.scala 134:21 161:11]
  wire [21:0] tagRead_5 = tagArray_io_rresp_data_5; // @[Directory.scala 134:21 161:11]
  wire [21:0] tagRead_6 = tagArray_io_rresp_data_6; // @[Directory.scala 134:21 161:11]
  wire [21:0] tagRead_7 = tagArray_io_rresp_data_7; // @[Directory.scala 134:21 161:11]
  wire  tagMatchVec_0 = tagAll_s3_0 == req_s3_tag; // @[Directory.scala 181:54]
  wire  tagMatchVec_1 = tagAll_s3_1 == req_s3_tag; // @[Directory.scala 181:54]
  wire  tagMatchVec_2 = tagAll_s3_2 == req_s3_tag; // @[Directory.scala 181:54]
  wire  tagMatchVec_3 = tagAll_s3_3 == req_s3_tag; // @[Directory.scala 181:54]
  wire  tagMatchVec_4 = tagAll_s3_4 == req_s3_tag; // @[Directory.scala 181:54]
  wire  tagMatchVec_5 = tagAll_s3_5 == req_s3_tag; // @[Directory.scala 181:54]
  wire  tagMatchVec_6 = tagAll_s3_6 == req_s3_tag; // @[Directory.scala 181:54]
  wire  tagMatchVec_7 = tagAll_s3_7 == req_s3_tag; // @[Directory.scala 181:54]
  wire  metaValidVec_0 = metaAll_s3_0_state != 2'h0; // @[Directory.scala 182:45]
  wire  metaValidVec_1 = metaAll_s3_1_state != 2'h0; // @[Directory.scala 182:45]
  wire  metaValidVec_2 = metaAll_s3_2_state != 2'h0; // @[Directory.scala 182:45]
  wire  metaValidVec_3 = metaAll_s3_3_state != 2'h0; // @[Directory.scala 182:45]
  wire  metaValidVec_4 = metaAll_s3_4_state != 2'h0; // @[Directory.scala 182:45]
  wire  metaValidVec_5 = metaAll_s3_5_state != 2'h0; // @[Directory.scala 182:45]
  wire  metaValidVec_6 = metaAll_s3_6_state != 2'h0; // @[Directory.scala 182:45]
  wire  metaValidVec_7 = metaAll_s3_7_state != 2'h0; // @[Directory.scala 182:45]
  wire  hitVec_0 = tagMatchVec_0 & metaValidVec_0; // @[Directory.scala 183:60]
  wire  hitVec_1 = tagMatchVec_1 & metaValidVec_1; // @[Directory.scala 183:60]
  wire  hitVec_2 = tagMatchVec_2 & metaValidVec_2; // @[Directory.scala 183:60]
  wire  hitVec_3 = tagMatchVec_3 & metaValidVec_3; // @[Directory.scala 183:60]
  wire  hitVec_4 = tagMatchVec_4 & metaValidVec_4; // @[Directory.scala 183:60]
  wire  hitVec_5 = tagMatchVec_5 & metaValidVec_5; // @[Directory.scala 183:60]
  wire  hitVec_6 = tagMatchVec_6 & metaValidVec_6; // @[Directory.scala 183:60]
  wire  hitVec_7 = tagMatchVec_7 & metaValidVec_7; // @[Directory.scala 183:60]
  wire [7:0] _hitWay_T = {hitVec_7,hitVec_6,hitVec_5,hitVec_4,hitVec_3,hitVec_2,hitVec_1,hitVec_0}; // @[Cat.scala 31:58]
  wire [3:0] hitWay_hi_1 = _hitWay_T[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] hitWay_lo_1 = _hitWay_T[3:0]; // @[OneHot.scala 31:18]
  wire  _hitWay_T_1 = |hitWay_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _hitWay_T_2 = hitWay_hi_1 | hitWay_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] hitWay_hi_2 = _hitWay_T_2[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] hitWay_lo_2 = _hitWay_T_2[1:0]; // @[OneHot.scala 31:18]
  wire  _hitWay_T_3 = |hitWay_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _hitWay_T_4 = hitWay_hi_2 | hitWay_lo_2; // @[OneHot.scala 32:28]
  wire [2:0] hitWay = {_hitWay_T_1,_hitWay_T_3,_hitWay_T_4[1]}; // @[Cat.scala 31:58]
  wire  invalid_vec_0 = metaAll_s3_0_state == 2'h0; // @[Directory.scala 119:43]
  wire  invalid_vec_1 = metaAll_s3_1_state == 2'h0; // @[Directory.scala 119:43]
  wire  invalid_vec_2 = metaAll_s3_2_state == 2'h0; // @[Directory.scala 119:43]
  wire  invalid_vec_3 = metaAll_s3_3_state == 2'h0; // @[Directory.scala 119:43]
  wire  invalid_vec_4 = metaAll_s3_4_state == 2'h0; // @[Directory.scala 119:43]
  wire  invalid_vec_5 = metaAll_s3_5_state == 2'h0; // @[Directory.scala 119:43]
  wire  invalid_vec_6 = metaAll_s3_6_state == 2'h0; // @[Directory.scala 119:43]
  wire  invalid_vec_7 = metaAll_s3_7_state == 2'h0; // @[Directory.scala 119:43]
  wire [7:0] _has_invalid_way_T = {invalid_vec_0,invalid_vec_1,invalid_vec_2,invalid_vec_3,invalid_vec_4,invalid_vec_5,
    invalid_vec_6,invalid_vec_7}; // @[Cat.scala 31:58]
  wire  inv = |_has_invalid_way_T; // @[Directory.scala 120:44]
  wire [2:0] _way_T_1 = invalid_vec_0 ? 3'h0 : 3'h1; // @[ParallelMux.scala 90:77]
  wire [2:0] _way_T_3 = invalid_vec_2 ? 3'h2 : 3'h3; // @[ParallelMux.scala 90:77]
  wire [2:0] _way_T_5 = invalid_vec_0 | invalid_vec_1 ? _way_T_1 : _way_T_3; // @[ParallelMux.scala 90:77]
  wire [2:0] _way_T_7 = invalid_vec_4 ? 3'h4 : 3'h5; // @[ParallelMux.scala 90:77]
  wire [2:0] _way_T_9 = invalid_vec_6 ? 3'h6 : 3'h7; // @[ParallelMux.scala 90:77]
  wire [2:0] _way_T_11 = invalid_vec_4 | invalid_vec_5 ? _way_T_7 : _way_T_9; // @[ParallelMux.scala 90:77]
  wire [2:0] invalidWay = invalid_vec_0 | invalid_vec_1 | (invalid_vec_2 | invalid_vec_3) ? _way_T_5 : _way_T_11; // @[ParallelMux.scala 90:77]
  reg [6:0] repl_state_s3; // @[Reg.scala 28:20]
  wire  replaceWay_left_subtree_older = repl_state_s3[6]; // @[Replacer.scala 252:38]
  wire [2:0] replaceWay_left_subtree_state = repl_state_s3[5:3]; // @[package.scala 154:13]
  wire  replaceWay_left_subtree_older_1 = replaceWay_left_subtree_state[2]; // @[Replacer.scala 252:38]
  wire  replaceWay_left_subtree_state_1 = replaceWay_left_subtree_state[1]; // @[package.scala 154:13]
  wire  replaceWay_right_subtree_state_1 = replaceWay_left_subtree_state[0]; // @[Replacer.scala 254:38]
  wire  _replaceWay_T_2 = replaceWay_left_subtree_older_1 ? replaceWay_left_subtree_state_1 :
    replaceWay_right_subtree_state_1; // @[Replacer.scala 259:14]
  wire [1:0] _replaceWay_T_3 = {replaceWay_left_subtree_older_1,_replaceWay_T_2}; // @[Cat.scala 31:58]
  wire [2:0] replaceWay_right_subtree_state = repl_state_s3[2:0]; // @[Replacer.scala 254:38]
  wire  replaceWay_left_subtree_older_2 = replaceWay_right_subtree_state[2]; // @[Replacer.scala 252:38]
  wire  replaceWay_left_subtree_state_2 = replaceWay_right_subtree_state[1]; // @[package.scala 154:13]
  wire  replaceWay_right_subtree_state_2 = replaceWay_right_subtree_state[0]; // @[Replacer.scala 254:38]
  wire  _replaceWay_T_6 = replaceWay_left_subtree_older_2 ? replaceWay_left_subtree_state_2 :
    replaceWay_right_subtree_state_2; // @[Replacer.scala 259:14]
  wire [1:0] _replaceWay_T_7 = {replaceWay_left_subtree_older_2,_replaceWay_T_6}; // @[Cat.scala 31:58]
  wire [1:0] _replaceWay_T_8 = replaceWay_left_subtree_older ? _replaceWay_T_3 : _replaceWay_T_7; // @[Replacer.scala 259:14]
  wire [2:0] replaceWay = {replaceWay_left_subtree_older,_replaceWay_T_8}; // @[Cat.scala 31:58]
  wire [2:0] chosenWay = inv ? invalidWay : replaceWay; // @[Directory.scala 188:22]
  wire [7:0] _finalWay_T = req_s3_wayMask >> chosenWay; // @[Directory.scala 192:19]
  wire [2:0] _finalWay_T_10 = req_s3_wayMask[6] ? 3'h6 : 3'h7; // @[Mux.scala 47:70]
  wire [2:0] _finalWay_T_11 = req_s3_wayMask[5] ? 3'h5 : _finalWay_T_10; // @[Mux.scala 47:70]
  wire [2:0] _finalWay_T_12 = req_s3_wayMask[4] ? 3'h4 : _finalWay_T_11; // @[Mux.scala 47:70]
  wire [2:0] _finalWay_T_13 = req_s3_wayMask[3] ? 3'h3 : _finalWay_T_12; // @[Mux.scala 47:70]
  wire [2:0] _finalWay_T_14 = req_s3_wayMask[2] ? 3'h2 : _finalWay_T_13; // @[Mux.scala 47:70]
  wire [2:0] _finalWay_T_15 = req_s3_wayMask[1] ? 3'h1 : _finalWay_T_14; // @[Mux.scala 47:70]
  wire [2:0] _finalWay_T_16 = req_s3_wayMask[0] ? 3'h0 : _finalWay_T_15; // @[Mux.scala 47:70]
  wire [2:0] finalWay = _finalWay_T[0] ? chosenWay : _finalWay_T_16; // @[Directory.scala 191:21]
  wire [7:0] _hit_s3_T = {hitVec_0,hitVec_1,hitVec_2,hitVec_3,hitVec_4,hitVec_5,hitVec_6,hitVec_7}; // @[Cat.scala 31:58]
  wire  hit_s3 = |_hit_s3_T; // @[Directory.scala 197:28]
  wire [2:0] way_s3 = hit_s3 ? hitWay : finalWay; // @[Directory.scala 198:19]
  wire  _GEN_57 = 3'h1 == way_s3 ? metaAll_s3_1_dirty : metaAll_s3_0_dirty; // @[Directory.scala 206:{17,17}]
  wire  _GEN_58 = 3'h2 == way_s3 ? metaAll_s3_2_dirty : _GEN_57; // @[Directory.scala 206:{17,17}]
  wire  _GEN_59 = 3'h3 == way_s3 ? metaAll_s3_3_dirty : _GEN_58; // @[Directory.scala 206:{17,17}]
  wire  _GEN_60 = 3'h4 == way_s3 ? metaAll_s3_4_dirty : _GEN_59; // @[Directory.scala 206:{17,17}]
  wire  _GEN_61 = 3'h5 == way_s3 ? metaAll_s3_5_dirty : _GEN_60; // @[Directory.scala 206:{17,17}]
  wire  _GEN_62 = 3'h6 == way_s3 ? metaAll_s3_6_dirty : _GEN_61; // @[Directory.scala 206:{17,17}]
  wire [1:0] _GEN_65 = 3'h1 == way_s3 ? metaAll_s3_1_state : metaAll_s3_0_state; // @[Directory.scala 206:{17,17}]
  wire [1:0] _GEN_66 = 3'h2 == way_s3 ? metaAll_s3_2_state : _GEN_65; // @[Directory.scala 206:{17,17}]
  wire [1:0] _GEN_67 = 3'h3 == way_s3 ? metaAll_s3_3_state : _GEN_66; // @[Directory.scala 206:{17,17}]
  wire [1:0] _GEN_68 = 3'h4 == way_s3 ? metaAll_s3_4_state : _GEN_67; // @[Directory.scala 206:{17,17}]
  wire [1:0] _GEN_69 = 3'h5 == way_s3 ? metaAll_s3_5_state : _GEN_68; // @[Directory.scala 206:{17,17}]
  wire [1:0] _GEN_70 = 3'h6 == way_s3 ? metaAll_s3_6_state : _GEN_69; // @[Directory.scala 206:{17,17}]
  wire  _GEN_73 = 3'h1 == way_s3 ? metaAll_s3_1_clients : metaAll_s3_0_clients; // @[Directory.scala 206:{17,17}]
  wire  _GEN_74 = 3'h2 == way_s3 ? metaAll_s3_2_clients : _GEN_73; // @[Directory.scala 206:{17,17}]
  wire  _GEN_75 = 3'h3 == way_s3 ? metaAll_s3_3_clients : _GEN_74; // @[Directory.scala 206:{17,17}]
  wire  _GEN_76 = 3'h4 == way_s3 ? metaAll_s3_4_clients : _GEN_75; // @[Directory.scala 206:{17,17}]
  wire  _GEN_77 = 3'h5 == way_s3 ? metaAll_s3_5_clients : _GEN_76; // @[Directory.scala 206:{17,17}]
  wire  _GEN_78 = 3'h6 == way_s3 ? metaAll_s3_6_clients : _GEN_77; // @[Directory.scala 206:{17,17}]
  wire  _GEN_81 = 3'h1 == way_s3 ? metaAll_s3_1_accessed : metaAll_s3_0_accessed; // @[Directory.scala 206:{17,17}]
  wire  _GEN_82 = 3'h2 == way_s3 ? metaAll_s3_2_accessed : _GEN_81; // @[Directory.scala 206:{17,17}]
  wire  _GEN_83 = 3'h3 == way_s3 ? metaAll_s3_3_accessed : _GEN_82; // @[Directory.scala 206:{17,17}]
  wire  _GEN_84 = 3'h4 == way_s3 ? metaAll_s3_4_accessed : _GEN_83; // @[Directory.scala 206:{17,17}]
  wire  _GEN_85 = 3'h5 == way_s3 ? metaAll_s3_5_accessed : _GEN_84; // @[Directory.scala 206:{17,17}]
  wire  _GEN_86 = 3'h6 == way_s3 ? metaAll_s3_6_accessed : _GEN_85; // @[Directory.scala 206:{17,17}]
  wire [21:0] _GEN_89 = 3'h1 == way_s3 ? tagAll_s3_1 : tagAll_s3_0; // @[Directory.scala 207:{17,17}]
  wire [21:0] _GEN_90 = 3'h2 == way_s3 ? tagAll_s3_2 : _GEN_89; // @[Directory.scala 207:{17,17}]
  wire [21:0] _GEN_91 = 3'h3 == way_s3 ? tagAll_s3_3 : _GEN_90; // @[Directory.scala 207:{17,17}]
  wire [21:0] _GEN_92 = 3'h4 == way_s3 ? tagAll_s3_4 : _GEN_91; // @[Directory.scala 207:{17,17}]
  wire [21:0] _GEN_93 = 3'h5 == way_s3 ? tagAll_s3_5 : _GEN_92; // @[Directory.scala 207:{17,17}]
  wire [21:0] _GEN_94 = 3'h6 == way_s3 ? tagAll_s3_6 : _GEN_93; // @[Directory.scala 207:{17,17}]
  wire  _updateHit_T_5 = req_s3_replacerInfo_opcode == 3'h7 | req_s3_replacerInfo_opcode == 3'h6; // @[Directory.scala 254:49]
  wire  updateHit = reqValid_s3 & hit_s3 & req_s3_replacerInfo_channel[0] & _updateHit_T_5; // @[Directory.scala 253:75]
  wire  _wayConflictMask_T_95 = io_msInfo_15_valid & io_msInfo_15_bits_set == req_s3_set & (
    io_msInfo_15_bits_releaseNotSent | io_msInfo_15_bits_dirHit) & io_msInfo_15_bits_way == finalWay; // @[Directory.scala 224:86]
  wire  _wayConflictMask_T_89 = io_msInfo_14_valid & io_msInfo_14_bits_set == req_s3_set & (
    io_msInfo_14_bits_releaseNotSent | io_msInfo_14_bits_dirHit) & io_msInfo_14_bits_way == finalWay; // @[Directory.scala 224:86]
  wire  _wayConflictMask_T_83 = io_msInfo_13_valid & io_msInfo_13_bits_set == req_s3_set & (
    io_msInfo_13_bits_releaseNotSent | io_msInfo_13_bits_dirHit) & io_msInfo_13_bits_way == finalWay; // @[Directory.scala 224:86]
  wire  _wayConflictMask_T_77 = io_msInfo_12_valid & io_msInfo_12_bits_set == req_s3_set & (
    io_msInfo_12_bits_releaseNotSent | io_msInfo_12_bits_dirHit) & io_msInfo_12_bits_way == finalWay; // @[Directory.scala 224:86]
  wire  _wayConflictMask_T_71 = io_msInfo_11_valid & io_msInfo_11_bits_set == req_s3_set & (
    io_msInfo_11_bits_releaseNotSent | io_msInfo_11_bits_dirHit) & io_msInfo_11_bits_way == finalWay; // @[Directory.scala 224:86]
  wire  _wayConflictMask_T_65 = io_msInfo_10_valid & io_msInfo_10_bits_set == req_s3_set & (
    io_msInfo_10_bits_releaseNotSent | io_msInfo_10_bits_dirHit) & io_msInfo_10_bits_way == finalWay; // @[Directory.scala 224:86]
  wire  _wayConflictMask_T_59 = io_msInfo_9_valid & io_msInfo_9_bits_set == req_s3_set & (
    io_msInfo_9_bits_releaseNotSent | io_msInfo_9_bits_dirHit) & io_msInfo_9_bits_way == finalWay; // @[Directory.scala 224:86]
  wire  _wayConflictMask_T_53 = io_msInfo_8_valid & io_msInfo_8_bits_set == req_s3_set & (
    io_msInfo_8_bits_releaseNotSent | io_msInfo_8_bits_dirHit) & io_msInfo_8_bits_way == finalWay; // @[Directory.scala 224:86]
  wire  _wayConflictMask_T_47 = io_msInfo_7_valid & io_msInfo_7_bits_set == req_s3_set & (
    io_msInfo_7_bits_releaseNotSent | io_msInfo_7_bits_dirHit) & io_msInfo_7_bits_way == finalWay; // @[Directory.scala 224:86]
  wire  _wayConflictMask_T_41 = io_msInfo_6_valid & io_msInfo_6_bits_set == req_s3_set & (
    io_msInfo_6_bits_releaseNotSent | io_msInfo_6_bits_dirHit) & io_msInfo_6_bits_way == finalWay; // @[Directory.scala 224:86]
  wire  _wayConflictMask_T_35 = io_msInfo_5_valid & io_msInfo_5_bits_set == req_s3_set & (
    io_msInfo_5_bits_releaseNotSent | io_msInfo_5_bits_dirHit) & io_msInfo_5_bits_way == finalWay; // @[Directory.scala 224:86]
  wire  _wayConflictMask_T_29 = io_msInfo_4_valid & io_msInfo_4_bits_set == req_s3_set & (
    io_msInfo_4_bits_releaseNotSent | io_msInfo_4_bits_dirHit) & io_msInfo_4_bits_way == finalWay; // @[Directory.scala 224:86]
  wire  _wayConflictMask_T_23 = io_msInfo_3_valid & io_msInfo_3_bits_set == req_s3_set & (
    io_msInfo_3_bits_releaseNotSent | io_msInfo_3_bits_dirHit) & io_msInfo_3_bits_way == finalWay; // @[Directory.scala 224:86]
  wire  _wayConflictMask_T_17 = io_msInfo_2_valid & io_msInfo_2_bits_set == req_s3_set & (
    io_msInfo_2_bits_releaseNotSent | io_msInfo_2_bits_dirHit) & io_msInfo_2_bits_way == finalWay; // @[Directory.scala 224:86]
  wire  _wayConflictMask_T_11 = io_msInfo_1_valid & io_msInfo_1_bits_set == req_s3_set & (
    io_msInfo_1_bits_releaseNotSent | io_msInfo_1_bits_dirHit) & io_msInfo_1_bits_way == finalWay; // @[Directory.scala 224:86]
  wire  _wayConflictMask_T_5 = io_msInfo_0_valid & io_msInfo_0_bits_set == req_s3_set & (io_msInfo_0_bits_releaseNotSent
     | io_msInfo_0_bits_dirHit) & io_msInfo_0_bits_way == finalWay; // @[Directory.scala 224:86]
  wire [7:0] wayConflictMask_lo = {_wayConflictMask_T_47,_wayConflictMask_T_41,_wayConflictMask_T_35,
    _wayConflictMask_T_29,_wayConflictMask_T_23,_wayConflictMask_T_17,_wayConflictMask_T_11,_wayConflictMask_T_5}; // @[Directory.scala 225:6]
  wire [15:0] wayConflictMask = {_wayConflictMask_T_95,_wayConflictMask_T_89,_wayConflictMask_T_83,_wayConflictMask_T_77
    ,_wayConflictMask_T_71,_wayConflictMask_T_65,_wayConflictMask_T_59,_wayConflictMask_T_53,wayConflictMask_lo}; // @[Directory.scala 225:6]
  wire  refillRetry = |wayConflictMask; // @[Directory.scala 226:37]
  wire  updateRefill = refillReqValid_s3 & ~refillRetry; // @[Directory.scala 255:40]
  wire  replacerWen = updateHit | updateRefill; // @[Directory.scala 256:28]
  wire [21:0] _GEN_98 = 3'h1 == finalWay ? tagAll_s3_1 : tagAll_s3_0; // @[Directory.scala 244:{24,24}]
  wire [21:0] _GEN_99 = 3'h2 == finalWay ? tagAll_s3_2 : _GEN_98; // @[Directory.scala 244:{24,24}]
  wire [21:0] _GEN_100 = 3'h3 == finalWay ? tagAll_s3_3 : _GEN_99; // @[Directory.scala 244:{24,24}]
  wire [21:0] _GEN_101 = 3'h4 == finalWay ? tagAll_s3_4 : _GEN_100; // @[Directory.scala 244:{24,24}]
  wire [21:0] _GEN_102 = 3'h5 == finalWay ? tagAll_s3_5 : _GEN_101; // @[Directory.scala 244:{24,24}]
  wire [21:0] _GEN_103 = 3'h6 == finalWay ? tagAll_s3_6 : _GEN_102; // @[Directory.scala 244:{24,24}]
  wire  _GEN_106 = 3'h1 == finalWay ? metaAll_s3_1_dirty : metaAll_s3_0_dirty; // @[Directory.scala 247:{25,25}]
  wire  _GEN_107 = 3'h2 == finalWay ? metaAll_s3_2_dirty : _GEN_106; // @[Directory.scala 247:{25,25}]
  wire  _GEN_108 = 3'h3 == finalWay ? metaAll_s3_3_dirty : _GEN_107; // @[Directory.scala 247:{25,25}]
  wire  _GEN_109 = 3'h4 == finalWay ? metaAll_s3_4_dirty : _GEN_108; // @[Directory.scala 247:{25,25}]
  wire  _GEN_110 = 3'h5 == finalWay ? metaAll_s3_5_dirty : _GEN_109; // @[Directory.scala 247:{25,25}]
  wire  _GEN_111 = 3'h6 == finalWay ? metaAll_s3_6_dirty : _GEN_110; // @[Directory.scala 247:{25,25}]
  wire [1:0] _GEN_114 = 3'h1 == finalWay ? metaAll_s3_1_state : metaAll_s3_0_state; // @[Directory.scala 247:{25,25}]
  wire [1:0] _GEN_115 = 3'h2 == finalWay ? metaAll_s3_2_state : _GEN_114; // @[Directory.scala 247:{25,25}]
  wire [1:0] _GEN_116 = 3'h3 == finalWay ? metaAll_s3_3_state : _GEN_115; // @[Directory.scala 247:{25,25}]
  wire [1:0] _GEN_117 = 3'h4 == finalWay ? metaAll_s3_4_state : _GEN_116; // @[Directory.scala 247:{25,25}]
  wire [1:0] _GEN_118 = 3'h5 == finalWay ? metaAll_s3_5_state : _GEN_117; // @[Directory.scala 247:{25,25}]
  wire [1:0] _GEN_119 = 3'h6 == finalWay ? metaAll_s3_6_state : _GEN_118; // @[Directory.scala 247:{25,25}]
  wire  _GEN_122 = 3'h1 == finalWay ? metaAll_s3_1_clients : metaAll_s3_0_clients; // @[Directory.scala 247:{25,25}]
  wire  _GEN_123 = 3'h2 == finalWay ? metaAll_s3_2_clients : _GEN_122; // @[Directory.scala 247:{25,25}]
  wire  _GEN_124 = 3'h3 == finalWay ? metaAll_s3_3_clients : _GEN_123; // @[Directory.scala 247:{25,25}]
  wire  _GEN_125 = 3'h4 == finalWay ? metaAll_s3_4_clients : _GEN_124; // @[Directory.scala 247:{25,25}]
  wire  _GEN_126 = 3'h5 == finalWay ? metaAll_s3_5_clients : _GEN_125; // @[Directory.scala 247:{25,25}]
  wire  _GEN_127 = 3'h6 == finalWay ? metaAll_s3_6_clients : _GEN_126; // @[Directory.scala 247:{25,25}]
  wire  _GEN_130 = 3'h1 == finalWay ? metaAll_s3_1_accessed : metaAll_s3_0_accessed; // @[Directory.scala 247:{25,25}]
  wire  _GEN_131 = 3'h2 == finalWay ? metaAll_s3_2_accessed : _GEN_130; // @[Directory.scala 247:{25,25}]
  wire  _GEN_132 = 3'h3 == finalWay ? metaAll_s3_3_accessed : _GEN_131; // @[Directory.scala 247:{25,25}]
  wire  _GEN_133 = 3'h4 == finalWay ? metaAll_s3_4_accessed : _GEN_132; // @[Directory.scala 247:{25,25}]
  wire  _GEN_134 = 3'h5 == finalWay ? metaAll_s3_5_accessed : _GEN_133; // @[Directory.scala 247:{25,25}]
  wire  _GEN_135 = 3'h6 == finalWay ? metaAll_s3_6_accessed : _GEN_134; // @[Directory.scala 247:{25,25}]
  wire [2:0] touch_way_s3 = refillReqValid_s3 ? replaceWay : way_s3; // @[Directory.scala 260:25]
  wire  next_state_s3_set_left_older = ~touch_way_s3[2]; // @[Replacer.scala 205:33]
  wire  next_state_s3_set_left_older_1 = ~touch_way_s3[1]; // @[Replacer.scala 205:33]
  wire  _next_state_s3_T_3 = ~touch_way_s3[0]; // @[Replacer.scala 227:7]
  wire  _next_state_s3_T_4 = next_state_s3_set_left_older_1 ? replaceWay_left_subtree_state_1 : _next_state_s3_T_3; // @[Replacer.scala 212:14]
  wire  _next_state_s3_T_8 = next_state_s3_set_left_older_1 ? _next_state_s3_T_3 : replaceWay_right_subtree_state_1; // @[Replacer.scala 215:14]
  wire [2:0] _next_state_s3_T_9 = {next_state_s3_set_left_older_1,_next_state_s3_T_4,_next_state_s3_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _next_state_s3_T_10 = next_state_s3_set_left_older ? replaceWay_left_subtree_state : _next_state_s3_T_9; // @[Replacer.scala 212:14]
  wire  _next_state_s3_T_15 = next_state_s3_set_left_older_1 ? replaceWay_left_subtree_state_2 : _next_state_s3_T_3; // @[Replacer.scala 212:14]
  wire  _next_state_s3_T_19 = next_state_s3_set_left_older_1 ? _next_state_s3_T_3 : replaceWay_right_subtree_state_2; // @[Replacer.scala 215:14]
  wire [2:0] _next_state_s3_T_20 = {next_state_s3_set_left_older_1,_next_state_s3_T_15,_next_state_s3_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _next_state_s3_T_21 = next_state_s3_set_left_older ? _next_state_s3_T_20 : replaceWay_right_subtree_state; // @[Replacer.scala 215:14]
  wire [6:0] next_state_s3 = {next_state_s3_set_left_older,_next_state_s3_T_10,_next_state_s3_T_21}; // @[Cat.scala 31:58]
  wire  _T_3 = ~resetFinish; // @[Directory.scala 303:7]
  wire [6:0] _resetIdx_T_1 = resetIdx - 7'h1; // @[Directory.scala 315:26]
  SRAMTemplate_152 tagArray ( // @[Directory.scala 132:25]
    .clock(tagArray_clock),
    .io_rreq_ready(tagArray_io_rreq_ready),
    .io_rreq_valid(tagArray_io_rreq_valid),
    .io_rreq_bits_setIdx(tagArray_io_rreq_bits_setIdx),
    .io_rresp_data_0(tagArray_io_rresp_data_0),
    .io_rresp_data_1(tagArray_io_rresp_data_1),
    .io_rresp_data_2(tagArray_io_rresp_data_2),
    .io_rresp_data_3(tagArray_io_rresp_data_3),
    .io_rresp_data_4(tagArray_io_rresp_data_4),
    .io_rresp_data_5(tagArray_io_rresp_data_5),
    .io_rresp_data_6(tagArray_io_rresp_data_6),
    .io_rresp_data_7(tagArray_io_rresp_data_7),
    .io_wreq_ready(tagArray_io_wreq_ready),
    .io_wreq_valid(tagArray_io_wreq_valid),
    .io_wreq_bits_setIdx(tagArray_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tagArray_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tagArray_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tagArray_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tagArray_io_wreq_bits_data_3),
    .io_wreq_bits_data_4(tagArray_io_wreq_bits_data_4),
    .io_wreq_bits_data_5(tagArray_io_wreq_bits_data_5),
    .io_wreq_bits_data_6(tagArray_io_wreq_bits_data_6),
    .io_wreq_bits_data_7(tagArray_io_wreq_bits_data_7),
    .io_wreq_bits_waymask(tagArray_io_wreq_bits_waymask)
  );
  SRAMTemplate_153 metaArray ( // @[Directory.scala 133:25]
    .clock(metaArray_clock),
    .io_rreq_ready(metaArray_io_rreq_ready),
    .io_rreq_valid(metaArray_io_rreq_valid),
    .io_rreq_bits_setIdx(metaArray_io_rreq_bits_setIdx),
    .io_rresp_data_0_dirty(metaArray_io_rresp_data_0_dirty),
    .io_rresp_data_0_state(metaArray_io_rresp_data_0_state),
    .io_rresp_data_0_clients(metaArray_io_rresp_data_0_clients),
    .io_rresp_data_0_accessed(metaArray_io_rresp_data_0_accessed),
    .io_rresp_data_1_dirty(metaArray_io_rresp_data_1_dirty),
    .io_rresp_data_1_state(metaArray_io_rresp_data_1_state),
    .io_rresp_data_1_clients(metaArray_io_rresp_data_1_clients),
    .io_rresp_data_1_accessed(metaArray_io_rresp_data_1_accessed),
    .io_rresp_data_2_dirty(metaArray_io_rresp_data_2_dirty),
    .io_rresp_data_2_state(metaArray_io_rresp_data_2_state),
    .io_rresp_data_2_clients(metaArray_io_rresp_data_2_clients),
    .io_rresp_data_2_accessed(metaArray_io_rresp_data_2_accessed),
    .io_rresp_data_3_dirty(metaArray_io_rresp_data_3_dirty),
    .io_rresp_data_3_state(metaArray_io_rresp_data_3_state),
    .io_rresp_data_3_clients(metaArray_io_rresp_data_3_clients),
    .io_rresp_data_3_accessed(metaArray_io_rresp_data_3_accessed),
    .io_rresp_data_4_dirty(metaArray_io_rresp_data_4_dirty),
    .io_rresp_data_4_state(metaArray_io_rresp_data_4_state),
    .io_rresp_data_4_clients(metaArray_io_rresp_data_4_clients),
    .io_rresp_data_4_accessed(metaArray_io_rresp_data_4_accessed),
    .io_rresp_data_5_dirty(metaArray_io_rresp_data_5_dirty),
    .io_rresp_data_5_state(metaArray_io_rresp_data_5_state),
    .io_rresp_data_5_clients(metaArray_io_rresp_data_5_clients),
    .io_rresp_data_5_accessed(metaArray_io_rresp_data_5_accessed),
    .io_rresp_data_6_dirty(metaArray_io_rresp_data_6_dirty),
    .io_rresp_data_6_state(metaArray_io_rresp_data_6_state),
    .io_rresp_data_6_clients(metaArray_io_rresp_data_6_clients),
    .io_rresp_data_6_accessed(metaArray_io_rresp_data_6_accessed),
    .io_rresp_data_7_dirty(metaArray_io_rresp_data_7_dirty),
    .io_rresp_data_7_state(metaArray_io_rresp_data_7_state),
    .io_rresp_data_7_clients(metaArray_io_rresp_data_7_clients),
    .io_rresp_data_7_accessed(metaArray_io_rresp_data_7_accessed),
    .io_wreq_ready(metaArray_io_wreq_ready),
    .io_wreq_valid(metaArray_io_wreq_valid),
    .io_wreq_bits_setIdx(metaArray_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_dirty(metaArray_io_wreq_bits_data_0_dirty),
    .io_wreq_bits_data_0_state(metaArray_io_wreq_bits_data_0_state),
    .io_wreq_bits_data_0_clients(metaArray_io_wreq_bits_data_0_clients),
    .io_wreq_bits_data_0_accessed(metaArray_io_wreq_bits_data_0_accessed),
    .io_wreq_bits_data_1_dirty(metaArray_io_wreq_bits_data_1_dirty),
    .io_wreq_bits_data_1_state(metaArray_io_wreq_bits_data_1_state),
    .io_wreq_bits_data_1_clients(metaArray_io_wreq_bits_data_1_clients),
    .io_wreq_bits_data_1_accessed(metaArray_io_wreq_bits_data_1_accessed),
    .io_wreq_bits_data_2_dirty(metaArray_io_wreq_bits_data_2_dirty),
    .io_wreq_bits_data_2_state(metaArray_io_wreq_bits_data_2_state),
    .io_wreq_bits_data_2_clients(metaArray_io_wreq_bits_data_2_clients),
    .io_wreq_bits_data_2_accessed(metaArray_io_wreq_bits_data_2_accessed),
    .io_wreq_bits_data_3_dirty(metaArray_io_wreq_bits_data_3_dirty),
    .io_wreq_bits_data_3_state(metaArray_io_wreq_bits_data_3_state),
    .io_wreq_bits_data_3_clients(metaArray_io_wreq_bits_data_3_clients),
    .io_wreq_bits_data_3_accessed(metaArray_io_wreq_bits_data_3_accessed),
    .io_wreq_bits_data_4_dirty(metaArray_io_wreq_bits_data_4_dirty),
    .io_wreq_bits_data_4_state(metaArray_io_wreq_bits_data_4_state),
    .io_wreq_bits_data_4_clients(metaArray_io_wreq_bits_data_4_clients),
    .io_wreq_bits_data_4_accessed(metaArray_io_wreq_bits_data_4_accessed),
    .io_wreq_bits_data_5_dirty(metaArray_io_wreq_bits_data_5_dirty),
    .io_wreq_bits_data_5_state(metaArray_io_wreq_bits_data_5_state),
    .io_wreq_bits_data_5_clients(metaArray_io_wreq_bits_data_5_clients),
    .io_wreq_bits_data_5_accessed(metaArray_io_wreq_bits_data_5_accessed),
    .io_wreq_bits_data_6_dirty(metaArray_io_wreq_bits_data_6_dirty),
    .io_wreq_bits_data_6_state(metaArray_io_wreq_bits_data_6_state),
    .io_wreq_bits_data_6_clients(metaArray_io_wreq_bits_data_6_clients),
    .io_wreq_bits_data_6_accessed(metaArray_io_wreq_bits_data_6_accessed),
    .io_wreq_bits_data_7_dirty(metaArray_io_wreq_bits_data_7_dirty),
    .io_wreq_bits_data_7_state(metaArray_io_wreq_bits_data_7_state),
    .io_wreq_bits_data_7_clients(metaArray_io_wreq_bits_data_7_clients),
    .io_wreq_bits_data_7_accessed(metaArray_io_wreq_bits_data_7_accessed),
    .io_wreq_bits_waymask(metaArray_io_wreq_bits_waymask)
  );
  SRAMTemplate_154 replacer_sram_opt ( // @[Directory.scala 144:16]
    .clock(replacer_sram_opt_clock),
    .reset(replacer_sram_opt_reset),
    .io_rreq_valid(replacer_sram_opt_io_rreq_valid),
    .io_rreq_bits_setIdx(replacer_sram_opt_io_rreq_bits_setIdx),
    .io_rresp_data_0(replacer_sram_opt_io_rresp_data_0),
    .io_wreq_valid(replacer_sram_opt_io_wreq_valid),
    .io_wreq_bits_setIdx(replacer_sram_opt_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(replacer_sram_opt_io_wreq_bits_data_0)
  );
  assign io_read_ready = ~io_metaWReq_valid & ~io_tagWReq_valid & ~replacerWen; // @[Directory.scala 216:60]
  assign io_resp_hit = |_hit_s3_T; // @[Directory.scala 197:28]
  assign io_resp_tag = 3'h7 == way_s3 ? tagAll_s3_7 : _GEN_94; // @[Directory.scala 207:{17,17}]
  assign io_resp_set = req_s3_set; // @[Directory.scala 208:17]
  assign io_resp_way = hit_s3 ? hitWay : finalWay; // @[Directory.scala 198:19]
  assign io_resp_meta_dirty = 3'h7 == way_s3 ? metaAll_s3_7_dirty : _GEN_62; // @[Directory.scala 206:{17,17}]
  assign io_resp_meta_state = 3'h7 == way_s3 ? metaAll_s3_7_state : _GEN_70; // @[Directory.scala 206:{17,17}]
  assign io_resp_meta_clients = 3'h7 == way_s3 ? metaAll_s3_7_clients : _GEN_78; // @[Directory.scala 206:{17,17}]
  assign io_resp_meta_accessed = 3'h7 == way_s3 ? metaAll_s3_7_accessed : _GEN_86; // @[Directory.scala 206:{17,17}]
  assign io_resp_error = 1'h0; // @[Directory.scala 209:17]
  assign io_resp_replacerInfo_channel = req_s3_replacerInfo_channel; // @[Directory.scala 210:24]
  assign io_resp_replacerInfo_opcode = req_s3_replacerInfo_opcode; // @[Directory.scala 210:24]
  assign io_resp_replacerInfo_reqSource = req_s3_replacerInfo_reqSource; // @[Directory.scala 210:24]
  assign io_replResp_valid = refillReqValid_s3; // @[Directory.scala 243:21]
  assign io_replResp_bits_tag = 3'h7 == finalWay ? tagAll_s3_7 : _GEN_103; // @[Directory.scala 244:{24,24}]
  assign io_replResp_bits_set = req_s3_set; // @[Directory.scala 245:24]
  assign io_replResp_bits_way = _finalWay_T[0] ? chosenWay : _finalWay_T_16; // @[Directory.scala 191:21]
  assign io_replResp_bits_meta_dirty = 3'h7 == finalWay ? metaAll_s3_7_dirty : _GEN_111; // @[Directory.scala 247:{25,25}]
  assign io_replResp_bits_meta_state = 3'h7 == finalWay ? metaAll_s3_7_state : _GEN_119; // @[Directory.scala 247:{25,25}]
  assign io_replResp_bits_meta_clients = 3'h7 == finalWay ? metaAll_s3_7_clients : _GEN_127; // @[Directory.scala 247:{25,25}]
  assign io_replResp_bits_meta_accessed = 3'h7 == finalWay ? metaAll_s3_7_accessed : _GEN_135; // @[Directory.scala 247:{25,25}]
  assign io_replResp_bits_mshrId = req_s3_mshrId; // @[Directory.scala 248:27]
  assign io_replResp_bits_retry = |wayConflictMask; // @[Directory.scala 226:37]
  assign tagArray_clock = clock;
  assign tagArray_io_rreq_valid = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  assign tagArray_io_rreq_bits_setIdx = io_read_bits_set; // @[SRAMTemplate.scala 49:17]
  assign tagArray_io_wreq_valid = io_tagWReq_valid; // @[SRAMTemplate.scala 91:20]
  assign tagArray_io_wreq_bits_setIdx = io_tagWReq_bits_set; // @[SRAMTemplate.scala 49:17]
  assign tagArray_io_wreq_bits_data_0 = io_tagWReq_bits_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_1 = io_tagWReq_bits_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_2 = io_tagWReq_bits_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_3 = io_tagWReq_bits_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_4 = io_tagWReq_bits_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_5 = io_tagWReq_bits_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_6 = io_tagWReq_bits_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_7 = io_tagWReq_bits_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_waymask = 8'h1 << io_tagWReq_bits_way; // @[OneHot.scala 57:35]
  assign metaArray_clock = clock;
  assign metaArray_io_rreq_valid = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  assign metaArray_io_rreq_bits_setIdx = io_read_bits_set; // @[SRAMTemplate.scala 49:17]
  assign metaArray_io_wreq_valid = io_metaWReq_valid; // @[SRAMTemplate.scala 91:20]
  assign metaArray_io_wreq_bits_setIdx = io_metaWReq_bits_set; // @[SRAMTemplate.scala 49:17]
  assign metaArray_io_wreq_bits_data_0_dirty = io_metaWReq_bits_wmeta_dirty; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_0_state = io_metaWReq_bits_wmeta_state; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_0_clients = io_metaWReq_bits_wmeta_clients; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_0_accessed = io_metaWReq_bits_wmeta_accessed; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_1_dirty = io_metaWReq_bits_wmeta_dirty; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_1_state = io_metaWReq_bits_wmeta_state; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_1_clients = io_metaWReq_bits_wmeta_clients; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_1_accessed = io_metaWReq_bits_wmeta_accessed; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_2_dirty = io_metaWReq_bits_wmeta_dirty; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_2_state = io_metaWReq_bits_wmeta_state; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_2_clients = io_metaWReq_bits_wmeta_clients; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_2_accessed = io_metaWReq_bits_wmeta_accessed; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_3_dirty = io_metaWReq_bits_wmeta_dirty; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_3_state = io_metaWReq_bits_wmeta_state; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_3_clients = io_metaWReq_bits_wmeta_clients; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_3_accessed = io_metaWReq_bits_wmeta_accessed; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_4_dirty = io_metaWReq_bits_wmeta_dirty; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_4_state = io_metaWReq_bits_wmeta_state; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_4_clients = io_metaWReq_bits_wmeta_clients; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_4_accessed = io_metaWReq_bits_wmeta_accessed; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_5_dirty = io_metaWReq_bits_wmeta_dirty; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_5_state = io_metaWReq_bits_wmeta_state; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_5_clients = io_metaWReq_bits_wmeta_clients; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_5_accessed = io_metaWReq_bits_wmeta_accessed; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_6_dirty = io_metaWReq_bits_wmeta_dirty; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_6_state = io_metaWReq_bits_wmeta_state; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_6_clients = io_metaWReq_bits_wmeta_clients; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_6_accessed = io_metaWReq_bits_wmeta_accessed; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_7_dirty = io_metaWReq_bits_wmeta_dirty; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_7_state = io_metaWReq_bits_wmeta_state; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_7_clients = io_metaWReq_bits_wmeta_clients; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_data_7_accessed = io_metaWReq_bits_wmeta_accessed; // @[SRAMTemplate.scala 95:{25,25}]
  assign metaArray_io_wreq_bits_waymask = io_metaWReq_bits_wayOH; // @[SRAMTemplate.scala 61:24]
  assign replacer_sram_opt_clock = clock;
  assign replacer_sram_opt_reset = reset;
  assign replacer_sram_opt_io_rreq_valid = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  assign replacer_sram_opt_io_rreq_bits_setIdx = io_read_bits_set; // @[SRAMTemplate.scala 49:17]
  assign replacer_sram_opt_io_wreq_valid = ~resetFinish | replacerWen; // @[Directory.scala 303:20]
  assign replacer_sram_opt_io_wreq_bits_setIdx = resetFinish ? req_s3_set : resetIdx; // @[Directory.scala 305:10]
  assign replacer_sram_opt_io_wreq_bits_data_0 = resetFinish ? next_state_s3 : 7'h0; // @[Directory.scala 304:10]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Directory.scala 311:26]
      resetFinish <= 1'h0; // @[Directory.scala 312:17]
    end else begin
      resetFinish <= resetIdx == 7'h0 | resetFinish; // @[Directory.scala 137:28]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Directory.scala 314:22]
      resetIdx <= 7'h7f; // @[Directory.scala 315:14]
    end else if (_T_3) begin // @[Directory.scala 138:25]
      resetIdx <= _resetIdx_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Decoupled.scala 50:35]
      reqValid_s2 <= 1'h0;
    end else begin
      reqValid_s2 <= io_read_ready & io_read_valid;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Directory.scala 153:28]
      reqValid_s3 <= 1'h0; // @[Directory.scala 153:28]
    end else begin
      reqValid_s3 <= reqValid_s2; // @[Directory.scala 153:28]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      req_s2_tag <= 22'h0; // @[Reg.scala 29:22]
    end else if (_reqValid_s2_T) begin // @[Reg.scala 28:20]
      req_s2_tag <= io_read_bits_tag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      req_s2_set <= 7'h0; // @[Reg.scala 29:22]
    end else if (_reqValid_s2_T) begin // @[Reg.scala 28:20]
      req_s2_set <= io_read_bits_set;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      req_s2_wayMask <= 8'h0; // @[Reg.scala 29:22]
    end else if (_reqValid_s2_T) begin // @[Reg.scala 28:20]
      req_s2_wayMask <= io_read_bits_wayMask;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      req_s2_replacerInfo_channel <= 3'h0; // @[Reg.scala 29:22]
    end else if (_reqValid_s2_T) begin // @[Reg.scala 28:20]
      req_s2_replacerInfo_channel <= io_read_bits_replacerInfo_channel;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      req_s2_replacerInfo_opcode <= 3'h0; // @[Reg.scala 29:22]
    end else if (_reqValid_s2_T) begin // @[Reg.scala 28:20]
      req_s2_replacerInfo_opcode <= io_read_bits_replacerInfo_opcode;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      req_s2_replacerInfo_reqSource <= 4'h0; // @[Reg.scala 29:22]
    end else if (_reqValid_s2_T) begin // @[Reg.scala 28:20]
      req_s2_replacerInfo_reqSource <= io_read_bits_replacerInfo_reqSource;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      req_s2_mshrId <= 8'h0; // @[Reg.scala 29:22]
    end else if (_reqValid_s2_T) begin // @[Reg.scala 28:20]
      req_s2_mshrId <= io_read_bits_mshrId;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      req_s3_tag <= 22'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      req_s3_tag <= req_s2_tag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      req_s3_set <= 7'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      req_s3_set <= req_s2_set;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      req_s3_wayMask <= 8'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      req_s3_wayMask <= req_s2_wayMask;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      req_s3_replacerInfo_channel <= 3'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      req_s3_replacerInfo_channel <= req_s2_replacerInfo_channel;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      req_s3_replacerInfo_opcode <= 3'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      req_s3_replacerInfo_opcode <= req_s2_replacerInfo_opcode;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      req_s3_replacerInfo_reqSource <= 4'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      req_s3_replacerInfo_reqSource <= req_s2_replacerInfo_reqSource;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      req_s3_mshrId <= 8'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      req_s3_mshrId <= req_s2_mshrId;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Directory.scala 157:48]
      refillReqValid_s2 <= 1'h0;
    end else begin
      refillReqValid_s2 <= _reqValid_s2_T & io_read_bits_refill;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Directory.scala 158:34]
      refillReqValid_s3 <= 1'h0; // @[Directory.scala 158:34]
    end else begin
      refillReqValid_s3 <= refillReqValid_s2; // @[Directory.scala 158:34]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_0_dirty <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_0_dirty <= metaRead_0_dirty;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_0_state <= 2'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_0_state <= metaRead_0_state;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_0_clients <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_0_clients <= metaRead_0_clients;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_0_accessed <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_0_accessed <= metaRead_0_accessed;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_1_dirty <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_1_dirty <= metaRead_1_dirty;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_1_state <= 2'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_1_state <= metaRead_1_state;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_1_clients <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_1_clients <= metaRead_1_clients;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_1_accessed <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_1_accessed <= metaRead_1_accessed;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_2_dirty <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_2_dirty <= metaRead_2_dirty;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_2_state <= 2'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_2_state <= metaRead_2_state;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_2_clients <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_2_clients <= metaRead_2_clients;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_2_accessed <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_2_accessed <= metaRead_2_accessed;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_3_dirty <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_3_dirty <= metaRead_3_dirty;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_3_state <= 2'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_3_state <= metaRead_3_state;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_3_clients <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_3_clients <= metaRead_3_clients;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_3_accessed <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_3_accessed <= metaRead_3_accessed;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_4_dirty <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_4_dirty <= metaRead_4_dirty;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_4_state <= 2'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_4_state <= metaRead_4_state;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_4_clients <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_4_clients <= metaRead_4_clients;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_4_accessed <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_4_accessed <= metaRead_4_accessed;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_5_dirty <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_5_dirty <= metaRead_5_dirty;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_5_state <= 2'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_5_state <= metaRead_5_state;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_5_clients <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_5_clients <= metaRead_5_clients;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_5_accessed <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_5_accessed <= metaRead_5_accessed;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_6_dirty <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_6_dirty <= metaRead_6_dirty;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_6_state <= 2'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_6_state <= metaRead_6_state;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_6_clients <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_6_clients <= metaRead_6_clients;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_6_accessed <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_6_accessed <= metaRead_6_accessed;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_7_dirty <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_7_dirty <= metaRead_7_dirty;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_7_state <= 2'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_7_state <= metaRead_7_state;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_7_clients <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_7_clients <= metaRead_7_clients;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      metaAll_s3_7_accessed <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      metaAll_s3_7_accessed <= metaRead_7_accessed;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      tagAll_s3_0 <= 22'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      tagAll_s3_0 <= tagRead_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      tagAll_s3_1 <= 22'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      tagAll_s3_1 <= tagRead_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      tagAll_s3_2 <= 22'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      tagAll_s3_2 <= tagRead_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      tagAll_s3_3 <= 22'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      tagAll_s3_3 <= tagRead_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      tagAll_s3_4 <= 22'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      tagAll_s3_4 <= tagRead_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      tagAll_s3_5 <= 22'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      tagAll_s3_5 <= tagRead_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      tagAll_s3_6 <= 22'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      tagAll_s3_6 <= tagRead_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      tagAll_s3_7 <= 22'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      tagAll_s3_7 <= tagRead_7;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      repl_state_s3 <= 7'h0; // @[Reg.scala 29:22]
    end else if (reqValid_s2) begin // @[Reg.scala 28:20]
      repl_state_s3 <= replacer_sram_opt_io_rresp_data_0;
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
  resetFinish = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  resetIdx = _RAND_1[6:0];
  _RAND_2 = {1{`RANDOM}};
  reqValid_s2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  reqValid_s3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  req_s2_tag = _RAND_4[21:0];
  _RAND_5 = {1{`RANDOM}};
  req_s2_set = _RAND_5[6:0];
  _RAND_6 = {1{`RANDOM}};
  req_s2_wayMask = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  req_s2_replacerInfo_channel = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  req_s2_replacerInfo_opcode = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  req_s2_replacerInfo_reqSource = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  req_s2_mshrId = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  req_s3_tag = _RAND_11[21:0];
  _RAND_12 = {1{`RANDOM}};
  req_s3_set = _RAND_12[6:0];
  _RAND_13 = {1{`RANDOM}};
  req_s3_wayMask = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  req_s3_replacerInfo_channel = _RAND_14[2:0];
  _RAND_15 = {1{`RANDOM}};
  req_s3_replacerInfo_opcode = _RAND_15[2:0];
  _RAND_16 = {1{`RANDOM}};
  req_s3_replacerInfo_reqSource = _RAND_16[3:0];
  _RAND_17 = {1{`RANDOM}};
  req_s3_mshrId = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  refillReqValid_s2 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  refillReqValid_s3 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  metaAll_s3_0_dirty = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  metaAll_s3_0_state = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  metaAll_s3_0_clients = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  metaAll_s3_0_accessed = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  metaAll_s3_1_dirty = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  metaAll_s3_1_state = _RAND_25[1:0];
  _RAND_26 = {1{`RANDOM}};
  metaAll_s3_1_clients = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  metaAll_s3_1_accessed = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  metaAll_s3_2_dirty = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  metaAll_s3_2_state = _RAND_29[1:0];
  _RAND_30 = {1{`RANDOM}};
  metaAll_s3_2_clients = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  metaAll_s3_2_accessed = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  metaAll_s3_3_dirty = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  metaAll_s3_3_state = _RAND_33[1:0];
  _RAND_34 = {1{`RANDOM}};
  metaAll_s3_3_clients = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  metaAll_s3_3_accessed = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  metaAll_s3_4_dirty = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  metaAll_s3_4_state = _RAND_37[1:0];
  _RAND_38 = {1{`RANDOM}};
  metaAll_s3_4_clients = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  metaAll_s3_4_accessed = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  metaAll_s3_5_dirty = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  metaAll_s3_5_state = _RAND_41[1:0];
  _RAND_42 = {1{`RANDOM}};
  metaAll_s3_5_clients = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  metaAll_s3_5_accessed = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  metaAll_s3_6_dirty = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  metaAll_s3_6_state = _RAND_45[1:0];
  _RAND_46 = {1{`RANDOM}};
  metaAll_s3_6_clients = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  metaAll_s3_6_accessed = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  metaAll_s3_7_dirty = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  metaAll_s3_7_state = _RAND_49[1:0];
  _RAND_50 = {1{`RANDOM}};
  metaAll_s3_7_clients = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  metaAll_s3_7_accessed = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  tagAll_s3_0 = _RAND_52[21:0];
  _RAND_53 = {1{`RANDOM}};
  tagAll_s3_1 = _RAND_53[21:0];
  _RAND_54 = {1{`RANDOM}};
  tagAll_s3_2 = _RAND_54[21:0];
  _RAND_55 = {1{`RANDOM}};
  tagAll_s3_3 = _RAND_55[21:0];
  _RAND_56 = {1{`RANDOM}};
  tagAll_s3_4 = _RAND_56[21:0];
  _RAND_57 = {1{`RANDOM}};
  tagAll_s3_5 = _RAND_57[21:0];
  _RAND_58 = {1{`RANDOM}};
  tagAll_s3_6 = _RAND_58[21:0];
  _RAND_59 = {1{`RANDOM}};
  tagAll_s3_7 = _RAND_59[21:0];
  _RAND_60 = {1{`RANDOM}};
  repl_state_s3 = _RAND_60[6:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    resetFinish = 1'h0;
  end
  if (reset) begin
    resetIdx = 7'h7f;
  end
  if (reset) begin
    reqValid_s2 = 1'h0;
  end
  if (reset) begin
    reqValid_s3 = 1'h0;
  end
  if (reset) begin
    req_s2_tag = 22'h0;
  end
  if (reset) begin
    req_s2_set = 7'h0;
  end
  if (reset) begin
    req_s2_wayMask = 8'h0;
  end
  if (reset) begin
    req_s2_replacerInfo_channel = 3'h0;
  end
  if (reset) begin
    req_s2_replacerInfo_opcode = 3'h0;
  end
  if (reset) begin
    req_s2_replacerInfo_reqSource = 4'h0;
  end
  if (reset) begin
    req_s2_mshrId = 8'h0;
  end
  if (reset) begin
    req_s3_tag = 22'h0;
  end
  if (reset) begin
    req_s3_set = 7'h0;
  end
  if (reset) begin
    req_s3_wayMask = 8'h0;
  end
  if (reset) begin
    req_s3_replacerInfo_channel = 3'h0;
  end
  if (reset) begin
    req_s3_replacerInfo_opcode = 3'h0;
  end
  if (reset) begin
    req_s3_replacerInfo_reqSource = 4'h0;
  end
  if (reset) begin
    req_s3_mshrId = 8'h0;
  end
  if (reset) begin
    refillReqValid_s2 = 1'h0;
  end
  if (reset) begin
    refillReqValid_s3 = 1'h0;
  end
  if (reset) begin
    metaAll_s3_0_dirty = 1'h0;
  end
  if (reset) begin
    metaAll_s3_0_state = 2'h0;
  end
  if (reset) begin
    metaAll_s3_0_clients = 1'h0;
  end
  if (reset) begin
    metaAll_s3_0_accessed = 1'h0;
  end
  if (reset) begin
    metaAll_s3_1_dirty = 1'h0;
  end
  if (reset) begin
    metaAll_s3_1_state = 2'h0;
  end
  if (reset) begin
    metaAll_s3_1_clients = 1'h0;
  end
  if (reset) begin
    metaAll_s3_1_accessed = 1'h0;
  end
  if (reset) begin
    metaAll_s3_2_dirty = 1'h0;
  end
  if (reset) begin
    metaAll_s3_2_state = 2'h0;
  end
  if (reset) begin
    metaAll_s3_2_clients = 1'h0;
  end
  if (reset) begin
    metaAll_s3_2_accessed = 1'h0;
  end
  if (reset) begin
    metaAll_s3_3_dirty = 1'h0;
  end
  if (reset) begin
    metaAll_s3_3_state = 2'h0;
  end
  if (reset) begin
    metaAll_s3_3_clients = 1'h0;
  end
  if (reset) begin
    metaAll_s3_3_accessed = 1'h0;
  end
  if (reset) begin
    metaAll_s3_4_dirty = 1'h0;
  end
  if (reset) begin
    metaAll_s3_4_state = 2'h0;
  end
  if (reset) begin
    metaAll_s3_4_clients = 1'h0;
  end
  if (reset) begin
    metaAll_s3_4_accessed = 1'h0;
  end
  if (reset) begin
    metaAll_s3_5_dirty = 1'h0;
  end
  if (reset) begin
    metaAll_s3_5_state = 2'h0;
  end
  if (reset) begin
    metaAll_s3_5_clients = 1'h0;
  end
  if (reset) begin
    metaAll_s3_5_accessed = 1'h0;
  end
  if (reset) begin
    metaAll_s3_6_dirty = 1'h0;
  end
  if (reset) begin
    metaAll_s3_6_state = 2'h0;
  end
  if (reset) begin
    metaAll_s3_6_clients = 1'h0;
  end
  if (reset) begin
    metaAll_s3_6_accessed = 1'h0;
  end
  if (reset) begin
    metaAll_s3_7_dirty = 1'h0;
  end
  if (reset) begin
    metaAll_s3_7_state = 2'h0;
  end
  if (reset) begin
    metaAll_s3_7_clients = 1'h0;
  end
  if (reset) begin
    metaAll_s3_7_accessed = 1'h0;
  end
  if (reset) begin
    tagAll_s3_0 = 22'h0;
  end
  if (reset) begin
    tagAll_s3_1 = 22'h0;
  end
  if (reset) begin
    tagAll_s3_2 = 22'h0;
  end
  if (reset) begin
    tagAll_s3_3 = 22'h0;
  end
  if (reset) begin
    tagAll_s3_4 = 22'h0;
  end
  if (reset) begin
    tagAll_s3_5 = 22'h0;
  end
  if (reset) begin
    tagAll_s3_6 = 22'h0;
  end
  if (reset) begin
    tagAll_s3_7 = 22'h0;
  end
  if (reset) begin
    repl_state_s3 = 7'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

