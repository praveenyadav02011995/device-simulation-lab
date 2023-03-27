clear all;
clc;
a=[1:2:20];
b=a.';
disp(b)
sum=0;k=1;
for i=1:length(a)
sum=sum+a(i);
end
display(sum);
c=flip(a);
disp(c);
for i=length(a):-1:1
    d(k)=a(i);
    k=k+1;
end
disp(d);
fprintf('Vector in descending order using for loop is %d %d %d %d %d %d %d %d %d %d \n',d);
