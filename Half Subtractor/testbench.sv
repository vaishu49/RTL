// Code your testbench here
// or browse Examples
/*module tb;
  
  reg ain,bin;
  wire d,b;
  
  half_sub half_sub_inst(.dif(d),.bor(b),.a(ain),.b(bin));
  intial 
  begin
    $monitor("t=%0t,  ain=%a, bin=%b, d=%diff, b=%bor", $time, ain, bin, d, b);
      #5 ain = 0; bin = 0;
      #5 ain = 0; bin = 1;
      #5 ain = 1; bin = 0;
      #5 ain = 1; bin = 1;
    end
endmodule*/


module tb;
  
  reg a,b;
  wire dif,bor;
  
  half_sub  half_sub_inst(.dif(dif),.bor(bor),.a(a),.b(b));
  initial
    begin
      
      $monitor("t=%0t,  a=%b, b=%b, dif=%b, bor=%b", $time, a,b,dif,bor);
      #5 a=0; b=0;
      #5 a=0; b=1;
      #5 a=1; b=0;
      #5 a=1; b=1;
    end
endmodule


  