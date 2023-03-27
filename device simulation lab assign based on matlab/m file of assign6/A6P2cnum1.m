clear all;
clc;
a=100*10^(-4);
h=a/100;
N=100;
y=[];
for x=1:100
c=(-(0.25*(10^14)*x)+(10^12));
y=[y c];
end
x=1:100;
plot(x,y);
grid on;
xlabel('distance (µm)')
ylabel('Concentration (cm^-^3)')
title('Concentration profile in Analytical method')