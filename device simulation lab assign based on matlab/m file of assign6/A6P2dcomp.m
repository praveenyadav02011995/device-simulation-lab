clear all;
clc;
a=100*10^(-4);
h=a/100;
N=100;
Ca=-10^(12);
Cb=0;
C=zeros(1,N);
C(1)=Ca;
C1=C';
D=30;
Tau=(10^(-7));
for i=1:N-1
    M(i,i)=-(2+((h^2)/(D*Tau)));
end
for i=1:N-1
    M(i,i+1)=1;
end
for i=1:N-1
    M(i+1,i)=1;
end
M(100,99)=((10^3));
M(100,100)=(-2*(10^3)-(h^2)/(D/Tau));
Cf=inv(M)*C1;

N=1000;
h=(100*(10^-4))/N;
D=30;
tau=10^-7;
j=(D*tau)^-0.5;
A=-19.65*(10^9);
B=.981*(10^12);
i=1:100;
y=i*(10^-4);
c=(A*exp(j*y))+(B*exp(-j*y));

plot(i,c,i,Cf)
grid on;
xlabel('distance (µm)')
ylabel('Concentration (cm^-^3)')
title('Concentration profile in comparision between analytical and numerical method')

