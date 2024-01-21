module MSHRBuffer(
  input          clock,
  input          reset,
  input          io_rvalid,
  input  [7:0]   io_rid,
  output [511:0] io_rdata_data,
  input          io_w0_valid,
  input  [1:0]   io_w0_beat_sel,
  input  [511:0] io_w0_data_data,
  input  [7:0]   io_w0_id,
  input          io_w1_valid,
  input  [1:0]   io_w1_beat_sel,
  input  [511:0] io_w1_data_data,
  input  [7:0]   io_w1_id,
  input          io_w2_valid,
  input  [511:0] io_w2_data_data,
  input  [7:0]   io_w2_id
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  buffer_0_0_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_0_0_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_0_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_0_0_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_0_0_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_0_1_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_0_1_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_0_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_0_1_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_0_1_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_1_0_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_1_0_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_1_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_1_0_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_1_0_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_1_1_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_1_1_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_1_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_1_1_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_1_1_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_2_0_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_2_0_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_2_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_2_0_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_2_0_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_2_1_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_2_1_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_2_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_2_1_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_2_1_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_3_0_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_3_0_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_3_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_3_0_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_3_0_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_3_1_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_3_1_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_3_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_3_1_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_3_1_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_4_0_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_4_0_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_4_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_4_0_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_4_0_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_4_1_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_4_1_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_4_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_4_1_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_4_1_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_5_0_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_5_0_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_5_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_5_0_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_5_0_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_5_1_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_5_1_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_5_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_5_1_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_5_1_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_6_0_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_6_0_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_6_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_6_0_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_6_0_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_6_1_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_6_1_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_6_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_6_1_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_6_1_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_7_0_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_7_0_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_7_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_7_0_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_7_0_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_7_1_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_7_1_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_7_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_7_1_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_7_1_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_8_0_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_8_0_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_8_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_8_0_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_8_0_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_8_1_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_8_1_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_8_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_8_1_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_8_1_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_9_0_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_9_0_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_9_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_9_0_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_9_0_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_9_1_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_9_1_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_9_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_9_1_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_9_1_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_10_0_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_10_0_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_10_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_10_0_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_10_0_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_10_1_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_10_1_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_10_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_10_1_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_10_1_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_11_0_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_11_0_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_11_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_11_0_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_11_0_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_11_1_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_11_1_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_11_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_11_1_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_11_1_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_12_0_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_12_0_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_12_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_12_0_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_12_0_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_12_1_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_12_1_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_12_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_12_1_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_12_1_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_13_0_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_13_0_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_13_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_13_0_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_13_0_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_13_1_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_13_1_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_13_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_13_1_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_13_1_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_14_0_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_14_0_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_14_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_14_0_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_14_0_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_14_1_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_14_1_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_14_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_14_1_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_14_1_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_15_0_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_15_0_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_15_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_15_0_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_15_0_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_15_1_clock; // @[MSHRBuffer.scala 53:13]
  wire  buffer_15_1_io_rreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_15_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  buffer_15_1_io_wreq_valid; // @[MSHRBuffer.scala 53:13]
  wire [255:0] buffer_15_1_io_wreq_bits_data_0_data; // @[MSHRBuffer.scala 53:13]
  wire  _wens_T_1 = io_w0_valid & io_w0_id == 8'h0; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_3 = io_w1_valid & io_w1_id == 8'h0; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_5 = io_w2_valid & io_w2_id == 8'h0; // @[MSHRBuffer.scala 80:48]
  wire [2:0] wens = {_wens_T_5,_wens_T_3,_wens_T_1}; // @[MSHRBuffer.scala 80:66]
  wire [1:0] _wbeat_sel_T_3 = wens[1] ? io_w1_beat_sel : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] w_beat_sel = wens[0] ? io_w0_beat_sel : _wbeat_sel_T_3; // @[Mux.scala 47:70]
  wire [511:0] _wdata_T_3_data = wens[1] ? io_w1_data_data : io_w2_data_data; // @[Mux.scala 47:70]
  wire [511:0] w_data_data = wens[0] ? io_w0_data_data : _wdata_T_3_data; // @[Mux.scala 47:70]
  wire  _wens_T_7 = io_w0_valid & io_w0_id == 8'h1; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_9 = io_w1_valid & io_w1_id == 8'h1; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_11 = io_w2_valid & io_w2_id == 8'h1; // @[MSHRBuffer.scala 80:48]
  wire [2:0] wens_1 = {_wens_T_11,_wens_T_9,_wens_T_7}; // @[MSHRBuffer.scala 80:66]
  wire [1:0] _wbeat_sel_T_7 = wens_1[1] ? io_w1_beat_sel : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] w_beat_sel_1 = wens_1[0] ? io_w0_beat_sel : _wbeat_sel_T_7; // @[Mux.scala 47:70]
  wire [511:0] _wdata_T_7_data = wens_1[1] ? io_w1_data_data : io_w2_data_data; // @[Mux.scala 47:70]
  wire [511:0] w_data_1_data = wens_1[0] ? io_w0_data_data : _wdata_T_7_data; // @[Mux.scala 47:70]
  wire  _wens_T_13 = io_w0_valid & io_w0_id == 8'h2; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_15 = io_w1_valid & io_w1_id == 8'h2; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_17 = io_w2_valid & io_w2_id == 8'h2; // @[MSHRBuffer.scala 80:48]
  wire [2:0] wens_2 = {_wens_T_17,_wens_T_15,_wens_T_13}; // @[MSHRBuffer.scala 80:66]
  wire [1:0] _wbeat_sel_T_11 = wens_2[1] ? io_w1_beat_sel : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] w_beat_sel_2 = wens_2[0] ? io_w0_beat_sel : _wbeat_sel_T_11; // @[Mux.scala 47:70]
  wire [511:0] _wdata_T_11_data = wens_2[1] ? io_w1_data_data : io_w2_data_data; // @[Mux.scala 47:70]
  wire [511:0] w_data_2_data = wens_2[0] ? io_w0_data_data : _wdata_T_11_data; // @[Mux.scala 47:70]
  wire  _wens_T_19 = io_w0_valid & io_w0_id == 8'h3; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_21 = io_w1_valid & io_w1_id == 8'h3; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_23 = io_w2_valid & io_w2_id == 8'h3; // @[MSHRBuffer.scala 80:48]
  wire [2:0] wens_3 = {_wens_T_23,_wens_T_21,_wens_T_19}; // @[MSHRBuffer.scala 80:66]
  wire [1:0] _wbeat_sel_T_15 = wens_3[1] ? io_w1_beat_sel : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] w_beat_sel_3 = wens_3[0] ? io_w0_beat_sel : _wbeat_sel_T_15; // @[Mux.scala 47:70]
  wire [511:0] _wdata_T_15_data = wens_3[1] ? io_w1_data_data : io_w2_data_data; // @[Mux.scala 47:70]
  wire [511:0] w_data_3_data = wens_3[0] ? io_w0_data_data : _wdata_T_15_data; // @[Mux.scala 47:70]
  wire  _wens_T_25 = io_w0_valid & io_w0_id == 8'h4; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_27 = io_w1_valid & io_w1_id == 8'h4; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_29 = io_w2_valid & io_w2_id == 8'h4; // @[MSHRBuffer.scala 80:48]
  wire [2:0] wens_4 = {_wens_T_29,_wens_T_27,_wens_T_25}; // @[MSHRBuffer.scala 80:66]
  wire [1:0] _wbeat_sel_T_19 = wens_4[1] ? io_w1_beat_sel : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] w_beat_sel_4 = wens_4[0] ? io_w0_beat_sel : _wbeat_sel_T_19; // @[Mux.scala 47:70]
  wire [511:0] _wdata_T_19_data = wens_4[1] ? io_w1_data_data : io_w2_data_data; // @[Mux.scala 47:70]
  wire [511:0] w_data_4_data = wens_4[0] ? io_w0_data_data : _wdata_T_19_data; // @[Mux.scala 47:70]
  wire  _wens_T_31 = io_w0_valid & io_w0_id == 8'h5; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_33 = io_w1_valid & io_w1_id == 8'h5; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_35 = io_w2_valid & io_w2_id == 8'h5; // @[MSHRBuffer.scala 80:48]
  wire [2:0] wens_5 = {_wens_T_35,_wens_T_33,_wens_T_31}; // @[MSHRBuffer.scala 80:66]
  wire [1:0] _wbeat_sel_T_23 = wens_5[1] ? io_w1_beat_sel : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] w_beat_sel_5 = wens_5[0] ? io_w0_beat_sel : _wbeat_sel_T_23; // @[Mux.scala 47:70]
  wire [511:0] _wdata_T_23_data = wens_5[1] ? io_w1_data_data : io_w2_data_data; // @[Mux.scala 47:70]
  wire [511:0] w_data_5_data = wens_5[0] ? io_w0_data_data : _wdata_T_23_data; // @[Mux.scala 47:70]
  wire  _wens_T_37 = io_w0_valid & io_w0_id == 8'h6; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_39 = io_w1_valid & io_w1_id == 8'h6; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_41 = io_w2_valid & io_w2_id == 8'h6; // @[MSHRBuffer.scala 80:48]
  wire [2:0] wens_6 = {_wens_T_41,_wens_T_39,_wens_T_37}; // @[MSHRBuffer.scala 80:66]
  wire [1:0] _wbeat_sel_T_27 = wens_6[1] ? io_w1_beat_sel : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] w_beat_sel_6 = wens_6[0] ? io_w0_beat_sel : _wbeat_sel_T_27; // @[Mux.scala 47:70]
  wire [511:0] _wdata_T_27_data = wens_6[1] ? io_w1_data_data : io_w2_data_data; // @[Mux.scala 47:70]
  wire [511:0] w_data_6_data = wens_6[0] ? io_w0_data_data : _wdata_T_27_data; // @[Mux.scala 47:70]
  wire  _wens_T_43 = io_w0_valid & io_w0_id == 8'h7; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_45 = io_w1_valid & io_w1_id == 8'h7; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_47 = io_w2_valid & io_w2_id == 8'h7; // @[MSHRBuffer.scala 80:48]
  wire [2:0] wens_7 = {_wens_T_47,_wens_T_45,_wens_T_43}; // @[MSHRBuffer.scala 80:66]
  wire [1:0] _wbeat_sel_T_31 = wens_7[1] ? io_w1_beat_sel : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] w_beat_sel_7 = wens_7[0] ? io_w0_beat_sel : _wbeat_sel_T_31; // @[Mux.scala 47:70]
  wire [511:0] _wdata_T_31_data = wens_7[1] ? io_w1_data_data : io_w2_data_data; // @[Mux.scala 47:70]
  wire [511:0] w_data_7_data = wens_7[0] ? io_w0_data_data : _wdata_T_31_data; // @[Mux.scala 47:70]
  wire  _wens_T_49 = io_w0_valid & io_w0_id == 8'h8; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_51 = io_w1_valid & io_w1_id == 8'h8; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_53 = io_w2_valid & io_w2_id == 8'h8; // @[MSHRBuffer.scala 80:48]
  wire [2:0] wens_8 = {_wens_T_53,_wens_T_51,_wens_T_49}; // @[MSHRBuffer.scala 80:66]
  wire [1:0] _wbeat_sel_T_35 = wens_8[1] ? io_w1_beat_sel : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] w_beat_sel_8 = wens_8[0] ? io_w0_beat_sel : _wbeat_sel_T_35; // @[Mux.scala 47:70]
  wire [511:0] _wdata_T_35_data = wens_8[1] ? io_w1_data_data : io_w2_data_data; // @[Mux.scala 47:70]
  wire [511:0] w_data_8_data = wens_8[0] ? io_w0_data_data : _wdata_T_35_data; // @[Mux.scala 47:70]
  wire  _wens_T_55 = io_w0_valid & io_w0_id == 8'h9; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_57 = io_w1_valid & io_w1_id == 8'h9; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_59 = io_w2_valid & io_w2_id == 8'h9; // @[MSHRBuffer.scala 80:48]
  wire [2:0] wens_9 = {_wens_T_59,_wens_T_57,_wens_T_55}; // @[MSHRBuffer.scala 80:66]
  wire [1:0] _wbeat_sel_T_39 = wens_9[1] ? io_w1_beat_sel : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] w_beat_sel_9 = wens_9[0] ? io_w0_beat_sel : _wbeat_sel_T_39; // @[Mux.scala 47:70]
  wire [511:0] _wdata_T_39_data = wens_9[1] ? io_w1_data_data : io_w2_data_data; // @[Mux.scala 47:70]
  wire [511:0] w_data_9_data = wens_9[0] ? io_w0_data_data : _wdata_T_39_data; // @[Mux.scala 47:70]
  wire  _wens_T_61 = io_w0_valid & io_w0_id == 8'ha; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_63 = io_w1_valid & io_w1_id == 8'ha; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_65 = io_w2_valid & io_w2_id == 8'ha; // @[MSHRBuffer.scala 80:48]
  wire [2:0] wens_10 = {_wens_T_65,_wens_T_63,_wens_T_61}; // @[MSHRBuffer.scala 80:66]
  wire [1:0] _wbeat_sel_T_43 = wens_10[1] ? io_w1_beat_sel : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] w_beat_sel_10 = wens_10[0] ? io_w0_beat_sel : _wbeat_sel_T_43; // @[Mux.scala 47:70]
  wire [511:0] _wdata_T_43_data = wens_10[1] ? io_w1_data_data : io_w2_data_data; // @[Mux.scala 47:70]
  wire [511:0] w_data_10_data = wens_10[0] ? io_w0_data_data : _wdata_T_43_data; // @[Mux.scala 47:70]
  wire  _wens_T_67 = io_w0_valid & io_w0_id == 8'hb; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_69 = io_w1_valid & io_w1_id == 8'hb; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_71 = io_w2_valid & io_w2_id == 8'hb; // @[MSHRBuffer.scala 80:48]
  wire [2:0] wens_11 = {_wens_T_71,_wens_T_69,_wens_T_67}; // @[MSHRBuffer.scala 80:66]
  wire [1:0] _wbeat_sel_T_47 = wens_11[1] ? io_w1_beat_sel : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] w_beat_sel_11 = wens_11[0] ? io_w0_beat_sel : _wbeat_sel_T_47; // @[Mux.scala 47:70]
  wire [511:0] _wdata_T_47_data = wens_11[1] ? io_w1_data_data : io_w2_data_data; // @[Mux.scala 47:70]
  wire [511:0] w_data_11_data = wens_11[0] ? io_w0_data_data : _wdata_T_47_data; // @[Mux.scala 47:70]
  wire  _wens_T_73 = io_w0_valid & io_w0_id == 8'hc; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_75 = io_w1_valid & io_w1_id == 8'hc; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_77 = io_w2_valid & io_w2_id == 8'hc; // @[MSHRBuffer.scala 80:48]
  wire [2:0] wens_12 = {_wens_T_77,_wens_T_75,_wens_T_73}; // @[MSHRBuffer.scala 80:66]
  wire [1:0] _wbeat_sel_T_51 = wens_12[1] ? io_w1_beat_sel : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] w_beat_sel_12 = wens_12[0] ? io_w0_beat_sel : _wbeat_sel_T_51; // @[Mux.scala 47:70]
  wire [511:0] _wdata_T_51_data = wens_12[1] ? io_w1_data_data : io_w2_data_data; // @[Mux.scala 47:70]
  wire [511:0] w_data_12_data = wens_12[0] ? io_w0_data_data : _wdata_T_51_data; // @[Mux.scala 47:70]
  wire  _wens_T_79 = io_w0_valid & io_w0_id == 8'hd; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_81 = io_w1_valid & io_w1_id == 8'hd; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_83 = io_w2_valid & io_w2_id == 8'hd; // @[MSHRBuffer.scala 80:48]
  wire [2:0] wens_13 = {_wens_T_83,_wens_T_81,_wens_T_79}; // @[MSHRBuffer.scala 80:66]
  wire [1:0] _wbeat_sel_T_55 = wens_13[1] ? io_w1_beat_sel : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] w_beat_sel_13 = wens_13[0] ? io_w0_beat_sel : _wbeat_sel_T_55; // @[Mux.scala 47:70]
  wire [511:0] _wdata_T_55_data = wens_13[1] ? io_w1_data_data : io_w2_data_data; // @[Mux.scala 47:70]
  wire [511:0] w_data_13_data = wens_13[0] ? io_w0_data_data : _wdata_T_55_data; // @[Mux.scala 47:70]
  wire  _wens_T_85 = io_w0_valid & io_w0_id == 8'he; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_87 = io_w1_valid & io_w1_id == 8'he; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_89 = io_w2_valid & io_w2_id == 8'he; // @[MSHRBuffer.scala 80:48]
  wire [2:0] wens_14 = {_wens_T_89,_wens_T_87,_wens_T_85}; // @[MSHRBuffer.scala 80:66]
  wire [1:0] _wbeat_sel_T_59 = wens_14[1] ? io_w1_beat_sel : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] w_beat_sel_14 = wens_14[0] ? io_w0_beat_sel : _wbeat_sel_T_59; // @[Mux.scala 47:70]
  wire [511:0] _wdata_T_59_data = wens_14[1] ? io_w1_data_data : io_w2_data_data; // @[Mux.scala 47:70]
  wire [511:0] w_data_14_data = wens_14[0] ? io_w0_data_data : _wdata_T_59_data; // @[Mux.scala 47:70]
  wire  _wens_T_91 = io_w0_valid & io_w0_id == 8'hf; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_93 = io_w1_valid & io_w1_id == 8'hf; // @[MSHRBuffer.scala 80:48]
  wire  _wens_T_95 = io_w2_valid & io_w2_id == 8'hf; // @[MSHRBuffer.scala 80:48]
  wire [2:0] wens_15 = {_wens_T_95,_wens_T_93,_wens_T_91}; // @[MSHRBuffer.scala 80:66]
  wire [1:0] _wbeat_sel_T_63 = wens_15[1] ? io_w1_beat_sel : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] w_beat_sel_15 = wens_15[0] ? io_w0_beat_sel : _wbeat_sel_T_63; // @[Mux.scala 47:70]
  wire [511:0] _wdata_T_63_data = wens_15[1] ? io_w1_data_data : io_w2_data_data; // @[Mux.scala 47:70]
  wire [511:0] w_data_15_data = wens_15[0] ? io_w0_data_data : _wdata_T_63_data; // @[Mux.scala 47:70]
  reg [7:0] ridReg; // @[MSHRBuffer.scala 102:23]
  wire [255:0] _io_rdata_data_WIRE__1 = buffer_0_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [255:0] _io_rdata_data_WIRE__0 = buffer_0_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [511:0] _io_rdata_data_T = {_io_rdata_data_WIRE__1,_io_rdata_data_WIRE__0}; // @[MSHRBuffer.scala 104:63]
  wire [255:0] _io_rdata_data_WIRE_1_1 = buffer_1_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [255:0] _io_rdata_data_WIRE_1_0 = buffer_1_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [511:0] _io_rdata_data_T_1 = {_io_rdata_data_WIRE_1_1,_io_rdata_data_WIRE_1_0}; // @[MSHRBuffer.scala 104:63]
  wire [255:0] _io_rdata_data_WIRE_2_1 = buffer_2_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [255:0] _io_rdata_data_WIRE_2_0 = buffer_2_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [511:0] _io_rdata_data_T_2 = {_io_rdata_data_WIRE_2_1,_io_rdata_data_WIRE_2_0}; // @[MSHRBuffer.scala 104:63]
  wire [255:0] _io_rdata_data_WIRE_3_1 = buffer_3_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [255:0] _io_rdata_data_WIRE_3_0 = buffer_3_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [511:0] _io_rdata_data_T_3 = {_io_rdata_data_WIRE_3_1,_io_rdata_data_WIRE_3_0}; // @[MSHRBuffer.scala 104:63]
  wire [255:0] _io_rdata_data_WIRE_4_1 = buffer_4_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [255:0] _io_rdata_data_WIRE_4_0 = buffer_4_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [511:0] _io_rdata_data_T_4 = {_io_rdata_data_WIRE_4_1,_io_rdata_data_WIRE_4_0}; // @[MSHRBuffer.scala 104:63]
  wire [255:0] _io_rdata_data_WIRE_5_1 = buffer_5_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [255:0] _io_rdata_data_WIRE_5_0 = buffer_5_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [511:0] _io_rdata_data_T_5 = {_io_rdata_data_WIRE_5_1,_io_rdata_data_WIRE_5_0}; // @[MSHRBuffer.scala 104:63]
  wire [255:0] _io_rdata_data_WIRE_6_1 = buffer_6_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [255:0] _io_rdata_data_WIRE_6_0 = buffer_6_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [511:0] _io_rdata_data_T_6 = {_io_rdata_data_WIRE_6_1,_io_rdata_data_WIRE_6_0}; // @[MSHRBuffer.scala 104:63]
  wire [255:0] _io_rdata_data_WIRE_7_1 = buffer_7_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [255:0] _io_rdata_data_WIRE_7_0 = buffer_7_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [511:0] _io_rdata_data_T_7 = {_io_rdata_data_WIRE_7_1,_io_rdata_data_WIRE_7_0}; // @[MSHRBuffer.scala 104:63]
  wire [255:0] _io_rdata_data_WIRE_8_1 = buffer_8_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [255:0] _io_rdata_data_WIRE_8_0 = buffer_8_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [511:0] _io_rdata_data_T_8 = {_io_rdata_data_WIRE_8_1,_io_rdata_data_WIRE_8_0}; // @[MSHRBuffer.scala 104:63]
  wire [255:0] _io_rdata_data_WIRE_9_1 = buffer_9_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [255:0] _io_rdata_data_WIRE_9_0 = buffer_9_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [511:0] _io_rdata_data_T_9 = {_io_rdata_data_WIRE_9_1,_io_rdata_data_WIRE_9_0}; // @[MSHRBuffer.scala 104:63]
  wire [255:0] _io_rdata_data_WIRE_10_1 = buffer_10_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [255:0] _io_rdata_data_WIRE_10_0 = buffer_10_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [511:0] _io_rdata_data_T_10 = {_io_rdata_data_WIRE_10_1,_io_rdata_data_WIRE_10_0}; // @[MSHRBuffer.scala 104:63]
  wire [255:0] _io_rdata_data_WIRE_11_1 = buffer_11_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [255:0] _io_rdata_data_WIRE_11_0 = buffer_11_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [511:0] _io_rdata_data_T_11 = {_io_rdata_data_WIRE_11_1,_io_rdata_data_WIRE_11_0}; // @[MSHRBuffer.scala 104:63]
  wire [255:0] _io_rdata_data_WIRE_12_1 = buffer_12_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [255:0] _io_rdata_data_WIRE_12_0 = buffer_12_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [511:0] _io_rdata_data_T_12 = {_io_rdata_data_WIRE_12_1,_io_rdata_data_WIRE_12_0}; // @[MSHRBuffer.scala 104:63]
  wire [255:0] _io_rdata_data_WIRE_13_1 = buffer_13_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [255:0] _io_rdata_data_WIRE_13_0 = buffer_13_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [511:0] _io_rdata_data_T_13 = {_io_rdata_data_WIRE_13_1,_io_rdata_data_WIRE_13_0}; // @[MSHRBuffer.scala 104:63]
  wire [255:0] _io_rdata_data_WIRE_14_1 = buffer_14_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [255:0] _io_rdata_data_WIRE_14_0 = buffer_14_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [511:0] _io_rdata_data_T_14 = {_io_rdata_data_WIRE_14_1,_io_rdata_data_WIRE_14_0}; // @[MSHRBuffer.scala 104:63]
  wire [255:0] _io_rdata_data_WIRE_15_1 = buffer_15_1_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [255:0] _io_rdata_data_WIRE_15_0 = buffer_15_0_io_rresp_data_0_data; // @[MSHRBuffer.scala 104:{26,26}]
  wire [511:0] _io_rdata_data_T_15 = {_io_rdata_data_WIRE_15_1,_io_rdata_data_WIRE_15_0}; // @[MSHRBuffer.scala 104:63]
  wire [511:0] _GEN_353 = 4'h1 == ridReg[3:0] ? _io_rdata_data_T_1 : _io_rdata_data_T; // @[MSHRBuffer.scala 103:{18,18}]
  wire [511:0] _GEN_354 = 4'h2 == ridReg[3:0] ? _io_rdata_data_T_2 : _GEN_353; // @[MSHRBuffer.scala 103:{18,18}]
  wire [511:0] _GEN_355 = 4'h3 == ridReg[3:0] ? _io_rdata_data_T_3 : _GEN_354; // @[MSHRBuffer.scala 103:{18,18}]
  wire [511:0] _GEN_356 = 4'h4 == ridReg[3:0] ? _io_rdata_data_T_4 : _GEN_355; // @[MSHRBuffer.scala 103:{18,18}]
  wire [511:0] _GEN_357 = 4'h5 == ridReg[3:0] ? _io_rdata_data_T_5 : _GEN_356; // @[MSHRBuffer.scala 103:{18,18}]
  wire [511:0] _GEN_358 = 4'h6 == ridReg[3:0] ? _io_rdata_data_T_6 : _GEN_357; // @[MSHRBuffer.scala 103:{18,18}]
  wire [511:0] _GEN_359 = 4'h7 == ridReg[3:0] ? _io_rdata_data_T_7 : _GEN_358; // @[MSHRBuffer.scala 103:{18,18}]
  wire [511:0] _GEN_360 = 4'h8 == ridReg[3:0] ? _io_rdata_data_T_8 : _GEN_359; // @[MSHRBuffer.scala 103:{18,18}]
  wire [511:0] _GEN_361 = 4'h9 == ridReg[3:0] ? _io_rdata_data_T_9 : _GEN_360; // @[MSHRBuffer.scala 103:{18,18}]
  wire [511:0] _GEN_362 = 4'ha == ridReg[3:0] ? _io_rdata_data_T_10 : _GEN_361; // @[MSHRBuffer.scala 103:{18,18}]
  wire [511:0] _GEN_363 = 4'hb == ridReg[3:0] ? _io_rdata_data_T_11 : _GEN_362; // @[MSHRBuffer.scala 103:{18,18}]
  wire [511:0] _GEN_364 = 4'hc == ridReg[3:0] ? _io_rdata_data_T_12 : _GEN_363; // @[MSHRBuffer.scala 103:{18,18}]
  wire [511:0] _GEN_365 = 4'hd == ridReg[3:0] ? _io_rdata_data_T_13 : _GEN_364; // @[MSHRBuffer.scala 103:{18,18}]
  wire [511:0] _GEN_366 = 4'he == ridReg[3:0] ? _io_rdata_data_T_14 : _GEN_365; // @[MSHRBuffer.scala 103:{18,18}]
  SRAMTemplate_156 buffer_0_0 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_0_0_clock),
    .io_rreq_valid(buffer_0_0_io_rreq_valid),
    .io_rresp_data_0_data(buffer_0_0_io_rresp_data_0_data),
    .io_wreq_valid(buffer_0_0_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_0_0_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_0_1 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_0_1_clock),
    .io_rreq_valid(buffer_0_1_io_rreq_valid),
    .io_rresp_data_0_data(buffer_0_1_io_rresp_data_0_data),
    .io_wreq_valid(buffer_0_1_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_0_1_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_1_0 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_1_0_clock),
    .io_rreq_valid(buffer_1_0_io_rreq_valid),
    .io_rresp_data_0_data(buffer_1_0_io_rresp_data_0_data),
    .io_wreq_valid(buffer_1_0_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_1_0_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_1_1 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_1_1_clock),
    .io_rreq_valid(buffer_1_1_io_rreq_valid),
    .io_rresp_data_0_data(buffer_1_1_io_rresp_data_0_data),
    .io_wreq_valid(buffer_1_1_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_1_1_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_2_0 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_2_0_clock),
    .io_rreq_valid(buffer_2_0_io_rreq_valid),
    .io_rresp_data_0_data(buffer_2_0_io_rresp_data_0_data),
    .io_wreq_valid(buffer_2_0_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_2_0_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_2_1 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_2_1_clock),
    .io_rreq_valid(buffer_2_1_io_rreq_valid),
    .io_rresp_data_0_data(buffer_2_1_io_rresp_data_0_data),
    .io_wreq_valid(buffer_2_1_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_2_1_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_3_0 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_3_0_clock),
    .io_rreq_valid(buffer_3_0_io_rreq_valid),
    .io_rresp_data_0_data(buffer_3_0_io_rresp_data_0_data),
    .io_wreq_valid(buffer_3_0_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_3_0_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_3_1 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_3_1_clock),
    .io_rreq_valid(buffer_3_1_io_rreq_valid),
    .io_rresp_data_0_data(buffer_3_1_io_rresp_data_0_data),
    .io_wreq_valid(buffer_3_1_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_3_1_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_4_0 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_4_0_clock),
    .io_rreq_valid(buffer_4_0_io_rreq_valid),
    .io_rresp_data_0_data(buffer_4_0_io_rresp_data_0_data),
    .io_wreq_valid(buffer_4_0_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_4_0_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_4_1 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_4_1_clock),
    .io_rreq_valid(buffer_4_1_io_rreq_valid),
    .io_rresp_data_0_data(buffer_4_1_io_rresp_data_0_data),
    .io_wreq_valid(buffer_4_1_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_4_1_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_5_0 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_5_0_clock),
    .io_rreq_valid(buffer_5_0_io_rreq_valid),
    .io_rresp_data_0_data(buffer_5_0_io_rresp_data_0_data),
    .io_wreq_valid(buffer_5_0_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_5_0_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_5_1 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_5_1_clock),
    .io_rreq_valid(buffer_5_1_io_rreq_valid),
    .io_rresp_data_0_data(buffer_5_1_io_rresp_data_0_data),
    .io_wreq_valid(buffer_5_1_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_5_1_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_6_0 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_6_0_clock),
    .io_rreq_valid(buffer_6_0_io_rreq_valid),
    .io_rresp_data_0_data(buffer_6_0_io_rresp_data_0_data),
    .io_wreq_valid(buffer_6_0_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_6_0_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_6_1 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_6_1_clock),
    .io_rreq_valid(buffer_6_1_io_rreq_valid),
    .io_rresp_data_0_data(buffer_6_1_io_rresp_data_0_data),
    .io_wreq_valid(buffer_6_1_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_6_1_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_7_0 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_7_0_clock),
    .io_rreq_valid(buffer_7_0_io_rreq_valid),
    .io_rresp_data_0_data(buffer_7_0_io_rresp_data_0_data),
    .io_wreq_valid(buffer_7_0_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_7_0_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_7_1 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_7_1_clock),
    .io_rreq_valid(buffer_7_1_io_rreq_valid),
    .io_rresp_data_0_data(buffer_7_1_io_rresp_data_0_data),
    .io_wreq_valid(buffer_7_1_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_7_1_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_8_0 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_8_0_clock),
    .io_rreq_valid(buffer_8_0_io_rreq_valid),
    .io_rresp_data_0_data(buffer_8_0_io_rresp_data_0_data),
    .io_wreq_valid(buffer_8_0_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_8_0_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_8_1 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_8_1_clock),
    .io_rreq_valid(buffer_8_1_io_rreq_valid),
    .io_rresp_data_0_data(buffer_8_1_io_rresp_data_0_data),
    .io_wreq_valid(buffer_8_1_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_8_1_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_9_0 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_9_0_clock),
    .io_rreq_valid(buffer_9_0_io_rreq_valid),
    .io_rresp_data_0_data(buffer_9_0_io_rresp_data_0_data),
    .io_wreq_valid(buffer_9_0_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_9_0_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_9_1 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_9_1_clock),
    .io_rreq_valid(buffer_9_1_io_rreq_valid),
    .io_rresp_data_0_data(buffer_9_1_io_rresp_data_0_data),
    .io_wreq_valid(buffer_9_1_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_9_1_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_10_0 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_10_0_clock),
    .io_rreq_valid(buffer_10_0_io_rreq_valid),
    .io_rresp_data_0_data(buffer_10_0_io_rresp_data_0_data),
    .io_wreq_valid(buffer_10_0_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_10_0_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_10_1 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_10_1_clock),
    .io_rreq_valid(buffer_10_1_io_rreq_valid),
    .io_rresp_data_0_data(buffer_10_1_io_rresp_data_0_data),
    .io_wreq_valid(buffer_10_1_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_10_1_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_11_0 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_11_0_clock),
    .io_rreq_valid(buffer_11_0_io_rreq_valid),
    .io_rresp_data_0_data(buffer_11_0_io_rresp_data_0_data),
    .io_wreq_valid(buffer_11_0_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_11_0_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_11_1 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_11_1_clock),
    .io_rreq_valid(buffer_11_1_io_rreq_valid),
    .io_rresp_data_0_data(buffer_11_1_io_rresp_data_0_data),
    .io_wreq_valid(buffer_11_1_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_11_1_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_12_0 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_12_0_clock),
    .io_rreq_valid(buffer_12_0_io_rreq_valid),
    .io_rresp_data_0_data(buffer_12_0_io_rresp_data_0_data),
    .io_wreq_valid(buffer_12_0_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_12_0_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_12_1 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_12_1_clock),
    .io_rreq_valid(buffer_12_1_io_rreq_valid),
    .io_rresp_data_0_data(buffer_12_1_io_rresp_data_0_data),
    .io_wreq_valid(buffer_12_1_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_12_1_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_13_0 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_13_0_clock),
    .io_rreq_valid(buffer_13_0_io_rreq_valid),
    .io_rresp_data_0_data(buffer_13_0_io_rresp_data_0_data),
    .io_wreq_valid(buffer_13_0_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_13_0_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_13_1 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_13_1_clock),
    .io_rreq_valid(buffer_13_1_io_rreq_valid),
    .io_rresp_data_0_data(buffer_13_1_io_rresp_data_0_data),
    .io_wreq_valid(buffer_13_1_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_13_1_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_14_0 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_14_0_clock),
    .io_rreq_valid(buffer_14_0_io_rreq_valid),
    .io_rresp_data_0_data(buffer_14_0_io_rresp_data_0_data),
    .io_wreq_valid(buffer_14_0_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_14_0_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_14_1 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_14_1_clock),
    .io_rreq_valid(buffer_14_1_io_rreq_valid),
    .io_rresp_data_0_data(buffer_14_1_io_rresp_data_0_data),
    .io_wreq_valid(buffer_14_1_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_14_1_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_15_0 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_15_0_clock),
    .io_rreq_valid(buffer_15_0_io_rreq_valid),
    .io_rresp_data_0_data(buffer_15_0_io_rresp_data_0_data),
    .io_wreq_valid(buffer_15_0_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_15_0_io_wreq_bits_data_0_data)
  );
  SRAMTemplate_156 buffer_15_1 ( // @[MSHRBuffer.scala 53:13]
    .clock(buffer_15_1_clock),
    .io_rreq_valid(buffer_15_1_io_rreq_valid),
    .io_rresp_data_0_data(buffer_15_1_io_rresp_data_0_data),
    .io_wreq_valid(buffer_15_1_io_wreq_valid),
    .io_wreq_bits_data_0_data(buffer_15_1_io_wreq_bits_data_0_data)
  );
  assign io_rdata_data = 4'hf == ridReg[3:0] ? _io_rdata_data_T_15 : _GEN_366; // @[MSHRBuffer.scala 103:{18,18}]
  assign buffer_0_0_clock = clock;
  assign buffer_0_0_io_rreq_valid = io_rvalid & io_rid == 8'h0; // @[MSHRBuffer.scala 85:28]
  assign buffer_0_0_io_wreq_valid = |wens & w_beat_sel[0]; // @[MSHRBuffer.scala 88:44]
  assign buffer_0_0_io_wreq_bits_data_0_data = w_data_data[255:0]; // @[MSHRBuffer.scala 90:31]
  assign buffer_0_1_clock = clock;
  assign buffer_0_1_io_rreq_valid = io_rvalid & io_rid == 8'h0; // @[MSHRBuffer.scala 85:28]
  assign buffer_0_1_io_wreq_valid = |wens & w_beat_sel[1]; // @[MSHRBuffer.scala 88:44]
  assign buffer_0_1_io_wreq_bits_data_0_data = w_data_data[511:256]; // @[MSHRBuffer.scala 90:31]
  assign buffer_1_0_clock = clock;
  assign buffer_1_0_io_rreq_valid = io_rvalid & io_rid == 8'h1; // @[MSHRBuffer.scala 85:28]
  assign buffer_1_0_io_wreq_valid = |wens_1 & w_beat_sel_1[0]; // @[MSHRBuffer.scala 88:44]
  assign buffer_1_0_io_wreq_bits_data_0_data = w_data_1_data[255:0]; // @[MSHRBuffer.scala 90:31]
  assign buffer_1_1_clock = clock;
  assign buffer_1_1_io_rreq_valid = io_rvalid & io_rid == 8'h1; // @[MSHRBuffer.scala 85:28]
  assign buffer_1_1_io_wreq_valid = |wens_1 & w_beat_sel_1[1]; // @[MSHRBuffer.scala 88:44]
  assign buffer_1_1_io_wreq_bits_data_0_data = w_data_1_data[511:256]; // @[MSHRBuffer.scala 90:31]
  assign buffer_2_0_clock = clock;
  assign buffer_2_0_io_rreq_valid = io_rvalid & io_rid == 8'h2; // @[MSHRBuffer.scala 85:28]
  assign buffer_2_0_io_wreq_valid = |wens_2 & w_beat_sel_2[0]; // @[MSHRBuffer.scala 88:44]
  assign buffer_2_0_io_wreq_bits_data_0_data = w_data_2_data[255:0]; // @[MSHRBuffer.scala 90:31]
  assign buffer_2_1_clock = clock;
  assign buffer_2_1_io_rreq_valid = io_rvalid & io_rid == 8'h2; // @[MSHRBuffer.scala 85:28]
  assign buffer_2_1_io_wreq_valid = |wens_2 & w_beat_sel_2[1]; // @[MSHRBuffer.scala 88:44]
  assign buffer_2_1_io_wreq_bits_data_0_data = w_data_2_data[511:256]; // @[MSHRBuffer.scala 90:31]
  assign buffer_3_0_clock = clock;
  assign buffer_3_0_io_rreq_valid = io_rvalid & io_rid == 8'h3; // @[MSHRBuffer.scala 85:28]
  assign buffer_3_0_io_wreq_valid = |wens_3 & w_beat_sel_3[0]; // @[MSHRBuffer.scala 88:44]
  assign buffer_3_0_io_wreq_bits_data_0_data = w_data_3_data[255:0]; // @[MSHRBuffer.scala 90:31]
  assign buffer_3_1_clock = clock;
  assign buffer_3_1_io_rreq_valid = io_rvalid & io_rid == 8'h3; // @[MSHRBuffer.scala 85:28]
  assign buffer_3_1_io_wreq_valid = |wens_3 & w_beat_sel_3[1]; // @[MSHRBuffer.scala 88:44]
  assign buffer_3_1_io_wreq_bits_data_0_data = w_data_3_data[511:256]; // @[MSHRBuffer.scala 90:31]
  assign buffer_4_0_clock = clock;
  assign buffer_4_0_io_rreq_valid = io_rvalid & io_rid == 8'h4; // @[MSHRBuffer.scala 85:28]
  assign buffer_4_0_io_wreq_valid = |wens_4 & w_beat_sel_4[0]; // @[MSHRBuffer.scala 88:44]
  assign buffer_4_0_io_wreq_bits_data_0_data = w_data_4_data[255:0]; // @[MSHRBuffer.scala 90:31]
  assign buffer_4_1_clock = clock;
  assign buffer_4_1_io_rreq_valid = io_rvalid & io_rid == 8'h4; // @[MSHRBuffer.scala 85:28]
  assign buffer_4_1_io_wreq_valid = |wens_4 & w_beat_sel_4[1]; // @[MSHRBuffer.scala 88:44]
  assign buffer_4_1_io_wreq_bits_data_0_data = w_data_4_data[511:256]; // @[MSHRBuffer.scala 90:31]
  assign buffer_5_0_clock = clock;
  assign buffer_5_0_io_rreq_valid = io_rvalid & io_rid == 8'h5; // @[MSHRBuffer.scala 85:28]
  assign buffer_5_0_io_wreq_valid = |wens_5 & w_beat_sel_5[0]; // @[MSHRBuffer.scala 88:44]
  assign buffer_5_0_io_wreq_bits_data_0_data = w_data_5_data[255:0]; // @[MSHRBuffer.scala 90:31]
  assign buffer_5_1_clock = clock;
  assign buffer_5_1_io_rreq_valid = io_rvalid & io_rid == 8'h5; // @[MSHRBuffer.scala 85:28]
  assign buffer_5_1_io_wreq_valid = |wens_5 & w_beat_sel_5[1]; // @[MSHRBuffer.scala 88:44]
  assign buffer_5_1_io_wreq_bits_data_0_data = w_data_5_data[511:256]; // @[MSHRBuffer.scala 90:31]
  assign buffer_6_0_clock = clock;
  assign buffer_6_0_io_rreq_valid = io_rvalid & io_rid == 8'h6; // @[MSHRBuffer.scala 85:28]
  assign buffer_6_0_io_wreq_valid = |wens_6 & w_beat_sel_6[0]; // @[MSHRBuffer.scala 88:44]
  assign buffer_6_0_io_wreq_bits_data_0_data = w_data_6_data[255:0]; // @[MSHRBuffer.scala 90:31]
  assign buffer_6_1_clock = clock;
  assign buffer_6_1_io_rreq_valid = io_rvalid & io_rid == 8'h6; // @[MSHRBuffer.scala 85:28]
  assign buffer_6_1_io_wreq_valid = |wens_6 & w_beat_sel_6[1]; // @[MSHRBuffer.scala 88:44]
  assign buffer_6_1_io_wreq_bits_data_0_data = w_data_6_data[511:256]; // @[MSHRBuffer.scala 90:31]
  assign buffer_7_0_clock = clock;
  assign buffer_7_0_io_rreq_valid = io_rvalid & io_rid == 8'h7; // @[MSHRBuffer.scala 85:28]
  assign buffer_7_0_io_wreq_valid = |wens_7 & w_beat_sel_7[0]; // @[MSHRBuffer.scala 88:44]
  assign buffer_7_0_io_wreq_bits_data_0_data = w_data_7_data[255:0]; // @[MSHRBuffer.scala 90:31]
  assign buffer_7_1_clock = clock;
  assign buffer_7_1_io_rreq_valid = io_rvalid & io_rid == 8'h7; // @[MSHRBuffer.scala 85:28]
  assign buffer_7_1_io_wreq_valid = |wens_7 & w_beat_sel_7[1]; // @[MSHRBuffer.scala 88:44]
  assign buffer_7_1_io_wreq_bits_data_0_data = w_data_7_data[511:256]; // @[MSHRBuffer.scala 90:31]
  assign buffer_8_0_clock = clock;
  assign buffer_8_0_io_rreq_valid = io_rvalid & io_rid == 8'h8; // @[MSHRBuffer.scala 85:28]
  assign buffer_8_0_io_wreq_valid = |wens_8 & w_beat_sel_8[0]; // @[MSHRBuffer.scala 88:44]
  assign buffer_8_0_io_wreq_bits_data_0_data = w_data_8_data[255:0]; // @[MSHRBuffer.scala 90:31]
  assign buffer_8_1_clock = clock;
  assign buffer_8_1_io_rreq_valid = io_rvalid & io_rid == 8'h8; // @[MSHRBuffer.scala 85:28]
  assign buffer_8_1_io_wreq_valid = |wens_8 & w_beat_sel_8[1]; // @[MSHRBuffer.scala 88:44]
  assign buffer_8_1_io_wreq_bits_data_0_data = w_data_8_data[511:256]; // @[MSHRBuffer.scala 90:31]
  assign buffer_9_0_clock = clock;
  assign buffer_9_0_io_rreq_valid = io_rvalid & io_rid == 8'h9; // @[MSHRBuffer.scala 85:28]
  assign buffer_9_0_io_wreq_valid = |wens_9 & w_beat_sel_9[0]; // @[MSHRBuffer.scala 88:44]
  assign buffer_9_0_io_wreq_bits_data_0_data = w_data_9_data[255:0]; // @[MSHRBuffer.scala 90:31]
  assign buffer_9_1_clock = clock;
  assign buffer_9_1_io_rreq_valid = io_rvalid & io_rid == 8'h9; // @[MSHRBuffer.scala 85:28]
  assign buffer_9_1_io_wreq_valid = |wens_9 & w_beat_sel_9[1]; // @[MSHRBuffer.scala 88:44]
  assign buffer_9_1_io_wreq_bits_data_0_data = w_data_9_data[511:256]; // @[MSHRBuffer.scala 90:31]
  assign buffer_10_0_clock = clock;
  assign buffer_10_0_io_rreq_valid = io_rvalid & io_rid == 8'ha; // @[MSHRBuffer.scala 85:28]
  assign buffer_10_0_io_wreq_valid = |wens_10 & w_beat_sel_10[0]; // @[MSHRBuffer.scala 88:44]
  assign buffer_10_0_io_wreq_bits_data_0_data = w_data_10_data[255:0]; // @[MSHRBuffer.scala 90:31]
  assign buffer_10_1_clock = clock;
  assign buffer_10_1_io_rreq_valid = io_rvalid & io_rid == 8'ha; // @[MSHRBuffer.scala 85:28]
  assign buffer_10_1_io_wreq_valid = |wens_10 & w_beat_sel_10[1]; // @[MSHRBuffer.scala 88:44]
  assign buffer_10_1_io_wreq_bits_data_0_data = w_data_10_data[511:256]; // @[MSHRBuffer.scala 90:31]
  assign buffer_11_0_clock = clock;
  assign buffer_11_0_io_rreq_valid = io_rvalid & io_rid == 8'hb; // @[MSHRBuffer.scala 85:28]
  assign buffer_11_0_io_wreq_valid = |wens_11 & w_beat_sel_11[0]; // @[MSHRBuffer.scala 88:44]
  assign buffer_11_0_io_wreq_bits_data_0_data = w_data_11_data[255:0]; // @[MSHRBuffer.scala 90:31]
  assign buffer_11_1_clock = clock;
  assign buffer_11_1_io_rreq_valid = io_rvalid & io_rid == 8'hb; // @[MSHRBuffer.scala 85:28]
  assign buffer_11_1_io_wreq_valid = |wens_11 & w_beat_sel_11[1]; // @[MSHRBuffer.scala 88:44]
  assign buffer_11_1_io_wreq_bits_data_0_data = w_data_11_data[511:256]; // @[MSHRBuffer.scala 90:31]
  assign buffer_12_0_clock = clock;
  assign buffer_12_0_io_rreq_valid = io_rvalid & io_rid == 8'hc; // @[MSHRBuffer.scala 85:28]
  assign buffer_12_0_io_wreq_valid = |wens_12 & w_beat_sel_12[0]; // @[MSHRBuffer.scala 88:44]
  assign buffer_12_0_io_wreq_bits_data_0_data = w_data_12_data[255:0]; // @[MSHRBuffer.scala 90:31]
  assign buffer_12_1_clock = clock;
  assign buffer_12_1_io_rreq_valid = io_rvalid & io_rid == 8'hc; // @[MSHRBuffer.scala 85:28]
  assign buffer_12_1_io_wreq_valid = |wens_12 & w_beat_sel_12[1]; // @[MSHRBuffer.scala 88:44]
  assign buffer_12_1_io_wreq_bits_data_0_data = w_data_12_data[511:256]; // @[MSHRBuffer.scala 90:31]
  assign buffer_13_0_clock = clock;
  assign buffer_13_0_io_rreq_valid = io_rvalid & io_rid == 8'hd; // @[MSHRBuffer.scala 85:28]
  assign buffer_13_0_io_wreq_valid = |wens_13 & w_beat_sel_13[0]; // @[MSHRBuffer.scala 88:44]
  assign buffer_13_0_io_wreq_bits_data_0_data = w_data_13_data[255:0]; // @[MSHRBuffer.scala 90:31]
  assign buffer_13_1_clock = clock;
  assign buffer_13_1_io_rreq_valid = io_rvalid & io_rid == 8'hd; // @[MSHRBuffer.scala 85:28]
  assign buffer_13_1_io_wreq_valid = |wens_13 & w_beat_sel_13[1]; // @[MSHRBuffer.scala 88:44]
  assign buffer_13_1_io_wreq_bits_data_0_data = w_data_13_data[511:256]; // @[MSHRBuffer.scala 90:31]
  assign buffer_14_0_clock = clock;
  assign buffer_14_0_io_rreq_valid = io_rvalid & io_rid == 8'he; // @[MSHRBuffer.scala 85:28]
  assign buffer_14_0_io_wreq_valid = |wens_14 & w_beat_sel_14[0]; // @[MSHRBuffer.scala 88:44]
  assign buffer_14_0_io_wreq_bits_data_0_data = w_data_14_data[255:0]; // @[MSHRBuffer.scala 90:31]
  assign buffer_14_1_clock = clock;
  assign buffer_14_1_io_rreq_valid = io_rvalid & io_rid == 8'he; // @[MSHRBuffer.scala 85:28]
  assign buffer_14_1_io_wreq_valid = |wens_14 & w_beat_sel_14[1]; // @[MSHRBuffer.scala 88:44]
  assign buffer_14_1_io_wreq_bits_data_0_data = w_data_14_data[511:256]; // @[MSHRBuffer.scala 90:31]
  assign buffer_15_0_clock = clock;
  assign buffer_15_0_io_rreq_valid = io_rvalid & io_rid == 8'hf; // @[MSHRBuffer.scala 85:28]
  assign buffer_15_0_io_wreq_valid = |wens_15 & w_beat_sel_15[0]; // @[MSHRBuffer.scala 88:44]
  assign buffer_15_0_io_wreq_bits_data_0_data = w_data_15_data[255:0]; // @[MSHRBuffer.scala 90:31]
  assign buffer_15_1_clock = clock;
  assign buffer_15_1_io_rreq_valid = io_rvalid & io_rid == 8'hf; // @[MSHRBuffer.scala 85:28]
  assign buffer_15_1_io_wreq_valid = |wens_15 & w_beat_sel_15[1]; // @[MSHRBuffer.scala 88:44]
  assign buffer_15_1_io_wreq_bits_data_0_data = w_data_15_data[511:256]; // @[MSHRBuffer.scala 90:31]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MSHRBuffer.scala 102:23]
      ridReg <= 8'h0; // @[MSHRBuffer.scala 102:23]
    end else begin
      ridReg <= io_rid; // @[MSHRBuffer.scala 102:23]
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
  ridReg = _RAND_0[7:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    ridReg = 8'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

