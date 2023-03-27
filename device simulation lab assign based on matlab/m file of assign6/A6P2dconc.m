clear all;
clc;
a=100*10^(-4);
h=a/100;
N=100;
C1=-10^(12);
C100=0;
C=zeros(1,N);
C(1)=C1;
d=C';
D=30;
T=(10^(-7));
for i=1:N-1
    H(i,i)=-(2+((h^2)/(D*T)));
end
for i=1:N-1
    H(i,i+1)=1;
end
for i=1:N-1
    H(i+1,i)=1;
end
H(100,99)=((10^3));
H(100,100)=(-2*(10^3)-(h^2)/(D/T));
S=inv(H)*d;
plot(S)
grid on;
xlabel('Distance between A and B (µm)')
ylabel('Concentration profile from A to B (cm^-^3)')
title('Concentration profile from A to B in Numerical method')