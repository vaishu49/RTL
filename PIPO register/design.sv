// Code your design here

/*module PIPO(d,clk,q);
  
  input [3:0] d;
  input clk;
  output [3:0] q;
  
  dff a(d[3], clk, q[3]);
  dff b(d[2], clk, q[2]);
  dff c(d[1], clk, q[1]);
  dff e(d[0] , clk, q[0]);
         
endmodule*/
  

module PIPO(reset,clk,d,q);
  
   input clk,reset;
  input [3:0] d;
  output reg [3:0] q;
  
  always@(posedge clk,posedge reset)
  begin
    if(reset)
      q <= 4'b0000;
    else 
      q <= d;
end
  
endmodule
    