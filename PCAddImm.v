// PC ????
// @param now_pc  ??pc?
// @param o_pc ??pc?
// @param imm ???
module PCAddImm(now_pc, imm, o_pc);
  input [31:0] now_pc, imm;
  output [31:0] o_pc;
  // ?????????????32??????4??????pc=pc+imm*4
  assign o_pc = now_pc + (imm << 2);
endmodule
