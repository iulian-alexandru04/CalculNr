function [ m ] = bis( a,b,i )
for K = 1:i
    m = (a+b)/2;
    if prb(a)*prb(m) < 0
       b = m;
    else if prb(a)*prb(m) > 0
       a = m;
    end
    end
end
m
end