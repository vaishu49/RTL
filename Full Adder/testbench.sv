// Code your testbench here
// or browse Examples
/*module tb;

  reg ain,bin,cin;
  wire s,c;
  
  full_adder full_adder_inst(.a(ain),.b(bin),.c(cin),.sum(s),.carry(c));
  initial 
  begin
    $monitor("t=%0t, ain=%b, bin=%b ,cin=%b, s=%b, c=%b ",$time,ain,bin,cin,s,c);
     #5 ain = 0;  bin = 0; cin=0;
     #5 ain = 0;  bin = 0; cin=1;
     #5 ain = 0;  bin = 1; cin=0;
     #5 ain = 0;  bin = 1; cin=1;
     #5 ain = 1;  bin = 0; cin=0;
     #5 ain = 1;  bin = 0; cin=1;
     #5 ain = 1;  bin = 1; cin=0;
     #5 ain = 1;  bin = 1; cin=1;
  end

  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
endmodule*/

module tb;
  
  reg a,b,c;
  wire sum,carry;
  
  
  ful_add ful_add_inst(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
  initial 
    begin
      
      $monitor ("t=%0t, a=%b, b=%b, c=%b, sum=%b, carry =%b", $time,a,b,c,sum,carry);
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
      