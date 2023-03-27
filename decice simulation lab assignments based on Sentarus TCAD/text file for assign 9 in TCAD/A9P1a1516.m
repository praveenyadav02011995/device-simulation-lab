clear all;
clc;
q=1.6*(10)^(-19);
epsilon=103.368*(10)^(-14);
a=4*10^(-4);
ni=1.5*(10)^(10);
e = 0.0001;
h=a/400;
T=300;
Nc=4.82*(10^21)*(((1.182)*T)^1.5);
Vt=0.0258;
Na=10^15;
Nd=10^16;
Vo=(Vt*log((Na*Nd)/(ni^2)));
W=((((2*epsilon)/q)*((1/Nd)+(1/Na))*Vo)^0.5);
Wn=((W*Na)/(Na+Nd));
Wp=((W*Nd)/(Na+Nd));
k=(q*Na*(h)^2)/epsilon;
l=(q*Nd*(h)^2)/epsilon;
Vp=-(Vt*log(Na/ni));
Vn=(Vt*log(Nd/ni));
N=400;

V=linspace(Vp,Vn,400);
V1=V';
for i=1:400

F(1,1)=0;
F(400,1)=0;
for i=2:179
F(i,1)=V1(i+1)+V1(i-1)-2*V1(i);
end
for i=180:199
    F(i,1)=V1(i+1)+V1(i-1)-2*V1(i)-k;
end
for i=200:219
F(i,1)=V1(i+1)+V1(i-1)-2*V1(i)+l;
end
for i=220:399
F(i,1)=V1(i+1)+V1(i-1)-2*V1(i);
end
M(1,1)=1;
for i=2:400
M(i,i)=-2;
end
for i=2:399
M(i,i+1)=1;
end
for i=1:398
M(i+1,i)=1;
end
M(N,N)=1;
V2=V1-(inv(M)*F);
V1=V2;
end
subplot(2,2,2);
RO=(q*(Nd-Na-(2*ni*sinh(V2/Vt))));
i=1:400;
x=i*h;
plot(x,RO);
xlabel('distance m (meter)');
ylabel('charge density');
title('charge density VS distance'); 
grid on;
hold on
subplot(2,2,1);
i=1:400;
x=i*h;
y=V2*Vt;
plot(x,y);
xlabel('distance cm (centimeter)');
ylabel('potential');
title('potential VS distance');
grid on;
 subplot(2,2,3);
 for i=1:399
    E(i)=-((V2(i+1)-V2(i))/h);
end 
i=1:399;
x=i*h;
plot(x,E);
xlabel('distance m (meter)');
ylabel('Electric field');
title('Electric field VS distance');
grid on;
%% 
subplot(2,2,4)
Ec=-((V2));
Ev=(Ec-1.12);
Ei=(Ec+Ev)/2;
Efn=(-(Vt*log(Nc/Nd)));
Ef=(Efn*ones(1,length(V2)));
i=1:length(V2);
plot(i,Ei,i,Ec,i,Ev,i,Ef);
xlabel('distance m (meter)');
ylabel('Energy');
title('Energy band diagram');
