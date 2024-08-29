// Code your design here
module syn_up_down(
  
  input reset,clk,load,
  input mode,
  input [2:0] d_in,
  output reg [2:0] q);
  
  
  
  always@(posedge clk)
    begin
    if(reset)
      q <= 4'b000;
  else if(load)
      q <= d_in;
  else if(mode)
    q <= q + 1;
  else 
    q <= q-1;
       end
     endmodule



  