// Code your design here
module SISO( out, data, clk, reset);
  
  input data, clk,reset;
  output reg  out;
  
  reg q0,q1,q2,q3;
  always @ (posedge clk, posedge reset)
    begin  
  if (reset)
    begin
    q0 <= 0;
    q1 <=0;
    q2 <=0;
    q3 <= 0;
    out <= 0;
    end
  else 
    begin
      q0 <= data;
      q1 <= q0;
      q2 <= q1;
      q3 <= q2;
      out <= q3;
    end
    end
endmodule 
  