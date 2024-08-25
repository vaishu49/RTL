// Code your testbench here
// or browse Examples
module tb;
  
  reg J,K,reset; 
  reg clk = 0;
  wire q,qbar;
  
  JKFF uut (.q(q),.qbar(qbar),.reset(reset),.clk(clk),.J(J),.K(K));
  
  always
    #10 clk = ~clk;
  
  initial 
    begin
     
      $monitor("t=%0t, clk=%b, q=%b, qbar=%b, reset=%b, J=%b, K=%b",$time,clk, q, qbar,reset,J,K);
      #10 reset=1;
      #10  reset=0;J=1; K=0; 
      #10 reset=0; J=1; K=1;
      #10 reset=1; J=0; K=0;
      #10  reset=0;J=1; K=0;
      #10  reset=0;J=1; K=0;
      
    end
 
  initial
    begin
    $dumpfile("file.vcd");
     $dumpvars("1");
    end
  
  initial
    #150 $finish();
      
  
endmodule
  
      