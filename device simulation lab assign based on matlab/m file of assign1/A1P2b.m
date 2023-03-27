clear all;
clc;
close all
A=[1,5,7,3,4;10,6,8,9,2;11 14 16 18 20;22 23 25 27 29];
fprintf('Matrix of size 5x5 is')
A

D=diag(A);
fprintf('Diagonal matrix of A is')
D
B=det(A);
fprintf('Determinant of matrix A is')
B