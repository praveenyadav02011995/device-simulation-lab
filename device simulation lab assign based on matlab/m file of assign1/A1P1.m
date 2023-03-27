clear all;
clc;
a=[1:2:20];
b=a.';
disp(b)
sum=0;
for i=1:length(a)
sum=sum+a(i);
end
display(sum);