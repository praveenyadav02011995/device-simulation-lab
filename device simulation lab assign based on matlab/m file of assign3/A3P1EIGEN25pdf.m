clear all;
clc;
q=1.6*(10)^(-19);
aifsilon=8.85*(10)^(-12);
m=9.1*10^(-31);
h=6.62*1*10^(-34);
h_fn=h/(2*3.14);
a=1*10^(-10);
t0=-(h_fn^2)/(2*m*a*a);
for i=1:100
    H(i,i)=(-(2*t0)+(q^2)/(4*pi*aifsilon*i));
end
for i=1:99
    H(i,i+1)=t0;
end
for i=1:99
    H(i+1,i)=t0;
end
[V,D] = eig(H);
EV = diag(D);
i=1:100;
plot(i,EV)
f1=[];
V(1:99,25);
f1=[f1,V(1:99,25)];
subplot(2,1,1)
i=1:99;
plot(i,f1.*f1)
xlabel('i');
ylabel('probability distribution function');
title('pdf for eigen value 25');
