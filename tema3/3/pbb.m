function [ dx ] = pbb( A )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
p = [32.1; 22.9; 33.1; 30.9];
b=[32;23;33;31];
db=p-b;
y = inv(A)*db;
dx=y-pba(A,b);
end

