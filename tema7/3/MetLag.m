function [ rez ] = MetLag( a,b,n,x )
    L=zeros(1,n);
    Xind = linspace(a,b,n);
    parantezesus = x-Xind;
    for k=1:n
        parantezejos = Xind(k)-Xind;
        crt_parantezesus=parantezesus;
        crt_parantezesus(k) = 1;
        parantezejos(k) = 1;
        numitor = prod(parantezejos);
        numarator = prod(crt_parantezesus);
        L(k) = numarator/numitor;
    end
    rez = sum(L.*f(Xind));
end

