module mul3 (Y,A,B);
  input [2:0] A,B;
  output [5:0] Y;
  
  wire [5:0]Y;
  wire P00,P01,P02,P10,P11,P12,P20,P21,P22;
  
  and G00 (Y[0], A[0],B[0]);
  and G01 (P01, A[0],B[1]);
  and G02 (P02, A[0],B[2]);
  
  and G10 (P10, A[1],B[0]);
  and G11 (P11, A[1],B[1]);
  and G12 (P12, A[1],B[2]);
  
  and G20 (P20, A[2],B[0]);
  and G21 (P21, A[2],B[1]);
  and G22 (P22, A[2],B[2]); 

  ha Task1 (c0,Y[1],P10,P01);
  xfa Task2 (c2,c1,Y[2],P20,P11,P02,c0);
  fa Task3 (c3,Y[3],P21,P12,c1);
  fa Task4 (Y[5],Y[4],P22,c2,c3);

assign Y= A * B;
  
  endmodule