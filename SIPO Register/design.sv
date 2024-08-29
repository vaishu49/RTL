// Code your design here
module SIPO(data, clk, reset,shift,out);
  
   reg [3:0] q;
  input clk,reset,shift;
  output reg [3:0] out;
  input data;
 // reg q0,q1,q2,q3;
  always@(posedge clk, posedge reset)
    begin
      if (reset)
        begin
        q <= 4'b0000;
        out <= 4'b0000;
        end
       else if(shift)
        begin
          q[0]<= data;
          q[1] <= q[0];
          q[2] <= q[1];
          q[3] <= q[2];
          out <= q[3];
        end
      
      else 
        out <= q;
        end
  
  initial
    $monitor("t=%0t, data =%b,clk =%b,  reset =%b, shift=%b,q=%b, out=%b", $time, data,clk, reset, shift,q, out);
  
      endmodule 
      
      
     
        
          
      
        
 
  
          
