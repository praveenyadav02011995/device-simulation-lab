clear all;
clc;
D=10^-4; % take D in cm^2/sec
l=10^-3; % take length in cm
t1=10*10^-6; %take time 100 micro sec
t2=30*10^-6;
t3=50*10^-6;
t4=70*10^-6;
% m=linspace(0,time,100); % take 100 spacing between time
M=linspace(0,l,100) ; % take 100 spacing between length
t=10^-6; % small portion of time
h=10^-5; % small portion of distance 
Q=1.1*10^1;
q=[];
a1=2*((pi*D*t1)^0.5);
a2=2*((pi*D*t2)^0.5);
a3=2*((pi*D*t3)^0.5);
a4=2*((pi*D*t4)^0.5);
C1=((Q/a1)*exp(-((M-(0.5*l)).^2)/(4*D*t1)));

C2=((Q/a2)*exp(-((M-(0.5*l)).^2)/(4*D*t2)));

C3=((Q/a3)*exp(-((M-(0.5*l)).^2)/(4*D*t3)));

C4=((Q/a4)*exp(-((M-(0.5*l)).^2)/(4*D*t4)));

plot(M,C1,M,C2,M,C3,M,C4);
grid on
xlabel('distance from x=0 position');
ylabel('potential profile');
title('Analytical method for potential vs distance');