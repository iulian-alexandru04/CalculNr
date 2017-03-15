function [ K ] = falsepos( a0,b0,i,e )
    x0 = (b0 * dif(a0) - a0 * dif(b0))/(dif(a0)-dif(b0))
    a1 = a0;
    x1 = x0;
    b1 = b0;
    K = 0;
    for K = 1:i
        if dif(x0) == 0
            a1 = a0;
            b1 = b0;
            x1 = x0
        end

        if (dif(a0) * dif(x0) < 0)
            a1 = a0;
            b1 = x0;
            x1 = (b1*dif(a1) - a1*dif(b1))/(dif(a1) - dif(b1))
       else if dif(a0) * dif(x0) > 0
                a1 = x0;
                b1 = b0;
                x1 = (b1*dif(a1) - a1*dif(b1))/(dif(a1) - dif(b1))
            end
        end

       if abs(x1 - x0) < e
            break
       end  
       b0 = b1;
       a0 = a1;
       x0 = x1    
    end
    K;
end