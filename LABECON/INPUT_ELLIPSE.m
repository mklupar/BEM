% Creates ellipse
function [XL,YL,XIN,YIN,INDEX,UB,N,IN] = INPUT_ELLIPSE()
clc;clear;
N = 20;
IN = 13;

A = 5;
B = 3;
DETHETA = 2*pi/N;
for i = 1:N
    THETA = (i-1)*DETHETA;
    XL(i) = A*cos(THETA);
    YL(i) = B*sin(THETA);
end

XL(N+1) = XL(1);
YL(N+1) = YL(1);

for i = 1:N-1
    INDEX(i) = 1;
    XM = (XL(i) + XL(i+1))/2;
    YM = (YL(i) + YL(i+1))/2;
    UNB = 2.*((B*XM)^2 - (A*YM)^2) / sqrt(B^2 * (B*XM)^2 + A^2 * (A*YM)^2);
    UB(i) = UNB;
end

INDEX(N) = 0;
XM = (XL(N) + XL(N+1))/2;
YM = (YL(N) + YL(N+1))/2;

UB(end+1) = XM.^2 - YM.^2;

DA = A/2;
DB = B/2;
DTHETA = 2*pi/12;
for i = 1:12
    THETA = (i-1)*DTHETA;
    XIN(i) = DA*cos(THETA);
    YIN(i) = DB*sin(THETA);
end

XIN(IN) = 0;
YIN(IN) = 0;

end