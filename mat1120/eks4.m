%%% eks. med ikke diagonalmatrise

figure(1);
L=3; U=3;
plot([-L U],[0 0],'g',[0 0],[-L U],'g'); % Tegner akser
axis([-U U -L L]);
axis manual;
grid on;
hold on;
A=[0.5 0.4; -0.14 1.0];
[P D] = eig(A)
x1=[2*0.92; 2*0.3899];
x2=[0;1];
x3=[-1;0];
x4=[0;-1];
for k=1:30
    plot(x1(1),x1(2),'ob');
    plot(x2(1),x2(2),'ob');
    plot(x3(1),x3(2),'or');
    plot(x4(1),x4(2),'or');
    pause(1)
    x1=A*x1; % regner ut neste tilstand i systemet
    x2=A*x2; x3=A*x3; x4=A*x4;
end

%% ser at alt konvergerer mot null!