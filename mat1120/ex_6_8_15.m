f = @(t)  [1 t t^2 t^3]; % lager hjelpefunksjon for å lage X
X = [f(0);f(1);f(2);f(3);f(4);f(5);f(6);f(7);f(8);f(9);f(10);f(11);f(12)]; % lager designmatrisen
y = [0;8.8;29.9;62.0;104.7;159.1;222;294.5;380.4;471.1;571.7;686.8;809.2]; %observasjonsvektoren
W = diag([1,1,1,.9,.9,.8,.7,.6,.5,.4,.3,.2,.1]); % vektmatrisen


VS = (W*X)' * W*X; % de vektede normalligingene, venstre og høyre side
HS = (W*X)' * W*y;

C = [VS HS];
D = rref(C); % radreduserer

D(:,end)

g = @(t) dot(f(t),D(:,end)); % <--- dette er dte kubiske polynomet