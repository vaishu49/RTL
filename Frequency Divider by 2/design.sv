// Code your design here
module freq_divi(
  input clk,reset,
  output reg out);
     initial
      out = 1'b0;
  
   always@(posedge clk)
    begin
    if(reset)
      out <= 1'b0;
    else 
       out <= ~out;
    end
  
endmodule 
  