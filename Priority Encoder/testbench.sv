// Code your testbench here
// or browse Examples
module tb();
  wire y0,y1;
  reg i0,i1,i2,i3;
  
  pren pren_inst(.i3(i3),.i2(i2),.i1(i1),.i0(i0),.y1(y1),.y0(y0));
  
 initial 
   begin
     $monitor("t=%0t, i3=%b, i2=%b, i1=%b, i0=%b, y1=%b, y0=%b",$time, i3,i2,i1,i0,y1,y0);
     #5 i3=0; i2=0; i1=0; i0=1; 
     #5 i3=0; i2=0; i1=1; i0=0;
     #5 i3=0; i2=1; i1=0; i0=0;
     #5 i3=1; i2=0; i1=0; i0=0;
   end
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars("1");
    end
endmodule