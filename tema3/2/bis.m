function [ m ] = bis( A,a,b,i,e )
for K = 1:i
    m = (a+b)/2;
    if prop_aux(A,a)*prop_aux(A,m) < 0
       b = m;
    else if prop_aux(A,a)*prop_aux(A,m) > 0
       a = m;
    end
    end
    if abs(prop_aux(A,m)) < e
        break
    end
end
end