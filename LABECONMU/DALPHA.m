% Compute off diaginal of H matrix
function RESULT = DALPHA(X0,Y0,X1,Y1,X2,Y2)
    DY1 = Y1-Y0;
    DX1 = X1-X0;
    DY2 = Y2-Y0;
    DX2 = X2-X0;

    DL1 = sqrt(DX1^2 + DY1^2);
    COS1 = DX1/DL1;
    SIN1 = DY1/DL1;
    DX2R = DX2*COS1 + DY2*SIN1;
    DY2R = -DX2*SIN1 + DY2*COS1;
    DA = atan2(DY2R,DX2R);
    RESULT = DA/(2*pi);
end


