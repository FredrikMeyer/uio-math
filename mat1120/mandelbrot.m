col=20;
m=400;
cx=-.6;
cy=0;
l=1.5;
x=linspace(cx-l,cx+l,m);
y=linspace(cy-l,cy+l,m);
[X,Y]=meshgrid(x,y);
Z=zeros(m);
C=X+i*Y;
for k=1:col;
Z=Z.^2+C;
W=exp(-abs(Z));
end
colormap copper(256);
pcolor(W);
shading flat;
axis('square','equal','off');

%% se http://www.albertostrumia.it/Fractals/FractalMatlab/Mand.html
%% for mer informasjon