function [ y ] = g( x )

y = exp(x) + sin(exp(x) - 2) .* exp(x);

end

