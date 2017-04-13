function [ m,i ] = bis( a,b,e )
    i=0;
    oldm=a;
    while 1
        m = (a+b)/2;
        i=i+1;
        if f(a)*f(m) < 0
           b = m;
        elseif f(a)*f(m) > 0
           a = m;
        end

        if abs(m-oldm) < e
            break;
        end
        oldm=m;
    end

end