// Code your design here
module JKFF(q,qbar, J,K,reset,clk);
  
  input reset, clk,J,K;
  output reg q;
  output qbar;
  
  always@(posedge clk or negedge reset) 
    begin
      if(!reset)
      q <= 0;
      else 
        begin
          case({J,K})
            2'b00: q <= q;
            2'b01: q <= 1'b0;
            2'b10: q <= 1'b1;
            2'b11: q <= ~q;
          endcase 
        end 
    end 
       assign qbar = ~q;
endmodule 

module Asyn_upcounter(clk, reset, count);
  input clk,reset;
  output [3:0] count;
  
  JKFF j1(.clk(clk),.reset(reset),.J(1),.K(1),.q(count[0]));
  JKFF j2(.clk(count[0]),.reset(reset),.J(1),.K(1),.q(count[1]));
  JKFF j3(.clk(count[1]),.reset(reset),.J(1),.K(1),.q(count[2]));
  JKFF j4(.clk(count[2]),.reset(reset),.J(1),.K(1),.q(count[3]));
endmodule                        
  
  


