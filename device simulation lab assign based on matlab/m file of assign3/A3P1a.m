 clear all;
clc;
q=1.6*(10)^(-19);
m=9.1*10^(-31);
pie=3.14;
h=6.62*1*10^(-34);
a=10*10^(-9);
j=a/100
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
subplot(2,2,1);
xlabel('eigen value no');
ylabel('eigen value');
title('energy values vs the eigen value no');
EN=[];
for i=1:99
    E=(((i*h)/a)^2)/(8*m*q);
    EN =[EN,E];
end
disp(EN);
i=1:99;
plot(i,EN);
subplot(2,2,2);
xlabel('eigen value no i');
ylabel('energy value');
title('energy value vs eigen value graph by analytical');
plot(i,EN,EV);
subplot(2,2,3);

