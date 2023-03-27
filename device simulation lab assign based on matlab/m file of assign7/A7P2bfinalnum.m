clear all;
clc;
D=10^-4; % take D in cm^2/sec
l=10^-3; % take length in cm
time=100*10^-6; %take time 100 micro sec
t1=linspace(0,time,100); % take 100 spacing between time
l1=linspace(0,l,1000); % take 100 spacing between length
t=10^-6; % small portion of time
h=10^-5; % small portion of distance 
a=D*t/(h^2);  
   Co=[];
Co = zeros(1000,1);
Co(500,1)=1000;
H=[];
D = [];
for j=1:100
for i =1:1000
    H(i,i)=0;
end
for i=1:999
    H(i,i+1)=0.5;
end
for i=1:999
    H(i+1,i)=0.5;
end                                        
H(1,2)=0;
H(1000,1000)=0;
Cn=(H)*Co;
D=[D,Co];
Co=Cn;
end
for j=1:1000
for i =1:1000
    q1(i)=D(i,1);
end
for i=1:1000
    q25(i)=D(i,25);
end
for i=1:1000
    q50(i)=D(i,50);
end
for i=1:1000
    q100(i)=D(i,100); 
end
end
plot(l1,q1,l1,q25,l1,q50,l1,q100);
grid on;
xlabel('distance from x=0 position');
ylabel('potential profile');
title('numerical: potential vs distance');
