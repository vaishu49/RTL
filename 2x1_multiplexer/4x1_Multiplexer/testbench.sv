// Code your testbench here
// or browse Examples
/*module tb;
  reg i0,i1,i2,i3,s0,s1;
  wire out ;
  
  mux_4x1 mux_4x1_inst(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.out(out));
  initial begin
    $monitor("t=%0t, s0=%b, s1=%b, i0=%b, i1=%b, i2=%b, i3=%b, out=%b", $time,s0,s1,i0,i1,i2,i3,out);
    # 5 s1=0;s0=0; i0=1; i1=0; i2=0; i3=0; 
    #5 s1=0; s0=1; i1=1; i1=0; i2=1; i3=1;
    #5 s1=1; s0=0; i0=0; i1=0; i2=1; i3=0;
    #5 s1=1; s0=1;  i0=1; i1=1; i2=1; i3=0; 
  end 
   
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
endmodule*/

module tb; 
  
  reg i0,i1,i2,i3,s0,s1;
  wire y;
  
  mux_4x1 mux_4x1_inst(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.y(y));
  initial 
    begin
      $monitor("t=%0t, i0=%b, i1=%b, i2=%b, i3=%b, s0=%b, s1=%b, y=%b", $time, i0,i1,i2,i3,s1,s0,y);
    #5 s1=0;s0=0; i0=1; i1=0; i2=0; i3=0; 
    #5 s1=0; s0=1; i1=1; i1=0; i2=1; i3=1;
    #5 s1=1; s0=0; i0=0; i1=0; i2=1; i3=0;
    #5 s1=1; s0=1;  i0=1; i1=1; i2=1; i3=0; 
  end 
  endmodule 