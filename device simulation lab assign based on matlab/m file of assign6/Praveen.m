clc
clear all
close all
N=1000;
h=(100*(10^-4))/N;
D=30;
tau=10^-7;
x=(h^2)/(D*tau);

for i=1:N
    H(i,i)=-2-x; 
end
for i=1:N-1
    H(i,i+1)=1;
    H(i+1,i)=1;
end
C=zeros(N,1);
C(1,1)=-(10^12);
V=H\C;
figure
grid on
%plot(V,LineWidth=2)
% xlabel('Separation between A and B (µm)')
% ylabel('Concentration (cm^-^3)')
% title('Concentration profile for particles from A to B in Numerical method')
x1=0:0.00001:0.0001;
l=exp((-2*(10^-2))/((D*tau)^0.5));
m=(10^12)/(1-exp(l));
f=((-9665036.015)*exp(x1/(30*(10^-7))^0.5))+((1.000009665*(10^12))*exp(-x1/(30*(10^-7))^0.5));
figure
grid on
plot(x1,f,LineWidth=2)
% xlabel('Separation between A and B (µm)')
% ylabel('Concentration (cm^-^3)')
% title('Concentration profile for particles from A to B in Analytical method')