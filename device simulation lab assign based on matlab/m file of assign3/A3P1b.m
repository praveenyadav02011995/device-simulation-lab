clc;
m=9.1*10^(-31);

h=6.62*1*10^(-34);
a=10*10^(-9);
EN=[];
for i=1:99
    E=(((i*h)/a)^2)/(8*m*q);
    EN =[EN,E];
end
disp(EN);
i=1:99;
plot(i,EN)
xlabel('eigen value no i');
ylabel('energy value');
title('energy value vs eigen value graph by analytical');
