clear all;
clc;
q=1.6*(10)^(-19);
epsilon=11.8*8.85*(10)^(-12);
a=200*10^(-6);
h=a/1000;
ni=1.5*(10)^(16);
Vt=0.026;
k=(q*ni*(h)^2)/epsilon;
N=1000;
Va=0.1;
Vb=0;
V=linspace(Va,Vb,1000);
Z=V';
for i=1:1000
U(1,1)=0;
U(1000,1)=0;
for i=2:999
    U(i,1)=Z(i+1)+Z(i-1)-2*Z(i)-(k*exp(Z(i)/Vt));
    
end


S(1,1)=1;
for i=2:1000
    S(i,i)=-2-((k/Vt)*exp(Z(i)/Vt));
end
for i=2:999
    S(i,i+1)=1;
end
for i=1:998
    S(i+1,i)=1;
end
S(N,N)=1;
D=Z-inv(S)*U;
Z=D;
end
i=1:1000;
m=i*(a/1000);
plot(m,D);
xlabel('distance m (meter)');
ylabel('potential profile');
title('potential profile for 0.1V VS distance');
grid on;




