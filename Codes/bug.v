module bug(A,B,Cin,S,Cout);

input A,B,Cin;
output S,Cout;

wire W1, W2, W3;



GTECH_XOR2 u1 (.A(A),.B(B),.Z(W1));
GTECH_AND2 u2 (.A(A),.B(B),.Z(W2));
GTECH_AND2 u3 (.A(W1),.B(Cin),.Z(W3));
GTECH_XOR2 u4 (.A(Cin),.B(W1),.Z(S));
GTECH_AND2 u5 (.A(W2),.B(W3),.Z(Cout));




endmodule
