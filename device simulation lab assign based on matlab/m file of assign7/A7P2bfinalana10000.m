clear all;
clc;
D=10^-4; % take D in cm^2/sec
l=10^-3; % take length in cm
time1=10*10^-6; %take time 100 micro sec
time2=30*10^-6;
time3=50*10^-6;
time4=70*10^-6;
% m=linspace(0,time,100); % take 100 spacing between time
k=linspace(0,l,100) ; % take 100 spacing between length
t=10^-6; % small portion of time  
h=10^-5; % small portion of distance 
Q=1.1;
p=[];
a1=2*((pi*D*time1)^0.5);
a2=2*((pi*D*time2)^0.5);
a3=2*((pi*D*time3)^0.5);
a4=2*((pi*D*time4)^0.5);
C1=((Q/a1)*exp(-((k-(0.5*l)).^2)/(4*D*time1)));

C2=((Q/a2)*exp(-((k-(0.5*l)).^2)/(4*D*time2)));

C3=((Q/a3)*exp(-((k-(0.5*l)).^2)/(4*D*time3)));

C4=((Q/a4)*exp(-((k-(0.5*l)).^2)/(4*D*time4)));

plot(k,C1,k,C2,k,C3,k,C4);

% for i=1:100
% 
% p=[p,C];
%  plot  (p);
% hold on
% end

grid on
xlabel('distance from x=0 position');
ylabel('potential profile');
title('Analytical method for random walk of 10000 particles: potential vs distance');