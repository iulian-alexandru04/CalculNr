function [ x ] = MetGradConj( A,b )
    n = size(A,1);
    x = zeros(n,1);
    a=x;
    r = -b;
    v = b;
    for k=0:(n-1)
        %a(k) = -(sum(r.*v)/sum(A*v.*v));
        a(k+1) = -(dot(r,v)/dot(A*v,v));
        x = x+(a(k+1)*v);
        r = A*x-b;
        if r == 0
            return
        end
        B = dot(r,A*v)/dot(A*v,v);
        v = B*v - r;
    end
end

