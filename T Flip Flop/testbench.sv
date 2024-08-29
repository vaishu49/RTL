// Code your testbench here
// or browse Examples
module tb;
  
  reg clk =0;
  reg reset,tin ;
  wire q;
  
  TFF uut (.q(q),.clk(clk),.reset(reset),.tin(tin));
  
  always 
    #10 clk = ~clk;
    
    
  
  initial 
    begin
      $monitor("t=%0t, q=%b, reset=%b, tin=%b", $time, q, reset,tin);
      #10 reset = 0; tin = 1;
      #10 reset =1; tin = 0;
      #10 reset = 1; tin =1;
    
      
    end
  
  initial 
    begin
      $dumpfile("file.vcd");
      $dumpvars("1");
    end
  initial
    #50 $finish();
endmodule 