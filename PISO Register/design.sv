// Code your design here
module PISO(data, reset, out,clk,load, shift);
  
  input clk, reset,shift,load;
   input [3:0] data; 
  output reg [3:0] out;
   reg [3:0] q; 
  
  
  always@(posedge clk)
    begin
      if(reset)
        begin
        q <= 4'b0000;
        out <= 1'b0;
        end
      else if(load)
        begin
        q <= data;
          out <= data;
        end
        else if(shift)
        begin
          out <= q[3];
         q[3] <= q[2];
         q[2] <= q[1];
         q[1] <= q[0];
        end
      else
        q <= out;
       end
  initial
    
  $monitor("t=%0t, clk=%b, reset =%b, load=%b, shift =%b,  data=%b, q=%b,  out=%b", $time,clk,reset,load,shift,data,q,  out);
  
      endmodule
     
      
          
          
          