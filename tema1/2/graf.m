x = 0:0.01:4
y = prb(x)
plot(x,y)
hold on;
r1 = bis(0,1,100)
r2 = bis(1,3.2,100)
r3 = bis(3.2,4,100)
plot(r1,prb(r1),'*')
plot(r2,prb(r2),'*')
plot(r3,prb(r3),'*')