L=3; U=3;   %STØRRELSEN PÅ AKSENE
plot([-L U],[0 0],'g',[0 0],[-L U],'g'); % Tegner akser
axis([-U U -L L]); % setter aksene
axis manual; 
grid on;
hold on;
A=[0.8 0.0; 0.0 0.64] % matrisen
[P D] = eig(A) % regner ut egenvektorer og -verdier
x1=[2.718281828459045;3.14];  % startpunkter
x2=[-2;-2];
x3=[2;-2];
x4=[-2;2];
for k=1:30
    plot(x1(1),x1(2),'or');
    plot(x2(1),x2(2),'or');
    plot(x3(1),x3(2),'or');
    plot(x4(1),x4(2),'or');
    pause(1)
    x1=A*x1; % regner ut neste tilstand i systemet
    x2=A*x2; x3=A*x3; x4=A*x4;
end

%% ser at alt konvergerer mot null!