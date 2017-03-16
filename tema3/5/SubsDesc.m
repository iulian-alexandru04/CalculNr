function [ x ] = SubsDesc( A,b )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
s = size(A);
n=s(1);
k=n-1;
x = ones(k,1);
x(n)=b(n)/A(n,n);
while 1 == 1
    x(k)=(b(k)-sum(x(k+1:n).*A(k,k+1:n)'))/A(k,k);
    k = k-1;
    if k == 0
        break
    endif
end
end

