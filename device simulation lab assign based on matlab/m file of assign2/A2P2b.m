clear all;
f = @ (x)('x.^4-x-10');
a=1;
b=3;
eps=0.0001;
c=(a+b)/2;
fprintf('\nThe value of, after bisection method, c is %f\n',c);
while abs(b-a)>eps
    if(f(a).*f(c))<0
       break
    end
    if f(a)*f(b)<0
        b=c;
    elseif f(a)*
        a=c;
    end
    c=(a+b)/2;
end
fprintf('\nthe value of, after bisection method, c is %f\n',c);
