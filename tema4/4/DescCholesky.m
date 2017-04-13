function [ x, L ] = DescCholesky(A, b)
%factorizare Cholesky 
L = detL(A);
y = SubsAsc(L,b);
x = SubsDesc(transpose(L),y);
end
