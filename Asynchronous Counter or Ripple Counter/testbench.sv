// Code your testbench here
// or browse Examples
module tb;
   
  reg clk,reset;
  wire [3:0] count;

  
  Asyn_upcounter uut(.clk(clk),.reset(reset),.count(count));
  
  initial 
    clk = 1'b0;
  always 
    #5 clk = ~clk;
  
  initial 
  begin
  $monitor("t=%0t, clk=%b, reset=%b, count=%b",$time,clk,reset,count);
    
    #10 reset = 1'b0;
    #5 reset = 1'b1;
    
  end
  
  initial
    #180 $finish;
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars("1");
    end
endmodule
    
  
  
  
  
  
  
  
  