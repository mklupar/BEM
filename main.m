% Solve LaPlace Equation with constant boundary elements
clear;clc;

[XL,YL,XIN,YIN,INDEX,UB,N,IN] = INPUT();
[G] =  GMATR(XL, YL, N);
H = HMATR(XL, YL,N);
[A, UNB] = ABMATR(G,H,UB,INDEX,N);
X = SOLVEQ(A,UNB,N);
[UB, UNB] = REORDER(UB, UNB, INDEX, N); % check this line
UIN = UINTER(XL,YL,XIN,YIN,UB,UNB,IN);
OUTPUT(XM, YM, UB, UNB, XIN, YIN, UIN, N, IN)
