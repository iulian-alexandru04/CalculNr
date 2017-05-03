%Gauss.m
function [ xnew,nr ] = Gauss( A,b,e,p )
I=eye(size(A));
D = I.*A;
R = A-D;
T = inv(D);
xold = zeros(size(A,1),1);
xnew=xold;
nr=1;
n=size(A,1);
while 1
    for i=1:n
        xnew(i) = p*(b(i)-( R(i,1:i-1)*xnew(1:i-1) + R(i,i+1:n)*xold(i+1:n)))/A(i,i)+(1-p)*xold(i);
    end
    nr=nr+1;
    if abs(xnew-xold) < e
        return
    end
    xold = xnew;
end
end

