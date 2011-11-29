function x_root=bisectionm(a1,b1,epsilon);

a=a1;
b=b1;
xmid = (a+b)/2;
ymid = f_fun1(xmid);

while (abs(ymid) > epsilon)
    
    xmid = (a+b)/2;
    ymid = f_fun1(xmid);
    i=i+1;
    ya = f_fun1(a);
    yb = f_fun1(b);
    
    if ((ya < 0 && ymid < 0)||(ya > 0 && ymid > 0))
        a = xmid;
    else
        b = xmid;
    end
end
x_root = xmid;