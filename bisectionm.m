function x_root=bisectionm(a1,b1,epsilon);

a=a1;
b=b1;
xmid = (a+b)/2;
ymid = f_fun(xmid);

while (abs(y) > epsilon)
    
    xmid = (a+b)/2;
    ymid = f_fun(xmid);
    ya = f_fun(a);
    yb = f_fun(b);
    
    if ((ya < 0 && y < 0)||(ya > 0 && y > 0))
        a = xmid;
    else
        b = xmid;
    end
end

x_root = xmid;