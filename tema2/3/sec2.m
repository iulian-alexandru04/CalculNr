function [ M ] = sec2(x0,x1,e)
x2 = x1;

M = 1;
for K = 0:100000
    x2 = (x1*dif(x0) - x0/dif(x1))/(dif(x0)-dif(x1))
    M = abs(x1 - x0);
    if M < e
        break;
    end
    x0 = x1;
    x1 = x2;
end
M;
end