function x = simp_13 (a, b, n)
if (mod(n,2)==1)
    error ('N must be even')
end
h = (b-a)/n;
xi = linspace (a, b, n+1);
fi = s_fun(xi);
x = h/3*(fi(1)+fi(n+1)+4*sum(fi(2:2:n)) + 2*sum(fi(3:2:n-1)));