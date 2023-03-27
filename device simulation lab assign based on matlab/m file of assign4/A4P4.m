clc;
 clear all;
   close all;
   response1 =[];
   iter1 = [];
    response2 =[];
   iter2 = [];
   sigma=10^(-2);
   dx=0.1/99;
   epsilon=8.85*(10)^(-12);
epsilon1=1;
epsilon2=3;
q=1.6*(10)^(-19);
rho=q*(10^(16));

   %analytical
x1=0:0.01:1;
f1=(-(rho/(2*epsilon))*((x1)^2-x1))+x1));
plot(x1,f1);
%numerical
% for i=1:100
%        H(i,i)=-2;      
% end
% for i=1:99
%     H(i+1,i)=1;
% end
% for i=1:99
%     H(i,i+1)=1;
% end
% A= ones(100,1);
% B=A*((rho/epsilon)*(dx)^2);
% v=inv(H)*B;
% plot (v);
