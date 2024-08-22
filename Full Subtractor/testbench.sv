// Code your testbench here
// or browse Examples
/*module tb;
  reg ain,bin,cin;
  wire d,b;
  full_sub full_sub_inst(.a(ain),.b(bin),.c(cin),.diff(d),.bor(b));
  initial 
    begin
      $monitor("t=%0t, ain=%b, bin=%b, cin=%b, d=%b, b=%b", $time, ain,bin,cin,d,b);
     #5 ain = 0;  bin = 0; cin=0;
     #5 ain = 0;  bin = 0; cin=1;
     #5 ain = 0;  bin = 1; cin=0;
     #5 ain = 0;  bin = 1; cin=1;
     #5 ain = 1;  bin = 0; cin=0;
     #5 ain = 1;  bin = 0; cin=1;
     #5 ain = 1;  bin = 1; cin=0;
     #5 ain = 1;  bin = 1; cin=1;
  end
  
endmodule */


module tb;

  reg a,b,c;
  wire dif,bor;
  
  ful_sub ful_sub_inst(.a(a),.b(b),.c(c),.dif(dif),.bor(bor));
  initial 
    begin
      $monitor("t=%0t, a=%B,b=%b,c=%b, dif=%b,  bor=%b",$time,a,b,c,dif,bor);
      #5 a=0; b=0; c=0;
      #5 a=0; b=0; c=1;
      #5 a=0; b=1; c=0;
      #5 a=0; b=1; c=1;
      #5 a=1; b=0; c=0;
      #5 a=1; b=0; c=1;
      #5 a=1; b=1; c=0;
      #5 a=1; b=1; c=1;
    end
endmodule
      

      

      

      

      


      
      

