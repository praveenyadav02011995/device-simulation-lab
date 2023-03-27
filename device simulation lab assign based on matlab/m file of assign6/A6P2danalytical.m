Z=[];
for i=0:30
    S=(7/3)*10^6*i;
    Z=[Z S];
end
for i=31:100
    S=-(i-100)*10^6;
    Z=[Z S];
end
i=0:100;
R=i*10^-4;
plot(R,Z);
grid on
xlabel('Distance between A and B (µm)')
ylabel('Concentration profile from A to B (cm^-^3)')
title('Concentration profile from A to B in Analytical method')
