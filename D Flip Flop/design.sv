// Code your design here
module dff( d,clk,reset,q);
  
  input clk, reset,d ;
  output reg q;
  
  //always@(posedge clk)
  always@(posedge clk)
    begin 
      if(!reset)
        q <= 0;
      else 
        q <=d;
    end
  
endmodule