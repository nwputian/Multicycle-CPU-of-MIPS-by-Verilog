// ??????
// @param i_data ?????
// @param o_data ?????
// @param clk ????
module DBDR(i_data, clk, o_data);
  input clk;
  input [31:0] i_data;
  output reg[31:0] o_data;
  always @(posedge clk) begin
    o_data = i_data;
  end
endmodule
