function r = der(f,x,h)
    r=(f(x+h)-f(x))/h;
end