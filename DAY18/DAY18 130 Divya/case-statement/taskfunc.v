  //TASK
  
task rapulse ;
begin
   ra=1;
   #10;
   ra=0;
   endtask
   
   //FUNCTION
   
 function pulse1;
 input [5:0] sig;
 begin 
    pulse1= sig ==59?0: (sig+1);
	end
	endfunction
