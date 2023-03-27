clear all;
clc;
q=1.6*10^(-19);
epsilon=8.85*10^(-12);
m=9.1*10^(-31);
h=6.62*1*10^(-34);
h_fn=h/(2*pi);
a=0.1*10^(-10);
t0=-(h_fn*h_fn)/(2*m*a*a*q);
for i=1:100
    H(i,i)=-(2*t0)-(q*q/(4*pi*epsilon*a*i*q));
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
plot(i,EV);
xlabel('orbit no');
ylabel('Energy');
title('energy vs orbit no');

