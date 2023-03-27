clear all;
clc;
q=1.6*(10)^(-19);
epsilon=103.368*(10)^(-12);
m=9.1*10^(-31);
a=200*10^(-6);
ni=8.6*(10)^(15);
h=a/10;
e=2.71;
Vt=0.0258;
k=(q*ni*(h)^2)/epsilon;
N=10;
V=linspace(10,0,11);
Va=0.1;
Vb=0;

F(1)=V(1)-Va;
F(N)=V(N)-Vb;
for i=2:N-1
    F(i)=V(i+1)+V(i-1)-2*V(i)-(k*e^(V(i)/Vt));
    
end
F1=transpose(F);
M(1,1)=1;
M(N,N)=1;
for i=2:10
    M(i,i)=-2-(k*e^(V(i)/Vt));
end
for i=1:9
    M(i,i+1)=1;
end
for i=1:9
    M(i+1,i)=1;
end
vla=[];
for i=1:10
    V(i+1)=V(i)-(inv(M(i,i)).*F1(i,1));
    V1=[V,V];
end
i=1:10
plot(i,V1);





