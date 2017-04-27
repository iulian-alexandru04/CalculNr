function [x,k] = MetGradConj( A,b,e)
    n = size(A,1);
    x_old = zeros(n,1);
    a=x_old;
    r = -b;
    v = b;
    for k=0:(n-1)
        a(k+1) = -(dot(r,v)/dot(A*v,v));
        x = x_old+(a(k+1)*v);
        r = A*x-b;
        if normavect2(x-x_old)<e
            return
        end
        B = dot(r,A*v)/dot(A*v,v);
        v = B*v - r;
        x_old=x;
    end
end
