
/*module tb;
  wire o;
  reg p,q,r;
  
  mux_2x1  mux_2x1_inst(.y(o),.i0(p),.i1(q),.s(r));
  initial 
    begin
      $monitor("t=%0t, p=%b, q=%b ,r=%b,y=%b",$time,p,q,r,o);
    #5 r=0;p=0;q=0;    
    #5 p=1;q=0;
    #5 r=1; p=0;q=0;
    #5 p=1;q=1;
   end
   initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
endmodule 
  */

module tb;
  wire y;
  reg s,i0,i1;
  
  mux_2x1 mux_2x1_inst(.s(s),.i0(i0),.i1(i1),.y(y));
  initial
    begin
      $monitor("t=%0t, s=%b, i0=%b, i1=%b, y=%b", $time, s,i0,i1,y);
      #5 s=0; i0=1; 
      #5 s=1; i1=0;
      #5 s=1; i1=1;
    end
  
endmodule 
  
  
  
  
  
  
  

