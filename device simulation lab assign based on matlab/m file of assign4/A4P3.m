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

   %analytical
x1=0:1:30;
f1=(0.01875.*x1);
x2=30:1:100;
f2=((0.00625.*x2)+0.375);
% plot(x1,f1, x2, f2);
%numerical
for i=1:100
       H(i,i)=-2;      
end
for i=1:99
    H(i+1,i)=1;
end
for i=1:99
    H(i,i+1)=1;
end
H(30,29)=epsilon1*epsilon;
H(30,30)=-(epsilon1+epsilon2)*epsilon;
H(30,31)=epsilon2*epsilon;
A=zeros(100,1);
A(100,1)=-1;
v=inv(H)*A;
plot (x1,f1, x2, f2,i,v);
xlabel('distance from plate A');
ylabel('potential profile');
title('numerical: potential vs distance');

