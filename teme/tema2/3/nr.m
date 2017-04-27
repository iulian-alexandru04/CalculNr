function [ M ] = nr(x0,e)
x1 = x0;
M = 1;
for K = 1:10000
    x1 = x0 - (dif(x0)/dif2(x0))
    M = abs(x1 - x0)
    if M < e
        break
    end
    x0 = x1;
end
M;
end