function [ rez ] = MetNaiva( a,b,n,x )
    X = linspace(a,b,n)';
    A = zeros(n);
    r = ones(n,1);
    for i=1:n
       A(:,i) = r;
       r = r.*X;
    end
    Y = f(X);
    coef = GaussPivTot(A,Y);
    temp=(x*ones(n,1)).^((1:n)');
    rez = sum(coef.*temp);
end

