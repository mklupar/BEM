% Solve LaPlace Equation with constant boundary elements
clear;clc;

[XL,YL,XIN,YIN,INDEX,UB,N,IN] = INPUT_ELLIPSE();
[G,XM,YM] =  GMATR(XL, YL, N);
H = HMATR(XL,YL,N);
[A, UNB] = ABMATR(G,H,UB,INDEX);
[UNB] = SOLVEQ(A,UNB,N);
[UB, UNB] = REORDER(UB, UNB, INDEX); 
UIN = UINTER(XL,YL,XIN,YIN,UB,UNB,IN,N);
OUTPUT(XM, YM, UB, UNB, XIN, YIN, UIN, N, IN);
