
%Double Check 
function OUTPUT(XM, YM, UB, UNB, XIN, YIN, UIN, N, IN)
% This function prints the results in the output file.

% Print header
fprintf(2, ' %s\n', repmat(' *',1,69));
fprintf(2, ' RESULTS\n');
fprintf(2, ' BOUNDARY NODES\n');
fprintf(2, ' X%15sY%15sU%15sUn\n', '', '', '');

% Print boundary nodes
for i = 1:N
fprintf(2, ' %10.5E%15.5E%15.5E%15.5E\n', XM(i), YM(i), UB(i), UNB(i));
end

% Print internal points
fprintf(2, '\n INTERNAL POINTS\n\n');
fprintf(2, ' X%15sY%15sSOLUTION U\n', '', '');

for k = 1:IN
fprintf(2, ' %10.5E%15.5E%15.5E\n', XIN(k), YIN(k), UIN(k));
end

% Print footer
fprintf(2, '\n %s\n', repmat(' *',1,69));
end