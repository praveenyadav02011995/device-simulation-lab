clc
N=100;
h=(100*(10^-4))/N;
D=30;
tau=10^-7;
j=(D*tau)^-0.5;
A=-10^7;
B=10^12;
x=1:100;
y=x*(10^-4);
D=(A*exp(j*y))+(B*exp(-j*y));

plot(x,D)
grid on;
xlabel('Distance between A and B (µm)')
ylabel('Concentration profile from A to B (cm^-^3)')
title('Concentration profile from A to B in Analytical method')
