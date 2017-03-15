function [ K ] = sec2( a,b,e )
K = 1
for K = 1:10000
    m = (a+b)/2
    if dif(a)*dif(m) < 0
       b = m;
    else if dif(a)*dif(m) > 0
       a = m;
    end
    end
    if abs(dif(m)) < e
	break;
    end
end
K;
end