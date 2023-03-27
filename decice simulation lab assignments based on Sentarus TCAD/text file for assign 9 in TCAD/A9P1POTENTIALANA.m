clear all;
clc;
q=1.6*(10)^(-19);
epsilon=103.368*(10)^(-14);
a=4*10^(-4);
ni=1.5*(10)^(10);
e = 0.0001;
h=a/400;

Vt=0.0258;
Na=10^16;
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
for i=1:179
V(i)=0;
end
for i=179:199
V(i)=(((q*Na)/(2*epsilon))*(((i*h)+Wp)^2)+Vp);
end
for i=199:219
V(i)=((-((q*Nd)/(2*epsilon))*(((i*h)-Wn)^2))+Vn);
end
for i=219:399
V(i)=0;
end
% for i=1:1790
% V(i)=Vp;
% end
% for i=1791:2010
% V(i)=(((((q.*Na)/(2.*epsilon))*(((((i).*h))+Wp)^2))+Vp)/100)-0.3;
% end 
% for i=2011:2190
%  V(i)=-(((((-q.*Nd)/(2.*epsilon)).*((((i).*h)-Wn-10^(-4))^2))+Vn)/100);
% end
% for i=2191:3990
% V(i)=Vn;
% end 
i=1:399;
plot(i,V);
xlabel('distance m (meter)');
ylabel('potential');
title('Analytical method : potential VS distance'); 
grid on;