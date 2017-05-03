function y = SplineCubic(f,a,b,n,x)
    e=0.00001;
    if x<=a || x>=b
        disp('x nu e in (a,b)')
        return
    end
    h=(b-a)/2;
    X=linspace(a,b,n+1);
    A=f(X);
    dA=diff(A);
    dA(1,n+1)=0;
    t=circshift(A',-1)-circshift(A',1);
    t=t*3/h;
    t(1)=der(f,a,e);
    t(n+1)=der(f,b,e);
    M=diag(ones(1,n),1)+diag(ones(1,n),-1)+2*eye(n+1);
    M(1,1:2)=[1 0];
    M(n+1,n:n+1)=[0 1];
    B=GaussPivTot(M,t)';
    C=-(circshift(B',-1)'+2*B)/h+3*dA/h^2;
    D=(circshift(B',-1)'+B)/h^2-2*dA/h^3;
    j=find(X<x,1,'last');
    x=x-X(j);
    y=A(j)+B(j)*x+C(j)*x^2+D(j)*x^3;
end