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
% N=400;
% for i=1:179
% V(i)=0;
% end
for i=1:199
V(i)=(((((q.*Na)/(2.*epsilon))*((((i.*h)+Wp)^2)))+Vp)/100);
end 
for i=199:399
V(i)=((-(((q.*Nd)/(2.*epsilon))*(((i.*h)-Wn)^2))+Vn)/100);
end 
% i=180:199
% V(i)=((((q.*Na)/(2*epsilon)).*(((i+Wp).*(i+Wp))))+Vp);
% i=200:219
% V(i)=((((q.*Nd)/(2.*epsilon)).*((i-Wn).*(i-Wn)))+Vn);
% i=220:399
% V(i)=0;
for i=1:398
    E(i)=-((V(i+1)-V(i))/h);
end 
    i=1:398;
plot(i,E);
xlabel('distance m (meter)');
ylabel('Electric field');
title('Analytical method : Electric field VS distance'); 
grid on;