M = [-6 8 -9; 4 -3 5; -9 7 -8; 4 -3 3];  % basismatrisen
x = [4; 7; -8; 3];   % x
C = [M x]; % utvida matrise

% leuser ligningssystemet

rref(C)