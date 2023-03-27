clc;
q=1.6*(10)^(-19);
a=100*10^(-6);
h=a/100;
N=100;
C1=-10^(12);
C100=0;
C=zeros(1,N);
C(1)=C1;
k=10^6;

C(31)=((h*k)/D);
d=C';
k=10^12;
D=30;
for i=1:99
    H(i,i)=-2;
end
for i=1:99
    H(i,i+1)=1;
end
for i=1:99
    H(i+1,i)=1;
end
H(1,1)=1;
H(1,2)=0;
H(N,N)=1;
H(N,N-1)=0;
E=H\d;
plot(E)
xlabel('Distance between A and B (µm)')
ylabel('Concentration profile from A to B (cm^-^3)')
title('Concentration profile from A to B in Numerical method')