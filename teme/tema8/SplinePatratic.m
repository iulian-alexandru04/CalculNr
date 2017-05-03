function y = SplinePatratic(f,a,b,n,x)
    e=0.00001;
    if x<=a || x>=b
        disp('x nu e in (a,b)')
        return
    end
    h=(b-a)/2;
    X=linspace(a,b,n+1);
    A=f(X);
    dA=diff(A);
    B=zeros(1,n);
    B(1)=der(f,a,e);
    for i=2:n
        B(i)=2*dA(i-1)/h-B(i-1);
    end
    C=(dA-h*B)/h^2;
    j=find(X<x,1,'last');
    y=A(j)+B(j)*(x-X(j))+C(j)*(x-X(j))^2;
end