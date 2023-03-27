clear all;
clc;
q=1.6*(10)^(-19);
epsilon=103.368*(10)^(-12);
a=200*10^(-6);
ni=1.5*(10)^(16);
e = 0.0001;
h=a/1000;
Vt=0.0258;
k=(q*ni*(h)^2)/epsilon;
N=1000;
Va=0.2;
Vb=0;
V=linspace(Va,Vb,1000);
V1=V';
for i=1:1000


F(1,1)=0;
F(1000,1)=0;
for i=2:999
    F(i,1)=V1(i+1)+V1(i-1)-2*V1(i)-(k*exp(V1(i)/Vt));
    
end


M(1,1)=1;
for i=2:1000
    M(i,i)=-2-((k/Vt)*exp(V1(i)/Vt));
end
for i=2:999
    M(i,i+1)=1;
end
for i=1:998
    M(i+1,i)=1;
end
M(N,N)=1;
p1=inv(M);
p2=p1*F;
V2=V1-p2;
% if abs(V2-V1)<Vt
%         break;
% end
V1=V2;
end
for i=1:1000
    n=ni*exp(V2/Vt);
end
i=1:1000;
x=i*(a/1000);
plot(x,n);
xlabel('distance( meter)');
ylabel('carrier concentration(atom/(meter)^3');
title('FOR 0.2V CHARGE CONCENTRATION WITH RESPECT TO DISTANCE');
grid on;