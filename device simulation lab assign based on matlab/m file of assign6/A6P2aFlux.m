clc;
q=1.6*(10)^(-19);
a=100*10^(-6);
h=a/100;
N=100;
Ca=-10^(12);
Cb=0;
C=zeros(1,N);
C(1)=Ca;
C1=C';
D=30;
y=[];
for i=1:N-1
    M(i,i)=-2;
end     
for i=1:N-1
    M(i,i+1)=1;
end
for i=1:N-1
    M(i+1,i)=1;
end
Cf=inv(M)*C1;
F=(D*diff(Cf));
% for i=1:100;
% y(i)=F;
% end
% subplot(2,1,1)
% plot(i,F);
% grid on;
% xlabel('distance (µm)')
% ylabel('Particle Flux ((cm^-^2)/s')
% title('Particle Flux vs Distance from A to B in numerical method')

x=1:100;
c=((-(10^14)*x)+(10^12));
F=(D*diff(c));
F(100)=0;
% Y=1:100;
% Y=[Y F];
% subplot(2,1,2)
plot(x,F);
grid on;
xlabel('distance (µm)')
ylabel('Particle Flux ((cm^-^2)/s')
title('Particle Flux vs Distance from A to B in Analytical method')