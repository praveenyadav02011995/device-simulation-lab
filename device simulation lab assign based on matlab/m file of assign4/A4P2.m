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

   %analytical
x1=0:0.01:0.03;
f1=0.819*(10^9)*x1;
x2=0.03:0.01:0.1;
f2=-(0.351)*(10^9)*(x2-0.1);
%plot(x1,f1,x2,f2);
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
A=zeros(100,1);
A(30,1)=-((sigma*dx)/epsilon);
v=(inv(H)*A);
i=1:100;
plot (x1,f1,x2,f2,i,v);
xlabel('distance from plate A');
ylabel('potential profile');
title(' comparision analytical and numerical: potential vs distance');
