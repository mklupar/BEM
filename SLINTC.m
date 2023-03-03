% Computes the diaginal elements of the G matrix
function RESULT = SLINTC(X1,Y1,X2,Y2)
    AX = (X2-X1)/2;
    AY = (Y2-Y1)/2;
    SL = sqrt(AX^2 + AY^2);
    RESULT = SL*(log(SL)-1)/pi;
end
