// Code your design here
module swap();
  
int a,b;
  
  initial begin
    a=5;b=8;
    $display("before swap values a=%0d,b=%0d ", a,b);
    a=a^b;
    b=a^b;
    a=a^b;
    $display("after swap values a=%0d,b=%0d", a,b);
  end
endmodule
    