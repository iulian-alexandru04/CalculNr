function [ L , U ] = detLU( A )
%determina L SI U din A

    L = zeros(size(A));
    U = zeros(size(A));
    
    if det(A) ~= 0
        for ij = 1:size(A,1)
            U(1,ij) = A(1,ij);
            L(ij,1) = A(ij,1)/U(1,1);
        end
        
        for k = 2:size(A,1)
            for ij = k:size(A,1)
                suma_u = 0;
                suma_l = 0;
                
                for s = 1:k-1
                    suma_u = suma_u + L(k,s) * U(s,ij);
                    suma_l = suma_l + L(ij,s) * U(s,k);
                end
                
                U(k,ij) = A(k,ij) - suma_u;
                L(ij,k) = (1/U(k,k)) * (A(ij,k) - suma_l);
            end
        end
    end
    %disp(L);
    %disp(U);
end
