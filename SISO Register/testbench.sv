// Code your testbench here
// or browse Examples
module tb;
  reg clk=0;
  reg reset, data;
  wire out;
  
  SISO uut(.out(out),.data(data),.clk(clk),.reset(reset));
  
  always 
   #10 clk =  ~clk;
  
 initial 
   begin
     
     $monitor("t=%0t, clk=%b, data = %b, reset =%b, out =%b" , $time, clk, data, reset, out);
     
      #10 reset =1'b1;
     #20 reset=1'b0; 
     #20 data =1'b1;
     #20 data = 1'b0;
    #20 data = 1'b1;
     
      
   end
  
  initial 
    #200 $finish;
  
  initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars("1");
    end
  
endmodule
     
     
     
  
  