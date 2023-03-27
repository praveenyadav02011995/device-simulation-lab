clear all;
clc;
close all;
q=1.6*(10)^(-19);
epsilon=11.8*8.85*(10)^(-12);
a=200*10^(-6);
ni=1.5*(10)^(16);
h=a/1000;
Vt=0.026;
k=(q*ni*(h)^2)/epsilon;
N=1000;
Va1=0.2;
Va2=0.4;
Va3=0.6;
Vb=0;
V1=linspace(Va1,Vb,1000);
V2=linspace(Va2,Vb,1000);
V3=linspace(Va3,Vb,1000);
Z1=V1';
Z2=V2';
Z3=V3';
for i=1:1000
U(1,1)=0;
U(1000,1)=0;
for i=2:999
    U1(i,1)=Z1(i+1)+Z1(i-1)-2*Z1(i)-(k*exp(Z1(i)/Vt));
     U2(i,1)=Z2(i+1)+Z2(i-1)-2*Z2(i)-(k*exp(Z2(i)/Vt));
      U3(i,1)=Z3(i+1)+Z3(i-1)-2*Z3(i)-(k*exp(Z3(i)/Vt));
end  
S(1,1)=1;
for i=2:1000
    S1(i,i)=-2-((k/Vt)*exp(Z1(i)/Vt));
    S2(i,i)=-2-((k/Vt)*exp(Z2(i)/Vt));
    S3(i,i)=-2-((k/Vt)*exp(Z3(i)/Vt));
end
for i=2:999
    S1(i,i+1)=1;
    S2(i,i+1)=1;
    S3(i,i+1)=1;
end
for i=1:998
       S1(i+1,i)=1;
    S2(i+1,i)=1;
    S3(i+1,i)=1;
end
S1(N,N)=1;
S2(N,N)=1;
S3(N,N)=1;
D1=Z1-inv(S1)*U;
S1=D1;
D2=Z2-inv(S2)*U;
S2=D2;
D3=Z3-inv(S3)*U;
S3=D3;
end
i=1:1000;
plot(i,D1,i,D2,i,D3);
xlabel('distance (meter)');
ylabel('potential profile(volt)');
title('Comaprision of potential profile at different voltages')
grid on;
for i=1:1000
    n1=ni*exp(D1/Vt);
    n2=ni*exp(D2/Vt);
    n3=ni*exp(D3/Vt);
end
%plot(i,n1,i,n2,i,n3);
xlabel('distance(meter)');
ylabel('carrier concentration(atom/(centimeter)^3');
grid on;




