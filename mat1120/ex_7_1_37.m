A = [5 2 9 -6; 2 5 -6 9; 9 -6 5 2; -6 9 2 5];

D = eigs(A);

B1 = A - D(1)*eye(4);

% kommandoen null(B) regner ut basis
% for nullrommet

v1 = null(B1);
u1 = v1/norm(v1);

B2 = A - D(2)*eye(4);
v2 = null(B2);
u2 = v2/norm(v2);

B3 = A - D(3)*eye(4);
v3 = null(B3);
u3 = v3/norm(v3);

B4 = A - D(4)*eye(4);
v4 = null(B4);
u4 = v4/norm(v4);

P = [u1 u2 u3 u4]
D = diag(D)


