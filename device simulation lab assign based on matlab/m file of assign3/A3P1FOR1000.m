clear all;
clc;
q=1.6*(10)^(-19);
m=9.1*10^(-31);
pie=3.14;
h=6.62*1*10^(-34);
a=10*10^(-9);
j=a/1000
t0=-((h/(2*pie))^2)/(2*m*((j)^2))/q;
EVN=[];
for i=1:1000
    H(i,i)=-2*t0 ;
    EVN = [EVN, i];
end
for i=1:999
    H(i,i+1)=t0;
end
for i=1:999
    H(i+1,i)=t0;
end
[V,D] = eig(H);
EV = diag(D);
EVT = EV;
plot(EVN,EV);
xlabel('eigen value no');
ylabel('eigen value');
title('For 1001 point, energy values vs the eigen value no ');
