module  tb ();
  
  wire sum,cout;
  reg A,B,Cin;
  
fa fulladder(sum,cout,A,B,Cin);
  initial
    begin
      repeat(10)
        begin
          {A,B,Cin} =$random;
          #2;
          $display (A,B,Cin,":",sum,cout);
          
        end
    end
endmodule