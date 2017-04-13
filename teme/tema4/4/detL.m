function [ L ] = detL( A )
%determina L 
    
    L = zeros(size(A));
    al = A(1,1);
 
    if al <= 0
        disp('Matricea nu este pozitiv definita');
    end
    
    L(1,1) = sqrt(A(1,1));
    L(2:size(A,1),1) = (1/L(1,1)) .* A(2:size(A,1),1); 
    
    for k = 2:size(A,1)
        al = A(k,k) - sum(L(k,1:k-1).^2);
        
        if al <= 0
            disp('Matricea nu este pozitiv definita');
            break;
        end
        
        L(k,k) = sqrt(A(k,k) - sum(L(k,1:k-1).^2));
        for i=k+1:size(A,1)
          suma=0;
          for s=1:k-1
               suma=suma+L(i,s)*L(k,s);
          end
          L(i,k)=1/L(k,k)*(A(i,k)-suma);
        end 
    end
end


