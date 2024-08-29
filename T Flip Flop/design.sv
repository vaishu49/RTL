// Code your design here
module TFF( q, clk, reset, tin);
  
   output reg q;
  input tin,clk,reset;
  
  always@(posedge clk)
    
    begin
      if(reset)
        q <= 0;
      else if (tin)
        q <= ~q;
      else 
        q  <= q;
    end
  
endmodule


         
  