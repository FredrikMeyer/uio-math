A = [-6 -3 6 1; -1 2 1 -6; 3 6 3 -2; 6 -3 6 -1; 2 -1 2 3; -3 6 3 2; -2 -1 2 -3; 1 2 1 6];

% A' * A == 100*id_4, så søylene er ortogonale

U = (1/10) * A;

% U*U'
% U'*U

% begge er kvadratiske, men ene er 4x4 og andre er 8x8.

%tilfeldig vektor i R^8:

y = rand(8,1);

p = U* U' * y;
z = y - p;

% regn ut dot(p,z). Denne blir tilnærmet null!

