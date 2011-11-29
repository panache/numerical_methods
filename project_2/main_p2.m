%clc;
func=@(x,y)(2-3*x+ 4*y);
x0=0;
y0=1;
delx=0.1;

x_max=1;
i=1;

while(x0<x_max)
    answer(i,1)=i; %iteration number
    answer(i,2)=x0; %x value
    answer(i,3)=y0; % y value
    y0 = rkg (x0,y0,delx,func);
    answer(i,4)=21/16*exp(4*x0)+3/4*x0-5/16;
    x0=x0+delx;
    i=i+1;
end
answer

%{
x=0;
x_max=1;
i=1;
while(x<x_max)
    y(i,1) = (21/16)*exp(4*x) + ((3/4)*x) - (5/16);
    x=x+0.1;
    i=i+1;
end
y
%}