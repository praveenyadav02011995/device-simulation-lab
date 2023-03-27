f=@(x) x.^4-x-10;
fdiff = @(x) 4*x.^3-1;
iterations =[];
output=[];
x0 = 2;
maxIterations = 10;
e = 0.0001;
                 
for i=1:maxIterations
    c=(a+b)/2;
     if abs(c-b)<e || abs(c-a)<e
        break;
     end
     if f(a)*f(c)<0
         b=c;
     else if f(b)*f(c)<0
             a=c;
     end
    
    iterations =[iterations, i];
    output= [output, x1];
    
end
end    
disp(c);
plot(iterations, output);
grid on