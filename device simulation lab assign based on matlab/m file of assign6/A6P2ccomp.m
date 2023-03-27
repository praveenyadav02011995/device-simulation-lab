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
y=[];
D=30;
for x=1:100
c=(-(0.25*(10^14)*x)+(10^12));
y=[y c];
end
x=1:100;

for i=1:N-1
    M(i,i)=-2;
end
for i=1:N-1
    M(i,i+1)=1;
end
for i=1:N-1
    M(i+1,i)=1;
end
% M(N,N-1)=(-(D/h)+(10^3));
% M(N,N)=(-(D/h));
Cf=inv(M)*C1;


plot(x,y,i,Cf)
grid on;
xlabel('distance (µm)')
ylabel('Concentration (cm^-^3)')
title('Concentration profile in comparision between analytical and numerical method')
