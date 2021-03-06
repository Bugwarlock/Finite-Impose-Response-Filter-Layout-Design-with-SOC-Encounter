module sat(A_0_0, A_0_1, A_0_2, A_1_0, A_1_1, A_1_2, A_2_0, A_2_1, A_2_2, 
           B_0_0, B_0_1, B_0_2, B_1_0, B_1_1, B_1_2, B_2_0, B_2_1, B_2_2, 
           S_0_0, S_0_1, S_0_2, S_1_0, S_1_1, S_1_2, S_2_0, S_2_1, S_2_2, 
           V_0_0_1, V_0_0_2, V_0_0_3, V_0_0_4, V_0_0_5, V_0_1_1, V_0_1_2, V_0_1_3, V_0_1_4, V_0_1_5, V_0_2_1, V_0_2_2, V_0_2_3, V_0_2_4, V_0_2_5, V_1_0_1, V_1_0_2, V_1_0_3, V_1_0_4, V_1_0_5, V_1_1_1, V_1_1_2, V_1_1_3, V_1_1_4, V_1_1_5, V_1_2_1, V_1_2_2, V_1_2_3, V_1_2_4, V_1_2_5, V_2_0_1, V_2_0_2, V_2_0_3, V_2_0_4, V_2_0_5, V_2_1_1, V_2_1_2, V_2_1_3, V_2_1_4, V_2_1_5, V_2_2_1, V_2_2_2, V_2_2_3, V_2_2_4, V_2_2_5, 
           Q_0_0, Q_0_1, Q_0_2, Q_1_0, Q_1_1, Q_1_2, Q_2_0, Q_2_1, Q_2_2, 
           sel_0_1, sel_0_2, sel_0_3, sel_0_4, sel_0_5, sel_1_1, sel_1_2, sel_1_3, sel_1_4, sel_1_5, sel_2_1, sel_2_2, sel_2_3, sel_2_4, sel_2_5, 
          Cin_0, Cout_0, Dout_0, Cin_1, Cout_1, Dout_1, Cin_2, Cout_2, Dout_2, sel_Cout);

   input A_0_0, A_0_1, A_0_2, A_1_0, A_1_1, A_1_2, A_2_0, A_2_1, A_2_2;
   input B_0_0, B_0_1, B_0_2, B_1_0, B_1_1, B_1_2, B_2_0, B_2_1, B_2_2;
   output S_0_0, S_0_1, S_0_2, S_1_0, S_1_1, S_1_2, S_2_0, S_2_1, S_2_2;
   input Cin_0, Cin_1, Cin_2;
   output Cout_0, Cout_1, Cout_2;
   wire W_0_0_1_m, W_0_0_1, W_0_0_2_m, W_0_0_2, W_0_0_3_m, W_0_0_3, W_0_0_4_m, W_0_0_4, W_0_1_1_m, W_0_1_1, W_0_1_2_m, W_0_1_2, W_0_1_3_m, W_0_1_3, W_0_1_4_m, W_0_1_4, W_0_2_1_m, W_0_2_1, W_0_2_2_m, W_0_2_2, W_0_2_3_m, W_0_2_3, W_0_2_4_m, W_0_2_4, W_1_0_1_m, W_1_0_1, W_1_0_2_m, W_1_0_2, W_1_0_3_m, W_1_0_3, W_1_0_4_m, W_1_0_4, W_1_1_1_m, W_1_1_1, W_1_1_2_m, W_1_1_2, W_1_1_3_m, W_1_1_3, W_1_1_4_m, W_1_1_4, W_1_2_1_m, W_1_2_1, W_1_2_2_m, W_1_2_2, W_1_2_3_m, W_1_2_3, W_1_2_4_m, W_1_2_4, W_2_0_1_m, W_2_0_1, W_2_0_2_m, W_2_0_2, W_2_0_3_m, W_2_0_3, W_2_0_4_m, W_2_0_4, W_2_1_1_m, W_2_1_1, W_2_1_2_m, W_2_1_2, W_2_1_3_m, W_2_1_3, W_2_1_4_m, W_2_1_4, W_2_2_1_m, W_2_2_1, W_2_2_2_m, W_2_2_2, W_2_2_3_m, W_2_2_3, W_2_2_4_m, W_2_2_4; 
   input V_0_0_1, V_0_0_2, V_0_0_3, V_0_0_4, V_0_0_5, V_0_1_1, V_0_1_2, V_0_1_3, V_0_1_4, V_0_1_5, V_0_2_1, V_0_2_2, V_0_2_3, V_0_2_4, V_0_2_5, V_1_0_1, V_1_0_2, V_1_0_3, V_1_0_4, V_1_0_5, V_1_1_1, V_1_1_2, V_1_1_3, V_1_1_4, V_1_1_5, V_1_2_1, V_1_2_2, V_1_2_3, V_1_2_4, V_1_2_5, V_2_0_1, V_2_0_2, V_2_0_3, V_2_0_4, V_2_0_5, V_2_1_1, V_2_1_2, V_2_1_3, V_2_1_4, V_2_1_5, V_2_2_1, V_2_2_2, V_2_2_3, V_2_2_4, V_2_2_5;
   wire S_0_0_m, S_0_1_m, S_0_2_m, S_1_0_m, S_1_1_m, S_1_2_m, S_2_0_m, S_2_1_m, S_2_2_m;
   input Q_0_0, Q_0_1, Q_0_2, Q_1_0, Q_1_1, Q_1_2, Q_2_0, Q_2_1, Q_2_2;
   input sel_0_1, sel_0_2, sel_0_3, sel_0_4, sel_0_5, sel_1_1, sel_1_2, sel_1_3, sel_1_4, sel_1_5, sel_2_1, sel_2_2, sel_2_3, sel_2_4, sel_2_5;
   input Dout_0, Dout_1, Dout_2;
   wire Cout_0_m, Cout_1_m, Cout_2_m;
   input sel_Cout;
   GTECH_XOR2 u_0_0_1 (.A(A_0_0), .B(B_0_0), .Z(W_0_0_1_m));
   GTECH_MUX2 m_0_0_1 (.A(W_0_0_1_m), .B(V_0_0_1), .S(sel_0_1), .Z(W_0_0_1));
   GTECH_XOR2 u_0_1_1 (.A(A_0_1), .B(B_0_1), .Z(W_0_1_1_m));
   GTECH_MUX2 m_0_1_1 (.A(W_0_1_1_m), .B(V_0_1_1), .S(sel_1_1), .Z(W_0_1_1));
   GTECH_XOR2 u_0_2_1 (.A(A_0_2), .B(B_0_2), .Z(W_0_2_1_m));
   GTECH_MUX2 m_0_2_1 (.A(W_0_2_1_m), .B(V_0_2_1), .S(sel_2_1), .Z(W_0_2_1));
   GTECH_XOR2 u_1_0_1 (.A(A_1_0), .B(B_1_0), .Z(W_1_0_1_m));
   GTECH_MUX2 m_1_0_1 (.A(W_1_0_1_m), .B(V_1_0_1), .S(sel_0_1), .Z(W_1_0_1));
   GTECH_XOR2 u_1_1_1 (.A(A_1_1), .B(B_1_1), .Z(W_1_1_1_m));
   GTECH_MUX2 m_1_1_1 (.A(W_1_1_1_m), .B(V_1_1_1), .S(sel_1_1), .Z(W_1_1_1));
   GTECH_XOR2 u_1_2_1 (.A(A_1_2), .B(B_1_2), .Z(W_1_2_1_m));
   GTECH_MUX2 m_1_2_1 (.A(W_1_2_1_m), .B(V_1_2_1), .S(sel_2_1), .Z(W_1_2_1));
   GTECH_XOR2 u_2_0_1 (.A(A_2_0), .B(B_2_0), .Z(W_2_0_1_m));
   GTECH_MUX2 m_2_0_1 (.A(W_2_0_1_m), .B(V_2_0_1), .S(sel_0_1), .Z(W_2_0_1));
   GTECH_XOR2 u_2_1_1 (.A(A_2_1), .B(B_2_1), .Z(W_2_1_1_m));
   GTECH_MUX2 m_2_1_1 (.A(W_2_1_1_m), .B(V_2_1_1), .S(sel_1_1), .Z(W_2_1_1));
   GTECH_XOR2 u_2_2_1 (.A(A_2_2), .B(B_2_2), .Z(W_2_2_1_m));
   GTECH_MUX2 m_2_2_1 (.A(W_2_2_1_m), .B(V_2_2_1), .S(sel_2_1), .Z(W_2_2_1));
   GTECH_AND2 u_0_0_2 (.A(A_0_0), .B(B_0_0), .Z(W_0_0_2_m));
   GTECH_MUX2 m_0_0_2 (.A(W_0_0_2_m), .B(V_0_0_2), .S(sel_0_2), .Z(W_0_0_2));
   GTECH_AND2 u_0_1_2 (.A(A_0_1), .B(B_0_1), .Z(W_0_1_2_m));
   GTECH_MUX2 m_0_1_2 (.A(W_0_1_2_m), .B(V_0_1_2), .S(sel_1_2), .Z(W_0_1_2));
   GTECH_AND2 u_0_2_2 (.A(A_0_2), .B(B_0_2), .Z(W_0_2_2_m));
   GTECH_MUX2 m_0_2_2 (.A(W_0_2_2_m), .B(V_0_2_2), .S(sel_2_2), .Z(W_0_2_2));
   GTECH_AND2 u_1_0_2 (.A(A_1_0), .B(B_1_0), .Z(W_1_0_2_m));
   GTECH_MUX2 m_1_0_2 (.A(W_1_0_2_m), .B(V_1_0_2), .S(sel_0_2), .Z(W_1_0_2));
   GTECH_AND2 u_1_1_2 (.A(A_1_1), .B(B_1_1), .Z(W_1_1_2_m));
   GTECH_MUX2 m_1_1_2 (.A(W_1_1_2_m), .B(V_1_1_2), .S(sel_1_2), .Z(W_1_1_2));
   GTECH_AND2 u_1_2_2 (.A(A_1_2), .B(B_1_2), .Z(W_1_2_2_m));
   GTECH_MUX2 m_1_2_2 (.A(W_1_2_2_m), .B(V_1_2_2), .S(sel_2_2), .Z(W_1_2_2));
   GTECH_AND2 u_2_0_2 (.A(A_2_0), .B(B_2_0), .Z(W_2_0_2_m));
   GTECH_MUX2 m_2_0_2 (.A(W_2_0_2_m), .B(V_2_0_2), .S(sel_0_2), .Z(W_2_0_2));
   GTECH_AND2 u_2_1_2 (.A(A_2_1), .B(B_2_1), .Z(W_2_1_2_m));
   GTECH_MUX2 m_2_1_2 (.A(W_2_1_2_m), .B(V_2_1_2), .S(sel_1_2), .Z(W_2_1_2));
   GTECH_AND2 u_2_2_2 (.A(A_2_2), .B(B_2_2), .Z(W_2_2_2_m));
   GTECH_MUX2 m_2_2_2 (.A(W_2_2_2_m), .B(V_2_2_2), .S(sel_2_2), .Z(W_2_2_2));
   GTECH_AND2 u_0_0_3 (.A(W_0_0_1), .B(Cin_0), .Z(W_0_0_3_m));
   GTECH_MUX2 m_0_0_3 (.A(W_0_0_3_m), .B(V_0_0_3), .S(sel_0_3), .Z(W_0_0_3));
   GTECH_AND2 u_0_1_3 (.A(W_0_1_1), .B(W_0_1_4), .Z(W_0_1_3_m));
   GTECH_MUX2 m_0_1_3 (.A(W_0_1_3_m), .B(V_0_1_3), .S(sel_1_3), .Z(W_0_1_3));
   GTECH_AND2 u_0_2_3 (.A(W_0_2_1), .B(W_0_2_4), .Z(W_0_2_3_m));
   GTECH_MUX2 m_0_2_3 (.A(W_0_2_3_m), .B(V_0_2_3), .S(sel_2_3), .Z(W_0_2_3));
   GTECH_AND2 u_1_0_3 (.A(W_1_0_1), .B(Cin_1), .Z(W_1_0_3_m));
   GTECH_MUX2 m_1_0_3 (.A(W_1_0_3_m), .B(V_1_0_3), .S(sel_0_3), .Z(W_1_0_3));
   GTECH_AND2 u_1_1_3 (.A(W_1_1_1), .B(W_1_1_4), .Z(W_1_1_3_m));
   GTECH_MUX2 m_1_1_3 (.A(W_1_1_3_m), .B(V_1_1_3), .S(sel_1_3), .Z(W_1_1_3));
   GTECH_AND2 u_1_2_3 (.A(W_1_2_1), .B(W_1_2_4), .Z(W_1_2_3_m));
   GTECH_MUX2 m_1_2_3 (.A(W_1_2_3_m), .B(V_1_2_3), .S(sel_2_3), .Z(W_1_2_3));
   GTECH_AND2 u_2_0_3 (.A(W_2_0_1), .B(Cin_2), .Z(W_2_0_3_m));
   GTECH_MUX2 m_2_0_3 (.A(W_2_0_3_m), .B(V_2_0_3), .S(sel_0_3), .Z(W_2_0_3));
   GTECH_AND2 u_2_1_3 (.A(W_2_1_1), .B(W_2_1_4), .Z(W_2_1_3_m));
   GTECH_MUX2 m_2_1_3 (.A(W_2_1_3_m), .B(V_2_1_3), .S(sel_1_3), .Z(W_2_1_3));
   GTECH_AND2 u_2_2_3 (.A(W_2_2_1), .B(W_2_2_4), .Z(W_2_2_3_m));
   GTECH_MUX2 m_2_2_3 (.A(W_2_2_3_m), .B(V_2_2_3), .S(sel_2_3), .Z(W_2_2_3));
   GTECH_XOR2 u_0_0_4 (.A(Cin_0), .B(W_0_0_1), .Z(S_0_0_m));
   GTECH_MUX2 m_0_0_4 (.A(S_0_0_m), .B(Q_0_0), .S(sel_0_4), .Z(S_0_0));
   GTECH_XOR2 u_0_1_4 (.A(W_0_1_4), .B(W_0_1_1), .Z(S_0_1_m));
   GTECH_MUX2 m_0_1_4 (.A(S_0_1_m), .B(Q_0_1), .S(sel_1_4), .Z(S_0_1));
   GTECH_XOR2 u_0_2_4 (.A(W_0_2_4), .B(W_0_2_1), .Z(S_0_2_m));
   GTECH_MUX2 m_0_2_4 (.A(S_0_2_m), .B(Q_0_2), .S(sel_2_4), .Z(S_0_2));
   GTECH_XOR2 u_1_0_4 (.A(Cin_1), .B(W_1_0_1), .Z(S_1_0_m));
   GTECH_MUX2 m_1_0_4 (.A(S_1_0_m), .B(Q_1_0), .S(sel_0_4), .Z(S_1_0));
   GTECH_XOR2 u_1_1_4 (.A(W_1_1_4), .B(W_1_1_1), .Z(S_1_1_m));
   GTECH_MUX2 m_1_1_4 (.A(S_1_1_m), .B(Q_1_1), .S(sel_1_4), .Z(S_1_1));
   GTECH_XOR2 u_1_2_4 (.A(W_1_2_4), .B(W_1_2_1), .Z(S_1_2_m));
   GTECH_MUX2 m_1_2_4 (.A(S_1_2_m), .B(Q_1_2), .S(sel_2_4), .Z(S_1_2));
   GTECH_XOR2 u_2_0_4 (.A(Cin_2), .B(W_2_0_1), .Z(S_2_0_m));
   GTECH_MUX2 m_2_0_4 (.A(S_2_0_m), .B(Q_2_0), .S(sel_0_4), .Z(S_2_0));
   GTECH_XOR2 u_2_1_4 (.A(W_2_1_4), .B(W_2_1_1), .Z(S_2_1_m));
   GTECH_MUX2 m_2_1_4 (.A(S_2_1_m), .B(Q_2_1), .S(sel_1_4), .Z(S_2_1));
   GTECH_XOR2 u_2_2_4 (.A(W_2_2_4), .B(W_2_2_1), .Z(S_2_2_m));
   GTECH_MUX2 m_2_2_4 (.A(S_2_2_m), .B(Q_2_2), .S(sel_2_4), .Z(S_2_2));
   GTECH_AND2 u_0_0_5 (.A(W_0_0_2), .B(W_0_0_3), .Z(W_0_1_4_m));
   GTECH_MUX2 m_0_0_5 (.A(W_0_1_4_m), .B(V_0_1_4), .S(sel_0_5), .Z(W_0_1_4));
   GTECH_AND2 u_0_1_5 (.A(W_0_1_2), .B(W_0_1_3), .Z(W_0_2_4_m));
   GTECH_MUX2 m_0_1_5 (.A(W_0_2_4_m), .B(V_0_2_4), .S(sel_1_5), .Z(W_0_2_4));
   GTECH_AND2 u_0_2_5 (.A(W_0_2_2), .B(W_0_2_3), .Z(Cout_0_m));
   GTECH_MUX2 m_0_2_5 (.A(Cout_0_m), .B(Dout_0), .S(sel_Cout), .Z(Cout_0));
   GTECH_AND2 u_1_0_5 (.A(W_1_0_2), .B(W_1_0_3), .Z(W_1_1_4_m));
   GTECH_MUX2 m_1_0_5 (.A(W_1_1_4_m), .B(V_1_1_4), .S(sel_0_5), .Z(W_1_1_4));
   GTECH_AND2 u_1_1_5 (.A(W_1_1_2), .B(W_1_1_3), .Z(W_1_2_4_m));
   GTECH_MUX2 m_1_1_5 (.A(W_1_2_4_m), .B(V_1_2_4), .S(sel_1_5), .Z(W_1_2_4));
   GTECH_AND2 u_1_2_5 (.A(W_1_2_2), .B(W_1_2_3), .Z(Cout_1_m));
   GTECH_MUX2 m_1_2_5 (.A(Cout_1_m), .B(Dout_1), .S(sel_Cout), .Z(Cout_1));
   GTECH_AND2 u_2_0_5 (.A(W_2_0_2), .B(W_2_0_3), .Z(W_2_1_4_m));
   GTECH_MUX2 m_2_0_5 (.A(W_2_1_4_m), .B(V_2_1_4), .S(sel_0_5), .Z(W_2_1_4));
   GTECH_AND2 u_2_1_5 (.A(W_2_1_2), .B(W_2_1_3), .Z(W_2_2_4_m));
   GTECH_MUX2 m_2_1_5 (.A(W_2_2_4_m), .B(V_2_2_4), .S(sel_1_5), .Z(W_2_2_4));
   GTECH_AND2 u_2_2_5 (.A(W_2_2_2), .B(W_2_2_3), .Z(Cout_2_m));
   GTECH_MUX2 m_2_2_5 (.A(Cout_2_m), .B(Dout_2), .S(sel_Cout), .Z(Cout_2));
endmodule
