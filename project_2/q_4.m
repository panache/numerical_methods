l = 100;
T=1000;
p = 100;
R = 50000000;

w0 = 0;
wl = 0;
syms y1 y2;
%y1 = w;
f1 = y2;
f2 = (T*y1 + p*x*(x-l)/2)/R;
Y(1)= 0.001;
y(2) = 0.001;
h(1) = runkutgil(f1, f2, x0, y10, Y(1), delx, xmax);

h(2) = runkutgil(f1, f2, x0, y10, Y(2), delx, xmax);

if(h(1)==0)
    Y(1)
    return;
end

if(h(2)==0)
    Y(2)
    return;
end

i = 3;
while(h(i-1)~=0)
    dhdy = (h(i-1) - h(i-2))/(Y(i-1)-Y(i-2));
    delY = -H(2)/dhdy;
    Y(i) = Y(i-1) + delY;
    h(i) = runkutgil(f1, f2, x0, y10, Y(i), delx, xmax);
    ++i;
end

Y(i-1)
return;