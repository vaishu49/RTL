// Code your design here
/*module mux_4x1(input i0,i1,i2,i3,reset,clk,
           output reg y,
               //output out,
           input s1,s0
  
);
  //assign out = y;
  always@(posedge clk)
    begin
    if (reset)
      y <=0;
  else if(s1==0 && s0==0)
    y<=i0;
  else if(s1==0  && s0==1)
    y<=i1;
    else if(s1==1 && s0==0)
      y<=i2;
    //  else (s1==1 && s0==1)
      else
        y<=i3;
     // else y<=0;
    end
  
  
endmodule*/


module mux_4x1(input i0,i1,i2,i3,reset,clk,
           output reg y,
            input s1,s0
 
);
  
  always@(s1,s0,i0,i1,i2,i3)
    begin
      
      case  ({s1,s0})
        2'b00 : y = i0;
        2'b01 : y = i1;
        2'b10 : y = i2;
        2'b11 : y = i3;
        default : $display("Invalid control signals");
      endcase
    end
      endmodule 