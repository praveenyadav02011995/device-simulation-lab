 clear all;
clc;
q=1.6*(10)^(-19);
epsilon=103.368*(10)^(-14);
a=4*10^(-4);
ni=1.5*(10)^(10);
h=a/400;
h1=a/4000;
Vt=0.0258;
Na=10^15;
Nd=10^16;
Vo=(Vt*log((Na*Nd)/(ni^2)));
W=((((2*epsilon)/q)*((1/Nd)+(1/Na))*Vo)^0.5);
Wn=((W*Na)/(Na+Nd));
Wp=((W*Nd)/(Na+Nd));
K=((q*ni*(h)^2)/(2*epsilon));
Vp=-(Vt*log(Na/ni));
Vn=(Vt*log(Nd/ni));
Siep=-(log(Na/ni));
Sien=(log(Nd/ni));
N=400;
T=300;
Nc=4.82*(10^21)*(((1.182)*T)^1.5);

Sie=linspace(Vp,Vn,400);
Sie1=Sie';

 F(1,1)=0;
 F(400,1)=0;
for i=1:400;
for i=2:399
  F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i))+(K*((exp(-(Sie1(i)/Vt)))-(exp(Sie1(i)/Vt))+((Nd-Na)/ni))));
 end



for i=2:399
 M(i,i)=((-2)-((K/Vt)*((exp(-(Sie1(i)/Vt)))+(exp(Sie1(i)/Vt)))));
end

  M(1,1)=1;


M(N,N)=1;

Sie2=(Sie1-(inv(M)*F));
Sie1=Sie2;
end
Sie2=[Sie2(1)*ones(1,1800),Sie2',Sie2(end)*ones(1,1800)];
Ec=-((Sie2));
Ev=(Ec-1.12);
Ei=(Ec+Ev)/2;
subplot(2,2,2);
Efn=(-(Vt*log(Nc/Nd)));
Ef=(Efn*ones(1,length(Sie2)));
i=1:length(Sie2);
x=i*h1;
plot(x,Ei,x,Ec,x,Ev,x,Ef);
xlabel('distance (micro meter)');
ylabel('Energy');
title('Energy band diagram');
grid on;
hold on

subplot(2,2,3);
i=1:4000;
x=i*h;
y=Ec;
plot(x,y);
xlabel('distance cm (centimeter)');
ylabel('potential');
title('potential VS distance');
grid on;
 subplot(2,2,4);
 for i=1:3999
    E(i)=((Ec(i+1)-Ec(i))/h);
end 
i=1:3999;
x=i*h;
plot(x,E);
xlabel('distance m (meter)');
ylabel('Electric field');
title('Electric field VS distance');
