// Code your design here
module Univ_shift(
  
  input clk, reset, [1:0] mode,
  input [3:0] d_in,
  output reg [3:0] d_out 
);
  
  always@(posedge clk)
    begin
  if(reset)
    d_out <= 1'b0;
  else
    begin
      case (mode)
        2'b00 : d_out <= d_out; //locked mode do nothing
        2'b01 : d_out <= {d_in[0], d_in[3:1]}; //right shift
        2'b10 : d_out <= {d_in[2:0], d_in[3]}; //left shift
        2'b11 : d_out <= d_in;
      endcase
    end
    end
  
endmodule
    
    
    
    