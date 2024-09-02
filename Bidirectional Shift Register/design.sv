// Code your design here
module bidi_shift_regis(
  
  input shiftR, load, clk, reset,
   input d_in,
  output [3:0] d_out);
  
  reg[3:0] temp_reg;
  assign d_out = temp_reg;
  
  always@(posedge clk)
    begin
    if(reset)
      temp_reg <= 1'b0;
  else if(load)
     temp_reg <= d_in;
  else if(shiftR)
    temp_reg <= {d_in,temp_reg[3:1]};
  else
    temp_reg <= {temp_reg[2:0],d_in};
    end
  
  initial
    $monitor("t=%0t, clk=%b,reset=%b, load=%b, shiftR=%b,d_in=%b, temp_reg=%b, d_out=%b", $time,clk,reset,load,shiftR, d_in,temp_reg, d_out);
endmodule 
      