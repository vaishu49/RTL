// Code your testbench here
// or browse Examples
module tb;
  
  reg clk = 0;
  reg shiftR, reset,load;
  reg d_in;
  wire [3:0] d_out;
  
  bidi_shift_regis uut(.clk(clk),.reset(reset),.load(load),.shiftR(shiftR),.d_in(d_in),.d_out(d_out));
  
  always 
    #10 clk = ~clk;
  
  initial
    begin
      //$display("this is testbench signals");
//    $monitor("t=%0t, reset=%b, shiftR=%b,d_in=%b, d_out=%b", $time,reset,shiftR, d_in,d_out);
      #10 reset= 1'b1;
      #10 reset= 1'b0;
      #10 load = 1'b1;
     // #10 load = 1'b0;
       d_in = 1'b1;
      #10 d_in = 1'b1;
      #10 d_in = 1'b1;
      #10 d_in = 1'b0;
      #10 load = 1'b0;
      #50 shiftR =1'b1;
      #40 shiftR =1'b0;
      
    end
  initial
    #200 $finish;
  
  initial
    begin
      $dumpfile("file.vcd");
      $dumpvars("1");
    end
endmodule
      
      
      
      
      
  
   