clear all;
clc;
close all
A=[1,5,7,3,4;10,6,8,9,2;11 15 13 17 19;12 14 16 18 20;22 23 25 27 29];
fprintf('Matrix of size 5x5 is')
A
C=rand(5,5);
fprintf('random matix of 5x5 is')
C
%matrix scalar multiplication%
sm=A*C;
fprintf('scalar multiplication of A and C is')
sm
%element wise multiplication%
em=A.*C;
fprintf('element wise multiplication is ');
disp(em);
