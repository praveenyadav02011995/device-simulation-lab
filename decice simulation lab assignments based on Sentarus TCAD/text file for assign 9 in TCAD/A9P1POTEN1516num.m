clear all;
clc;
q=1.6*(10)^(-19);
epsilon=103.368*(10)^(-14);
a=4*10^(-4);
ni=1.5*(10)^(10);
h=a/40;
Vt=0.0258;
Na=10^16;
Nd=10^15;
Vo=(Vt*log((Na*Nd)/(ni^2)));
W=((((2*epsilon)/q)*((1/Nd)+(1/Na))*Vo)^0.5);
Wn=((W*Na)/(Na+Nd));
Wp=((W*Nd)/(Na+Nd));
k=(q*Na*(h)^2)/epsilon;
l=(q*Nd*(h)^2)/epsilon;
K=((q*ni*(h)^2)/(epsilon*Vt));
Siep=-(log(Na/ni));
N=40;
Sien=(log(Nd/ni));
Sie=linspace(Sien,Siep,40);
Sie1=Sie';
for i=1:40

F(1,1)=0;
F(40,1)=0;
% for i=2:40
% %F(i,1)=Sie1(i+1)+Sie1(i-1)-2*Sie1(i);
% F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i))+(K*((exp(-(Sie1(i)/Vt)))-(exp(Sie1(i)/Vt))+((-Na)/ni))));
% %F(i,1)=0;
% end

for i=2:39
  % F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i))-(K*(((-Na)/ni))));
 F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i))+(K*((exp(-(Sie1(i)/Vt)))-(exp(Sie1(i)/Vt))+((Nd-Na)/ni))));
end
% 
% for i=2:40
%  %F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i))-(K*(((Nd)/ni))));
%  F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i))+(K*((exp(-(Sie1(i)/Vt)))-(exp(Sie1(i)/Vt))+((Nd)/ni))));
% end
% 
% for i=2:40  
% %F(i,1)=Sie1(i+1)+Sie1(i-1)-2*Sie1(i);
%  F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i))+(K*((exp(-(Sie1(i)/Vt)))-(exp(Sie1(i)/Vt))+((Nd)/ni))));
% %F(i,1)=0;
% end
M(1,1)=1;
for i=2:39
%M(i,i)=-2;
M(i,i)=((-2)-((K/Vt)*((exp(-(Sie1(i)/Vt)))+(exp(Sie1(i)/Vt)))));
end
for i=2:39
M(i,i+1)=1;
end
for i=1:39
M(i+1,i)=1;
end
M(40,40)=1;
Sie2=Sie1-(inv(M)*F);
Sie1=Sie2;
end
Sie2=[Sie2(1)*ones(1,180),Sie2',Sie2(end)*ones(1,180)];
i=1:length(Sie2);

plot(Sie2*Vt);
xlabel('distance cm (centimeter)');
ylabel('potential');
title('potential VS distance');
grid on;