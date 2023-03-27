clear all;
clc;
q=1.6*(10)^(-19);
epsilon=103.368*(10)^(-14);
a=4*10^(-4);
ni=1.5*(10)^(10);
h=a/300;
Vt=0.0258;
Na=10^16;
Nd=10^16;
Vo=(Vt*log((Na*Nd)/(ni^2)));
W=((((2*epsilon)/q)*((1/Nd)+(1/Na))*Vo)^0.5);
Wn=((W*Na)/(Na+Nd));
Wp=((W*Nd)/(Na+Nd));
K=((q*ni*(h)^2)/(epsilon));
Vp=-(Vt*log(Na/ni));
Vn=(Vt*log(Nd/ni));
Siep=-(log(Na/ni));
Sien=(log(Nd/ni));
N=100;
T=300;
Nc=4.82*(10^21)*(((1.182)*T)^1.5);

Sie=linspace(0,0,100);
Sie1=Sie';

i=1:100;
for i=1:00

F(1,1)=0;
F(100,1)=0;

for i=2:99
 F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i))+(K*((exp(-(Sie1(i)/Vt)))-(exp(Sie1(i)/Vt))+((Nd-Na)/ni))));
end

 M(1,1)=1;

for i=2:99
M(i,i)=((-2)-((K/Vt)*((exp(-(Sie1(i)/Vt)))+(exp(Sie1(i)/Vt)))));
end

for i=2:98
M(i,i+1)=1;
end

for i=2:98
M(i+1,i)=1;
end

M(N,N)=1;

Sie2=(Sie1-(inv(M)*F));
Sie1=Sie2;
end
Sie2=[Sie2(1)*ones(1,100),Sie2',Sie2(end)*ones(1,100)];

i=1:length(Sie2);
% rho1=[];
% for i=1:3000
% rho=(-q*ni*((exp(-(Sie2(i)/Vt)))-(exp(Sie2(i)/Vt))+((Nd-Na)/ni)))
% end
%  rho1=[rho1,rho];
% plot(i,rho1);

% rho=(-q*ni*((exp(-(Sie2(i)/Vt)))-(exp(Sie2(i)/Vt))+((Nd-Na)/ni)));
%  plot(rho);


RO=(q*(Nd-Na-(2*ni*sinh(Sie2/Vt))));
i=1:300;
plot(i,RO);

xlabel('distance m (meter)');
ylabel('charge density');
title('Charge density VS distance');
grid on;