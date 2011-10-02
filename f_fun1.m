function y=f_fun(x);
X=0.4550;
z=0.4037;
wn=3.4338;
wd=wn*sqrt(1-z^2);
y=X*exp(-z*wn*x)*(-z*wn*sin(wd*x)+wd*cos(wd*t));
