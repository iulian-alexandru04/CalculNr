function [ sol,i ] = nr( a,b,e,x0 )
    i=0;
    while 1
        sol=x0-f(x0)/der(x0,e);
        i=i+1;
        if sol<a || sol>b
            fprintf('x%d iese din interval\n',i);
            break;
        end
        if abs(sol-x0)<e
            break;
        end
        x0=sol;
    end
end