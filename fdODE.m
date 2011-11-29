function [ri, r] = fdODE (n)
%for our case
%returns the ri values used from ro to rn and the solved r values
%example call: [x y] = fdODE (100)
a = 1;
b = 6;
ya = 100;
yb = 0;
v = 0.3;
w = 104.72;
p = 724.638e-6;

ri = linspace(a,b,n+1);
dr = (b-a)/n

px = @(x)3./x;
qx = @(x)0.*x;
rx = @(x)-(3+v).*p.*w.^2+0.*x;

diag0 = (-2+dr.^2.*qx(ri(2:n)));
diagn1 = (1-dr./2.*px(ri(2:n)));
diag1 = (1+dr./2.*px(ri(2:n)));

A = diag(diag0) + diag(diag1(1:n-2),1)+diag(diagn1(2:n-1),-1)
b = rx(ri).*dr.^2;
b = b(2:n);
b(1) = b(1) - diagn1(1)*ya;
b(n-1) = b(n-1) - diag1(n-1)*yb

r = ya;
r(2:n) = b/A;
r(n+1)=yb;

