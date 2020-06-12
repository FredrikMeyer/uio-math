% lager matrisen
A = [-25 -9 -27; 536 185 537; 154 52 143];

% lager en identitetsmatrise for a fa tak i
% enhetsvektorene

ID = eye(3);
C  = [A ID(:,2) ID(:,3)];
rref(C)

