function [ r ] = der( x,h )
    r=(f(x+h)-f(x))/h;
end