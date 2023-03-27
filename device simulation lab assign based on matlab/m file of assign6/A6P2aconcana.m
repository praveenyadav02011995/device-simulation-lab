clc;
x=1:100;
c=(-(10^14)*x)+(10^12);
plot(x,c);
grid on;
xlabel('Distance between A and B (µm)')
ylabel('Concentration profile from A to B (cm^-^3)')
title('Concentration profile from A to B in Analytical method')