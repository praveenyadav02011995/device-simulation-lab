clc
N=100;
h=(100*(10^-4))/N;
D=30;
t=10^-7;
j=(D*t)^-0.5;
A=-19.65*(10^9);
B=.981*(10^12);
k=1:100;
y=k*(10^-4);
E=(A*exp(j*y))+(B*exp(-j*y));

plot(k,E)
grid on
xlabel('Distance between A and B (µm)')
ylabel('Concentration profile from A to B (cm^-^3)')
title('Concentration profile from A to B in Analytical method')