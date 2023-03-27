clear all;
clc;
q=1.6*10^(-19);
epsilon=8.85*10^(-12);
m=9.1*10^(-31);
h=6.62*1*10^(-34);
h_fn=h/(2*pi);
a=0.01*10^(-10);
t0=-(h_fn*h_fn)/(2*m*a*a*q);
EN=[];
for i=1:299
    E=(((i*h)/a)^2)/(8*m);
    EN =[EN,E];
end
disp(EN);
i=1:299;
plot(i,EN)