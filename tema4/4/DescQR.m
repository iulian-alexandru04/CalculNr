function [ x, Q, R ] = DescQR(A, b)
%factorizare QR
    [Q, R] = detQR(A);
    x = SubsDesc(R,Q'*b);
end
