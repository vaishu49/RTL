// Code your design here


module N_counter
  
  #(parameter  M = 10, 
    parameter  WIDTH = 5)
  
  
  (input clk, reset,
  output  reg [WIDTH -1:0] out);
  
  
  
  always@(posedge clk)
    begin
    if(reset)
      out <= 4'b0000;
      else if(out == M-1)
        out <= 0;
  else 
        out <= out+1;
  end
endmodule
 
    
    
  
  