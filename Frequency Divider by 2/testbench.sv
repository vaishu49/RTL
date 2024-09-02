// Code your testbench here
// or browse Examples
module tb;
  reg clk =0;
  reg reset;
  wire out;
  
  freq_divi uut(.clk(clk),.out(out));
  
  always 
    #10 clk = ~clk;
  
  initial 
    begin
      $monitor("t=%0t, clk = %b, reset=%b, out=%b", $time, clk,reset,out);
  #10 reset = 1'b1;
  #20 reset = 1'b0;
    end
  
  initial 
    #100 $finish;
  
  initial
   begin
     $dumpfile("file.vcd");
     $dumpvars("1");
   end
  
endmodule 
  
