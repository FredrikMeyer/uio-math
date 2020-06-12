x = [0 2 4 6 8 10];               % tid målt
y = [0 2.90 14.8 39.6 74.3 119];  % verdi ved tid t

% lager matrisen
M = eye(6);
for i=0:5
    for j=0:5
        M(i+1,j+1) = (2*i)^j;
    end
end

% løser lignigssystemet
a = M \ transpose(y);   %% Løser likn Ma=y
p = @(t) dot(a,[1,t,t^2,t^3,t^4,t^5]);

% nå er p(t) et polynom som passer med
% de seks datapunktene

s = polyfit(x,y,3);
q = @(t) dot(s,[t^3,t^2,t^1,1]);