y=[];
for i=0:30
    x=(7/3)*10^6*i;
    y=[y x];
end
for i=31:100
    x=-(i-100)*10^6;
    y=[y x];
end
i=0:100;
k=i*10^-4;
plot(k,y);
grid on
xlabel('Distance (µm)')
ylabel('Concentration (cm^-^3)')
title('Concentration profile in Analytical method')
