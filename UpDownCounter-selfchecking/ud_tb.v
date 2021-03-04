// Code your testbench here
// or browse Examples
module tb1;
	// Inputs
	reg A0,A1,clk,rst,nrd,ncs,nwr,start;
	
	reg [7:0]temp,temp1,temp2,temp3;

	// Bidirs
	wire [7:0] din;
	wire dir,ec,err;
	wire [7:0]cout;
	
	reg [7:0]inc_cc1;
	reg [7:0] ccr1;
	reg [7:0] cout1;
	reg ec1;
	
	
  updowncounter dut(A0, A1,ncs,nwr,nrd,clk,rst,start,din,err,cout,dir,ec);
	
	
	initial clk=0;
	always #5 clk=!clk;
	initial #2000 $finish;
	
	
initial
begin
	rst=1;
	#10;
	start=0;
	#10;
	rst=0;
	start=0;
	

	
	ncs<=0;
	nwr<=0;
	nrd<=1;
	A0<=0;
	A1<=0;
	temp=8'd4;
	#10;
	
	A0<=1;
	A1<=0;
	temp1=8'd6;
	#10;
	
	A0<=0;
	A1<=1;
	temp2=8'd3;
	#10;
	
	
	A0<=1;
	A1<=1;
	temp3=8'd2;
	#10
	
	
	
	ncs<=0;
	nwr<=1;
	nrd<=0;
	A0<=0;
	A1<=0;
    #10;
	A0<=0;
	A1<=1;
	
	#10;
	A0<=1;
	A1<=0;
	#10;
	A0<=1;
	A1<=1;
    cout1<=temp;
  inc_cc1=0;
  ccr1<=temp3;
	start=1'b1;
	#10;
	start=0'b0;
	#10;

end
 

initial
  
begin
  
  fork
    
    cond;
	comp;
	
  join
end
task cond;
forever@(posedge clk)

  
  begin
   if(rst) cout1<=0;
    else if (ncs==1) cout1<=0;
    else
      if(start)  
  for (inc_cc1=0;inc_cc1<temp3; inc_cc1=(inc_cc1+1))
            begin
              $display($realtime,"increment cycle",":",inc_cc1);

              for (cout1=temp; cout1<(temp1+1); cout1=cout1+1)
                begin
                  $display($realtime,cout1);
				  @(posedge clk);
                end

                
                  for (cout1=temp1-1; cout1>(temp2-1);cout1= cout1-1)
                    begin
                      $display($realtime,cout1);
					  @(posedge clk);
                    end
                 
                   
              for (cout1=temp2+1; cout1<(temp); cout1=cout1+1)
                     begin
                       $display($realtime,cout1);
                       @(posedge clk);
                     end
            end  
    if (inc_cc1==ccr1)
	 ec1<=1;
	else
	 ec1<=0;
	 
               
            end
  
                      


endtask
	
	task comp;
	  forever@(negedge clk)
	    begin
	      if (cout==cout1)
            $display($realtime,":","----equal-----",cout,":",,cout1);
		  else
            $display($realtime,":","----not equal-----",cout,":",,cout1 );
         end
	endtask


assign din=(~A0)&(~A1)&(~ncs)&(~nwr)&(nrd) ? temp  : 8'dz;
assign din=A0&(~A1)&(~ncs)&(~nwr)&(nrd) ?    temp1 : 8'dz;
assign din=(~A0)&(A1)&(~ncs)&(~nwr)&(nrd) ?  temp2 : 8'dz;
assign din=(A0)&(A1)&(~ncs)&(~nwr)&(nrd) ?   temp3 : 8'dz;

	
endmodule