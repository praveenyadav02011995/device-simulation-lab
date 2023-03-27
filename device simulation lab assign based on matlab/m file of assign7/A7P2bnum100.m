clc;
clear all;
l=100*10^-6; % length is 100 micro meters
m=linspace(0,10^-5,1000);
a=1;
c=zeros(1000,1);
c(500,1)=100;
d=[];
hyp=eye(1000);
for i=1:100
% creating jacobian matrix
h=zeros(1000);
    for i=2:999
        h(i,i-1)=0.5;
        h(i,i+1)=0.5;
    end
   
% creating the for loop for iterations 100times
cf=hyp*(h*c);
d=[d,c];
c=cf;

%plot(m,d(:,10),m,d(:,30),m,d(:,50),m,d(:,70));
grid on
xlabel('Numerical method : Distance in meters')

title('density profile for random walk for N=100')
hold on
end
plot(m,d(:,1),m,d(:,30),m,d(:,50),m,d(:,70));