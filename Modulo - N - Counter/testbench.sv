// Code your testbench here
// or browse Examples
module tb;
  
   parameter M = 1;
   parameter WIDTH = 5;

  reg clk = 0;
  reg reset;
  wire [WIDTH-1] out;
  
  
  
  N_counter uut(.clk(clk),.reset(reset),.out(out));
  
  always 
    #10 clk = ~clk;
  
  initial
    begin
      $monitor("t=%0t, clk=%b, reset=%b, out=%b", $time, clk,reset,out);
      
      #10 reset = 1'b1;
      #20 reset = 1'b0;
      
    end
  
  initial
    #200 $finish;
  
  initial 
    begin
    $dumpfile("file.vcd");
    $dumpvars("1");
    end
endmodule
  
  