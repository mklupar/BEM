% Calculate internal points
% DOUBLE CHECK THIS 
function UIN = UINTER(XL,YL,XIN,YIN,UB,UNB,IN,N)
    
    XL(N+1) = XL(1);
    YL(N+1) = YL(1);
    UIN = zeros(1, IN);
    for k = 1:IN
        for j = 1:N 
            JP1 = j+1;
            RESH = DALPHA(XIN(k),YIN(k),XL(j),YL(j),XL(JP1),YL(JP1));
            RESG = RLINTC(XIN(k),YIN(k),XL(j),YL(j),XL(JP1),YL(JP1));
            UIN(k) = UIN(k) + RESH*UB(j) - RESG*UNB(j);
        end
    end
end
