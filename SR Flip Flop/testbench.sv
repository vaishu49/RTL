// Code your testbench here
// or browse Examples
module tb;
  
  reg set,reset;
  reg clk=0;
  wire q,qbar;
 
  SRFF uut(.q(q),.qbar(qbar),.set(set),.reset(reset),.clk(clk));
  
  always 
    #10 clk= ~clk;
  
  initial
   begin
     $monitor("t=%0t, clk=%b, q=%b, qbar=%b, set=%b, reset=%b", $time,clk, q, qbar,set,reset);
     #10 set =1; reset =0;
     #10 set =0; reset= 1; 
     #10 set=1; reset=0; 
     #10 set=0; reset=0;
     #10 set = 0; reset=1;
     
   end 
     initial 
     #150 $finish();
  
  
  initial 
    begin
      $dumpfile("file.vcd");
      $dumpvars("1");
    end
endmodule
      