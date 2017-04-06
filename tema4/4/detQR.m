function [ Q, R ] = detQR( A )
%determina Q si R
   n=length(A);

for k=1:n
    
  suma1=0;
  for i=1:n
      suma1=suma1+A(i,k)*A(i,k);
  end
  suma2=0;
  for s=1:k-1
      suma2=suma2+R(s,k)*R(s,k);
  end
  R(k,k)=sqrt(suma1-suma2);

  for i=1:n
      suma=0;
      for s=1:k-1
          suma=suma+Q(i,s)*R(s,k);
      end
      Q(i,k)=1/R(k,k)*(A(i,k)-suma);
  end
  
  for j=1:n
    R(k,j)=0;
    for s=1:n
        R(k,j)=R(k,j)+ Q(s,k)*A(s,j);
    end
  end

end
%disp(R);
%disp(Q);
end

