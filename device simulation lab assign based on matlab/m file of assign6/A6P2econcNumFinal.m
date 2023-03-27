clc;
q=1.6*(10)^(-19);
a=100*10^(-4);
h=a/100;
N=100;
D=30;
k=10^12;
C=zeros(1,N);
C(31)=-((h*k)/D);
C1=C';
for i=1:N-1
    M(i,i)=-2;
end
for i=1:N-1
    M(i,i+1)=1;
end
for i=1:N-1
    M(i+1,i)=1;
end
M(1,1)=1;
M(1,2)=0;
M(N,N)=1;
M(N,N-1)=0;
Cf=M\C1;
plot(Cf);
grid on;
xlabel('Distance (µm)')
ylabel('Concentration (cm^-^3)')
title('Concentration profile in Numerical method');