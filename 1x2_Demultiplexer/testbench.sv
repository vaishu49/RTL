// Code your testbench here
// or browse Examples
module tb;
  reg s,i;
  wire y0,y1;
  
  demux_1x2 demux_1x2_inst(.y0(y0),.y1(y1),.s(s),.i(i));
  initial 
  begin 
    $monitor("t=%0t,i=%b, s=%b, y0=%b, y1=%b", $time, i, s,y0,y1);
    
      #5 i=1; s=0;
      #5 i=0;s=1;
      #5 i=1; s=1;
      #5 i=0;s=0;
  end
       
   initial
    begin 
      $dumpfile("dump.vcd");
      $dumpvars(1);
      end
    
    endmodule


