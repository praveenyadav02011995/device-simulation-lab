clear all;
clc;
q=1.6*(10)^(-19);
a=100*10^(-6);
h=a/100;
N=100;
y=[];
for x=1:30
c=-(0.9996*(10^14)*x)+(10^12);
y=[y c];
end
for x=31:100
c=-(1.0001*(10^14)*x)+(1.0001*(10^12));
y=[y c];
end
x=1:100;
plot(x,y);
grid on
xlabel('Distance (micro meter)')
ylabel('Concentration (cm^-^3)')
title('Concentration profile in Analytical method')