// Code your testbench here
// or browse Examples
module tb;
  
   reg clk=0; 
    reg d,reset;
    wire q;
  
  dff inst(.d(d),.clk(clk),.reset(reset),.q(q));
  
  always 
    #10 clk = ~clk;
  
  initial 
    begin
      $monitor("t=%0t, clk=%b, reset= %b, d=%b, q=%b",$time,clk,reset,d,q);
      #10 reset=0; d=0;
      #10 reset=1; d=1;
       #10 reset=1;d=1;
       #10 reset=0;d=1;
      
      
    end 
  
  initial 
   #80 $finish();
  
  initial
    begin 
    $dumpfile("file.vcd");
     $dumpvars("1");
    end 
endmodule 
            