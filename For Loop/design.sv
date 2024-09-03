// Code your design here
/*module cou();
  
  integer count;
  
  initial begin
    for(count=0; count < 15; count = count+1)
      $display("count = %0d",count);
  end
endmodule */



`define MAX_STATES 32
module arr_elements();
  
  integer state[0:`MAX_STATES-1];
  
  integer i;
  
  initial
    begin
      for(i=0; i<32;i=i+2)
        begin
          state[i] = 0;
          $display("initialize all even  locations with zero i= %0d, state[%0d]=%0d",i, i,state[i]);
        end
      for(i=1; i<32; i=i+2)
        begin
          state[i] =1;
          $display("initialize all odd locations with zero i= %0d, state[%0d]= %0d",i,i, state[i]);
        end
          end
          
  initial
    $finish();
endmodule
     
          
          
  
  
  
  
  
  
  
  
  
  
  
  
  

  
  
