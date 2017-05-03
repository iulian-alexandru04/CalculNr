function [ y ] = MetRot( A,e )
	X = A;
    n = size(A,1);
    while sqrt(sum(sum(X.^2))) > e
        [maxX,ind] = max(abs(X(:)));
        [p,q] = ind2sub(size(X),ind);
        if X(p,p) == X(q,q)
            o = pi/4;
        else
            o = 1/2 * arctg(2*X(p,q)/(X(p,p)-X(q,q)));
        end
        c = cos(o);
        s = sin(o);
        Y = X;
        for j=1:n
            if j==p || j==q
                continue
            end
            Y(p,j) = X(p,j)*c + X(q,j)*s;
            Y(j,p) = X(p,j)*c + X(q,j)*s;
            Y(q,j) = -X(p,j)*s + X(q,j)*c;
            Y(j,q) = -X(p,j)*s + X(q,j)*c;
        end
        Y(p,p) = X(p,p)*(c^2)+X(p,q)*2*c*s+X(q,q)*(s^2);
        Y(q,q) = X(p,p)*(s^2)-X(p,q)*2*c*s+X(q,q)*(c^2);
        Y(p,q) = 0;
        Y(q,p) = 0;
        X = Y;
    end
    y = diag(X);
end
