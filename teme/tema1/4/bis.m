function [ m ] = bis( a,b,i,e )
for K = 1:i
    m = (a+b)/2;
    if dif(a)*dif(m) < 0
       b = m;
    else if dif(a)*dif(m) > 0
       a = m;
    end
    end
    if abs(dif(m)) < e
        break
    end
end

end