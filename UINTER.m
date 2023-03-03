% Calculate internal points
% DOUBLE CHECK THIS 
function UIN = UINTER(XL,YL,XIN,YIN,UB,UNB,IN)
N = length(XL);
    for k = 1:IN
        UIN(k) = 0;
        for j = 1:N 
            JP1 = j+1;
            DALPHA(XIN(k),YIN(k),XL(j),YL(j),XL(JP1),YL(JP1),RESH)
            RLINTC(XIN(k),YIN(k),XL(j),YL(j),XL(JP1),YL(JP1),RESG)
            UIN(K) = UIN(K) + RESH*UB(j) - RESG*UNB(j);
        end
    end
end
