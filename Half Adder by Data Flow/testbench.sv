// Code your testbench here
// or browse Examples
module tb;
  reg ain,bin;
  wire s,c ;
  
  
  half_adder half_adder_inst(.sum(s),.carry(c),.a(ain),.b(bin));
  
  initial 
    begin
      $monitor("t =%0t , ain=%b, bin=%b, s =%b, c=%b", $time,ain,bin,s,c);
      #5 ain = 0; bin = 0;
      #5 ain = 0; bin = 1;
      #5 ain = 1; bin = 0;
      #5 ain = 1; bin = 1;
    end
  
endmodule