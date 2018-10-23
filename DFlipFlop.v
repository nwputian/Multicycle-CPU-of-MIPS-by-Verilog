// D??????
// @param i_state ??????????????
// @param reset ????
// @param clk ????
// @param o_state ?????
module DFlipFlop(i_state, reset, clk, o_state);
    input [2:0]i_state;
    input reset, clk;
    output reg[2:0]o_state;
    always @(posedge clk) begin
        if (reset) o_state = 3'b000;
        else o_state = i_state;
    end
endmodule
