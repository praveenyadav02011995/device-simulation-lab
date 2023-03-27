clear all;
clc;
m=9.1*10^(-31);
q=1.6*10^(-19);
h=6.62*1*10^(-34);
h_fn=h/(2*pi);
a=0.1*10^(-10);
t0=-(h_fn^2)/(2*m*a*a*q);
for i=1:100
    H(i,i)=-2*t0;
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


