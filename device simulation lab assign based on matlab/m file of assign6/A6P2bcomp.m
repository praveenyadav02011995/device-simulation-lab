clc
N=100;
h=(100*(10^-4))/N;
D=30;
tau=10^-7;
j=(D*tau)^-0.5;
A=-10^7;
B=10^12;
i=1:100;
y=i*(10^-4);
c=(A*exp(j*y))+(B*exp(-j*y));
Ca=-10^(12);
Cb=0;
C=zeros(1,N);
C(1)=Ca;
C1=C';
for i=1:N-1
    M(i,i)=-(2+(((h)^2)/(D*tau)));
end
for i=1:N-1
    M(i,i+1)=1;
end
for i=1:N-1
    M(i+1,i)=1;
end
Cf=inv(M)*C1;
i=1:100;
plot(i,Cf,i,c);
grid on;
xlabel('distance (µm)')
ylabel('Concentration (cm^-^3)')
title('Concentration profile in comparision between analytical and numerical method')