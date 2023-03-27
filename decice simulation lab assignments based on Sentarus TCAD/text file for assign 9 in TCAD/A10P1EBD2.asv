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
% k=(q*Na*(h)^2)/epsilon;
% l=(q*Nd*(h)^2)/epsilon;
K=((q*ni*(h)^2)/(epsilon));
Vp=-(Vt*log(Na/ni));
Vn=(Vt*log(Nd/ni));
Siep=-(log(Na/ni));
Sien=(log(Nd/ni));
N=4000;
T=300;
Nc=4.82*(10^21)*(((1.182)*T)^1.5);

Sie=linspace(Siep,Sien,4000);
Sie1=Sie';
for i=1:400

F(1,1)=0;
F(4000,1)=0;
for i=2:3999
 F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i))+(K*((exp(-(Sie1(i)/Vt)))-(exp(Sie1(i)/Vt))+((Nd-Na)/ni))));
 %F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i))-(K*(exp(-Sie1(i))+((-Na)/ni))));
  %F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i))mu);
 %F(i,1)=Siep;
%F(i,1)=0;
end
% for i=179:199
%    F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i))-(K*(((Na)/ni))));
%  %F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i)));
% 
% end
%for i=200:399
 %F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i))+(K*(exp(-Sie1(i))-exp(Sie1(i))+((Nd)/ni))));
 %F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i))+(K*(((Nd)/ni))));


%end
% for i=220:399   
% %F(i,1)=Sien;
% F(i,1)=0;
% %F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i))-(K*(-exp(Sie1(i))+((Nd)/ni))));
% %F(i,1)=(Sie1(i+1)+Sie1(i-1)-(2*Sie1(i)));
% 
% end    

 M(1,1)=1;

for i=2:3999
%M(i,i)=-2;
M(i,i)=((-2)-((K/Vt)*((exp(-(Sie1(i)/Vt)))+(exp(Sie1(i)/Vt)))));
end
 for i=2:3998
M(i,i+1)=1;
end
for i=2:3998
M(i+1,i)=1;
end
% 
% %for i=2:179
% 
% %M(i,i)=0;
% %M(i,i)=-2;
% %M(i,i)=-2+((K*(exp(-Sie1(i))/Vt);
% end
% for i=1:179
% %M(i,i+1)=1;
% 
% M(i,i)=0;
% end
% for i=1:179
% %M(i+1,i)=1;
% 
% M(i,i)=0;
% end
% 
% for i=179:200
% %M(i,i)=-2;
% M(i,i)=-2;
% end
% for i=179:200
% M(i,i+1)=1;
% end
% for i=179:200
% M(i+1,i)=1;
% end
% 
% for i=200:220
% %M(i,i)=-2;
% M(i,i)=-2;
% end
% for i=200:220
% M(i,i+1)=1;
% end
% for i=200:220
% M(i+1,i)=1;
% end
% 
% for i=220:399
% 
% M(i,i)=0;
% %M(i,i)=-2;
% %M(i,i)=((-2)+((K/Vt)*exp(Sie1(i))));
% end
% for i=220:399
% 
% M(i,i)=0;
% %M(i,i+1)=1;
% end
% for i=220:399
% %(i+1,i)=1;
% 
% M(i,i)=0;
% end

M(N,N)=1;

Sie2=(Sie1-(inv(M)*F));
Sie1=Sie2;
end

Ec=-((Sie2));
Ev=(Ec-1.12);
Ei=(Ec+Ev)/2;
Ef=-0.2289*ones(1,400);
i=1:4000;
plot(i,Ei,i,Ec,i,Ev,i,Ef);zz
xlabel('distance m (meter)');
ylabel('Energy');
title('Energy band diagram');
grid on;