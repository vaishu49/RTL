// Code your design here
module SRFF(q,qbar,set,reset,clk);
  output reg q;
  output reg qbar;
  input set,reset;
  input clk;
  
  always @(posedge clk )
    begin
      if (set && !reset)
        begin
           q <= 1;
          qbar <= 0;
        end
      else if(!set && !reset)
        begin
        q <= q;//
      qbar <= ~q;
        end 
      else if(!set && reset)
        begin 
          q <= 0;
          qbar <= 1;
        end
      
    end 
endmodule 
          
      
        