function [y] = pb( A )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
y = norma2mat(A)*norma2mat(inv(A));

end

