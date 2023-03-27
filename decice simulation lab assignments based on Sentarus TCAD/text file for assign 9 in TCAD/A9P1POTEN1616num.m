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
k=(q*Na*(h)^2)/epsilon;
l=(q*Nd*(h)^2)/epsilon;
K=((q*ni*(h)^2)/(epsilon*Vt));
Siep=-(log(Na/ni));
N=400;
Sien=(log(Nd/ni));
Sie=linspace(Sien,Siep,400);
Sie1=Sie';
for i=1:400

F(1,1)=0;
F(400,1)=0;
for i=2:179


F(i,1)=0;
end
for i=180:199
   F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i))-(K*(((-Na)/ni))));


end
for i=200:219

 F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i))-(K*(((Nd)/ni))));


end
for i=220:399   
F(i,1)=0;


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
Sie2=Sie1-(inv(M)*F);
Sie1=Sie2;
end
Sie2=[Sie2(1)*ones(1,1800),Sie2',Sie2(end)*ones(1,1800)];
q=1:4000;
x=i*h;
y=Sie*0.0258;
plot(q,y);

xlabel('distance cm (centimeter)');
ylabel('potential');
title('potential VS distance');
grid on;