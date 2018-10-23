// ????CU???
// @param opcode ???
// @param zero ???zero??
// @param clk ????
// @param reset ????
// @param PCWre, InsMemRW, IRWre, WrRegData, RegWre, ALUSrcB, DataMemRW, ALUM2Reg?ExtSel, RegOut, PCSrc?ALUOp ????
module ControlUnit(opcode, clk, reset, zero, PCWre, InsMemRW, IRWre, WrRegData, RegWre, ALUSrcA, ALUSrcB, DataMemRW, ALUM2Reg, ExtSel, RegOut, PCSrc, ALUOp);
    input [5:0]opcode;
    input zero, clk, reset;
    output PCWre, InsMemRW, IRWre, WrRegData, RegWre,ALUSrcA, ALUSrcB, DataMemRW, ALUM2Reg;
    output [1:0]ExtSel, RegOut, PCSrc;
    output [2:0]ALUOp;

    wire [2:0]i_state, o_state;

    DFlipFlop DFlipFlop(i_state, reset, clk, o_state);
    NextState NextState(o_state, opcode, i_state);
    OutputFunc OutputFunc(o_state, opcode, zero, PCWre, InsMemRW, IRWre, WrRegData, RegWre, ALUSrcA, ALUSrcB, DataMemRW, ALUM2Reg, ExtSel, RegOut, PCSrc, ALUOp);

endmodule
