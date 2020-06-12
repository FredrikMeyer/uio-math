%% oppg 4.3.38

%% funksjon lager 7-vektor
f = @(t) [1, cos(t), cos(t)^2, cos(t)^3, cos(t)^4, cos(t)^5, cos(t)^6];

%% lager matrise med 7 forskjellige verdier
M = [f(0); f(1); f(2); f(3); f(4); f(5); f(6)];


rref(M)

%% faar bare pivotsøyler => alle c_i = 0!
% RIKTIG AT DET ER RADER