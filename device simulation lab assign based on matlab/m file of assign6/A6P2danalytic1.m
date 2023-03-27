clc
clear all
close all
N=1000;
h=(100*(10^-4))/N;
D=30;
tau=10^-7;
x=0:0.00001:0.0001;
c=((19.65*(10^9)*exp(x/(30*(10^-7))^0.5))+((0.981*(10^12))*exp(-x/(30*(10^-7))^0.5)));
grid on
plot(x,c)
xlabel('distance (µm)')
ylabel('Concentration (cm^-^3)')
title('Concentration profile in Analytical method')