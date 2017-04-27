function [ e ] = normamatrinfo( A )
e = max(sum(abs(A')));
end
