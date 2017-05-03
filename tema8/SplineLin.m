function y = SplineLin(f,a,b,n,x)
    if x<=a || x>=b
        disp('x nu e in (a,b)')
        return
    end
    X=linspace(a,b,n+1);
    A=f(X);
    B=diff(A)./diff(X);
    j=find(X<x,1,'last');
    y=A(j)+B(j)*(x-X(j));
end