// Code your testbench here
// or browse Examples
module tb;
  
  reg reset,shift;
  reg clk= 0;
  reg data ;
  wire [3:0] out;
 //wire q0,q1,q2,q3;
  
  SIPO uut(.data(data),.clk(clk),.reset(reset),.shift(shift),.out(out));
  
  always
    #10 clk =  ~clk;
  
  initial  
    begin
   //   $monitor("t=%0t, data =%b,clk =%b,  reset =%b, shift=%b, out=%b", $time, data,clk, reset, shift, out);
  
 #10 reset = 1'b1; 
 #20 reset = 1'b0;
  #20 data = 1'b1;shift= 1'b1;
  #20 data = 1'b0; 
  #20 data = 1'b1;
  #20 data = 1'b1;
  #20 data = 1'b0;shift = 1'b0; 
 // #20 shift = 1'b0;  
    end
  
  initial 
    #150 $finish;
  
  initial 
    begin
      $dumpfile("file.vcd");
      $dumpvars("1");
    end 
endmodule
  
  
    
    
  