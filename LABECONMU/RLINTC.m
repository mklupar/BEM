% computes off diagonal elemts of the G matrix
function RESULT = RLINTC(X0,Y0,X1,Y1,X2,Y2)
    %Coordinates and weights of the Gauss-Legendre quadrature points
    XI = [-0.86113631, -0.33998104, 0.33998104, 0.86113631];
    WG = [0.34785485, 0.65214515, 0.65214515 ,0.34785485];
    % Midpoint and length values
    AX = (X2-X1)/2;
    AY = (Y2-Y1)/2;
    BX = (X2+X1)/2;
    BY = (Y2+Y1)/2;
    
    % Compute the line integral 
    
    RESULT = 0;
    
    for i = 1:4
        XC = AX*XI(i) + BX;
        YC = AY*XI(i) + BY;
        RA = sqrt((XC - X0)^2 + (YC - Y0)^2);
        RESULT = RESULT + log(RA) * WG(i);
    end
    SL = 2 * sqrt(AX^2 + AY^2);
    RESULT = RESULT * SL/(4 * pi);
end