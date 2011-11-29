function y_ip1=rkg(x0,y0,delx,func)
xi=x0;
yi=y0;
deltax=delx;
f = func;

k1 = f(xi,yi);
k2 = f(xi + deltax/2, yi+ ((deltax/2)*k1));
k3 = f(xi + deltax/2, yi + ((-1/2)+(1/sqrt(2)))*deltax*k1 + (1-(1/sqrt(2)))*deltax *k2);
k4 = f(xi + deltax, yi - (1/sqrt(2))*deltax*k2 + (1+(1/sqrt(2)))*deltax*k3);

y_ans = yi + (deltax/6)*(k1 + 2*(1-(1/sqrt(2)))*k2 + 2*(1+(1/sqrt(2)))*k3 + k4);
y_ip1=y_ans;