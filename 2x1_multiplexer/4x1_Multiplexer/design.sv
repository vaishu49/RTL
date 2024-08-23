// Code your design here
/*module mux_4x1(out,i0,i1,i2,i3,s0,s1);
  output out;
  input i0,i1,i2,i3,s0,s1;
   wire w1,w2,w3,w4,w5,w6;
  
 
  and a1(w1,i0,w6,~s0);
  and a2(w2,i1,w6,s0);
  and a3 (w3,i2,s1,w5);
  and a4(w4,i3,s1,s0);
  not n1(w5,s0);
  not n2(w6,s1);
  or r1(out,w2,w1,w3,w4);
  
  
endmodule*/
  
 

module mux_4x1(y,i0,i1,i2,i3,s0,s1);
  output y;
  input i0,i1,i2,i3,s0,s1;
  
  assign y = s1 ? (s0? i3:i2) : (s0 ? i1:i0);
  
  //assign y = (~s1 & ~s0 & i0)|  (~s1 & s0 & i1) | (s1 & ~s0 & i2) | (s1 & s0 & i3);  
  
  

endmodule 


  
  
    
    
    
    
    
    
    
    
    
    
    
    