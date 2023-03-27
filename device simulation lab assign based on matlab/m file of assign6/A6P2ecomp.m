clc;
q=1.6*(10)^(-19);
a=100*10^(-6);
h=a/1000;
N=1000;
Ca=-10^(18);
Cb=0;
C=zeros(1,N);
C(1)=Ca;
C1=C';
k=10^12;
D=0.003;
C(30)=((h*k)/D);
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
subplot(2,1,1);
plot(Cf)
% F=(D*diff(Cf));
% disp(F);
y=[];
for x=1:300
c=-(0.9996*(10^14)*x)+(10^12);
y=[y c];
end
for x=301:1000
c=-(1.0001*(10^14)*x)+(1.0001*(10^12));
y=[y c];
end
x=1:1000;
subplot(2,1,2); 
plot(x,y);