clear all;
clc;
D=10^-4; 
l=10^-3;
t1=10*10^-6; 
t2=30*10^-6;
t3=50*10^-6;
t4=70*10^-6;
M=linspace(0,l,100) ;
t=10^-6; 
h=10^-5; 
Q=0.11;
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
ylabel('NO OF PARTICLES');
title('RANDOM WALK: Analytical method for N=1000 potential vs distance');