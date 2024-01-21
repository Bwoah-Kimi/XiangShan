module RefillBuffer(
  input          clock,
  input          reset,
  input          io_rvalid,
  input          io_rbeat,
  input  [2:0]   io_rid,
  output         io_rready,
  output [255:0] io_rbuffer_data_data,
  input          io_rlast,
  input          io_wvalid,
  input          io_wbeat,
  input  [255:0] io_wdata_data,
  output         io_wready,
  output [2:0]   io_wid
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [255:0] _RAND_1;
  reg [255:0] _RAND_3;
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  reg [255:0] _RAND_0;
  reg [255:0] _RAND_2;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
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
`endif // RANDOMIZE_REG_INIT
  reg [255:0] buffer_0_data [0:6]; // @[RefillBuffer.scala 34:19]
  wire  buffer_0_data_io_rbuffer_data_MPORT_en; // @[RefillBuffer.scala 34:19]
  wire [2:0] buffer_0_data_io_rbuffer_data_MPORT_addr; // @[RefillBuffer.scala 34:19]
  wire [255:0] buffer_0_data_io_rbuffer_data_MPORT_data; // @[RefillBuffer.scala 34:19]
  wire [255:0] buffer_0_data_MPORT_data; // @[RefillBuffer.scala 34:19]
  wire [2:0] buffer_0_data_MPORT_addr; // @[RefillBuffer.scala 34:19]
  wire  buffer_0_data_MPORT_mask; // @[RefillBuffer.scala 34:19]
  wire  buffer_0_data_MPORT_en; // @[RefillBuffer.scala 34:19]
  reg [255:0] buffer_1_data [0:6]; // @[RefillBuffer.scala 34:19]
  wire  buffer_1_data_io_rbuffer_data_MPORT_en; // @[RefillBuffer.scala 34:19]
  wire [2:0] buffer_1_data_io_rbuffer_data_MPORT_addr; // @[RefillBuffer.scala 34:19]
  wire [255:0] buffer_1_data_io_rbuffer_data_MPORT_data; // @[RefillBuffer.scala 34:19]
  wire [255:0] buffer_1_data_MPORT_data; // @[RefillBuffer.scala 34:19]
  wire [2:0] buffer_1_data_MPORT_addr; // @[RefillBuffer.scala 34:19]
  wire  buffer_1_data_MPORT_mask; // @[RefillBuffer.scala 34:19]
  wire  buffer_1_data_MPORT_en; // @[RefillBuffer.scala 34:19]
  reg  valids_0_0; // @[RefillBuffer.scala 35:23]
  reg  valids_0_1; // @[RefillBuffer.scala 35:23]
  reg  valids_1_0; // @[RefillBuffer.scala 35:23]
  reg  valids_1_1; // @[RefillBuffer.scala 35:23]
  reg  valids_2_0; // @[RefillBuffer.scala 35:23]
  reg  valids_2_1; // @[RefillBuffer.scala 35:23]
  reg  valids_3_0; // @[RefillBuffer.scala 35:23]
  reg  valids_3_1; // @[RefillBuffer.scala 35:23]
  reg  valids_4_0; // @[RefillBuffer.scala 35:23]
  reg  valids_4_1; // @[RefillBuffer.scala 35:23]
  reg  valids_5_0; // @[RefillBuffer.scala 35:23]
  reg  valids_5_1; // @[RefillBuffer.scala 35:23]
  reg  valids_6_0; // @[RefillBuffer.scala 35:23]
  reg  valids_6_1; // @[RefillBuffer.scala 35:23]
  wire  wfirst = ~io_wbeat; // @[RefillBuffer.scala 42:23]
  wire [255:0] _GEN_0 = buffer_0_data_io_rbuffer_data_MPORT_data; // @[RefillBuffer.scala 44:{17,17}]
  wire  _GEN_5 = 3'h0 == io_rid & io_rbeat ? valids_0_1 : valids_0_0; // @[RefillBuffer.scala 45:{11,11}]
  wire  _GEN_6 = 3'h1 == io_rid & ~io_rbeat ? valids_1_0 : _GEN_5; // @[RefillBuffer.scala 45:{11,11}]
  wire  _GEN_7 = 3'h1 == io_rid & io_rbeat ? valids_1_1 : _GEN_6; // @[RefillBuffer.scala 45:{11,11}]
  wire  _GEN_8 = 3'h2 == io_rid & ~io_rbeat ? valids_2_0 : _GEN_7; // @[RefillBuffer.scala 45:{11,11}]
  wire  _GEN_9 = 3'h2 == io_rid & io_rbeat ? valids_2_1 : _GEN_8; // @[RefillBuffer.scala 45:{11,11}]
  wire  _GEN_10 = 3'h3 == io_rid & ~io_rbeat ? valids_3_0 : _GEN_9; // @[RefillBuffer.scala 45:{11,11}]
  wire  _GEN_11 = 3'h3 == io_rid & io_rbeat ? valids_3_1 : _GEN_10; // @[RefillBuffer.scala 45:{11,11}]
  wire  _GEN_12 = 3'h4 == io_rid & ~io_rbeat ? valids_4_0 : _GEN_11; // @[RefillBuffer.scala 45:{11,11}]
  wire  _GEN_13 = 3'h4 == io_rid & io_rbeat ? valids_4_1 : _GEN_12; // @[RefillBuffer.scala 45:{11,11}]
  wire  _GEN_14 = 3'h5 == io_rid & ~io_rbeat ? valids_5_0 : _GEN_13; // @[RefillBuffer.scala 45:{11,11}]
  wire  _GEN_15 = 3'h5 == io_rid & io_rbeat ? valids_5_1 : _GEN_14; // @[RefillBuffer.scala 45:{11,11}]
  wire  _GEN_16 = 3'h6 == io_rid & ~io_rbeat ? valids_6_0 : _GEN_15; // @[RefillBuffer.scala 45:{11,11}]
  wire  _GEN_18 = 3'h0 == io_rid ? 1'h0 : valids_0_0; // @[RefillBuffer.scala 35:23 53:{28,28}]
  wire  _GEN_19 = 3'h1 == io_rid ? 1'h0 : valids_1_0; // @[RefillBuffer.scala 35:23 53:{28,28}]
  wire  _GEN_20 = 3'h2 == io_rid ? 1'h0 : valids_2_0; // @[RefillBuffer.scala 35:23 53:{28,28}]
  wire  _GEN_21 = 3'h3 == io_rid ? 1'h0 : valids_3_0; // @[RefillBuffer.scala 35:23 53:{28,28}]
  wire  _GEN_22 = 3'h4 == io_rid ? 1'h0 : valids_4_0; // @[RefillBuffer.scala 35:23 53:{28,28}]
  wire  _GEN_23 = 3'h5 == io_rid ? 1'h0 : valids_5_0; // @[RefillBuffer.scala 35:23 53:{28,28}]
  wire  _GEN_24 = 3'h6 == io_rid ? 1'h0 : valids_6_0; // @[RefillBuffer.scala 35:23 53:{28,28}]
  wire  _GEN_25 = 3'h0 == io_rid ? 1'h0 : valids_0_1; // @[RefillBuffer.scala 35:23 53:{28,28}]
  wire  _GEN_26 = 3'h1 == io_rid ? 1'h0 : valids_1_1; // @[RefillBuffer.scala 35:23 53:{28,28}]
  wire  _GEN_27 = 3'h2 == io_rid ? 1'h0 : valids_2_1; // @[RefillBuffer.scala 35:23 53:{28,28}]
  wire  _GEN_28 = 3'h3 == io_rid ? 1'h0 : valids_3_1; // @[RefillBuffer.scala 35:23 53:{28,28}]
  wire  _GEN_29 = 3'h4 == io_rid ? 1'h0 : valids_4_1; // @[RefillBuffer.scala 35:23 53:{28,28}]
  wire  _GEN_30 = 3'h5 == io_rid ? 1'h0 : valids_5_1; // @[RefillBuffer.scala 35:23 53:{28,28}]
  wire  _GEN_31 = 3'h6 == io_rid ? 1'h0 : valids_6_1; // @[RefillBuffer.scala 35:23 53:{28,28}]
  wire  _GEN_32 = io_rvalid & io_rready & io_rlast ? _GEN_18 : valids_0_0; // @[RefillBuffer.scala 35:23 51:36]
  wire  _GEN_33 = io_rvalid & io_rready & io_rlast ? _GEN_19 : valids_1_0; // @[RefillBuffer.scala 35:23 51:36]
  wire  _GEN_34 = io_rvalid & io_rready & io_rlast ? _GEN_20 : valids_2_0; // @[RefillBuffer.scala 35:23 51:36]
  wire  _GEN_35 = io_rvalid & io_rready & io_rlast ? _GEN_21 : valids_3_0; // @[RefillBuffer.scala 35:23 51:36]
  wire  _GEN_36 = io_rvalid & io_rready & io_rlast ? _GEN_22 : valids_4_0; // @[RefillBuffer.scala 35:23 51:36]
  wire  _GEN_37 = io_rvalid & io_rready & io_rlast ? _GEN_23 : valids_5_0; // @[RefillBuffer.scala 35:23 51:36]
  wire  _GEN_38 = io_rvalid & io_rready & io_rlast ? _GEN_24 : valids_6_0; // @[RefillBuffer.scala 35:23 51:36]
  wire  _GEN_39 = io_rvalid & io_rready & io_rlast ? _GEN_25 : valids_0_1; // @[RefillBuffer.scala 35:23 51:36]
  wire  _GEN_40 = io_rvalid & io_rready & io_rlast ? _GEN_26 : valids_1_1; // @[RefillBuffer.scala 35:23 51:36]
  wire  _GEN_41 = io_rvalid & io_rready & io_rlast ? _GEN_27 : valids_2_1; // @[RefillBuffer.scala 35:23 51:36]
  wire  _GEN_42 = io_rvalid & io_rready & io_rlast ? _GEN_28 : valids_3_1; // @[RefillBuffer.scala 35:23 51:36]
  wire  _GEN_43 = io_rvalid & io_rready & io_rlast ? _GEN_29 : valids_4_1; // @[RefillBuffer.scala 35:23 51:36]
  wire  _GEN_44 = io_rvalid & io_rready & io_rlast ? _GEN_30 : valids_5_1; // @[RefillBuffer.scala 35:23 51:36]
  wire  _GEN_45 = io_rvalid & io_rready & io_rlast ? _GEN_31 : valids_6_1; // @[RefillBuffer.scala 35:23 51:36]
  wire [1:0] _validMask_T = {valids_0_1,valids_0_0}; // @[RefillBuffer.scala 56:55]
  wire [1:0] _validMask_T_2 = {valids_1_1,valids_1_0}; // @[RefillBuffer.scala 56:55]
  wire [1:0] _validMask_T_4 = {valids_2_1,valids_2_0}; // @[RefillBuffer.scala 56:55]
  wire [1:0] _validMask_T_6 = {valids_3_1,valids_3_0}; // @[RefillBuffer.scala 56:55]
  wire [1:0] _validMask_T_8 = {valids_4_1,valids_4_0}; // @[RefillBuffer.scala 56:55]
  wire [1:0] _validMask_T_10 = {valids_5_1,valids_5_0}; // @[RefillBuffer.scala 56:55]
  wire [1:0] _validMask_T_12 = {valids_6_1,valids_6_0}; // @[RefillBuffer.scala 56:55]
  wire [6:0] validMask = {|_validMask_T_12,|_validMask_T_10,|_validMask_T_8,|_validMask_T_6,|_validMask_T_4,|
    _validMask_T_2,|_validMask_T}; // @[RefillBuffer.scala 56:72]
  wire [6:0] _freeIdx_T = ~validMask; // @[RefillBuffer.scala 57:33]
  wire [2:0] _freeIdx_T_8 = _freeIdx_T[5] ? 3'h5 : 3'h6; // @[Mux.scala 47:70]
  wire [2:0] _freeIdx_T_9 = _freeIdx_T[4] ? 3'h4 : _freeIdx_T_8; // @[Mux.scala 47:70]
  reg  io_wready_REG; // @[RefillBuffer.scala 59:33]
  reg [2:0] io_wid_REG; // @[RefillBuffer.scala 61:12]
  wire  _io_wid_T = io_wvalid & io_wready; // @[RefillBuffer.scala 62:29]
  wire  _io_wid_T_1 = io_wvalid & io_wready & wfirst; // @[RefillBuffer.scala 62:40]
  reg [2:0] io_wid_r; // @[Reg.scala 16:16]
  wire  _GEN_127 = 3'h0 == io_wid; // @[RefillBuffer.scala 66:{12,12}]
  wire  _GEN_128 = 3'h1 == io_wid; // @[RefillBuffer.scala 66:{12,12}]
  wire  _GEN_131 = 3'h2 == io_wid; // @[RefillBuffer.scala 66:{12,12}]
  wire  _GEN_134 = 3'h3 == io_wid; // @[RefillBuffer.scala 66:{12,12}]
  wire  _GEN_137 = 3'h4 == io_wid; // @[RefillBuffer.scala 66:{12,12}]
  wire  _GEN_140 = 3'h5 == io_wid; // @[RefillBuffer.scala 66:{12,12}]
  wire  _GEN_143 = 3'h6 == io_wid; // @[RefillBuffer.scala 66:{12,12}]
  wire  _GEN_61 = _GEN_127 & wfirst | _GEN_32; // @[RefillBuffer.scala 67:{26,26}]
  wire  _GEN_62 = _GEN_127 & io_wbeat | _GEN_39; // @[RefillBuffer.scala 67:{26,26}]
  wire  _GEN_63 = _GEN_128 & wfirst | _GEN_33; // @[RefillBuffer.scala 67:{26,26}]
  wire  _GEN_64 = _GEN_128 & io_wbeat | _GEN_40; // @[RefillBuffer.scala 67:{26,26}]
  wire  _GEN_65 = _GEN_131 & wfirst | _GEN_34; // @[RefillBuffer.scala 67:{26,26}]
  wire  _GEN_66 = _GEN_131 & io_wbeat | _GEN_41; // @[RefillBuffer.scala 67:{26,26}]
  wire  _GEN_67 = _GEN_134 & wfirst | _GEN_35; // @[RefillBuffer.scala 67:{26,26}]
  wire  _GEN_68 = _GEN_134 & io_wbeat | _GEN_42; // @[RefillBuffer.scala 67:{26,26}]
  wire  _GEN_69 = _GEN_137 & wfirst | _GEN_36; // @[RefillBuffer.scala 67:{26,26}]
  wire  _GEN_70 = _GEN_137 & io_wbeat | _GEN_43; // @[RefillBuffer.scala 67:{26,26}]
  wire  _GEN_71 = _GEN_140 & wfirst | _GEN_37; // @[RefillBuffer.scala 67:{26,26}]
  wire  _GEN_72 = _GEN_140 & io_wbeat | _GEN_44; // @[RefillBuffer.scala 67:{26,26}]
  wire  _GEN_73 = _GEN_143 & wfirst | _GEN_38; // @[RefillBuffer.scala 67:{26,26}]
  wire  _GEN_74 = _GEN_143 & io_wbeat | _GEN_45; // @[RefillBuffer.scala 67:{26,26}]
  assign buffer_0_data_io_rbuffer_data_MPORT_en = 1'h1;
  assign buffer_0_data_io_rbuffer_data_MPORT_addr = io_rid;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign buffer_0_data_io_rbuffer_data_MPORT_data = buffer_0_data[buffer_0_data_io_rbuffer_data_MPORT_addr]; // @[RefillBuffer.scala 34:19]
  `else
  assign buffer_0_data_io_rbuffer_data_MPORT_data = buffer_0_data_io_rbuffer_data_MPORT_addr >= 3'h7 ? _RAND_1[255:0]
     : buffer_0_data[buffer_0_data_io_rbuffer_data_MPORT_addr]; // @[RefillBuffer.scala 34:19]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign buffer_0_data_MPORT_data = io_wdata_data;
  assign buffer_0_data_MPORT_addr = io_wid;
  assign buffer_0_data_MPORT_mask = ~io_wbeat;
  assign buffer_0_data_MPORT_en = io_wvalid & io_wready;
  assign buffer_1_data_io_rbuffer_data_MPORT_en = 1'h1;
  assign buffer_1_data_io_rbuffer_data_MPORT_addr = io_rid;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign buffer_1_data_io_rbuffer_data_MPORT_data = buffer_1_data[buffer_1_data_io_rbuffer_data_MPORT_addr]; // @[RefillBuffer.scala 34:19]
  `else
  assign buffer_1_data_io_rbuffer_data_MPORT_data = buffer_1_data_io_rbuffer_data_MPORT_addr >= 3'h7 ? _RAND_3[255:0]
     : buffer_1_data[buffer_1_data_io_rbuffer_data_MPORT_addr]; // @[RefillBuffer.scala 34:19]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign buffer_1_data_MPORT_data = io_wdata_data;
  assign buffer_1_data_MPORT_addr = io_wid;
  assign buffer_1_data_MPORT_mask = io_wbeat;
  assign buffer_1_data_MPORT_en = io_wvalid & io_wready;
  assign io_rready = 3'h6 == io_rid & io_rbeat ? valids_6_1 : _GEN_16; // @[RefillBuffer.scala 45:{11,11}]
  assign io_rbuffer_data_data = io_rbeat ? buffer_1_data_io_rbuffer_data_MPORT_data : _GEN_0; // @[RefillBuffer.scala 44:{17,17}]
  assign io_wready = wfirst ? io_wready_REG : 1'h1; // @[RefillBuffer.scala 59:17]
  assign io_wid = wfirst ? io_wid_REG : io_wid_r; // @[RefillBuffer.scala 60:14]
  always @(posedge clock) begin
    if (buffer_0_data_MPORT_en & buffer_0_data_MPORT_mask) begin
      buffer_0_data[buffer_0_data_MPORT_addr] <= buffer_0_data_MPORT_data; // @[RefillBuffer.scala 34:19]
    end
    if (buffer_1_data_MPORT_en & buffer_1_data_MPORT_mask) begin
      buffer_1_data[buffer_1_data_MPORT_addr] <= buffer_1_data_MPORT_data; // @[RefillBuffer.scala 34:19]
    end
    if (_io_wid_T_1) begin // @[Reg.scala 17:18]
      io_wid_r <= io_wid; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RefillBuffer.scala 65:27]
      valids_0_0 <= 1'h0;
    end else if (_io_wid_T) begin // @[RefillBuffer.scala 51:36]
      valids_0_0 <= _GEN_61; // @[RefillBuffer.scala 35:23 53:{28,28}]
    end else if (io_rvalid & io_rready & io_rlast) begin // @[RefillBuffer.scala 35:23]
      if (3'h0 == io_rid) begin
        valids_0_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RefillBuffer.scala 65:27]
      valids_0_1 <= 1'h0;
    end else if (_io_wid_T) begin // @[RefillBuffer.scala 51:36]
      valids_0_1 <= _GEN_62; // @[RefillBuffer.scala 35:23 53:{28,28}]
    end else if (io_rvalid & io_rready & io_rlast) begin // @[RefillBuffer.scala 35:23]
      if (3'h0 == io_rid) begin
        valids_0_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RefillBuffer.scala 65:27]
      valids_1_0 <= 1'h0;
    end else if (_io_wid_T) begin // @[RefillBuffer.scala 51:36]
      valids_1_0 <= _GEN_63; // @[RefillBuffer.scala 35:23 53:{28,28}]
    end else if (io_rvalid & io_rready & io_rlast) begin // @[RefillBuffer.scala 35:23]
      if (3'h1 == io_rid) begin
        valids_1_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RefillBuffer.scala 65:27]
      valids_1_1 <= 1'h0;
    end else if (_io_wid_T) begin // @[RefillBuffer.scala 51:36]
      valids_1_1 <= _GEN_64; // @[RefillBuffer.scala 35:23 53:{28,28}]
    end else if (io_rvalid & io_rready & io_rlast) begin // @[RefillBuffer.scala 35:23]
      if (3'h1 == io_rid) begin
        valids_1_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RefillBuffer.scala 65:27]
      valids_2_0 <= 1'h0;
    end else if (_io_wid_T) begin // @[RefillBuffer.scala 51:36]
      valids_2_0 <= _GEN_65; // @[RefillBuffer.scala 35:23 53:{28,28}]
    end else if (io_rvalid & io_rready & io_rlast) begin // @[RefillBuffer.scala 35:23]
      if (3'h2 == io_rid) begin
        valids_2_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RefillBuffer.scala 65:27]
      valids_2_1 <= 1'h0;
    end else if (_io_wid_T) begin // @[RefillBuffer.scala 51:36]
      valids_2_1 <= _GEN_66; // @[RefillBuffer.scala 35:23 53:{28,28}]
    end else if (io_rvalid & io_rready & io_rlast) begin // @[RefillBuffer.scala 35:23]
      if (3'h2 == io_rid) begin
        valids_2_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RefillBuffer.scala 65:27]
      valids_3_0 <= 1'h0;
    end else if (_io_wid_T) begin // @[RefillBuffer.scala 51:36]
      valids_3_0 <= _GEN_67; // @[RefillBuffer.scala 35:23 53:{28,28}]
    end else if (io_rvalid & io_rready & io_rlast) begin // @[RefillBuffer.scala 35:23]
      if (3'h3 == io_rid) begin
        valids_3_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RefillBuffer.scala 65:27]
      valids_3_1 <= 1'h0;
    end else if (_io_wid_T) begin // @[RefillBuffer.scala 51:36]
      valids_3_1 <= _GEN_68; // @[RefillBuffer.scala 35:23 53:{28,28}]
    end else if (io_rvalid & io_rready & io_rlast) begin // @[RefillBuffer.scala 35:23]
      if (3'h3 == io_rid) begin
        valids_3_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RefillBuffer.scala 65:27]
      valids_4_0 <= 1'h0;
    end else if (_io_wid_T) begin // @[RefillBuffer.scala 51:36]
      valids_4_0 <= _GEN_69; // @[RefillBuffer.scala 35:23 53:{28,28}]
    end else if (io_rvalid & io_rready & io_rlast) begin // @[RefillBuffer.scala 35:23]
      if (3'h4 == io_rid) begin
        valids_4_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RefillBuffer.scala 65:27]
      valids_4_1 <= 1'h0;
    end else if (_io_wid_T) begin // @[RefillBuffer.scala 51:36]
      valids_4_1 <= _GEN_70; // @[RefillBuffer.scala 35:23 53:{28,28}]
    end else if (io_rvalid & io_rready & io_rlast) begin // @[RefillBuffer.scala 35:23]
      if (3'h4 == io_rid) begin
        valids_4_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RefillBuffer.scala 65:27]
      valids_5_0 <= 1'h0;
    end else if (_io_wid_T) begin // @[RefillBuffer.scala 51:36]
      valids_5_0 <= _GEN_71; // @[RefillBuffer.scala 35:23 53:{28,28}]
    end else if (io_rvalid & io_rready & io_rlast) begin // @[RefillBuffer.scala 35:23]
      if (3'h5 == io_rid) begin
        valids_5_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RefillBuffer.scala 65:27]
      valids_5_1 <= 1'h0;
    end else if (_io_wid_T) begin // @[RefillBuffer.scala 51:36]
      valids_5_1 <= _GEN_72; // @[RefillBuffer.scala 35:23 53:{28,28}]
    end else if (io_rvalid & io_rready & io_rlast) begin // @[RefillBuffer.scala 35:23]
      if (3'h5 == io_rid) begin
        valids_5_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RefillBuffer.scala 65:27]
      valids_6_0 <= 1'h0;
    end else if (_io_wid_T) begin // @[RefillBuffer.scala 51:36]
      valids_6_0 <= _GEN_73; // @[RefillBuffer.scala 35:23 53:{28,28}]
    end else if (io_rvalid & io_rready & io_rlast) begin // @[RefillBuffer.scala 35:23]
      if (3'h6 == io_rid) begin
        valids_6_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RefillBuffer.scala 65:27]
      valids_6_1 <= 1'h0;
    end else if (_io_wid_T) begin // @[RefillBuffer.scala 51:36]
      valids_6_1 <= _GEN_74; // @[RefillBuffer.scala 35:23 53:{28,28}]
    end else if (io_rvalid & io_rready & io_rlast) begin // @[RefillBuffer.scala 35:23]
      if (3'h6 == io_rid) begin
        valids_6_1 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RefillBuffer.scala 59:34]
      io_wready_REG <= 1'h1;
    end else begin
      io_wready_REG <= ~(&validMask);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Mux.scala 47:70]
      io_wid_REG <= 3'h0;
    end else if (_freeIdx_T[0]) begin // @[Mux.scala 47:70]
      io_wid_REG <= 3'h0;
    end else if (_freeIdx_T[1]) begin // @[Mux.scala 47:70]
      io_wid_REG <= 3'h1;
    end else if (_freeIdx_T[2]) begin // @[Mux.scala 47:70]
      io_wid_REG <= 3'h2;
    end else if (_freeIdx_T[3]) begin
      io_wid_REG <= 3'h3;
    end else begin
      io_wid_REG <= _freeIdx_T_9;
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
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_1 = {8{`RANDOM}};
  _RAND_3 = {8{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {8{`RANDOM}};
  for (initvar = 0; initvar < 7; initvar = initvar+1)
    buffer_0_data[initvar] = _RAND_0[255:0];
  _RAND_2 = {8{`RANDOM}};
  for (initvar = 0; initvar < 7; initvar = initvar+1)
    buffer_1_data[initvar] = _RAND_2[255:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  valids_0_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  valids_0_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  valids_1_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  valids_1_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  valids_2_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  valids_2_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  valids_3_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  valids_3_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  valids_4_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  valids_4_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  valids_5_0 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  valids_5_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  valids_6_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  valids_6_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_wready_REG = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_wid_REG = _RAND_19[2:0];
  _RAND_20 = {1{`RANDOM}};
  io_wid_r = _RAND_20[2:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    valids_0_0 = 1'h0;
  end
  if (reset) begin
    valids_0_1 = 1'h0;
  end
  if (reset) begin
    valids_1_0 = 1'h0;
  end
  if (reset) begin
    valids_1_1 = 1'h0;
  end
  if (reset) begin
    valids_2_0 = 1'h0;
  end
  if (reset) begin
    valids_2_1 = 1'h0;
  end
  if (reset) begin
    valids_3_0 = 1'h0;
  end
  if (reset) begin
    valids_3_1 = 1'h0;
  end
  if (reset) begin
    valids_4_0 = 1'h0;
  end
  if (reset) begin
    valids_4_1 = 1'h0;
  end
  if (reset) begin
    valids_5_0 = 1'h0;
  end
  if (reset) begin
    valids_5_1 = 1'h0;
  end
  if (reset) begin
    valids_6_0 = 1'h0;
  end
  if (reset) begin
    valids_6_1 = 1'h0;
  end
  if (reset) begin
    io_wready_REG = 1'h1;
  end
  if (reset) begin
    io_wid_REG = 3'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

