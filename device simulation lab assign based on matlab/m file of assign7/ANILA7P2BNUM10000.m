clc;
clear all;
len=100*10^-6;
n=linspace(0,10^-5,1000);
a=1;
q=zeros(1000,1);
q(500,1)=10000;
e=[];
hyp=eye(1000);
for i=1:100
h=zeros(1000);
    for i=2:999
        h(i,i-1)=0.5;
        h(i,i+1)=0.5;
    end
f=hyp*(h*q);
e=[e,q];
q=f;
end
hold on
plot(n,e(:,1),n,e(:,30),n,e(:,50),n,e(:,70));
grid on
xlabel('Numerical method : Distance in meters')
ylabel('density of particles')
title('numerical method for random walk for N=10000 particles')
