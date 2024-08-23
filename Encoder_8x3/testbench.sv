// Code your testbench here
// or browse Examples
module tb();
 wire y0,y1,y2;
 reg  i0,i1,i2,i3,i4,i5,i6,i7;
  
  enc_8x3  enc_8x3_inst(.y0(y0),.y1(y1),.y2(y2),.i0(i0),.i1(i1),.i2(i2),.i3(i3),.i4(i4),.i5(i5),.i6(i6),.i7(i7));
  initial
  begin 
  $monitor("t=%0t,i0=%b, i1=%b, i2=%b, i3=%b, i4=%b, i5=%b, i6=%b, i7=%b, y0=%b, y1=%b, y2=%b", $time,i0,i1,i2,i3,i4,i5,i6,i7,y0,y1,y2);
    
    #5 i7=0; i6=0; i5=0; i4=0; i3=0; i2=0; i1=0; i0=1;
    #5 i7=0; i6=0; i5=0; i4=0; i3=0; i2=0; i1=1; i0=0;
    #5 i7=0; i6=0; i5=0; i4=0; i3=0; i2=1; i1=0; i0=1;
    #5 i7=0; i6=0; i5=0; i4=0; i3=1; i2=0; i1=0; i0=1;
    
    #5 i7=0; i6=0; i5=0; i4=1; i3=0; i2=0; i1=0; i0=0;
    #5 i7=0; i6=0; i5=1; i4=0; i3=0; i2=0; i1=0; i0=0;
    #5 i7=0; i6=1; i5=0; i4=0; i3=0; i2=0; i1=0; i0=0;
    #5 i7=1; i6=0; i5=0; i4=0; i3=0; i2=0; i1=0; i0=0;
    
  end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
endmodule
  
  
              
              
              
             