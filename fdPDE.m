function T = fdPDE (dx, dy)
%define rectangular bounds
a = 15;
b = 20;
%define values at rectangular bounds
Ta = 50;
Tb = 200;
Tyo = 150;

Txo = 100;

nx = a/dx;
ny = b/dy;
num_nodes = (nx-1)*(ny-1);
A = zeros(num_nodes);
b = zeros(1,num_nodes);
nodef = @(i,j)(j-1)*(nx-1)+i;
for j = 1:ny-1
    for i = 1:nx-1,
        node = nodef(i,j);
        A (node,node) = -4;
        
        T(node,1) = i*dx;
        T(node,2) = j*dy;
        
        %setting up rest of A matrix and b vector
        if (i==1),
           b(node) =  b(node) - Txo;
        else
           A(node,nodef(i-1,j)) = 1;
        end
        
        if (i==nx-1),
           b(node) = b(node) - Ta; 
        else
           A(node,nodef(i+1,j)) = 1;
        end
        
        if (j==1),
           b(node) =  b(node) - Tyo;
        else
           A(node,nodef(i,j-1)) = 1;
        end
        
        if (j==ny-1),
           b(node) = b(node) - Tb;
        else
           A(node,nodef(i,j+1)) = 1;
        end
    end
end
A
b
T = reshape(b/A,nx-1,ny-1)';


