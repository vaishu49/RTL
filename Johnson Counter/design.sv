// Code your design here
module john_counter(
  input clk, reset,
  output reg [3:0] count,integer i );
  
  always@(posedge clk)
   begin
     if(reset)
       count <= 4'b0000;
     else 
       count[3] <= ~count[0];
      
      for(i=0; i<=3; i++)
        count[i]= count[i+1];
    end
  
endmodule