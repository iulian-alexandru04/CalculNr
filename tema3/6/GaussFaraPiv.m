function [x] = GaussFaraPiv(A, b)

A=[A,b]; %matricea extinsa
n=size(A,1);
for k=1:n-1
%Calulam minimul
   
  for p=k:n
    if A(p,k)~=0
        break;
    end
  end

% Interschimbam linia p cu linia k
for j=1:n+1
  CopyLp(j)=A(p,j);
  A(p,j)=A(k,j); 
  A(k,j)=CopyLp(j);
end

for l=k+1:n
    m(l,k)=A(l,k)/A(k,k);
    %L_{l} devine L_{l}-m_{lk}L_{k};
    for j=k:n+1
       A(l,j)=A(l,j)-m(l,k)*A(k,j);
    end
end
end

if  A(n,n)==0 
    disp('Sistem incompatibil')
end

AGauss=A(1:n,1:n)
BGauss=A(:,n+1)
x=SubsDesc(AGauss,BGauss);


end

