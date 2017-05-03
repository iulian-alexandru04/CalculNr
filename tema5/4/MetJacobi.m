%MetJacobi.m
function [ xnew ] = MetJacobi( A,b,e )
I = eye(size(A));
if norm(I-A) >= 1
   disp('Metoda Jacobi nu asigura conv.')
   return
end
D = I.*A;
R = A-D;
T = inv(D);
xold = zeros(size(A,1),1);
while 1
    xnew = T*(b-(R*xold));
    if abs(xnew-xold) < e
        return
    end
    xold = xnew;
end
end

