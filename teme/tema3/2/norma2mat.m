function y = norma2mat( A )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    l(1)=bis(A,-3,-1,100,0.00001);
    l(2)=bis(A,-3,2,100,0.00001);
    l(3)=bis(A,1,100,100,0.00001);
    y = max(sqrt(l));

end

