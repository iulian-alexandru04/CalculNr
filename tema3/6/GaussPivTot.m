function [] = GaussPivTot (A,b)
A=[A,b];
n=size(A,1);
for k=1:n-1
   for i=1:n
      s(i)=A(i,1);
      for j=1:n
        if A(i,j)>s(i)
            s(i)=A(i,j)
        end
       end
     end 
   max=0;
   for j=k:n
      if (abs(A(j,k))/s(k))>max
       max=abs(A(j,k))/s(k);
       p=j;
      end
   end
  
   for j=1:n+1
      CopyLp(j)=A(p,j);
      A(p,j)=A(k,j);
      A(k,j)=CopyLp(j);
   end
   for l=k+1:n
        m(l,k)=A(l,k)/A(k,k);
        for j=k:n+1
            A(l,j)=A(l,j)-m(l,k)*A(k,j);
        end
   end
end
AGauss=A(1:n,1:n);
BGauss=A(:,n+1);
x=SubsDesc(AGauss,BGauss)
end