t = 0:0.01:2*pi;
s = sin(t);
f = 3*s-4*s.^3;
g = 1-8*s.^2+8*s.^4;
h = 5*s-20*s.^3+16*s.^5;

%% for å plotte
%% plot(t,s,'r')  (for farge)