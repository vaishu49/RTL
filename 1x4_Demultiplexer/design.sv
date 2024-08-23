// Code your design here
module demux_1x4 (y0,y1,y2,y3,s1,s0,i);
 output y0,y1,y2,y3;
  input s1,s0,i;
  
  assign y0 = ~s1 & ~s0 & i;
  assign y1 = ~s1 & s0 & i;
  assign y2 = s1 & ~s0 & i;
  assign y3 = s1 & s0 & i;
  
endmodule 
