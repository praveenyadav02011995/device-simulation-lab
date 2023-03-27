clc;
a=100*10^(-4);
h=a/100;
N=100;
C1=-10^(12);
C100=0;
C=zeros(1,N);
C(1)=C1;
C2=C';
T=10^(-7);
D=30;
for i=1:N-1
    H(i,i)=-(2+(((h)^2)/(D*T)));
end
for i=1:N-1
    H(i,i+1)=1;
end
for i=1:N-1
    H(i+1,i)=1;
end
D=inv(H)*C2;
i=1:100;
plot(i,D);
grid on;
xlabel('Distance between A and B (µm)')
ylabel('Concentration profile from A to B (cm^-^3)')
title('Concentration profile from A to B in Numerical method')