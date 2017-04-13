function y = prop_aux(A,x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    %A=[1 -3 3;3 -5 3;6 -6 4];
    s=size(A);
    if s(1) ~= s(2)
       disp('matricea nu este patratica')
       return
    end
    y=det(A-x*eye(s(1)));
end

