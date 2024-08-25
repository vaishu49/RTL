// Code your testbench here
// or browse Examples
module tb();
  
 wire y0,y1,y2,y3;
  reg i0,i1;
  
  deco_2x4 deco_2x4_inst(.i0(i0),.i1(i1),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
  initial 
    begin
      $monitor("t=%0t,i0=%b, i1=%b, y0=%b, y1=%b, y2=%b, y3=%b",$time,i0,i1,y0,y1,y2,y3);
      #5 i0=0; i1=0;
      #5 i0=0; i1=1;
      #5 i0=1; i1=0;
      #5 i0=1; i1=1;
    end
  initial
    begin
      $dumpfile("dump.vcd");
        $dumpvars(1);
        end
        endmodule
        
      
      
      
    