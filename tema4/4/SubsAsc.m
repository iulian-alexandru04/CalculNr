function [ x ] = SubsAsc( A,b )
%subsirAscendent 
 x = zeros(size(A,1),1);
 x(1) = b(1)/A(1,1);
    
 for k = 2:size(A,1)
     suma = A(k,1:k-1)*x(1:k-1);
      x(k) = (b(k) - suma)/A(k,k);
 end
end

