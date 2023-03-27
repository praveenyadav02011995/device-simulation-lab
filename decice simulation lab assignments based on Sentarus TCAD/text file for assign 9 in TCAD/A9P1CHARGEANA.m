clear all;
clc;
q=1.6*(10)^(-19);
epsilon=103.368*(10)^(-14);
a=4*10^(-4);
ni=1.5*(10)^(10);
e = 0.0001;
h=a/400;

Vt=0.0258;
Na=10^17;
Nd=10^17;
Vo=(Vt*log((Na*Nd)/(ni^2)));
W=((((2*epsilon)/q)*((1/Nd)+(1/Na))*(Vo+10))^0.5);
Wn=((W*Na)/(Na+Nd));
Wp=((W*Nd)/(Na+Nd));
k=(q*Na*(h)^2)/epsilon;
l=(q*Nd*(h)^2)/epsilon;
Vp=-(Vt*log(Na/ni));
Vn=(Vt*log(Nd/ni));
N=400;
    
% for i=1:200
% V(i)=(((((q.*Na)/(2.*epsilon))*((((i.*h)+Wp)^2)))+Vp)/100);
% end 
% for i=199:399
% V(i)=((-(((q.*Nd)/(2.*epsilon))*(((i.*h)-Wn)^2))+Vn)/100);
% end

for i=1:179
V(i)=0;
end
for i=180:201
V(i)=(((((q.*Na)/(2.*epsilon))*(((((i).*h))+Wp)^2))+Vn)/100)-0.3;
end 
for i=201:219
 V(i)=-(((((-q.*Nd)/(2.*epsilon)).*((((i).*h)-Wn-10^(-4))^2))+Vn)/100);
end
for i=220:399
V(i)=0;
end 

i=1:399;
R0=(q*(Nd-Na-(2.*ni.*sinh(V/Vt))));
plot(i,R0);
xlabel('distance m (meter)');
ylabel('Charge density');
title('Analytical method : charge density VS distance'); 
grid on;