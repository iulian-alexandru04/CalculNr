x = -2:0.01:4
plot(x,f(x))
hold on;
plot(x,g(x))
r = bis(0.5,1.5,100,0.00001)
plot(r,dif(r),'*')