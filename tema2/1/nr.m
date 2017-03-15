function [ K ] = nr(x0,x1,e)
x2 = x1

K = 1
for K = 1:100000
    x2 = (x1*f(x0) - x0/f(x1))/(f(x0)-f(x1))
    if abs(x1 - x0) < e
	break;
    end
    x0 = x1;
    x1 = x2;
end
K;
end