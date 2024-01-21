// name:array_2_ext depth:8 width:100 masked:true maskGran:25 maskSeg:4
module array_2_ext(
  input RW0_clk,
  input [2:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [3:0] RW0_wmask,
  input [99:0] RW0_wdata,
  output [99:0] RW0_rdata
);


  reg reg_RW0_ren;
  reg [2:0] reg_RW0_addr;
  reg [99:0] ram [7:0];
  `ifdef RANDOMIZE_MEM_INIT
    integer initvar;
    initial begin
      #`RANDOMIZE_DELAY begin end
      for (initvar = 0; initvar < 8; initvar = initvar+1)
        ram[initvar] = {4 {$random}};
      reg_RW0_addr = {1 {$random}};
    end
  `endif
  always @(posedge RW0_clk)
    reg_RW0_ren <= RW0_en && !RW0_wmode;
  always @(posedge RW0_clk)
    if (RW0_en && !RW0_wmode) reg_RW0_addr <= RW0_addr;
  always @(posedge RW0_clk)
    if (RW0_en && RW0_wmode) begin
      if (RW0_wmask[0]) ram[RW0_addr][24:0] <= RW0_wdata[24:0];
      if (RW0_wmask[1]) ram[RW0_addr][49:25] <= RW0_wdata[49:25];
      if (RW0_wmask[2]) ram[RW0_addr][74:50] <= RW0_wdata[74:50];
      if (RW0_wmask[3]) ram[RW0_addr][99:75] <= RW0_wdata[99:75];
    end
  `ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [127:0] RW0_random;
  `ifdef RANDOMIZE_MEM_INIT
    initial begin
      #`RANDOMIZE_DELAY begin end
      RW0_random = {$random, $random, $random, $random};
      reg_RW0_ren = RW0_random[0];
    end
  `endif
  always @(posedge RW0_clk) RW0_random <= {$random, $random, $random, $random};
  assign RW0_rdata = reg_RW0_ren ? ram[reg_RW0_addr] : RW0_random[99:0];
  `else
  assign RW0_rdata = ram[reg_RW0_addr];
  `endif

endmodule
