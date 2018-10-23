// ???????????
// @param A ??1
// @param B ??2
// @param C ??3
// @param D ??4
// @param Control ??????????
// @param Result ?????
module DataSelector_4to1(A, B, C, D, Control, Result);
  input [31:0] A, B, C, D;
  input [1:0]Control;
  output reg[31:0] Result;
  always @(Control or A or B or C or D) begin
    case(Control)
        2'b00: Result = A;
        2'b01: Result = B;
        2'b10: Result = C;
        2'b11: Result = D;
        default: Result = 0;
     endcase
  end
endmodule
