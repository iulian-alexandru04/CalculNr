function [ y ] = pbc( A,b )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
C = [0 0 0.1 0.2; 0.08 0.04 0 0; 0 -0.02 -0.11 0; -0.01 -0.01 0 -0.02]
y = inv(A+C)*b - pba(A,b)
end

