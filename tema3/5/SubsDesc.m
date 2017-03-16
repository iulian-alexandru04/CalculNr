function [ x ] = SubsDesc( A,b )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
s = size(A);
n=s(1);
k=n;
x = ones(k,1);
while k > 0
    x(k)=(b(k)-sum(x(k+1:n).*A(k,k+1:n)'))/A(k,k);
    k = k-1;
end
end

