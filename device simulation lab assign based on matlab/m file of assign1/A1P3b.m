clc
clear all
close all
x=input('enter the input:');
switch (x)
    case (x>pi/2)
        disp('y=1');
    case (x>=0 && x<pi/2)
        disp('y=sin(x)');
    otherwise
    disp('y=0');
end