module CLZ_11(
  input  [23:0] io_in,
  output [4:0]  io_out
);
  wire [4:0] _io_out_T_24 = io_in[1] ? 5'h16 : 5'h17; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_25 = io_in[2] ? 5'h15 : _io_out_T_24; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_26 = io_in[3] ? 5'h14 : _io_out_T_25; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_27 = io_in[4] ? 5'h13 : _io_out_T_26; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_28 = io_in[5] ? 5'h12 : _io_out_T_27; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_29 = io_in[6] ? 5'h11 : _io_out_T_28; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_30 = io_in[7] ? 5'h10 : _io_out_T_29; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_31 = io_in[8] ? 5'hf : _io_out_T_30; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_32 = io_in[9] ? 5'he : _io_out_T_31; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_33 = io_in[10] ? 5'hd : _io_out_T_32; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_34 = io_in[11] ? 5'hc : _io_out_T_33; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_35 = io_in[12] ? 5'hb : _io_out_T_34; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_36 = io_in[13] ? 5'ha : _io_out_T_35; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_37 = io_in[14] ? 5'h9 : _io_out_T_36; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_38 = io_in[15] ? 5'h8 : _io_out_T_37; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_39 = io_in[16] ? 5'h7 : _io_out_T_38; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_40 = io_in[17] ? 5'h6 : _io_out_T_39; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_41 = io_in[18] ? 5'h5 : _io_out_T_40; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_42 = io_in[19] ? 5'h4 : _io_out_T_41; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_43 = io_in[20] ? 5'h3 : _io_out_T_42; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_44 = io_in[21] ? 5'h2 : _io_out_T_43; // @[Mux.scala 47:70]
  wire [4:0] _io_out_T_45 = io_in[22] ? 5'h1 : _io_out_T_44; // @[Mux.scala 47:70]
  assign io_out = io_in[23] ? 5'h0 : _io_out_T_45; // @[Mux.scala 47:70]
endmodule

