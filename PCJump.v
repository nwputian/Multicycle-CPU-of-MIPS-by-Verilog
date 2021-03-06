// pc???????
// @param pc ??????pc??
// @param i_addr ?????
// @param o_addr ?????

module PCJump(pc, i_addr, o_addr);
  input [31:0] pc;
  input [25:0] i_addr;
  output reg[31:0] o_addr;
  reg [27:0] mid; // ???????
  // ??????????pc[31:28]???26???i_addr[27:2], ????0
  always @(i_addr) begin
     mid = i_addr << 2;
     o_addr <= {pc[31:28], mid[27:0]};
  end
endmodule
