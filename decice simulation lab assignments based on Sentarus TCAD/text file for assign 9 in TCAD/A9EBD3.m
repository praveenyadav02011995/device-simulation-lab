clear all;
clc;
q=1.6*(10)^(-19);
epsilon=103.368*(10)^(-14);
a=4*10^(-4);
ni=1.5*(10)^(10);
h=a/400;
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
N=400;
T=300;
Nc=4.82*(10^21)*(((1.182)*T)^1.5);

Sie=linspace(Vp,Vn,400);
Sie1=Sie';

for i=1:400;
for i=1:179
F(i,1)=0;
end

F(1,1)=0;
F(400,1)=0;

for i=180:220
 F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i))+(K*((exp(-(Sie1(i)/Vt)))-(exp(Sie1(i)/Vt))+((Nd-Na)/ni))));
end
 
for i=220:399
F(i,1)=0;
end

 M(1,1)=1;

 for i=2:179
M(i,i)=-2;
end
for i=2:178
M(i,i+1)=1;
end
for i=9:178
M(i+1,i)=1;
end

for i=180:220
M(i,i)=((-2)-((K/Vt)*((exp(-(Sie1(i)/Vt)))+(exp(Sie1(i)/Vt)))));
end
for i=180:220
M(i,i+1)=1;
end
for i=180:220
M(i+1,i)=1;
end

 for i=221:399
M(i,i)=-2;
end
for i=221:399
M(i,i+1)=1;
end
for i=179:399
M(i+1,i)=1;
end

M(N,N)=1;

Sie2=(Sie1-(inv(M)*F));
Sie1=Sie2;
end
Sie2=[Sie2(1)*ones(1,1000),Sie2',Sie2(end)*ones(1,1000)];
Ec=-((Sie2));
Ev=(Ec-1.12);
Ei=(Ec+Ev)/2;

Efn=(-(Vt*log(Nc/Nd)));
Ef=(Efn*ones(1,length(Sie2)));
i=1:length(Sie2);
plot(i,Ei,i,Ec,i,Ev,i,Ef);
xlabel('distance m (meter)');
ylabel('Energy');
title('Energy band diagram');
grid on;