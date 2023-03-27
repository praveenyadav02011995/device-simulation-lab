clear all;
clc;
D=10^-4; % take D in cm^2/sec
l=10^-3; % take length in cm
time=100*10^-6; %take time 100 micro sec
t1=linspace(0,time,100); % take 100 spacing between time
l1=linspace(0,l,100); % take 100 spacing between length
t=10^-6; % small portion of time
h=10^-5; % small portion of distance 
a=D*t/(h^2);
Co=[];
Co = zeros(100,1);
Co(50,1)=10^6;
H=[];
D = [];
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
Cn=inv(H)*Co;
D=[D,Co];
Co=Cn;

end
plot(l1,D(:,10),l1,D(:,30),l1,D(:,50),l1,D(:,70));
grid on;
xlabel('distance from x=0 position');
ylabel('potential profile');
title('numerical: potential vs distance');