// Code your testbench here
// or browse Examples
module tb;
  
  reg [3:0] a,b;
  reg c_in;
  wire [3:0] sum;
  wire c_out;
  
  rip_add rip_add_inst(.a(a),.b(b),.c_in(c_in),.sum(sum),.c_out(c_out));
  
  initial 
    begin
      $monitor("t=%0t, a=%b, b=%b, c_in=%b, sum=%b, c_out=%b",$time , a,b,c_in, sum, c_out);
      #5 a = 4'b1001; b=4'b0101; c_in =0;
      #5 a = 4'b0111; b=4'b1100; c_in =1;
      #5 a = 4'b1100;; b=4'b1010; c_in =0;
    end
  
endmodule 
     
      
               
               
               
               
               
               
               
               
               