f=@(x) x.^4-x-10;
fdiff = @(x) 4*x.^3-1;
iterations =[];
output=[];
x0 = 2;
maxIterations = 10;
e = 0.0001;
                 
for i=1:maxIterations
    x1 = x0 - (f(x0)/fdiff(x0))
     if abs(x1-x0)<e
        break;
    end
    x0 = x1;
    
    iterations =[iterations, i];
    output= [output, x1];
    
end
                 
plot(iterations, output);
grid on