// Code your testbench here
// or browse Examples
module tb;
  reg i0,i1,i2,i3,s1,s0,reset;
  wire y;
 // wire out;
   reg clk =0;
  
  
  mux_4x1 uut(.y(y),.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s1(s1),.s0(s0),.clk(clk),.reset(reset));
 
 always
   #10 clk = ~clk;
  
  initial
    begin
    $monitor("t=%0t, i0=%b, i1=%b, i2=%b, i3=%b, s1=%b, s0=%b, y=%b", $time,i0,i1,i2,i3,s1,s0,y);
  #10 s1=0; s0=1;i0=0; i1=1; i2=0; i3=0;
  #20 s1=1; s0=1;i0=1; i1=1; i2=1; i3=0;
  #20 s1=1; s0=0; i0=0;i1=0; i2=1; i3=0;
    end
  
  initial begin
    $dumpfile("file.vcd");
    $dumpvars("1");
  end
  
  initial
    #100 $finish;
  
    
  
endmodule 

 