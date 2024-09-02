// Code your testbench here
// or browse Examples
module tb;
  
  reg clk =0;
  reg reset;
  wire [3:0] count;
  
  ri_counter uut(.clk(clk),.reset(reset),.count(count));
  
  always 
    #10 clk = ~clk;
  
  initial 
    begin
      $monitor("t=%0t,clk =%b, reset =%b, count=%b" ,$time,clk,reset,count);
      
      #10 reset = 1'b1;
      #20 reset = 1'b0;
      
    end
  
  initial
    begin
      $dumpfile("file.vcd");
      $dumpvars("1");
    end
  
  initial
    #150 $finish;
  
endmodule
    
  
  