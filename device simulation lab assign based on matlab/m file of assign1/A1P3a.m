clear all;
close all;
x=input('enter the input');
if(x>pi/2)
    disp('y=1');
elseif(x>=0 & x<pi/2)
       disp('y=sin(x)');
else 
    disp('y=0');
end