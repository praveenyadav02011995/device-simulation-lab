clc;
 clear all;
   close all;
   response =[];
   iter = [];
   % analytical
   for i=1:100
       v=i/100;
       response = [response v];
       iter = [iter i];
   end
   %plot(iter, response);
% numerical
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
A(100,1)=-1;
v=(inv(H)*A);
i=1:100;
plot (iter, response, i, v);
xlabel('distance from plate A');
ylabel('potential profile');
title('comparisaton numerical and analytical: potential vs distance');
