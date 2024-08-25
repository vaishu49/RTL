// Code your design here
module JKFF(q,qbar,reset,clk,J,K);
  
  input J,K,clk,reset;
  output reg q;
  output reg  qbar;
  
  
  always@(posedge clk or posedge reset)
    begin
      if(reset)
        begin
          q<=0;
          qbar<=0;
        end
      
     else if(J==0 && K==1)
        begin
        q <= 0;
       qbar <= 1;
        end
      else if(J==1 && K==0)
        begin
          q <= 1;
          qbar <= 0;
        end
      else if(J==1 && K==1)
        begin
          q <= ~q;
          qbar <= qbar;
        end 
      else if (J==0 && K==0)
        begin 
           q<= q;
          qbar <= ~q;
        end
    end
endmodule 
          