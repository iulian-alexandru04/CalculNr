function [x,L,U] = DescLU( A,b )
%factorizare LU
[L, U] = detLU(A);
y = SubsAsc(L,b);
x = SubsDesc(U,y);
end

