module tb ();
  
  wire sum,cout;
  reg A,B,Cin;
  
ha halfadder(sum,cout,A,B);
  initial
    begin
      repeat(10)
        begin
          {A,B} =$random;
          #2;
          $display (A,B,":",sum,cout);
         
        end
    end
endmodule