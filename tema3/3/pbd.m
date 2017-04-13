function [ ] = pbd( A,b )
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
p = [32.1; 22.9; 33.1; 30.9];
db=p-b;
disp('Kinf = ')
y = normamatrinfo(A)*normamatrinfo(inv(A))
disp('(DXinf)/(Xinf) = ')
normavectinfo(pbb(A))/normavectinfo(pba(A,b))
disp('Kinf * (DBinf)/(Binf) = ')
y * normavectinfo(db)/normavectinfo(b)
end

