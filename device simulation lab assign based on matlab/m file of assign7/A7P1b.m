D=10^-4;
l=10^-3;
time=100*10^-6;
t1=linspace(0,time,100);
l1=linspace(0,l,100);
t=10^-7;
h=10^-6;
a=D*t/(h^2);
Co=[];
Co = zeros(100,1);
Co(50,1)=5*10^-4;
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
Co=Cn;
D=[D,Cn];
plot(l1,D);
end
