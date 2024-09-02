// Code your testbench here
// or browse Examples
module tb;
  reg  reset;
  reg [1:0] mode;
  reg [3:0] d_in;
  reg clk = 0;
  wire [3:0] d_out;
  
  Univ_shift uut(.clk(clk),.reset(reset),.mode(mode),.d_in(d_in),.d_out(d_out));
  
  always 
    #5 clk = ~clk;
  
  initial
    begin
    $monitor("t=%0t, reset=%b, mode=%b, d_in=%b, d_out=%b", $time, reset, mode, d_in, d_out);
      #5 reset= 1'b1;
      #10 reset = 1'b0;
      #10 d_in = 4'b1101;
      #20 mode = 2'b10 ;
      #30 mode = 2'b01;
      #30 mode = 2'b00;
      #30 mode = 2'b11;
    end
  
  initial 
    #250 $finish;
  
 initial
  begin
    $dumpfile("file.vcd");
    $dumpvars("1");
  end
  
endmodule
    