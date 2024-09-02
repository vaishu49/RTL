// Code your design here
module ri_counter( 
  
  input clk, reset,
  output reg [3:0] count,
  integer i); 
  
  always@(posedge clk)
    if(reset)
      count <= 4'b0001;
  else 
    begin
      count[3] <= count[0];
      
      for(i=0; i<=3; i++)
        count[i]= count[i+1];
    end
  
  endmodule
  

//   count<={count[3],count[0:2]};

  //q <= (q << 1) | q[0]; // Shift left and bring the rightmost bit to the left

// count <= {count[0],count[N-1:1]};         

 /*count[3] <= count[0];
      
      for(i=0; i<=3; i++)
        count[i]= count[i+1];*/