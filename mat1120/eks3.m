figure(1);
L=3; U=3;
plot([-L U],[0 0],'g',[0 0],[-L U],'g'); % Tegner akser
axis([-U U -L L]);
axis manual;
grid on;
hold on;
A=[2 0.0; 0.0 0.5]
[P D] = eig(A)
x1=[0;3];
x2=[0;-3];
x3=[0.1;-3];
x4=[-0.1;3];
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