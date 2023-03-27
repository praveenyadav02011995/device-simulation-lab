clear all;
clc;
q=1.6*10^(-19);
epsilon=8.85*10^(-12);
m=9.1*10^(-31);
h=6.62*1*10^(-34);
h_fn=h/(2*pi);
a=0.01*10^(-10);
t0=-(h_fn*h_fn)/(2*m*a*a*q);
for i=1:1000
    H(i,i)=-(2*t0)-(q*q/(4*pi*epsilon*a*i*q)); 
end
for i=1:999
    H(i,i+1)=t0;
end
for i=1:999
    H(i+1,i)=t0;
end
for i=1001:1099
    H(i,i)=-2*t0 ;
   
end
for i=1001:1099
    H(i,i+1)=t0;
end
for i=1001:1099
    H(i+1,i)=t0;
end
for i=1100:2100
    H(i,i)=-2*t0-(q*q/(4*pi*epsilon*a*i*q)) ;
end
for i=1100:2099
    H(i,i+1)=t0;
end
for i=1100:2099
    H(i+1,i)=t0;
end


 [V,D] = eig(H);
EV = diag(D);
i=1:2100;
plot(i,EV);
f1=[];
V(1:2099,25);
f1=[f1,V(1:2099,25)];
subplot(2,1,1);
i=1:2099;
plot(i,f1.*f1);
y=(f1.*f1);
q = sum(y);
disp(q);

 