// ??????????
// @param A ??1
// @param B ??2
// @param Control ????????
// @param Result ??
module DataSelector_2to1(A, B, Control, Result);
  input [31:0] A, B;
  input Control;
  output [31:0] Result;
  assign Result = (Control == 1'b0 ? A : B);
endmodule
