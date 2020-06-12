A = [1 2 5; -1 1 -4; -1 4 -3; 1 -4 7; 1 2 1];

c1 = A(:,1);
c2 = A(:,2);
c3 = A(:,3);

v1 = c1;
v2 = c2 - dot(v1,c2)/dot(v1,v1) * v1;
v3 = c3 - dot(v1,c3)/dot(v1,v1) * v1 - dot(v2,c3)/dot(v2,v2) * v2;

% nå er v1,v2,v3 ortogonal basis for Col A.

u1 = v1/norm(v1);
u2 = v2/norm(v2);
u3 = v3/norm(v3);

% nå er u1, u2, u3 en ortonormal basis for A

Q = [u1 u2 u3];
R = Q' * A;

% sjekk at Q*R = A:

Q*R