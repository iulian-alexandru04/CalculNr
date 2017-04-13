function [ x,k] = MetJacobiDDL( A,b,e,w )
    n = size(A,1);
    for i=1:n
       if 2*abs(A(i,i)) <= sum(A(i,:))
           disp('Matr. nu este diag. dom. pe linii')
           return
       end
    end
    I=eye(size(A));
    B=I-w*A./repmat(diag(A),1,n);
    b=w*b;
    x = zeros(size(A,1),1);
    x1 = B*x+b;
    x = x1;
    k = 1;
    q = normamatrinfo(B);
    while 1
        x = B*x+b;
        k = k+1;
        if (q^k)/(1-q) * normavectinfo(x1) < e
            return
        end 
    end
end

