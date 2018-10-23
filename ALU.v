module ALU(A, B, ALUOp, zero, result);
  input [31:0] A, B;
  input [2:0] ALUOp;
  reg [31:0] reg_A,reg_B;
  output zero;
  output reg [31:0] result;
  initial begin
         result = 0;
  end
  assign zero = (result? 0 : 1);
  always @(A or B or ALUOp) begin
    case(ALUOp)
      3'b000: begin reg_A=A; reg_B=B; result = reg_A + reg_B; end
      3'b001: begin reg_A=A; reg_B=(~B+1);result = reg_A + reg_B; end
      3'b101: result = A | B;
      default: result = 0;
    endcase
  end
endmodule
