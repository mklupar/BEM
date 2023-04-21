% Solve LaPlace Equation with constant boundary elements
clear;clc;

[XL,YL,XIN,YIN,INDEX,UB,N,NB,NL,IN] = INPUT();
[G,H,XM,YM] =  GH_MATR(XL,YL,N,NB,NL);
[A, UNB] = ABMATR(G,H,UB,INDEX);
[UNB] = SOLVEQ(A,UNB,N);
[UB, UNB] = REORDER(UB, UNB, INDEX); 
UIN = UINTER(XL,YL,XIN,YIN,UB,UNB,IN,NB,NL);
OUTPUT(XM, YM, UB, UNB, XIN, YIN, UIN, N, IN);
