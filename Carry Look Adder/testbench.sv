// Code your testbench here
// or browse Examples
module tb;
  wire [3:0] sum;
  wire c_out;
  reg [3:0] a,b;
  reg c_in;
  
  cla cla_inst(.sum(sum),.c_out(c_out),.a(a),.b(b),.c_in(c_in));
  
  initial 
    begin
      $monitor("t=%0t, sum=%b, c_out=%b, a= %b, b=%b, c_in=%b",$time, sum, c_out, a,b,c_in);
      #5 a=4'b0101; b=4'b1001; c_in=0;
       #5 a=4'b0100; b=4'b1010; c_in=1;
       #5 a=4'b0000; b=4'b0001; c_in=0;
       #5 a=4'b0001; b=4'b0001; c_in=1;
      
    end
  
endmodule