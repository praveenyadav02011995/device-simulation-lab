clc;
q=1.6*(10)^(-19);
a=100*10^(-4);
h=a/100;
N=100;
Ca=-10^(12);
Cb=0;
C=zeros(1,N);
C(1)=Ca;
C1=C';
D=30;
for i=1:N-1
    M(i,i)=-2;
end
for i=1:N-1
    M(i,i+1)=1;
end
for i=1:N-1
    M(i+1,i)=1;
end
Cf=inv(M)*C1;
i=1:100;
z=i*10^-4;
grid on;
xlabel('distance (µcm)')
ylabel('Concentration (cm^-^3)')
title('Concentration profile in Numerical method')
x=1:100;
z=x*10^-4;
c=(-(10^14)*z)+(10^12);
plot(z,Cf,z,c);
grid on;
xlabel('distance (µm)')
ylabel('Concentration (cm^-^3)')
title('Concentration profile in comparision between analytical and numerical method')
