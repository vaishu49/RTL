// Code your testbench here
// or browse Examples
module tb;
  reg s,i,s0,s1;
  wire y0,y1,y2,y3;
  
  demux_1x4 demux_1x4_inst(.y0(y0),.y1(y1),.y2(y2),.y3(y3),.s1(s1),.s0(s0),.i(i));
  initial
    begin
      $monitor("t=%0t, i=%b, s1=%b, s0=%b, y0=%b, y1=%b, y2=%b, y3=%b", $time, i,s1,s0,y0,y1,y2,y3);
      
      #5 i=1; s1=0; s0=0; 
      #5 i=0; s1=0; s0=1;
      #5 i=1; s1=1; s0=0;
      #5 i=0; s1=1; s0=1;
    end 
  
  initial 
    begin 
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
    endmodule
  
  