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
i=1:1000;
plot(i,V2);





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
Sa=0.4;
Sb=0;
S=linspace(Sa,Sb,1000);
S1=S';
for j=1:1000


G(1,1)=0;
G(1000,1)=0;
for j=2:999
    G(j,1)=S1(j+1)+S1(j-1)-2*S1(j)-(k*exp(S1(j)/Vt));
    
end


O(1,1)=1;
for j=2:1000
    O(j,j)=-2-((k/Vt)*exp(S1(j)/Vt));
end
for j=2:999
    O(j,j+1)=1;
end
for j=1:998
    O(j+1,j)=1;
end
O(N,N)=1;
q1=inv(O);
q2=q1*G;
S2=S1-q2;
% if abs(V2-V1)<Vt
%         break;
% end
S1=S2;
end
j=1:1000;
%plot(j,S2);





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
Pa=0.1;
Pb=0;
P=linspace(Pa,Pb,1000);
P1=P';
for K=1:1000


H(1,1)=0;
H(1000,1)=0;
for K=2:999
    H(K,1)=P1(K+1)+P1(K-1)-2*P1(K)-(k*exp(P1(i)/Vt));
    
end


L(1,1)=1;
for K=2:1000
    L(K,K)=-2-((k/Vt)*exp(P1(K)/Vt));
end
for K=2:999
    L(K,K+1)=1;
end
for K=1:998
    L(K+1,K)=1;
end
L(N,N)=1;
r1=inv(L);
r2=r1*H;
P2=P1-r2;
% if abs(V2-V1)<Vt
%         break;
% end
P1=P2;
end
K=1:1000;
plot(K,P2, j,S2,i,V2);





