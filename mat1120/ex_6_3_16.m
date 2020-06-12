y = [3; -1;1;13];
v1 = [1;-2;-1;2];
v2 = [-4;1;0;3];

yhat = dot(y,v1)/dot(v1,v1) * v1 + dot(y,v2)/dot(v2,v2) * v2;

norm(y-yhat)

