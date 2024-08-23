// Code your testbench here
// or browse Examples
module tb();
  wire y0,y1;
  reg i0,i1,i2,i3;
  
  enc_4x2 enc_4x2_inst(.y0(y0),.y1(y1),.i0(i0),.i1(i1),.i2(i2),.i3(i3));
  initial 
   begin
     $monitor("t=%0t, i0=%b, i1=%b, i2=%b, i3=%b, y1=%b, y0=%b",$time,i0,i1,i2,i3,y1,y0);
     #5 i0=1; i1=0; i2=0; i3=0; 
     #5 i0=0; i1=1; i2=0; i3=0; 
     #5 i0=0; i1=0; i2=1; i3=0; 
     #5 i0=0; i1=0; i2=0; i3=1;
   end
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
 
  
endmodule

