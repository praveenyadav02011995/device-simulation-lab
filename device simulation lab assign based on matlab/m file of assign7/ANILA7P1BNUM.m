clear all;
clc;
D=10^-4;
len=10^-3;
time=100*10^-6; 
time1=linspace(0,time,100);
len1=linspace(0,len,100); 
t=10^-6; 
h=10^-5;  
a=D*t/(h^2);
N=[];
N = zeros(100,1);
N(50,1)=10^6;
H=[];
E = [];
for j=1:100
for i =2:100
    H(i,i)=1+2*a;
end
for i=2:99
    H(i,i+1)=-a;
end
for i=1:98
    H(i+1,i)=-a;
end                                        
H(1,1)=1;
H(100,100)=1;
Cn=inv(H)*N;
E=[E,N];
N=Cn;

end
plot(len1,E(:,10),len1,E(:,30),len1,E(:,50),len1,E(:,70));
grid on;
xlabel('distance from x=0 position');
ylabel('potential profile');
title(' potential vs distance');