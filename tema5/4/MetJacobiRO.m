function [ xnew,nr ] = MetJacobiRO( A,b,e,p)
    V=zeros(1,p-1);
    w=V;
    for s=1:(p-1)
        w(s)=2*s/(p*normamatrinfo(A));
        [x,V(s)]=MetJacobiR(A,b,e,w(s));
    end
    [val,opt]=min(V);
    [xnew,nr]=MetJacobiR(A,b,e,w(opt));
end